module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_24_address1,delta_weights3_24_ce1,delta_weights3_24_we1,delta_weights3_24_d1,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_25_address1,delta_weights3_25_ce1,delta_weights3_25_we1,delta_weights3_25_d1,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_26_address1,delta_weights3_26_ce1,delta_weights3_26_we1,delta_weights3_26_d1,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_27_address1,delta_weights3_27_ce1,delta_weights3_27_we1,delta_weights3_27_d1,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_28_address1,delta_weights3_28_ce1,delta_weights3_28_we1,delta_weights3_28_d1,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_29_address1,delta_weights3_29_ce1,delta_weights3_29_we1,delta_weights3_29_d1,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_30_address1,delta_weights3_30_ce1,delta_weights3_30_we1,delta_weights3_30_d1,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_31_address1,delta_weights3_31_ce1,delta_weights3_31_we1,delta_weights3_31_d1,delta_weights3_32_address0,delta_weights3_32_ce0,delta_weights3_32_we0,delta_weights3_32_d0,delta_weights3_32_address1,delta_weights3_32_ce1,delta_weights3_32_we1,delta_weights3_32_d1,delta_weights3_33_address0,delta_weights3_33_ce0,delta_weights3_33_we0,delta_weights3_33_d0,delta_weights3_33_address1,delta_weights3_33_ce1,delta_weights3_33_we1,delta_weights3_33_d1,delta_weights3_34_address0,delta_weights3_34_ce0,delta_weights3_34_we0,delta_weights3_34_d0,delta_weights3_34_address1,delta_weights3_34_ce1,delta_weights3_34_we1,delta_weights3_34_d1,delta_weights3_35_address0,delta_weights3_35_ce0,delta_weights3_35_we0,delta_weights3_35_d0,delta_weights3_35_address1,delta_weights3_35_ce1,delta_weights3_35_we1,delta_weights3_35_d1,delta_weights3_36_address0,delta_weights3_36_ce0,delta_weights3_36_we0,delta_weights3_36_d0,delta_weights3_36_address1,delta_weights3_36_ce1,delta_weights3_36_we1,delta_weights3_36_d1,delta_weights3_37_address0,delta_weights3_37_ce0,delta_weights3_37_we0,delta_weights3_37_d0,delta_weights3_37_address1,delta_weights3_37_ce1,delta_weights3_37_we1,delta_weights3_37_d1,delta_weights3_38_address0,delta_weights3_38_ce0,delta_weights3_38_we0,delta_weights3_38_d0,delta_weights3_38_address1,delta_weights3_38_ce1,delta_weights3_38_we1,delta_weights3_38_d1,delta_weights3_39_address0,delta_weights3_39_ce0,delta_weights3_39_we0,delta_weights3_39_d0,delta_weights3_39_address1,delta_weights3_39_ce1,delta_weights3_39_we1,delta_weights3_39_d1,delta_weights3_40_address0,delta_weights3_40_ce0,delta_weights3_40_we0,delta_weights3_40_d0,delta_weights3_40_address1,delta_weights3_40_ce1,delta_weights3_40_we1,delta_weights3_40_d1,delta_weights3_41_address0,delta_weights3_41_ce0,delta_weights3_41_we0,delta_weights3_41_d0,delta_weights3_41_address1,delta_weights3_41_ce1,delta_weights3_41_we1,delta_weights3_41_d1,delta_weights3_42_address0,delta_weights3_42_ce0,delta_weights3_42_we0,delta_weights3_42_d0,delta_weights3_42_address1,delta_weights3_42_ce1,delta_weights3_42_we1,delta_weights3_42_d1,delta_weights3_43_address0,delta_weights3_43_ce0,delta_weights3_43_we0,delta_weights3_43_d0,delta_weights3_43_address1,delta_weights3_43_ce1,delta_weights3_43_we1,delta_weights3_43_d1,delta_weights3_44_address0,delta_weights3_44_ce0,delta_weights3_44_we0,delta_weights3_44_d0,delta_weights3_44_address1,delta_weights3_44_ce1,delta_weights3_44_we1,delta_weights3_44_d1,delta_weights3_45_address0,delta_weights3_45_ce0,delta_weights3_45_we0,delta_weights3_45_d0,delta_weights3_45_address1,delta_weights3_45_ce1,delta_weights3_45_we1,delta_weights3_45_d1,delta_weights3_46_address0,delta_weights3_46_ce0,delta_weights3_46_we0,delta_weights3_46_d0,delta_weights3_46_address1,delta_weights3_46_ce1,delta_weights3_46_we1,delta_weights3_46_d1,delta_weights3_47_address0,delta_weights3_47_ce0,delta_weights3_47_we0,delta_weights3_47_d0,delta_weights3_47_address1,delta_weights3_47_ce1,delta_weights3_47_we1,delta_weights3_47_d1,delta_weights3_48_address0,delta_weights3_48_ce0,delta_weights3_48_we0,delta_weights3_48_d0,delta_weights3_48_address1,delta_weights3_48_ce1,delta_weights3_48_we1,delta_weights3_48_d1,delta_weights3_49_address0,delta_weights3_49_ce0,delta_weights3_49_we0,delta_weights3_49_d0,delta_weights3_49_address1,delta_weights3_49_ce1,delta_weights3_49_we1,delta_weights3_49_d1,delta_weights3_50_address0,delta_weights3_50_ce0,delta_weights3_50_we0,delta_weights3_50_d0,delta_weights3_50_address1,delta_weights3_50_ce1,delta_weights3_50_we1,delta_weights3_50_d1,delta_weights3_51_address0,delta_weights3_51_ce0,delta_weights3_51_we0,delta_weights3_51_d0,delta_weights3_51_address1,delta_weights3_51_ce1,delta_weights3_51_we1,delta_weights3_51_d1,delta_weights3_52_address0,delta_weights3_52_ce0,delta_weights3_52_we0,delta_weights3_52_d0,delta_weights3_52_address1,delta_weights3_52_ce1,delta_weights3_52_we1,delta_weights3_52_d1,delta_weights3_53_address0,delta_weights3_53_ce0,delta_weights3_53_we0,delta_weights3_53_d0,delta_weights3_53_address1,delta_weights3_53_ce1,delta_weights3_53_we1,delta_weights3_53_d1,delta_weights3_54_address0,delta_weights3_54_ce0,delta_weights3_54_we0,delta_weights3_54_d0,delta_weights3_54_address1,delta_weights3_54_ce1,delta_weights3_54_we1,delta_weights3_54_d1,delta_weights3_55_address0,delta_weights3_55_ce0,delta_weights3_55_we0,delta_weights3_55_d0,delta_weights3_55_address1,delta_weights3_55_ce1,delta_weights3_55_we1,delta_weights3_55_d1,delta_weights3_56_address0,delta_weights3_56_ce0,delta_weights3_56_we0,delta_weights3_56_d0,delta_weights3_56_address1,delta_weights3_56_ce1,delta_weights3_56_we1,delta_weights3_56_d1,delta_weights3_57_address0,delta_weights3_57_ce0,delta_weights3_57_we0,delta_weights3_57_d0,delta_weights3_57_address1,delta_weights3_57_ce1,delta_weights3_57_we1,delta_weights3_57_d1,delta_weights3_58_address0,delta_weights3_58_ce0,delta_weights3_58_we0,delta_weights3_58_d0,delta_weights3_58_address1,delta_weights3_58_ce1,delta_weights3_58_we1,delta_weights3_58_d1,delta_weights3_59_address0,delta_weights3_59_ce0,delta_weights3_59_we0,delta_weights3_59_d0,delta_weights3_59_address1,delta_weights3_59_ce1,delta_weights3_59_we1,delta_weights3_59_d1,delta_weights3_60_address0,delta_weights3_60_ce0,delta_weights3_60_we0,delta_weights3_60_d0,delta_weights3_60_address1,delta_weights3_60_ce1,delta_weights3_60_we1,delta_weights3_60_d1,delta_weights3_61_address0,delta_weights3_61_ce0,delta_weights3_61_we0,delta_weights3_61_d0,delta_weights3_61_address1,delta_weights3_61_ce1,delta_weights3_61_we1,delta_weights3_61_d1,delta_weights3_62_address0,delta_weights3_62_ce0,delta_weights3_62_we0,delta_weights3_62_d0,delta_weights3_62_address1,delta_weights3_62_ce1,delta_weights3_62_we1,delta_weights3_62_d1,delta_weights3_63_address0,delta_weights3_63_ce0,delta_weights3_63_we0,delta_weights3_63_d0,delta_weights3_63_address1,delta_weights3_63_ce1,delta_weights3_63_we1,delta_weights3_63_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_val,last_activations_1_val,last_activations_2_val,last_activations_3_val,last_activations_4_val,last_activations_5_val,last_activations_6_val,last_activations_7_val,last_activations_8_val,last_activations_9_val,last_activations_10_val,last_activations_11_val,last_activations_12_val,last_activations_13_val,last_activations_14_val,last_activations_15_val,last_activations_16_val,last_activations_17_val,last_activations_18_val,last_activations_19_val,last_activations_20_val,last_activations_21_val,last_activations_22_val,last_activations_23_val,last_activations_24_val,last_activations_25_val,last_activations_26_val,last_activations_27_val,last_activations_28_val,last_activations_29_val,last_activations_30_val,last_activations_31_val,last_activations_32_val,last_activations_33_val,last_activations_34_val,last_activations_35_val,last_activations_36_val,last_activations_37_val,last_activations_38_val,last_activations_39_val,last_activations_40_val,last_activations_41_val,last_activations_42_val,last_activations_43_val,last_activations_44_val,last_activations_45_val,last_activations_46_val,last_activations_47_val,last_activations_48_val,last_activations_49_val,last_activations_50_val,last_activations_51_val,last_activations_52_val,last_activations_53_val,last_activations_54_val,last_activations_55_val,last_activations_56_val,last_activations_57_val,last_activations_58_val,last_activations_59_val,last_activations_60_val,last_activations_61_val,last_activations_62_val,last_activations_63_val,grp_fu_18791_p_din0,grp_fu_18791_p_din1,grp_fu_18791_p_dout0,grp_fu_18791_p_ce,grp_fu_18795_p_din0,grp_fu_18795_p_din1,grp_fu_18795_p_dout0,grp_fu_18795_p_ce,grp_fu_18799_p_din0,grp_fu_18799_p_din1,grp_fu_18799_p_dout0,grp_fu_18799_p_ce,grp_fu_18803_p_din0,grp_fu_18803_p_din1,grp_fu_18803_p_dout0,grp_fu_18803_p_ce,grp_fu_18807_p_din0,grp_fu_18807_p_din1,grp_fu_18807_p_dout0,grp_fu_18807_p_ce,grp_fu_18811_p_din0,grp_fu_18811_p_din1,grp_fu_18811_p_dout0,grp_fu_18811_p_ce,grp_fu_18815_p_din0,grp_fu_18815_p_din1,grp_fu_18815_p_dout0,grp_fu_18815_p_ce,grp_fu_18819_p_din0,grp_fu_18819_p_din1,grp_fu_18819_p_dout0,grp_fu_18819_p_ce,grp_fu_18823_p_din0,grp_fu_18823_p_din1,grp_fu_18823_p_dout0,grp_fu_18823_p_ce,grp_fu_18827_p_din0,grp_fu_18827_p_din1,grp_fu_18827_p_dout0,grp_fu_18827_p_ce,grp_fu_18831_p_din0,grp_fu_18831_p_din1,grp_fu_18831_p_dout0,grp_fu_18831_p_ce,grp_fu_18835_p_din0,grp_fu_18835_p_din1,grp_fu_18835_p_dout0,grp_fu_18835_p_ce,grp_fu_18839_p_din0,grp_fu_18839_p_din1,grp_fu_18839_p_dout0,grp_fu_18839_p_ce,grp_fu_18843_p_din0,grp_fu_18843_p_din1,grp_fu_18843_p_dout0,grp_fu_18843_p_ce,grp_fu_18847_p_din0,grp_fu_18847_p_din1,grp_fu_18847_p_dout0,grp_fu_18847_p_ce,grp_fu_18851_p_din0,grp_fu_18851_p_din1,grp_fu_18851_p_dout0,grp_fu_18851_p_ce,grp_fu_18855_p_din0,grp_fu_18855_p_din1,grp_fu_18855_p_dout0,grp_fu_18855_p_ce,grp_fu_18859_p_din0,grp_fu_18859_p_din1,grp_fu_18859_p_dout0,grp_fu_18859_p_ce,grp_fu_18863_p_din0,grp_fu_18863_p_din1,grp_fu_18863_p_dout0,grp_fu_18863_p_ce,grp_fu_18867_p_din0,grp_fu_18867_p_din1,grp_fu_18867_p_dout0,grp_fu_18867_p_ce,grp_fu_18871_p_din0,grp_fu_18871_p_din1,grp_fu_18871_p_dout0,grp_fu_18871_p_ce,grp_fu_18875_p_din0,grp_fu_18875_p_din1,grp_fu_18875_p_dout0,grp_fu_18875_p_ce,grp_fu_18879_p_din0,grp_fu_18879_p_din1,grp_fu_18879_p_dout0,grp_fu_18879_p_ce,grp_fu_18883_p_din0,grp_fu_18883_p_din1,grp_fu_18883_p_dout0,grp_fu_18883_p_ce,grp_fu_18887_p_din0,grp_fu_18887_p_din1,grp_fu_18887_p_dout0,grp_fu_18887_p_ce,grp_fu_18891_p_din0,grp_fu_18891_p_din1,grp_fu_18891_p_dout0,grp_fu_18891_p_ce,grp_fu_18895_p_din0,grp_fu_18895_p_din1,grp_fu_18895_p_dout0,grp_fu_18895_p_ce,grp_fu_18899_p_din0,grp_fu_18899_p_din1,grp_fu_18899_p_dout0,grp_fu_18899_p_ce,grp_fu_18903_p_din0,grp_fu_18903_p_din1,grp_fu_18903_p_dout0,grp_fu_18903_p_ce,grp_fu_18907_p_din0,grp_fu_18907_p_din1,grp_fu_18907_p_dout0,grp_fu_18907_p_ce,grp_fu_18911_p_din0,grp_fu_18911_p_din1,grp_fu_18911_p_dout0,grp_fu_18911_p_ce,grp_fu_18915_p_din0,grp_fu_18915_p_din1,grp_fu_18915_p_dout0,grp_fu_18915_p_ce,grp_fu_18919_p_din0,grp_fu_18919_p_din1,grp_fu_18919_p_dout0,grp_fu_18919_p_ce,grp_fu_18923_p_din0,grp_fu_18923_p_din1,grp_fu_18923_p_dout0,grp_fu_18923_p_ce,grp_fu_18927_p_din0,grp_fu_18927_p_din1,grp_fu_18927_p_dout0,grp_fu_18927_p_ce,grp_fu_18931_p_din0,grp_fu_18931_p_din1,grp_fu_18931_p_dout0,grp_fu_18931_p_ce,grp_fu_18935_p_din0,grp_fu_18935_p_din1,grp_fu_18935_p_dout0,grp_fu_18935_p_ce,grp_fu_18939_p_din0,grp_fu_18939_p_din1,grp_fu_18939_p_dout0,grp_fu_18939_p_ce,grp_fu_18943_p_din0,grp_fu_18943_p_din1,grp_fu_18943_p_dout0,grp_fu_18943_p_ce,grp_fu_18947_p_din0,grp_fu_18947_p_din1,grp_fu_18947_p_dout0,grp_fu_18947_p_ce,grp_fu_18951_p_din0,grp_fu_18951_p_din1,grp_fu_18951_p_dout0,grp_fu_18951_p_ce,grp_fu_18955_p_din0,grp_fu_18955_p_din1,grp_fu_18955_p_dout0,grp_fu_18955_p_ce,grp_fu_18959_p_din0,grp_fu_18959_p_din1,grp_fu_18959_p_dout0,grp_fu_18959_p_ce,grp_fu_18963_p_din0,grp_fu_18963_p_din1,grp_fu_18963_p_dout0,grp_fu_18963_p_ce,grp_fu_18967_p_din0,grp_fu_18967_p_din1,grp_fu_18967_p_dout0,grp_fu_18967_p_ce,grp_fu_18971_p_din0,grp_fu_18971_p_din1,grp_fu_18971_p_dout0,grp_fu_18971_p_ce,grp_fu_18975_p_din0,grp_fu_18975_p_din1,grp_fu_18975_p_dout0,grp_fu_18975_p_ce,grp_fu_18979_p_din0,grp_fu_18979_p_din1,grp_fu_18979_p_dout0,grp_fu_18979_p_ce,grp_fu_18983_p_din0,grp_fu_18983_p_din1,grp_fu_18983_p_dout0,grp_fu_18983_p_ce,grp_fu_18987_p_din0,grp_fu_18987_p_din1,grp_fu_18987_p_dout0,grp_fu_18987_p_ce,grp_fu_18991_p_din0,grp_fu_18991_p_din1,grp_fu_18991_p_dout0,grp_fu_18991_p_ce,grp_fu_18995_p_din0,grp_fu_18995_p_din1,grp_fu_18995_p_dout0,grp_fu_18995_p_ce,grp_fu_18999_p_din0,grp_fu_18999_p_din1,grp_fu_18999_p_dout0,grp_fu_18999_p_ce,grp_fu_19003_p_din0,grp_fu_19003_p_din1,grp_fu_19003_p_dout0,grp_fu_19003_p_ce,grp_fu_19007_p_din0,grp_fu_19007_p_din1,grp_fu_19007_p_dout0,grp_fu_19007_p_ce,grp_fu_19011_p_din0,grp_fu_19011_p_din1,grp_fu_19011_p_dout0,grp_fu_19011_p_ce,grp_fu_19015_p_din0,grp_fu_19015_p_din1,grp_fu_19015_p_dout0,grp_fu_19015_p_ce,grp_fu_19019_p_din0,grp_fu_19019_p_din1,grp_fu_19019_p_dout0,grp_fu_19019_p_ce,grp_fu_19023_p_din0,grp_fu_19023_p_din1,grp_fu_19023_p_dout0,grp_fu_19023_p_ce,grp_fu_19027_p_din0,grp_fu_19027_p_din1,grp_fu_19027_p_dout0,grp_fu_19027_p_ce,grp_fu_19031_p_din0,grp_fu_19031_p_din1,grp_fu_19031_p_dout0,grp_fu_19031_p_ce,grp_fu_19035_p_din0,grp_fu_19035_p_din1,grp_fu_19035_p_dout0,grp_fu_19035_p_ce,grp_fu_19039_p_din0,grp_fu_19039_p_din1,grp_fu_19039_p_dout0,grp_fu_19039_p_ce,grp_fu_19043_p_din0,grp_fu_19043_p_din1,grp_fu_19043_p_dout0,grp_fu_19043_p_ce,grp_fu_19047_p_din0,grp_fu_19047_p_din1,grp_fu_19047_p_dout0,grp_fu_19047_p_ce,grp_fu_19051_p_din0,grp_fu_19051_p_din1,grp_fu_19051_p_dout0,grp_fu_19051_p_ce,grp_fu_19055_p_din0,grp_fu_19055_p_din1,grp_fu_19055_p_dout0,grp_fu_19055_p_ce,grp_fu_19059_p_din0,grp_fu_19059_p_din1,grp_fu_19059_p_dout0,grp_fu_19059_p_ce,grp_fu_19063_p_din0,grp_fu_19063_p_din1,grp_fu_19063_p_dout0,grp_fu_19063_p_ce,grp_fu_19067_p_din0,grp_fu_19067_p_din1,grp_fu_19067_p_dout0,grp_fu_19067_p_ce,grp_fu_19071_p_din0,grp_fu_19071_p_din1,grp_fu_19071_p_dout0,grp_fu_19071_p_ce,grp_fu_19075_p_din0,grp_fu_19075_p_din1,grp_fu_19075_p_dout0,grp_fu_19075_p_ce,grp_fu_19079_p_din0,grp_fu_19079_p_din1,grp_fu_19079_p_dout0,grp_fu_19079_p_ce,grp_fu_19083_p_din0,grp_fu_19083_p_din1,grp_fu_19083_p_dout0,grp_fu_19083_p_ce,grp_fu_19087_p_din0,grp_fu_19087_p_din1,grp_fu_19087_p_dout0,grp_fu_19087_p_ce,grp_fu_19091_p_din0,grp_fu_19091_p_din1,grp_fu_19091_p_dout0,grp_fu_19091_p_ce,grp_fu_19095_p_din0,grp_fu_19095_p_din1,grp_fu_19095_p_dout0,grp_fu_19095_p_ce,grp_fu_19099_p_din0,grp_fu_19099_p_din1,grp_fu_19099_p_dout0,grp_fu_19099_p_ce,grp_fu_19103_p_din0,grp_fu_19103_p_din1,grp_fu_19103_p_dout0,grp_fu_19103_p_ce,grp_fu_19107_p_din0,grp_fu_19107_p_din1,grp_fu_19107_p_dout0,grp_fu_19107_p_ce,grp_fu_19111_p_din0,grp_fu_19111_p_din1,grp_fu_19111_p_dout0,grp_fu_19111_p_ce,grp_fu_19115_p_din0,grp_fu_19115_p_din1,grp_fu_19115_p_dout0,grp_fu_19115_p_ce,grp_fu_19119_p_din0,grp_fu_19119_p_din1,grp_fu_19119_p_dout0,grp_fu_19119_p_ce,grp_fu_19123_p_din0,grp_fu_19123_p_din1,grp_fu_19123_p_dout0,grp_fu_19123_p_ce,grp_fu_19127_p_din0,grp_fu_19127_p_din1,grp_fu_19127_p_dout0,grp_fu_19127_p_ce,grp_fu_19131_p_din0,grp_fu_19131_p_din1,grp_fu_19131_p_dout0,grp_fu_19131_p_ce,grp_fu_19135_p_din0,grp_fu_19135_p_din1,grp_fu_19135_p_dout0,grp_fu_19135_p_ce,grp_fu_19139_p_din0,grp_fu_19139_p_din1,grp_fu_19139_p_dout0,grp_fu_19139_p_ce,grp_fu_19143_p_din0,grp_fu_19143_p_din1,grp_fu_19143_p_dout0,grp_fu_19143_p_ce,grp_fu_19147_p_din0,grp_fu_19147_p_din1,grp_fu_19147_p_dout0,grp_fu_19147_p_ce,grp_fu_19151_p_din0,grp_fu_19151_p_din1,grp_fu_19151_p_dout0,grp_fu_19151_p_ce,grp_fu_19155_p_din0,grp_fu_19155_p_din1,grp_fu_19155_p_dout0,grp_fu_19155_p_ce,grp_fu_19159_p_din0,grp_fu_19159_p_din1,grp_fu_19159_p_dout0,grp_fu_19159_p_ce,grp_fu_19163_p_din0,grp_fu_19163_p_din1,grp_fu_19163_p_dout0,grp_fu_19163_p_ce,grp_fu_19167_p_din0,grp_fu_19167_p_din1,grp_fu_19167_p_dout0,grp_fu_19167_p_ce,grp_fu_19171_p_din0,grp_fu_19171_p_din1,grp_fu_19171_p_dout0,grp_fu_19171_p_ce); 
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
output  [63:0] grp_fu_18791_p_din0;
output  [63:0] grp_fu_18791_p_din1;
input  [63:0] grp_fu_18791_p_dout0;
output   grp_fu_18791_p_ce;
output  [63:0] grp_fu_18795_p_din0;
output  [63:0] grp_fu_18795_p_din1;
input  [63:0] grp_fu_18795_p_dout0;
output   grp_fu_18795_p_ce;
output  [63:0] grp_fu_18799_p_din0;
output  [63:0] grp_fu_18799_p_din1;
input  [63:0] grp_fu_18799_p_dout0;
output   grp_fu_18799_p_ce;
output  [63:0] grp_fu_18803_p_din0;
output  [63:0] grp_fu_18803_p_din1;
input  [63:0] grp_fu_18803_p_dout0;
output   grp_fu_18803_p_ce;
output  [63:0] grp_fu_18807_p_din0;
output  [63:0] grp_fu_18807_p_din1;
input  [63:0] grp_fu_18807_p_dout0;
output   grp_fu_18807_p_ce;
output  [63:0] grp_fu_18811_p_din0;
output  [63:0] grp_fu_18811_p_din1;
input  [63:0] grp_fu_18811_p_dout0;
output   grp_fu_18811_p_ce;
output  [63:0] grp_fu_18815_p_din0;
output  [63:0] grp_fu_18815_p_din1;
input  [63:0] grp_fu_18815_p_dout0;
output   grp_fu_18815_p_ce;
output  [63:0] grp_fu_18819_p_din0;
output  [63:0] grp_fu_18819_p_din1;
input  [63:0] grp_fu_18819_p_dout0;
output   grp_fu_18819_p_ce;
output  [63:0] grp_fu_18823_p_din0;
output  [63:0] grp_fu_18823_p_din1;
input  [63:0] grp_fu_18823_p_dout0;
output   grp_fu_18823_p_ce;
output  [63:0] grp_fu_18827_p_din0;
output  [63:0] grp_fu_18827_p_din1;
input  [63:0] grp_fu_18827_p_dout0;
output   grp_fu_18827_p_ce;
output  [63:0] grp_fu_18831_p_din0;
output  [63:0] grp_fu_18831_p_din1;
input  [63:0] grp_fu_18831_p_dout0;
output   grp_fu_18831_p_ce;
output  [63:0] grp_fu_18835_p_din0;
output  [63:0] grp_fu_18835_p_din1;
input  [63:0] grp_fu_18835_p_dout0;
output   grp_fu_18835_p_ce;
output  [63:0] grp_fu_18839_p_din0;
output  [63:0] grp_fu_18839_p_din1;
input  [63:0] grp_fu_18839_p_dout0;
output   grp_fu_18839_p_ce;
output  [63:0] grp_fu_18843_p_din0;
output  [63:0] grp_fu_18843_p_din1;
input  [63:0] grp_fu_18843_p_dout0;
output   grp_fu_18843_p_ce;
output  [63:0] grp_fu_18847_p_din0;
output  [63:0] grp_fu_18847_p_din1;
input  [63:0] grp_fu_18847_p_dout0;
output   grp_fu_18847_p_ce;
output  [63:0] grp_fu_18851_p_din0;
output  [63:0] grp_fu_18851_p_din1;
input  [63:0] grp_fu_18851_p_dout0;
output   grp_fu_18851_p_ce;
output  [63:0] grp_fu_18855_p_din0;
output  [63:0] grp_fu_18855_p_din1;
input  [63:0] grp_fu_18855_p_dout0;
output   grp_fu_18855_p_ce;
output  [63:0] grp_fu_18859_p_din0;
output  [63:0] grp_fu_18859_p_din1;
input  [63:0] grp_fu_18859_p_dout0;
output   grp_fu_18859_p_ce;
output  [63:0] grp_fu_18863_p_din0;
output  [63:0] grp_fu_18863_p_din1;
input  [63:0] grp_fu_18863_p_dout0;
output   grp_fu_18863_p_ce;
output  [63:0] grp_fu_18867_p_din0;
output  [63:0] grp_fu_18867_p_din1;
input  [63:0] grp_fu_18867_p_dout0;
output   grp_fu_18867_p_ce;
output  [63:0] grp_fu_18871_p_din0;
output  [63:0] grp_fu_18871_p_din1;
input  [63:0] grp_fu_18871_p_dout0;
output   grp_fu_18871_p_ce;
output  [63:0] grp_fu_18875_p_din0;
output  [63:0] grp_fu_18875_p_din1;
input  [63:0] grp_fu_18875_p_dout0;
output   grp_fu_18875_p_ce;
output  [63:0] grp_fu_18879_p_din0;
output  [63:0] grp_fu_18879_p_din1;
input  [63:0] grp_fu_18879_p_dout0;
output   grp_fu_18879_p_ce;
output  [63:0] grp_fu_18883_p_din0;
output  [63:0] grp_fu_18883_p_din1;
input  [63:0] grp_fu_18883_p_dout0;
output   grp_fu_18883_p_ce;
output  [63:0] grp_fu_18887_p_din0;
output  [63:0] grp_fu_18887_p_din1;
input  [63:0] grp_fu_18887_p_dout0;
output   grp_fu_18887_p_ce;
output  [63:0] grp_fu_18891_p_din0;
output  [63:0] grp_fu_18891_p_din1;
input  [63:0] grp_fu_18891_p_dout0;
output   grp_fu_18891_p_ce;
output  [63:0] grp_fu_18895_p_din0;
output  [63:0] grp_fu_18895_p_din1;
input  [63:0] grp_fu_18895_p_dout0;
output   grp_fu_18895_p_ce;
output  [63:0] grp_fu_18899_p_din0;
output  [63:0] grp_fu_18899_p_din1;
input  [63:0] grp_fu_18899_p_dout0;
output   grp_fu_18899_p_ce;
output  [63:0] grp_fu_18903_p_din0;
output  [63:0] grp_fu_18903_p_din1;
input  [63:0] grp_fu_18903_p_dout0;
output   grp_fu_18903_p_ce;
output  [63:0] grp_fu_18907_p_din0;
output  [63:0] grp_fu_18907_p_din1;
input  [63:0] grp_fu_18907_p_dout0;
output   grp_fu_18907_p_ce;
output  [63:0] grp_fu_18911_p_din0;
output  [63:0] grp_fu_18911_p_din1;
input  [63:0] grp_fu_18911_p_dout0;
output   grp_fu_18911_p_ce;
output  [63:0] grp_fu_18915_p_din0;
output  [63:0] grp_fu_18915_p_din1;
input  [63:0] grp_fu_18915_p_dout0;
output   grp_fu_18915_p_ce;
output  [63:0] grp_fu_18919_p_din0;
output  [63:0] grp_fu_18919_p_din1;
input  [63:0] grp_fu_18919_p_dout0;
output   grp_fu_18919_p_ce;
output  [63:0] grp_fu_18923_p_din0;
output  [63:0] grp_fu_18923_p_din1;
input  [63:0] grp_fu_18923_p_dout0;
output   grp_fu_18923_p_ce;
output  [63:0] grp_fu_18927_p_din0;
output  [63:0] grp_fu_18927_p_din1;
input  [63:0] grp_fu_18927_p_dout0;
output   grp_fu_18927_p_ce;
output  [63:0] grp_fu_18931_p_din0;
output  [63:0] grp_fu_18931_p_din1;
input  [63:0] grp_fu_18931_p_dout0;
output   grp_fu_18931_p_ce;
output  [63:0] grp_fu_18935_p_din0;
output  [63:0] grp_fu_18935_p_din1;
input  [63:0] grp_fu_18935_p_dout0;
output   grp_fu_18935_p_ce;
output  [63:0] grp_fu_18939_p_din0;
output  [63:0] grp_fu_18939_p_din1;
input  [63:0] grp_fu_18939_p_dout0;
output   grp_fu_18939_p_ce;
output  [63:0] grp_fu_18943_p_din0;
output  [63:0] grp_fu_18943_p_din1;
input  [63:0] grp_fu_18943_p_dout0;
output   grp_fu_18943_p_ce;
output  [63:0] grp_fu_18947_p_din0;
output  [63:0] grp_fu_18947_p_din1;
input  [63:0] grp_fu_18947_p_dout0;
output   grp_fu_18947_p_ce;
output  [63:0] grp_fu_18951_p_din0;
output  [63:0] grp_fu_18951_p_din1;
input  [63:0] grp_fu_18951_p_dout0;
output   grp_fu_18951_p_ce;
output  [63:0] grp_fu_18955_p_din0;
output  [63:0] grp_fu_18955_p_din1;
input  [63:0] grp_fu_18955_p_dout0;
output   grp_fu_18955_p_ce;
output  [63:0] grp_fu_18959_p_din0;
output  [63:0] grp_fu_18959_p_din1;
input  [63:0] grp_fu_18959_p_dout0;
output   grp_fu_18959_p_ce;
output  [63:0] grp_fu_18963_p_din0;
output  [63:0] grp_fu_18963_p_din1;
input  [63:0] grp_fu_18963_p_dout0;
output   grp_fu_18963_p_ce;
output  [63:0] grp_fu_18967_p_din0;
output  [63:0] grp_fu_18967_p_din1;
input  [63:0] grp_fu_18967_p_dout0;
output   grp_fu_18967_p_ce;
output  [63:0] grp_fu_18971_p_din0;
output  [63:0] grp_fu_18971_p_din1;
input  [63:0] grp_fu_18971_p_dout0;
output   grp_fu_18971_p_ce;
output  [63:0] grp_fu_18975_p_din0;
output  [63:0] grp_fu_18975_p_din1;
input  [63:0] grp_fu_18975_p_dout0;
output   grp_fu_18975_p_ce;
output  [63:0] grp_fu_18979_p_din0;
output  [63:0] grp_fu_18979_p_din1;
input  [63:0] grp_fu_18979_p_dout0;
output   grp_fu_18979_p_ce;
output  [63:0] grp_fu_18983_p_din0;
output  [63:0] grp_fu_18983_p_din1;
input  [63:0] grp_fu_18983_p_dout0;
output   grp_fu_18983_p_ce;
output  [63:0] grp_fu_18987_p_din0;
output  [63:0] grp_fu_18987_p_din1;
input  [63:0] grp_fu_18987_p_dout0;
output   grp_fu_18987_p_ce;
output  [63:0] grp_fu_18991_p_din0;
output  [63:0] grp_fu_18991_p_din1;
input  [63:0] grp_fu_18991_p_dout0;
output   grp_fu_18991_p_ce;
output  [63:0] grp_fu_18995_p_din0;
output  [63:0] grp_fu_18995_p_din1;
input  [63:0] grp_fu_18995_p_dout0;
output   grp_fu_18995_p_ce;
output  [63:0] grp_fu_18999_p_din0;
output  [63:0] grp_fu_18999_p_din1;
input  [63:0] grp_fu_18999_p_dout0;
output   grp_fu_18999_p_ce;
output  [63:0] grp_fu_19003_p_din0;
output  [63:0] grp_fu_19003_p_din1;
input  [63:0] grp_fu_19003_p_dout0;
output   grp_fu_19003_p_ce;
output  [63:0] grp_fu_19007_p_din0;
output  [63:0] grp_fu_19007_p_din1;
input  [63:0] grp_fu_19007_p_dout0;
output   grp_fu_19007_p_ce;
output  [63:0] grp_fu_19011_p_din0;
output  [63:0] grp_fu_19011_p_din1;
input  [63:0] grp_fu_19011_p_dout0;
output   grp_fu_19011_p_ce;
output  [63:0] grp_fu_19015_p_din0;
output  [63:0] grp_fu_19015_p_din1;
input  [63:0] grp_fu_19015_p_dout0;
output   grp_fu_19015_p_ce;
output  [63:0] grp_fu_19019_p_din0;
output  [63:0] grp_fu_19019_p_din1;
input  [63:0] grp_fu_19019_p_dout0;
output   grp_fu_19019_p_ce;
output  [63:0] grp_fu_19023_p_din0;
output  [63:0] grp_fu_19023_p_din1;
input  [63:0] grp_fu_19023_p_dout0;
output   grp_fu_19023_p_ce;
output  [63:0] grp_fu_19027_p_din0;
output  [63:0] grp_fu_19027_p_din1;
input  [63:0] grp_fu_19027_p_dout0;
output   grp_fu_19027_p_ce;
output  [63:0] grp_fu_19031_p_din0;
output  [63:0] grp_fu_19031_p_din1;
input  [63:0] grp_fu_19031_p_dout0;
output   grp_fu_19031_p_ce;
output  [63:0] grp_fu_19035_p_din0;
output  [63:0] grp_fu_19035_p_din1;
input  [63:0] grp_fu_19035_p_dout0;
output   grp_fu_19035_p_ce;
output  [63:0] grp_fu_19039_p_din0;
output  [63:0] grp_fu_19039_p_din1;
input  [63:0] grp_fu_19039_p_dout0;
output   grp_fu_19039_p_ce;
output  [63:0] grp_fu_19043_p_din0;
output  [63:0] grp_fu_19043_p_din1;
input  [63:0] grp_fu_19043_p_dout0;
output   grp_fu_19043_p_ce;
output  [63:0] grp_fu_19047_p_din0;
output  [63:0] grp_fu_19047_p_din1;
input  [63:0] grp_fu_19047_p_dout0;
output   grp_fu_19047_p_ce;
output  [63:0] grp_fu_19051_p_din0;
output  [63:0] grp_fu_19051_p_din1;
input  [63:0] grp_fu_19051_p_dout0;
output   grp_fu_19051_p_ce;
output  [63:0] grp_fu_19055_p_din0;
output  [63:0] grp_fu_19055_p_din1;
input  [63:0] grp_fu_19055_p_dout0;
output   grp_fu_19055_p_ce;
output  [63:0] grp_fu_19059_p_din0;
output  [63:0] grp_fu_19059_p_din1;
input  [63:0] grp_fu_19059_p_dout0;
output   grp_fu_19059_p_ce;
output  [63:0] grp_fu_19063_p_din0;
output  [63:0] grp_fu_19063_p_din1;
input  [63:0] grp_fu_19063_p_dout0;
output   grp_fu_19063_p_ce;
output  [63:0] grp_fu_19067_p_din0;
output  [63:0] grp_fu_19067_p_din1;
input  [63:0] grp_fu_19067_p_dout0;
output   grp_fu_19067_p_ce;
output  [63:0] grp_fu_19071_p_din0;
output  [63:0] grp_fu_19071_p_din1;
input  [63:0] grp_fu_19071_p_dout0;
output   grp_fu_19071_p_ce;
output  [63:0] grp_fu_19075_p_din0;
output  [63:0] grp_fu_19075_p_din1;
input  [63:0] grp_fu_19075_p_dout0;
output   grp_fu_19075_p_ce;
output  [63:0] grp_fu_19079_p_din0;
output  [63:0] grp_fu_19079_p_din1;
input  [63:0] grp_fu_19079_p_dout0;
output   grp_fu_19079_p_ce;
output  [63:0] grp_fu_19083_p_din0;
output  [63:0] grp_fu_19083_p_din1;
input  [63:0] grp_fu_19083_p_dout0;
output   grp_fu_19083_p_ce;
output  [63:0] grp_fu_19087_p_din0;
output  [63:0] grp_fu_19087_p_din1;
input  [63:0] grp_fu_19087_p_dout0;
output   grp_fu_19087_p_ce;
output  [63:0] grp_fu_19091_p_din0;
output  [63:0] grp_fu_19091_p_din1;
input  [63:0] grp_fu_19091_p_dout0;
output   grp_fu_19091_p_ce;
output  [63:0] grp_fu_19095_p_din0;
output  [63:0] grp_fu_19095_p_din1;
input  [63:0] grp_fu_19095_p_dout0;
output   grp_fu_19095_p_ce;
output  [63:0] grp_fu_19099_p_din0;
output  [63:0] grp_fu_19099_p_din1;
input  [63:0] grp_fu_19099_p_dout0;
output   grp_fu_19099_p_ce;
output  [63:0] grp_fu_19103_p_din0;
output  [63:0] grp_fu_19103_p_din1;
input  [63:0] grp_fu_19103_p_dout0;
output   grp_fu_19103_p_ce;
output  [63:0] grp_fu_19107_p_din0;
output  [63:0] grp_fu_19107_p_din1;
input  [63:0] grp_fu_19107_p_dout0;
output   grp_fu_19107_p_ce;
output  [63:0] grp_fu_19111_p_din0;
output  [63:0] grp_fu_19111_p_din1;
input  [63:0] grp_fu_19111_p_dout0;
output   grp_fu_19111_p_ce;
output  [63:0] grp_fu_19115_p_din0;
output  [63:0] grp_fu_19115_p_din1;
input  [63:0] grp_fu_19115_p_dout0;
output   grp_fu_19115_p_ce;
output  [63:0] grp_fu_19119_p_din0;
output  [63:0] grp_fu_19119_p_din1;
input  [63:0] grp_fu_19119_p_dout0;
output   grp_fu_19119_p_ce;
output  [63:0] grp_fu_19123_p_din0;
output  [63:0] grp_fu_19123_p_din1;
input  [63:0] grp_fu_19123_p_dout0;
output   grp_fu_19123_p_ce;
output  [63:0] grp_fu_19127_p_din0;
output  [63:0] grp_fu_19127_p_din1;
input  [63:0] grp_fu_19127_p_dout0;
output   grp_fu_19127_p_ce;
output  [63:0] grp_fu_19131_p_din0;
output  [63:0] grp_fu_19131_p_din1;
input  [63:0] grp_fu_19131_p_dout0;
output   grp_fu_19131_p_ce;
output  [63:0] grp_fu_19135_p_din0;
output  [63:0] grp_fu_19135_p_din1;
input  [63:0] grp_fu_19135_p_dout0;
output   grp_fu_19135_p_ce;
output  [63:0] grp_fu_19139_p_din0;
output  [63:0] grp_fu_19139_p_din1;
input  [63:0] grp_fu_19139_p_dout0;
output   grp_fu_19139_p_ce;
output  [63:0] grp_fu_19143_p_din0;
output  [63:0] grp_fu_19143_p_din1;
input  [63:0] grp_fu_19143_p_dout0;
output   grp_fu_19143_p_ce;
output  [63:0] grp_fu_19147_p_din0;
output  [63:0] grp_fu_19147_p_din1;
input  [63:0] grp_fu_19147_p_dout0;
output   grp_fu_19147_p_ce;
output  [63:0] grp_fu_19151_p_din0;
output  [63:0] grp_fu_19151_p_din1;
input  [63:0] grp_fu_19151_p_dout0;
output   grp_fu_19151_p_ce;
output  [63:0] grp_fu_19155_p_din0;
output  [63:0] grp_fu_19155_p_din1;
input  [63:0] grp_fu_19155_p_dout0;
output   grp_fu_19155_p_ce;
output  [63:0] grp_fu_19159_p_din0;
output  [63:0] grp_fu_19159_p_din1;
input  [63:0] grp_fu_19159_p_dout0;
output   grp_fu_19159_p_ce;
output  [63:0] grp_fu_19163_p_din0;
output  [63:0] grp_fu_19163_p_din1;
input  [63:0] grp_fu_19163_p_dout0;
output   grp_fu_19163_p_ce;
output  [63:0] grp_fu_19167_p_din0;
output  [63:0] grp_fu_19167_p_din1;
input  [63:0] grp_fu_19167_p_dout0;
output   grp_fu_19167_p_ce;
output  [63:0] grp_fu_19171_p_din0;
output  [63:0] grp_fu_19171_p_din1;
input  [63:0] grp_fu_19171_p_dout0;
output   grp_fu_19171_p_ce;
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
wire   [0:0] tmp_16_fu_3382_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_13_reg_5844;
reg   [6:0] i_13_reg_5844_pp0_iter1_reg;
reg   [6:0] i_13_reg_5844_pp0_iter2_reg;
reg   [6:0] i_13_reg_5844_pp0_iter3_reg;
reg   [6:0] i_13_reg_5844_pp0_iter4_reg;
reg   [6:0] i_13_reg_5844_pp0_iter5_reg;
reg   [6:0] i_13_reg_5844_pp0_iter6_reg;
reg   [6:0] i_13_reg_5844_pp0_iter7_reg;
wire   [0:0] empty_fu_3390_p2;
reg   [0:0] empty_reg_5854;
wire   [63:0] tmp_fu_3396_p3;
reg   [63:0] tmp_reg_5868;
wire   [63:0] tmp_s_fu_3404_p3;
reg   [63:0] tmp_s_reg_5875;
wire   [63:0] tmp_1417_fu_3412_p3;
reg   [63:0] tmp_1417_reg_5882;
wire   [63:0] tmp_1418_fu_3420_p3;
reg   [63:0] tmp_1418_reg_5889;
wire   [63:0] tmp_1419_fu_3428_p3;
reg   [63:0] tmp_1419_reg_5896;
wire   [63:0] tmp_1420_fu_3436_p3;
reg   [63:0] tmp_1420_reg_5903;
wire   [63:0] tmp_1421_fu_3444_p3;
reg   [63:0] tmp_1421_reg_5910;
wire   [63:0] tmp_1422_fu_3452_p3;
reg   [63:0] tmp_1422_reg_5917;
wire   [63:0] tmp_1423_fu_3460_p3;
reg   [63:0] tmp_1423_reg_5924;
wire   [63:0] tmp_1424_fu_3468_p3;
reg   [63:0] tmp_1424_reg_5931;
wire   [63:0] tmp_1425_fu_3476_p3;
reg   [63:0] tmp_1425_reg_5938;
wire   [63:0] tmp_1426_fu_3484_p3;
reg   [63:0] tmp_1426_reg_5945;
wire   [63:0] tmp_1427_fu_3492_p3;
reg   [63:0] tmp_1427_reg_5952;
wire   [63:0] tmp_1428_fu_3500_p3;
reg   [63:0] tmp_1428_reg_5959;
wire   [63:0] tmp_1429_fu_3508_p3;
reg   [63:0] tmp_1429_reg_5966;
wire   [63:0] tmp_1430_fu_3516_p3;
reg   [63:0] tmp_1430_reg_5973;
wire   [63:0] tmp_1431_fu_3524_p3;
reg   [63:0] tmp_1431_reg_5980;
wire   [63:0] tmp_1432_fu_3532_p3;
reg   [63:0] tmp_1432_reg_5987;
wire   [63:0] tmp_1433_fu_3540_p3;
reg   [63:0] tmp_1433_reg_5994;
wire   [63:0] tmp_1434_fu_3548_p3;
reg   [63:0] tmp_1434_reg_6001;
wire   [63:0] tmp_1435_fu_3556_p3;
reg   [63:0] tmp_1435_reg_6008;
wire   [63:0] tmp_1436_fu_3564_p3;
reg   [63:0] tmp_1436_reg_6015;
reg   [63:0] tmp_1436_reg_6015_pp0_iter1_reg;
wire   [0:0] icmp_ln75_fu_3572_p2;
reg   [0:0] icmp_ln75_reg_6022;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter1_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter2_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter3_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter4_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter5_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter6_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter7_reg;
reg   [0:0] icmp_ln75_reg_6022_pp0_iter8_reg;
wire   [63:0] tmp_1437_fu_3589_p3;
reg   [63:0] tmp_1437_reg_6026;
wire   [63:0] tmp_1438_fu_3594_p3;
reg   [63:0] tmp_1438_reg_6033;
wire   [63:0] tmp_1439_fu_3599_p3;
reg   [63:0] tmp_1439_reg_6040;
wire   [63:0] tmp_1440_fu_3604_p3;
reg   [63:0] tmp_1440_reg_6047;
wire   [63:0] tmp_1441_fu_3609_p3;
reg   [63:0] tmp_1441_reg_6054;
wire   [63:0] tmp_1442_fu_3614_p3;
reg   [63:0] tmp_1442_reg_6061;
wire   [63:0] tmp_1443_fu_3619_p3;
reg   [63:0] tmp_1443_reg_6068;
wire   [63:0] tmp_1444_fu_3624_p3;
reg   [63:0] tmp_1444_reg_6075;
wire   [63:0] tmp_1445_fu_3629_p3;
reg   [63:0] tmp_1445_reg_6082;
wire   [63:0] tmp_1446_fu_3634_p3;
reg   [63:0] tmp_1446_reg_6089;
reg   [63:0] mul_reg_6096;
reg   [63:0] mul_s_reg_6102;
reg   [63:0] mul_32_reg_6108;
reg   [63:0] mul_1_reg_6114;
reg   [63:0] mul_1_1_reg_6120;
reg   [63:0] mul_1_2_reg_6126;
reg   [63:0] mul_2_reg_6132;
reg   [63:0] mul_2_1_reg_6138;
reg   [63:0] mul_2_2_reg_6144;
reg   [63:0] mul_3_reg_6150;
reg   [63:0] mul_3_1_reg_6156;
reg   [63:0] mul_3_2_reg_6162;
reg   [63:0] mul_4_reg_6168;
reg   [63:0] mul_4_1_reg_6174;
reg   [63:0] mul_4_2_reg_6180;
reg   [63:0] mul_5_reg_6186;
reg   [63:0] mul_5_1_reg_6192;
reg   [63:0] mul_5_2_reg_6198;
reg   [63:0] mul_6_reg_6204;
reg   [63:0] mul_6_1_reg_6210;
reg   [63:0] mul_6_2_reg_6216;
reg   [63:0] mul_7_reg_6222;
reg   [63:0] mul_7_1_reg_6228;
reg   [63:0] mul_7_2_reg_6234;
reg   [63:0] mul_8_reg_6240;
reg   [63:0] mul_8_1_reg_6246;
reg   [63:0] mul_8_2_reg_6252;
reg   [63:0] mul_9_reg_6258;
reg   [63:0] mul_9_1_reg_6264;
reg   [63:0] mul_9_2_reg_6270;
reg   [63:0] mul_10_reg_6276;
reg   [63:0] mul_10_1_reg_6282;
reg   [63:0] mul_10_2_reg_6288;
reg   [63:0] mul_11_reg_6294;
reg   [63:0] mul_11_1_reg_6300;
reg   [63:0] mul_11_2_reg_6306;
reg   [63:0] mul_12_reg_6312;
reg   [63:0] mul_12_1_reg_6318;
reg   [63:0] mul_12_2_reg_6324;
reg   [63:0] mul_13_reg_6330;
reg   [63:0] mul_13_1_reg_6336;
reg   [63:0] mul_13_2_reg_6342;
reg   [63:0] mul_14_reg_6348;
reg   [63:0] mul_14_1_reg_6354;
reg   [63:0] mul_14_2_reg_6360;
reg   [63:0] mul_15_reg_6366;
reg   [63:0] mul_15_1_reg_6372;
reg   [63:0] mul_15_2_reg_6378;
reg   [63:0] mul_16_reg_6384;
reg   [63:0] mul_16_1_reg_6390;
reg   [63:0] mul_16_2_reg_6396;
reg   [63:0] mul_17_reg_6402;
reg   [63:0] mul_17_1_reg_6408;
reg   [63:0] mul_17_2_reg_6414;
reg   [63:0] mul_18_reg_6420;
reg   [63:0] mul_18_1_reg_6426;
reg   [63:0] mul_18_2_reg_6432;
reg   [63:0] mul_19_reg_6438;
reg   [63:0] mul_19_1_reg_6444;
reg   [63:0] mul_19_2_reg_6450;
reg   [63:0] mul_20_reg_6456;
reg   [63:0] mul_20_1_reg_6462;
reg   [63:0] mul_20_2_reg_6468;
reg   [63:0] mul_21_reg_6474;
wire   [7:0] tmp_31_fu_3915_p3;
reg   [7:0] tmp_31_reg_6480;
reg   [63:0] mul_21_1_reg_6516;
reg   [63:0] mul_21_2_reg_6522;
reg   [63:0] mul_22_reg_6528;
reg   [63:0] mul_22_1_reg_6534;
reg   [63:0] mul_22_2_reg_6540;
reg   [63:0] mul_23_reg_6546;
reg   [63:0] mul_23_1_reg_6552;
reg   [63:0] mul_23_2_reg_6558;
reg   [63:0] mul_24_reg_6564;
reg   [63:0] mul_24_1_reg_6570;
reg   [63:0] mul_24_2_reg_6576;
reg   [63:0] mul_25_reg_6582;
reg   [63:0] mul_25_1_reg_6588;
reg   [63:0] mul_25_2_reg_6594;
reg   [63:0] mul_26_reg_6600;
reg   [63:0] mul_26_1_reg_6606;
reg   [63:0] mul_26_2_reg_6612;
reg   [63:0] mul_27_reg_6618;
reg   [63:0] mul_27_1_reg_6624;
reg   [63:0] mul_27_2_reg_6630;
reg   [63:0] mul_28_reg_6636;
reg   [63:0] mul_28_1_reg_6642;
reg   [63:0] mul_28_2_reg_6648;
reg   [63:0] mul_29_reg_6654;
reg   [63:0] mul_29_1_reg_6660;
reg   [63:0] mul_29_2_reg_6666;
reg   [63:0] mul_30_reg_6672;
reg   [63:0] mul_30_1_reg_6678;
reg   [63:0] mul_30_2_reg_6684;
reg   [63:0] mul_31_reg_6690;
reg   [63:0] mul_31_1_reg_6696;
reg   [63:0] mul_31_2_reg_6702;
wire   [63:0] zext_ln75_1_fu_3669_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_2_fu_3723_p1;
wire   [63:0] zext_ln75_3_fu_3745_p1;
wire   [63:0] zext_ln75_4_fu_3767_p1;
wire   [63:0] zext_ln75_5_fu_3789_p1;
wire   [63:0] zext_ln75_6_fu_3811_p1;
wire   [63:0] zext_ln75_7_fu_3833_p1;
wire   [63:0] zext_ln75_8_fu_3855_p1;
wire   [63:0] zext_ln75_9_fu_3877_p1;
wire   [63:0] zext_ln75_10_fu_3899_p1;
wire   [63:0] zext_ln75_11_fu_3939_p1;
wire   [63:0] zext_ln75_12_fu_3961_p1;
wire   [63:0] zext_ln75_13_fu_3983_p1;
wire   [63:0] zext_ln75_14_fu_4005_p1;
wire   [63:0] zext_ln75_15_fu_4027_p1;
wire   [63:0] zext_ln75_16_fu_4049_p1;
wire   [63:0] zext_ln75_17_fu_4071_p1;
wire   [63:0] zext_ln75_18_fu_4093_p1;
wire   [63:0] zext_ln75_19_fu_4115_p1;
wire   [63:0] zext_ln75_20_fu_4137_p1;
wire   [63:0] zext_ln75_21_fu_4159_p1;
wire   [63:0] zext_ln75_22_fu_4181_p1;
wire   [63:0] zext_ln75_23_fu_4203_p1;
wire   [63:0] zext_ln75_24_fu_4225_p1;
wire   [63:0] zext_ln75_25_fu_4247_p1;
wire   [63:0] zext_ln75_26_fu_4269_p1;
wire   [63:0] zext_ln75_27_fu_4291_p1;
wire   [63:0] zext_ln75_28_fu_4313_p1;
wire   [63:0] zext_ln75_29_fu_4335_p1;
wire   [63:0] zext_ln75_30_fu_4357_p1;
wire   [63:0] zext_ln75_31_fu_4379_p1;
wire   [63:0] zext_ln75_32_fu_4401_p1;
wire   [63:0] zext_ln75_33_fu_4423_p1;
wire   [63:0] zext_ln75_34_fu_4445_p1;
wire   [63:0] zext_ln75_35_fu_4467_p1;
wire   [63:0] zext_ln75_36_fu_4489_p1;
wire   [63:0] zext_ln75_37_fu_4511_p1;
wire   [63:0] zext_ln75_38_fu_4533_p1;
wire   [63:0] zext_ln75_39_fu_4555_p1;
wire   [63:0] zext_ln75_40_fu_4577_p1;
wire   [63:0] zext_ln75_41_fu_4599_p1;
wire   [63:0] zext_ln75_42_fu_4621_p1;
wire   [63:0] zext_ln75_43_fu_4643_p1;
wire   [63:0] zext_ln75_44_fu_4665_p1;
wire   [63:0] zext_ln75_45_fu_4687_p1;
wire   [63:0] zext_ln75_46_fu_4709_p1;
wire   [63:0] zext_ln75_47_fu_4731_p1;
wire   [63:0] zext_ln75_48_fu_4753_p1;
wire   [63:0] zext_ln75_49_fu_4775_p1;
wire   [63:0] zext_ln75_50_fu_4797_p1;
wire   [63:0] zext_ln75_51_fu_4819_p1;
wire   [63:0] zext_ln75_52_fu_4841_p1;
wire   [63:0] zext_ln75_53_fu_4863_p1;
wire   [63:0] zext_ln75_54_fu_4885_p1;
wire   [63:0] zext_ln75_55_fu_4907_p1;
wire   [63:0] zext_ln75_56_fu_4929_p1;
wire   [63:0] zext_ln75_57_fu_4951_p1;
wire   [63:0] zext_ln75_58_fu_4972_p1;
wire   [63:0] zext_ln75_59_fu_4993_p1;
wire   [63:0] zext_ln75_60_fu_5014_p1;
wire   [63:0] zext_ln75_61_fu_5035_p1;
wire   [63:0] zext_ln75_62_fu_5056_p1;
wire   [63:0] zext_ln75_63_fu_5077_p1;
wire   [63:0] zext_ln75_64_fu_5098_p1;
wire   [63:0] zext_ln75_65_fu_5119_p1;
wire   [63:0] zext_ln75_66_fu_5140_p1;
wire   [63:0] zext_ln75_67_fu_5161_p1;
wire   [63:0] zext_ln75_68_fu_5182_p1;
wire   [63:0] zext_ln75_69_fu_5203_p1;
wire   [63:0] zext_ln75_70_fu_5224_p1;
wire   [63:0] zext_ln75_71_fu_5245_p1;
wire   [63:0] zext_ln75_72_fu_5266_p1;
wire   [63:0] zext_ln75_73_fu_5287_p1;
wire   [63:0] zext_ln75_74_fu_5308_p1;
wire   [63:0] zext_ln75_75_fu_5329_p1;
wire   [63:0] zext_ln75_76_fu_5350_p1;
wire   [63:0] zext_ln75_77_fu_5371_p1;
wire   [63:0] zext_ln75_78_fu_5392_p1;
wire   [63:0] zext_ln75_79_fu_5413_p1;
wire   [63:0] zext_ln75_80_fu_5434_p1;
wire   [63:0] zext_ln75_81_fu_5455_p1;
wire   [63:0] zext_ln75_82_fu_5476_p1;
wire   [63:0] zext_ln75_83_fu_5497_p1;
wire   [63:0] zext_ln75_84_fu_5518_p1;
wire   [63:0] zext_ln75_85_fu_5539_p1;
wire   [63:0] zext_ln75_86_fu_5560_p1;
wire   [63:0] zext_ln75_87_fu_5581_p1;
wire   [63:0] zext_ln75_88_fu_5602_p1;
wire   [63:0] zext_ln75_89_fu_5623_p1;
reg   [6:0] i_fu_472;
wire   [6:0] add_ln73_fu_3578_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    delta_weights3_0_we1_local;
reg   [63:0] delta_weights3_0_d1_local;
reg    delta_weights3_0_ce1_local;
reg   [1:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [1:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [1:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [1:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we1_local;
reg   [63:0] delta_weights3_4_d1_local;
reg    delta_weights3_4_ce1_local;
reg   [1:0] delta_weights3_4_address1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_5_we1_local;
reg   [63:0] delta_weights3_5_d1_local;
reg    delta_weights3_5_ce1_local;
reg   [1:0] delta_weights3_5_address1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg    delta_weights3_6_we1_local;
reg   [63:0] delta_weights3_6_d1_local;
reg    delta_weights3_6_ce1_local;
reg   [1:0] delta_weights3_6_address1_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [1:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg    delta_weights3_8_we1_local;
reg   [63:0] delta_weights3_8_d1_local;
reg    delta_weights3_8_ce1_local;
reg   [1:0] delta_weights3_8_address1_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg    delta_weights3_9_we1_local;
reg   [63:0] delta_weights3_9_d1_local;
reg    delta_weights3_9_ce1_local;
reg   [1:0] delta_weights3_9_address1_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg    delta_weights3_10_we1_local;
reg   [63:0] delta_weights3_10_d1_local;
reg    delta_weights3_10_ce1_local;
reg   [1:0] delta_weights3_10_address1_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg    delta_weights3_11_we1_local;
reg   [63:0] delta_weights3_11_d1_local;
reg    delta_weights3_11_ce1_local;
reg   [1:0] delta_weights3_11_address1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg    delta_weights3_12_we1_local;
reg   [63:0] delta_weights3_12_d1_local;
reg    delta_weights3_12_ce1_local;
reg   [1:0] delta_weights3_12_address1_local;
reg    delta_weights3_12_we0_local;
reg    delta_weights3_12_ce0_local;
reg    delta_weights3_13_we1_local;
reg   [63:0] delta_weights3_13_d1_local;
reg    delta_weights3_13_ce1_local;
reg   [1:0] delta_weights3_13_address1_local;
reg    delta_weights3_13_we0_local;
reg    delta_weights3_13_ce0_local;
reg    delta_weights3_14_we1_local;
reg   [63:0] delta_weights3_14_d1_local;
reg    delta_weights3_14_ce1_local;
reg   [1:0] delta_weights3_14_address1_local;
reg    delta_weights3_14_we0_local;
reg    delta_weights3_14_ce0_local;
reg    delta_weights3_15_we1_local;
reg   [63:0] delta_weights3_15_d1_local;
reg    delta_weights3_15_ce1_local;
reg   [1:0] delta_weights3_15_address1_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
reg    delta_weights3_16_we1_local;
reg   [63:0] delta_weights3_16_d1_local;
reg    delta_weights3_16_ce1_local;
reg   [1:0] delta_weights3_16_address1_local;
reg    delta_weights3_16_we0_local;
reg    delta_weights3_16_ce0_local;
reg    delta_weights3_17_we1_local;
reg   [63:0] delta_weights3_17_d1_local;
reg    delta_weights3_17_ce1_local;
reg   [1:0] delta_weights3_17_address1_local;
reg    delta_weights3_17_we0_local;
reg    delta_weights3_17_ce0_local;
reg    delta_weights3_18_we1_local;
reg   [63:0] delta_weights3_18_d1_local;
reg    delta_weights3_18_ce1_local;
reg   [1:0] delta_weights3_18_address1_local;
reg    delta_weights3_18_we0_local;
reg    delta_weights3_18_ce0_local;
reg    delta_weights3_19_we1_local;
reg   [63:0] delta_weights3_19_d1_local;
reg    delta_weights3_19_ce1_local;
reg   [1:0] delta_weights3_19_address1_local;
reg    delta_weights3_19_we0_local;
reg    delta_weights3_19_ce0_local;
reg    delta_weights3_20_we1_local;
reg   [63:0] delta_weights3_20_d1_local;
reg    delta_weights3_20_ce1_local;
reg   [1:0] delta_weights3_20_address1_local;
reg    delta_weights3_20_we0_local;
reg    delta_weights3_20_ce0_local;
reg    delta_weights3_21_we1_local;
reg   [63:0] delta_weights3_21_d1_local;
reg    delta_weights3_21_ce1_local;
reg   [1:0] delta_weights3_21_address1_local;
reg    delta_weights3_21_we0_local;
reg    delta_weights3_21_ce0_local;
reg    delta_weights3_22_we1_local;
reg   [63:0] delta_weights3_22_d1_local;
reg    delta_weights3_22_ce1_local;
reg   [1:0] delta_weights3_22_address1_local;
reg    delta_weights3_22_we0_local;
reg    delta_weights3_22_ce0_local;
reg    delta_weights3_23_we1_local;
reg   [63:0] delta_weights3_23_d1_local;
reg    delta_weights3_23_ce1_local;
reg   [1:0] delta_weights3_23_address1_local;
reg    delta_weights3_23_we0_local;
reg    delta_weights3_23_ce0_local;
reg    delta_weights3_24_we1_local;
reg   [63:0] delta_weights3_24_d1_local;
reg    delta_weights3_24_ce1_local;
reg   [1:0] delta_weights3_24_address1_local;
reg    delta_weights3_24_we0_local;
reg    delta_weights3_24_ce0_local;
reg    delta_weights3_25_we1_local;
reg   [63:0] delta_weights3_25_d1_local;
reg    delta_weights3_25_ce1_local;
reg   [1:0] delta_weights3_25_address1_local;
reg    delta_weights3_25_we0_local;
reg    delta_weights3_25_ce0_local;
reg    delta_weights3_26_we1_local;
reg   [63:0] delta_weights3_26_d1_local;
reg    delta_weights3_26_ce1_local;
reg   [1:0] delta_weights3_26_address1_local;
reg    delta_weights3_26_we0_local;
reg    delta_weights3_26_ce0_local;
reg    delta_weights3_27_we1_local;
reg   [63:0] delta_weights3_27_d1_local;
reg    delta_weights3_27_ce1_local;
reg   [1:0] delta_weights3_27_address1_local;
reg    delta_weights3_27_we0_local;
reg    delta_weights3_27_ce0_local;
reg    delta_weights3_28_we1_local;
reg   [63:0] delta_weights3_28_d1_local;
reg    delta_weights3_28_ce1_local;
reg   [1:0] delta_weights3_28_address1_local;
reg    delta_weights3_28_we0_local;
reg    delta_weights3_28_ce0_local;
reg    delta_weights3_29_we1_local;
reg   [63:0] delta_weights3_29_d1_local;
reg    delta_weights3_29_ce1_local;
reg   [1:0] delta_weights3_29_address1_local;
reg    delta_weights3_29_we0_local;
reg    delta_weights3_29_ce0_local;
reg    delta_weights3_30_we1_local;
reg   [63:0] delta_weights3_30_d1_local;
reg    delta_weights3_30_ce1_local;
reg   [1:0] delta_weights3_30_address1_local;
reg    delta_weights3_30_we0_local;
reg    delta_weights3_30_ce0_local;
reg    delta_weights3_31_we1_local;
reg   [63:0] delta_weights3_31_d1_local;
reg    delta_weights3_31_ce1_local;
reg   [1:0] delta_weights3_31_address1_local;
reg    delta_weights3_31_we0_local;
reg    delta_weights3_31_ce0_local;
reg    delta_weights3_32_we1_local;
reg   [63:0] delta_weights3_32_d1_local;
reg    delta_weights3_32_ce1_local;
reg   [1:0] delta_weights3_32_address1_local;
reg    delta_weights3_32_we0_local;
reg    delta_weights3_32_ce0_local;
reg    delta_weights3_33_we1_local;
reg   [63:0] delta_weights3_33_d1_local;
reg    delta_weights3_33_ce1_local;
reg   [1:0] delta_weights3_33_address1_local;
reg    delta_weights3_33_we0_local;
reg    delta_weights3_33_ce0_local;
reg    delta_weights3_34_we1_local;
reg   [63:0] delta_weights3_34_d1_local;
reg    delta_weights3_34_ce1_local;
reg   [1:0] delta_weights3_34_address1_local;
reg    delta_weights3_34_we0_local;
reg    delta_weights3_34_ce0_local;
reg    delta_weights3_35_we1_local;
reg   [63:0] delta_weights3_35_d1_local;
reg    delta_weights3_35_ce1_local;
reg   [1:0] delta_weights3_35_address1_local;
reg    delta_weights3_35_we0_local;
reg    delta_weights3_35_ce0_local;
reg    delta_weights3_36_we1_local;
reg   [63:0] delta_weights3_36_d1_local;
reg    delta_weights3_36_ce1_local;
reg   [1:0] delta_weights3_36_address1_local;
reg    delta_weights3_36_we0_local;
reg    delta_weights3_36_ce0_local;
reg    delta_weights3_37_we1_local;
reg   [63:0] delta_weights3_37_d1_local;
reg    delta_weights3_37_ce1_local;
reg   [1:0] delta_weights3_37_address1_local;
reg    delta_weights3_37_we0_local;
reg    delta_weights3_37_ce0_local;
reg    delta_weights3_38_we1_local;
reg   [63:0] delta_weights3_38_d1_local;
reg    delta_weights3_38_ce1_local;
reg   [1:0] delta_weights3_38_address1_local;
reg    delta_weights3_38_we0_local;
reg    delta_weights3_38_ce0_local;
reg    delta_weights3_39_we1_local;
reg   [63:0] delta_weights3_39_d1_local;
reg    delta_weights3_39_ce1_local;
reg   [1:0] delta_weights3_39_address1_local;
reg    delta_weights3_39_we0_local;
reg    delta_weights3_39_ce0_local;
reg    delta_weights3_40_we1_local;
reg   [63:0] delta_weights3_40_d1_local;
reg    delta_weights3_40_ce1_local;
reg   [1:0] delta_weights3_40_address1_local;
reg    delta_weights3_40_we0_local;
reg    delta_weights3_40_ce0_local;
reg    delta_weights3_41_we1_local;
reg   [63:0] delta_weights3_41_d1_local;
reg    delta_weights3_41_ce1_local;
reg   [1:0] delta_weights3_41_address1_local;
reg    delta_weights3_41_we0_local;
reg    delta_weights3_41_ce0_local;
reg    delta_weights3_42_we1_local;
reg   [63:0] delta_weights3_42_d1_local;
reg    delta_weights3_42_ce1_local;
reg   [1:0] delta_weights3_42_address1_local;
reg    delta_weights3_42_we0_local;
reg    delta_weights3_42_ce0_local;
reg    delta_weights3_43_we1_local;
reg   [63:0] delta_weights3_43_d1_local;
reg    delta_weights3_43_ce1_local;
reg   [1:0] delta_weights3_43_address1_local;
reg    delta_weights3_43_we0_local;
reg    delta_weights3_43_ce0_local;
reg    delta_weights3_44_we1_local;
reg   [63:0] delta_weights3_44_d1_local;
reg    delta_weights3_44_ce1_local;
reg   [1:0] delta_weights3_44_address1_local;
reg    delta_weights3_44_we0_local;
reg    delta_weights3_44_ce0_local;
reg    delta_weights3_45_we1_local;
reg   [63:0] delta_weights3_45_d1_local;
reg    delta_weights3_45_ce1_local;
reg   [1:0] delta_weights3_45_address1_local;
reg    delta_weights3_45_we0_local;
reg    delta_weights3_45_ce0_local;
reg    delta_weights3_46_we1_local;
reg   [63:0] delta_weights3_46_d1_local;
reg    delta_weights3_46_ce1_local;
reg   [1:0] delta_weights3_46_address1_local;
reg    delta_weights3_46_we0_local;
reg    delta_weights3_46_ce0_local;
reg    delta_weights3_47_we1_local;
reg   [63:0] delta_weights3_47_d1_local;
reg    delta_weights3_47_ce1_local;
reg   [1:0] delta_weights3_47_address1_local;
reg    delta_weights3_47_we0_local;
reg    delta_weights3_47_ce0_local;
reg    delta_weights3_48_we1_local;
reg   [63:0] delta_weights3_48_d1_local;
reg    delta_weights3_48_ce1_local;
reg   [1:0] delta_weights3_48_address1_local;
reg    delta_weights3_48_we0_local;
reg    delta_weights3_48_ce0_local;
reg    delta_weights3_49_we1_local;
reg   [63:0] delta_weights3_49_d1_local;
reg    delta_weights3_49_ce1_local;
reg   [1:0] delta_weights3_49_address1_local;
reg    delta_weights3_49_we0_local;
reg    delta_weights3_49_ce0_local;
reg    delta_weights3_50_we1_local;
reg   [63:0] delta_weights3_50_d1_local;
reg    delta_weights3_50_ce1_local;
reg   [1:0] delta_weights3_50_address1_local;
reg    delta_weights3_50_we0_local;
reg    delta_weights3_50_ce0_local;
reg    delta_weights3_51_we1_local;
reg   [63:0] delta_weights3_51_d1_local;
reg    delta_weights3_51_ce1_local;
reg   [1:0] delta_weights3_51_address1_local;
reg    delta_weights3_51_we0_local;
reg    delta_weights3_51_ce0_local;
reg    delta_weights3_52_we1_local;
reg   [63:0] delta_weights3_52_d1_local;
reg    delta_weights3_52_ce1_local;
reg   [1:0] delta_weights3_52_address1_local;
reg    delta_weights3_52_we0_local;
reg    delta_weights3_52_ce0_local;
reg    delta_weights3_53_we1_local;
reg   [63:0] delta_weights3_53_d1_local;
reg    delta_weights3_53_ce1_local;
reg   [1:0] delta_weights3_53_address1_local;
reg    delta_weights3_53_we0_local;
reg    delta_weights3_53_ce0_local;
reg    delta_weights3_54_we1_local;
reg   [63:0] delta_weights3_54_d1_local;
reg    delta_weights3_54_ce1_local;
reg   [1:0] delta_weights3_54_address1_local;
reg    delta_weights3_54_we0_local;
reg    delta_weights3_54_ce0_local;
reg    delta_weights3_55_we1_local;
reg   [63:0] delta_weights3_55_d1_local;
reg    delta_weights3_55_ce1_local;
reg   [1:0] delta_weights3_55_address1_local;
reg    delta_weights3_55_we0_local;
reg    delta_weights3_55_ce0_local;
reg    delta_weights3_56_we1_local;
reg   [63:0] delta_weights3_56_d1_local;
reg    delta_weights3_56_ce1_local;
reg   [1:0] delta_weights3_56_address1_local;
reg    delta_weights3_56_we0_local;
reg    delta_weights3_56_ce0_local;
reg    delta_weights3_57_we1_local;
reg   [63:0] delta_weights3_57_d1_local;
reg    delta_weights3_57_ce1_local;
reg   [1:0] delta_weights3_57_address1_local;
reg    delta_weights3_57_we0_local;
reg    delta_weights3_57_ce0_local;
reg    delta_weights3_58_we1_local;
reg   [63:0] delta_weights3_58_d1_local;
reg    delta_weights3_58_ce1_local;
reg   [1:0] delta_weights3_58_address1_local;
reg    delta_weights3_58_we0_local;
reg    delta_weights3_58_ce0_local;
reg    delta_weights3_59_we1_local;
reg   [63:0] delta_weights3_59_d1_local;
reg    delta_weights3_59_ce1_local;
reg   [1:0] delta_weights3_59_address1_local;
reg    delta_weights3_59_we0_local;
reg    delta_weights3_59_ce0_local;
reg    delta_weights3_60_we1_local;
reg   [63:0] delta_weights3_60_d1_local;
reg    delta_weights3_60_ce1_local;
reg   [1:0] delta_weights3_60_address1_local;
reg    delta_weights3_60_we0_local;
reg    delta_weights3_60_ce0_local;
reg    delta_weights3_61_we1_local;
reg   [63:0] delta_weights3_61_d1_local;
reg    delta_weights3_61_ce1_local;
reg   [1:0] delta_weights3_61_address1_local;
reg    delta_weights3_61_we0_local;
reg    delta_weights3_61_ce0_local;
reg    delta_weights3_62_we1_local;
reg   [63:0] delta_weights3_62_d1_local;
reg    delta_weights3_62_ce1_local;
reg   [1:0] delta_weights3_62_address1_local;
reg    delta_weights3_62_we0_local;
reg    delta_weights3_62_ce0_local;
reg    delta_weights3_63_we1_local;
reg   [63:0] delta_weights3_63_d1_local;
reg    delta_weights3_63_ce1_local;
reg   [1:0] delta_weights3_63_address1_local;
reg    delta_weights3_63_we0_local;
reg    delta_weights3_63_ce0_local;
wire   [5:0] trunc_ln75_fu_3642_p1;
wire   [7:0] p_shl_fu_3645_p3;
wire   [7:0] zext_ln75_fu_3639_p1;
wire   [7:0] sub_ln75_fu_3653_p2;
wire   [1:0] lshr_ln_fu_3659_p4;
wire   [5:0] tmp_28_fu_3689_p4;
wire   [7:0] tmp_29_fu_3699_p3;
wire   [7:0] add_ln75_fu_3707_p2;
wire   [1:0] lshr_ln75_1_fu_3713_p4;
wire   [7:0] add_ln75_1_fu_3729_p2;
wire   [1:0] lshr_ln75_2_fu_3735_p4;
wire   [7:0] empty_981_fu_3751_p2;
wire   [1:0] lshr_ln75_3_fu_3757_p4;
wire   [7:0] add_ln75_2_fu_3773_p2;
wire   [1:0] lshr_ln75_4_fu_3779_p4;
wire   [7:0] empty_982_fu_3795_p2;
wire   [1:0] lshr_ln75_5_fu_3801_p4;
wire   [7:0] add_ln75_3_fu_3817_p2;
wire   [1:0] lshr_ln75_6_fu_3823_p4;
wire   [7:0] empty_983_fu_3839_p2;
wire   [1:0] lshr_ln75_7_fu_3845_p4;
wire   [7:0] add_ln75_4_fu_3861_p2;
wire   [1:0] lshr_ln75_8_fu_3867_p4;
wire   [7:0] add_ln75_5_fu_3883_p2;
wire   [1:0] lshr_ln75_9_fu_3889_p4;
wire   [3:0] tmp_30_fu_3905_p4;
wire   [7:0] add_ln75_6_fu_3923_p2;
wire   [1:0] lshr_ln75_s_fu_3929_p4;
wire   [7:0] add_ln75_7_fu_3945_p2;
wire   [1:0] lshr_ln75_10_fu_3951_p4;
wire   [7:0] empty_984_fu_3967_p2;
wire   [1:0] lshr_ln75_11_fu_3973_p4;
wire   [7:0] add_ln75_8_fu_3989_p2;
wire   [1:0] lshr_ln75_12_fu_3995_p4;
wire   [7:0] add_ln75_9_fu_4011_p2;
wire   [1:0] lshr_ln75_13_fu_4017_p4;
wire   [7:0] empty_985_fu_4033_p2;
wire   [1:0] lshr_ln75_14_fu_4039_p4;
wire   [7:0] add_ln75_10_fu_4055_p2;
wire   [1:0] lshr_ln75_15_fu_4061_p4;
wire   [7:0] add_ln75_11_fu_4077_p2;
wire   [1:0] lshr_ln75_16_fu_4083_p4;
wire   [7:0] empty_986_fu_4099_p2;
wire   [1:0] lshr_ln75_17_fu_4105_p4;
wire   [7:0] add_ln75_12_fu_4121_p2;
wire   [1:0] lshr_ln75_18_fu_4127_p4;
wire   [7:0] add_ln75_13_fu_4143_p2;
wire   [1:0] lshr_ln75_19_fu_4149_p4;
wire   [7:0] empty_987_fu_4165_p2;
wire   [1:0] lshr_ln75_20_fu_4171_p4;
wire   [7:0] add_ln75_14_fu_4187_p2;
wire   [1:0] lshr_ln75_21_fu_4193_p4;
wire   [7:0] add_ln75_15_fu_4209_p2;
wire   [1:0] lshr_ln75_22_fu_4215_p4;
wire   [7:0] empty_988_fu_4231_p2;
wire   [1:0] lshr_ln75_23_fu_4237_p4;
wire   [7:0] add_ln75_16_fu_4253_p2;
wire   [1:0] lshr_ln75_24_fu_4259_p4;
wire   [7:0] empty_989_fu_4275_p2;
wire   [1:0] lshr_ln75_25_fu_4281_p4;
wire   [7:0] add_ln75_17_fu_4297_p2;
wire   [1:0] lshr_ln75_26_fu_4303_p4;
wire   [7:0] add_ln75_18_fu_4319_p2;
wire   [1:0] lshr_ln75_27_fu_4325_p4;
wire   [7:0] empty_990_fu_4341_p2;
wire   [1:0] lshr_ln75_28_fu_4347_p4;
wire   [7:0] add_ln75_19_fu_4363_p2;
wire   [1:0] lshr_ln75_29_fu_4369_p4;
wire   [7:0] add_ln75_20_fu_4385_p2;
wire   [1:0] lshr_ln75_30_fu_4391_p4;
wire   [7:0] empty_991_fu_4407_p2;
wire   [1:0] lshr_ln75_31_fu_4413_p4;
wire   [7:0] add_ln75_21_fu_4429_p2;
wire   [1:0] lshr_ln75_32_fu_4435_p4;
wire   [7:0] add_ln75_22_fu_4451_p2;
wire   [1:0] lshr_ln75_33_fu_4457_p4;
wire   [7:0] empty_992_fu_4473_p2;
wire   [1:0] lshr_ln75_34_fu_4479_p4;
wire   [7:0] add_ln75_23_fu_4495_p2;
wire   [1:0] lshr_ln75_35_fu_4501_p4;
wire   [7:0] add_ln75_24_fu_4517_p2;
wire   [1:0] lshr_ln75_36_fu_4523_p4;
wire   [7:0] empty_993_fu_4539_p2;
wire   [1:0] lshr_ln75_37_fu_4545_p4;
wire   [7:0] add_ln75_25_fu_4561_p2;
wire   [1:0] lshr_ln75_38_fu_4567_p4;
wire   [7:0] add_ln75_26_fu_4583_p2;
wire   [1:0] lshr_ln75_39_fu_4589_p4;
wire   [7:0] empty_994_fu_4605_p2;
wire   [1:0] lshr_ln75_40_fu_4611_p4;
wire   [7:0] add_ln75_27_fu_4627_p2;
wire   [1:0] lshr_ln75_41_fu_4633_p4;
wire   [7:0] add_ln75_28_fu_4649_p2;
wire   [1:0] lshr_ln75_42_fu_4655_p4;
wire   [7:0] empty_995_fu_4671_p2;
wire   [1:0] lshr_ln75_43_fu_4677_p4;
wire   [7:0] add_ln75_29_fu_4693_p2;
wire   [1:0] lshr_ln75_44_fu_4699_p4;
wire   [7:0] add_ln75_30_fu_4715_p2;
wire   [1:0] lshr_ln75_45_fu_4721_p4;
wire   [7:0] empty_996_fu_4737_p2;
wire   [1:0] lshr_ln75_46_fu_4743_p4;
wire   [7:0] add_ln75_31_fu_4759_p2;
wire   [1:0] lshr_ln75_47_fu_4765_p4;
wire   [7:0] add_ln75_32_fu_4781_p2;
wire   [1:0] lshr_ln75_48_fu_4787_p4;
wire   [7:0] empty_997_fu_4803_p2;
wire   [1:0] lshr_ln75_49_fu_4809_p4;
wire   [7:0] add_ln75_33_fu_4825_p2;
wire   [1:0] lshr_ln75_50_fu_4831_p4;
wire   [7:0] add_ln75_34_fu_4847_p2;
wire   [1:0] lshr_ln75_51_fu_4853_p4;
wire   [7:0] empty_998_fu_4869_p2;
wire   [1:0] lshr_ln75_52_fu_4875_p4;
wire   [7:0] add_ln75_35_fu_4891_p2;
wire   [1:0] lshr_ln75_53_fu_4897_p4;
wire   [7:0] add_ln75_36_fu_4913_p2;
wire   [1:0] lshr_ln75_54_fu_4919_p4;
wire   [7:0] empty_999_fu_4935_p2;
wire   [1:0] lshr_ln75_55_fu_4941_p4;
wire   [7:0] add_ln75_37_fu_4957_p2;
wire   [1:0] lshr_ln75_56_fu_4962_p4;
wire   [7:0] add_ln75_38_fu_4978_p2;
wire   [1:0] lshr_ln75_57_fu_4983_p4;
wire   [7:0] empty_1000_fu_4999_p2;
wire   [1:0] lshr_ln75_58_fu_5004_p4;
wire   [7:0] add_ln75_39_fu_5020_p2;
wire   [1:0] lshr_ln75_59_fu_5025_p4;
wire   [7:0] add_ln75_40_fu_5041_p2;
wire   [1:0] lshr_ln75_60_fu_5046_p4;
wire   [7:0] empty_1001_fu_5062_p2;
wire   [1:0] lshr_ln75_61_fu_5067_p4;
wire   [7:0] add_ln75_41_fu_5083_p2;
wire   [1:0] lshr_ln75_62_fu_5088_p4;
wire   [7:0] add_ln75_42_fu_5104_p2;
wire   [1:0] lshr_ln75_63_fu_5109_p4;
wire   [7:0] empty_1002_fu_5125_p2;
wire   [1:0] lshr_ln75_64_fu_5130_p4;
wire   [7:0] add_ln75_43_fu_5146_p2;
wire   [1:0] lshr_ln75_65_fu_5151_p4;
wire   [7:0] add_ln75_44_fu_5167_p2;
wire   [1:0] lshr_ln75_66_fu_5172_p4;
wire   [7:0] empty_1003_fu_5188_p2;
wire   [1:0] lshr_ln75_67_fu_5193_p4;
wire   [7:0] add_ln75_45_fu_5209_p2;
wire   [1:0] lshr_ln75_68_fu_5214_p4;
wire   [7:0] add_ln75_46_fu_5230_p2;
wire   [1:0] lshr_ln75_69_fu_5235_p4;
wire   [7:0] empty_1004_fu_5251_p2;
wire   [1:0] lshr_ln75_70_fu_5256_p4;
wire   [7:0] add_ln75_47_fu_5272_p2;
wire   [1:0] lshr_ln75_71_fu_5277_p4;
wire   [7:0] add_ln75_48_fu_5293_p2;
wire   [1:0] lshr_ln75_72_fu_5298_p4;
wire   [7:0] empty_1005_fu_5314_p2;
wire   [1:0] lshr_ln75_73_fu_5319_p4;
wire   [7:0] add_ln75_49_fu_5335_p2;
wire   [1:0] lshr_ln75_74_fu_5340_p4;
wire   [7:0] add_ln75_50_fu_5356_p2;
wire   [1:0] lshr_ln75_75_fu_5361_p4;
wire   [7:0] empty_1006_fu_5377_p2;
wire   [1:0] lshr_ln75_76_fu_5382_p4;
wire   [7:0] add_ln75_51_fu_5398_p2;
wire   [1:0] lshr_ln75_77_fu_5403_p4;
wire   [7:0] add_ln75_52_fu_5419_p2;
wire   [1:0] lshr_ln75_78_fu_5424_p4;
wire   [7:0] empty_1007_fu_5440_p2;
wire   [1:0] lshr_ln75_79_fu_5445_p4;
wire   [7:0] add_ln75_53_fu_5461_p2;
wire   [1:0] lshr_ln75_80_fu_5466_p4;
wire   [7:0] add_ln75_54_fu_5482_p2;
wire   [1:0] lshr_ln75_81_fu_5487_p4;
wire   [7:0] empty_1008_fu_5503_p2;
wire   [1:0] lshr_ln75_82_fu_5508_p4;
wire   [7:0] add_ln75_55_fu_5524_p2;
wire   [1:0] lshr_ln75_83_fu_5529_p4;
wire   [7:0] add_ln75_56_fu_5545_p2;
wire   [1:0] lshr_ln75_84_fu_5550_p4;
wire   [7:0] empty_1009_fu_5566_p2;
wire   [1:0] lshr_ln75_85_fu_5571_p4;
wire   [7:0] add_ln75_57_fu_5587_p2;
wire   [1:0] lshr_ln75_86_fu_5592_p4;
wire   [7:0] add_ln75_58_fu_5608_p2;
wire   [1:0] lshr_ln75_87_fu_5613_p4;
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
#0 i_fu_472 = 7'd0;
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
        if (((tmp_16_fu_3382_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_472 <= add_ln73_fu_3578_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_472 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_5854 <= empty_fu_3390_p2;
        i_13_reg_5844 <= ap_sig_allocacmp_i_13;
        i_13_reg_5844_pp0_iter1_reg <= i_13_reg_5844;
        icmp_ln75_reg_6022 <= icmp_ln75_fu_3572_p2;
        icmp_ln75_reg_6022_pp0_iter1_reg <= icmp_ln75_reg_6022;
        tmp_1417_reg_5882 <= tmp_1417_fu_3412_p3;
        tmp_1418_reg_5889 <= tmp_1418_fu_3420_p3;
        tmp_1419_reg_5896 <= tmp_1419_fu_3428_p3;
        tmp_1420_reg_5903 <= tmp_1420_fu_3436_p3;
        tmp_1421_reg_5910 <= tmp_1421_fu_3444_p3;
        tmp_1422_reg_5917 <= tmp_1422_fu_3452_p3;
        tmp_1423_reg_5924 <= tmp_1423_fu_3460_p3;
        tmp_1424_reg_5931 <= tmp_1424_fu_3468_p3;
        tmp_1425_reg_5938 <= tmp_1425_fu_3476_p3;
        tmp_1426_reg_5945 <= tmp_1426_fu_3484_p3;
        tmp_1427_reg_5952 <= tmp_1427_fu_3492_p3;
        tmp_1428_reg_5959 <= tmp_1428_fu_3500_p3;
        tmp_1429_reg_5966 <= tmp_1429_fu_3508_p3;
        tmp_1430_reg_5973 <= tmp_1430_fu_3516_p3;
        tmp_1431_reg_5980 <= tmp_1431_fu_3524_p3;
        tmp_1432_reg_5987 <= tmp_1432_fu_3532_p3;
        tmp_1433_reg_5994 <= tmp_1433_fu_3540_p3;
        tmp_1434_reg_6001 <= tmp_1434_fu_3548_p3;
        tmp_1435_reg_6008 <= tmp_1435_fu_3556_p3;
        tmp_1436_reg_6015 <= tmp_1436_fu_3564_p3;
        tmp_1436_reg_6015_pp0_iter1_reg <= tmp_1436_reg_6015;
        tmp_1437_reg_6026 <= tmp_1437_fu_3589_p3;
        tmp_1438_reg_6033 <= tmp_1438_fu_3594_p3;
        tmp_1439_reg_6040 <= tmp_1439_fu_3599_p3;
        tmp_1440_reg_6047 <= tmp_1440_fu_3604_p3;
        tmp_1441_reg_6054 <= tmp_1441_fu_3609_p3;
        tmp_1442_reg_6061 <= tmp_1442_fu_3614_p3;
        tmp_1443_reg_6068 <= tmp_1443_fu_3619_p3;
        tmp_1444_reg_6075 <= tmp_1444_fu_3624_p3;
        tmp_1445_reg_6082 <= tmp_1445_fu_3629_p3;
        tmp_1446_reg_6089 <= tmp_1446_fu_3634_p3;
        tmp_reg_5868 <= tmp_fu_3396_p3;
        tmp_s_reg_5875 <= tmp_s_fu_3404_p3;
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
        i_13_reg_5844_pp0_iter2_reg <= i_13_reg_5844_pp0_iter1_reg;
        i_13_reg_5844_pp0_iter3_reg <= i_13_reg_5844_pp0_iter2_reg;
        i_13_reg_5844_pp0_iter4_reg <= i_13_reg_5844_pp0_iter3_reg;
        i_13_reg_5844_pp0_iter5_reg <= i_13_reg_5844_pp0_iter4_reg;
        i_13_reg_5844_pp0_iter6_reg <= i_13_reg_5844_pp0_iter5_reg;
        i_13_reg_5844_pp0_iter7_reg <= i_13_reg_5844_pp0_iter6_reg;
        icmp_ln75_reg_6022_pp0_iter2_reg <= icmp_ln75_reg_6022_pp0_iter1_reg;
        icmp_ln75_reg_6022_pp0_iter3_reg <= icmp_ln75_reg_6022_pp0_iter2_reg;
        icmp_ln75_reg_6022_pp0_iter4_reg <= icmp_ln75_reg_6022_pp0_iter3_reg;
        icmp_ln75_reg_6022_pp0_iter5_reg <= icmp_ln75_reg_6022_pp0_iter4_reg;
        icmp_ln75_reg_6022_pp0_iter6_reg <= icmp_ln75_reg_6022_pp0_iter5_reg;
        icmp_ln75_reg_6022_pp0_iter7_reg <= icmp_ln75_reg_6022_pp0_iter6_reg;
        icmp_ln75_reg_6022_pp0_iter8_reg <= icmp_ln75_reg_6022_pp0_iter7_reg;
        mul_10_1_reg_6282 <= grp_fu_18915_p_dout0;
        mul_10_2_reg_6288 <= grp_fu_18919_p_dout0;
        mul_10_reg_6276 <= grp_fu_18911_p_dout0;
        mul_11_1_reg_6300 <= grp_fu_18927_p_dout0;
        mul_11_2_reg_6306 <= grp_fu_18931_p_dout0;
        mul_11_reg_6294 <= grp_fu_18923_p_dout0;
        mul_12_1_reg_6318 <= grp_fu_18939_p_dout0;
        mul_12_2_reg_6324 <= grp_fu_18943_p_dout0;
        mul_12_reg_6312 <= grp_fu_18935_p_dout0;
        mul_13_1_reg_6336 <= grp_fu_18951_p_dout0;
        mul_13_2_reg_6342 <= grp_fu_18955_p_dout0;
        mul_13_reg_6330 <= grp_fu_18947_p_dout0;
        mul_14_1_reg_6354 <= grp_fu_18963_p_dout0;
        mul_14_2_reg_6360 <= grp_fu_18967_p_dout0;
        mul_14_reg_6348 <= grp_fu_18959_p_dout0;
        mul_15_1_reg_6372 <= grp_fu_18975_p_dout0;
        mul_15_2_reg_6378 <= grp_fu_18979_p_dout0;
        mul_15_reg_6366 <= grp_fu_18971_p_dout0;
        mul_16_1_reg_6390 <= grp_fu_18987_p_dout0;
        mul_16_2_reg_6396 <= grp_fu_18991_p_dout0;
        mul_16_reg_6384 <= grp_fu_18983_p_dout0;
        mul_17_1_reg_6408 <= grp_fu_18999_p_dout0;
        mul_17_2_reg_6414 <= grp_fu_19003_p_dout0;
        mul_17_reg_6402 <= grp_fu_18995_p_dout0;
        mul_18_1_reg_6426 <= grp_fu_19011_p_dout0;
        mul_18_2_reg_6432 <= grp_fu_19015_p_dout0;
        mul_18_reg_6420 <= grp_fu_19007_p_dout0;
        mul_19_1_reg_6444 <= grp_fu_19023_p_dout0;
        mul_19_2_reg_6450 <= grp_fu_19027_p_dout0;
        mul_19_reg_6438 <= grp_fu_19019_p_dout0;
        mul_1_1_reg_6120 <= grp_fu_18807_p_dout0;
        mul_1_2_reg_6126 <= grp_fu_18811_p_dout0;
        mul_1_reg_6114 <= grp_fu_18803_p_dout0;
        mul_20_1_reg_6462 <= grp_fu_19035_p_dout0;
        mul_20_2_reg_6468 <= grp_fu_19039_p_dout0;
        mul_20_reg_6456 <= grp_fu_19031_p_dout0;
        mul_21_1_reg_6516 <= grp_fu_19047_p_dout0;
        mul_21_2_reg_6522 <= grp_fu_19051_p_dout0;
        mul_21_reg_6474 <= grp_fu_19043_p_dout0;
        mul_22_1_reg_6534 <= grp_fu_19059_p_dout0;
        mul_22_2_reg_6540 <= grp_fu_19063_p_dout0;
        mul_22_reg_6528 <= grp_fu_19055_p_dout0;
        mul_23_1_reg_6552 <= grp_fu_19071_p_dout0;
        mul_23_2_reg_6558 <= grp_fu_19075_p_dout0;
        mul_23_reg_6546 <= grp_fu_19067_p_dout0;
        mul_24_1_reg_6570 <= grp_fu_19083_p_dout0;
        mul_24_2_reg_6576 <= grp_fu_19087_p_dout0;
        mul_24_reg_6564 <= grp_fu_19079_p_dout0;
        mul_25_1_reg_6588 <= grp_fu_19095_p_dout0;
        mul_25_2_reg_6594 <= grp_fu_19099_p_dout0;
        mul_25_reg_6582 <= grp_fu_19091_p_dout0;
        mul_26_1_reg_6606 <= grp_fu_19107_p_dout0;
        mul_26_2_reg_6612 <= grp_fu_19111_p_dout0;
        mul_26_reg_6600 <= grp_fu_19103_p_dout0;
        mul_27_1_reg_6624 <= grp_fu_19119_p_dout0;
        mul_27_2_reg_6630 <= grp_fu_19123_p_dout0;
        mul_27_reg_6618 <= grp_fu_19115_p_dout0;
        mul_28_1_reg_6642 <= grp_fu_19131_p_dout0;
        mul_28_2_reg_6648 <= grp_fu_19135_p_dout0;
        mul_28_reg_6636 <= grp_fu_19127_p_dout0;
        mul_29_1_reg_6660 <= grp_fu_19143_p_dout0;
        mul_29_2_reg_6666 <= grp_fu_19147_p_dout0;
        mul_29_reg_6654 <= grp_fu_19139_p_dout0;
        mul_2_1_reg_6138 <= grp_fu_18819_p_dout0;
        mul_2_2_reg_6144 <= grp_fu_18823_p_dout0;
        mul_2_reg_6132 <= grp_fu_18815_p_dout0;
        mul_30_1_reg_6678 <= grp_fu_19155_p_dout0;
        mul_30_2_reg_6684 <= grp_fu_19159_p_dout0;
        mul_30_reg_6672 <= grp_fu_19151_p_dout0;
        mul_31_1_reg_6696 <= grp_fu_19167_p_dout0;
        mul_31_2_reg_6702 <= grp_fu_19171_p_dout0;
        mul_31_reg_6690 <= grp_fu_19163_p_dout0;
        mul_32_reg_6108 <= grp_fu_18799_p_dout0;
        mul_3_1_reg_6156 <= grp_fu_18831_p_dout0;
        mul_3_2_reg_6162 <= grp_fu_18835_p_dout0;
        mul_3_reg_6150 <= grp_fu_18827_p_dout0;
        mul_4_1_reg_6174 <= grp_fu_18843_p_dout0;
        mul_4_2_reg_6180 <= grp_fu_18847_p_dout0;
        mul_4_reg_6168 <= grp_fu_18839_p_dout0;
        mul_5_1_reg_6192 <= grp_fu_18855_p_dout0;
        mul_5_2_reg_6198 <= grp_fu_18859_p_dout0;
        mul_5_reg_6186 <= grp_fu_18851_p_dout0;
        mul_6_1_reg_6210 <= grp_fu_18867_p_dout0;
        mul_6_2_reg_6216 <= grp_fu_18871_p_dout0;
        mul_6_reg_6204 <= grp_fu_18863_p_dout0;
        mul_7_1_reg_6228 <= grp_fu_18879_p_dout0;
        mul_7_2_reg_6234 <= grp_fu_18883_p_dout0;
        mul_7_reg_6222 <= grp_fu_18875_p_dout0;
        mul_8_1_reg_6246 <= grp_fu_18891_p_dout0;
        mul_8_2_reg_6252 <= grp_fu_18895_p_dout0;
        mul_8_reg_6240 <= grp_fu_18887_p_dout0;
        mul_9_1_reg_6264 <= grp_fu_18903_p_dout0;
        mul_9_2_reg_6270 <= grp_fu_18907_p_dout0;
        mul_9_reg_6258 <= grp_fu_18899_p_dout0;
        mul_reg_6096 <= grp_fu_18791_p_dout0;
        mul_s_reg_6102 <= grp_fu_18795_p_dout0;
        tmp_31_reg_6480[7 : 4] <= tmp_31_fu_3915_p3[7 : 4];
    end
end
always @ (*) begin
    if (((tmp_16_fu_3382_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_472;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_0_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_0_address1_local = zext_ln75_26_fu_4269_p1;
        end else begin
            delta_weights3_0_address1_local = 'bx;
        end
    end else begin
        delta_weights3_0_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_0_d1_local = mul_reg_6096;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_0_d1_local = mul_10_2_reg_6288;
        end else begin
            delta_weights3_0_d1_local = 'bx;
        end
    end else begin
        delta_weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_10_address1_local = zext_ln75_7_fu_3833_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_10_address1_local = zext_ln75_36_fu_4489_p1;
        end else begin
            delta_weights3_10_address1_local = 'bx;
        end
    end else begin
        delta_weights3_10_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_10_d1_local = mul_3_1_reg_6156;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_10_d1_local = mul_14_reg_6348;
        end else begin
            delta_weights3_10_d1_local = 'bx;
        end
    end else begin
        delta_weights3_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_11_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_11_address1_local = zext_ln75_37_fu_4511_p1;
        end else begin
            delta_weights3_11_address1_local = 'bx;
        end
    end else begin
        delta_weights3_11_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_11_d1_local = mul_3_2_reg_6162;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_11_d1_local = mul_14_1_reg_6354;
        end else begin
            delta_weights3_11_d1_local = 'bx;
        end
    end else begin
        delta_weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_12_address1_local = zext_ln75_8_fu_3855_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_12_address1_local = zext_ln75_38_fu_4533_p1;
        end else begin
            delta_weights3_12_address1_local = 'bx;
        end
    end else begin
        delta_weights3_12_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_12_d1_local = mul_4_reg_6168;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_12_d1_local = mul_14_2_reg_6360;
        end else begin
            delta_weights3_12_d1_local = 'bx;
        end
    end else begin
        delta_weights3_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_13_address1_local = zext_ln75_9_fu_3877_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_13_address1_local = zext_ln75_39_fu_4555_p1;
        end else begin
            delta_weights3_13_address1_local = 'bx;
        end
    end else begin
        delta_weights3_13_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_13_d1_local = mul_4_1_reg_6174;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_13_d1_local = mul_15_reg_6366;
        end else begin
            delta_weights3_13_d1_local = 'bx;
        end
    end else begin
        delta_weights3_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_14_address1_local = zext_ln75_10_fu_3899_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_14_address1_local = zext_ln75_40_fu_4577_p1;
        end else begin
            delta_weights3_14_address1_local = 'bx;
        end
    end else begin
        delta_weights3_14_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_14_d1_local = mul_4_2_reg_6180;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_14_d1_local = mul_15_1_reg_6372;
        end else begin
            delta_weights3_14_d1_local = 'bx;
        end
    end else begin
        delta_weights3_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_15_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_15_address1_local = zext_ln75_41_fu_4599_p1;
        end else begin
            delta_weights3_15_address1_local = 'bx;
        end
    end else begin
        delta_weights3_15_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_15_d1_local = mul_5_reg_6186;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_15_d1_local = mul_15_2_reg_6378;
        end else begin
            delta_weights3_15_d1_local = 'bx;
        end
    end else begin
        delta_weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_16_address1_local = zext_ln75_11_fu_3939_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_16_address1_local = zext_ln75_42_fu_4621_p1;
        end else begin
            delta_weights3_16_address1_local = 'bx;
        end
    end else begin
        delta_weights3_16_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_16_d1_local = mul_5_1_reg_6192;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_16_d1_local = mul_16_reg_6384;
        end else begin
            delta_weights3_16_d1_local = 'bx;
        end
    end else begin
        delta_weights3_16_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_17_address1_local = zext_ln75_12_fu_3961_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_17_address1_local = zext_ln75_43_fu_4643_p1;
        end else begin
            delta_weights3_17_address1_local = 'bx;
        end
    end else begin
        delta_weights3_17_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_17_d1_local = mul_5_2_reg_6198;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_17_d1_local = mul_16_1_reg_6390;
        end else begin
            delta_weights3_17_d1_local = 'bx;
        end
    end else begin
        delta_weights3_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_18_address1_local = zext_ln75_13_fu_3983_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_18_address1_local = zext_ln75_44_fu_4665_p1;
        end else begin
            delta_weights3_18_address1_local = 'bx;
        end
    end else begin
        delta_weights3_18_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_18_d1_local = mul_6_reg_6204;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_18_d1_local = mul_16_2_reg_6396;
        end else begin
            delta_weights3_18_d1_local = 'bx;
        end
    end else begin
        delta_weights3_18_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_19_address1_local = zext_ln75_14_fu_4005_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_19_address1_local = zext_ln75_45_fu_4687_p1;
        end else begin
            delta_weights3_19_address1_local = 'bx;
        end
    end else begin
        delta_weights3_19_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_19_d1_local = mul_6_1_reg_6210;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_19_d1_local = mul_17_reg_6402;
        end else begin
            delta_weights3_19_d1_local = 'bx;
        end
    end else begin
        delta_weights3_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_1_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_1_address1_local = zext_ln75_27_fu_4291_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_1_d1_local = mul_s_reg_6102;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_1_d1_local = mul_11_reg_6294;
        end else begin
            delta_weights3_1_d1_local = 'bx;
        end
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_20_address1_local = zext_ln75_15_fu_4027_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_20_address1_local = zext_ln75_46_fu_4709_p1;
        end else begin
            delta_weights3_20_address1_local = 'bx;
        end
    end else begin
        delta_weights3_20_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_20_d1_local = mul_6_2_reg_6216;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_20_d1_local = mul_17_1_reg_6408;
        end else begin
            delta_weights3_20_d1_local = 'bx;
        end
    end else begin
        delta_weights3_20_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_21_address1_local = zext_ln75_16_fu_4049_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_21_address1_local = zext_ln75_47_fu_4731_p1;
        end else begin
            delta_weights3_21_address1_local = 'bx;
        end
    end else begin
        delta_weights3_21_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_21_d1_local = mul_7_reg_6222;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_21_d1_local = mul_17_2_reg_6414;
        end else begin
            delta_weights3_21_d1_local = 'bx;
        end
    end else begin
        delta_weights3_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_22_address1_local = zext_ln75_17_fu_4071_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_22_address1_local = zext_ln75_48_fu_4753_p1;
        end else begin
            delta_weights3_22_address1_local = 'bx;
        end
    end else begin
        delta_weights3_22_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_22_d1_local = mul_7_1_reg_6228;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_22_d1_local = mul_18_reg_6420;
        end else begin
            delta_weights3_22_d1_local = 'bx;
        end
    end else begin
        delta_weights3_22_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_23_address1_local = zext_ln75_18_fu_4093_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_23_address1_local = zext_ln75_49_fu_4775_p1;
        end else begin
            delta_weights3_23_address1_local = 'bx;
        end
    end else begin
        delta_weights3_23_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_23_d1_local = mul_7_2_reg_6234;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_23_d1_local = mul_18_1_reg_6426;
        end else begin
            delta_weights3_23_d1_local = 'bx;
        end
    end else begin
        delta_weights3_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_24_address1_local = zext_ln75_19_fu_4115_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_24_address1_local = zext_ln75_50_fu_4797_p1;
        end else begin
            delta_weights3_24_address1_local = 'bx;
        end
    end else begin
        delta_weights3_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_24_ce1_local = 1'b1;
    end else begin
        delta_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_24_d1_local = mul_8_reg_6240;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_24_d1_local = mul_18_2_reg_6432;
        end else begin
            delta_weights3_24_d1_local = 'bx;
        end
    end else begin
        delta_weights3_24_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_24_we1_local = 1'b1;
    end else begin
        delta_weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_25_address1_local = zext_ln75_20_fu_4137_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_25_address1_local = zext_ln75_51_fu_4819_p1;
        end else begin
            delta_weights3_25_address1_local = 'bx;
        end
    end else begin
        delta_weights3_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_25_ce1_local = 1'b1;
    end else begin
        delta_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_25_d1_local = mul_8_1_reg_6246;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_25_d1_local = mul_19_reg_6438;
        end else begin
            delta_weights3_25_d1_local = 'bx;
        end
    end else begin
        delta_weights3_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_25_we1_local = 1'b1;
    end else begin
        delta_weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_26_address1_local = zext_ln75_21_fu_4159_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_26_address1_local = zext_ln75_52_fu_4841_p1;
        end else begin
            delta_weights3_26_address1_local = 'bx;
        end
    end else begin
        delta_weights3_26_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_26_ce1_local = 1'b1;
    end else begin
        delta_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_26_d1_local = mul_8_2_reg_6252;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_26_d1_local = mul_19_1_reg_6444;
        end else begin
            delta_weights3_26_d1_local = 'bx;
        end
    end else begin
        delta_weights3_26_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_26_we1_local = 1'b1;
    end else begin
        delta_weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_27_address1_local = zext_ln75_22_fu_4181_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_27_address1_local = zext_ln75_53_fu_4863_p1;
        end else begin
            delta_weights3_27_address1_local = 'bx;
        end
    end else begin
        delta_weights3_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_27_ce1_local = 1'b1;
    end else begin
        delta_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_27_d1_local = mul_9_reg_6258;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_27_d1_local = mul_19_2_reg_6450;
        end else begin
            delta_weights3_27_d1_local = 'bx;
        end
    end else begin
        delta_weights3_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_27_we1_local = 1'b1;
    end else begin
        delta_weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_28_address1_local = zext_ln75_23_fu_4203_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_28_address1_local = zext_ln75_54_fu_4885_p1;
        end else begin
            delta_weights3_28_address1_local = 'bx;
        end
    end else begin
        delta_weights3_28_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_28_ce1_local = 1'b1;
    end else begin
        delta_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_28_d1_local = mul_9_1_reg_6264;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_28_d1_local = mul_20_reg_6456;
        end else begin
            delta_weights3_28_d1_local = 'bx;
        end
    end else begin
        delta_weights3_28_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_28_we1_local = 1'b1;
    end else begin
        delta_weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_29_address1_local = zext_ln75_24_fu_4225_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_29_address1_local = zext_ln75_55_fu_4907_p1;
        end else begin
            delta_weights3_29_address1_local = 'bx;
        end
    end else begin
        delta_weights3_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_29_ce1_local = 1'b1;
    end else begin
        delta_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_29_d1_local = mul_9_2_reg_6270;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_29_d1_local = mul_20_1_reg_6462;
        end else begin
            delta_weights3_29_d1_local = 'bx;
        end
    end else begin
        delta_weights3_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_29_we1_local = 1'b1;
    end else begin
        delta_weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_2_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_2_address1_local = zext_ln75_28_fu_4313_p1;
        end else begin
            delta_weights3_2_address1_local = 'bx;
        end
    end else begin
        delta_weights3_2_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_2_d1_local = mul_32_reg_6108;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_2_d1_local = mul_11_1_reg_6300;
        end else begin
            delta_weights3_2_d1_local = 'bx;
        end
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_30_address1_local = zext_ln75_25_fu_4247_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_30_address1_local = zext_ln75_56_fu_4929_p1;
        end else begin
            delta_weights3_30_address1_local = 'bx;
        end
    end else begin
        delta_weights3_30_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_30_ce1_local = 1'b1;
    end else begin
        delta_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_30_d1_local = mul_10_reg_6276;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_30_d1_local = mul_20_2_reg_6468;
        end else begin
            delta_weights3_30_d1_local = 'bx;
        end
    end else begin
        delta_weights3_30_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_30_we1_local = 1'b1;
    end else begin
        delta_weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_31_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_31_address1_local = zext_ln75_57_fu_4951_p1;
        end else begin
            delta_weights3_31_address1_local = 'bx;
        end
    end else begin
        delta_weights3_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_31_ce1_local = 1'b1;
    end else begin
        delta_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_31_d1_local = mul_10_1_reg_6282;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_31_d1_local = mul_21_reg_6474;
        end else begin
            delta_weights3_31_d1_local = 'bx;
        end
    end else begin
        delta_weights3_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_31_we1_local = 1'b1;
    end else begin
        delta_weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_32_address1_local = zext_ln75_26_fu_4269_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_32_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_32_address1_local = 'bx;
        end
    end else begin
        delta_weights3_32_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_32_ce0_local = 1'b1;
    end else begin
        delta_weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_32_ce1_local = 1'b1;
    end else begin
        delta_weights3_32_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_32_d1_local = mul_10_2_reg_6288;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_32_d1_local = mul_reg_6096;
        end else begin
            delta_weights3_32_d1_local = 'bx;
        end
    end else begin
        delta_weights3_32_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_32_we0_local = 1'b1;
    end else begin
        delta_weights3_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_32_we1_local = 1'b1;
    end else begin
        delta_weights3_32_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_33_address1_local = zext_ln75_27_fu_4291_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_33_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_33_address1_local = 'bx;
        end
    end else begin
        delta_weights3_33_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_33_ce0_local = 1'b1;
    end else begin
        delta_weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_33_ce1_local = 1'b1;
    end else begin
        delta_weights3_33_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_33_d1_local = mul_11_reg_6294;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_33_d1_local = mul_s_reg_6102;
        end else begin
            delta_weights3_33_d1_local = 'bx;
        end
    end else begin
        delta_weights3_33_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_33_we0_local = 1'b1;
    end else begin
        delta_weights3_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_33_we1_local = 1'b1;
    end else begin
        delta_weights3_33_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_34_address1_local = zext_ln75_28_fu_4313_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_34_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_34_address1_local = 'bx;
        end
    end else begin
        delta_weights3_34_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_34_ce0_local = 1'b1;
    end else begin
        delta_weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_34_ce1_local = 1'b1;
    end else begin
        delta_weights3_34_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_34_d1_local = mul_11_1_reg_6300;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_34_d1_local = mul_32_reg_6108;
        end else begin
            delta_weights3_34_d1_local = 'bx;
        end
    end else begin
        delta_weights3_34_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_34_we0_local = 1'b1;
    end else begin
        delta_weights3_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_34_we1_local = 1'b1;
    end else begin
        delta_weights3_34_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_35_address1_local = zext_ln75_29_fu_4335_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_35_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_35_address1_local = 'bx;
        end
    end else begin
        delta_weights3_35_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_35_ce0_local = 1'b1;
    end else begin
        delta_weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_35_ce1_local = 1'b1;
    end else begin
        delta_weights3_35_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_35_d1_local = mul_11_2_reg_6306;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_35_d1_local = mul_1_reg_6114;
        end else begin
            delta_weights3_35_d1_local = 'bx;
        end
    end else begin
        delta_weights3_35_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_35_we0_local = 1'b1;
    end else begin
        delta_weights3_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_35_we1_local = 1'b1;
    end else begin
        delta_weights3_35_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_36_address1_local = zext_ln75_30_fu_4357_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_36_address1_local = zext_ln75_2_fu_3723_p1;
        end else begin
            delta_weights3_36_address1_local = 'bx;
        end
    end else begin
        delta_weights3_36_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_36_ce0_local = 1'b1;
    end else begin
        delta_weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_36_ce1_local = 1'b1;
    end else begin
        delta_weights3_36_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_36_d1_local = mul_12_reg_6312;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_36_d1_local = mul_1_1_reg_6120;
        end else begin
            delta_weights3_36_d1_local = 'bx;
        end
    end else begin
        delta_weights3_36_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_36_we0_local = 1'b1;
    end else begin
        delta_weights3_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_36_we1_local = 1'b1;
    end else begin
        delta_weights3_36_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_37_address1_local = zext_ln75_31_fu_4379_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_37_address1_local = zext_ln75_3_fu_3745_p1;
        end else begin
            delta_weights3_37_address1_local = 'bx;
        end
    end else begin
        delta_weights3_37_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_37_ce0_local = 1'b1;
    end else begin
        delta_weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_37_ce1_local = 1'b1;
    end else begin
        delta_weights3_37_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_37_d1_local = mul_12_1_reg_6318;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_37_d1_local = mul_1_2_reg_6126;
        end else begin
            delta_weights3_37_d1_local = 'bx;
        end
    end else begin
        delta_weights3_37_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_37_we0_local = 1'b1;
    end else begin
        delta_weights3_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_37_we1_local = 1'b1;
    end else begin
        delta_weights3_37_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_38_address1_local = zext_ln75_32_fu_4401_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_38_address1_local = zext_ln75_4_fu_3767_p1;
        end else begin
            delta_weights3_38_address1_local = 'bx;
        end
    end else begin
        delta_weights3_38_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_38_ce0_local = 1'b1;
    end else begin
        delta_weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_38_ce1_local = 1'b1;
    end else begin
        delta_weights3_38_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_38_d1_local = mul_12_2_reg_6324;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_38_d1_local = mul_2_reg_6132;
        end else begin
            delta_weights3_38_d1_local = 'bx;
        end
    end else begin
        delta_weights3_38_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_38_we0_local = 1'b1;
    end else begin
        delta_weights3_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_38_we1_local = 1'b1;
    end else begin
        delta_weights3_38_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_39_address1_local = zext_ln75_33_fu_4423_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_39_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_39_address1_local = 'bx;
        end
    end else begin
        delta_weights3_39_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_39_ce0_local = 1'b1;
    end else begin
        delta_weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_39_ce1_local = 1'b1;
    end else begin
        delta_weights3_39_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_39_d1_local = mul_13_reg_6330;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_39_d1_local = mul_2_1_reg_6138;
        end else begin
            delta_weights3_39_d1_local = 'bx;
        end
    end else begin
        delta_weights3_39_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_39_we0_local = 1'b1;
    end else begin
        delta_weights3_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_39_we1_local = 1'b1;
    end else begin
        delta_weights3_39_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_3_address1_local = zext_ln75_29_fu_4335_p1;
        end else begin
            delta_weights3_3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_3_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_3_d1_local = mul_1_reg_6114;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_3_d1_local = mul_11_2_reg_6306;
        end else begin
            delta_weights3_3_d1_local = 'bx;
        end
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_40_address1_local = zext_ln75_34_fu_4445_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_40_address1_local = zext_ln75_5_fu_3789_p1;
        end else begin
            delta_weights3_40_address1_local = 'bx;
        end
    end else begin
        delta_weights3_40_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_40_ce0_local = 1'b1;
    end else begin
        delta_weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_40_ce1_local = 1'b1;
    end else begin
        delta_weights3_40_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_40_d1_local = mul_13_1_reg_6336;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_40_d1_local = mul_2_2_reg_6144;
        end else begin
            delta_weights3_40_d1_local = 'bx;
        end
    end else begin
        delta_weights3_40_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_40_we0_local = 1'b1;
    end else begin
        delta_weights3_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_40_we1_local = 1'b1;
    end else begin
        delta_weights3_40_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_41_address1_local = zext_ln75_35_fu_4467_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_41_address1_local = zext_ln75_6_fu_3811_p1;
        end else begin
            delta_weights3_41_address1_local = 'bx;
        end
    end else begin
        delta_weights3_41_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_41_ce0_local = 1'b1;
    end else begin
        delta_weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_41_ce1_local = 1'b1;
    end else begin
        delta_weights3_41_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_41_d1_local = mul_13_2_reg_6342;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_41_d1_local = mul_3_reg_6150;
        end else begin
            delta_weights3_41_d1_local = 'bx;
        end
    end else begin
        delta_weights3_41_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_41_we0_local = 1'b1;
    end else begin
        delta_weights3_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_41_we1_local = 1'b1;
    end else begin
        delta_weights3_41_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_42_address1_local = zext_ln75_36_fu_4489_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_42_address1_local = zext_ln75_7_fu_3833_p1;
        end else begin
            delta_weights3_42_address1_local = 'bx;
        end
    end else begin
        delta_weights3_42_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_42_ce0_local = 1'b1;
    end else begin
        delta_weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_42_ce1_local = 1'b1;
    end else begin
        delta_weights3_42_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_42_d1_local = mul_14_reg_6348;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_42_d1_local = mul_3_1_reg_6156;
        end else begin
            delta_weights3_42_d1_local = 'bx;
        end
    end else begin
        delta_weights3_42_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_42_we0_local = 1'b1;
    end else begin
        delta_weights3_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_42_we1_local = 1'b1;
    end else begin
        delta_weights3_42_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_43_address1_local = zext_ln75_37_fu_4511_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_43_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_43_address1_local = 'bx;
        end
    end else begin
        delta_weights3_43_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_43_ce0_local = 1'b1;
    end else begin
        delta_weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_43_ce1_local = 1'b1;
    end else begin
        delta_weights3_43_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_43_d1_local = mul_14_1_reg_6354;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_43_d1_local = mul_3_2_reg_6162;
        end else begin
            delta_weights3_43_d1_local = 'bx;
        end
    end else begin
        delta_weights3_43_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_43_we0_local = 1'b1;
    end else begin
        delta_weights3_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_43_we1_local = 1'b1;
    end else begin
        delta_weights3_43_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_44_address1_local = zext_ln75_38_fu_4533_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_44_address1_local = zext_ln75_8_fu_3855_p1;
        end else begin
            delta_weights3_44_address1_local = 'bx;
        end
    end else begin
        delta_weights3_44_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_44_ce0_local = 1'b1;
    end else begin
        delta_weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_44_ce1_local = 1'b1;
    end else begin
        delta_weights3_44_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_44_d1_local = mul_14_2_reg_6360;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_44_d1_local = mul_4_reg_6168;
        end else begin
            delta_weights3_44_d1_local = 'bx;
        end
    end else begin
        delta_weights3_44_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_44_we0_local = 1'b1;
    end else begin
        delta_weights3_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_44_we1_local = 1'b1;
    end else begin
        delta_weights3_44_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_45_address1_local = zext_ln75_39_fu_4555_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_45_address1_local = zext_ln75_9_fu_3877_p1;
        end else begin
            delta_weights3_45_address1_local = 'bx;
        end
    end else begin
        delta_weights3_45_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_45_ce0_local = 1'b1;
    end else begin
        delta_weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_45_ce1_local = 1'b1;
    end else begin
        delta_weights3_45_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_45_d1_local = mul_15_reg_6366;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_45_d1_local = mul_4_1_reg_6174;
        end else begin
            delta_weights3_45_d1_local = 'bx;
        end
    end else begin
        delta_weights3_45_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_45_we0_local = 1'b1;
    end else begin
        delta_weights3_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_45_we1_local = 1'b1;
    end else begin
        delta_weights3_45_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_46_address1_local = zext_ln75_40_fu_4577_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_46_address1_local = zext_ln75_10_fu_3899_p1;
        end else begin
            delta_weights3_46_address1_local = 'bx;
        end
    end else begin
        delta_weights3_46_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_46_ce0_local = 1'b1;
    end else begin
        delta_weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_46_ce1_local = 1'b1;
    end else begin
        delta_weights3_46_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_46_d1_local = mul_15_1_reg_6372;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_46_d1_local = mul_4_2_reg_6180;
        end else begin
            delta_weights3_46_d1_local = 'bx;
        end
    end else begin
        delta_weights3_46_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_46_we0_local = 1'b1;
    end else begin
        delta_weights3_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_46_we1_local = 1'b1;
    end else begin
        delta_weights3_46_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_47_address1_local = zext_ln75_41_fu_4599_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_47_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_47_address1_local = 'bx;
        end
    end else begin
        delta_weights3_47_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_47_ce0_local = 1'b1;
    end else begin
        delta_weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_47_ce1_local = 1'b1;
    end else begin
        delta_weights3_47_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_47_d1_local = mul_15_2_reg_6378;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_47_d1_local = mul_5_reg_6186;
        end else begin
            delta_weights3_47_d1_local = 'bx;
        end
    end else begin
        delta_weights3_47_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_47_we0_local = 1'b1;
    end else begin
        delta_weights3_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_47_we1_local = 1'b1;
    end else begin
        delta_weights3_47_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_48_address1_local = zext_ln75_42_fu_4621_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_48_address1_local = zext_ln75_11_fu_3939_p1;
        end else begin
            delta_weights3_48_address1_local = 'bx;
        end
    end else begin
        delta_weights3_48_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_48_ce0_local = 1'b1;
    end else begin
        delta_weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_48_ce1_local = 1'b1;
    end else begin
        delta_weights3_48_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_48_d1_local = mul_16_reg_6384;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_48_d1_local = mul_5_1_reg_6192;
        end else begin
            delta_weights3_48_d1_local = 'bx;
        end
    end else begin
        delta_weights3_48_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_48_we0_local = 1'b1;
    end else begin
        delta_weights3_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_48_we1_local = 1'b1;
    end else begin
        delta_weights3_48_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_49_address1_local = zext_ln75_43_fu_4643_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_49_address1_local = zext_ln75_12_fu_3961_p1;
        end else begin
            delta_weights3_49_address1_local = 'bx;
        end
    end else begin
        delta_weights3_49_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_49_ce0_local = 1'b1;
    end else begin
        delta_weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_49_ce1_local = 1'b1;
    end else begin
        delta_weights3_49_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_49_d1_local = mul_16_1_reg_6390;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_49_d1_local = mul_5_2_reg_6198;
        end else begin
            delta_weights3_49_d1_local = 'bx;
        end
    end else begin
        delta_weights3_49_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_49_we0_local = 1'b1;
    end else begin
        delta_weights3_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_49_we1_local = 1'b1;
    end else begin
        delta_weights3_49_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_4_address1_local = zext_ln75_2_fu_3723_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_4_address1_local = zext_ln75_30_fu_4357_p1;
        end else begin
            delta_weights3_4_address1_local = 'bx;
        end
    end else begin
        delta_weights3_4_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_4_d1_local = mul_1_1_reg_6120;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_4_d1_local = mul_12_reg_6312;
        end else begin
            delta_weights3_4_d1_local = 'bx;
        end
    end else begin
        delta_weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_50_address1_local = zext_ln75_44_fu_4665_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_50_address1_local = zext_ln75_13_fu_3983_p1;
        end else begin
            delta_weights3_50_address1_local = 'bx;
        end
    end else begin
        delta_weights3_50_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_50_ce0_local = 1'b1;
    end else begin
        delta_weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_50_ce1_local = 1'b1;
    end else begin
        delta_weights3_50_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_50_d1_local = mul_16_2_reg_6396;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_50_d1_local = mul_6_reg_6204;
        end else begin
            delta_weights3_50_d1_local = 'bx;
        end
    end else begin
        delta_weights3_50_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_50_we0_local = 1'b1;
    end else begin
        delta_weights3_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_50_we1_local = 1'b1;
    end else begin
        delta_weights3_50_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_51_address1_local = zext_ln75_45_fu_4687_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_51_address1_local = zext_ln75_14_fu_4005_p1;
        end else begin
            delta_weights3_51_address1_local = 'bx;
        end
    end else begin
        delta_weights3_51_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_51_ce0_local = 1'b1;
    end else begin
        delta_weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_51_ce1_local = 1'b1;
    end else begin
        delta_weights3_51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_51_d1_local = mul_17_reg_6402;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_51_d1_local = mul_6_1_reg_6210;
        end else begin
            delta_weights3_51_d1_local = 'bx;
        end
    end else begin
        delta_weights3_51_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_51_we0_local = 1'b1;
    end else begin
        delta_weights3_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_51_we1_local = 1'b1;
    end else begin
        delta_weights3_51_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_52_address1_local = zext_ln75_46_fu_4709_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_52_address1_local = zext_ln75_15_fu_4027_p1;
        end else begin
            delta_weights3_52_address1_local = 'bx;
        end
    end else begin
        delta_weights3_52_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_52_ce0_local = 1'b1;
    end else begin
        delta_weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_52_ce1_local = 1'b1;
    end else begin
        delta_weights3_52_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_52_d1_local = mul_17_1_reg_6408;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_52_d1_local = mul_6_2_reg_6216;
        end else begin
            delta_weights3_52_d1_local = 'bx;
        end
    end else begin
        delta_weights3_52_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_52_we0_local = 1'b1;
    end else begin
        delta_weights3_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_52_we1_local = 1'b1;
    end else begin
        delta_weights3_52_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_53_address1_local = zext_ln75_47_fu_4731_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_53_address1_local = zext_ln75_16_fu_4049_p1;
        end else begin
            delta_weights3_53_address1_local = 'bx;
        end
    end else begin
        delta_weights3_53_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_53_ce0_local = 1'b1;
    end else begin
        delta_weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_53_ce1_local = 1'b1;
    end else begin
        delta_weights3_53_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_53_d1_local = mul_17_2_reg_6414;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_53_d1_local = mul_7_reg_6222;
        end else begin
            delta_weights3_53_d1_local = 'bx;
        end
    end else begin
        delta_weights3_53_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_53_we0_local = 1'b1;
    end else begin
        delta_weights3_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_53_we1_local = 1'b1;
    end else begin
        delta_weights3_53_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_54_address1_local = zext_ln75_48_fu_4753_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_54_address1_local = zext_ln75_17_fu_4071_p1;
        end else begin
            delta_weights3_54_address1_local = 'bx;
        end
    end else begin
        delta_weights3_54_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_54_ce0_local = 1'b1;
    end else begin
        delta_weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_54_ce1_local = 1'b1;
    end else begin
        delta_weights3_54_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_54_d1_local = mul_18_reg_6420;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_54_d1_local = mul_7_1_reg_6228;
        end else begin
            delta_weights3_54_d1_local = 'bx;
        end
    end else begin
        delta_weights3_54_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_54_we0_local = 1'b1;
    end else begin
        delta_weights3_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_54_we1_local = 1'b1;
    end else begin
        delta_weights3_54_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_55_address1_local = zext_ln75_49_fu_4775_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_55_address1_local = zext_ln75_18_fu_4093_p1;
        end else begin
            delta_weights3_55_address1_local = 'bx;
        end
    end else begin
        delta_weights3_55_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_55_ce0_local = 1'b1;
    end else begin
        delta_weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_55_ce1_local = 1'b1;
    end else begin
        delta_weights3_55_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_55_d1_local = mul_18_1_reg_6426;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_55_d1_local = mul_7_2_reg_6234;
        end else begin
            delta_weights3_55_d1_local = 'bx;
        end
    end else begin
        delta_weights3_55_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_55_we0_local = 1'b1;
    end else begin
        delta_weights3_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_55_we1_local = 1'b1;
    end else begin
        delta_weights3_55_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_56_address1_local = zext_ln75_50_fu_4797_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_56_address1_local = zext_ln75_19_fu_4115_p1;
        end else begin
            delta_weights3_56_address1_local = 'bx;
        end
    end else begin
        delta_weights3_56_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_56_ce0_local = 1'b1;
    end else begin
        delta_weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_56_ce1_local = 1'b1;
    end else begin
        delta_weights3_56_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_56_d1_local = mul_18_2_reg_6432;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_56_d1_local = mul_8_reg_6240;
        end else begin
            delta_weights3_56_d1_local = 'bx;
        end
    end else begin
        delta_weights3_56_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_56_we0_local = 1'b1;
    end else begin
        delta_weights3_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_56_we1_local = 1'b1;
    end else begin
        delta_weights3_56_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_57_address1_local = zext_ln75_51_fu_4819_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_57_address1_local = zext_ln75_20_fu_4137_p1;
        end else begin
            delta_weights3_57_address1_local = 'bx;
        end
    end else begin
        delta_weights3_57_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_57_ce0_local = 1'b1;
    end else begin
        delta_weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_57_ce1_local = 1'b1;
    end else begin
        delta_weights3_57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_57_d1_local = mul_19_reg_6438;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_57_d1_local = mul_8_1_reg_6246;
        end else begin
            delta_weights3_57_d1_local = 'bx;
        end
    end else begin
        delta_weights3_57_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_57_we0_local = 1'b1;
    end else begin
        delta_weights3_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_57_we1_local = 1'b1;
    end else begin
        delta_weights3_57_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_58_address1_local = zext_ln75_52_fu_4841_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_58_address1_local = zext_ln75_21_fu_4159_p1;
        end else begin
            delta_weights3_58_address1_local = 'bx;
        end
    end else begin
        delta_weights3_58_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_58_ce0_local = 1'b1;
    end else begin
        delta_weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_58_ce1_local = 1'b1;
    end else begin
        delta_weights3_58_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_58_d1_local = mul_19_1_reg_6444;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_58_d1_local = mul_8_2_reg_6252;
        end else begin
            delta_weights3_58_d1_local = 'bx;
        end
    end else begin
        delta_weights3_58_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_58_we0_local = 1'b1;
    end else begin
        delta_weights3_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_58_we1_local = 1'b1;
    end else begin
        delta_weights3_58_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_59_address1_local = zext_ln75_53_fu_4863_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_59_address1_local = zext_ln75_22_fu_4181_p1;
        end else begin
            delta_weights3_59_address1_local = 'bx;
        end
    end else begin
        delta_weights3_59_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_59_ce0_local = 1'b1;
    end else begin
        delta_weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_59_ce1_local = 1'b1;
    end else begin
        delta_weights3_59_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_59_d1_local = mul_19_2_reg_6450;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_59_d1_local = mul_9_reg_6258;
        end else begin
            delta_weights3_59_d1_local = 'bx;
        end
    end else begin
        delta_weights3_59_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_59_we0_local = 1'b1;
    end else begin
        delta_weights3_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_59_we1_local = 1'b1;
    end else begin
        delta_weights3_59_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_5_address1_local = zext_ln75_3_fu_3745_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_5_address1_local = zext_ln75_31_fu_4379_p1;
        end else begin
            delta_weights3_5_address1_local = 'bx;
        end
    end else begin
        delta_weights3_5_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_5_d1_local = mul_1_2_reg_6126;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_5_d1_local = mul_12_1_reg_6318;
        end else begin
            delta_weights3_5_d1_local = 'bx;
        end
    end else begin
        delta_weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_60_address1_local = zext_ln75_54_fu_4885_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_60_address1_local = zext_ln75_23_fu_4203_p1;
        end else begin
            delta_weights3_60_address1_local = 'bx;
        end
    end else begin
        delta_weights3_60_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_60_ce0_local = 1'b1;
    end else begin
        delta_weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_60_ce1_local = 1'b1;
    end else begin
        delta_weights3_60_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_60_d1_local = mul_20_reg_6456;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_60_d1_local = mul_9_1_reg_6264;
        end else begin
            delta_weights3_60_d1_local = 'bx;
        end
    end else begin
        delta_weights3_60_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_60_we0_local = 1'b1;
    end else begin
        delta_weights3_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_60_we1_local = 1'b1;
    end else begin
        delta_weights3_60_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_61_address1_local = zext_ln75_55_fu_4907_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_61_address1_local = zext_ln75_24_fu_4225_p1;
        end else begin
            delta_weights3_61_address1_local = 'bx;
        end
    end else begin
        delta_weights3_61_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_61_ce0_local = 1'b1;
    end else begin
        delta_weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_61_ce1_local = 1'b1;
    end else begin
        delta_weights3_61_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_61_d1_local = mul_20_1_reg_6462;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_61_d1_local = mul_9_2_reg_6270;
        end else begin
            delta_weights3_61_d1_local = 'bx;
        end
    end else begin
        delta_weights3_61_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_61_we0_local = 1'b1;
    end else begin
        delta_weights3_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_61_we1_local = 1'b1;
    end else begin
        delta_weights3_61_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_62_address1_local = zext_ln75_56_fu_4929_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_62_address1_local = zext_ln75_25_fu_4247_p1;
        end else begin
            delta_weights3_62_address1_local = 'bx;
        end
    end else begin
        delta_weights3_62_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_62_ce0_local = 1'b1;
    end else begin
        delta_weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_62_ce1_local = 1'b1;
    end else begin
        delta_weights3_62_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_62_d1_local = mul_20_2_reg_6468;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_62_d1_local = mul_10_reg_6276;
        end else begin
            delta_weights3_62_d1_local = 'bx;
        end
    end else begin
        delta_weights3_62_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_62_we0_local = 1'b1;
    end else begin
        delta_weights3_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_62_we1_local = 1'b1;
    end else begin
        delta_weights3_62_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_63_address1_local = zext_ln75_57_fu_4951_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_63_address1_local = zext_ln75_1_fu_3669_p1;
        end else begin
            delta_weights3_63_address1_local = 'bx;
        end
    end else begin
        delta_weights3_63_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_63_ce0_local = 1'b1;
    end else begin
        delta_weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_63_ce1_local = 1'b1;
    end else begin
        delta_weights3_63_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_63_d1_local = mul_21_reg_6474;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_63_d1_local = mul_10_1_reg_6282;
        end else begin
            delta_weights3_63_d1_local = 'bx;
        end
    end else begin
        delta_weights3_63_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd0))) begin
        delta_weights3_63_we0_local = 1'b1;
    end else begin
        delta_weights3_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_63_we1_local = 1'b1;
    end else begin
        delta_weights3_63_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_6_address1_local = zext_ln75_4_fu_3767_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_6_address1_local = zext_ln75_32_fu_4401_p1;
        end else begin
            delta_weights3_6_address1_local = 'bx;
        end
    end else begin
        delta_weights3_6_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_6_d1_local = mul_2_reg_6132;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_6_d1_local = mul_12_2_reg_6324;
        end else begin
            delta_weights3_6_d1_local = 'bx;
        end
    end else begin
        delta_weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_7_address1_local = zext_ln75_1_fu_3669_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_7_address1_local = zext_ln75_33_fu_4423_p1;
        end else begin
            delta_weights3_7_address1_local = 'bx;
        end
    end else begin
        delta_weights3_7_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_7_d1_local = mul_2_1_reg_6138;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_7_d1_local = mul_13_reg_6330;
        end else begin
            delta_weights3_7_d1_local = 'bx;
        end
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_8_address1_local = zext_ln75_5_fu_3789_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_8_address1_local = zext_ln75_34_fu_4445_p1;
        end else begin
            delta_weights3_8_address1_local = 'bx;
        end
    end else begin
        delta_weights3_8_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_8_d1_local = mul_2_2_reg_6144;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_8_d1_local = mul_13_1_reg_6336;
        end else begin
            delta_weights3_8_d1_local = 'bx;
        end
    end else begin
        delta_weights3_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_9_address1_local = zext_ln75_6_fu_3811_p1;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_9_address1_local = zext_ln75_35_fu_4467_p1;
        end else begin
            delta_weights3_9_address1_local = 'bx;
        end
    end else begin
        delta_weights3_9_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) begin
            delta_weights3_9_d1_local = mul_3_reg_6150;
        end else if ((icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)) begin
            delta_weights3_9_d1_local = mul_13_2_reg_6342;
        end else begin
            delta_weights3_9_d1_local = 'bx;
        end
    end else begin
        delta_weights3_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln75_reg_6022_pp0_iter7_reg == 1'd0)))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
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
assign add_ln73_fu_3578_p2 = (ap_sig_allocacmp_i_13 + 7'd32);
assign add_ln75_10_fu_4055_p2 = (tmp_31_fu_3915_p3 + 8'd7);
assign add_ln75_11_fu_4077_p2 = (tmp_31_fu_3915_p3 + 8'd8);
assign add_ln75_12_fu_4121_p2 = (tmp_31_fu_3915_p3 + 8'd10);
assign add_ln75_13_fu_4143_p2 = (tmp_31_fu_3915_p3 + 8'd11);
assign add_ln75_14_fu_4187_p2 = (tmp_31_fu_3915_p3 + 8'd13);
assign add_ln75_15_fu_4209_p2 = (tmp_31_fu_3915_p3 + 8'd14);
assign add_ln75_16_fu_4253_p2 = (tmp_31_fu_3915_p3 + 8'd17);
assign add_ln75_17_fu_4297_p2 = (tmp_31_fu_3915_p3 + 8'd19);
assign add_ln75_18_fu_4319_p2 = (tmp_31_fu_3915_p3 + 8'd20);
assign add_ln75_19_fu_4363_p2 = (tmp_31_fu_3915_p3 + 8'd22);
assign add_ln75_1_fu_3729_p2 = (tmp_29_fu_3699_p3 + 8'd2);
assign add_ln75_20_fu_4385_p2 = (tmp_31_fu_3915_p3 + 8'd23);
assign add_ln75_21_fu_4429_p2 = (tmp_31_fu_3915_p3 + 8'd25);
assign add_ln75_22_fu_4451_p2 = (tmp_31_fu_3915_p3 + 8'd26);
assign add_ln75_23_fu_4495_p2 = (tmp_31_fu_3915_p3 + 8'd28);
assign add_ln75_24_fu_4517_p2 = (tmp_31_fu_3915_p3 + 8'd29);
assign add_ln75_25_fu_4561_p2 = (tmp_31_fu_3915_p3 + 8'd31);
assign add_ln75_26_fu_4583_p2 = (tmp_31_fu_3915_p3 + 8'd32);
assign add_ln75_27_fu_4627_p2 = (tmp_31_fu_3915_p3 + 8'd34);
assign add_ln75_28_fu_4649_p2 = (tmp_31_fu_3915_p3 + 8'd35);
assign add_ln75_29_fu_4693_p2 = (tmp_31_fu_3915_p3 + 8'd37);
assign add_ln75_2_fu_3773_p2 = (tmp_29_fu_3699_p3 + 8'd5);
assign add_ln75_30_fu_4715_p2 = (tmp_31_fu_3915_p3 + 8'd38);
assign add_ln75_31_fu_4759_p2 = (tmp_31_fu_3915_p3 + 8'd40);
assign add_ln75_32_fu_4781_p2 = (tmp_31_fu_3915_p3 + 8'd41);
assign add_ln75_33_fu_4825_p2 = (tmp_31_fu_3915_p3 + 8'd43);
assign add_ln75_34_fu_4847_p2 = (tmp_31_fu_3915_p3 + 8'd44);
assign add_ln75_35_fu_4891_p2 = (tmp_31_fu_3915_p3 + 8'd46);
assign add_ln75_36_fu_4913_p2 = (tmp_31_fu_3915_p3 + 8'd47);
assign add_ln75_37_fu_4957_p2 = (tmp_31_reg_6480 + 8'd49);
assign add_ln75_38_fu_4978_p2 = (tmp_31_reg_6480 + 8'd50);
assign add_ln75_39_fu_5020_p2 = (tmp_31_reg_6480 + 8'd52);
assign add_ln75_3_fu_3817_p2 = (tmp_29_fu_3699_p3 + 8'd7);
assign add_ln75_40_fu_5041_p2 = (tmp_31_reg_6480 + 8'd53);
assign add_ln75_41_fu_5083_p2 = (tmp_31_reg_6480 + 8'd55);
assign add_ln75_42_fu_5104_p2 = (tmp_31_reg_6480 + 8'd56);
assign add_ln75_43_fu_5146_p2 = (tmp_31_reg_6480 + 8'd58);
assign add_ln75_44_fu_5167_p2 = (tmp_31_reg_6480 + 8'd59);
assign add_ln75_45_fu_5209_p2 = (tmp_31_reg_6480 + 8'd61);
assign add_ln75_46_fu_5230_p2 = (tmp_31_reg_6480 + 8'd62);
assign add_ln75_47_fu_5272_p2 = (tmp_31_reg_6480 + 8'd64);
assign add_ln75_48_fu_5293_p2 = (tmp_31_reg_6480 + 8'd65);
assign add_ln75_49_fu_5335_p2 = (tmp_31_reg_6480 + 8'd67);
assign add_ln75_4_fu_3861_p2 = (tmp_29_fu_3699_p3 + 8'd10);
assign add_ln75_50_fu_5356_p2 = (tmp_31_reg_6480 + 8'd68);
assign add_ln75_51_fu_5398_p2 = (tmp_31_reg_6480 + 8'd70);
assign add_ln75_52_fu_5419_p2 = (tmp_31_reg_6480 + 8'd71);
assign add_ln75_53_fu_5461_p2 = (tmp_31_reg_6480 + 8'd73);
assign add_ln75_54_fu_5482_p2 = (tmp_31_reg_6480 + 8'd74);
assign add_ln75_55_fu_5524_p2 = (tmp_31_reg_6480 + 8'd76);
assign add_ln75_56_fu_5545_p2 = (tmp_31_reg_6480 + 8'd77);
assign add_ln75_57_fu_5587_p2 = (tmp_31_reg_6480 + 8'd79);
assign add_ln75_58_fu_5608_p2 = (tmp_31_reg_6480 + 8'd80);
assign add_ln75_5_fu_3883_p2 = (tmp_29_fu_3699_p3 + 8'd11);
assign add_ln75_6_fu_3923_p2 = (tmp_31_fu_3915_p3 + 8'd1);
assign add_ln75_7_fu_3945_p2 = (tmp_31_fu_3915_p3 + 8'd2);
assign add_ln75_8_fu_3989_p2 = (tmp_31_fu_3915_p3 + 8'd4);
assign add_ln75_9_fu_4011_p2 = (tmp_31_fu_3915_p3 + 8'd5);
assign add_ln75_fu_3707_p2 = (tmp_29_fu_3699_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = zext_ln75_58_fu_4972_p1;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = mul_21_1_reg_6516;
assign delta_weights3_0_d1 = delta_weights3_0_d1_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = zext_ln75_68_fu_5182_p1;
assign delta_weights3_10_address1 = delta_weights3_10_address1_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = mul_24_2_reg_6576;
assign delta_weights3_10_d1 = delta_weights3_10_d1_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = zext_ln75_69_fu_5203_p1;
assign delta_weights3_11_address1 = delta_weights3_11_address1_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = mul_25_reg_6582;
assign delta_weights3_11_d1 = delta_weights3_11_d1_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = zext_ln75_70_fu_5224_p1;
assign delta_weights3_12_address1 = delta_weights3_12_address1_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = mul_25_1_reg_6588;
assign delta_weights3_12_d1 = delta_weights3_12_d1_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = zext_ln75_71_fu_5245_p1;
assign delta_weights3_13_address1 = delta_weights3_13_address1_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = mul_25_2_reg_6594;
assign delta_weights3_13_d1 = delta_weights3_13_d1_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = zext_ln75_72_fu_5266_p1;
assign delta_weights3_14_address1 = delta_weights3_14_address1_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = mul_26_reg_6600;
assign delta_weights3_14_d1 = delta_weights3_14_d1_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = zext_ln75_73_fu_5287_p1;
assign delta_weights3_15_address1 = delta_weights3_15_address1_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = mul_26_1_reg_6606;
assign delta_weights3_15_d1 = delta_weights3_15_d1_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = zext_ln75_74_fu_5308_p1;
assign delta_weights3_16_address1 = delta_weights3_16_address1_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = mul_26_2_reg_6612;
assign delta_weights3_16_d1 = delta_weights3_16_d1_local;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = zext_ln75_75_fu_5329_p1;
assign delta_weights3_17_address1 = delta_weights3_17_address1_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = mul_27_reg_6618;
assign delta_weights3_17_d1 = delta_weights3_17_d1_local;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = zext_ln75_76_fu_5350_p1;
assign delta_weights3_18_address1 = delta_weights3_18_address1_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = mul_27_1_reg_6624;
assign delta_weights3_18_d1 = delta_weights3_18_d1_local;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = zext_ln75_77_fu_5371_p1;
assign delta_weights3_19_address1 = delta_weights3_19_address1_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = mul_27_2_reg_6630;
assign delta_weights3_19_d1 = delta_weights3_19_d1_local;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = zext_ln75_59_fu_4993_p1;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_21_2_reg_6522;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = zext_ln75_78_fu_5392_p1;
assign delta_weights3_20_address1 = delta_weights3_20_address1_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = mul_28_reg_6636;
assign delta_weights3_20_d1 = delta_weights3_20_d1_local;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = zext_ln75_79_fu_5413_p1;
assign delta_weights3_21_address1 = delta_weights3_21_address1_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = mul_28_1_reg_6642;
assign delta_weights3_21_d1 = delta_weights3_21_d1_local;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = zext_ln75_80_fu_5434_p1;
assign delta_weights3_22_address1 = delta_weights3_22_address1_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = mul_28_2_reg_6648;
assign delta_weights3_22_d1 = delta_weights3_22_d1_local;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = zext_ln75_81_fu_5455_p1;
assign delta_weights3_23_address1 = delta_weights3_23_address1_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = mul_29_reg_6654;
assign delta_weights3_23_d1 = delta_weights3_23_d1_local;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_24_address0 = zext_ln75_82_fu_5476_p1;
assign delta_weights3_24_address1 = delta_weights3_24_address1_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_ce1 = delta_weights3_24_ce1_local;
assign delta_weights3_24_d0 = mul_29_1_reg_6660;
assign delta_weights3_24_d1 = delta_weights3_24_d1_local;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_24_we1 = delta_weights3_24_we1_local;
assign delta_weights3_25_address0 = zext_ln75_83_fu_5497_p1;
assign delta_weights3_25_address1 = delta_weights3_25_address1_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_ce1 = delta_weights3_25_ce1_local;
assign delta_weights3_25_d0 = mul_29_2_reg_6666;
assign delta_weights3_25_d1 = delta_weights3_25_d1_local;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_25_we1 = delta_weights3_25_we1_local;
assign delta_weights3_26_address0 = zext_ln75_84_fu_5518_p1;
assign delta_weights3_26_address1 = delta_weights3_26_address1_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_ce1 = delta_weights3_26_ce1_local;
assign delta_weights3_26_d0 = mul_30_reg_6672;
assign delta_weights3_26_d1 = delta_weights3_26_d1_local;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_26_we1 = delta_weights3_26_we1_local;
assign delta_weights3_27_address0 = zext_ln75_85_fu_5539_p1;
assign delta_weights3_27_address1 = delta_weights3_27_address1_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_ce1 = delta_weights3_27_ce1_local;
assign delta_weights3_27_d0 = mul_30_1_reg_6678;
assign delta_weights3_27_d1 = delta_weights3_27_d1_local;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_27_we1 = delta_weights3_27_we1_local;
assign delta_weights3_28_address0 = zext_ln75_86_fu_5560_p1;
assign delta_weights3_28_address1 = delta_weights3_28_address1_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_ce1 = delta_weights3_28_ce1_local;
assign delta_weights3_28_d0 = mul_30_2_reg_6684;
assign delta_weights3_28_d1 = delta_weights3_28_d1_local;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_28_we1 = delta_weights3_28_we1_local;
assign delta_weights3_29_address0 = zext_ln75_87_fu_5581_p1;
assign delta_weights3_29_address1 = delta_weights3_29_address1_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_ce1 = delta_weights3_29_ce1_local;
assign delta_weights3_29_d0 = mul_31_reg_6690;
assign delta_weights3_29_d1 = delta_weights3_29_d1_local;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_29_we1 = delta_weights3_29_we1_local;
assign delta_weights3_2_address0 = zext_ln75_60_fu_5014_p1;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_22_reg_6528;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_30_address0 = zext_ln75_88_fu_5602_p1;
assign delta_weights3_30_address1 = delta_weights3_30_address1_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_ce1 = delta_weights3_30_ce1_local;
assign delta_weights3_30_d0 = mul_31_1_reg_6696;
assign delta_weights3_30_d1 = delta_weights3_30_d1_local;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_30_we1 = delta_weights3_30_we1_local;
assign delta_weights3_31_address0 = zext_ln75_89_fu_5623_p1;
assign delta_weights3_31_address1 = delta_weights3_31_address1_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_ce1 = delta_weights3_31_ce1_local;
assign delta_weights3_31_d0 = mul_31_2_reg_6702;
assign delta_weights3_31_d1 = delta_weights3_31_d1_local;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_31_we1 = delta_weights3_31_we1_local;
assign delta_weights3_32_address0 = zext_ln75_58_fu_4972_p1;
assign delta_weights3_32_address1 = delta_weights3_32_address1_local;
assign delta_weights3_32_ce0 = delta_weights3_32_ce0_local;
assign delta_weights3_32_ce1 = delta_weights3_32_ce1_local;
assign delta_weights3_32_d0 = mul_21_1_reg_6516;
assign delta_weights3_32_d1 = delta_weights3_32_d1_local;
assign delta_weights3_32_we0 = delta_weights3_32_we0_local;
assign delta_weights3_32_we1 = delta_weights3_32_we1_local;
assign delta_weights3_33_address0 = zext_ln75_59_fu_4993_p1;
assign delta_weights3_33_address1 = delta_weights3_33_address1_local;
assign delta_weights3_33_ce0 = delta_weights3_33_ce0_local;
assign delta_weights3_33_ce1 = delta_weights3_33_ce1_local;
assign delta_weights3_33_d0 = mul_21_2_reg_6522;
assign delta_weights3_33_d1 = delta_weights3_33_d1_local;
assign delta_weights3_33_we0 = delta_weights3_33_we0_local;
assign delta_weights3_33_we1 = delta_weights3_33_we1_local;
assign delta_weights3_34_address0 = zext_ln75_60_fu_5014_p1;
assign delta_weights3_34_address1 = delta_weights3_34_address1_local;
assign delta_weights3_34_ce0 = delta_weights3_34_ce0_local;
assign delta_weights3_34_ce1 = delta_weights3_34_ce1_local;
assign delta_weights3_34_d0 = mul_22_reg_6528;
assign delta_weights3_34_d1 = delta_weights3_34_d1_local;
assign delta_weights3_34_we0 = delta_weights3_34_we0_local;
assign delta_weights3_34_we1 = delta_weights3_34_we1_local;
assign delta_weights3_35_address0 = zext_ln75_61_fu_5035_p1;
assign delta_weights3_35_address1 = delta_weights3_35_address1_local;
assign delta_weights3_35_ce0 = delta_weights3_35_ce0_local;
assign delta_weights3_35_ce1 = delta_weights3_35_ce1_local;
assign delta_weights3_35_d0 = mul_22_1_reg_6534;
assign delta_weights3_35_d1 = delta_weights3_35_d1_local;
assign delta_weights3_35_we0 = delta_weights3_35_we0_local;
assign delta_weights3_35_we1 = delta_weights3_35_we1_local;
assign delta_weights3_36_address0 = zext_ln75_62_fu_5056_p1;
assign delta_weights3_36_address1 = delta_weights3_36_address1_local;
assign delta_weights3_36_ce0 = delta_weights3_36_ce0_local;
assign delta_weights3_36_ce1 = delta_weights3_36_ce1_local;
assign delta_weights3_36_d0 = mul_22_2_reg_6540;
assign delta_weights3_36_d1 = delta_weights3_36_d1_local;
assign delta_weights3_36_we0 = delta_weights3_36_we0_local;
assign delta_weights3_36_we1 = delta_weights3_36_we1_local;
assign delta_weights3_37_address0 = zext_ln75_63_fu_5077_p1;
assign delta_weights3_37_address1 = delta_weights3_37_address1_local;
assign delta_weights3_37_ce0 = delta_weights3_37_ce0_local;
assign delta_weights3_37_ce1 = delta_weights3_37_ce1_local;
assign delta_weights3_37_d0 = mul_23_reg_6546;
assign delta_weights3_37_d1 = delta_weights3_37_d1_local;
assign delta_weights3_37_we0 = delta_weights3_37_we0_local;
assign delta_weights3_37_we1 = delta_weights3_37_we1_local;
assign delta_weights3_38_address0 = zext_ln75_64_fu_5098_p1;
assign delta_weights3_38_address1 = delta_weights3_38_address1_local;
assign delta_weights3_38_ce0 = delta_weights3_38_ce0_local;
assign delta_weights3_38_ce1 = delta_weights3_38_ce1_local;
assign delta_weights3_38_d0 = mul_23_1_reg_6552;
assign delta_weights3_38_d1 = delta_weights3_38_d1_local;
assign delta_weights3_38_we0 = delta_weights3_38_we0_local;
assign delta_weights3_38_we1 = delta_weights3_38_we1_local;
assign delta_weights3_39_address0 = zext_ln75_65_fu_5119_p1;
assign delta_weights3_39_address1 = delta_weights3_39_address1_local;
assign delta_weights3_39_ce0 = delta_weights3_39_ce0_local;
assign delta_weights3_39_ce1 = delta_weights3_39_ce1_local;
assign delta_weights3_39_d0 = mul_23_2_reg_6558;
assign delta_weights3_39_d1 = delta_weights3_39_d1_local;
assign delta_weights3_39_we0 = delta_weights3_39_we0_local;
assign delta_weights3_39_we1 = delta_weights3_39_we1_local;
assign delta_weights3_3_address0 = zext_ln75_61_fu_5035_p1;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_22_1_reg_6534;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_40_address0 = zext_ln75_66_fu_5140_p1;
assign delta_weights3_40_address1 = delta_weights3_40_address1_local;
assign delta_weights3_40_ce0 = delta_weights3_40_ce0_local;
assign delta_weights3_40_ce1 = delta_weights3_40_ce1_local;
assign delta_weights3_40_d0 = mul_24_reg_6564;
assign delta_weights3_40_d1 = delta_weights3_40_d1_local;
assign delta_weights3_40_we0 = delta_weights3_40_we0_local;
assign delta_weights3_40_we1 = delta_weights3_40_we1_local;
assign delta_weights3_41_address0 = zext_ln75_67_fu_5161_p1;
assign delta_weights3_41_address1 = delta_weights3_41_address1_local;
assign delta_weights3_41_ce0 = delta_weights3_41_ce0_local;
assign delta_weights3_41_ce1 = delta_weights3_41_ce1_local;
assign delta_weights3_41_d0 = mul_24_1_reg_6570;
assign delta_weights3_41_d1 = delta_weights3_41_d1_local;
assign delta_weights3_41_we0 = delta_weights3_41_we0_local;
assign delta_weights3_41_we1 = delta_weights3_41_we1_local;
assign delta_weights3_42_address0 = zext_ln75_68_fu_5182_p1;
assign delta_weights3_42_address1 = delta_weights3_42_address1_local;
assign delta_weights3_42_ce0 = delta_weights3_42_ce0_local;
assign delta_weights3_42_ce1 = delta_weights3_42_ce1_local;
assign delta_weights3_42_d0 = mul_24_2_reg_6576;
assign delta_weights3_42_d1 = delta_weights3_42_d1_local;
assign delta_weights3_42_we0 = delta_weights3_42_we0_local;
assign delta_weights3_42_we1 = delta_weights3_42_we1_local;
assign delta_weights3_43_address0 = zext_ln75_69_fu_5203_p1;
assign delta_weights3_43_address1 = delta_weights3_43_address1_local;
assign delta_weights3_43_ce0 = delta_weights3_43_ce0_local;
assign delta_weights3_43_ce1 = delta_weights3_43_ce1_local;
assign delta_weights3_43_d0 = mul_25_reg_6582;
assign delta_weights3_43_d1 = delta_weights3_43_d1_local;
assign delta_weights3_43_we0 = delta_weights3_43_we0_local;
assign delta_weights3_43_we1 = delta_weights3_43_we1_local;
assign delta_weights3_44_address0 = zext_ln75_70_fu_5224_p1;
assign delta_weights3_44_address1 = delta_weights3_44_address1_local;
assign delta_weights3_44_ce0 = delta_weights3_44_ce0_local;
assign delta_weights3_44_ce1 = delta_weights3_44_ce1_local;
assign delta_weights3_44_d0 = mul_25_1_reg_6588;
assign delta_weights3_44_d1 = delta_weights3_44_d1_local;
assign delta_weights3_44_we0 = delta_weights3_44_we0_local;
assign delta_weights3_44_we1 = delta_weights3_44_we1_local;
assign delta_weights3_45_address0 = zext_ln75_71_fu_5245_p1;
assign delta_weights3_45_address1 = delta_weights3_45_address1_local;
assign delta_weights3_45_ce0 = delta_weights3_45_ce0_local;
assign delta_weights3_45_ce1 = delta_weights3_45_ce1_local;
assign delta_weights3_45_d0 = mul_25_2_reg_6594;
assign delta_weights3_45_d1 = delta_weights3_45_d1_local;
assign delta_weights3_45_we0 = delta_weights3_45_we0_local;
assign delta_weights3_45_we1 = delta_weights3_45_we1_local;
assign delta_weights3_46_address0 = zext_ln75_72_fu_5266_p1;
assign delta_weights3_46_address1 = delta_weights3_46_address1_local;
assign delta_weights3_46_ce0 = delta_weights3_46_ce0_local;
assign delta_weights3_46_ce1 = delta_weights3_46_ce1_local;
assign delta_weights3_46_d0 = mul_26_reg_6600;
assign delta_weights3_46_d1 = delta_weights3_46_d1_local;
assign delta_weights3_46_we0 = delta_weights3_46_we0_local;
assign delta_weights3_46_we1 = delta_weights3_46_we1_local;
assign delta_weights3_47_address0 = zext_ln75_73_fu_5287_p1;
assign delta_weights3_47_address1 = delta_weights3_47_address1_local;
assign delta_weights3_47_ce0 = delta_weights3_47_ce0_local;
assign delta_weights3_47_ce1 = delta_weights3_47_ce1_local;
assign delta_weights3_47_d0 = mul_26_1_reg_6606;
assign delta_weights3_47_d1 = delta_weights3_47_d1_local;
assign delta_weights3_47_we0 = delta_weights3_47_we0_local;
assign delta_weights3_47_we1 = delta_weights3_47_we1_local;
assign delta_weights3_48_address0 = zext_ln75_74_fu_5308_p1;
assign delta_weights3_48_address1 = delta_weights3_48_address1_local;
assign delta_weights3_48_ce0 = delta_weights3_48_ce0_local;
assign delta_weights3_48_ce1 = delta_weights3_48_ce1_local;
assign delta_weights3_48_d0 = mul_26_2_reg_6612;
assign delta_weights3_48_d1 = delta_weights3_48_d1_local;
assign delta_weights3_48_we0 = delta_weights3_48_we0_local;
assign delta_weights3_48_we1 = delta_weights3_48_we1_local;
assign delta_weights3_49_address0 = zext_ln75_75_fu_5329_p1;
assign delta_weights3_49_address1 = delta_weights3_49_address1_local;
assign delta_weights3_49_ce0 = delta_weights3_49_ce0_local;
assign delta_weights3_49_ce1 = delta_weights3_49_ce1_local;
assign delta_weights3_49_d0 = mul_27_reg_6618;
assign delta_weights3_49_d1 = delta_weights3_49_d1_local;
assign delta_weights3_49_we0 = delta_weights3_49_we0_local;
assign delta_weights3_49_we1 = delta_weights3_49_we1_local;
assign delta_weights3_4_address0 = zext_ln75_62_fu_5056_p1;
assign delta_weights3_4_address1 = delta_weights3_4_address1_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = mul_22_2_reg_6540;
assign delta_weights3_4_d1 = delta_weights3_4_d1_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_50_address0 = zext_ln75_76_fu_5350_p1;
assign delta_weights3_50_address1 = delta_weights3_50_address1_local;
assign delta_weights3_50_ce0 = delta_weights3_50_ce0_local;
assign delta_weights3_50_ce1 = delta_weights3_50_ce1_local;
assign delta_weights3_50_d0 = mul_27_1_reg_6624;
assign delta_weights3_50_d1 = delta_weights3_50_d1_local;
assign delta_weights3_50_we0 = delta_weights3_50_we0_local;
assign delta_weights3_50_we1 = delta_weights3_50_we1_local;
assign delta_weights3_51_address0 = zext_ln75_77_fu_5371_p1;
assign delta_weights3_51_address1 = delta_weights3_51_address1_local;
assign delta_weights3_51_ce0 = delta_weights3_51_ce0_local;
assign delta_weights3_51_ce1 = delta_weights3_51_ce1_local;
assign delta_weights3_51_d0 = mul_27_2_reg_6630;
assign delta_weights3_51_d1 = delta_weights3_51_d1_local;
assign delta_weights3_51_we0 = delta_weights3_51_we0_local;
assign delta_weights3_51_we1 = delta_weights3_51_we1_local;
assign delta_weights3_52_address0 = zext_ln75_78_fu_5392_p1;
assign delta_weights3_52_address1 = delta_weights3_52_address1_local;
assign delta_weights3_52_ce0 = delta_weights3_52_ce0_local;
assign delta_weights3_52_ce1 = delta_weights3_52_ce1_local;
assign delta_weights3_52_d0 = mul_28_reg_6636;
assign delta_weights3_52_d1 = delta_weights3_52_d1_local;
assign delta_weights3_52_we0 = delta_weights3_52_we0_local;
assign delta_weights3_52_we1 = delta_weights3_52_we1_local;
assign delta_weights3_53_address0 = zext_ln75_79_fu_5413_p1;
assign delta_weights3_53_address1 = delta_weights3_53_address1_local;
assign delta_weights3_53_ce0 = delta_weights3_53_ce0_local;
assign delta_weights3_53_ce1 = delta_weights3_53_ce1_local;
assign delta_weights3_53_d0 = mul_28_1_reg_6642;
assign delta_weights3_53_d1 = delta_weights3_53_d1_local;
assign delta_weights3_53_we0 = delta_weights3_53_we0_local;
assign delta_weights3_53_we1 = delta_weights3_53_we1_local;
assign delta_weights3_54_address0 = zext_ln75_80_fu_5434_p1;
assign delta_weights3_54_address1 = delta_weights3_54_address1_local;
assign delta_weights3_54_ce0 = delta_weights3_54_ce0_local;
assign delta_weights3_54_ce1 = delta_weights3_54_ce1_local;
assign delta_weights3_54_d0 = mul_28_2_reg_6648;
assign delta_weights3_54_d1 = delta_weights3_54_d1_local;
assign delta_weights3_54_we0 = delta_weights3_54_we0_local;
assign delta_weights3_54_we1 = delta_weights3_54_we1_local;
assign delta_weights3_55_address0 = zext_ln75_81_fu_5455_p1;
assign delta_weights3_55_address1 = delta_weights3_55_address1_local;
assign delta_weights3_55_ce0 = delta_weights3_55_ce0_local;
assign delta_weights3_55_ce1 = delta_weights3_55_ce1_local;
assign delta_weights3_55_d0 = mul_29_reg_6654;
assign delta_weights3_55_d1 = delta_weights3_55_d1_local;
assign delta_weights3_55_we0 = delta_weights3_55_we0_local;
assign delta_weights3_55_we1 = delta_weights3_55_we1_local;
assign delta_weights3_56_address0 = zext_ln75_82_fu_5476_p1;
assign delta_weights3_56_address1 = delta_weights3_56_address1_local;
assign delta_weights3_56_ce0 = delta_weights3_56_ce0_local;
assign delta_weights3_56_ce1 = delta_weights3_56_ce1_local;
assign delta_weights3_56_d0 = mul_29_1_reg_6660;
assign delta_weights3_56_d1 = delta_weights3_56_d1_local;
assign delta_weights3_56_we0 = delta_weights3_56_we0_local;
assign delta_weights3_56_we1 = delta_weights3_56_we1_local;
assign delta_weights3_57_address0 = zext_ln75_83_fu_5497_p1;
assign delta_weights3_57_address1 = delta_weights3_57_address1_local;
assign delta_weights3_57_ce0 = delta_weights3_57_ce0_local;
assign delta_weights3_57_ce1 = delta_weights3_57_ce1_local;
assign delta_weights3_57_d0 = mul_29_2_reg_6666;
assign delta_weights3_57_d1 = delta_weights3_57_d1_local;
assign delta_weights3_57_we0 = delta_weights3_57_we0_local;
assign delta_weights3_57_we1 = delta_weights3_57_we1_local;
assign delta_weights3_58_address0 = zext_ln75_84_fu_5518_p1;
assign delta_weights3_58_address1 = delta_weights3_58_address1_local;
assign delta_weights3_58_ce0 = delta_weights3_58_ce0_local;
assign delta_weights3_58_ce1 = delta_weights3_58_ce1_local;
assign delta_weights3_58_d0 = mul_30_reg_6672;
assign delta_weights3_58_d1 = delta_weights3_58_d1_local;
assign delta_weights3_58_we0 = delta_weights3_58_we0_local;
assign delta_weights3_58_we1 = delta_weights3_58_we1_local;
assign delta_weights3_59_address0 = zext_ln75_85_fu_5539_p1;
assign delta_weights3_59_address1 = delta_weights3_59_address1_local;
assign delta_weights3_59_ce0 = delta_weights3_59_ce0_local;
assign delta_weights3_59_ce1 = delta_weights3_59_ce1_local;
assign delta_weights3_59_d0 = mul_30_1_reg_6678;
assign delta_weights3_59_d1 = delta_weights3_59_d1_local;
assign delta_weights3_59_we0 = delta_weights3_59_we0_local;
assign delta_weights3_59_we1 = delta_weights3_59_we1_local;
assign delta_weights3_5_address0 = zext_ln75_63_fu_5077_p1;
assign delta_weights3_5_address1 = delta_weights3_5_address1_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = mul_23_reg_6546;
assign delta_weights3_5_d1 = delta_weights3_5_d1_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_60_address0 = zext_ln75_86_fu_5560_p1;
assign delta_weights3_60_address1 = delta_weights3_60_address1_local;
assign delta_weights3_60_ce0 = delta_weights3_60_ce0_local;
assign delta_weights3_60_ce1 = delta_weights3_60_ce1_local;
assign delta_weights3_60_d0 = mul_30_2_reg_6684;
assign delta_weights3_60_d1 = delta_weights3_60_d1_local;
assign delta_weights3_60_we0 = delta_weights3_60_we0_local;
assign delta_weights3_60_we1 = delta_weights3_60_we1_local;
assign delta_weights3_61_address0 = zext_ln75_87_fu_5581_p1;
assign delta_weights3_61_address1 = delta_weights3_61_address1_local;
assign delta_weights3_61_ce0 = delta_weights3_61_ce0_local;
assign delta_weights3_61_ce1 = delta_weights3_61_ce1_local;
assign delta_weights3_61_d0 = mul_31_reg_6690;
assign delta_weights3_61_d1 = delta_weights3_61_d1_local;
assign delta_weights3_61_we0 = delta_weights3_61_we0_local;
assign delta_weights3_61_we1 = delta_weights3_61_we1_local;
assign delta_weights3_62_address0 = zext_ln75_88_fu_5602_p1;
assign delta_weights3_62_address1 = delta_weights3_62_address1_local;
assign delta_weights3_62_ce0 = delta_weights3_62_ce0_local;
assign delta_weights3_62_ce1 = delta_weights3_62_ce1_local;
assign delta_weights3_62_d0 = mul_31_1_reg_6696;
assign delta_weights3_62_d1 = delta_weights3_62_d1_local;
assign delta_weights3_62_we0 = delta_weights3_62_we0_local;
assign delta_weights3_62_we1 = delta_weights3_62_we1_local;
assign delta_weights3_63_address0 = zext_ln75_89_fu_5623_p1;
assign delta_weights3_63_address1 = delta_weights3_63_address1_local;
assign delta_weights3_63_ce0 = delta_weights3_63_ce0_local;
assign delta_weights3_63_ce1 = delta_weights3_63_ce1_local;
assign delta_weights3_63_d0 = mul_31_2_reg_6702;
assign delta_weights3_63_d1 = delta_weights3_63_d1_local;
assign delta_weights3_63_we0 = delta_weights3_63_we0_local;
assign delta_weights3_63_we1 = delta_weights3_63_we1_local;
assign delta_weights3_6_address0 = zext_ln75_64_fu_5098_p1;
assign delta_weights3_6_address1 = delta_weights3_6_address1_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = mul_23_1_reg_6552;
assign delta_weights3_6_d1 = delta_weights3_6_d1_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = zext_ln75_65_fu_5119_p1;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_23_2_reg_6558;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = zext_ln75_66_fu_5140_p1;
assign delta_weights3_8_address1 = delta_weights3_8_address1_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = mul_24_reg_6564;
assign delta_weights3_8_d1 = delta_weights3_8_d1_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = zext_ln75_67_fu_5161_p1;
assign delta_weights3_9_address1 = delta_weights3_9_address1_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = mul_24_1_reg_6570;
assign delta_weights3_9_d1 = delta_weights3_9_d1_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign empty_1000_fu_4999_p2 = (tmp_31_reg_6480 + 8'd51);
assign empty_1001_fu_5062_p2 = (tmp_31_reg_6480 + 8'd54);
assign empty_1002_fu_5125_p2 = (tmp_31_reg_6480 + 8'd57);
assign empty_1003_fu_5188_p2 = (tmp_31_reg_6480 + 8'd60);
assign empty_1004_fu_5251_p2 = (tmp_31_reg_6480 + 8'd63);
assign empty_1005_fu_5314_p2 = (tmp_31_reg_6480 + 8'd66);
assign empty_1006_fu_5377_p2 = (tmp_31_reg_6480 + 8'd69);
assign empty_1007_fu_5440_p2 = (tmp_31_reg_6480 + 8'd72);
assign empty_1008_fu_5503_p2 = (tmp_31_reg_6480 + 8'd75);
assign empty_1009_fu_5566_p2 = (tmp_31_reg_6480 + 8'd78);
assign empty_981_fu_3751_p2 = (tmp_29_fu_3699_p3 + 8'd3);
assign empty_982_fu_3795_p2 = (tmp_29_fu_3699_p3 + 8'd6);
assign empty_983_fu_3839_p2 = (tmp_29_fu_3699_p3 + 8'd9);
assign empty_984_fu_3967_p2 = (tmp_31_fu_3915_p3 + 8'd3);
assign empty_985_fu_4033_p2 = (tmp_31_fu_3915_p3 + 8'd6);
assign empty_986_fu_4099_p2 = (tmp_31_fu_3915_p3 + 8'd9);
assign empty_987_fu_4165_p2 = (tmp_31_fu_3915_p3 + 8'd12);
assign empty_988_fu_4231_p2 = (tmp_31_fu_3915_p3 + 8'd15);
assign empty_989_fu_4275_p2 = (tmp_31_fu_3915_p3 + 8'd18);
assign empty_990_fu_4341_p2 = (tmp_31_fu_3915_p3 + 8'd21);
assign empty_991_fu_4407_p2 = (tmp_31_fu_3915_p3 + 8'd24);
assign empty_992_fu_4473_p2 = (tmp_31_fu_3915_p3 + 8'd27);
assign empty_993_fu_4539_p2 = (tmp_31_fu_3915_p3 + 8'd30);
assign empty_994_fu_4605_p2 = (tmp_31_fu_3915_p3 + 8'd33);
assign empty_995_fu_4671_p2 = (tmp_31_fu_3915_p3 + 8'd36);
assign empty_996_fu_4737_p2 = (tmp_31_fu_3915_p3 + 8'd39);
assign empty_997_fu_4803_p2 = (tmp_31_fu_3915_p3 + 8'd42);
assign empty_998_fu_4869_p2 = (tmp_31_fu_3915_p3 + 8'd45);
assign empty_999_fu_4935_p2 = (tmp_31_fu_3915_p3 + 8'd48);
assign empty_fu_3390_p2 = ((ap_sig_allocacmp_i_13 == 7'd32) ? 1'b1 : 1'b0);
assign grp_fu_18791_p_ce = 1'b1;
assign grp_fu_18791_p_din0 = tmp_reg_5868;
assign grp_fu_18791_p_din1 = output_difference_0_0_val;
assign grp_fu_18795_p_ce = 1'b1;
assign grp_fu_18795_p_din0 = tmp_reg_5868;
assign grp_fu_18795_p_din1 = output_difference_0_1_val;
assign grp_fu_18799_p_ce = 1'b1;
assign grp_fu_18799_p_din0 = tmp_reg_5868;
assign grp_fu_18799_p_din1 = output_difference_0_2_val;
assign grp_fu_18803_p_ce = 1'b1;
assign grp_fu_18803_p_din0 = tmp_s_reg_5875;
assign grp_fu_18803_p_din1 = output_difference_0_0_val;
assign grp_fu_18807_p_ce = 1'b1;
assign grp_fu_18807_p_din0 = tmp_s_reg_5875;
assign grp_fu_18807_p_din1 = output_difference_0_1_val;
assign grp_fu_18811_p_ce = 1'b1;
assign grp_fu_18811_p_din0 = tmp_s_reg_5875;
assign grp_fu_18811_p_din1 = output_difference_0_2_val;
assign grp_fu_18815_p_ce = 1'b1;
assign grp_fu_18815_p_din0 = tmp_1417_reg_5882;
assign grp_fu_18815_p_din1 = output_difference_0_0_val;
assign grp_fu_18819_p_ce = 1'b1;
assign grp_fu_18819_p_din0 = tmp_1417_reg_5882;
assign grp_fu_18819_p_din1 = output_difference_0_1_val;
assign grp_fu_18823_p_ce = 1'b1;
assign grp_fu_18823_p_din0 = tmp_1417_reg_5882;
assign grp_fu_18823_p_din1 = output_difference_0_2_val;
assign grp_fu_18827_p_ce = 1'b1;
assign grp_fu_18827_p_din0 = tmp_1418_reg_5889;
assign grp_fu_18827_p_din1 = output_difference_0_0_val;
assign grp_fu_18831_p_ce = 1'b1;
assign grp_fu_18831_p_din0 = tmp_1418_reg_5889;
assign grp_fu_18831_p_din1 = output_difference_0_1_val;
assign grp_fu_18835_p_ce = 1'b1;
assign grp_fu_18835_p_din0 = tmp_1418_reg_5889;
assign grp_fu_18835_p_din1 = output_difference_0_2_val;
assign grp_fu_18839_p_ce = 1'b1;
assign grp_fu_18839_p_din0 = tmp_1419_reg_5896;
assign grp_fu_18839_p_din1 = output_difference_0_0_val;
assign grp_fu_18843_p_ce = 1'b1;
assign grp_fu_18843_p_din0 = tmp_1419_reg_5896;
assign grp_fu_18843_p_din1 = output_difference_0_1_val;
assign grp_fu_18847_p_ce = 1'b1;
assign grp_fu_18847_p_din0 = tmp_1419_reg_5896;
assign grp_fu_18847_p_din1 = output_difference_0_2_val;
assign grp_fu_18851_p_ce = 1'b1;
assign grp_fu_18851_p_din0 = tmp_1420_reg_5903;
assign grp_fu_18851_p_din1 = output_difference_0_0_val;
assign grp_fu_18855_p_ce = 1'b1;
assign grp_fu_18855_p_din0 = tmp_1420_reg_5903;
assign grp_fu_18855_p_din1 = output_difference_0_1_val;
assign grp_fu_18859_p_ce = 1'b1;
assign grp_fu_18859_p_din0 = tmp_1420_reg_5903;
assign grp_fu_18859_p_din1 = output_difference_0_2_val;
assign grp_fu_18863_p_ce = 1'b1;
assign grp_fu_18863_p_din0 = tmp_1421_reg_5910;
assign grp_fu_18863_p_din1 = output_difference_0_0_val;
assign grp_fu_18867_p_ce = 1'b1;
assign grp_fu_18867_p_din0 = tmp_1421_reg_5910;
assign grp_fu_18867_p_din1 = output_difference_0_1_val;
assign grp_fu_18871_p_ce = 1'b1;
assign grp_fu_18871_p_din0 = tmp_1421_reg_5910;
assign grp_fu_18871_p_din1 = output_difference_0_2_val;
assign grp_fu_18875_p_ce = 1'b1;
assign grp_fu_18875_p_din0 = tmp_1422_reg_5917;
assign grp_fu_18875_p_din1 = output_difference_0_0_val;
assign grp_fu_18879_p_ce = 1'b1;
assign grp_fu_18879_p_din0 = tmp_1422_reg_5917;
assign grp_fu_18879_p_din1 = output_difference_0_1_val;
assign grp_fu_18883_p_ce = 1'b1;
assign grp_fu_18883_p_din0 = tmp_1422_reg_5917;
assign grp_fu_18883_p_din1 = output_difference_0_2_val;
assign grp_fu_18887_p_ce = 1'b1;
assign grp_fu_18887_p_din0 = tmp_1423_reg_5924;
assign grp_fu_18887_p_din1 = output_difference_0_0_val;
assign grp_fu_18891_p_ce = 1'b1;
assign grp_fu_18891_p_din0 = tmp_1423_reg_5924;
assign grp_fu_18891_p_din1 = output_difference_0_1_val;
assign grp_fu_18895_p_ce = 1'b1;
assign grp_fu_18895_p_din0 = tmp_1423_reg_5924;
assign grp_fu_18895_p_din1 = output_difference_0_2_val;
assign grp_fu_18899_p_ce = 1'b1;
assign grp_fu_18899_p_din0 = tmp_1424_reg_5931;
assign grp_fu_18899_p_din1 = output_difference_0_0_val;
assign grp_fu_18903_p_ce = 1'b1;
assign grp_fu_18903_p_din0 = tmp_1424_reg_5931;
assign grp_fu_18903_p_din1 = output_difference_0_1_val;
assign grp_fu_18907_p_ce = 1'b1;
assign grp_fu_18907_p_din0 = tmp_1424_reg_5931;
assign grp_fu_18907_p_din1 = output_difference_0_2_val;
assign grp_fu_18911_p_ce = 1'b1;
assign grp_fu_18911_p_din0 = tmp_1425_reg_5938;
assign grp_fu_18911_p_din1 = output_difference_0_0_val;
assign grp_fu_18915_p_ce = 1'b1;
assign grp_fu_18915_p_din0 = tmp_1425_reg_5938;
assign grp_fu_18915_p_din1 = output_difference_0_1_val;
assign grp_fu_18919_p_ce = 1'b1;
assign grp_fu_18919_p_din0 = tmp_1425_reg_5938;
assign grp_fu_18919_p_din1 = output_difference_0_2_val;
assign grp_fu_18923_p_ce = 1'b1;
assign grp_fu_18923_p_din0 = tmp_1426_reg_5945;
assign grp_fu_18923_p_din1 = output_difference_0_0_val;
assign grp_fu_18927_p_ce = 1'b1;
assign grp_fu_18927_p_din0 = tmp_1426_reg_5945;
assign grp_fu_18927_p_din1 = output_difference_0_1_val;
assign grp_fu_18931_p_ce = 1'b1;
assign grp_fu_18931_p_din0 = tmp_1426_reg_5945;
assign grp_fu_18931_p_din1 = output_difference_0_2_val;
assign grp_fu_18935_p_ce = 1'b1;
assign grp_fu_18935_p_din0 = tmp_1427_reg_5952;
assign grp_fu_18935_p_din1 = output_difference_0_0_val;
assign grp_fu_18939_p_ce = 1'b1;
assign grp_fu_18939_p_din0 = tmp_1427_reg_5952;
assign grp_fu_18939_p_din1 = output_difference_0_1_val;
assign grp_fu_18943_p_ce = 1'b1;
assign grp_fu_18943_p_din0 = tmp_1427_reg_5952;
assign grp_fu_18943_p_din1 = output_difference_0_2_val;
assign grp_fu_18947_p_ce = 1'b1;
assign grp_fu_18947_p_din0 = tmp_1428_reg_5959;
assign grp_fu_18947_p_din1 = output_difference_0_0_val;
assign grp_fu_18951_p_ce = 1'b1;
assign grp_fu_18951_p_din0 = tmp_1428_reg_5959;
assign grp_fu_18951_p_din1 = output_difference_0_1_val;
assign grp_fu_18955_p_ce = 1'b1;
assign grp_fu_18955_p_din0 = tmp_1428_reg_5959;
assign grp_fu_18955_p_din1 = output_difference_0_2_val;
assign grp_fu_18959_p_ce = 1'b1;
assign grp_fu_18959_p_din0 = tmp_1429_reg_5966;
assign grp_fu_18959_p_din1 = output_difference_0_0_val;
assign grp_fu_18963_p_ce = 1'b1;
assign grp_fu_18963_p_din0 = tmp_1429_reg_5966;
assign grp_fu_18963_p_din1 = output_difference_0_1_val;
assign grp_fu_18967_p_ce = 1'b1;
assign grp_fu_18967_p_din0 = tmp_1429_reg_5966;
assign grp_fu_18967_p_din1 = output_difference_0_2_val;
assign grp_fu_18971_p_ce = 1'b1;
assign grp_fu_18971_p_din0 = tmp_1430_reg_5973;
assign grp_fu_18971_p_din1 = output_difference_0_0_val;
assign grp_fu_18975_p_ce = 1'b1;
assign grp_fu_18975_p_din0 = tmp_1430_reg_5973;
assign grp_fu_18975_p_din1 = output_difference_0_1_val;
assign grp_fu_18979_p_ce = 1'b1;
assign grp_fu_18979_p_din0 = tmp_1430_reg_5973;
assign grp_fu_18979_p_din1 = output_difference_0_2_val;
assign grp_fu_18983_p_ce = 1'b1;
assign grp_fu_18983_p_din0 = tmp_1431_reg_5980;
assign grp_fu_18983_p_din1 = output_difference_0_0_val;
assign grp_fu_18987_p_ce = 1'b1;
assign grp_fu_18987_p_din0 = tmp_1431_reg_5980;
assign grp_fu_18987_p_din1 = output_difference_0_1_val;
assign grp_fu_18991_p_ce = 1'b1;
assign grp_fu_18991_p_din0 = tmp_1431_reg_5980;
assign grp_fu_18991_p_din1 = output_difference_0_2_val;
assign grp_fu_18995_p_ce = 1'b1;
assign grp_fu_18995_p_din0 = tmp_1432_reg_5987;
assign grp_fu_18995_p_din1 = output_difference_0_0_val;
assign grp_fu_18999_p_ce = 1'b1;
assign grp_fu_18999_p_din0 = tmp_1432_reg_5987;
assign grp_fu_18999_p_din1 = output_difference_0_1_val;
assign grp_fu_19003_p_ce = 1'b1;
assign grp_fu_19003_p_din0 = tmp_1432_reg_5987;
assign grp_fu_19003_p_din1 = output_difference_0_2_val;
assign grp_fu_19007_p_ce = 1'b1;
assign grp_fu_19007_p_din0 = tmp_1433_reg_5994;
assign grp_fu_19007_p_din1 = output_difference_0_0_val;
assign grp_fu_19011_p_ce = 1'b1;
assign grp_fu_19011_p_din0 = tmp_1433_reg_5994;
assign grp_fu_19011_p_din1 = output_difference_0_1_val;
assign grp_fu_19015_p_ce = 1'b1;
assign grp_fu_19015_p_din0 = tmp_1433_reg_5994;
assign grp_fu_19015_p_din1 = output_difference_0_2_val;
assign grp_fu_19019_p_ce = 1'b1;
assign grp_fu_19019_p_din0 = tmp_1434_reg_6001;
assign grp_fu_19019_p_din1 = output_difference_0_0_val;
assign grp_fu_19023_p_ce = 1'b1;
assign grp_fu_19023_p_din0 = tmp_1434_reg_6001;
assign grp_fu_19023_p_din1 = output_difference_0_1_val;
assign grp_fu_19027_p_ce = 1'b1;
assign grp_fu_19027_p_din0 = tmp_1434_reg_6001;
assign grp_fu_19027_p_din1 = output_difference_0_2_val;
assign grp_fu_19031_p_ce = 1'b1;
assign grp_fu_19031_p_din0 = tmp_1435_reg_6008;
assign grp_fu_19031_p_din1 = output_difference_0_0_val;
assign grp_fu_19035_p_ce = 1'b1;
assign grp_fu_19035_p_din0 = tmp_1435_reg_6008;
assign grp_fu_19035_p_din1 = output_difference_0_1_val;
assign grp_fu_19039_p_ce = 1'b1;
assign grp_fu_19039_p_din0 = tmp_1435_reg_6008;
assign grp_fu_19039_p_din1 = output_difference_0_2_val;
assign grp_fu_19043_p_ce = 1'b1;
assign grp_fu_19043_p_din0 = tmp_1436_reg_6015;
assign grp_fu_19043_p_din1 = output_difference_0_0_val;
assign grp_fu_19047_p_ce = 1'b1;
assign grp_fu_19047_p_din0 = tmp_1436_reg_6015_pp0_iter1_reg;
assign grp_fu_19047_p_din1 = output_difference_0_1_val;
assign grp_fu_19051_p_ce = 1'b1;
assign grp_fu_19051_p_din0 = tmp_1436_reg_6015_pp0_iter1_reg;
assign grp_fu_19051_p_din1 = output_difference_0_2_val;
assign grp_fu_19055_p_ce = 1'b1;
assign grp_fu_19055_p_din0 = tmp_1437_reg_6026;
assign grp_fu_19055_p_din1 = output_difference_0_0_val;
assign grp_fu_19059_p_ce = 1'b1;
assign grp_fu_19059_p_din0 = tmp_1437_reg_6026;
assign grp_fu_19059_p_din1 = output_difference_0_1_val;
assign grp_fu_19063_p_ce = 1'b1;
assign grp_fu_19063_p_din0 = tmp_1437_reg_6026;
assign grp_fu_19063_p_din1 = output_difference_0_2_val;
assign grp_fu_19067_p_ce = 1'b1;
assign grp_fu_19067_p_din0 = tmp_1438_reg_6033;
assign grp_fu_19067_p_din1 = output_difference_0_0_val;
assign grp_fu_19071_p_ce = 1'b1;
assign grp_fu_19071_p_din0 = tmp_1438_reg_6033;
assign grp_fu_19071_p_din1 = output_difference_0_1_val;
assign grp_fu_19075_p_ce = 1'b1;
assign grp_fu_19075_p_din0 = tmp_1438_reg_6033;
assign grp_fu_19075_p_din1 = output_difference_0_2_val;
assign grp_fu_19079_p_ce = 1'b1;
assign grp_fu_19079_p_din0 = tmp_1439_reg_6040;
assign grp_fu_19079_p_din1 = output_difference_0_0_val;
assign grp_fu_19083_p_ce = 1'b1;
assign grp_fu_19083_p_din0 = tmp_1439_reg_6040;
assign grp_fu_19083_p_din1 = output_difference_0_1_val;
assign grp_fu_19087_p_ce = 1'b1;
assign grp_fu_19087_p_din0 = tmp_1439_reg_6040;
assign grp_fu_19087_p_din1 = output_difference_0_2_val;
assign grp_fu_19091_p_ce = 1'b1;
assign grp_fu_19091_p_din0 = tmp_1440_reg_6047;
assign grp_fu_19091_p_din1 = output_difference_0_0_val;
assign grp_fu_19095_p_ce = 1'b1;
assign grp_fu_19095_p_din0 = tmp_1440_reg_6047;
assign grp_fu_19095_p_din1 = output_difference_0_1_val;
assign grp_fu_19099_p_ce = 1'b1;
assign grp_fu_19099_p_din0 = tmp_1440_reg_6047;
assign grp_fu_19099_p_din1 = output_difference_0_2_val;
assign grp_fu_19103_p_ce = 1'b1;
assign grp_fu_19103_p_din0 = tmp_1441_reg_6054;
assign grp_fu_19103_p_din1 = output_difference_0_0_val;
assign grp_fu_19107_p_ce = 1'b1;
assign grp_fu_19107_p_din0 = tmp_1441_reg_6054;
assign grp_fu_19107_p_din1 = output_difference_0_1_val;
assign grp_fu_19111_p_ce = 1'b1;
assign grp_fu_19111_p_din0 = tmp_1441_reg_6054;
assign grp_fu_19111_p_din1 = output_difference_0_2_val;
assign grp_fu_19115_p_ce = 1'b1;
assign grp_fu_19115_p_din0 = tmp_1442_reg_6061;
assign grp_fu_19115_p_din1 = output_difference_0_0_val;
assign grp_fu_19119_p_ce = 1'b1;
assign grp_fu_19119_p_din0 = tmp_1442_reg_6061;
assign grp_fu_19119_p_din1 = output_difference_0_1_val;
assign grp_fu_19123_p_ce = 1'b1;
assign grp_fu_19123_p_din0 = tmp_1442_reg_6061;
assign grp_fu_19123_p_din1 = output_difference_0_2_val;
assign grp_fu_19127_p_ce = 1'b1;
assign grp_fu_19127_p_din0 = tmp_1443_reg_6068;
assign grp_fu_19127_p_din1 = output_difference_0_0_val;
assign grp_fu_19131_p_ce = 1'b1;
assign grp_fu_19131_p_din0 = tmp_1443_reg_6068;
assign grp_fu_19131_p_din1 = output_difference_0_1_val;
assign grp_fu_19135_p_ce = 1'b1;
assign grp_fu_19135_p_din0 = tmp_1443_reg_6068;
assign grp_fu_19135_p_din1 = output_difference_0_2_val;
assign grp_fu_19139_p_ce = 1'b1;
assign grp_fu_19139_p_din0 = tmp_1444_reg_6075;
assign grp_fu_19139_p_din1 = output_difference_0_0_val;
assign grp_fu_19143_p_ce = 1'b1;
assign grp_fu_19143_p_din0 = tmp_1444_reg_6075;
assign grp_fu_19143_p_din1 = output_difference_0_1_val;
assign grp_fu_19147_p_ce = 1'b1;
assign grp_fu_19147_p_din0 = tmp_1444_reg_6075;
assign grp_fu_19147_p_din1 = output_difference_0_2_val;
assign grp_fu_19151_p_ce = 1'b1;
assign grp_fu_19151_p_din0 = tmp_1445_reg_6082;
assign grp_fu_19151_p_din1 = output_difference_0_0_val;
assign grp_fu_19155_p_ce = 1'b1;
assign grp_fu_19155_p_din0 = tmp_1445_reg_6082;
assign grp_fu_19155_p_din1 = output_difference_0_1_val;
assign grp_fu_19159_p_ce = 1'b1;
assign grp_fu_19159_p_din0 = tmp_1445_reg_6082;
assign grp_fu_19159_p_din1 = output_difference_0_2_val;
assign grp_fu_19163_p_ce = 1'b1;
assign grp_fu_19163_p_din0 = tmp_1446_reg_6089;
assign grp_fu_19163_p_din1 = output_difference_0_0_val;
assign grp_fu_19167_p_ce = 1'b1;
assign grp_fu_19167_p_din0 = tmp_1446_reg_6089;
assign grp_fu_19167_p_din1 = output_difference_0_1_val;
assign grp_fu_19171_p_ce = 1'b1;
assign grp_fu_19171_p_din0 = tmp_1446_reg_6089;
assign grp_fu_19171_p_din1 = output_difference_0_2_val;
assign icmp_ln75_fu_3572_p2 = ((ap_sig_allocacmp_i_13 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln75_10_fu_3951_p4 = {{add_ln75_7_fu_3945_p2[7:6]}};
assign lshr_ln75_11_fu_3973_p4 = {{empty_984_fu_3967_p2[7:6]}};
assign lshr_ln75_12_fu_3995_p4 = {{add_ln75_8_fu_3989_p2[7:6]}};
assign lshr_ln75_13_fu_4017_p4 = {{add_ln75_9_fu_4011_p2[7:6]}};
assign lshr_ln75_14_fu_4039_p4 = {{empty_985_fu_4033_p2[7:6]}};
assign lshr_ln75_15_fu_4061_p4 = {{add_ln75_10_fu_4055_p2[7:6]}};
assign lshr_ln75_16_fu_4083_p4 = {{add_ln75_11_fu_4077_p2[7:6]}};
assign lshr_ln75_17_fu_4105_p4 = {{empty_986_fu_4099_p2[7:6]}};
assign lshr_ln75_18_fu_4127_p4 = {{add_ln75_12_fu_4121_p2[7:6]}};
assign lshr_ln75_19_fu_4149_p4 = {{add_ln75_13_fu_4143_p2[7:6]}};
assign lshr_ln75_1_fu_3713_p4 = {{add_ln75_fu_3707_p2[7:6]}};
assign lshr_ln75_20_fu_4171_p4 = {{empty_987_fu_4165_p2[7:6]}};
assign lshr_ln75_21_fu_4193_p4 = {{add_ln75_14_fu_4187_p2[7:6]}};
assign lshr_ln75_22_fu_4215_p4 = {{add_ln75_15_fu_4209_p2[7:6]}};
assign lshr_ln75_23_fu_4237_p4 = {{empty_988_fu_4231_p2[7:6]}};
assign lshr_ln75_24_fu_4259_p4 = {{add_ln75_16_fu_4253_p2[7:6]}};
assign lshr_ln75_25_fu_4281_p4 = {{empty_989_fu_4275_p2[7:6]}};
assign lshr_ln75_26_fu_4303_p4 = {{add_ln75_17_fu_4297_p2[7:6]}};
assign lshr_ln75_27_fu_4325_p4 = {{add_ln75_18_fu_4319_p2[7:6]}};
assign lshr_ln75_28_fu_4347_p4 = {{empty_990_fu_4341_p2[7:6]}};
assign lshr_ln75_29_fu_4369_p4 = {{add_ln75_19_fu_4363_p2[7:6]}};
assign lshr_ln75_2_fu_3735_p4 = {{add_ln75_1_fu_3729_p2[7:6]}};
assign lshr_ln75_30_fu_4391_p4 = {{add_ln75_20_fu_4385_p2[7:6]}};
assign lshr_ln75_31_fu_4413_p4 = {{empty_991_fu_4407_p2[7:6]}};
assign lshr_ln75_32_fu_4435_p4 = {{add_ln75_21_fu_4429_p2[7:6]}};
assign lshr_ln75_33_fu_4457_p4 = {{add_ln75_22_fu_4451_p2[7:6]}};
assign lshr_ln75_34_fu_4479_p4 = {{empty_992_fu_4473_p2[7:6]}};
assign lshr_ln75_35_fu_4501_p4 = {{add_ln75_23_fu_4495_p2[7:6]}};
assign lshr_ln75_36_fu_4523_p4 = {{add_ln75_24_fu_4517_p2[7:6]}};
assign lshr_ln75_37_fu_4545_p4 = {{empty_993_fu_4539_p2[7:6]}};
assign lshr_ln75_38_fu_4567_p4 = {{add_ln75_25_fu_4561_p2[7:6]}};
assign lshr_ln75_39_fu_4589_p4 = {{add_ln75_26_fu_4583_p2[7:6]}};
assign lshr_ln75_3_fu_3757_p4 = {{empty_981_fu_3751_p2[7:6]}};
assign lshr_ln75_40_fu_4611_p4 = {{empty_994_fu_4605_p2[7:6]}};
assign lshr_ln75_41_fu_4633_p4 = {{add_ln75_27_fu_4627_p2[7:6]}};
assign lshr_ln75_42_fu_4655_p4 = {{add_ln75_28_fu_4649_p2[7:6]}};
assign lshr_ln75_43_fu_4677_p4 = {{empty_995_fu_4671_p2[7:6]}};
assign lshr_ln75_44_fu_4699_p4 = {{add_ln75_29_fu_4693_p2[7:6]}};
assign lshr_ln75_45_fu_4721_p4 = {{add_ln75_30_fu_4715_p2[7:6]}};
assign lshr_ln75_46_fu_4743_p4 = {{empty_996_fu_4737_p2[7:6]}};
assign lshr_ln75_47_fu_4765_p4 = {{add_ln75_31_fu_4759_p2[7:6]}};
assign lshr_ln75_48_fu_4787_p4 = {{add_ln75_32_fu_4781_p2[7:6]}};
assign lshr_ln75_49_fu_4809_p4 = {{empty_997_fu_4803_p2[7:6]}};
assign lshr_ln75_4_fu_3779_p4 = {{add_ln75_2_fu_3773_p2[7:6]}};
assign lshr_ln75_50_fu_4831_p4 = {{add_ln75_33_fu_4825_p2[7:6]}};
assign lshr_ln75_51_fu_4853_p4 = {{add_ln75_34_fu_4847_p2[7:6]}};
assign lshr_ln75_52_fu_4875_p4 = {{empty_998_fu_4869_p2[7:6]}};
assign lshr_ln75_53_fu_4897_p4 = {{add_ln75_35_fu_4891_p2[7:6]}};
assign lshr_ln75_54_fu_4919_p4 = {{add_ln75_36_fu_4913_p2[7:6]}};
assign lshr_ln75_55_fu_4941_p4 = {{empty_999_fu_4935_p2[7:6]}};
assign lshr_ln75_56_fu_4962_p4 = {{add_ln75_37_fu_4957_p2[7:6]}};
assign lshr_ln75_57_fu_4983_p4 = {{add_ln75_38_fu_4978_p2[7:6]}};
assign lshr_ln75_58_fu_5004_p4 = {{empty_1000_fu_4999_p2[7:6]}};
assign lshr_ln75_59_fu_5025_p4 = {{add_ln75_39_fu_5020_p2[7:6]}};
assign lshr_ln75_5_fu_3801_p4 = {{empty_982_fu_3795_p2[7:6]}};
assign lshr_ln75_60_fu_5046_p4 = {{add_ln75_40_fu_5041_p2[7:6]}};
assign lshr_ln75_61_fu_5067_p4 = {{empty_1001_fu_5062_p2[7:6]}};
assign lshr_ln75_62_fu_5088_p4 = {{add_ln75_41_fu_5083_p2[7:6]}};
assign lshr_ln75_63_fu_5109_p4 = {{add_ln75_42_fu_5104_p2[7:6]}};
assign lshr_ln75_64_fu_5130_p4 = {{empty_1002_fu_5125_p2[7:6]}};
assign lshr_ln75_65_fu_5151_p4 = {{add_ln75_43_fu_5146_p2[7:6]}};
assign lshr_ln75_66_fu_5172_p4 = {{add_ln75_44_fu_5167_p2[7:6]}};
assign lshr_ln75_67_fu_5193_p4 = {{empty_1003_fu_5188_p2[7:6]}};
assign lshr_ln75_68_fu_5214_p4 = {{add_ln75_45_fu_5209_p2[7:6]}};
assign lshr_ln75_69_fu_5235_p4 = {{add_ln75_46_fu_5230_p2[7:6]}};
assign lshr_ln75_6_fu_3823_p4 = {{add_ln75_3_fu_3817_p2[7:6]}};
assign lshr_ln75_70_fu_5256_p4 = {{empty_1004_fu_5251_p2[7:6]}};
assign lshr_ln75_71_fu_5277_p4 = {{add_ln75_47_fu_5272_p2[7:6]}};
assign lshr_ln75_72_fu_5298_p4 = {{add_ln75_48_fu_5293_p2[7:6]}};
assign lshr_ln75_73_fu_5319_p4 = {{empty_1005_fu_5314_p2[7:6]}};
assign lshr_ln75_74_fu_5340_p4 = {{add_ln75_49_fu_5335_p2[7:6]}};
assign lshr_ln75_75_fu_5361_p4 = {{add_ln75_50_fu_5356_p2[7:6]}};
assign lshr_ln75_76_fu_5382_p4 = {{empty_1006_fu_5377_p2[7:6]}};
assign lshr_ln75_77_fu_5403_p4 = {{add_ln75_51_fu_5398_p2[7:6]}};
assign lshr_ln75_78_fu_5424_p4 = {{add_ln75_52_fu_5419_p2[7:6]}};
assign lshr_ln75_79_fu_5445_p4 = {{empty_1007_fu_5440_p2[7:6]}};
assign lshr_ln75_7_fu_3845_p4 = {{empty_983_fu_3839_p2[7:6]}};
assign lshr_ln75_80_fu_5466_p4 = {{add_ln75_53_fu_5461_p2[7:6]}};
assign lshr_ln75_81_fu_5487_p4 = {{add_ln75_54_fu_5482_p2[7:6]}};
assign lshr_ln75_82_fu_5508_p4 = {{empty_1008_fu_5503_p2[7:6]}};
assign lshr_ln75_83_fu_5529_p4 = {{add_ln75_55_fu_5524_p2[7:6]}};
assign lshr_ln75_84_fu_5550_p4 = {{add_ln75_56_fu_5545_p2[7:6]}};
assign lshr_ln75_85_fu_5571_p4 = {{empty_1009_fu_5566_p2[7:6]}};
assign lshr_ln75_86_fu_5592_p4 = {{add_ln75_57_fu_5587_p2[7:6]}};
assign lshr_ln75_87_fu_5613_p4 = {{add_ln75_58_fu_5608_p2[7:6]}};
assign lshr_ln75_8_fu_3867_p4 = {{add_ln75_4_fu_3861_p2[7:6]}};
assign lshr_ln75_9_fu_3889_p4 = {{add_ln75_5_fu_3883_p2[7:6]}};
assign lshr_ln75_s_fu_3929_p4 = {{add_ln75_6_fu_3923_p2[7:6]}};
assign lshr_ln_fu_3659_p4 = {{sub_ln75_fu_3653_p2[7:6]}};
assign p_shl_fu_3645_p3 = {{trunc_ln75_fu_3642_p1}, {2'd0}};
assign sub_ln75_fu_3653_p2 = (p_shl_fu_3645_p3 - zext_ln75_fu_3639_p1);
assign tmp_1417_fu_3412_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_34_val : last_activations_2_val);
assign tmp_1418_fu_3420_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_35_val : last_activations_3_val);
assign tmp_1419_fu_3428_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_36_val : last_activations_4_val);
assign tmp_1420_fu_3436_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_37_val : last_activations_5_val);
assign tmp_1421_fu_3444_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_38_val : last_activations_6_val);
assign tmp_1422_fu_3452_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_39_val : last_activations_7_val);
assign tmp_1423_fu_3460_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_40_val : last_activations_8_val);
assign tmp_1424_fu_3468_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_41_val : last_activations_9_val);
assign tmp_1425_fu_3476_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_42_val : last_activations_10_val);
assign tmp_1426_fu_3484_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_43_val : last_activations_11_val);
assign tmp_1427_fu_3492_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_44_val : last_activations_12_val);
assign tmp_1428_fu_3500_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_45_val : last_activations_13_val);
assign tmp_1429_fu_3508_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_46_val : last_activations_14_val);
assign tmp_1430_fu_3516_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_47_val : last_activations_15_val);
assign tmp_1431_fu_3524_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_48_val : last_activations_16_val);
assign tmp_1432_fu_3532_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_49_val : last_activations_17_val);
assign tmp_1433_fu_3540_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_50_val : last_activations_18_val);
assign tmp_1434_fu_3548_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_51_val : last_activations_19_val);
assign tmp_1435_fu_3556_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_52_val : last_activations_20_val);
assign tmp_1436_fu_3564_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_53_val : last_activations_21_val);
assign tmp_1437_fu_3589_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_54_val : last_activations_22_val);
assign tmp_1438_fu_3594_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_55_val : last_activations_23_val);
assign tmp_1439_fu_3599_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_56_val : last_activations_24_val);
assign tmp_1440_fu_3604_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_57_val : last_activations_25_val);
assign tmp_1441_fu_3609_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_58_val : last_activations_26_val);
assign tmp_1442_fu_3614_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_59_val : last_activations_27_val);
assign tmp_1443_fu_3619_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_60_val : last_activations_28_val);
assign tmp_1444_fu_3624_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_61_val : last_activations_29_val);
assign tmp_1445_fu_3629_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_62_val : last_activations_30_val);
assign tmp_1446_fu_3634_p3 = ((empty_reg_5854[0:0] == 1'b1) ? last_activations_63_val : last_activations_31_val);
assign tmp_16_fu_3382_p3 = ap_sig_allocacmp_i_13[32'd6];
assign tmp_28_fu_3689_p4 = {{sub_ln75_fu_3653_p2[7:2]}};
assign tmp_29_fu_3699_p3 = {{tmp_28_fu_3689_p4}, {2'd3}};
assign tmp_30_fu_3905_p4 = {{sub_ln75_fu_3653_p2[7:4]}};
assign tmp_31_fu_3915_p3 = {{tmp_30_fu_3905_p4}, {4'd15}};
assign tmp_fu_3396_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_32_val : last_activations_0_val);
assign tmp_s_fu_3404_p3 = ((empty_fu_3390_p2[0:0] == 1'b1) ? last_activations_33_val : last_activations_1_val);
assign trunc_ln75_fu_3642_p1 = i_13_reg_5844_pp0_iter7_reg[5:0];
assign zext_ln75_10_fu_3899_p1 = lshr_ln75_9_fu_3889_p4;
assign zext_ln75_11_fu_3939_p1 = lshr_ln75_s_fu_3929_p4;
assign zext_ln75_12_fu_3961_p1 = lshr_ln75_10_fu_3951_p4;
assign zext_ln75_13_fu_3983_p1 = lshr_ln75_11_fu_3973_p4;
assign zext_ln75_14_fu_4005_p1 = lshr_ln75_12_fu_3995_p4;
assign zext_ln75_15_fu_4027_p1 = lshr_ln75_13_fu_4017_p4;
assign zext_ln75_16_fu_4049_p1 = lshr_ln75_14_fu_4039_p4;
assign zext_ln75_17_fu_4071_p1 = lshr_ln75_15_fu_4061_p4;
assign zext_ln75_18_fu_4093_p1 = lshr_ln75_16_fu_4083_p4;
assign zext_ln75_19_fu_4115_p1 = lshr_ln75_17_fu_4105_p4;
assign zext_ln75_1_fu_3669_p1 = lshr_ln_fu_3659_p4;
assign zext_ln75_20_fu_4137_p1 = lshr_ln75_18_fu_4127_p4;
assign zext_ln75_21_fu_4159_p1 = lshr_ln75_19_fu_4149_p4;
assign zext_ln75_22_fu_4181_p1 = lshr_ln75_20_fu_4171_p4;
assign zext_ln75_23_fu_4203_p1 = lshr_ln75_21_fu_4193_p4;
assign zext_ln75_24_fu_4225_p1 = lshr_ln75_22_fu_4215_p4;
assign zext_ln75_25_fu_4247_p1 = lshr_ln75_23_fu_4237_p4;
assign zext_ln75_26_fu_4269_p1 = lshr_ln75_24_fu_4259_p4;
assign zext_ln75_27_fu_4291_p1 = lshr_ln75_25_fu_4281_p4;
assign zext_ln75_28_fu_4313_p1 = lshr_ln75_26_fu_4303_p4;
assign zext_ln75_29_fu_4335_p1 = lshr_ln75_27_fu_4325_p4;
assign zext_ln75_2_fu_3723_p1 = lshr_ln75_1_fu_3713_p4;
assign zext_ln75_30_fu_4357_p1 = lshr_ln75_28_fu_4347_p4;
assign zext_ln75_31_fu_4379_p1 = lshr_ln75_29_fu_4369_p4;
assign zext_ln75_32_fu_4401_p1 = lshr_ln75_30_fu_4391_p4;
assign zext_ln75_33_fu_4423_p1 = lshr_ln75_31_fu_4413_p4;
assign zext_ln75_34_fu_4445_p1 = lshr_ln75_32_fu_4435_p4;
assign zext_ln75_35_fu_4467_p1 = lshr_ln75_33_fu_4457_p4;
assign zext_ln75_36_fu_4489_p1 = lshr_ln75_34_fu_4479_p4;
assign zext_ln75_37_fu_4511_p1 = lshr_ln75_35_fu_4501_p4;
assign zext_ln75_38_fu_4533_p1 = lshr_ln75_36_fu_4523_p4;
assign zext_ln75_39_fu_4555_p1 = lshr_ln75_37_fu_4545_p4;
assign zext_ln75_3_fu_3745_p1 = lshr_ln75_2_fu_3735_p4;
assign zext_ln75_40_fu_4577_p1 = lshr_ln75_38_fu_4567_p4;
assign zext_ln75_41_fu_4599_p1 = lshr_ln75_39_fu_4589_p4;
assign zext_ln75_42_fu_4621_p1 = lshr_ln75_40_fu_4611_p4;
assign zext_ln75_43_fu_4643_p1 = lshr_ln75_41_fu_4633_p4;
assign zext_ln75_44_fu_4665_p1 = lshr_ln75_42_fu_4655_p4;
assign zext_ln75_45_fu_4687_p1 = lshr_ln75_43_fu_4677_p4;
assign zext_ln75_46_fu_4709_p1 = lshr_ln75_44_fu_4699_p4;
assign zext_ln75_47_fu_4731_p1 = lshr_ln75_45_fu_4721_p4;
assign zext_ln75_48_fu_4753_p1 = lshr_ln75_46_fu_4743_p4;
assign zext_ln75_49_fu_4775_p1 = lshr_ln75_47_fu_4765_p4;
assign zext_ln75_4_fu_3767_p1 = lshr_ln75_3_fu_3757_p4;
assign zext_ln75_50_fu_4797_p1 = lshr_ln75_48_fu_4787_p4;
assign zext_ln75_51_fu_4819_p1 = lshr_ln75_49_fu_4809_p4;
assign zext_ln75_52_fu_4841_p1 = lshr_ln75_50_fu_4831_p4;
assign zext_ln75_53_fu_4863_p1 = lshr_ln75_51_fu_4853_p4;
assign zext_ln75_54_fu_4885_p1 = lshr_ln75_52_fu_4875_p4;
assign zext_ln75_55_fu_4907_p1 = lshr_ln75_53_fu_4897_p4;
assign zext_ln75_56_fu_4929_p1 = lshr_ln75_54_fu_4919_p4;
assign zext_ln75_57_fu_4951_p1 = lshr_ln75_55_fu_4941_p4;
assign zext_ln75_58_fu_4972_p1 = lshr_ln75_56_fu_4962_p4;
assign zext_ln75_59_fu_4993_p1 = lshr_ln75_57_fu_4983_p4;
assign zext_ln75_5_fu_3789_p1 = lshr_ln75_4_fu_3779_p4;
assign zext_ln75_60_fu_5014_p1 = lshr_ln75_58_fu_5004_p4;
assign zext_ln75_61_fu_5035_p1 = lshr_ln75_59_fu_5025_p4;
assign zext_ln75_62_fu_5056_p1 = lshr_ln75_60_fu_5046_p4;
assign zext_ln75_63_fu_5077_p1 = lshr_ln75_61_fu_5067_p4;
assign zext_ln75_64_fu_5098_p1 = lshr_ln75_62_fu_5088_p4;
assign zext_ln75_65_fu_5119_p1 = lshr_ln75_63_fu_5109_p4;
assign zext_ln75_66_fu_5140_p1 = lshr_ln75_64_fu_5130_p4;
assign zext_ln75_67_fu_5161_p1 = lshr_ln75_65_fu_5151_p4;
assign zext_ln75_68_fu_5182_p1 = lshr_ln75_66_fu_5172_p4;
assign zext_ln75_69_fu_5203_p1 = lshr_ln75_67_fu_5193_p4;
assign zext_ln75_6_fu_3811_p1 = lshr_ln75_5_fu_3801_p4;
assign zext_ln75_70_fu_5224_p1 = lshr_ln75_68_fu_5214_p4;
assign zext_ln75_71_fu_5245_p1 = lshr_ln75_69_fu_5235_p4;
assign zext_ln75_72_fu_5266_p1 = lshr_ln75_70_fu_5256_p4;
assign zext_ln75_73_fu_5287_p1 = lshr_ln75_71_fu_5277_p4;
assign zext_ln75_74_fu_5308_p1 = lshr_ln75_72_fu_5298_p4;
assign zext_ln75_75_fu_5329_p1 = lshr_ln75_73_fu_5319_p4;
assign zext_ln75_76_fu_5350_p1 = lshr_ln75_74_fu_5340_p4;
assign zext_ln75_77_fu_5371_p1 = lshr_ln75_75_fu_5361_p4;
assign zext_ln75_78_fu_5392_p1 = lshr_ln75_76_fu_5382_p4;
assign zext_ln75_79_fu_5413_p1 = lshr_ln75_77_fu_5403_p4;
assign zext_ln75_7_fu_3833_p1 = lshr_ln75_6_fu_3823_p4;
assign zext_ln75_80_fu_5434_p1 = lshr_ln75_78_fu_5424_p4;
assign zext_ln75_81_fu_5455_p1 = lshr_ln75_79_fu_5445_p4;
assign zext_ln75_82_fu_5476_p1 = lshr_ln75_80_fu_5466_p4;
assign zext_ln75_83_fu_5497_p1 = lshr_ln75_81_fu_5487_p4;
assign zext_ln75_84_fu_5518_p1 = lshr_ln75_82_fu_5508_p4;
assign zext_ln75_85_fu_5539_p1 = lshr_ln75_83_fu_5529_p4;
assign zext_ln75_86_fu_5560_p1 = lshr_ln75_84_fu_5550_p4;
assign zext_ln75_87_fu_5581_p1 = lshr_ln75_85_fu_5571_p4;
assign zext_ln75_88_fu_5602_p1 = lshr_ln75_86_fu_5592_p4;
assign zext_ln75_89_fu_5623_p1 = lshr_ln75_87_fu_5613_p4;
assign zext_ln75_8_fu_3855_p1 = lshr_ln75_7_fu_3845_p4;
assign zext_ln75_9_fu_3877_p1 = lshr_ln75_8_fu_3867_p4;
assign zext_ln75_fu_3639_p1 = i_13_reg_5844_pp0_iter7_reg;
always @ (posedge ap_clk) begin
    tmp_31_reg_6480[3:0] <= 4'b1111;
end
endmodule 