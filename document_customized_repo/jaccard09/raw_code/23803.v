module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_24_address1,delta_weights3_24_ce1,delta_weights3_24_we1,delta_weights3_24_d1,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_25_address1,delta_weights3_25_ce1,delta_weights3_25_we1,delta_weights3_25_d1,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_26_address1,delta_weights3_26_ce1,delta_weights3_26_we1,delta_weights3_26_d1,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_27_address1,delta_weights3_27_ce1,delta_weights3_27_we1,delta_weights3_27_d1,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_28_address1,delta_weights3_28_ce1,delta_weights3_28_we1,delta_weights3_28_d1,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_29_address1,delta_weights3_29_ce1,delta_weights3_29_we1,delta_weights3_29_d1,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_30_address1,delta_weights3_30_ce1,delta_weights3_30_we1,delta_weights3_30_d1,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_31_address1,delta_weights3_31_ce1,delta_weights3_31_we1,delta_weights3_31_d1,delta_weights3_32_address0,delta_weights3_32_ce0,delta_weights3_32_we0,delta_weights3_32_d0,delta_weights3_32_address1,delta_weights3_32_ce1,delta_weights3_32_we1,delta_weights3_32_d1,delta_weights3_33_address0,delta_weights3_33_ce0,delta_weights3_33_we0,delta_weights3_33_d0,delta_weights3_33_address1,delta_weights3_33_ce1,delta_weights3_33_we1,delta_weights3_33_d1,delta_weights3_34_address0,delta_weights3_34_ce0,delta_weights3_34_we0,delta_weights3_34_d0,delta_weights3_34_address1,delta_weights3_34_ce1,delta_weights3_34_we1,delta_weights3_34_d1,delta_weights3_35_address0,delta_weights3_35_ce0,delta_weights3_35_we0,delta_weights3_35_d0,delta_weights3_35_address1,delta_weights3_35_ce1,delta_weights3_35_we1,delta_weights3_35_d1,delta_weights3_36_address0,delta_weights3_36_ce0,delta_weights3_36_we0,delta_weights3_36_d0,delta_weights3_36_address1,delta_weights3_36_ce1,delta_weights3_36_we1,delta_weights3_36_d1,delta_weights3_37_address0,delta_weights3_37_ce0,delta_weights3_37_we0,delta_weights3_37_d0,delta_weights3_37_address1,delta_weights3_37_ce1,delta_weights3_37_we1,delta_weights3_37_d1,delta_weights3_38_address0,delta_weights3_38_ce0,delta_weights3_38_we0,delta_weights3_38_d0,delta_weights3_38_address1,delta_weights3_38_ce1,delta_weights3_38_we1,delta_weights3_38_d1,delta_weights3_39_address0,delta_weights3_39_ce0,delta_weights3_39_we0,delta_weights3_39_d0,delta_weights3_39_address1,delta_weights3_39_ce1,delta_weights3_39_we1,delta_weights3_39_d1,delta_weights3_40_address0,delta_weights3_40_ce0,delta_weights3_40_we0,delta_weights3_40_d0,delta_weights3_40_address1,delta_weights3_40_ce1,delta_weights3_40_we1,delta_weights3_40_d1,delta_weights3_41_address0,delta_weights3_41_ce0,delta_weights3_41_we0,delta_weights3_41_d0,delta_weights3_41_address1,delta_weights3_41_ce1,delta_weights3_41_we1,delta_weights3_41_d1,delta_weights3_42_address0,delta_weights3_42_ce0,delta_weights3_42_we0,delta_weights3_42_d0,delta_weights3_42_address1,delta_weights3_42_ce1,delta_weights3_42_we1,delta_weights3_42_d1,delta_weights3_43_address0,delta_weights3_43_ce0,delta_weights3_43_we0,delta_weights3_43_d0,delta_weights3_43_address1,delta_weights3_43_ce1,delta_weights3_43_we1,delta_weights3_43_d1,delta_weights3_44_address0,delta_weights3_44_ce0,delta_weights3_44_we0,delta_weights3_44_d0,delta_weights3_44_address1,delta_weights3_44_ce1,delta_weights3_44_we1,delta_weights3_44_d1,delta_weights3_45_address0,delta_weights3_45_ce0,delta_weights3_45_we0,delta_weights3_45_d0,delta_weights3_45_address1,delta_weights3_45_ce1,delta_weights3_45_we1,delta_weights3_45_d1,delta_weights3_46_address0,delta_weights3_46_ce0,delta_weights3_46_we0,delta_weights3_46_d0,delta_weights3_46_address1,delta_weights3_46_ce1,delta_weights3_46_we1,delta_weights3_46_d1,delta_weights3_47_address0,delta_weights3_47_ce0,delta_weights3_47_we0,delta_weights3_47_d0,delta_weights3_47_address1,delta_weights3_47_ce1,delta_weights3_47_we1,delta_weights3_47_d1,delta_weights3_48_address0,delta_weights3_48_ce0,delta_weights3_48_we0,delta_weights3_48_d0,delta_weights3_48_address1,delta_weights3_48_ce1,delta_weights3_48_we1,delta_weights3_48_d1,delta_weights3_49_address0,delta_weights3_49_ce0,delta_weights3_49_we0,delta_weights3_49_d0,delta_weights3_49_address1,delta_weights3_49_ce1,delta_weights3_49_we1,delta_weights3_49_d1,delta_weights3_50_address0,delta_weights3_50_ce0,delta_weights3_50_we0,delta_weights3_50_d0,delta_weights3_50_address1,delta_weights3_50_ce1,delta_weights3_50_we1,delta_weights3_50_d1,delta_weights3_51_address0,delta_weights3_51_ce0,delta_weights3_51_we0,delta_weights3_51_d0,delta_weights3_51_address1,delta_weights3_51_ce1,delta_weights3_51_we1,delta_weights3_51_d1,delta_weights3_52_address0,delta_weights3_52_ce0,delta_weights3_52_we0,delta_weights3_52_d0,delta_weights3_52_address1,delta_weights3_52_ce1,delta_weights3_52_we1,delta_weights3_52_d1,delta_weights3_53_address0,delta_weights3_53_ce0,delta_weights3_53_we0,delta_weights3_53_d0,delta_weights3_53_address1,delta_weights3_53_ce1,delta_weights3_53_we1,delta_weights3_53_d1,delta_weights3_54_address0,delta_weights3_54_ce0,delta_weights3_54_we0,delta_weights3_54_d0,delta_weights3_54_address1,delta_weights3_54_ce1,delta_weights3_54_we1,delta_weights3_54_d1,delta_weights3_55_address0,delta_weights3_55_ce0,delta_weights3_55_we0,delta_weights3_55_d0,delta_weights3_55_address1,delta_weights3_55_ce1,delta_weights3_55_we1,delta_weights3_55_d1,delta_weights3_56_address0,delta_weights3_56_ce0,delta_weights3_56_we0,delta_weights3_56_d0,delta_weights3_56_address1,delta_weights3_56_ce1,delta_weights3_56_we1,delta_weights3_56_d1,delta_weights3_57_address0,delta_weights3_57_ce0,delta_weights3_57_we0,delta_weights3_57_d0,delta_weights3_57_address1,delta_weights3_57_ce1,delta_weights3_57_we1,delta_weights3_57_d1,delta_weights3_58_address0,delta_weights3_58_ce0,delta_weights3_58_we0,delta_weights3_58_d0,delta_weights3_58_address1,delta_weights3_58_ce1,delta_weights3_58_we1,delta_weights3_58_d1,delta_weights3_59_address0,delta_weights3_59_ce0,delta_weights3_59_we0,delta_weights3_59_d0,delta_weights3_59_address1,delta_weights3_59_ce1,delta_weights3_59_we1,delta_weights3_59_d1,delta_weights3_60_address0,delta_weights3_60_ce0,delta_weights3_60_we0,delta_weights3_60_d0,delta_weights3_60_address1,delta_weights3_60_ce1,delta_weights3_60_we1,delta_weights3_60_d1,delta_weights3_61_address0,delta_weights3_61_ce0,delta_weights3_61_we0,delta_weights3_61_d0,delta_weights3_61_address1,delta_weights3_61_ce1,delta_weights3_61_we1,delta_weights3_61_d1,delta_weights3_62_address0,delta_weights3_62_ce0,delta_weights3_62_we0,delta_weights3_62_d0,delta_weights3_62_address1,delta_weights3_62_ce1,delta_weights3_62_we1,delta_weights3_62_d1,delta_weights3_63_address0,delta_weights3_63_ce0,delta_weights3_63_we0,delta_weights3_63_d0,delta_weights3_63_address1,delta_weights3_63_ce1,delta_weights3_63_we1,delta_weights3_63_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_val,last_activations_1_val,last_activations_2_val,last_activations_3_val,last_activations_4_val,last_activations_5_val,last_activations_6_val,last_activations_7_val,last_activations_8_val,last_activations_9_val,last_activations_10_val,last_activations_11_val,last_activations_12_val,last_activations_13_val,last_activations_14_val,last_activations_15_val,last_activations_16_val,last_activations_17_val,last_activations_18_val,last_activations_19_val,last_activations_20_val,last_activations_21_val,last_activations_22_val,last_activations_23_val,last_activations_24_val,last_activations_25_val,last_activations_26_val,last_activations_27_val,last_activations_28_val,last_activations_29_val,last_activations_30_val,last_activations_31_val,last_activations_32_val,last_activations_33_val,last_activations_34_val,last_activations_35_val,last_activations_36_val,last_activations_37_val,last_activations_38_val,last_activations_39_val,last_activations_40_val,last_activations_41_val,last_activations_42_val,last_activations_43_val,last_activations_44_val,last_activations_45_val,last_activations_46_val,last_activations_47_val,last_activations_48_val,last_activations_49_val,last_activations_50_val,last_activations_51_val,last_activations_52_val,last_activations_53_val,last_activations_54_val,last_activations_55_val,last_activations_56_val,last_activations_57_val,last_activations_58_val,last_activations_59_val,last_activations_60_val,last_activations_61_val,last_activations_62_val,last_activations_63_val,grp_fu_23979_p_din0,grp_fu_23979_p_din1,grp_fu_23979_p_dout0,grp_fu_23979_p_ce,grp_fu_23983_p_din0,grp_fu_23983_p_din1,grp_fu_23983_p_dout0,grp_fu_23983_p_ce,grp_fu_23987_p_din0,grp_fu_23987_p_din1,grp_fu_23987_p_dout0,grp_fu_23987_p_ce,grp_fu_23991_p_din0,grp_fu_23991_p_din1,grp_fu_23991_p_dout0,grp_fu_23991_p_ce,grp_fu_23995_p_din0,grp_fu_23995_p_din1,grp_fu_23995_p_dout0,grp_fu_23995_p_ce,grp_fu_23999_p_din0,grp_fu_23999_p_din1,grp_fu_23999_p_dout0,grp_fu_23999_p_ce,grp_fu_24003_p_din0,grp_fu_24003_p_din1,grp_fu_24003_p_dout0,grp_fu_24003_p_ce,grp_fu_24007_p_din0,grp_fu_24007_p_din1,grp_fu_24007_p_dout0,grp_fu_24007_p_ce,grp_fu_24011_p_din0,grp_fu_24011_p_din1,grp_fu_24011_p_dout0,grp_fu_24011_p_ce,grp_fu_24015_p_din0,grp_fu_24015_p_din1,grp_fu_24015_p_dout0,grp_fu_24015_p_ce,grp_fu_24019_p_din0,grp_fu_24019_p_din1,grp_fu_24019_p_dout0,grp_fu_24019_p_ce,grp_fu_24023_p_din0,grp_fu_24023_p_din1,grp_fu_24023_p_dout0,grp_fu_24023_p_ce,grp_fu_24027_p_din0,grp_fu_24027_p_din1,grp_fu_24027_p_dout0,grp_fu_24027_p_ce,grp_fu_24031_p_din0,grp_fu_24031_p_din1,grp_fu_24031_p_dout0,grp_fu_24031_p_ce,grp_fu_24035_p_din0,grp_fu_24035_p_din1,grp_fu_24035_p_dout0,grp_fu_24035_p_ce,grp_fu_24039_p_din0,grp_fu_24039_p_din1,grp_fu_24039_p_dout0,grp_fu_24039_p_ce,grp_fu_24043_p_din0,grp_fu_24043_p_din1,grp_fu_24043_p_dout0,grp_fu_24043_p_ce,grp_fu_24047_p_din0,grp_fu_24047_p_din1,grp_fu_24047_p_dout0,grp_fu_24047_p_ce,grp_fu_24051_p_din0,grp_fu_24051_p_din1,grp_fu_24051_p_dout0,grp_fu_24051_p_ce,grp_fu_24055_p_din0,grp_fu_24055_p_din1,grp_fu_24055_p_dout0,grp_fu_24055_p_ce,grp_fu_24059_p_din0,grp_fu_24059_p_din1,grp_fu_24059_p_dout0,grp_fu_24059_p_ce,grp_fu_24063_p_din0,grp_fu_24063_p_din1,grp_fu_24063_p_dout0,grp_fu_24063_p_ce,grp_fu_24067_p_din0,grp_fu_24067_p_din1,grp_fu_24067_p_dout0,grp_fu_24067_p_ce,grp_fu_24071_p_din0,grp_fu_24071_p_din1,grp_fu_24071_p_dout0,grp_fu_24071_p_ce,grp_fu_24075_p_din0,grp_fu_24075_p_din1,grp_fu_24075_p_dout0,grp_fu_24075_p_ce,grp_fu_24079_p_din0,grp_fu_24079_p_din1,grp_fu_24079_p_dout0,grp_fu_24079_p_ce,grp_fu_24083_p_din0,grp_fu_24083_p_din1,grp_fu_24083_p_dout0,grp_fu_24083_p_ce,grp_fu_24087_p_din0,grp_fu_24087_p_din1,grp_fu_24087_p_dout0,grp_fu_24087_p_ce,grp_fu_24091_p_din0,grp_fu_24091_p_din1,grp_fu_24091_p_dout0,grp_fu_24091_p_ce,grp_fu_24095_p_din0,grp_fu_24095_p_din1,grp_fu_24095_p_dout0,grp_fu_24095_p_ce,grp_fu_24099_p_din0,grp_fu_24099_p_din1,grp_fu_24099_p_dout0,grp_fu_24099_p_ce,grp_fu_24103_p_din0,grp_fu_24103_p_din1,grp_fu_24103_p_dout0,grp_fu_24103_p_ce,grp_fu_24107_p_din0,grp_fu_24107_p_din1,grp_fu_24107_p_dout0,grp_fu_24107_p_ce,grp_fu_24111_p_din0,grp_fu_24111_p_din1,grp_fu_24111_p_dout0,grp_fu_24111_p_ce,grp_fu_24115_p_din0,grp_fu_24115_p_din1,grp_fu_24115_p_dout0,grp_fu_24115_p_ce,grp_fu_24119_p_din0,grp_fu_24119_p_din1,grp_fu_24119_p_dout0,grp_fu_24119_p_ce,grp_fu_24123_p_din0,grp_fu_24123_p_din1,grp_fu_24123_p_dout0,grp_fu_24123_p_ce,grp_fu_24127_p_din0,grp_fu_24127_p_din1,grp_fu_24127_p_dout0,grp_fu_24127_p_ce,grp_fu_24131_p_din0,grp_fu_24131_p_din1,grp_fu_24131_p_dout0,grp_fu_24131_p_ce,grp_fu_24135_p_din0,grp_fu_24135_p_din1,grp_fu_24135_p_dout0,grp_fu_24135_p_ce,grp_fu_24139_p_din0,grp_fu_24139_p_din1,grp_fu_24139_p_dout0,grp_fu_24139_p_ce,grp_fu_24143_p_din0,grp_fu_24143_p_din1,grp_fu_24143_p_dout0,grp_fu_24143_p_ce,grp_fu_24147_p_din0,grp_fu_24147_p_din1,grp_fu_24147_p_dout0,grp_fu_24147_p_ce,grp_fu_24151_p_din0,grp_fu_24151_p_din1,grp_fu_24151_p_dout0,grp_fu_24151_p_ce,grp_fu_24155_p_din0,grp_fu_24155_p_din1,grp_fu_24155_p_dout0,grp_fu_24155_p_ce,grp_fu_24159_p_din0,grp_fu_24159_p_din1,grp_fu_24159_p_dout0,grp_fu_24159_p_ce,grp_fu_24163_p_din0,grp_fu_24163_p_din1,grp_fu_24163_p_dout0,grp_fu_24163_p_ce,grp_fu_24167_p_din0,grp_fu_24167_p_din1,grp_fu_24167_p_dout0,grp_fu_24167_p_ce,grp_fu_24171_p_din0,grp_fu_24171_p_din1,grp_fu_24171_p_dout0,grp_fu_24171_p_ce,grp_fu_24175_p_din0,grp_fu_24175_p_din1,grp_fu_24175_p_dout0,grp_fu_24175_p_ce,grp_fu_24179_p_din0,grp_fu_24179_p_din1,grp_fu_24179_p_dout0,grp_fu_24179_p_ce,grp_fu_24183_p_din0,grp_fu_24183_p_din1,grp_fu_24183_p_dout0,grp_fu_24183_p_ce,grp_fu_24187_p_din0,grp_fu_24187_p_din1,grp_fu_24187_p_dout0,grp_fu_24187_p_ce,grp_fu_24191_p_din0,grp_fu_24191_p_din1,grp_fu_24191_p_dout0,grp_fu_24191_p_ce,grp_fu_24195_p_din0,grp_fu_24195_p_din1,grp_fu_24195_p_dout0,grp_fu_24195_p_ce,grp_fu_24199_p_din0,grp_fu_24199_p_din1,grp_fu_24199_p_dout0,grp_fu_24199_p_ce,grp_fu_24203_p_din0,grp_fu_24203_p_din1,grp_fu_24203_p_dout0,grp_fu_24203_p_ce,grp_fu_24207_p_din0,grp_fu_24207_p_din1,grp_fu_24207_p_dout0,grp_fu_24207_p_ce,grp_fu_24211_p_din0,grp_fu_24211_p_din1,grp_fu_24211_p_dout0,grp_fu_24211_p_ce,grp_fu_24215_p_din0,grp_fu_24215_p_din1,grp_fu_24215_p_dout0,grp_fu_24215_p_ce,grp_fu_24219_p_din0,grp_fu_24219_p_din1,grp_fu_24219_p_dout0,grp_fu_24219_p_ce,grp_fu_24223_p_din0,grp_fu_24223_p_din1,grp_fu_24223_p_dout0,grp_fu_24223_p_ce,grp_fu_24227_p_din0,grp_fu_24227_p_din1,grp_fu_24227_p_dout0,grp_fu_24227_p_ce,grp_fu_24231_p_din0,grp_fu_24231_p_din1,grp_fu_24231_p_dout0,grp_fu_24231_p_ce,grp_fu_24243_p_din0,grp_fu_24243_p_din1,grp_fu_24243_p_dout0,grp_fu_24243_p_ce,grp_fu_24247_p_din0,grp_fu_24247_p_din1,grp_fu_24247_p_dout0,grp_fu_24247_p_ce,grp_fu_24251_p_din0,grp_fu_24251_p_din1,grp_fu_24251_p_dout0,grp_fu_24251_p_ce,grp_fu_24255_p_din0,grp_fu_24255_p_din1,grp_fu_24255_p_dout0,grp_fu_24255_p_ce,grp_fu_24259_p_din0,grp_fu_24259_p_din1,grp_fu_24259_p_dout0,grp_fu_24259_p_ce,grp_fu_24263_p_din0,grp_fu_24263_p_din1,grp_fu_24263_p_dout0,grp_fu_24263_p_ce,grp_fu_24267_p_din0,grp_fu_24267_p_din1,grp_fu_24267_p_dout0,grp_fu_24267_p_ce,grp_fu_24271_p_din0,grp_fu_24271_p_din1,grp_fu_24271_p_dout0,grp_fu_24271_p_ce,grp_fu_24275_p_din0,grp_fu_24275_p_din1,grp_fu_24275_p_dout0,grp_fu_24275_p_ce,grp_fu_24279_p_din0,grp_fu_24279_p_din1,grp_fu_24279_p_dout0,grp_fu_24279_p_ce,grp_fu_24283_p_din0,grp_fu_24283_p_din1,grp_fu_24283_p_dout0,grp_fu_24283_p_ce,grp_fu_24287_p_din0,grp_fu_24287_p_din1,grp_fu_24287_p_dout0,grp_fu_24287_p_ce,grp_fu_24291_p_din0,grp_fu_24291_p_din1,grp_fu_24291_p_dout0,grp_fu_24291_p_ce,grp_fu_24295_p_din0,grp_fu_24295_p_din1,grp_fu_24295_p_dout0,grp_fu_24295_p_ce,grp_fu_24299_p_din0,grp_fu_24299_p_din1,grp_fu_24299_p_dout0,grp_fu_24299_p_ce,grp_fu_24303_p_din0,grp_fu_24303_p_din1,grp_fu_24303_p_dout0,grp_fu_24303_p_ce,grp_fu_24307_p_din0,grp_fu_24307_p_din1,grp_fu_24307_p_dout0,grp_fu_24307_p_ce,grp_fu_24311_p_din0,grp_fu_24311_p_din1,grp_fu_24311_p_dout0,grp_fu_24311_p_ce,grp_fu_24315_p_din0,grp_fu_24315_p_din1,grp_fu_24315_p_dout0,grp_fu_24315_p_ce,grp_fu_24319_p_din0,grp_fu_24319_p_din1,grp_fu_24319_p_dout0,grp_fu_24319_p_ce,grp_fu_24323_p_din0,grp_fu_24323_p_din1,grp_fu_24323_p_dout0,grp_fu_24323_p_ce,grp_fu_24327_p_din0,grp_fu_24327_p_din1,grp_fu_24327_p_dout0,grp_fu_24327_p_ce,grp_fu_24331_p_din0,grp_fu_24331_p_din1,grp_fu_24331_p_dout0,grp_fu_24331_p_ce,grp_fu_24335_p_din0,grp_fu_24335_p_din1,grp_fu_24335_p_dout0,grp_fu_24335_p_ce,grp_fu_24339_p_din0,grp_fu_24339_p_din1,grp_fu_24339_p_dout0,grp_fu_24339_p_ce,grp_fu_24343_p_din0,grp_fu_24343_p_din1,grp_fu_24343_p_dout0,grp_fu_24343_p_ce,grp_fu_24347_p_din0,grp_fu_24347_p_din1,grp_fu_24347_p_dout0,grp_fu_24347_p_ce,grp_fu_24351_p_din0,grp_fu_24351_p_din1,grp_fu_24351_p_dout0,grp_fu_24351_p_ce,grp_fu_24355_p_din0,grp_fu_24355_p_din1,grp_fu_24355_p_dout0,grp_fu_24355_p_ce,grp_fu_24359_p_din0,grp_fu_24359_p_din1,grp_fu_24359_p_dout0,grp_fu_24359_p_ce,grp_fu_24363_p_din0,grp_fu_24363_p_din1,grp_fu_24363_p_dout0,grp_fu_24363_p_ce,grp_fu_24367_p_din0,grp_fu_24367_p_din1,grp_fu_24367_p_dout0,grp_fu_24367_p_ce,grp_fu_24371_p_din0,grp_fu_24371_p_din1,grp_fu_24371_p_dout0,grp_fu_24371_p_ce,grp_fu_24375_p_din0,grp_fu_24375_p_din1,grp_fu_24375_p_dout0,grp_fu_24375_p_ce,grp_fu_24379_p_din0,grp_fu_24379_p_din1,grp_fu_24379_p_dout0,grp_fu_24379_p_ce,grp_fu_24383_p_din0,grp_fu_24383_p_din1,grp_fu_24383_p_dout0,grp_fu_24383_p_ce,grp_fu_24387_p_din0,grp_fu_24387_p_din1,grp_fu_24387_p_dout0,grp_fu_24387_p_ce,grp_fu_24391_p_din0,grp_fu_24391_p_din1,grp_fu_24391_p_dout0,grp_fu_24391_p_ce,grp_fu_24395_p_din0,grp_fu_24395_p_din1,grp_fu_24395_p_dout0,grp_fu_24395_p_ce,grp_fu_24399_p_din0,grp_fu_24399_p_din1,grp_fu_24399_p_dout0,grp_fu_24399_p_ce,grp_fu_24403_p_din0,grp_fu_24403_p_din1,grp_fu_24403_p_dout0,grp_fu_24403_p_ce,grp_fu_24407_p_din0,grp_fu_24407_p_din1,grp_fu_24407_p_dout0,grp_fu_24407_p_ce,grp_fu_24411_p_din0,grp_fu_24411_p_din1,grp_fu_24411_p_dout0,grp_fu_24411_p_ce,grp_fu_24415_p_din0,grp_fu_24415_p_din1,grp_fu_24415_p_dout0,grp_fu_24415_p_ce,grp_fu_24419_p_din0,grp_fu_24419_p_din1,grp_fu_24419_p_dout0,grp_fu_24419_p_ce,grp_fu_24423_p_din0,grp_fu_24423_p_din1,grp_fu_24423_p_dout0,grp_fu_24423_p_ce,grp_fu_24427_p_din0,grp_fu_24427_p_din1,grp_fu_24427_p_dout0,grp_fu_24427_p_ce,grp_fu_24431_p_din0,grp_fu_24431_p_din1,grp_fu_24431_p_dout0,grp_fu_24431_p_ce,grp_fu_24435_p_din0,grp_fu_24435_p_din1,grp_fu_24435_p_dout0,grp_fu_24435_p_ce,grp_fu_24439_p_din0,grp_fu_24439_p_din1,grp_fu_24439_p_dout0,grp_fu_24439_p_ce,grp_fu_24443_p_din0,grp_fu_24443_p_din1,grp_fu_24443_p_dout0,grp_fu_24443_p_ce,grp_fu_24447_p_din0,grp_fu_24447_p_din1,grp_fu_24447_p_dout0,grp_fu_24447_p_ce,grp_fu_24451_p_din0,grp_fu_24451_p_din1,grp_fu_24451_p_dout0,grp_fu_24451_p_ce,grp_fu_24455_p_din0,grp_fu_24455_p_din1,grp_fu_24455_p_dout0,grp_fu_24455_p_ce,grp_fu_24459_p_din0,grp_fu_24459_p_din1,grp_fu_24459_p_dout0,grp_fu_24459_p_ce,grp_fu_24463_p_din0,grp_fu_24463_p_din1,grp_fu_24463_p_dout0,grp_fu_24463_p_ce,grp_fu_24467_p_din0,grp_fu_24467_p_din1,grp_fu_24467_p_dout0,grp_fu_24467_p_ce,grp_fu_24471_p_din0,grp_fu_24471_p_din1,grp_fu_24471_p_dout0,grp_fu_24471_p_ce,grp_fu_24475_p_din0,grp_fu_24475_p_din1,grp_fu_24475_p_dout0,grp_fu_24475_p_ce,grp_fu_24479_p_din0,grp_fu_24479_p_din1,grp_fu_24479_p_dout0,grp_fu_24479_p_ce,grp_fu_24483_p_din0,grp_fu_24483_p_din1,grp_fu_24483_p_dout0,grp_fu_24483_p_ce,grp_fu_24487_p_din0,grp_fu_24487_p_din1,grp_fu_24487_p_dout0,grp_fu_24487_p_ce); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
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
output  [1:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [1:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [1:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [1:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [1:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [1:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [1:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [1:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [1:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [1:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [1:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [1:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [1:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [1:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [1:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [1:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [1:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [1:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [1:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [1:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [1:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [1:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [1:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
output  [1:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [1:0] delta_weights3_12_address1;
output   delta_weights3_12_ce1;
output   delta_weights3_12_we1;
output  [63:0] delta_weights3_12_d1;
output  [1:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [1:0] delta_weights3_13_address1;
output   delta_weights3_13_ce1;
output   delta_weights3_13_we1;
output  [63:0] delta_weights3_13_d1;
output  [1:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [1:0] delta_weights3_14_address1;
output   delta_weights3_14_ce1;
output   delta_weights3_14_we1;
output  [63:0] delta_weights3_14_d1;
output  [1:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [1:0] delta_weights3_15_address1;
output   delta_weights3_15_ce1;
output   delta_weights3_15_we1;
output  [63:0] delta_weights3_15_d1;
output  [1:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [1:0] delta_weights3_16_address1;
output   delta_weights3_16_ce1;
output   delta_weights3_16_we1;
output  [63:0] delta_weights3_16_d1;
output  [1:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [1:0] delta_weights3_17_address1;
output   delta_weights3_17_ce1;
output   delta_weights3_17_we1;
output  [63:0] delta_weights3_17_d1;
output  [1:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [1:0] delta_weights3_18_address1;
output   delta_weights3_18_ce1;
output   delta_weights3_18_we1;
output  [63:0] delta_weights3_18_d1;
output  [1:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [1:0] delta_weights3_19_address1;
output   delta_weights3_19_ce1;
output   delta_weights3_19_we1;
output  [63:0] delta_weights3_19_d1;
output  [1:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [1:0] delta_weights3_20_address1;
output   delta_weights3_20_ce1;
output   delta_weights3_20_we1;
output  [63:0] delta_weights3_20_d1;
output  [1:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [1:0] delta_weights3_21_address1;
output   delta_weights3_21_ce1;
output   delta_weights3_21_we1;
output  [63:0] delta_weights3_21_d1;
output  [1:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [1:0] delta_weights3_22_address1;
output   delta_weights3_22_ce1;
output   delta_weights3_22_we1;
output  [63:0] delta_weights3_22_d1;
output  [1:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [1:0] delta_weights3_23_address1;
output   delta_weights3_23_ce1;
output   delta_weights3_23_we1;
output  [63:0] delta_weights3_23_d1;
output  [1:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [1:0] delta_weights3_24_address1;
output   delta_weights3_24_ce1;
output   delta_weights3_24_we1;
output  [63:0] delta_weights3_24_d1;
output  [1:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [1:0] delta_weights3_25_address1;
output   delta_weights3_25_ce1;
output   delta_weights3_25_we1;
output  [63:0] delta_weights3_25_d1;
output  [1:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [1:0] delta_weights3_26_address1;
output   delta_weights3_26_ce1;
output   delta_weights3_26_we1;
output  [63:0] delta_weights3_26_d1;
output  [1:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [1:0] delta_weights3_27_address1;
output   delta_weights3_27_ce1;
output   delta_weights3_27_we1;
output  [63:0] delta_weights3_27_d1;
output  [1:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [1:0] delta_weights3_28_address1;
output   delta_weights3_28_ce1;
output   delta_weights3_28_we1;
output  [63:0] delta_weights3_28_d1;
output  [1:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [1:0] delta_weights3_29_address1;
output   delta_weights3_29_ce1;
output   delta_weights3_29_we1;
output  [63:0] delta_weights3_29_d1;
output  [1:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [1:0] delta_weights3_30_address1;
output   delta_weights3_30_ce1;
output   delta_weights3_30_we1;
output  [63:0] delta_weights3_30_d1;
output  [1:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [1:0] delta_weights3_31_address1;
output   delta_weights3_31_ce1;
output   delta_weights3_31_we1;
output  [63:0] delta_weights3_31_d1;
output  [1:0] delta_weights3_32_address0;
output   delta_weights3_32_ce0;
output   delta_weights3_32_we0;
output  [63:0] delta_weights3_32_d0;
output  [1:0] delta_weights3_32_address1;
output   delta_weights3_32_ce1;
output   delta_weights3_32_we1;
output  [63:0] delta_weights3_32_d1;
output  [1:0] delta_weights3_33_address0;
output   delta_weights3_33_ce0;
output   delta_weights3_33_we0;
output  [63:0] delta_weights3_33_d0;
output  [1:0] delta_weights3_33_address1;
output   delta_weights3_33_ce1;
output   delta_weights3_33_we1;
output  [63:0] delta_weights3_33_d1;
output  [1:0] delta_weights3_34_address0;
output   delta_weights3_34_ce0;
output   delta_weights3_34_we0;
output  [63:0] delta_weights3_34_d0;
output  [1:0] delta_weights3_34_address1;
output   delta_weights3_34_ce1;
output   delta_weights3_34_we1;
output  [63:0] delta_weights3_34_d1;
output  [1:0] delta_weights3_35_address0;
output   delta_weights3_35_ce0;
output   delta_weights3_35_we0;
output  [63:0] delta_weights3_35_d0;
output  [1:0] delta_weights3_35_address1;
output   delta_weights3_35_ce1;
output   delta_weights3_35_we1;
output  [63:0] delta_weights3_35_d1;
output  [1:0] delta_weights3_36_address0;
output   delta_weights3_36_ce0;
output   delta_weights3_36_we0;
output  [63:0] delta_weights3_36_d0;
output  [1:0] delta_weights3_36_address1;
output   delta_weights3_36_ce1;
output   delta_weights3_36_we1;
output  [63:0] delta_weights3_36_d1;
output  [1:0] delta_weights3_37_address0;
output   delta_weights3_37_ce0;
output   delta_weights3_37_we0;
output  [63:0] delta_weights3_37_d0;
output  [1:0] delta_weights3_37_address1;
output   delta_weights3_37_ce1;
output   delta_weights3_37_we1;
output  [63:0] delta_weights3_37_d1;
output  [1:0] delta_weights3_38_address0;
output   delta_weights3_38_ce0;
output   delta_weights3_38_we0;
output  [63:0] delta_weights3_38_d0;
output  [1:0] delta_weights3_38_address1;
output   delta_weights3_38_ce1;
output   delta_weights3_38_we1;
output  [63:0] delta_weights3_38_d1;
output  [1:0] delta_weights3_39_address0;
output   delta_weights3_39_ce0;
output   delta_weights3_39_we0;
output  [63:0] delta_weights3_39_d0;
output  [1:0] delta_weights3_39_address1;
output   delta_weights3_39_ce1;
output   delta_weights3_39_we1;
output  [63:0] delta_weights3_39_d1;
output  [1:0] delta_weights3_40_address0;
output   delta_weights3_40_ce0;
output   delta_weights3_40_we0;
output  [63:0] delta_weights3_40_d0;
output  [1:0] delta_weights3_40_address1;
output   delta_weights3_40_ce1;
output   delta_weights3_40_we1;
output  [63:0] delta_weights3_40_d1;
output  [1:0] delta_weights3_41_address0;
output   delta_weights3_41_ce0;
output   delta_weights3_41_we0;
output  [63:0] delta_weights3_41_d0;
output  [1:0] delta_weights3_41_address1;
output   delta_weights3_41_ce1;
output   delta_weights3_41_we1;
output  [63:0] delta_weights3_41_d1;
output  [1:0] delta_weights3_42_address0;
output   delta_weights3_42_ce0;
output   delta_weights3_42_we0;
output  [63:0] delta_weights3_42_d0;
output  [1:0] delta_weights3_42_address1;
output   delta_weights3_42_ce1;
output   delta_weights3_42_we1;
output  [63:0] delta_weights3_42_d1;
output  [1:0] delta_weights3_43_address0;
output   delta_weights3_43_ce0;
output   delta_weights3_43_we0;
output  [63:0] delta_weights3_43_d0;
output  [1:0] delta_weights3_43_address1;
output   delta_weights3_43_ce1;
output   delta_weights3_43_we1;
output  [63:0] delta_weights3_43_d1;
output  [1:0] delta_weights3_44_address0;
output   delta_weights3_44_ce0;
output   delta_weights3_44_we0;
output  [63:0] delta_weights3_44_d0;
output  [1:0] delta_weights3_44_address1;
output   delta_weights3_44_ce1;
output   delta_weights3_44_we1;
output  [63:0] delta_weights3_44_d1;
output  [1:0] delta_weights3_45_address0;
output   delta_weights3_45_ce0;
output   delta_weights3_45_we0;
output  [63:0] delta_weights3_45_d0;
output  [1:0] delta_weights3_45_address1;
output   delta_weights3_45_ce1;
output   delta_weights3_45_we1;
output  [63:0] delta_weights3_45_d1;
output  [1:0] delta_weights3_46_address0;
output   delta_weights3_46_ce0;
output   delta_weights3_46_we0;
output  [63:0] delta_weights3_46_d0;
output  [1:0] delta_weights3_46_address1;
output   delta_weights3_46_ce1;
output   delta_weights3_46_we1;
output  [63:0] delta_weights3_46_d1;
output  [1:0] delta_weights3_47_address0;
output   delta_weights3_47_ce0;
output   delta_weights3_47_we0;
output  [63:0] delta_weights3_47_d0;
output  [1:0] delta_weights3_47_address1;
output   delta_weights3_47_ce1;
output   delta_weights3_47_we1;
output  [63:0] delta_weights3_47_d1;
output  [1:0] delta_weights3_48_address0;
output   delta_weights3_48_ce0;
output   delta_weights3_48_we0;
output  [63:0] delta_weights3_48_d0;
output  [1:0] delta_weights3_48_address1;
output   delta_weights3_48_ce1;
output   delta_weights3_48_we1;
output  [63:0] delta_weights3_48_d1;
output  [1:0] delta_weights3_49_address0;
output   delta_weights3_49_ce0;
output   delta_weights3_49_we0;
output  [63:0] delta_weights3_49_d0;
output  [1:0] delta_weights3_49_address1;
output   delta_weights3_49_ce1;
output   delta_weights3_49_we1;
output  [63:0] delta_weights3_49_d1;
output  [1:0] delta_weights3_50_address0;
output   delta_weights3_50_ce0;
output   delta_weights3_50_we0;
output  [63:0] delta_weights3_50_d0;
output  [1:0] delta_weights3_50_address1;
output   delta_weights3_50_ce1;
output   delta_weights3_50_we1;
output  [63:0] delta_weights3_50_d1;
output  [1:0] delta_weights3_51_address0;
output   delta_weights3_51_ce0;
output   delta_weights3_51_we0;
output  [63:0] delta_weights3_51_d0;
output  [1:0] delta_weights3_51_address1;
output   delta_weights3_51_ce1;
output   delta_weights3_51_we1;
output  [63:0] delta_weights3_51_d1;
output  [1:0] delta_weights3_52_address0;
output   delta_weights3_52_ce0;
output   delta_weights3_52_we0;
output  [63:0] delta_weights3_52_d0;
output  [1:0] delta_weights3_52_address1;
output   delta_weights3_52_ce1;
output   delta_weights3_52_we1;
output  [63:0] delta_weights3_52_d1;
output  [1:0] delta_weights3_53_address0;
output   delta_weights3_53_ce0;
output   delta_weights3_53_we0;
output  [63:0] delta_weights3_53_d0;
output  [1:0] delta_weights3_53_address1;
output   delta_weights3_53_ce1;
output   delta_weights3_53_we1;
output  [63:0] delta_weights3_53_d1;
output  [1:0] delta_weights3_54_address0;
output   delta_weights3_54_ce0;
output   delta_weights3_54_we0;
output  [63:0] delta_weights3_54_d0;
output  [1:0] delta_weights3_54_address1;
output   delta_weights3_54_ce1;
output   delta_weights3_54_we1;
output  [63:0] delta_weights3_54_d1;
output  [1:0] delta_weights3_55_address0;
output   delta_weights3_55_ce0;
output   delta_weights3_55_we0;
output  [63:0] delta_weights3_55_d0;
output  [1:0] delta_weights3_55_address1;
output   delta_weights3_55_ce1;
output   delta_weights3_55_we1;
output  [63:0] delta_weights3_55_d1;
output  [1:0] delta_weights3_56_address0;
output   delta_weights3_56_ce0;
output   delta_weights3_56_we0;
output  [63:0] delta_weights3_56_d0;
output  [1:0] delta_weights3_56_address1;
output   delta_weights3_56_ce1;
output   delta_weights3_56_we1;
output  [63:0] delta_weights3_56_d1;
output  [1:0] delta_weights3_57_address0;
output   delta_weights3_57_ce0;
output   delta_weights3_57_we0;
output  [63:0] delta_weights3_57_d0;
output  [1:0] delta_weights3_57_address1;
output   delta_weights3_57_ce1;
output   delta_weights3_57_we1;
output  [63:0] delta_weights3_57_d1;
output  [1:0] delta_weights3_58_address0;
output   delta_weights3_58_ce0;
output   delta_weights3_58_we0;
output  [63:0] delta_weights3_58_d0;
output  [1:0] delta_weights3_58_address1;
output   delta_weights3_58_ce1;
output   delta_weights3_58_we1;
output  [63:0] delta_weights3_58_d1;
output  [1:0] delta_weights3_59_address0;
output   delta_weights3_59_ce0;
output   delta_weights3_59_we0;
output  [63:0] delta_weights3_59_d0;
output  [1:0] delta_weights3_59_address1;
output   delta_weights3_59_ce1;
output   delta_weights3_59_we1;
output  [63:0] delta_weights3_59_d1;
output  [1:0] delta_weights3_60_address0;
output   delta_weights3_60_ce0;
output   delta_weights3_60_we0;
output  [63:0] delta_weights3_60_d0;
output  [1:0] delta_weights3_60_address1;
output   delta_weights3_60_ce1;
output   delta_weights3_60_we1;
output  [63:0] delta_weights3_60_d1;
output  [1:0] delta_weights3_61_address0;
output   delta_weights3_61_ce0;
output   delta_weights3_61_we0;
output  [63:0] delta_weights3_61_d0;
output  [1:0] delta_weights3_61_address1;
output   delta_weights3_61_ce1;
output   delta_weights3_61_we1;
output  [63:0] delta_weights3_61_d1;
output  [1:0] delta_weights3_62_address0;
output   delta_weights3_62_ce0;
output   delta_weights3_62_we0;
output  [63:0] delta_weights3_62_d0;
output  [1:0] delta_weights3_62_address1;
output   delta_weights3_62_ce1;
output   delta_weights3_62_we1;
output  [63:0] delta_weights3_62_d1;
output  [1:0] delta_weights3_63_address0;
output   delta_weights3_63_ce0;
output   delta_weights3_63_we0;
output  [63:0] delta_weights3_63_d0;
output  [1:0] delta_weights3_63_address1;
output   delta_weights3_63_ce1;
output   delta_weights3_63_we1;
output  [63:0] delta_weights3_63_d1;
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
output  [63:0] grp_fu_23979_p_din0;
output  [63:0] grp_fu_23979_p_din1;
input  [63:0] grp_fu_23979_p_dout0;
output   grp_fu_23979_p_ce;
output  [63:0] grp_fu_23983_p_din0;
output  [63:0] grp_fu_23983_p_din1;
input  [63:0] grp_fu_23983_p_dout0;
output   grp_fu_23983_p_ce;
output  [63:0] grp_fu_23987_p_din0;
output  [63:0] grp_fu_23987_p_din1;
input  [63:0] grp_fu_23987_p_dout0;
output   grp_fu_23987_p_ce;
output  [63:0] grp_fu_23991_p_din0;
output  [63:0] grp_fu_23991_p_din1;
input  [63:0] grp_fu_23991_p_dout0;
output   grp_fu_23991_p_ce;
output  [63:0] grp_fu_23995_p_din0;
output  [63:0] grp_fu_23995_p_din1;
input  [63:0] grp_fu_23995_p_dout0;
output   grp_fu_23995_p_ce;
output  [63:0] grp_fu_23999_p_din0;
output  [63:0] grp_fu_23999_p_din1;
input  [63:0] grp_fu_23999_p_dout0;
output   grp_fu_23999_p_ce;
output  [63:0] grp_fu_24003_p_din0;
output  [63:0] grp_fu_24003_p_din1;
input  [63:0] grp_fu_24003_p_dout0;
output   grp_fu_24003_p_ce;
output  [63:0] grp_fu_24007_p_din0;
output  [63:0] grp_fu_24007_p_din1;
input  [63:0] grp_fu_24007_p_dout0;
output   grp_fu_24007_p_ce;
output  [63:0] grp_fu_24011_p_din0;
output  [63:0] grp_fu_24011_p_din1;
input  [63:0] grp_fu_24011_p_dout0;
output   grp_fu_24011_p_ce;
output  [63:0] grp_fu_24015_p_din0;
output  [63:0] grp_fu_24015_p_din1;
input  [63:0] grp_fu_24015_p_dout0;
output   grp_fu_24015_p_ce;
output  [63:0] grp_fu_24019_p_din0;
output  [63:0] grp_fu_24019_p_din1;
input  [63:0] grp_fu_24019_p_dout0;
output   grp_fu_24019_p_ce;
output  [63:0] grp_fu_24023_p_din0;
output  [63:0] grp_fu_24023_p_din1;
input  [63:0] grp_fu_24023_p_dout0;
output   grp_fu_24023_p_ce;
output  [63:0] grp_fu_24027_p_din0;
output  [63:0] grp_fu_24027_p_din1;
input  [63:0] grp_fu_24027_p_dout0;
output   grp_fu_24027_p_ce;
output  [63:0] grp_fu_24031_p_din0;
output  [63:0] grp_fu_24031_p_din1;
input  [63:0] grp_fu_24031_p_dout0;
output   grp_fu_24031_p_ce;
output  [63:0] grp_fu_24035_p_din0;
output  [63:0] grp_fu_24035_p_din1;
input  [63:0] grp_fu_24035_p_dout0;
output   grp_fu_24035_p_ce;
output  [63:0] grp_fu_24039_p_din0;
output  [63:0] grp_fu_24039_p_din1;
input  [63:0] grp_fu_24039_p_dout0;
output   grp_fu_24039_p_ce;
output  [63:0] grp_fu_24043_p_din0;
output  [63:0] grp_fu_24043_p_din1;
input  [63:0] grp_fu_24043_p_dout0;
output   grp_fu_24043_p_ce;
output  [63:0] grp_fu_24047_p_din0;
output  [63:0] grp_fu_24047_p_din1;
input  [63:0] grp_fu_24047_p_dout0;
output   grp_fu_24047_p_ce;
output  [63:0] grp_fu_24051_p_din0;
output  [63:0] grp_fu_24051_p_din1;
input  [63:0] grp_fu_24051_p_dout0;
output   grp_fu_24051_p_ce;
output  [63:0] grp_fu_24055_p_din0;
output  [63:0] grp_fu_24055_p_din1;
input  [63:0] grp_fu_24055_p_dout0;
output   grp_fu_24055_p_ce;
output  [63:0] grp_fu_24059_p_din0;
output  [63:0] grp_fu_24059_p_din1;
input  [63:0] grp_fu_24059_p_dout0;
output   grp_fu_24059_p_ce;
output  [63:0] grp_fu_24063_p_din0;
output  [63:0] grp_fu_24063_p_din1;
input  [63:0] grp_fu_24063_p_dout0;
output   grp_fu_24063_p_ce;
output  [63:0] grp_fu_24067_p_din0;
output  [63:0] grp_fu_24067_p_din1;
input  [63:0] grp_fu_24067_p_dout0;
output   grp_fu_24067_p_ce;
output  [63:0] grp_fu_24071_p_din0;
output  [63:0] grp_fu_24071_p_din1;
input  [63:0] grp_fu_24071_p_dout0;
output   grp_fu_24071_p_ce;
output  [63:0] grp_fu_24075_p_din0;
output  [63:0] grp_fu_24075_p_din1;
input  [63:0] grp_fu_24075_p_dout0;
output   grp_fu_24075_p_ce;
output  [63:0] grp_fu_24079_p_din0;
output  [63:0] grp_fu_24079_p_din1;
input  [63:0] grp_fu_24079_p_dout0;
output   grp_fu_24079_p_ce;
output  [63:0] grp_fu_24083_p_din0;
output  [63:0] grp_fu_24083_p_din1;
input  [63:0] grp_fu_24083_p_dout0;
output   grp_fu_24083_p_ce;
output  [63:0] grp_fu_24087_p_din0;
output  [63:0] grp_fu_24087_p_din1;
input  [63:0] grp_fu_24087_p_dout0;
output   grp_fu_24087_p_ce;
output  [63:0] grp_fu_24091_p_din0;
output  [63:0] grp_fu_24091_p_din1;
input  [63:0] grp_fu_24091_p_dout0;
output   grp_fu_24091_p_ce;
output  [63:0] grp_fu_24095_p_din0;
output  [63:0] grp_fu_24095_p_din1;
input  [63:0] grp_fu_24095_p_dout0;
output   grp_fu_24095_p_ce;
output  [63:0] grp_fu_24099_p_din0;
output  [63:0] grp_fu_24099_p_din1;
input  [63:0] grp_fu_24099_p_dout0;
output   grp_fu_24099_p_ce;
output  [63:0] grp_fu_24103_p_din0;
output  [63:0] grp_fu_24103_p_din1;
input  [63:0] grp_fu_24103_p_dout0;
output   grp_fu_24103_p_ce;
output  [63:0] grp_fu_24107_p_din0;
output  [63:0] grp_fu_24107_p_din1;
input  [63:0] grp_fu_24107_p_dout0;
output   grp_fu_24107_p_ce;
output  [63:0] grp_fu_24111_p_din0;
output  [63:0] grp_fu_24111_p_din1;
input  [63:0] grp_fu_24111_p_dout0;
output   grp_fu_24111_p_ce;
output  [63:0] grp_fu_24115_p_din0;
output  [63:0] grp_fu_24115_p_din1;
input  [63:0] grp_fu_24115_p_dout0;
output   grp_fu_24115_p_ce;
output  [63:0] grp_fu_24119_p_din0;
output  [63:0] grp_fu_24119_p_din1;
input  [63:0] grp_fu_24119_p_dout0;
output   grp_fu_24119_p_ce;
output  [63:0] grp_fu_24123_p_din0;
output  [63:0] grp_fu_24123_p_din1;
input  [63:0] grp_fu_24123_p_dout0;
output   grp_fu_24123_p_ce;
output  [63:0] grp_fu_24127_p_din0;
output  [63:0] grp_fu_24127_p_din1;
input  [63:0] grp_fu_24127_p_dout0;
output   grp_fu_24127_p_ce;
output  [63:0] grp_fu_24131_p_din0;
output  [63:0] grp_fu_24131_p_din1;
input  [63:0] grp_fu_24131_p_dout0;
output   grp_fu_24131_p_ce;
output  [63:0] grp_fu_24135_p_din0;
output  [63:0] grp_fu_24135_p_din1;
input  [63:0] grp_fu_24135_p_dout0;
output   grp_fu_24135_p_ce;
output  [63:0] grp_fu_24139_p_din0;
output  [63:0] grp_fu_24139_p_din1;
input  [63:0] grp_fu_24139_p_dout0;
output   grp_fu_24139_p_ce;
output  [63:0] grp_fu_24143_p_din0;
output  [63:0] grp_fu_24143_p_din1;
input  [63:0] grp_fu_24143_p_dout0;
output   grp_fu_24143_p_ce;
output  [63:0] grp_fu_24147_p_din0;
output  [63:0] grp_fu_24147_p_din1;
input  [63:0] grp_fu_24147_p_dout0;
output   grp_fu_24147_p_ce;
output  [63:0] grp_fu_24151_p_din0;
output  [63:0] grp_fu_24151_p_din1;
input  [63:0] grp_fu_24151_p_dout0;
output   grp_fu_24151_p_ce;
output  [63:0] grp_fu_24155_p_din0;
output  [63:0] grp_fu_24155_p_din1;
input  [63:0] grp_fu_24155_p_dout0;
output   grp_fu_24155_p_ce;
output  [63:0] grp_fu_24159_p_din0;
output  [63:0] grp_fu_24159_p_din1;
input  [63:0] grp_fu_24159_p_dout0;
output   grp_fu_24159_p_ce;
output  [63:0] grp_fu_24163_p_din0;
output  [63:0] grp_fu_24163_p_din1;
input  [63:0] grp_fu_24163_p_dout0;
output   grp_fu_24163_p_ce;
output  [63:0] grp_fu_24167_p_din0;
output  [63:0] grp_fu_24167_p_din1;
input  [63:0] grp_fu_24167_p_dout0;
output   grp_fu_24167_p_ce;
output  [63:0] grp_fu_24171_p_din0;
output  [63:0] grp_fu_24171_p_din1;
input  [63:0] grp_fu_24171_p_dout0;
output   grp_fu_24171_p_ce;
output  [63:0] grp_fu_24175_p_din0;
output  [63:0] grp_fu_24175_p_din1;
input  [63:0] grp_fu_24175_p_dout0;
output   grp_fu_24175_p_ce;
output  [63:0] grp_fu_24179_p_din0;
output  [63:0] grp_fu_24179_p_din1;
input  [63:0] grp_fu_24179_p_dout0;
output   grp_fu_24179_p_ce;
output  [63:0] grp_fu_24183_p_din0;
output  [63:0] grp_fu_24183_p_din1;
input  [63:0] grp_fu_24183_p_dout0;
output   grp_fu_24183_p_ce;
output  [63:0] grp_fu_24187_p_din0;
output  [63:0] grp_fu_24187_p_din1;
input  [63:0] grp_fu_24187_p_dout0;
output   grp_fu_24187_p_ce;
output  [63:0] grp_fu_24191_p_din0;
output  [63:0] grp_fu_24191_p_din1;
input  [63:0] grp_fu_24191_p_dout0;
output   grp_fu_24191_p_ce;
output  [63:0] grp_fu_24195_p_din0;
output  [63:0] grp_fu_24195_p_din1;
input  [63:0] grp_fu_24195_p_dout0;
output   grp_fu_24195_p_ce;
output  [63:0] grp_fu_24199_p_din0;
output  [63:0] grp_fu_24199_p_din1;
input  [63:0] grp_fu_24199_p_dout0;
output   grp_fu_24199_p_ce;
output  [63:0] grp_fu_24203_p_din0;
output  [63:0] grp_fu_24203_p_din1;
input  [63:0] grp_fu_24203_p_dout0;
output   grp_fu_24203_p_ce;
output  [63:0] grp_fu_24207_p_din0;
output  [63:0] grp_fu_24207_p_din1;
input  [63:0] grp_fu_24207_p_dout0;
output   grp_fu_24207_p_ce;
output  [63:0] grp_fu_24211_p_din0;
output  [63:0] grp_fu_24211_p_din1;
input  [63:0] grp_fu_24211_p_dout0;
output   grp_fu_24211_p_ce;
output  [63:0] grp_fu_24215_p_din0;
output  [63:0] grp_fu_24215_p_din1;
input  [63:0] grp_fu_24215_p_dout0;
output   grp_fu_24215_p_ce;
output  [63:0] grp_fu_24219_p_din0;
output  [63:0] grp_fu_24219_p_din1;
input  [63:0] grp_fu_24219_p_dout0;
output   grp_fu_24219_p_ce;
output  [63:0] grp_fu_24223_p_din0;
output  [63:0] grp_fu_24223_p_din1;
input  [63:0] grp_fu_24223_p_dout0;
output   grp_fu_24223_p_ce;
output  [63:0] grp_fu_24227_p_din0;
output  [63:0] grp_fu_24227_p_din1;
input  [63:0] grp_fu_24227_p_dout0;
output   grp_fu_24227_p_ce;
output  [63:0] grp_fu_24231_p_din0;
output  [63:0] grp_fu_24231_p_din1;
input  [63:0] grp_fu_24231_p_dout0;
output   grp_fu_24231_p_ce;
output  [63:0] grp_fu_24243_p_din0;
output  [63:0] grp_fu_24243_p_din1;
input  [63:0] grp_fu_24243_p_dout0;
output   grp_fu_24243_p_ce;
output  [63:0] grp_fu_24247_p_din0;
output  [63:0] grp_fu_24247_p_din1;
input  [63:0] grp_fu_24247_p_dout0;
output   grp_fu_24247_p_ce;
output  [63:0] grp_fu_24251_p_din0;
output  [63:0] grp_fu_24251_p_din1;
input  [63:0] grp_fu_24251_p_dout0;
output   grp_fu_24251_p_ce;
output  [63:0] grp_fu_24255_p_din0;
output  [63:0] grp_fu_24255_p_din1;
input  [63:0] grp_fu_24255_p_dout0;
output   grp_fu_24255_p_ce;
output  [63:0] grp_fu_24259_p_din0;
output  [63:0] grp_fu_24259_p_din1;
input  [63:0] grp_fu_24259_p_dout0;
output   grp_fu_24259_p_ce;
output  [63:0] grp_fu_24263_p_din0;
output  [63:0] grp_fu_24263_p_din1;
input  [63:0] grp_fu_24263_p_dout0;
output   grp_fu_24263_p_ce;
output  [63:0] grp_fu_24267_p_din0;
output  [63:0] grp_fu_24267_p_din1;
input  [63:0] grp_fu_24267_p_dout0;
output   grp_fu_24267_p_ce;
output  [63:0] grp_fu_24271_p_din0;
output  [63:0] grp_fu_24271_p_din1;
input  [63:0] grp_fu_24271_p_dout0;
output   grp_fu_24271_p_ce;
output  [63:0] grp_fu_24275_p_din0;
output  [63:0] grp_fu_24275_p_din1;
input  [63:0] grp_fu_24275_p_dout0;
output   grp_fu_24275_p_ce;
output  [63:0] grp_fu_24279_p_din0;
output  [63:0] grp_fu_24279_p_din1;
input  [63:0] grp_fu_24279_p_dout0;
output   grp_fu_24279_p_ce;
output  [63:0] grp_fu_24283_p_din0;
output  [63:0] grp_fu_24283_p_din1;
input  [63:0] grp_fu_24283_p_dout0;
output   grp_fu_24283_p_ce;
output  [63:0] grp_fu_24287_p_din0;
output  [63:0] grp_fu_24287_p_din1;
input  [63:0] grp_fu_24287_p_dout0;
output   grp_fu_24287_p_ce;
output  [63:0] grp_fu_24291_p_din0;
output  [63:0] grp_fu_24291_p_din1;
input  [63:0] grp_fu_24291_p_dout0;
output   grp_fu_24291_p_ce;
output  [63:0] grp_fu_24295_p_din0;
output  [63:0] grp_fu_24295_p_din1;
input  [63:0] grp_fu_24295_p_dout0;
output   grp_fu_24295_p_ce;
output  [63:0] grp_fu_24299_p_din0;
output  [63:0] grp_fu_24299_p_din1;
input  [63:0] grp_fu_24299_p_dout0;
output   grp_fu_24299_p_ce;
output  [63:0] grp_fu_24303_p_din0;
output  [63:0] grp_fu_24303_p_din1;
input  [63:0] grp_fu_24303_p_dout0;
output   grp_fu_24303_p_ce;
output  [63:0] grp_fu_24307_p_din0;
output  [63:0] grp_fu_24307_p_din1;
input  [63:0] grp_fu_24307_p_dout0;
output   grp_fu_24307_p_ce;
output  [63:0] grp_fu_24311_p_din0;
output  [63:0] grp_fu_24311_p_din1;
input  [63:0] grp_fu_24311_p_dout0;
output   grp_fu_24311_p_ce;
output  [63:0] grp_fu_24315_p_din0;
output  [63:0] grp_fu_24315_p_din1;
input  [63:0] grp_fu_24315_p_dout0;
output   grp_fu_24315_p_ce;
output  [63:0] grp_fu_24319_p_din0;
output  [63:0] grp_fu_24319_p_din1;
input  [63:0] grp_fu_24319_p_dout0;
output   grp_fu_24319_p_ce;
output  [63:0] grp_fu_24323_p_din0;
output  [63:0] grp_fu_24323_p_din1;
input  [63:0] grp_fu_24323_p_dout0;
output   grp_fu_24323_p_ce;
output  [63:0] grp_fu_24327_p_din0;
output  [63:0] grp_fu_24327_p_din1;
input  [63:0] grp_fu_24327_p_dout0;
output   grp_fu_24327_p_ce;
output  [63:0] grp_fu_24331_p_din0;
output  [63:0] grp_fu_24331_p_din1;
input  [63:0] grp_fu_24331_p_dout0;
output   grp_fu_24331_p_ce;
output  [63:0] grp_fu_24335_p_din0;
output  [63:0] grp_fu_24335_p_din1;
input  [63:0] grp_fu_24335_p_dout0;
output   grp_fu_24335_p_ce;
output  [63:0] grp_fu_24339_p_din0;
output  [63:0] grp_fu_24339_p_din1;
input  [63:0] grp_fu_24339_p_dout0;
output   grp_fu_24339_p_ce;
output  [63:0] grp_fu_24343_p_din0;
output  [63:0] grp_fu_24343_p_din1;
input  [63:0] grp_fu_24343_p_dout0;
output   grp_fu_24343_p_ce;
output  [63:0] grp_fu_24347_p_din0;
output  [63:0] grp_fu_24347_p_din1;
input  [63:0] grp_fu_24347_p_dout0;
output   grp_fu_24347_p_ce;
output  [63:0] grp_fu_24351_p_din0;
output  [63:0] grp_fu_24351_p_din1;
input  [63:0] grp_fu_24351_p_dout0;
output   grp_fu_24351_p_ce;
output  [63:0] grp_fu_24355_p_din0;
output  [63:0] grp_fu_24355_p_din1;
input  [63:0] grp_fu_24355_p_dout0;
output   grp_fu_24355_p_ce;
output  [63:0] grp_fu_24359_p_din0;
output  [63:0] grp_fu_24359_p_din1;
input  [63:0] grp_fu_24359_p_dout0;
output   grp_fu_24359_p_ce;
output  [63:0] grp_fu_24363_p_din0;
output  [63:0] grp_fu_24363_p_din1;
input  [63:0] grp_fu_24363_p_dout0;
output   grp_fu_24363_p_ce;
output  [63:0] grp_fu_24367_p_din0;
output  [63:0] grp_fu_24367_p_din1;
input  [63:0] grp_fu_24367_p_dout0;
output   grp_fu_24367_p_ce;
output  [63:0] grp_fu_24371_p_din0;
output  [63:0] grp_fu_24371_p_din1;
input  [63:0] grp_fu_24371_p_dout0;
output   grp_fu_24371_p_ce;
output  [63:0] grp_fu_24375_p_din0;
output  [63:0] grp_fu_24375_p_din1;
input  [63:0] grp_fu_24375_p_dout0;
output   grp_fu_24375_p_ce;
output  [63:0] grp_fu_24379_p_din0;
output  [63:0] grp_fu_24379_p_din1;
input  [63:0] grp_fu_24379_p_dout0;
output   grp_fu_24379_p_ce;
output  [63:0] grp_fu_24383_p_din0;
output  [63:0] grp_fu_24383_p_din1;
input  [63:0] grp_fu_24383_p_dout0;
output   grp_fu_24383_p_ce;
output  [63:0] grp_fu_24387_p_din0;
output  [63:0] grp_fu_24387_p_din1;
input  [63:0] grp_fu_24387_p_dout0;
output   grp_fu_24387_p_ce;
output  [63:0] grp_fu_24391_p_din0;
output  [63:0] grp_fu_24391_p_din1;
input  [63:0] grp_fu_24391_p_dout0;
output   grp_fu_24391_p_ce;
output  [63:0] grp_fu_24395_p_din0;
output  [63:0] grp_fu_24395_p_din1;
input  [63:0] grp_fu_24395_p_dout0;
output   grp_fu_24395_p_ce;
output  [63:0] grp_fu_24399_p_din0;
output  [63:0] grp_fu_24399_p_din1;
input  [63:0] grp_fu_24399_p_dout0;
output   grp_fu_24399_p_ce;
output  [63:0] grp_fu_24403_p_din0;
output  [63:0] grp_fu_24403_p_din1;
input  [63:0] grp_fu_24403_p_dout0;
output   grp_fu_24403_p_ce;
output  [63:0] grp_fu_24407_p_din0;
output  [63:0] grp_fu_24407_p_din1;
input  [63:0] grp_fu_24407_p_dout0;
output   grp_fu_24407_p_ce;
output  [63:0] grp_fu_24411_p_din0;
output  [63:0] grp_fu_24411_p_din1;
input  [63:0] grp_fu_24411_p_dout0;
output   grp_fu_24411_p_ce;
output  [63:0] grp_fu_24415_p_din0;
output  [63:0] grp_fu_24415_p_din1;
input  [63:0] grp_fu_24415_p_dout0;
output   grp_fu_24415_p_ce;
output  [63:0] grp_fu_24419_p_din0;
output  [63:0] grp_fu_24419_p_din1;
input  [63:0] grp_fu_24419_p_dout0;
output   grp_fu_24419_p_ce;
output  [63:0] grp_fu_24423_p_din0;
output  [63:0] grp_fu_24423_p_din1;
input  [63:0] grp_fu_24423_p_dout0;
output   grp_fu_24423_p_ce;
output  [63:0] grp_fu_24427_p_din0;
output  [63:0] grp_fu_24427_p_din1;
input  [63:0] grp_fu_24427_p_dout0;
output   grp_fu_24427_p_ce;
output  [63:0] grp_fu_24431_p_din0;
output  [63:0] grp_fu_24431_p_din1;
input  [63:0] grp_fu_24431_p_dout0;
output   grp_fu_24431_p_ce;
output  [63:0] grp_fu_24435_p_din0;
output  [63:0] grp_fu_24435_p_din1;
input  [63:0] grp_fu_24435_p_dout0;
output   grp_fu_24435_p_ce;
output  [63:0] grp_fu_24439_p_din0;
output  [63:0] grp_fu_24439_p_din1;
input  [63:0] grp_fu_24439_p_dout0;
output   grp_fu_24439_p_ce;
output  [63:0] grp_fu_24443_p_din0;
output  [63:0] grp_fu_24443_p_din1;
input  [63:0] grp_fu_24443_p_dout0;
output   grp_fu_24443_p_ce;
output  [63:0] grp_fu_24447_p_din0;
output  [63:0] grp_fu_24447_p_din1;
input  [63:0] grp_fu_24447_p_dout0;
output   grp_fu_24447_p_ce;
output  [63:0] grp_fu_24451_p_din0;
output  [63:0] grp_fu_24451_p_din1;
input  [63:0] grp_fu_24451_p_dout0;
output   grp_fu_24451_p_ce;
output  [63:0] grp_fu_24455_p_din0;
output  [63:0] grp_fu_24455_p_din1;
input  [63:0] grp_fu_24455_p_dout0;
output   grp_fu_24455_p_ce;
output  [63:0] grp_fu_24459_p_din0;
output  [63:0] grp_fu_24459_p_din1;
input  [63:0] grp_fu_24459_p_dout0;
output   grp_fu_24459_p_ce;
output  [63:0] grp_fu_24463_p_din0;
output  [63:0] grp_fu_24463_p_din1;
input  [63:0] grp_fu_24463_p_dout0;
output   grp_fu_24463_p_ce;
output  [63:0] grp_fu_24467_p_din0;
output  [63:0] grp_fu_24467_p_din1;
input  [63:0] grp_fu_24467_p_dout0;
output   grp_fu_24467_p_ce;
output  [63:0] grp_fu_24471_p_din0;
output  [63:0] grp_fu_24471_p_din1;
input  [63:0] grp_fu_24471_p_dout0;
output   grp_fu_24471_p_ce;
output  [63:0] grp_fu_24475_p_din0;
output  [63:0] grp_fu_24475_p_din1;
input  [63:0] grp_fu_24475_p_dout0;
output   grp_fu_24475_p_ce;
output  [63:0] grp_fu_24479_p_din0;
output  [63:0] grp_fu_24479_p_din1;
input  [63:0] grp_fu_24479_p_dout0;
output   grp_fu_24479_p_ce;
output  [63:0] grp_fu_24483_p_din0;
output  [63:0] grp_fu_24483_p_din1;
input  [63:0] grp_fu_24483_p_dout0;
output   grp_fu_24483_p_ce;
output  [63:0] grp_fu_24487_p_din0;
output  [63:0] grp_fu_24487_p_din1;
input  [63:0] grp_fu_24487_p_dout0;
output   grp_fu_24487_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3798;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [63:0] reg_3804;
reg   [63:0] reg_3810;
reg   [63:0] reg_3816;
reg   [63:0] reg_3822;
reg   [63:0] reg_3828;
reg   [63:0] reg_3834;
reg   [63:0] reg_3840;
reg   [63:0] reg_3846;
reg   [63:0] reg_3852;
reg   [63:0] reg_3858;
reg   [63:0] reg_3864;
reg   [63:0] reg_3870;
reg   [63:0] reg_3876;
reg   [63:0] reg_3882;
reg   [63:0] reg_3888;
reg   [63:0] reg_3894;
reg   [63:0] reg_3900;
reg   [63:0] reg_3906;
reg   [63:0] reg_3912;
reg   [63:0] reg_3918;
reg   [63:0] reg_3924;
reg   [63:0] reg_3930;
reg   [63:0] reg_3936;
reg   [63:0] reg_3942;
reg   [63:0] reg_3948;
reg   [63:0] reg_3954;
reg   [63:0] reg_3960;
reg   [63:0] reg_3966;
reg   [63:0] reg_3972;
reg   [63:0] reg_3978;
reg   [63:0] reg_3984;
reg   [63:0] reg_3990;
reg   [63:0] reg_3996;
reg   [63:0] reg_4002;
reg   [63:0] reg_4008;
reg   [63:0] reg_4014;
reg   [63:0] reg_4020;
reg   [63:0] reg_4026;
reg   [63:0] reg_4032;
reg   [63:0] reg_4038;
reg   [63:0] reg_4044;
reg   [63:0] reg_4050;
reg   [63:0] reg_4056;
reg   [63:0] reg_4062;
reg   [63:0] reg_4068;
reg   [63:0] reg_4074;
reg   [63:0] reg_4080;
reg   [63:0] reg_4086;
reg   [63:0] reg_4092;
reg   [63:0] reg_4098;
reg   [63:0] reg_4104;
reg   [63:0] reg_4110;
reg   [63:0] reg_4116;
reg   [63:0] reg_4122;
reg   [63:0] reg_4128;
reg   [63:0] reg_4134;
reg   [63:0] reg_4140;
reg   [63:0] reg_4146;
reg   [63:0] reg_4152;
reg   [63:0] reg_4158;
reg   [63:0] reg_4164;
reg   [63:0] reg_4170;
reg   [63:0] reg_4176;
reg   [63:0] reg_4182;
reg   [63:0] reg_4188;
wire    ap_CS_fsm_state2;
reg   [63:0] mul_22_reg_4780;
reg   [63:0] mul_22_1_reg_4785;
reg   [63:0] mul_22_2_reg_4790;
reg   [63:0] mul_23_reg_4795;
reg   [63:0] mul_23_1_reg_4800;
reg   [63:0] mul_23_2_reg_4805;
reg   [63:0] mul_24_reg_4810;
reg   [63:0] mul_24_1_reg_4815;
reg   [63:0] mul_24_2_reg_4820;
reg   [63:0] mul_25_reg_4825;
reg   [63:0] mul_25_1_reg_4830;
reg   [63:0] mul_25_2_reg_4835;
reg   [63:0] mul_26_reg_4840;
reg   [63:0] mul_26_1_reg_4845;
reg   [63:0] mul_26_2_reg_4850;
reg   [63:0] mul_27_reg_4855;
reg   [63:0] mul_27_1_reg_4860;
reg   [63:0] mul_27_2_reg_4865;
reg   [63:0] mul_28_reg_4870;
reg   [63:0] mul_28_1_reg_4875;
reg   [63:0] mul_28_2_reg_4880;
reg   [63:0] mul_29_reg_4885;
reg   [63:0] mul_29_1_reg_4890;
reg   [63:0] mul_29_2_reg_4895;
reg   [63:0] mul_30_reg_4900;
reg   [63:0] mul_30_1_reg_4905;
reg   [63:0] mul_30_2_reg_4910;
reg   [63:0] mul_31_reg_4915;
reg   [63:0] mul_31_1_reg_4920;
reg   [63:0] mul_31_2_reg_4925;
reg   [63:0] mul_32_reg_4930;
reg   [63:0] mul_32_1_reg_4935;
reg   [63:0] mul_32_2_reg_4940;
reg   [63:0] mul_33_reg_4945;
reg   [63:0] mul_33_1_reg_4950;
reg   [63:0] mul_33_2_reg_4955;
reg   [63:0] mul_34_reg_4960;
reg   [63:0] mul_34_1_reg_4965;
reg   [63:0] mul_34_2_reg_4970;
reg   [63:0] mul_35_reg_4975;
reg   [63:0] mul_35_1_reg_4980;
reg   [63:0] mul_35_2_reg_4985;
reg   [63:0] mul_36_reg_4990;
reg   [63:0] mul_36_1_reg_4995;
reg   [63:0] mul_36_2_reg_5000;
reg   [63:0] mul_37_reg_5005;
reg   [63:0] mul_37_1_reg_5010;
reg   [63:0] mul_37_2_reg_5015;
reg   [63:0] mul_38_reg_5020;
reg   [63:0] mul_38_1_reg_5025;
reg   [63:0] mul_38_2_reg_5030;
reg   [63:0] mul_39_reg_5035;
reg   [63:0] mul_39_1_reg_5040;
reg   [63:0] mul_39_2_reg_5045;
reg   [63:0] mul_40_reg_5050;
reg   [63:0] mul_40_1_reg_5055;
reg   [63:0] mul_40_2_reg_5060;
reg   [63:0] mul_41_reg_5065;
reg   [63:0] mul_41_1_reg_5070;
reg   [63:0] mul_41_2_reg_5075;
wire    ap_CS_fsm_state9;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [1:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [1:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [1:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [1:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [1:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [1:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [1:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [1:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [1:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [1:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [1:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [1:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [1:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [1:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [1:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we1_local;
reg    delta_weights3_15_ce1_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [1:0] delta_weights3_15_address0_local;
reg    delta_weights3_16_we1_local;
reg    delta_weights3_16_ce1_local;
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [1:0] delta_weights3_16_address0_local;
reg    delta_weights3_17_we1_local;
reg    delta_weights3_17_ce1_local;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [1:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we1_local;
reg    delta_weights3_18_ce1_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [1:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we1_local;
reg    delta_weights3_19_ce1_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [1:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we1_local;
reg    delta_weights3_20_ce1_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [1:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we1_local;
reg    delta_weights3_21_ce1_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [1:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we1_local;
reg    delta_weights3_22_ce1_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [1:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we1_local;
reg    delta_weights3_23_ce1_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [1:0] delta_weights3_23_address0_local;
reg    delta_weights3_24_we1_local;
reg    delta_weights3_24_ce1_local;
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [1:0] delta_weights3_24_address0_local;
reg    delta_weights3_25_we1_local;
reg    delta_weights3_25_ce1_local;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [1:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we1_local;
reg    delta_weights3_26_ce1_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [1:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we1_local;
reg    delta_weights3_27_ce1_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [1:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we1_local;
reg    delta_weights3_28_ce1_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [1:0] delta_weights3_28_address0_local;
reg    delta_weights3_29_we1_local;
reg    delta_weights3_29_ce1_local;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [1:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we1_local;
reg    delta_weights3_30_ce1_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [1:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we1_local;
reg    delta_weights3_31_ce1_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [1:0] delta_weights3_31_address0_local;
reg    delta_weights3_32_we1_local;
reg    delta_weights3_32_ce1_local;
reg    delta_weights3_32_we0_local;
reg   [63:0] delta_weights3_32_d0_local;
reg    delta_weights3_32_ce0_local;
reg   [1:0] delta_weights3_32_address0_local;
reg    delta_weights3_33_we1_local;
reg    delta_weights3_33_ce1_local;
reg    delta_weights3_33_we0_local;
reg   [63:0] delta_weights3_33_d0_local;
reg    delta_weights3_33_ce0_local;
reg   [1:0] delta_weights3_33_address0_local;
reg    delta_weights3_34_we1_local;
reg    delta_weights3_34_ce1_local;
reg    delta_weights3_34_we0_local;
reg   [63:0] delta_weights3_34_d0_local;
reg    delta_weights3_34_ce0_local;
reg   [1:0] delta_weights3_34_address0_local;
reg    delta_weights3_35_we1_local;
reg    delta_weights3_35_ce1_local;
reg    delta_weights3_35_we0_local;
reg   [63:0] delta_weights3_35_d0_local;
reg    delta_weights3_35_ce0_local;
reg   [1:0] delta_weights3_35_address0_local;
reg    delta_weights3_36_we1_local;
reg    delta_weights3_36_ce1_local;
reg    delta_weights3_36_we0_local;
reg   [63:0] delta_weights3_36_d0_local;
reg    delta_weights3_36_ce0_local;
reg   [1:0] delta_weights3_36_address0_local;
reg    delta_weights3_37_we1_local;
reg    delta_weights3_37_ce1_local;
reg    delta_weights3_37_we0_local;
reg   [63:0] delta_weights3_37_d0_local;
reg    delta_weights3_37_ce0_local;
reg   [1:0] delta_weights3_37_address0_local;
reg    delta_weights3_38_we1_local;
reg    delta_weights3_38_ce1_local;
reg    delta_weights3_38_we0_local;
reg   [63:0] delta_weights3_38_d0_local;
reg    delta_weights3_38_ce0_local;
reg   [1:0] delta_weights3_38_address0_local;
reg    delta_weights3_39_we1_local;
reg    delta_weights3_39_ce1_local;
reg    delta_weights3_39_we0_local;
reg   [63:0] delta_weights3_39_d0_local;
reg    delta_weights3_39_ce0_local;
reg   [1:0] delta_weights3_39_address0_local;
reg    delta_weights3_40_we1_local;
reg    delta_weights3_40_ce1_local;
reg    delta_weights3_40_we0_local;
reg   [63:0] delta_weights3_40_d0_local;
reg    delta_weights3_40_ce0_local;
reg   [1:0] delta_weights3_40_address0_local;
reg    delta_weights3_41_we1_local;
reg    delta_weights3_41_ce1_local;
reg    delta_weights3_41_we0_local;
reg   [63:0] delta_weights3_41_d0_local;
reg    delta_weights3_41_ce0_local;
reg   [1:0] delta_weights3_41_address0_local;
reg    delta_weights3_42_we1_local;
reg    delta_weights3_42_ce1_local;
reg    delta_weights3_42_we0_local;
reg   [63:0] delta_weights3_42_d0_local;
reg    delta_weights3_42_ce0_local;
reg   [1:0] delta_weights3_42_address0_local;
reg    delta_weights3_43_we1_local;
reg    delta_weights3_43_ce1_local;
reg    delta_weights3_43_we0_local;
reg   [63:0] delta_weights3_43_d0_local;
reg    delta_weights3_43_ce0_local;
reg   [1:0] delta_weights3_43_address0_local;
reg    delta_weights3_44_we1_local;
reg    delta_weights3_44_ce1_local;
reg    delta_weights3_44_we0_local;
reg   [63:0] delta_weights3_44_d0_local;
reg    delta_weights3_44_ce0_local;
reg   [1:0] delta_weights3_44_address0_local;
reg    delta_weights3_45_we1_local;
reg    delta_weights3_45_ce1_local;
reg    delta_weights3_45_we0_local;
reg   [63:0] delta_weights3_45_d0_local;
reg    delta_weights3_45_ce0_local;
reg   [1:0] delta_weights3_45_address0_local;
reg    delta_weights3_46_we1_local;
reg    delta_weights3_46_ce1_local;
reg    delta_weights3_46_we0_local;
reg   [63:0] delta_weights3_46_d0_local;
reg    delta_weights3_46_ce0_local;
reg   [1:0] delta_weights3_46_address0_local;
reg    delta_weights3_47_we1_local;
reg    delta_weights3_47_ce1_local;
reg    delta_weights3_47_we0_local;
reg   [63:0] delta_weights3_47_d0_local;
reg    delta_weights3_47_ce0_local;
reg   [1:0] delta_weights3_47_address0_local;
reg    delta_weights3_48_we1_local;
reg    delta_weights3_48_ce1_local;
reg    delta_weights3_48_we0_local;
reg   [63:0] delta_weights3_48_d0_local;
reg    delta_weights3_48_ce0_local;
reg   [1:0] delta_weights3_48_address0_local;
reg    delta_weights3_49_we1_local;
reg    delta_weights3_49_ce1_local;
reg    delta_weights3_49_we0_local;
reg   [63:0] delta_weights3_49_d0_local;
reg    delta_weights3_49_ce0_local;
reg   [1:0] delta_weights3_49_address0_local;
reg    delta_weights3_50_we1_local;
reg    delta_weights3_50_ce1_local;
reg    delta_weights3_50_we0_local;
reg   [63:0] delta_weights3_50_d0_local;
reg    delta_weights3_50_ce0_local;
reg   [1:0] delta_weights3_50_address0_local;
reg    delta_weights3_51_we1_local;
reg    delta_weights3_51_ce1_local;
reg    delta_weights3_51_we0_local;
reg   [63:0] delta_weights3_51_d0_local;
reg    delta_weights3_51_ce0_local;
reg   [1:0] delta_weights3_51_address0_local;
reg    delta_weights3_52_we1_local;
reg    delta_weights3_52_ce1_local;
reg    delta_weights3_52_we0_local;
reg   [63:0] delta_weights3_52_d0_local;
reg    delta_weights3_52_ce0_local;
reg   [1:0] delta_weights3_52_address0_local;
reg    delta_weights3_53_we1_local;
reg    delta_weights3_53_ce1_local;
reg    delta_weights3_53_we0_local;
reg   [63:0] delta_weights3_53_d0_local;
reg    delta_weights3_53_ce0_local;
reg   [1:0] delta_weights3_53_address0_local;
reg    delta_weights3_54_we1_local;
reg    delta_weights3_54_ce1_local;
reg    delta_weights3_54_we0_local;
reg   [63:0] delta_weights3_54_d0_local;
reg    delta_weights3_54_ce0_local;
reg   [1:0] delta_weights3_54_address0_local;
reg    delta_weights3_55_we1_local;
reg    delta_weights3_55_ce1_local;
reg    delta_weights3_55_we0_local;
reg   [63:0] delta_weights3_55_d0_local;
reg    delta_weights3_55_ce0_local;
reg   [1:0] delta_weights3_55_address0_local;
reg    delta_weights3_56_we1_local;
reg    delta_weights3_56_ce1_local;
reg    delta_weights3_56_we0_local;
reg   [63:0] delta_weights3_56_d0_local;
reg    delta_weights3_56_ce0_local;
reg   [1:0] delta_weights3_56_address0_local;
reg    delta_weights3_57_we1_local;
reg    delta_weights3_57_ce1_local;
reg    delta_weights3_57_we0_local;
reg   [63:0] delta_weights3_57_d0_local;
reg    delta_weights3_57_ce0_local;
reg   [1:0] delta_weights3_57_address0_local;
reg    delta_weights3_58_we1_local;
reg    delta_weights3_58_ce1_local;
reg    delta_weights3_58_we0_local;
reg   [63:0] delta_weights3_58_d0_local;
reg    delta_weights3_58_ce0_local;
reg   [1:0] delta_weights3_58_address0_local;
reg    delta_weights3_59_we1_local;
reg    delta_weights3_59_ce1_local;
reg    delta_weights3_59_we0_local;
reg   [63:0] delta_weights3_59_d0_local;
reg    delta_weights3_59_ce0_local;
reg   [1:0] delta_weights3_59_address0_local;
reg    delta_weights3_60_we1_local;
reg    delta_weights3_60_ce1_local;
reg    delta_weights3_60_we0_local;
reg   [63:0] delta_weights3_60_d0_local;
reg    delta_weights3_60_ce0_local;
reg   [1:0] delta_weights3_60_address0_local;
reg    delta_weights3_61_we1_local;
reg    delta_weights3_61_ce1_local;
reg    delta_weights3_61_we0_local;
reg   [63:0] delta_weights3_61_d0_local;
reg    delta_weights3_61_ce0_local;
reg   [1:0] delta_weights3_61_address0_local;
reg    delta_weights3_62_we0_local;
reg   [63:0] delta_weights3_62_d0_local;
reg    delta_weights3_62_ce0_local;
reg   [1:0] delta_weights3_62_address0_local;
reg    delta_weights3_62_we1_local;
reg    delta_weights3_62_ce1_local;
reg    delta_weights3_63_we0_local;
reg   [63:0] delta_weights3_63_d0_local;
reg    delta_weights3_63_ce0_local;
reg   [1:0] delta_weights3_63_address0_local;
reg    delta_weights3_63_we1_local;
reg    delta_weights3_63_ce1_local;
reg   [63:0] grp_fu_2976_p0;
reg   [63:0] grp_fu_2982_p0;
reg   [63:0] grp_fu_2988_p0;
reg   [63:0] grp_fu_2994_p0;
reg   [63:0] grp_fu_3000_p0;
reg   [63:0] grp_fu_3006_p0;
reg   [63:0] grp_fu_3012_p0;
reg   [63:0] grp_fu_3018_p0;
reg   [63:0] grp_fu_3024_p0;
reg   [63:0] grp_fu_3030_p0;
reg   [63:0] grp_fu_3036_p0;
reg   [63:0] grp_fu_3042_p0;
reg   [63:0] grp_fu_3048_p0;
reg   [63:0] grp_fu_3054_p0;
reg   [63:0] grp_fu_3060_p0;
reg   [63:0] grp_fu_3066_p0;
reg   [63:0] grp_fu_3072_p0;
reg   [63:0] grp_fu_3078_p0;
reg   [63:0] grp_fu_3084_p0;
reg   [63:0] grp_fu_3090_p0;
reg   [63:0] grp_fu_3096_p0;
reg   [63:0] grp_fu_3102_p0;
reg   [63:0] grp_fu_3108_p0;
reg   [63:0] grp_fu_3114_p0;
reg   [63:0] grp_fu_3120_p0;
reg   [63:0] grp_fu_3126_p0;
reg   [63:0] grp_fu_3132_p0;
reg   [63:0] grp_fu_3138_p0;
reg   [63:0] grp_fu_3144_p0;
reg   [63:0] grp_fu_3150_p0;
reg   [63:0] grp_fu_3156_p0;
reg   [63:0] grp_fu_3162_p0;
reg   [63:0] grp_fu_3168_p0;
reg   [63:0] grp_fu_3174_p0;
reg   [63:0] grp_fu_3180_p0;
reg   [63:0] grp_fu_3186_p0;
reg   [63:0] grp_fu_3192_p0;
reg   [63:0] grp_fu_3198_p0;
reg   [63:0] grp_fu_3204_p0;
reg   [63:0] grp_fu_3210_p0;
reg   [63:0] grp_fu_3216_p0;
reg   [63:0] grp_fu_3222_p0;
reg   [63:0] grp_fu_3228_p0;
reg   [63:0] grp_fu_3234_p0;
reg   [63:0] grp_fu_3240_p0;
reg   [63:0] grp_fu_3246_p0;
reg   [63:0] grp_fu_3252_p0;
reg   [63:0] grp_fu_3258_p0;
reg   [63:0] grp_fu_3264_p0;
reg   [63:0] grp_fu_3270_p0;
reg   [63:0] grp_fu_3276_p0;
reg   [63:0] grp_fu_3282_p0;
reg   [63:0] grp_fu_3288_p0;
reg   [63:0] grp_fu_3294_p0;
reg   [63:0] grp_fu_3300_p0;
reg   [63:0] grp_fu_3306_p0;
reg   [63:0] grp_fu_3312_p0;
reg   [63:0] grp_fu_3318_p0;
reg   [63:0] grp_fu_3324_p0;
reg   [63:0] grp_fu_3330_p0;
reg   [63:0] grp_fu_3336_p0;
reg   [63:0] grp_fu_3342_p0;
reg   [63:0] grp_fu_3348_p0;
reg   [63:0] grp_fu_3354_p0;
reg   [63:0] grp_fu_3360_p0;
reg   [63:0] grp_fu_3366_p0;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_22_1_reg_4785 <= grp_fu_24255_p_dout0;
        mul_22_2_reg_4790 <= grp_fu_24259_p_dout0;
        mul_22_reg_4780 <= grp_fu_24251_p_dout0;
        mul_23_1_reg_4800 <= grp_fu_24267_p_dout0;
        mul_23_2_reg_4805 <= grp_fu_24271_p_dout0;
        mul_23_reg_4795 <= grp_fu_24263_p_dout0;
        mul_24_1_reg_4815 <= grp_fu_24279_p_dout0;
        mul_24_2_reg_4820 <= grp_fu_24283_p_dout0;
        mul_24_reg_4810 <= grp_fu_24275_p_dout0;
        mul_25_1_reg_4830 <= grp_fu_24291_p_dout0;
        mul_25_2_reg_4835 <= grp_fu_24295_p_dout0;
        mul_25_reg_4825 <= grp_fu_24287_p_dout0;
        mul_26_1_reg_4845 <= grp_fu_24303_p_dout0;
        mul_26_2_reg_4850 <= grp_fu_24307_p_dout0;
        mul_26_reg_4840 <= grp_fu_24299_p_dout0;
        mul_27_1_reg_4860 <= grp_fu_24315_p_dout0;
        mul_27_2_reg_4865 <= grp_fu_24319_p_dout0;
        mul_27_reg_4855 <= grp_fu_24311_p_dout0;
        mul_28_1_reg_4875 <= grp_fu_24327_p_dout0;
        mul_28_2_reg_4880 <= grp_fu_24331_p_dout0;
        mul_28_reg_4870 <= grp_fu_24323_p_dout0;
        mul_29_1_reg_4890 <= grp_fu_24339_p_dout0;
        mul_29_2_reg_4895 <= grp_fu_24343_p_dout0;
        mul_29_reg_4885 <= grp_fu_24335_p_dout0;
        mul_30_1_reg_4905 <= grp_fu_24351_p_dout0;
        mul_30_2_reg_4910 <= grp_fu_24355_p_dout0;
        mul_30_reg_4900 <= grp_fu_24347_p_dout0;
        mul_31_1_reg_4920 <= grp_fu_24363_p_dout0;
        mul_31_2_reg_4925 <= grp_fu_24367_p_dout0;
        mul_31_reg_4915 <= grp_fu_24359_p_dout0;
        mul_32_1_reg_4935 <= grp_fu_24375_p_dout0;
        mul_32_2_reg_4940 <= grp_fu_24379_p_dout0;
        mul_32_reg_4930 <= grp_fu_24371_p_dout0;
        mul_33_1_reg_4950 <= grp_fu_24387_p_dout0;
        mul_33_2_reg_4955 <= grp_fu_24391_p_dout0;
        mul_33_reg_4945 <= grp_fu_24383_p_dout0;
        mul_34_1_reg_4965 <= grp_fu_24399_p_dout0;
        mul_34_2_reg_4970 <= grp_fu_24403_p_dout0;
        mul_34_reg_4960 <= grp_fu_24395_p_dout0;
        mul_35_1_reg_4980 <= grp_fu_24411_p_dout0;
        mul_35_2_reg_4985 <= grp_fu_24415_p_dout0;
        mul_35_reg_4975 <= grp_fu_24407_p_dout0;
        mul_36_1_reg_4995 <= grp_fu_24423_p_dout0;
        mul_36_2_reg_5000 <= grp_fu_24427_p_dout0;
        mul_36_reg_4990 <= grp_fu_24419_p_dout0;
        mul_37_1_reg_5010 <= grp_fu_24435_p_dout0;
        mul_37_2_reg_5015 <= grp_fu_24439_p_dout0;
        mul_37_reg_5005 <= grp_fu_24431_p_dout0;
        mul_38_1_reg_5025 <= grp_fu_24447_p_dout0;
        mul_38_2_reg_5030 <= grp_fu_24451_p_dout0;
        mul_38_reg_5020 <= grp_fu_24443_p_dout0;
        mul_39_1_reg_5040 <= grp_fu_24459_p_dout0;
        mul_39_2_reg_5045 <= grp_fu_24463_p_dout0;
        mul_39_reg_5035 <= grp_fu_24455_p_dout0;
        mul_40_1_reg_5055 <= grp_fu_24471_p_dout0;
        mul_40_2_reg_5060 <= grp_fu_24475_p_dout0;
        mul_40_reg_5050 <= grp_fu_24467_p_dout0;
        mul_41_1_reg_5070 <= grp_fu_24483_p_dout0;
        mul_41_2_reg_5075 <= grp_fu_24487_p_dout0;
        mul_41_reg_5065 <= grp_fu_24479_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3798 <= grp_fu_23979_p_dout0;
        reg_3804 <= grp_fu_23983_p_dout0;
        reg_3810 <= grp_fu_23987_p_dout0;
        reg_3816 <= grp_fu_23991_p_dout0;
        reg_3822 <= grp_fu_23995_p_dout0;
        reg_3828 <= grp_fu_23999_p_dout0;
        reg_3834 <= grp_fu_24003_p_dout0;
        reg_3840 <= grp_fu_24007_p_dout0;
        reg_3846 <= grp_fu_24011_p_dout0;
        reg_3852 <= grp_fu_24015_p_dout0;
        reg_3858 <= grp_fu_24019_p_dout0;
        reg_3864 <= grp_fu_24023_p_dout0;
        reg_3870 <= grp_fu_24027_p_dout0;
        reg_3876 <= grp_fu_24031_p_dout0;
        reg_3882 <= grp_fu_24035_p_dout0;
        reg_3888 <= grp_fu_24039_p_dout0;
        reg_3894 <= grp_fu_24043_p_dout0;
        reg_3900 <= grp_fu_24047_p_dout0;
        reg_3906 <= grp_fu_24051_p_dout0;
        reg_3912 <= grp_fu_24055_p_dout0;
        reg_3918 <= grp_fu_24059_p_dout0;
        reg_3924 <= grp_fu_24063_p_dout0;
        reg_3930 <= grp_fu_24067_p_dout0;
        reg_3936 <= grp_fu_24071_p_dout0;
        reg_3942 <= grp_fu_24075_p_dout0;
        reg_3948 <= grp_fu_24079_p_dout0;
        reg_3954 <= grp_fu_24083_p_dout0;
        reg_3960 <= grp_fu_24087_p_dout0;
        reg_3966 <= grp_fu_24091_p_dout0;
        reg_3972 <= grp_fu_24095_p_dout0;
        reg_3978 <= grp_fu_24099_p_dout0;
        reg_3984 <= grp_fu_24103_p_dout0;
        reg_3990 <= grp_fu_24107_p_dout0;
        reg_3996 <= grp_fu_24111_p_dout0;
        reg_4002 <= grp_fu_24115_p_dout0;
        reg_4008 <= grp_fu_24119_p_dout0;
        reg_4014 <= grp_fu_24123_p_dout0;
        reg_4020 <= grp_fu_24127_p_dout0;
        reg_4026 <= grp_fu_24131_p_dout0;
        reg_4032 <= grp_fu_24135_p_dout0;
        reg_4038 <= grp_fu_24139_p_dout0;
        reg_4044 <= grp_fu_24143_p_dout0;
        reg_4050 <= grp_fu_24147_p_dout0;
        reg_4056 <= grp_fu_24151_p_dout0;
        reg_4062 <= grp_fu_24155_p_dout0;
        reg_4068 <= grp_fu_24159_p_dout0;
        reg_4074 <= grp_fu_24163_p_dout0;
        reg_4080 <= grp_fu_24167_p_dout0;
        reg_4086 <= grp_fu_24171_p_dout0;
        reg_4092 <= grp_fu_24175_p_dout0;
        reg_4098 <= grp_fu_24179_p_dout0;
        reg_4104 <= grp_fu_24183_p_dout0;
        reg_4110 <= grp_fu_24187_p_dout0;
        reg_4116 <= grp_fu_24191_p_dout0;
        reg_4122 <= grp_fu_24195_p_dout0;
        reg_4128 <= grp_fu_24199_p_dout0;
        reg_4134 <= grp_fu_24203_p_dout0;
        reg_4140 <= grp_fu_24207_p_dout0;
        reg_4146 <= grp_fu_24211_p_dout0;
        reg_4152 <= grp_fu_24215_p_dout0;
        reg_4158 <= grp_fu_24219_p_dout0;
        reg_4164 <= grp_fu_24223_p_dout0;
        reg_4170 <= grp_fu_24227_p_dout0;
        reg_4176 <= grp_fu_24231_p_dout0;
        reg_4182 <= grp_fu_24243_p_dout0;
        reg_4188 <= grp_fu_24247_p_dout0;
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
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_0_d0_local = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_d0_local = reg_4182;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_10_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_address0_local = 64'd1;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_10_d0_local = reg_3870;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_d0_local = mul_24_2_reg_4820;
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_11_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_address0_local = 64'd1;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_11_d0_local = reg_3876;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_d0_local = mul_25_reg_4825;
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_12_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_address0_local = 64'd1;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_12_d0_local = reg_3882;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_d0_local = mul_25_1_reg_4830;
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_13_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_address0_local = 64'd1;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_13_d0_local = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_d0_local = mul_25_2_reg_4835;
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_14_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_address0_local = 64'd1;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_14_d0_local = reg_3894;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_d0_local = mul_26_reg_4840;
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_15_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_address0_local = 64'd1;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_15_d0_local = reg_3900;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_d0_local = mul_26_1_reg_4845;
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_16_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_address0_local = 64'd1;
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_16_d0_local = reg_3906;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_d0_local = mul_26_2_reg_4850;
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_17_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_address0_local = 64'd1;
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_17_d0_local = reg_3912;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_d0_local = mul_27_reg_4855;
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_18_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_address0_local = 64'd1;
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_18_d0_local = reg_3918;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_d0_local = mul_27_1_reg_4860;
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_19_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_address0_local = 64'd1;
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_19_d0_local = reg_3924;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_d0_local = mul_27_2_reg_4865;
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_1_d0_local = reg_3816;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_d0_local = reg_4188;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_20_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_address0_local = 64'd1;
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_20_d0_local = reg_3930;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_d0_local = mul_28_reg_4870;
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_21_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_address0_local = 64'd1;
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_21_d0_local = reg_3936;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_d0_local = mul_28_1_reg_4875;
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_22_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_address0_local = 64'd1;
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_22_d0_local = reg_3942;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_d0_local = mul_28_2_reg_4880;
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_23_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_address0_local = 64'd1;
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_23_d0_local = reg_3948;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_d0_local = mul_29_reg_4885;
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_24_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_address0_local = 64'd1;
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_ce1_local = 1'b1;
    end else begin
        delta_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_24_d0_local = reg_3954;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_d0_local = mul_29_1_reg_4890;
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_we1_local = 1'b1;
    end else begin
        delta_weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_25_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_address0_local = 64'd1;
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_ce1_local = 1'b1;
    end else begin
        delta_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_25_d0_local = reg_3960;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_d0_local = mul_29_2_reg_4895;
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_we1_local = 1'b1;
    end else begin
        delta_weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_26_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_address0_local = 64'd1;
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_ce1_local = 1'b1;
    end else begin
        delta_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_26_d0_local = reg_3966;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_d0_local = mul_30_reg_4900;
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_we1_local = 1'b1;
    end else begin
        delta_weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_27_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_address0_local = 64'd1;
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_ce1_local = 1'b1;
    end else begin
        delta_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_27_d0_local = reg_3972;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_d0_local = mul_30_1_reg_4905;
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_we1_local = 1'b1;
    end else begin
        delta_weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_28_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_address0_local = 64'd1;
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_ce1_local = 1'b1;
    end else begin
        delta_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_28_d0_local = reg_3978;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_d0_local = mul_30_2_reg_4910;
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_we1_local = 1'b1;
    end else begin
        delta_weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_29_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_address0_local = 64'd1;
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_ce1_local = 1'b1;
    end else begin
        delta_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_29_d0_local = reg_3984;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_d0_local = mul_31_reg_4915;
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_we1_local = 1'b1;
    end else begin
        delta_weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_2_d0_local = reg_3822;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_d0_local = mul_22_reg_4780;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_30_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_address0_local = 64'd1;
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_ce1_local = 1'b1;
    end else begin
        delta_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_30_d0_local = reg_3990;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_d0_local = mul_31_1_reg_4920;
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_we1_local = 1'b1;
    end else begin
        delta_weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_31_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_address0_local = 64'd1;
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_ce1_local = 1'b1;
    end else begin
        delta_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_31_d0_local = reg_3996;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_d0_local = mul_31_2_reg_4925;
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_we1_local = 1'b1;
    end else begin
        delta_weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_32_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_32_address0_local = 64'd1;
    end else begin
        delta_weights3_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_32_ce0_local = 1'b1;
    end else begin
        delta_weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_32_ce1_local = 1'b1;
    end else begin
        delta_weights3_32_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_32_d0_local = reg_4002;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_32_d0_local = mul_32_reg_4930;
    end else begin
        delta_weights3_32_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_32_we0_local = 1'b1;
    end else begin
        delta_weights3_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_32_we1_local = 1'b1;
    end else begin
        delta_weights3_32_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_33_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_33_address0_local = 64'd1;
    end else begin
        delta_weights3_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_33_ce0_local = 1'b1;
    end else begin
        delta_weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_33_ce1_local = 1'b1;
    end else begin
        delta_weights3_33_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_33_d0_local = reg_4008;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_33_d0_local = mul_32_1_reg_4935;
    end else begin
        delta_weights3_33_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_33_we0_local = 1'b1;
    end else begin
        delta_weights3_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_33_we1_local = 1'b1;
    end else begin
        delta_weights3_33_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_34_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_34_address0_local = 64'd1;
    end else begin
        delta_weights3_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_34_ce0_local = 1'b1;
    end else begin
        delta_weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_34_ce1_local = 1'b1;
    end else begin
        delta_weights3_34_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_34_d0_local = reg_4014;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_34_d0_local = mul_32_2_reg_4940;
    end else begin
        delta_weights3_34_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_34_we0_local = 1'b1;
    end else begin
        delta_weights3_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_34_we1_local = 1'b1;
    end else begin
        delta_weights3_34_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_35_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_35_address0_local = 64'd1;
    end else begin
        delta_weights3_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_35_ce0_local = 1'b1;
    end else begin
        delta_weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_35_ce1_local = 1'b1;
    end else begin
        delta_weights3_35_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_35_d0_local = reg_4020;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_35_d0_local = mul_33_reg_4945;
    end else begin
        delta_weights3_35_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_35_we0_local = 1'b1;
    end else begin
        delta_weights3_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_35_we1_local = 1'b1;
    end else begin
        delta_weights3_35_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_36_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_36_address0_local = 64'd1;
    end else begin
        delta_weights3_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_36_ce0_local = 1'b1;
    end else begin
        delta_weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_36_ce1_local = 1'b1;
    end else begin
        delta_weights3_36_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_36_d0_local = reg_4026;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_36_d0_local = mul_33_1_reg_4950;
    end else begin
        delta_weights3_36_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_36_we0_local = 1'b1;
    end else begin
        delta_weights3_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_36_we1_local = 1'b1;
    end else begin
        delta_weights3_36_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_37_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_37_address0_local = 64'd1;
    end else begin
        delta_weights3_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_37_ce0_local = 1'b1;
    end else begin
        delta_weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_37_ce1_local = 1'b1;
    end else begin
        delta_weights3_37_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_37_d0_local = reg_4032;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_37_d0_local = mul_33_2_reg_4955;
    end else begin
        delta_weights3_37_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_37_we0_local = 1'b1;
    end else begin
        delta_weights3_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_37_we1_local = 1'b1;
    end else begin
        delta_weights3_37_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_38_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_38_address0_local = 64'd1;
    end else begin
        delta_weights3_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_38_ce0_local = 1'b1;
    end else begin
        delta_weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_38_ce1_local = 1'b1;
    end else begin
        delta_weights3_38_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_38_d0_local = reg_4038;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_38_d0_local = mul_34_reg_4960;
    end else begin
        delta_weights3_38_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_38_we0_local = 1'b1;
    end else begin
        delta_weights3_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_38_we1_local = 1'b1;
    end else begin
        delta_weights3_38_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_39_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_39_address0_local = 64'd1;
    end else begin
        delta_weights3_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_39_ce0_local = 1'b1;
    end else begin
        delta_weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_39_ce1_local = 1'b1;
    end else begin
        delta_weights3_39_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_39_d0_local = reg_4044;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_39_d0_local = mul_34_1_reg_4965;
    end else begin
        delta_weights3_39_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_39_we0_local = 1'b1;
    end else begin
        delta_weights3_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_39_we1_local = 1'b1;
    end else begin
        delta_weights3_39_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_3_d0_local = reg_3828;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_d0_local = mul_22_1_reg_4785;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_40_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_40_address0_local = 64'd1;
    end else begin
        delta_weights3_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_40_ce0_local = 1'b1;
    end else begin
        delta_weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_40_ce1_local = 1'b1;
    end else begin
        delta_weights3_40_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_40_d0_local = reg_4050;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_40_d0_local = mul_34_2_reg_4970;
    end else begin
        delta_weights3_40_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_40_we0_local = 1'b1;
    end else begin
        delta_weights3_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_40_we1_local = 1'b1;
    end else begin
        delta_weights3_40_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_41_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_41_address0_local = 64'd1;
    end else begin
        delta_weights3_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_41_ce0_local = 1'b1;
    end else begin
        delta_weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_41_ce1_local = 1'b1;
    end else begin
        delta_weights3_41_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_41_d0_local = reg_4056;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_41_d0_local = mul_35_reg_4975;
    end else begin
        delta_weights3_41_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_41_we0_local = 1'b1;
    end else begin
        delta_weights3_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_41_we1_local = 1'b1;
    end else begin
        delta_weights3_41_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_42_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_42_address0_local = 64'd1;
    end else begin
        delta_weights3_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_42_ce0_local = 1'b1;
    end else begin
        delta_weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_42_ce1_local = 1'b1;
    end else begin
        delta_weights3_42_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_42_d0_local = reg_4062;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_42_d0_local = mul_35_1_reg_4980;
    end else begin
        delta_weights3_42_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_42_we0_local = 1'b1;
    end else begin
        delta_weights3_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_42_we1_local = 1'b1;
    end else begin
        delta_weights3_42_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_43_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_43_address0_local = 64'd1;
    end else begin
        delta_weights3_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_43_ce0_local = 1'b1;
    end else begin
        delta_weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_43_ce1_local = 1'b1;
    end else begin
        delta_weights3_43_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_43_d0_local = reg_4068;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_43_d0_local = mul_35_2_reg_4985;
    end else begin
        delta_weights3_43_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_43_we0_local = 1'b1;
    end else begin
        delta_weights3_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_43_we1_local = 1'b1;
    end else begin
        delta_weights3_43_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_44_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_44_address0_local = 64'd1;
    end else begin
        delta_weights3_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_44_ce0_local = 1'b1;
    end else begin
        delta_weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_44_ce1_local = 1'b1;
    end else begin
        delta_weights3_44_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_44_d0_local = reg_4074;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_44_d0_local = mul_36_reg_4990;
    end else begin
        delta_weights3_44_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_44_we0_local = 1'b1;
    end else begin
        delta_weights3_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_44_we1_local = 1'b1;
    end else begin
        delta_weights3_44_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_45_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_45_address0_local = 64'd1;
    end else begin
        delta_weights3_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_45_ce0_local = 1'b1;
    end else begin
        delta_weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_45_ce1_local = 1'b1;
    end else begin
        delta_weights3_45_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_45_d0_local = reg_4080;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_45_d0_local = mul_36_1_reg_4995;
    end else begin
        delta_weights3_45_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_45_we0_local = 1'b1;
    end else begin
        delta_weights3_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_45_we1_local = 1'b1;
    end else begin
        delta_weights3_45_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_46_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_46_address0_local = 64'd1;
    end else begin
        delta_weights3_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_46_ce0_local = 1'b1;
    end else begin
        delta_weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_46_ce1_local = 1'b1;
    end else begin
        delta_weights3_46_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_46_d0_local = reg_4086;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_46_d0_local = mul_36_2_reg_5000;
    end else begin
        delta_weights3_46_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_46_we0_local = 1'b1;
    end else begin
        delta_weights3_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_46_we1_local = 1'b1;
    end else begin
        delta_weights3_46_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_47_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_47_address0_local = 64'd1;
    end else begin
        delta_weights3_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_47_ce0_local = 1'b1;
    end else begin
        delta_weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_47_ce1_local = 1'b1;
    end else begin
        delta_weights3_47_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_47_d0_local = reg_4092;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_47_d0_local = mul_37_reg_5005;
    end else begin
        delta_weights3_47_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_47_we0_local = 1'b1;
    end else begin
        delta_weights3_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_47_we1_local = 1'b1;
    end else begin
        delta_weights3_47_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_48_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_48_address0_local = 64'd1;
    end else begin
        delta_weights3_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_48_ce0_local = 1'b1;
    end else begin
        delta_weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_48_ce1_local = 1'b1;
    end else begin
        delta_weights3_48_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_48_d0_local = reg_4098;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_48_d0_local = mul_37_1_reg_5010;
    end else begin
        delta_weights3_48_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_48_we0_local = 1'b1;
    end else begin
        delta_weights3_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_48_we1_local = 1'b1;
    end else begin
        delta_weights3_48_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_49_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_49_address0_local = 64'd1;
    end else begin
        delta_weights3_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_49_ce0_local = 1'b1;
    end else begin
        delta_weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_49_ce1_local = 1'b1;
    end else begin
        delta_weights3_49_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_49_d0_local = reg_4104;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_49_d0_local = mul_37_2_reg_5015;
    end else begin
        delta_weights3_49_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_49_we0_local = 1'b1;
    end else begin
        delta_weights3_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_49_we1_local = 1'b1;
    end else begin
        delta_weights3_49_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_4_d0_local = reg_3834;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_d0_local = mul_22_2_reg_4790;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_50_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_50_address0_local = 64'd1;
    end else begin
        delta_weights3_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_50_ce0_local = 1'b1;
    end else begin
        delta_weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_50_ce1_local = 1'b1;
    end else begin
        delta_weights3_50_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_50_d0_local = reg_4110;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_50_d0_local = mul_38_reg_5020;
    end else begin
        delta_weights3_50_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_50_we0_local = 1'b1;
    end else begin
        delta_weights3_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_50_we1_local = 1'b1;
    end else begin
        delta_weights3_50_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_51_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_51_address0_local = 64'd1;
    end else begin
        delta_weights3_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_51_ce0_local = 1'b1;
    end else begin
        delta_weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_51_ce1_local = 1'b1;
    end else begin
        delta_weights3_51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_51_d0_local = reg_4116;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_51_d0_local = mul_38_1_reg_5025;
    end else begin
        delta_weights3_51_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_51_we0_local = 1'b1;
    end else begin
        delta_weights3_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_51_we1_local = 1'b1;
    end else begin
        delta_weights3_51_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_52_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_52_address0_local = 64'd1;
    end else begin
        delta_weights3_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_52_ce0_local = 1'b1;
    end else begin
        delta_weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_52_ce1_local = 1'b1;
    end else begin
        delta_weights3_52_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_52_d0_local = reg_4122;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_52_d0_local = mul_38_2_reg_5030;
    end else begin
        delta_weights3_52_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_52_we0_local = 1'b1;
    end else begin
        delta_weights3_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_52_we1_local = 1'b1;
    end else begin
        delta_weights3_52_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_53_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_53_address0_local = 64'd1;
    end else begin
        delta_weights3_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_53_ce0_local = 1'b1;
    end else begin
        delta_weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_53_ce1_local = 1'b1;
    end else begin
        delta_weights3_53_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_53_d0_local = reg_4128;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_53_d0_local = mul_39_reg_5035;
    end else begin
        delta_weights3_53_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_53_we0_local = 1'b1;
    end else begin
        delta_weights3_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_53_we1_local = 1'b1;
    end else begin
        delta_weights3_53_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_54_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_54_address0_local = 64'd1;
    end else begin
        delta_weights3_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_54_ce0_local = 1'b1;
    end else begin
        delta_weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_54_ce1_local = 1'b1;
    end else begin
        delta_weights3_54_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_54_d0_local = reg_4134;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_54_d0_local = mul_39_1_reg_5040;
    end else begin
        delta_weights3_54_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_54_we0_local = 1'b1;
    end else begin
        delta_weights3_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_54_we1_local = 1'b1;
    end else begin
        delta_weights3_54_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_55_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_55_address0_local = 64'd1;
    end else begin
        delta_weights3_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_55_ce0_local = 1'b1;
    end else begin
        delta_weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_55_ce1_local = 1'b1;
    end else begin
        delta_weights3_55_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_55_d0_local = reg_4140;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_55_d0_local = mul_39_2_reg_5045;
    end else begin
        delta_weights3_55_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_55_we0_local = 1'b1;
    end else begin
        delta_weights3_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_55_we1_local = 1'b1;
    end else begin
        delta_weights3_55_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_56_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_56_address0_local = 64'd1;
    end else begin
        delta_weights3_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_56_ce0_local = 1'b1;
    end else begin
        delta_weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_56_ce1_local = 1'b1;
    end else begin
        delta_weights3_56_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_56_d0_local = reg_4146;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_56_d0_local = mul_40_reg_5050;
    end else begin
        delta_weights3_56_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_56_we0_local = 1'b1;
    end else begin
        delta_weights3_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_56_we1_local = 1'b1;
    end else begin
        delta_weights3_56_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_57_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_57_address0_local = 64'd1;
    end else begin
        delta_weights3_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_57_ce0_local = 1'b1;
    end else begin
        delta_weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_57_ce1_local = 1'b1;
    end else begin
        delta_weights3_57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_57_d0_local = reg_4152;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_57_d0_local = mul_40_1_reg_5055;
    end else begin
        delta_weights3_57_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_57_we0_local = 1'b1;
    end else begin
        delta_weights3_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_57_we1_local = 1'b1;
    end else begin
        delta_weights3_57_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_58_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_58_address0_local = 64'd1;
    end else begin
        delta_weights3_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_58_ce0_local = 1'b1;
    end else begin
        delta_weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_58_ce1_local = 1'b1;
    end else begin
        delta_weights3_58_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_58_d0_local = reg_4158;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_58_d0_local = mul_40_2_reg_5060;
    end else begin
        delta_weights3_58_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_58_we0_local = 1'b1;
    end else begin
        delta_weights3_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_58_we1_local = 1'b1;
    end else begin
        delta_weights3_58_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_59_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_59_address0_local = 64'd1;
    end else begin
        delta_weights3_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_59_ce0_local = 1'b1;
    end else begin
        delta_weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_59_ce1_local = 1'b1;
    end else begin
        delta_weights3_59_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_59_d0_local = reg_4164;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_59_d0_local = mul_41_reg_5065;
    end else begin
        delta_weights3_59_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_59_we0_local = 1'b1;
    end else begin
        delta_weights3_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_59_we1_local = 1'b1;
    end else begin
        delta_weights3_59_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_5_d0_local = reg_3840;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_d0_local = mul_23_reg_4795;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_60_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_60_address0_local = 64'd1;
    end else begin
        delta_weights3_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_60_ce0_local = 1'b1;
    end else begin
        delta_weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_60_ce1_local = 1'b1;
    end else begin
        delta_weights3_60_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_60_d0_local = reg_4170;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_60_d0_local = mul_41_1_reg_5070;
    end else begin
        delta_weights3_60_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_60_we0_local = 1'b1;
    end else begin
        delta_weights3_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_60_we1_local = 1'b1;
    end else begin
        delta_weights3_60_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_61_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_61_address0_local = 64'd1;
    end else begin
        delta_weights3_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_61_ce0_local = 1'b1;
    end else begin
        delta_weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_61_ce1_local = 1'b1;
    end else begin
        delta_weights3_61_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_61_d0_local = reg_4176;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_61_d0_local = mul_41_2_reg_5075;
    end else begin
        delta_weights3_61_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_61_we0_local = 1'b1;
    end else begin
        delta_weights3_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_61_we1_local = 1'b1;
    end else begin
        delta_weights3_61_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_62_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_62_address0_local = 64'd0;
    end else begin
        delta_weights3_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_62_ce0_local = 1'b1;
    end else begin
        delta_weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_62_ce1_local = 1'b1;
    end else begin
        delta_weights3_62_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_62_d0_local = reg_4182;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_62_d0_local = reg_4170;
    end else begin
        delta_weights3_62_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_62_we0_local = 1'b1;
    end else begin
        delta_weights3_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_62_we1_local = 1'b1;
    end else begin
        delta_weights3_62_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_63_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_63_address0_local = 64'd0;
    end else begin
        delta_weights3_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_63_ce0_local = 1'b1;
    end else begin
        delta_weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_63_ce1_local = 1'b1;
    end else begin
        delta_weights3_63_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_63_d0_local = reg_4188;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_63_d0_local = reg_4176;
    end else begin
        delta_weights3_63_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_63_we0_local = 1'b1;
    end else begin
        delta_weights3_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_63_we1_local = 1'b1;
    end else begin
        delta_weights3_63_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_6_d0_local = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_d0_local = mul_23_1_reg_4800;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_7_d0_local = reg_3852;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_d0_local = mul_23_2_reg_4805;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_8_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_address0_local = 64'd1;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_8_d0_local = reg_3858;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_d0_local = mul_24_reg_4810;
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_9_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_address0_local = 64'd1;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_9_d0_local = reg_3864;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_d0_local = mul_24_1_reg_4815;
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2976_p0 = last_activations_42_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2976_p0 = last_activations_0_val;
    end else begin
        grp_fu_2976_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2982_p0 = last_activations_42_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2982_p0 = last_activations_0_val;
    end else begin
        grp_fu_2982_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2988_p0 = last_activations_42_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2988_p0 = last_activations_0_val;
    end else begin
        grp_fu_2988_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2994_p0 = last_activations_43_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2994_p0 = last_activations_1_val;
    end else begin
        grp_fu_2994_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3000_p0 = last_activations_43_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3000_p0 = last_activations_1_val;
    end else begin
        grp_fu_3000_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3006_p0 = last_activations_43_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3006_p0 = last_activations_1_val;
    end else begin
        grp_fu_3006_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3012_p0 = last_activations_44_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3012_p0 = last_activations_2_val;
    end else begin
        grp_fu_3012_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3018_p0 = last_activations_44_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3018_p0 = last_activations_2_val;
    end else begin
        grp_fu_3018_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3024_p0 = last_activations_44_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3024_p0 = last_activations_2_val;
    end else begin
        grp_fu_3024_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3030_p0 = last_activations_45_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3030_p0 = last_activations_3_val;
    end else begin
        grp_fu_3030_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3036_p0 = last_activations_45_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3036_p0 = last_activations_3_val;
    end else begin
        grp_fu_3036_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3042_p0 = last_activations_45_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3042_p0 = last_activations_3_val;
    end else begin
        grp_fu_3042_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3048_p0 = last_activations_46_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3048_p0 = last_activations_4_val;
    end else begin
        grp_fu_3048_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3054_p0 = last_activations_46_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3054_p0 = last_activations_4_val;
    end else begin
        grp_fu_3054_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3060_p0 = last_activations_46_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3060_p0 = last_activations_4_val;
    end else begin
        grp_fu_3060_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3066_p0 = last_activations_47_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3066_p0 = last_activations_5_val;
    end else begin
        grp_fu_3066_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3072_p0 = last_activations_47_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3072_p0 = last_activations_5_val;
    end else begin
        grp_fu_3072_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3078_p0 = last_activations_47_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3078_p0 = last_activations_5_val;
    end else begin
        grp_fu_3078_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3084_p0 = last_activations_48_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3084_p0 = last_activations_6_val;
    end else begin
        grp_fu_3084_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3090_p0 = last_activations_48_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3090_p0 = last_activations_6_val;
    end else begin
        grp_fu_3090_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3096_p0 = last_activations_48_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3096_p0 = last_activations_6_val;
    end else begin
        grp_fu_3096_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3102_p0 = last_activations_49_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3102_p0 = last_activations_7_val;
    end else begin
        grp_fu_3102_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3108_p0 = last_activations_49_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3108_p0 = last_activations_7_val;
    end else begin
        grp_fu_3108_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3114_p0 = last_activations_49_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3114_p0 = last_activations_7_val;
    end else begin
        grp_fu_3114_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3120_p0 = last_activations_50_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3120_p0 = last_activations_8_val;
    end else begin
        grp_fu_3120_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3126_p0 = last_activations_50_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3126_p0 = last_activations_8_val;
    end else begin
        grp_fu_3126_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3132_p0 = last_activations_50_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3132_p0 = last_activations_8_val;
    end else begin
        grp_fu_3132_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3138_p0 = last_activations_51_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3138_p0 = last_activations_9_val;
    end else begin
        grp_fu_3138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3144_p0 = last_activations_51_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3144_p0 = last_activations_9_val;
    end else begin
        grp_fu_3144_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3150_p0 = last_activations_51_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3150_p0 = last_activations_9_val;
    end else begin
        grp_fu_3150_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3156_p0 = last_activations_52_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3156_p0 = last_activations_10_val;
    end else begin
        grp_fu_3156_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3162_p0 = last_activations_52_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3162_p0 = last_activations_10_val;
    end else begin
        grp_fu_3162_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3168_p0 = last_activations_52_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3168_p0 = last_activations_10_val;
    end else begin
        grp_fu_3168_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3174_p0 = last_activations_53_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3174_p0 = last_activations_11_val;
    end else begin
        grp_fu_3174_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3180_p0 = last_activations_53_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3180_p0 = last_activations_11_val;
    end else begin
        grp_fu_3180_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3186_p0 = last_activations_53_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3186_p0 = last_activations_11_val;
    end else begin
        grp_fu_3186_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3192_p0 = last_activations_54_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3192_p0 = last_activations_12_val;
    end else begin
        grp_fu_3192_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3198_p0 = last_activations_54_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3198_p0 = last_activations_12_val;
    end else begin
        grp_fu_3198_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3204_p0 = last_activations_54_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3204_p0 = last_activations_12_val;
    end else begin
        grp_fu_3204_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3210_p0 = last_activations_55_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3210_p0 = last_activations_13_val;
    end else begin
        grp_fu_3210_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3216_p0 = last_activations_55_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3216_p0 = last_activations_13_val;
    end else begin
        grp_fu_3216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3222_p0 = last_activations_55_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3222_p0 = last_activations_13_val;
    end else begin
        grp_fu_3222_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3228_p0 = last_activations_56_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3228_p0 = last_activations_14_val;
    end else begin
        grp_fu_3228_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3234_p0 = last_activations_56_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3234_p0 = last_activations_14_val;
    end else begin
        grp_fu_3234_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3240_p0 = last_activations_56_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3240_p0 = last_activations_14_val;
    end else begin
        grp_fu_3240_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3246_p0 = last_activations_57_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3246_p0 = last_activations_15_val;
    end else begin
        grp_fu_3246_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3252_p0 = last_activations_57_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3252_p0 = last_activations_15_val;
    end else begin
        grp_fu_3252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3258_p0 = last_activations_57_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3258_p0 = last_activations_15_val;
    end else begin
        grp_fu_3258_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3264_p0 = last_activations_58_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3264_p0 = last_activations_16_val;
    end else begin
        grp_fu_3264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3270_p0 = last_activations_58_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3270_p0 = last_activations_16_val;
    end else begin
        grp_fu_3270_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3276_p0 = last_activations_58_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3276_p0 = last_activations_16_val;
    end else begin
        grp_fu_3276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3282_p0 = last_activations_59_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3282_p0 = last_activations_17_val;
    end else begin
        grp_fu_3282_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3288_p0 = last_activations_59_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3288_p0 = last_activations_17_val;
    end else begin
        grp_fu_3288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3294_p0 = last_activations_59_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3294_p0 = last_activations_17_val;
    end else begin
        grp_fu_3294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3300_p0 = last_activations_60_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3300_p0 = last_activations_18_val;
    end else begin
        grp_fu_3300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3306_p0 = last_activations_60_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3306_p0 = last_activations_18_val;
    end else begin
        grp_fu_3306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3312_p0 = last_activations_60_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3312_p0 = last_activations_18_val;
    end else begin
        grp_fu_3312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3318_p0 = last_activations_61_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3318_p0 = last_activations_19_val;
    end else begin
        grp_fu_3318_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3324_p0 = last_activations_61_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3324_p0 = last_activations_19_val;
    end else begin
        grp_fu_3324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3330_p0 = last_activations_61_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3330_p0 = last_activations_19_val;
    end else begin
        grp_fu_3330_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3336_p0 = last_activations_62_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3336_p0 = last_activations_20_val;
    end else begin
        grp_fu_3336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3342_p0 = last_activations_62_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3342_p0 = last_activations_20_val;
    end else begin
        grp_fu_3342_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3348_p0 = last_activations_62_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3348_p0 = last_activations_20_val;
    end else begin
        grp_fu_3348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3354_p0 = last_activations_63_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3354_p0 = last_activations_21_val;
    end else begin
        grp_fu_3354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3360_p0 = last_activations_63_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3360_p0 = last_activations_21_val;
    end else begin
        grp_fu_3360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3366_p0 = last_activations_63_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3366_p0 = last_activations_21_val;
    end else begin
        grp_fu_3366_p0 = 'bx;
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
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = 64'd0;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = reg_3798;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = 64'd0;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_d1 = reg_3858;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_address1 = 64'd0;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_d1 = reg_3864;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = 64'd0;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_d1 = reg_3870;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = 64'd0;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_d1 = reg_3876;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = 64'd0;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_d1 = reg_3882;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_address1 = 64'd0;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_d1 = reg_3888;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_address1 = 64'd0;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = delta_weights3_16_d0_local;
assign delta_weights3_16_d1 = reg_3894;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_address1 = 64'd0;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = delta_weights3_17_d0_local;
assign delta_weights3_17_d1 = reg_3900;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_address1 = 64'd0;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = delta_weights3_18_d0_local;
assign delta_weights3_18_d1 = reg_3906;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_address1 = 64'd0;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = delta_weights3_19_d0_local;
assign delta_weights3_19_d1 = reg_3912;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = 64'd0;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = reg_3804;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_address1 = 64'd0;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = delta_weights3_20_d0_local;
assign delta_weights3_20_d1 = reg_3918;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_address1 = 64'd0;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = delta_weights3_21_d0_local;
assign delta_weights3_21_d1 = reg_3924;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_address1 = 64'd0;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = delta_weights3_22_d0_local;
assign delta_weights3_22_d1 = reg_3930;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_address1 = 64'd0;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = delta_weights3_23_d0_local;
assign delta_weights3_23_d1 = reg_3936;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_address1 = 64'd0;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_ce1 = delta_weights3_24_ce1_local;
assign delta_weights3_24_d0 = delta_weights3_24_d0_local;
assign delta_weights3_24_d1 = reg_3942;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_24_we1 = delta_weights3_24_we1_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_address1 = 64'd0;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_ce1 = delta_weights3_25_ce1_local;
assign delta_weights3_25_d0 = delta_weights3_25_d0_local;
assign delta_weights3_25_d1 = reg_3948;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_25_we1 = delta_weights3_25_we1_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_address1 = 64'd0;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_ce1 = delta_weights3_26_ce1_local;
assign delta_weights3_26_d0 = delta_weights3_26_d0_local;
assign delta_weights3_26_d1 = reg_3954;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_26_we1 = delta_weights3_26_we1_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_address1 = 64'd0;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_ce1 = delta_weights3_27_ce1_local;
assign delta_weights3_27_d0 = delta_weights3_27_d0_local;
assign delta_weights3_27_d1 = reg_3960;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_27_we1 = delta_weights3_27_we1_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_address1 = 64'd0;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_ce1 = delta_weights3_28_ce1_local;
assign delta_weights3_28_d0 = delta_weights3_28_d0_local;
assign delta_weights3_28_d1 = reg_3966;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_28_we1 = delta_weights3_28_we1_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_address1 = 64'd0;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_ce1 = delta_weights3_29_ce1_local;
assign delta_weights3_29_d0 = delta_weights3_29_d0_local;
assign delta_weights3_29_d1 = reg_3972;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_29_we1 = delta_weights3_29_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = 64'd0;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = reg_3810;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_address1 = 64'd0;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_ce1 = delta_weights3_30_ce1_local;
assign delta_weights3_30_d0 = delta_weights3_30_d0_local;
assign delta_weights3_30_d1 = reg_3978;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_30_we1 = delta_weights3_30_we1_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_address1 = 64'd0;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_ce1 = delta_weights3_31_ce1_local;
assign delta_weights3_31_d0 = delta_weights3_31_d0_local;
assign delta_weights3_31_d1 = reg_3984;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_31_we1 = delta_weights3_31_we1_local;
assign delta_weights3_32_address0 = delta_weights3_32_address0_local;
assign delta_weights3_32_address1 = 64'd0;
assign delta_weights3_32_ce0 = delta_weights3_32_ce0_local;
assign delta_weights3_32_ce1 = delta_weights3_32_ce1_local;
assign delta_weights3_32_d0 = delta_weights3_32_d0_local;
assign delta_weights3_32_d1 = reg_3990;
assign delta_weights3_32_we0 = delta_weights3_32_we0_local;
assign delta_weights3_32_we1 = delta_weights3_32_we1_local;
assign delta_weights3_33_address0 = delta_weights3_33_address0_local;
assign delta_weights3_33_address1 = 64'd0;
assign delta_weights3_33_ce0 = delta_weights3_33_ce0_local;
assign delta_weights3_33_ce1 = delta_weights3_33_ce1_local;
assign delta_weights3_33_d0 = delta_weights3_33_d0_local;
assign delta_weights3_33_d1 = reg_3996;
assign delta_weights3_33_we0 = delta_weights3_33_we0_local;
assign delta_weights3_33_we1 = delta_weights3_33_we1_local;
assign delta_weights3_34_address0 = delta_weights3_34_address0_local;
assign delta_weights3_34_address1 = 64'd0;
assign delta_weights3_34_ce0 = delta_weights3_34_ce0_local;
assign delta_weights3_34_ce1 = delta_weights3_34_ce1_local;
assign delta_weights3_34_d0 = delta_weights3_34_d0_local;
assign delta_weights3_34_d1 = reg_4002;
assign delta_weights3_34_we0 = delta_weights3_34_we0_local;
assign delta_weights3_34_we1 = delta_weights3_34_we1_local;
assign delta_weights3_35_address0 = delta_weights3_35_address0_local;
assign delta_weights3_35_address1 = 64'd0;
assign delta_weights3_35_ce0 = delta_weights3_35_ce0_local;
assign delta_weights3_35_ce1 = delta_weights3_35_ce1_local;
assign delta_weights3_35_d0 = delta_weights3_35_d0_local;
assign delta_weights3_35_d1 = reg_4008;
assign delta_weights3_35_we0 = delta_weights3_35_we0_local;
assign delta_weights3_35_we1 = delta_weights3_35_we1_local;
assign delta_weights3_36_address0 = delta_weights3_36_address0_local;
assign delta_weights3_36_address1 = 64'd0;
assign delta_weights3_36_ce0 = delta_weights3_36_ce0_local;
assign delta_weights3_36_ce1 = delta_weights3_36_ce1_local;
assign delta_weights3_36_d0 = delta_weights3_36_d0_local;
assign delta_weights3_36_d1 = reg_4014;
assign delta_weights3_36_we0 = delta_weights3_36_we0_local;
assign delta_weights3_36_we1 = delta_weights3_36_we1_local;
assign delta_weights3_37_address0 = delta_weights3_37_address0_local;
assign delta_weights3_37_address1 = 64'd0;
assign delta_weights3_37_ce0 = delta_weights3_37_ce0_local;
assign delta_weights3_37_ce1 = delta_weights3_37_ce1_local;
assign delta_weights3_37_d0 = delta_weights3_37_d0_local;
assign delta_weights3_37_d1 = reg_4020;
assign delta_weights3_37_we0 = delta_weights3_37_we0_local;
assign delta_weights3_37_we1 = delta_weights3_37_we1_local;
assign delta_weights3_38_address0 = delta_weights3_38_address0_local;
assign delta_weights3_38_address1 = 64'd0;
assign delta_weights3_38_ce0 = delta_weights3_38_ce0_local;
assign delta_weights3_38_ce1 = delta_weights3_38_ce1_local;
assign delta_weights3_38_d0 = delta_weights3_38_d0_local;
assign delta_weights3_38_d1 = reg_4026;
assign delta_weights3_38_we0 = delta_weights3_38_we0_local;
assign delta_weights3_38_we1 = delta_weights3_38_we1_local;
assign delta_weights3_39_address0 = delta_weights3_39_address0_local;
assign delta_weights3_39_address1 = 64'd0;
assign delta_weights3_39_ce0 = delta_weights3_39_ce0_local;
assign delta_weights3_39_ce1 = delta_weights3_39_ce1_local;
assign delta_weights3_39_d0 = delta_weights3_39_d0_local;
assign delta_weights3_39_d1 = reg_4032;
assign delta_weights3_39_we0 = delta_weights3_39_we0_local;
assign delta_weights3_39_we1 = delta_weights3_39_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = 64'd0;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = reg_3816;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_40_address0 = delta_weights3_40_address0_local;
assign delta_weights3_40_address1 = 64'd0;
assign delta_weights3_40_ce0 = delta_weights3_40_ce0_local;
assign delta_weights3_40_ce1 = delta_weights3_40_ce1_local;
assign delta_weights3_40_d0 = delta_weights3_40_d0_local;
assign delta_weights3_40_d1 = reg_4038;
assign delta_weights3_40_we0 = delta_weights3_40_we0_local;
assign delta_weights3_40_we1 = delta_weights3_40_we1_local;
assign delta_weights3_41_address0 = delta_weights3_41_address0_local;
assign delta_weights3_41_address1 = 64'd0;
assign delta_weights3_41_ce0 = delta_weights3_41_ce0_local;
assign delta_weights3_41_ce1 = delta_weights3_41_ce1_local;
assign delta_weights3_41_d0 = delta_weights3_41_d0_local;
assign delta_weights3_41_d1 = reg_4044;
assign delta_weights3_41_we0 = delta_weights3_41_we0_local;
assign delta_weights3_41_we1 = delta_weights3_41_we1_local;
assign delta_weights3_42_address0 = delta_weights3_42_address0_local;
assign delta_weights3_42_address1 = 64'd0;
assign delta_weights3_42_ce0 = delta_weights3_42_ce0_local;
assign delta_weights3_42_ce1 = delta_weights3_42_ce1_local;
assign delta_weights3_42_d0 = delta_weights3_42_d0_local;
assign delta_weights3_42_d1 = reg_4050;
assign delta_weights3_42_we0 = delta_weights3_42_we0_local;
assign delta_weights3_42_we1 = delta_weights3_42_we1_local;
assign delta_weights3_43_address0 = delta_weights3_43_address0_local;
assign delta_weights3_43_address1 = 64'd0;
assign delta_weights3_43_ce0 = delta_weights3_43_ce0_local;
assign delta_weights3_43_ce1 = delta_weights3_43_ce1_local;
assign delta_weights3_43_d0 = delta_weights3_43_d0_local;
assign delta_weights3_43_d1 = reg_4056;
assign delta_weights3_43_we0 = delta_weights3_43_we0_local;
assign delta_weights3_43_we1 = delta_weights3_43_we1_local;
assign delta_weights3_44_address0 = delta_weights3_44_address0_local;
assign delta_weights3_44_address1 = 64'd0;
assign delta_weights3_44_ce0 = delta_weights3_44_ce0_local;
assign delta_weights3_44_ce1 = delta_weights3_44_ce1_local;
assign delta_weights3_44_d0 = delta_weights3_44_d0_local;
assign delta_weights3_44_d1 = reg_4062;
assign delta_weights3_44_we0 = delta_weights3_44_we0_local;
assign delta_weights3_44_we1 = delta_weights3_44_we1_local;
assign delta_weights3_45_address0 = delta_weights3_45_address0_local;
assign delta_weights3_45_address1 = 64'd0;
assign delta_weights3_45_ce0 = delta_weights3_45_ce0_local;
assign delta_weights3_45_ce1 = delta_weights3_45_ce1_local;
assign delta_weights3_45_d0 = delta_weights3_45_d0_local;
assign delta_weights3_45_d1 = reg_4068;
assign delta_weights3_45_we0 = delta_weights3_45_we0_local;
assign delta_weights3_45_we1 = delta_weights3_45_we1_local;
assign delta_weights3_46_address0 = delta_weights3_46_address0_local;
assign delta_weights3_46_address1 = 64'd0;
assign delta_weights3_46_ce0 = delta_weights3_46_ce0_local;
assign delta_weights3_46_ce1 = delta_weights3_46_ce1_local;
assign delta_weights3_46_d0 = delta_weights3_46_d0_local;
assign delta_weights3_46_d1 = reg_4074;
assign delta_weights3_46_we0 = delta_weights3_46_we0_local;
assign delta_weights3_46_we1 = delta_weights3_46_we1_local;
assign delta_weights3_47_address0 = delta_weights3_47_address0_local;
assign delta_weights3_47_address1 = 64'd0;
assign delta_weights3_47_ce0 = delta_weights3_47_ce0_local;
assign delta_weights3_47_ce1 = delta_weights3_47_ce1_local;
assign delta_weights3_47_d0 = delta_weights3_47_d0_local;
assign delta_weights3_47_d1 = reg_4080;
assign delta_weights3_47_we0 = delta_weights3_47_we0_local;
assign delta_weights3_47_we1 = delta_weights3_47_we1_local;
assign delta_weights3_48_address0 = delta_weights3_48_address0_local;
assign delta_weights3_48_address1 = 64'd0;
assign delta_weights3_48_ce0 = delta_weights3_48_ce0_local;
assign delta_weights3_48_ce1 = delta_weights3_48_ce1_local;
assign delta_weights3_48_d0 = delta_weights3_48_d0_local;
assign delta_weights3_48_d1 = reg_4086;
assign delta_weights3_48_we0 = delta_weights3_48_we0_local;
assign delta_weights3_48_we1 = delta_weights3_48_we1_local;
assign delta_weights3_49_address0 = delta_weights3_49_address0_local;
assign delta_weights3_49_address1 = 64'd0;
assign delta_weights3_49_ce0 = delta_weights3_49_ce0_local;
assign delta_weights3_49_ce1 = delta_weights3_49_ce1_local;
assign delta_weights3_49_d0 = delta_weights3_49_d0_local;
assign delta_weights3_49_d1 = reg_4092;
assign delta_weights3_49_we0 = delta_weights3_49_we0_local;
assign delta_weights3_49_we1 = delta_weights3_49_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = 64'd0;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = reg_3822;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_50_address0 = delta_weights3_50_address0_local;
assign delta_weights3_50_address1 = 64'd0;
assign delta_weights3_50_ce0 = delta_weights3_50_ce0_local;
assign delta_weights3_50_ce1 = delta_weights3_50_ce1_local;
assign delta_weights3_50_d0 = delta_weights3_50_d0_local;
assign delta_weights3_50_d1 = reg_4098;
assign delta_weights3_50_we0 = delta_weights3_50_we0_local;
assign delta_weights3_50_we1 = delta_weights3_50_we1_local;
assign delta_weights3_51_address0 = delta_weights3_51_address0_local;
assign delta_weights3_51_address1 = 64'd0;
assign delta_weights3_51_ce0 = delta_weights3_51_ce0_local;
assign delta_weights3_51_ce1 = delta_weights3_51_ce1_local;
assign delta_weights3_51_d0 = delta_weights3_51_d0_local;
assign delta_weights3_51_d1 = reg_4104;
assign delta_weights3_51_we0 = delta_weights3_51_we0_local;
assign delta_weights3_51_we1 = delta_weights3_51_we1_local;
assign delta_weights3_52_address0 = delta_weights3_52_address0_local;
assign delta_weights3_52_address1 = 64'd0;
assign delta_weights3_52_ce0 = delta_weights3_52_ce0_local;
assign delta_weights3_52_ce1 = delta_weights3_52_ce1_local;
assign delta_weights3_52_d0 = delta_weights3_52_d0_local;
assign delta_weights3_52_d1 = reg_4110;
assign delta_weights3_52_we0 = delta_weights3_52_we0_local;
assign delta_weights3_52_we1 = delta_weights3_52_we1_local;
assign delta_weights3_53_address0 = delta_weights3_53_address0_local;
assign delta_weights3_53_address1 = 64'd0;
assign delta_weights3_53_ce0 = delta_weights3_53_ce0_local;
assign delta_weights3_53_ce1 = delta_weights3_53_ce1_local;
assign delta_weights3_53_d0 = delta_weights3_53_d0_local;
assign delta_weights3_53_d1 = reg_4116;
assign delta_weights3_53_we0 = delta_weights3_53_we0_local;
assign delta_weights3_53_we1 = delta_weights3_53_we1_local;
assign delta_weights3_54_address0 = delta_weights3_54_address0_local;
assign delta_weights3_54_address1 = 64'd0;
assign delta_weights3_54_ce0 = delta_weights3_54_ce0_local;
assign delta_weights3_54_ce1 = delta_weights3_54_ce1_local;
assign delta_weights3_54_d0 = delta_weights3_54_d0_local;
assign delta_weights3_54_d1 = reg_4122;
assign delta_weights3_54_we0 = delta_weights3_54_we0_local;
assign delta_weights3_54_we1 = delta_weights3_54_we1_local;
assign delta_weights3_55_address0 = delta_weights3_55_address0_local;
assign delta_weights3_55_address1 = 64'd0;
assign delta_weights3_55_ce0 = delta_weights3_55_ce0_local;
assign delta_weights3_55_ce1 = delta_weights3_55_ce1_local;
assign delta_weights3_55_d0 = delta_weights3_55_d0_local;
assign delta_weights3_55_d1 = reg_4128;
assign delta_weights3_55_we0 = delta_weights3_55_we0_local;
assign delta_weights3_55_we1 = delta_weights3_55_we1_local;
assign delta_weights3_56_address0 = delta_weights3_56_address0_local;
assign delta_weights3_56_address1 = 64'd0;
assign delta_weights3_56_ce0 = delta_weights3_56_ce0_local;
assign delta_weights3_56_ce1 = delta_weights3_56_ce1_local;
assign delta_weights3_56_d0 = delta_weights3_56_d0_local;
assign delta_weights3_56_d1 = reg_4134;
assign delta_weights3_56_we0 = delta_weights3_56_we0_local;
assign delta_weights3_56_we1 = delta_weights3_56_we1_local;
assign delta_weights3_57_address0 = delta_weights3_57_address0_local;
assign delta_weights3_57_address1 = 64'd0;
assign delta_weights3_57_ce0 = delta_weights3_57_ce0_local;
assign delta_weights3_57_ce1 = delta_weights3_57_ce1_local;
assign delta_weights3_57_d0 = delta_weights3_57_d0_local;
assign delta_weights3_57_d1 = reg_4140;
assign delta_weights3_57_we0 = delta_weights3_57_we0_local;
assign delta_weights3_57_we1 = delta_weights3_57_we1_local;
assign delta_weights3_58_address0 = delta_weights3_58_address0_local;
assign delta_weights3_58_address1 = 64'd0;
assign delta_weights3_58_ce0 = delta_weights3_58_ce0_local;
assign delta_weights3_58_ce1 = delta_weights3_58_ce1_local;
assign delta_weights3_58_d0 = delta_weights3_58_d0_local;
assign delta_weights3_58_d1 = reg_4146;
assign delta_weights3_58_we0 = delta_weights3_58_we0_local;
assign delta_weights3_58_we1 = delta_weights3_58_we1_local;
assign delta_weights3_59_address0 = delta_weights3_59_address0_local;
assign delta_weights3_59_address1 = 64'd0;
assign delta_weights3_59_ce0 = delta_weights3_59_ce0_local;
assign delta_weights3_59_ce1 = delta_weights3_59_ce1_local;
assign delta_weights3_59_d0 = delta_weights3_59_d0_local;
assign delta_weights3_59_d1 = reg_4152;
assign delta_weights3_59_we0 = delta_weights3_59_we0_local;
assign delta_weights3_59_we1 = delta_weights3_59_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = 64'd0;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = reg_3828;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_60_address0 = delta_weights3_60_address0_local;
assign delta_weights3_60_address1 = 64'd0;
assign delta_weights3_60_ce0 = delta_weights3_60_ce0_local;
assign delta_weights3_60_ce1 = delta_weights3_60_ce1_local;
assign delta_weights3_60_d0 = delta_weights3_60_d0_local;
assign delta_weights3_60_d1 = reg_4158;
assign delta_weights3_60_we0 = delta_weights3_60_we0_local;
assign delta_weights3_60_we1 = delta_weights3_60_we1_local;
assign delta_weights3_61_address0 = delta_weights3_61_address0_local;
assign delta_weights3_61_address1 = 64'd0;
assign delta_weights3_61_ce0 = delta_weights3_61_ce0_local;
assign delta_weights3_61_ce1 = delta_weights3_61_ce1_local;
assign delta_weights3_61_d0 = delta_weights3_61_d0_local;
assign delta_weights3_61_d1 = reg_4164;
assign delta_weights3_61_we0 = delta_weights3_61_we0_local;
assign delta_weights3_61_we1 = delta_weights3_61_we1_local;
assign delta_weights3_62_address0 = delta_weights3_62_address0_local;
assign delta_weights3_62_address1 = 64'd1;
assign delta_weights3_62_ce0 = delta_weights3_62_ce0_local;
assign delta_weights3_62_ce1 = delta_weights3_62_ce1_local;
assign delta_weights3_62_d0 = delta_weights3_62_d0_local;
assign delta_weights3_62_d1 = reg_3798;
assign delta_weights3_62_we0 = delta_weights3_62_we0_local;
assign delta_weights3_62_we1 = delta_weights3_62_we1_local;
assign delta_weights3_63_address0 = delta_weights3_63_address0_local;
assign delta_weights3_63_address1 = 64'd1;
assign delta_weights3_63_ce0 = delta_weights3_63_ce0_local;
assign delta_weights3_63_ce1 = delta_weights3_63_ce1_local;
assign delta_weights3_63_d0 = delta_weights3_63_d0_local;
assign delta_weights3_63_d1 = reg_3804;
assign delta_weights3_63_we0 = delta_weights3_63_we0_local;
assign delta_weights3_63_we1 = delta_weights3_63_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = 64'd0;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = reg_3834;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = 64'd0;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_d1 = reg_3840;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = 64'd0;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_d1 = reg_3846;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = 64'd0;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_d1 = reg_3852;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign grp_fu_23979_p_ce = 1'b1;
assign grp_fu_23979_p_din0 = grp_fu_2976_p0;
assign grp_fu_23979_p_din1 = output_difference_0_0_val;
assign grp_fu_23983_p_ce = 1'b1;
assign grp_fu_23983_p_din0 = grp_fu_2982_p0;
assign grp_fu_23983_p_din1 = output_difference_0_1_val;
assign grp_fu_23987_p_ce = 1'b1;
assign grp_fu_23987_p_din0 = grp_fu_2988_p0;
assign grp_fu_23987_p_din1 = output_difference_0_2_val;
assign grp_fu_23991_p_ce = 1'b1;
assign grp_fu_23991_p_din0 = grp_fu_2994_p0;
assign grp_fu_23991_p_din1 = output_difference_0_0_val;
assign grp_fu_23995_p_ce = 1'b1;
assign grp_fu_23995_p_din0 = grp_fu_3000_p0;
assign grp_fu_23995_p_din1 = output_difference_0_1_val;
assign grp_fu_23999_p_ce = 1'b1;
assign grp_fu_23999_p_din0 = grp_fu_3006_p0;
assign grp_fu_23999_p_din1 = output_difference_0_2_val;
assign grp_fu_24003_p_ce = 1'b1;
assign grp_fu_24003_p_din0 = grp_fu_3012_p0;
assign grp_fu_24003_p_din1 = output_difference_0_0_val;
assign grp_fu_24007_p_ce = 1'b1;
assign grp_fu_24007_p_din0 = grp_fu_3018_p0;
assign grp_fu_24007_p_din1 = output_difference_0_1_val;
assign grp_fu_24011_p_ce = 1'b1;
assign grp_fu_24011_p_din0 = grp_fu_3024_p0;
assign grp_fu_24011_p_din1 = output_difference_0_2_val;
assign grp_fu_24015_p_ce = 1'b1;
assign grp_fu_24015_p_din0 = grp_fu_3030_p0;
assign grp_fu_24015_p_din1 = output_difference_0_0_val;
assign grp_fu_24019_p_ce = 1'b1;
assign grp_fu_24019_p_din0 = grp_fu_3036_p0;
assign grp_fu_24019_p_din1 = output_difference_0_1_val;
assign grp_fu_24023_p_ce = 1'b1;
assign grp_fu_24023_p_din0 = grp_fu_3042_p0;
assign grp_fu_24023_p_din1 = output_difference_0_2_val;
assign grp_fu_24027_p_ce = 1'b1;
assign grp_fu_24027_p_din0 = grp_fu_3048_p0;
assign grp_fu_24027_p_din1 = output_difference_0_0_val;
assign grp_fu_24031_p_ce = 1'b1;
assign grp_fu_24031_p_din0 = grp_fu_3054_p0;
assign grp_fu_24031_p_din1 = output_difference_0_1_val;
assign grp_fu_24035_p_ce = 1'b1;
assign grp_fu_24035_p_din0 = grp_fu_3060_p0;
assign grp_fu_24035_p_din1 = output_difference_0_2_val;
assign grp_fu_24039_p_ce = 1'b1;
assign grp_fu_24039_p_din0 = grp_fu_3066_p0;
assign grp_fu_24039_p_din1 = output_difference_0_0_val;
assign grp_fu_24043_p_ce = 1'b1;
assign grp_fu_24043_p_din0 = grp_fu_3072_p0;
assign grp_fu_24043_p_din1 = output_difference_0_1_val;
assign grp_fu_24047_p_ce = 1'b1;
assign grp_fu_24047_p_din0 = grp_fu_3078_p0;
assign grp_fu_24047_p_din1 = output_difference_0_2_val;
assign grp_fu_24051_p_ce = 1'b1;
assign grp_fu_24051_p_din0 = grp_fu_3084_p0;
assign grp_fu_24051_p_din1 = output_difference_0_0_val;
assign grp_fu_24055_p_ce = 1'b1;
assign grp_fu_24055_p_din0 = grp_fu_3090_p0;
assign grp_fu_24055_p_din1 = output_difference_0_1_val;
assign grp_fu_24059_p_ce = 1'b1;
assign grp_fu_24059_p_din0 = grp_fu_3096_p0;
assign grp_fu_24059_p_din1 = output_difference_0_2_val;
assign grp_fu_24063_p_ce = 1'b1;
assign grp_fu_24063_p_din0 = grp_fu_3102_p0;
assign grp_fu_24063_p_din1 = output_difference_0_0_val;
assign grp_fu_24067_p_ce = 1'b1;
assign grp_fu_24067_p_din0 = grp_fu_3108_p0;
assign grp_fu_24067_p_din1 = output_difference_0_1_val;
assign grp_fu_24071_p_ce = 1'b1;
assign grp_fu_24071_p_din0 = grp_fu_3114_p0;
assign grp_fu_24071_p_din1 = output_difference_0_2_val;
assign grp_fu_24075_p_ce = 1'b1;
assign grp_fu_24075_p_din0 = grp_fu_3120_p0;
assign grp_fu_24075_p_din1 = output_difference_0_0_val;
assign grp_fu_24079_p_ce = 1'b1;
assign grp_fu_24079_p_din0 = grp_fu_3126_p0;
assign grp_fu_24079_p_din1 = output_difference_0_1_val;
assign grp_fu_24083_p_ce = 1'b1;
assign grp_fu_24083_p_din0 = grp_fu_3132_p0;
assign grp_fu_24083_p_din1 = output_difference_0_2_val;
assign grp_fu_24087_p_ce = 1'b1;
assign grp_fu_24087_p_din0 = grp_fu_3138_p0;
assign grp_fu_24087_p_din1 = output_difference_0_0_val;
assign grp_fu_24091_p_ce = 1'b1;
assign grp_fu_24091_p_din0 = grp_fu_3144_p0;
assign grp_fu_24091_p_din1 = output_difference_0_1_val;
assign grp_fu_24095_p_ce = 1'b1;
assign grp_fu_24095_p_din0 = grp_fu_3150_p0;
assign grp_fu_24095_p_din1 = output_difference_0_2_val;
assign grp_fu_24099_p_ce = 1'b1;
assign grp_fu_24099_p_din0 = grp_fu_3156_p0;
assign grp_fu_24099_p_din1 = output_difference_0_0_val;
assign grp_fu_24103_p_ce = 1'b1;
assign grp_fu_24103_p_din0 = grp_fu_3162_p0;
assign grp_fu_24103_p_din1 = output_difference_0_1_val;
assign grp_fu_24107_p_ce = 1'b1;
assign grp_fu_24107_p_din0 = grp_fu_3168_p0;
assign grp_fu_24107_p_din1 = output_difference_0_2_val;
assign grp_fu_24111_p_ce = 1'b1;
assign grp_fu_24111_p_din0 = grp_fu_3174_p0;
assign grp_fu_24111_p_din1 = output_difference_0_0_val;
assign grp_fu_24115_p_ce = 1'b1;
assign grp_fu_24115_p_din0 = grp_fu_3180_p0;
assign grp_fu_24115_p_din1 = output_difference_0_1_val;
assign grp_fu_24119_p_ce = 1'b1;
assign grp_fu_24119_p_din0 = grp_fu_3186_p0;
assign grp_fu_24119_p_din1 = output_difference_0_2_val;
assign grp_fu_24123_p_ce = 1'b1;
assign grp_fu_24123_p_din0 = grp_fu_3192_p0;
assign grp_fu_24123_p_din1 = output_difference_0_0_val;
assign grp_fu_24127_p_ce = 1'b1;
assign grp_fu_24127_p_din0 = grp_fu_3198_p0;
assign grp_fu_24127_p_din1 = output_difference_0_1_val;
assign grp_fu_24131_p_ce = 1'b1;
assign grp_fu_24131_p_din0 = grp_fu_3204_p0;
assign grp_fu_24131_p_din1 = output_difference_0_2_val;
assign grp_fu_24135_p_ce = 1'b1;
assign grp_fu_24135_p_din0 = grp_fu_3210_p0;
assign grp_fu_24135_p_din1 = output_difference_0_0_val;
assign grp_fu_24139_p_ce = 1'b1;
assign grp_fu_24139_p_din0 = grp_fu_3216_p0;
assign grp_fu_24139_p_din1 = output_difference_0_1_val;
assign grp_fu_24143_p_ce = 1'b1;
assign grp_fu_24143_p_din0 = grp_fu_3222_p0;
assign grp_fu_24143_p_din1 = output_difference_0_2_val;
assign grp_fu_24147_p_ce = 1'b1;
assign grp_fu_24147_p_din0 = grp_fu_3228_p0;
assign grp_fu_24147_p_din1 = output_difference_0_0_val;
assign grp_fu_24151_p_ce = 1'b1;
assign grp_fu_24151_p_din0 = grp_fu_3234_p0;
assign grp_fu_24151_p_din1 = output_difference_0_1_val;
assign grp_fu_24155_p_ce = 1'b1;
assign grp_fu_24155_p_din0 = grp_fu_3240_p0;
assign grp_fu_24155_p_din1 = output_difference_0_2_val;
assign grp_fu_24159_p_ce = 1'b1;
assign grp_fu_24159_p_din0 = grp_fu_3246_p0;
assign grp_fu_24159_p_din1 = output_difference_0_0_val;
assign grp_fu_24163_p_ce = 1'b1;
assign grp_fu_24163_p_din0 = grp_fu_3252_p0;
assign grp_fu_24163_p_din1 = output_difference_0_1_val;
assign grp_fu_24167_p_ce = 1'b1;
assign grp_fu_24167_p_din0 = grp_fu_3258_p0;
assign grp_fu_24167_p_din1 = output_difference_0_2_val;
assign grp_fu_24171_p_ce = 1'b1;
assign grp_fu_24171_p_din0 = grp_fu_3264_p0;
assign grp_fu_24171_p_din1 = output_difference_0_0_val;
assign grp_fu_24175_p_ce = 1'b1;
assign grp_fu_24175_p_din0 = grp_fu_3270_p0;
assign grp_fu_24175_p_din1 = output_difference_0_1_val;
assign grp_fu_24179_p_ce = 1'b1;
assign grp_fu_24179_p_din0 = grp_fu_3276_p0;
assign grp_fu_24179_p_din1 = output_difference_0_2_val;
assign grp_fu_24183_p_ce = 1'b1;
assign grp_fu_24183_p_din0 = grp_fu_3282_p0;
assign grp_fu_24183_p_din1 = output_difference_0_0_val;
assign grp_fu_24187_p_ce = 1'b1;
assign grp_fu_24187_p_din0 = grp_fu_3288_p0;
assign grp_fu_24187_p_din1 = output_difference_0_1_val;
assign grp_fu_24191_p_ce = 1'b1;
assign grp_fu_24191_p_din0 = grp_fu_3294_p0;
assign grp_fu_24191_p_din1 = output_difference_0_2_val;
assign grp_fu_24195_p_ce = 1'b1;
assign grp_fu_24195_p_din0 = grp_fu_3300_p0;
assign grp_fu_24195_p_din1 = output_difference_0_0_val;
assign grp_fu_24199_p_ce = 1'b1;
assign grp_fu_24199_p_din0 = grp_fu_3306_p0;
assign grp_fu_24199_p_din1 = output_difference_0_1_val;
assign grp_fu_24203_p_ce = 1'b1;
assign grp_fu_24203_p_din0 = grp_fu_3312_p0;
assign grp_fu_24203_p_din1 = output_difference_0_2_val;
assign grp_fu_24207_p_ce = 1'b1;
assign grp_fu_24207_p_din0 = grp_fu_3318_p0;
assign grp_fu_24207_p_din1 = output_difference_0_0_val;
assign grp_fu_24211_p_ce = 1'b1;
assign grp_fu_24211_p_din0 = grp_fu_3324_p0;
assign grp_fu_24211_p_din1 = output_difference_0_1_val;
assign grp_fu_24215_p_ce = 1'b1;
assign grp_fu_24215_p_din0 = grp_fu_3330_p0;
assign grp_fu_24215_p_din1 = output_difference_0_2_val;
assign grp_fu_24219_p_ce = 1'b1;
assign grp_fu_24219_p_din0 = grp_fu_3336_p0;
assign grp_fu_24219_p_din1 = output_difference_0_0_val;
assign grp_fu_24223_p_ce = 1'b1;
assign grp_fu_24223_p_din0 = grp_fu_3342_p0;
assign grp_fu_24223_p_din1 = output_difference_0_1_val;
assign grp_fu_24227_p_ce = 1'b1;
assign grp_fu_24227_p_din0 = grp_fu_3348_p0;
assign grp_fu_24227_p_din1 = output_difference_0_2_val;
assign grp_fu_24231_p_ce = 1'b1;
assign grp_fu_24231_p_din0 = grp_fu_3354_p0;
assign grp_fu_24231_p_din1 = output_difference_0_0_val;
assign grp_fu_24243_p_ce = 1'b1;
assign grp_fu_24243_p_din0 = grp_fu_3360_p0;
assign grp_fu_24243_p_din1 = output_difference_0_1_val;
assign grp_fu_24247_p_ce = 1'b1;
assign grp_fu_24247_p_din0 = grp_fu_3366_p0;
assign grp_fu_24247_p_din1 = output_difference_0_2_val;
assign grp_fu_24251_p_ce = 1'b1;
assign grp_fu_24251_p_din0 = last_activations_22_val;
assign grp_fu_24251_p_din1 = output_difference_0_0_val;
assign grp_fu_24255_p_ce = 1'b1;
assign grp_fu_24255_p_din0 = last_activations_22_val;
assign grp_fu_24255_p_din1 = output_difference_0_1_val;
assign grp_fu_24259_p_ce = 1'b1;
assign grp_fu_24259_p_din0 = last_activations_22_val;
assign grp_fu_24259_p_din1 = output_difference_0_2_val;
assign grp_fu_24263_p_ce = 1'b1;
assign grp_fu_24263_p_din0 = last_activations_23_val;
assign grp_fu_24263_p_din1 = output_difference_0_0_val;
assign grp_fu_24267_p_ce = 1'b1;
assign grp_fu_24267_p_din0 = last_activations_23_val;
assign grp_fu_24267_p_din1 = output_difference_0_1_val;
assign grp_fu_24271_p_ce = 1'b1;
assign grp_fu_24271_p_din0 = last_activations_23_val;
assign grp_fu_24271_p_din1 = output_difference_0_2_val;
assign grp_fu_24275_p_ce = 1'b1;
assign grp_fu_24275_p_din0 = last_activations_24_val;
assign grp_fu_24275_p_din1 = output_difference_0_0_val;
assign grp_fu_24279_p_ce = 1'b1;
assign grp_fu_24279_p_din0 = last_activations_24_val;
assign grp_fu_24279_p_din1 = output_difference_0_1_val;
assign grp_fu_24283_p_ce = 1'b1;
assign grp_fu_24283_p_din0 = last_activations_24_val;
assign grp_fu_24283_p_din1 = output_difference_0_2_val;
assign grp_fu_24287_p_ce = 1'b1;
assign grp_fu_24287_p_din0 = last_activations_25_val;
assign grp_fu_24287_p_din1 = output_difference_0_0_val;
assign grp_fu_24291_p_ce = 1'b1;
assign grp_fu_24291_p_din0 = last_activations_25_val;
assign grp_fu_24291_p_din1 = output_difference_0_1_val;
assign grp_fu_24295_p_ce = 1'b1;
assign grp_fu_24295_p_din0 = last_activations_25_val;
assign grp_fu_24295_p_din1 = output_difference_0_2_val;
assign grp_fu_24299_p_ce = 1'b1;
assign grp_fu_24299_p_din0 = last_activations_26_val;
assign grp_fu_24299_p_din1 = output_difference_0_0_val;
assign grp_fu_24303_p_ce = 1'b1;
assign grp_fu_24303_p_din0 = last_activations_26_val;
assign grp_fu_24303_p_din1 = output_difference_0_1_val;
assign grp_fu_24307_p_ce = 1'b1;
assign grp_fu_24307_p_din0 = last_activations_26_val;
assign grp_fu_24307_p_din1 = output_difference_0_2_val;
assign grp_fu_24311_p_ce = 1'b1;
assign grp_fu_24311_p_din0 = last_activations_27_val;
assign grp_fu_24311_p_din1 = output_difference_0_0_val;
assign grp_fu_24315_p_ce = 1'b1;
assign grp_fu_24315_p_din0 = last_activations_27_val;
assign grp_fu_24315_p_din1 = output_difference_0_1_val;
assign grp_fu_24319_p_ce = 1'b1;
assign grp_fu_24319_p_din0 = last_activations_27_val;
assign grp_fu_24319_p_din1 = output_difference_0_2_val;
assign grp_fu_24323_p_ce = 1'b1;
assign grp_fu_24323_p_din0 = last_activations_28_val;
assign grp_fu_24323_p_din1 = output_difference_0_0_val;
assign grp_fu_24327_p_ce = 1'b1;
assign grp_fu_24327_p_din0 = last_activations_28_val;
assign grp_fu_24327_p_din1 = output_difference_0_1_val;
assign grp_fu_24331_p_ce = 1'b1;
assign grp_fu_24331_p_din0 = last_activations_28_val;
assign grp_fu_24331_p_din1 = output_difference_0_2_val;
assign grp_fu_24335_p_ce = 1'b1;
assign grp_fu_24335_p_din0 = last_activations_29_val;
assign grp_fu_24335_p_din1 = output_difference_0_0_val;
assign grp_fu_24339_p_ce = 1'b1;
assign grp_fu_24339_p_din0 = last_activations_29_val;
assign grp_fu_24339_p_din1 = output_difference_0_1_val;
assign grp_fu_24343_p_ce = 1'b1;
assign grp_fu_24343_p_din0 = last_activations_29_val;
assign grp_fu_24343_p_din1 = output_difference_0_2_val;
assign grp_fu_24347_p_ce = 1'b1;
assign grp_fu_24347_p_din0 = last_activations_30_val;
assign grp_fu_24347_p_din1 = output_difference_0_0_val;
assign grp_fu_24351_p_ce = 1'b1;
assign grp_fu_24351_p_din0 = last_activations_30_val;
assign grp_fu_24351_p_din1 = output_difference_0_1_val;
assign grp_fu_24355_p_ce = 1'b1;
assign grp_fu_24355_p_din0 = last_activations_30_val;
assign grp_fu_24355_p_din1 = output_difference_0_2_val;
assign grp_fu_24359_p_ce = 1'b1;
assign grp_fu_24359_p_din0 = last_activations_31_val;
assign grp_fu_24359_p_din1 = output_difference_0_0_val;
assign grp_fu_24363_p_ce = 1'b1;
assign grp_fu_24363_p_din0 = last_activations_31_val;
assign grp_fu_24363_p_din1 = output_difference_0_1_val;
assign grp_fu_24367_p_ce = 1'b1;
assign grp_fu_24367_p_din0 = last_activations_31_val;
assign grp_fu_24367_p_din1 = output_difference_0_2_val;
assign grp_fu_24371_p_ce = 1'b1;
assign grp_fu_24371_p_din0 = last_activations_32_val;
assign grp_fu_24371_p_din1 = output_difference_0_0_val;
assign grp_fu_24375_p_ce = 1'b1;
assign grp_fu_24375_p_din0 = last_activations_32_val;
assign grp_fu_24375_p_din1 = output_difference_0_1_val;
assign grp_fu_24379_p_ce = 1'b1;
assign grp_fu_24379_p_din0 = last_activations_32_val;
assign grp_fu_24379_p_din1 = output_difference_0_2_val;
assign grp_fu_24383_p_ce = 1'b1;
assign grp_fu_24383_p_din0 = last_activations_33_val;
assign grp_fu_24383_p_din1 = output_difference_0_0_val;
assign grp_fu_24387_p_ce = 1'b1;
assign grp_fu_24387_p_din0 = last_activations_33_val;
assign grp_fu_24387_p_din1 = output_difference_0_1_val;
assign grp_fu_24391_p_ce = 1'b1;
assign grp_fu_24391_p_din0 = last_activations_33_val;
assign grp_fu_24391_p_din1 = output_difference_0_2_val;
assign grp_fu_24395_p_ce = 1'b1;
assign grp_fu_24395_p_din0 = last_activations_34_val;
assign grp_fu_24395_p_din1 = output_difference_0_0_val;
assign grp_fu_24399_p_ce = 1'b1;
assign grp_fu_24399_p_din0 = last_activations_34_val;
assign grp_fu_24399_p_din1 = output_difference_0_1_val;
assign grp_fu_24403_p_ce = 1'b1;
assign grp_fu_24403_p_din0 = last_activations_34_val;
assign grp_fu_24403_p_din1 = output_difference_0_2_val;
assign grp_fu_24407_p_ce = 1'b1;
assign grp_fu_24407_p_din0 = last_activations_35_val;
assign grp_fu_24407_p_din1 = output_difference_0_0_val;
assign grp_fu_24411_p_ce = 1'b1;
assign grp_fu_24411_p_din0 = last_activations_35_val;
assign grp_fu_24411_p_din1 = output_difference_0_1_val;
assign grp_fu_24415_p_ce = 1'b1;
assign grp_fu_24415_p_din0 = last_activations_35_val;
assign grp_fu_24415_p_din1 = output_difference_0_2_val;
assign grp_fu_24419_p_ce = 1'b1;
assign grp_fu_24419_p_din0 = last_activations_36_val;
assign grp_fu_24419_p_din1 = output_difference_0_0_val;
assign grp_fu_24423_p_ce = 1'b1;
assign grp_fu_24423_p_din0 = last_activations_36_val;
assign grp_fu_24423_p_din1 = output_difference_0_1_val;
assign grp_fu_24427_p_ce = 1'b1;
assign grp_fu_24427_p_din0 = last_activations_36_val;
assign grp_fu_24427_p_din1 = output_difference_0_2_val;
assign grp_fu_24431_p_ce = 1'b1;
assign grp_fu_24431_p_din0 = last_activations_37_val;
assign grp_fu_24431_p_din1 = output_difference_0_0_val;
assign grp_fu_24435_p_ce = 1'b1;
assign grp_fu_24435_p_din0 = last_activations_37_val;
assign grp_fu_24435_p_din1 = output_difference_0_1_val;
assign grp_fu_24439_p_ce = 1'b1;
assign grp_fu_24439_p_din0 = last_activations_37_val;
assign grp_fu_24439_p_din1 = output_difference_0_2_val;
assign grp_fu_24443_p_ce = 1'b1;
assign grp_fu_24443_p_din0 = last_activations_38_val;
assign grp_fu_24443_p_din1 = output_difference_0_0_val;
assign grp_fu_24447_p_ce = 1'b1;
assign grp_fu_24447_p_din0 = last_activations_38_val;
assign grp_fu_24447_p_din1 = output_difference_0_1_val;
assign grp_fu_24451_p_ce = 1'b1;
assign grp_fu_24451_p_din0 = last_activations_38_val;
assign grp_fu_24451_p_din1 = output_difference_0_2_val;
assign grp_fu_24455_p_ce = 1'b1;
assign grp_fu_24455_p_din0 = last_activations_39_val;
assign grp_fu_24455_p_din1 = output_difference_0_0_val;
assign grp_fu_24459_p_ce = 1'b1;
assign grp_fu_24459_p_din0 = last_activations_39_val;
assign grp_fu_24459_p_din1 = output_difference_0_1_val;
assign grp_fu_24463_p_ce = 1'b1;
assign grp_fu_24463_p_din0 = last_activations_39_val;
assign grp_fu_24463_p_din1 = output_difference_0_2_val;
assign grp_fu_24467_p_ce = 1'b1;
assign grp_fu_24467_p_din0 = last_activations_40_val;
assign grp_fu_24467_p_din1 = output_difference_0_0_val;
assign grp_fu_24471_p_ce = 1'b1;
assign grp_fu_24471_p_din0 = last_activations_40_val;
assign grp_fu_24471_p_din1 = output_difference_0_1_val;
assign grp_fu_24475_p_ce = 1'b1;
assign grp_fu_24475_p_din0 = last_activations_40_val;
assign grp_fu_24475_p_din1 = output_difference_0_2_val;
assign grp_fu_24479_p_ce = 1'b1;
assign grp_fu_24479_p_din0 = last_activations_41_val;
assign grp_fu_24479_p_din1 = output_difference_0_0_val;
assign grp_fu_24483_p_ce = 1'b1;
assign grp_fu_24483_p_din0 = last_activations_41_val;
assign grp_fu_24483_p_din1 = output_difference_0_1_val;
assign grp_fu_24487_p_ce = 1'b1;
assign grp_fu_24487_p_din0 = last_activations_41_val;
assign grp_fu_24487_p_din1 = output_difference_0_2_val;
endmodule 