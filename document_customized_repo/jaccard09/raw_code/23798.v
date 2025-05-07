module backprop_matrix_vector_product_with_bias_output_layer_60_61_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_16_address0,weights3_16_ce0,weights3_16_q0,weights3_17_address0,weights3_17_ce0,weights3_17_q0,weights3_18_address0,weights3_18_ce0,weights3_18_q0,weights3_19_address0,weights3_19_ce0,weights3_19_q0,weights3_20_address0,weights3_20_ce0,weights3_20_q0,weights3_21_address0,weights3_21_ce0,weights3_21_q0,weights3_22_address0,weights3_22_ce0,weights3_22_q0,weights3_23_address0,weights3_23_ce0,weights3_23_q0,weights3_24_address0,weights3_24_ce0,weights3_24_q0,weights3_25_address0,weights3_25_ce0,weights3_25_q0,weights3_26_address0,weights3_26_ce0,weights3_26_q0,weights3_27_address0,weights3_27_ce0,weights3_27_q0,weights3_28_address0,weights3_28_ce0,weights3_28_q0,weights3_29_address0,weights3_29_ce0,weights3_29_q0,weights3_30_address0,weights3_30_ce0,weights3_30_q0,weights3_31_address0,weights3_31_ce0,weights3_31_q0,weights3_32_address0,weights3_32_ce0,weights3_32_q0,weights3_33_address0,weights3_33_ce0,weights3_33_q0,weights3_34_address0,weights3_34_ce0,weights3_34_q0,weights3_35_address0,weights3_35_ce0,weights3_35_q0,weights3_36_address0,weights3_36_ce0,weights3_36_q0,weights3_37_address0,weights3_37_ce0,weights3_37_q0,weights3_38_address0,weights3_38_ce0,weights3_38_q0,weights3_39_address0,weights3_39_ce0,weights3_39_q0,weights3_40_address0,weights3_40_ce0,weights3_40_q0,weights3_41_address0,weights3_41_ce0,weights3_41_q0,weights3_42_address0,weights3_42_ce0,weights3_42_q0,weights3_43_address0,weights3_43_ce0,weights3_43_q0,weights3_44_address0,weights3_44_ce0,weights3_44_q0,weights3_45_address0,weights3_45_ce0,weights3_45_q0,weights3_46_address0,weights3_46_ce0,weights3_46_q0,weights3_47_address0,weights3_47_ce0,weights3_47_q0,weights3_48_address0,weights3_48_ce0,weights3_48_q0,weights3_49_address0,weights3_49_ce0,weights3_49_q0,weights3_50_address0,weights3_50_ce0,weights3_50_q0,weights3_51_address0,weights3_51_ce0,weights3_51_q0,weights3_52_address0,weights3_52_ce0,weights3_52_q0,weights3_53_address0,weights3_53_ce0,weights3_53_q0,weights3_54_address0,weights3_54_ce0,weights3_54_q0,weights3_55_address0,weights3_55_ce0,weights3_55_q0,weights3_56_address0,weights3_56_ce0,weights3_56_q0,weights3_57_address0,weights3_57_ce0,weights3_57_q0,weights3_58_address0,weights3_58_ce0,weights3_58_q0,weights3_59_address0,weights3_59_ce0,weights3_59_q0,weights3_60_address0,weights3_60_ce0,weights3_60_q0,weights3_61_address0,weights3_61_ce0,weights3_61_q0,weights3_62_address0,weights3_62_ce0,weights3_62_q0,weights3_63_address0,weights3_63_ce0,weights3_63_q0,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_0_val,input_activations_1_val,input_activations_2_val,input_activations_3_val,input_activations_4_val,input_activations_5_val,input_activations_6_val,input_activations_7_val,input_activations_8_val,input_activations_9_val,input_activations_10_val,input_activations_11_val,input_activations_12_val,input_activations_13_val,input_activations_14_val,input_activations_15_val,input_activations_16_val,input_activations_17_val,input_activations_18_val,input_activations_19_val,input_activations_20_val,input_activations_21_val,input_activations_22_val,input_activations_23_val,input_activations_24_val,input_activations_25_val,input_activations_26_val,input_activations_27_val,input_activations_28_val,input_activations_29_val,input_activations_30_val,input_activations_31_val,input_activations_32_val,input_activations_33_val,input_activations_34_val,input_activations_35_val,input_activations_36_val,input_activations_37_val,input_activations_38_val,input_activations_39_val,input_activations_40_val,input_activations_41_val,input_activations_42_val,input_activations_43_val,input_activations_44_val,input_activations_45_val,input_activations_46_val,input_activations_47_val,input_activations_48_val,input_activations_49_val,input_activations_50_val,input_activations_51_val,input_activations_52_val,input_activations_53_val,input_activations_54_val,input_activations_55_val,input_activations_56_val,input_activations_57_val,input_activations_58_val,input_activations_59_val,input_activations_60_val,input_activations_61_val,input_activations_62_val,input_activations_63_val,grp_fu_23723_p_din0,grp_fu_23723_p_din1,grp_fu_23723_p_opcode,grp_fu_23723_p_dout0,grp_fu_23723_p_ce,grp_fu_23727_p_din0,grp_fu_23727_p_din1,grp_fu_23727_p_opcode,grp_fu_23727_p_dout0,grp_fu_23727_p_ce,grp_fu_23731_p_din0,grp_fu_23731_p_din1,grp_fu_23731_p_opcode,grp_fu_23731_p_dout0,grp_fu_23731_p_ce,grp_fu_23735_p_din0,grp_fu_23735_p_din1,grp_fu_23735_p_opcode,grp_fu_23735_p_dout0,grp_fu_23735_p_ce,grp_fu_23739_p_din0,grp_fu_23739_p_din1,grp_fu_23739_p_opcode,grp_fu_23739_p_dout0,grp_fu_23739_p_ce,grp_fu_23743_p_din0,grp_fu_23743_p_din1,grp_fu_23743_p_opcode,grp_fu_23743_p_dout0,grp_fu_23743_p_ce,grp_fu_23747_p_din0,grp_fu_23747_p_din1,grp_fu_23747_p_opcode,grp_fu_23747_p_dout0,grp_fu_23747_p_ce,grp_fu_23751_p_din0,grp_fu_23751_p_din1,grp_fu_23751_p_opcode,grp_fu_23751_p_dout0,grp_fu_23751_p_ce,grp_fu_23755_p_din0,grp_fu_23755_p_din1,grp_fu_23755_p_opcode,grp_fu_23755_p_dout0,grp_fu_23755_p_ce,grp_fu_23759_p_din0,grp_fu_23759_p_din1,grp_fu_23759_p_opcode,grp_fu_23759_p_dout0,grp_fu_23759_p_ce,grp_fu_23763_p_din0,grp_fu_23763_p_din1,grp_fu_23763_p_opcode,grp_fu_23763_p_dout0,grp_fu_23763_p_ce,grp_fu_23767_p_din0,grp_fu_23767_p_din1,grp_fu_23767_p_opcode,grp_fu_23767_p_dout0,grp_fu_23767_p_ce,grp_fu_23771_p_din0,grp_fu_23771_p_din1,grp_fu_23771_p_opcode,grp_fu_23771_p_dout0,grp_fu_23771_p_ce,grp_fu_23775_p_din0,grp_fu_23775_p_din1,grp_fu_23775_p_opcode,grp_fu_23775_p_dout0,grp_fu_23775_p_ce,grp_fu_23779_p_din0,grp_fu_23779_p_din1,grp_fu_23779_p_opcode,grp_fu_23779_p_dout0,grp_fu_23779_p_ce,grp_fu_23783_p_din0,grp_fu_23783_p_din1,grp_fu_23783_p_opcode,grp_fu_23783_p_dout0,grp_fu_23783_p_ce,grp_fu_23787_p_din0,grp_fu_23787_p_din1,grp_fu_23787_p_opcode,grp_fu_23787_p_dout0,grp_fu_23787_p_ce,grp_fu_23791_p_din0,grp_fu_23791_p_din1,grp_fu_23791_p_opcode,grp_fu_23791_p_dout0,grp_fu_23791_p_ce,grp_fu_23795_p_din0,grp_fu_23795_p_din1,grp_fu_23795_p_opcode,grp_fu_23795_p_dout0,grp_fu_23795_p_ce,grp_fu_23799_p_din0,grp_fu_23799_p_din1,grp_fu_23799_p_opcode,grp_fu_23799_p_dout0,grp_fu_23799_p_ce,grp_fu_23803_p_din0,grp_fu_23803_p_din1,grp_fu_23803_p_opcode,grp_fu_23803_p_dout0,grp_fu_23803_p_ce,grp_fu_23807_p_din0,grp_fu_23807_p_din1,grp_fu_23807_p_opcode,grp_fu_23807_p_dout0,grp_fu_23807_p_ce,grp_fu_23811_p_din0,grp_fu_23811_p_din1,grp_fu_23811_p_opcode,grp_fu_23811_p_dout0,grp_fu_23811_p_ce,grp_fu_23815_p_din0,grp_fu_23815_p_din1,grp_fu_23815_p_opcode,grp_fu_23815_p_dout0,grp_fu_23815_p_ce,grp_fu_23819_p_din0,grp_fu_23819_p_din1,grp_fu_23819_p_opcode,grp_fu_23819_p_dout0,grp_fu_23819_p_ce,grp_fu_23823_p_din0,grp_fu_23823_p_din1,grp_fu_23823_p_opcode,grp_fu_23823_p_dout0,grp_fu_23823_p_ce,grp_fu_23827_p_din0,grp_fu_23827_p_din1,grp_fu_23827_p_opcode,grp_fu_23827_p_dout0,grp_fu_23827_p_ce,grp_fu_23831_p_din0,grp_fu_23831_p_din1,grp_fu_23831_p_opcode,grp_fu_23831_p_dout0,grp_fu_23831_p_ce,grp_fu_23835_p_din0,grp_fu_23835_p_din1,grp_fu_23835_p_opcode,grp_fu_23835_p_dout0,grp_fu_23835_p_ce,grp_fu_23839_p_din0,grp_fu_23839_p_din1,grp_fu_23839_p_opcode,grp_fu_23839_p_dout0,grp_fu_23839_p_ce,grp_fu_23843_p_din0,grp_fu_23843_p_din1,grp_fu_23843_p_opcode,grp_fu_23843_p_dout0,grp_fu_23843_p_ce,grp_fu_23847_p_din0,grp_fu_23847_p_din1,grp_fu_23847_p_opcode,grp_fu_23847_p_dout0,grp_fu_23847_p_ce,grp_fu_23851_p_din0,grp_fu_23851_p_din1,grp_fu_23851_p_opcode,grp_fu_23851_p_dout0,grp_fu_23851_p_ce,grp_fu_23855_p_din0,grp_fu_23855_p_din1,grp_fu_23855_p_opcode,grp_fu_23855_p_dout0,grp_fu_23855_p_ce,grp_fu_23859_p_din0,grp_fu_23859_p_din1,grp_fu_23859_p_opcode,grp_fu_23859_p_dout0,grp_fu_23859_p_ce,grp_fu_23863_p_din0,grp_fu_23863_p_din1,grp_fu_23863_p_opcode,grp_fu_23863_p_dout0,grp_fu_23863_p_ce,grp_fu_23867_p_din0,grp_fu_23867_p_din1,grp_fu_23867_p_opcode,grp_fu_23867_p_dout0,grp_fu_23867_p_ce,grp_fu_23871_p_din0,grp_fu_23871_p_din1,grp_fu_23871_p_opcode,grp_fu_23871_p_dout0,grp_fu_23871_p_ce,grp_fu_23875_p_din0,grp_fu_23875_p_din1,grp_fu_23875_p_opcode,grp_fu_23875_p_dout0,grp_fu_23875_p_ce,grp_fu_23879_p_din0,grp_fu_23879_p_din1,grp_fu_23879_p_opcode,grp_fu_23879_p_dout0,grp_fu_23879_p_ce,grp_fu_23883_p_din0,grp_fu_23883_p_din1,grp_fu_23883_p_opcode,grp_fu_23883_p_dout0,grp_fu_23883_p_ce,grp_fu_23887_p_din0,grp_fu_23887_p_din1,grp_fu_23887_p_opcode,grp_fu_23887_p_dout0,grp_fu_23887_p_ce,grp_fu_23891_p_din0,grp_fu_23891_p_din1,grp_fu_23891_p_opcode,grp_fu_23891_p_dout0,grp_fu_23891_p_ce,grp_fu_23895_p_din0,grp_fu_23895_p_din1,grp_fu_23895_p_opcode,grp_fu_23895_p_dout0,grp_fu_23895_p_ce,grp_fu_23899_p_din0,grp_fu_23899_p_din1,grp_fu_23899_p_opcode,grp_fu_23899_p_dout0,grp_fu_23899_p_ce,grp_fu_23903_p_din0,grp_fu_23903_p_din1,grp_fu_23903_p_opcode,grp_fu_23903_p_dout0,grp_fu_23903_p_ce,grp_fu_23907_p_din0,grp_fu_23907_p_din1,grp_fu_23907_p_opcode,grp_fu_23907_p_dout0,grp_fu_23907_p_ce,grp_fu_23911_p_din0,grp_fu_23911_p_din1,grp_fu_23911_p_opcode,grp_fu_23911_p_dout0,grp_fu_23911_p_ce,grp_fu_23915_p_din0,grp_fu_23915_p_din1,grp_fu_23915_p_opcode,grp_fu_23915_p_dout0,grp_fu_23915_p_ce,grp_fu_23919_p_din0,grp_fu_23919_p_din1,grp_fu_23919_p_opcode,grp_fu_23919_p_dout0,grp_fu_23919_p_ce,grp_fu_23923_p_din0,grp_fu_23923_p_din1,grp_fu_23923_p_opcode,grp_fu_23923_p_dout0,grp_fu_23923_p_ce,grp_fu_23927_p_din0,grp_fu_23927_p_din1,grp_fu_23927_p_opcode,grp_fu_23927_p_dout0,grp_fu_23927_p_ce,grp_fu_23931_p_din0,grp_fu_23931_p_din1,grp_fu_23931_p_opcode,grp_fu_23931_p_dout0,grp_fu_23931_p_ce,grp_fu_23935_p_din0,grp_fu_23935_p_din1,grp_fu_23935_p_opcode,grp_fu_23935_p_dout0,grp_fu_23935_p_ce,grp_fu_23939_p_din0,grp_fu_23939_p_din1,grp_fu_23939_p_opcode,grp_fu_23939_p_dout0,grp_fu_23939_p_ce,grp_fu_23943_p_din0,grp_fu_23943_p_din1,grp_fu_23943_p_opcode,grp_fu_23943_p_dout0,grp_fu_23943_p_ce,grp_fu_23947_p_din0,grp_fu_23947_p_din1,grp_fu_23947_p_opcode,grp_fu_23947_p_dout0,grp_fu_23947_p_ce,grp_fu_23951_p_din0,grp_fu_23951_p_din1,grp_fu_23951_p_opcode,grp_fu_23951_p_dout0,grp_fu_23951_p_ce,grp_fu_23955_p_din0,grp_fu_23955_p_din1,grp_fu_23955_p_opcode,grp_fu_23955_p_dout0,grp_fu_23955_p_ce,grp_fu_23959_p_din0,grp_fu_23959_p_din1,grp_fu_23959_p_opcode,grp_fu_23959_p_dout0,grp_fu_23959_p_ce,grp_fu_23963_p_din0,grp_fu_23963_p_din1,grp_fu_23963_p_opcode,grp_fu_23963_p_dout0,grp_fu_23963_p_ce,grp_fu_23967_p_din0,grp_fu_23967_p_din1,grp_fu_23967_p_opcode,grp_fu_23967_p_dout0,grp_fu_23967_p_ce,grp_fu_23971_p_din0,grp_fu_23971_p_din1,grp_fu_23971_p_opcode,grp_fu_23971_p_dout0,grp_fu_23971_p_ce,grp_fu_23975_p_din0,grp_fu_23975_p_din1,grp_fu_23975_p_opcode,grp_fu_23975_p_dout0,grp_fu_23975_p_ce,grp_fu_23979_p_din0,grp_fu_23979_p_din1,grp_fu_23979_p_dout0,grp_fu_23979_p_ce,grp_fu_23983_p_din0,grp_fu_23983_p_din1,grp_fu_23983_p_dout0,grp_fu_23983_p_ce,grp_fu_23987_p_din0,grp_fu_23987_p_din1,grp_fu_23987_p_dout0,grp_fu_23987_p_ce,grp_fu_23991_p_din0,grp_fu_23991_p_din1,grp_fu_23991_p_dout0,grp_fu_23991_p_ce,grp_fu_23995_p_din0,grp_fu_23995_p_din1,grp_fu_23995_p_dout0,grp_fu_23995_p_ce,grp_fu_23999_p_din0,grp_fu_23999_p_din1,grp_fu_23999_p_dout0,grp_fu_23999_p_ce,grp_fu_24003_p_din0,grp_fu_24003_p_din1,grp_fu_24003_p_dout0,grp_fu_24003_p_ce,grp_fu_24007_p_din0,grp_fu_24007_p_din1,grp_fu_24007_p_dout0,grp_fu_24007_p_ce,grp_fu_24011_p_din0,grp_fu_24011_p_din1,grp_fu_24011_p_dout0,grp_fu_24011_p_ce,grp_fu_24015_p_din0,grp_fu_24015_p_din1,grp_fu_24015_p_dout0,grp_fu_24015_p_ce,grp_fu_24019_p_din0,grp_fu_24019_p_din1,grp_fu_24019_p_dout0,grp_fu_24019_p_ce,grp_fu_24023_p_din0,grp_fu_24023_p_din1,grp_fu_24023_p_dout0,grp_fu_24023_p_ce,grp_fu_24027_p_din0,grp_fu_24027_p_din1,grp_fu_24027_p_dout0,grp_fu_24027_p_ce,grp_fu_24031_p_din0,grp_fu_24031_p_din1,grp_fu_24031_p_dout0,grp_fu_24031_p_ce,grp_fu_24035_p_din0,grp_fu_24035_p_din1,grp_fu_24035_p_dout0,grp_fu_24035_p_ce,grp_fu_24039_p_din0,grp_fu_24039_p_din1,grp_fu_24039_p_dout0,grp_fu_24039_p_ce,grp_fu_24043_p_din0,grp_fu_24043_p_din1,grp_fu_24043_p_dout0,grp_fu_24043_p_ce,grp_fu_24047_p_din0,grp_fu_24047_p_din1,grp_fu_24047_p_dout0,grp_fu_24047_p_ce,grp_fu_24051_p_din0,grp_fu_24051_p_din1,grp_fu_24051_p_dout0,grp_fu_24051_p_ce,grp_fu_24055_p_din0,grp_fu_24055_p_din1,grp_fu_24055_p_dout0,grp_fu_24055_p_ce,grp_fu_24059_p_din0,grp_fu_24059_p_din1,grp_fu_24059_p_dout0,grp_fu_24059_p_ce,grp_fu_24063_p_din0,grp_fu_24063_p_din1,grp_fu_24063_p_dout0,grp_fu_24063_p_ce,grp_fu_24067_p_din0,grp_fu_24067_p_din1,grp_fu_24067_p_dout0,grp_fu_24067_p_ce,grp_fu_24071_p_din0,grp_fu_24071_p_din1,grp_fu_24071_p_dout0,grp_fu_24071_p_ce,grp_fu_24075_p_din0,grp_fu_24075_p_din1,grp_fu_24075_p_dout0,grp_fu_24075_p_ce,grp_fu_24079_p_din0,grp_fu_24079_p_din1,grp_fu_24079_p_dout0,grp_fu_24079_p_ce,grp_fu_24083_p_din0,grp_fu_24083_p_din1,grp_fu_24083_p_dout0,grp_fu_24083_p_ce,grp_fu_24087_p_din0,grp_fu_24087_p_din1,grp_fu_24087_p_dout0,grp_fu_24087_p_ce,grp_fu_24091_p_din0,grp_fu_24091_p_din1,grp_fu_24091_p_dout0,grp_fu_24091_p_ce,grp_fu_24095_p_din0,grp_fu_24095_p_din1,grp_fu_24095_p_dout0,grp_fu_24095_p_ce,grp_fu_24099_p_din0,grp_fu_24099_p_din1,grp_fu_24099_p_dout0,grp_fu_24099_p_ce,grp_fu_24103_p_din0,grp_fu_24103_p_din1,grp_fu_24103_p_dout0,grp_fu_24103_p_ce,grp_fu_24107_p_din0,grp_fu_24107_p_din1,grp_fu_24107_p_dout0,grp_fu_24107_p_ce,grp_fu_24111_p_din0,grp_fu_24111_p_din1,grp_fu_24111_p_dout0,grp_fu_24111_p_ce,grp_fu_24115_p_din0,grp_fu_24115_p_din1,grp_fu_24115_p_dout0,grp_fu_24115_p_ce,grp_fu_24119_p_din0,grp_fu_24119_p_din1,grp_fu_24119_p_dout0,grp_fu_24119_p_ce,grp_fu_24123_p_din0,grp_fu_24123_p_din1,grp_fu_24123_p_dout0,grp_fu_24123_p_ce,grp_fu_24127_p_din0,grp_fu_24127_p_din1,grp_fu_24127_p_dout0,grp_fu_24127_p_ce,grp_fu_24131_p_din0,grp_fu_24131_p_din1,grp_fu_24131_p_dout0,grp_fu_24131_p_ce,grp_fu_24135_p_din0,grp_fu_24135_p_din1,grp_fu_24135_p_dout0,grp_fu_24135_p_ce,grp_fu_24139_p_din0,grp_fu_24139_p_din1,grp_fu_24139_p_dout0,grp_fu_24139_p_ce,grp_fu_24143_p_din0,grp_fu_24143_p_din1,grp_fu_24143_p_dout0,grp_fu_24143_p_ce,grp_fu_24147_p_din0,grp_fu_24147_p_din1,grp_fu_24147_p_dout0,grp_fu_24147_p_ce,grp_fu_24151_p_din0,grp_fu_24151_p_din1,grp_fu_24151_p_dout0,grp_fu_24151_p_ce,grp_fu_24155_p_din0,grp_fu_24155_p_din1,grp_fu_24155_p_dout0,grp_fu_24155_p_ce,grp_fu_24159_p_din0,grp_fu_24159_p_din1,grp_fu_24159_p_dout0,grp_fu_24159_p_ce,grp_fu_24163_p_din0,grp_fu_24163_p_din1,grp_fu_24163_p_dout0,grp_fu_24163_p_ce,grp_fu_24167_p_din0,grp_fu_24167_p_din1,grp_fu_24167_p_dout0,grp_fu_24167_p_ce,grp_fu_24171_p_din0,grp_fu_24171_p_din1,grp_fu_24171_p_dout0,grp_fu_24171_p_ce,grp_fu_24175_p_din0,grp_fu_24175_p_din1,grp_fu_24175_p_dout0,grp_fu_24175_p_ce,grp_fu_24179_p_din0,grp_fu_24179_p_din1,grp_fu_24179_p_dout0,grp_fu_24179_p_ce,grp_fu_24183_p_din0,grp_fu_24183_p_din1,grp_fu_24183_p_dout0,grp_fu_24183_p_ce,grp_fu_24187_p_din0,grp_fu_24187_p_din1,grp_fu_24187_p_dout0,grp_fu_24187_p_ce,grp_fu_24191_p_din0,grp_fu_24191_p_din1,grp_fu_24191_p_dout0,grp_fu_24191_p_ce,grp_fu_24195_p_din0,grp_fu_24195_p_din1,grp_fu_24195_p_dout0,grp_fu_24195_p_ce,grp_fu_24199_p_din0,grp_fu_24199_p_din1,grp_fu_24199_p_dout0,grp_fu_24199_p_ce,grp_fu_24203_p_din0,grp_fu_24203_p_din1,grp_fu_24203_p_dout0,grp_fu_24203_p_ce,grp_fu_24207_p_din0,grp_fu_24207_p_din1,grp_fu_24207_p_dout0,grp_fu_24207_p_ce,grp_fu_24211_p_din0,grp_fu_24211_p_din1,grp_fu_24211_p_dout0,grp_fu_24211_p_ce,grp_fu_24215_p_din0,grp_fu_24215_p_din1,grp_fu_24215_p_dout0,grp_fu_24215_p_ce,grp_fu_24219_p_din0,grp_fu_24219_p_din1,grp_fu_24219_p_dout0,grp_fu_24219_p_ce,grp_fu_24223_p_din0,grp_fu_24223_p_din1,grp_fu_24223_p_dout0,grp_fu_24223_p_ce,grp_fu_24227_p_din0,grp_fu_24227_p_din1,grp_fu_24227_p_dout0,grp_fu_24227_p_ce,grp_fu_24231_p_din0,grp_fu_24231_p_din1,grp_fu_24231_p_dout0,grp_fu_24231_p_ce); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [1:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [1:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [1:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [1:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [1:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [1:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [1:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [1:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [1:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [1:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [1:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [1:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [1:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [1:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [1:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [1:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [1:0] weights3_16_address0;
output   weights3_16_ce0;
input  [63:0] weights3_16_q0;
output  [1:0] weights3_17_address0;
output   weights3_17_ce0;
input  [63:0] weights3_17_q0;
output  [1:0] weights3_18_address0;
output   weights3_18_ce0;
input  [63:0] weights3_18_q0;
output  [1:0] weights3_19_address0;
output   weights3_19_ce0;
input  [63:0] weights3_19_q0;
output  [1:0] weights3_20_address0;
output   weights3_20_ce0;
input  [63:0] weights3_20_q0;
output  [1:0] weights3_21_address0;
output   weights3_21_ce0;
input  [63:0] weights3_21_q0;
output  [1:0] weights3_22_address0;
output   weights3_22_ce0;
input  [63:0] weights3_22_q0;
output  [1:0] weights3_23_address0;
output   weights3_23_ce0;
input  [63:0] weights3_23_q0;
output  [1:0] weights3_24_address0;
output   weights3_24_ce0;
input  [63:0] weights3_24_q0;
output  [1:0] weights3_25_address0;
output   weights3_25_ce0;
input  [63:0] weights3_25_q0;
output  [1:0] weights3_26_address0;
output   weights3_26_ce0;
input  [63:0] weights3_26_q0;
output  [1:0] weights3_27_address0;
output   weights3_27_ce0;
input  [63:0] weights3_27_q0;
output  [1:0] weights3_28_address0;
output   weights3_28_ce0;
input  [63:0] weights3_28_q0;
output  [1:0] weights3_29_address0;
output   weights3_29_ce0;
input  [63:0] weights3_29_q0;
output  [1:0] weights3_30_address0;
output   weights3_30_ce0;
input  [63:0] weights3_30_q0;
output  [1:0] weights3_31_address0;
output   weights3_31_ce0;
input  [63:0] weights3_31_q0;
output  [1:0] weights3_32_address0;
output   weights3_32_ce0;
input  [63:0] weights3_32_q0;
output  [1:0] weights3_33_address0;
output   weights3_33_ce0;
input  [63:0] weights3_33_q0;
output  [1:0] weights3_34_address0;
output   weights3_34_ce0;
input  [63:0] weights3_34_q0;
output  [1:0] weights3_35_address0;
output   weights3_35_ce0;
input  [63:0] weights3_35_q0;
output  [1:0] weights3_36_address0;
output   weights3_36_ce0;
input  [63:0] weights3_36_q0;
output  [1:0] weights3_37_address0;
output   weights3_37_ce0;
input  [63:0] weights3_37_q0;
output  [1:0] weights3_38_address0;
output   weights3_38_ce0;
input  [63:0] weights3_38_q0;
output  [1:0] weights3_39_address0;
output   weights3_39_ce0;
input  [63:0] weights3_39_q0;
output  [1:0] weights3_40_address0;
output   weights3_40_ce0;
input  [63:0] weights3_40_q0;
output  [1:0] weights3_41_address0;
output   weights3_41_ce0;
input  [63:0] weights3_41_q0;
output  [1:0] weights3_42_address0;
output   weights3_42_ce0;
input  [63:0] weights3_42_q0;
output  [1:0] weights3_43_address0;
output   weights3_43_ce0;
input  [63:0] weights3_43_q0;
output  [1:0] weights3_44_address0;
output   weights3_44_ce0;
input  [63:0] weights3_44_q0;
output  [1:0] weights3_45_address0;
output   weights3_45_ce0;
input  [63:0] weights3_45_q0;
output  [1:0] weights3_46_address0;
output   weights3_46_ce0;
input  [63:0] weights3_46_q0;
output  [1:0] weights3_47_address0;
output   weights3_47_ce0;
input  [63:0] weights3_47_q0;
output  [1:0] weights3_48_address0;
output   weights3_48_ce0;
input  [63:0] weights3_48_q0;
output  [1:0] weights3_49_address0;
output   weights3_49_ce0;
input  [63:0] weights3_49_q0;
output  [1:0] weights3_50_address0;
output   weights3_50_ce0;
input  [63:0] weights3_50_q0;
output  [1:0] weights3_51_address0;
output   weights3_51_ce0;
input  [63:0] weights3_51_q0;
output  [1:0] weights3_52_address0;
output   weights3_52_ce0;
input  [63:0] weights3_52_q0;
output  [1:0] weights3_53_address0;
output   weights3_53_ce0;
input  [63:0] weights3_53_q0;
output  [1:0] weights3_54_address0;
output   weights3_54_ce0;
input  [63:0] weights3_54_q0;
output  [1:0] weights3_55_address0;
output   weights3_55_ce0;
input  [63:0] weights3_55_q0;
output  [1:0] weights3_56_address0;
output   weights3_56_ce0;
input  [63:0] weights3_56_q0;
output  [1:0] weights3_57_address0;
output   weights3_57_ce0;
input  [63:0] weights3_57_q0;
output  [1:0] weights3_58_address0;
output   weights3_58_ce0;
input  [63:0] weights3_58_q0;
output  [1:0] weights3_59_address0;
output   weights3_59_ce0;
input  [63:0] weights3_59_q0;
output  [1:0] weights3_60_address0;
output   weights3_60_ce0;
input  [63:0] weights3_60_q0;
output  [1:0] weights3_61_address0;
output   weights3_61_ce0;
input  [63:0] weights3_61_q0;
output  [1:0] weights3_62_address0;
output   weights3_62_ce0;
input  [63:0] weights3_62_q0;
output  [1:0] weights3_63_address0;
output   weights3_63_ce0;
input  [63:0] weights3_63_q0;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
input  [63:0] input_activations_0_val;
input  [63:0] input_activations_1_val;
input  [63:0] input_activations_2_val;
input  [63:0] input_activations_3_val;
input  [63:0] input_activations_4_val;
input  [63:0] input_activations_5_val;
input  [63:0] input_activations_6_val;
input  [63:0] input_activations_7_val;
input  [63:0] input_activations_8_val;
input  [63:0] input_activations_9_val;
input  [63:0] input_activations_10_val;
input  [63:0] input_activations_11_val;
input  [63:0] input_activations_12_val;
input  [63:0] input_activations_13_val;
input  [63:0] input_activations_14_val;
input  [63:0] input_activations_15_val;
input  [63:0] input_activations_16_val;
input  [63:0] input_activations_17_val;
input  [63:0] input_activations_18_val;
input  [63:0] input_activations_19_val;
input  [63:0] input_activations_20_val;
input  [63:0] input_activations_21_val;
input  [63:0] input_activations_22_val;
input  [63:0] input_activations_23_val;
input  [63:0] input_activations_24_val;
input  [63:0] input_activations_25_val;
input  [63:0] input_activations_26_val;
input  [63:0] input_activations_27_val;
input  [63:0] input_activations_28_val;
input  [63:0] input_activations_29_val;
input  [63:0] input_activations_30_val;
input  [63:0] input_activations_31_val;
input  [63:0] input_activations_32_val;
input  [63:0] input_activations_33_val;
input  [63:0] input_activations_34_val;
input  [63:0] input_activations_35_val;
input  [63:0] input_activations_36_val;
input  [63:0] input_activations_37_val;
input  [63:0] input_activations_38_val;
input  [63:0] input_activations_39_val;
input  [63:0] input_activations_40_val;
input  [63:0] input_activations_41_val;
input  [63:0] input_activations_42_val;
input  [63:0] input_activations_43_val;
input  [63:0] input_activations_44_val;
input  [63:0] input_activations_45_val;
input  [63:0] input_activations_46_val;
input  [63:0] input_activations_47_val;
input  [63:0] input_activations_48_val;
input  [63:0] input_activations_49_val;
input  [63:0] input_activations_50_val;
input  [63:0] input_activations_51_val;
input  [63:0] input_activations_52_val;
input  [63:0] input_activations_53_val;
input  [63:0] input_activations_54_val;
input  [63:0] input_activations_55_val;
input  [63:0] input_activations_56_val;
input  [63:0] input_activations_57_val;
input  [63:0] input_activations_58_val;
input  [63:0] input_activations_59_val;
input  [63:0] input_activations_60_val;
input  [63:0] input_activations_61_val;
input  [63:0] input_activations_62_val;
input  [63:0] input_activations_63_val;
output  [63:0] grp_fu_23723_p_din0;
output  [63:0] grp_fu_23723_p_din1;
output  [0:0] grp_fu_23723_p_opcode;
input  [63:0] grp_fu_23723_p_dout0;
output   grp_fu_23723_p_ce;
output  [63:0] grp_fu_23727_p_din0;
output  [63:0] grp_fu_23727_p_din1;
output  [0:0] grp_fu_23727_p_opcode;
input  [63:0] grp_fu_23727_p_dout0;
output   grp_fu_23727_p_ce;
output  [63:0] grp_fu_23731_p_din0;
output  [63:0] grp_fu_23731_p_din1;
output  [0:0] grp_fu_23731_p_opcode;
input  [63:0] grp_fu_23731_p_dout0;
output   grp_fu_23731_p_ce;
output  [63:0] grp_fu_23735_p_din0;
output  [63:0] grp_fu_23735_p_din1;
output  [0:0] grp_fu_23735_p_opcode;
input  [63:0] grp_fu_23735_p_dout0;
output   grp_fu_23735_p_ce;
output  [63:0] grp_fu_23739_p_din0;
output  [63:0] grp_fu_23739_p_din1;
output  [0:0] grp_fu_23739_p_opcode;
input  [63:0] grp_fu_23739_p_dout0;
output   grp_fu_23739_p_ce;
output  [63:0] grp_fu_23743_p_din0;
output  [63:0] grp_fu_23743_p_din1;
output  [0:0] grp_fu_23743_p_opcode;
input  [63:0] grp_fu_23743_p_dout0;
output   grp_fu_23743_p_ce;
output  [63:0] grp_fu_23747_p_din0;
output  [63:0] grp_fu_23747_p_din1;
output  [1:0] grp_fu_23747_p_opcode;
input  [63:0] grp_fu_23747_p_dout0;
output   grp_fu_23747_p_ce;
output  [63:0] grp_fu_23751_p_din0;
output  [63:0] grp_fu_23751_p_din1;
output  [1:0] grp_fu_23751_p_opcode;
input  [63:0] grp_fu_23751_p_dout0;
output   grp_fu_23751_p_ce;
output  [63:0] grp_fu_23755_p_din0;
output  [63:0] grp_fu_23755_p_din1;
output  [1:0] grp_fu_23755_p_opcode;
input  [63:0] grp_fu_23755_p_dout0;
output   grp_fu_23755_p_ce;
output  [63:0] grp_fu_23759_p_din0;
output  [63:0] grp_fu_23759_p_din1;
output  [1:0] grp_fu_23759_p_opcode;
input  [63:0] grp_fu_23759_p_dout0;
output   grp_fu_23759_p_ce;
output  [63:0] grp_fu_23763_p_din0;
output  [63:0] grp_fu_23763_p_din1;
output  [1:0] grp_fu_23763_p_opcode;
input  [63:0] grp_fu_23763_p_dout0;
output   grp_fu_23763_p_ce;
output  [63:0] grp_fu_23767_p_din0;
output  [63:0] grp_fu_23767_p_din1;
output  [1:0] grp_fu_23767_p_opcode;
input  [63:0] grp_fu_23767_p_dout0;
output   grp_fu_23767_p_ce;
output  [63:0] grp_fu_23771_p_din0;
output  [63:0] grp_fu_23771_p_din1;
output  [1:0] grp_fu_23771_p_opcode;
input  [63:0] grp_fu_23771_p_dout0;
output   grp_fu_23771_p_ce;
output  [63:0] grp_fu_23775_p_din0;
output  [63:0] grp_fu_23775_p_din1;
output  [1:0] grp_fu_23775_p_opcode;
input  [63:0] grp_fu_23775_p_dout0;
output   grp_fu_23775_p_ce;
output  [63:0] grp_fu_23779_p_din0;
output  [63:0] grp_fu_23779_p_din1;
output  [1:0] grp_fu_23779_p_opcode;
input  [63:0] grp_fu_23779_p_dout0;
output   grp_fu_23779_p_ce;
output  [63:0] grp_fu_23783_p_din0;
output  [63:0] grp_fu_23783_p_din1;
output  [1:0] grp_fu_23783_p_opcode;
input  [63:0] grp_fu_23783_p_dout0;
output   grp_fu_23783_p_ce;
output  [63:0] grp_fu_23787_p_din0;
output  [63:0] grp_fu_23787_p_din1;
output  [1:0] grp_fu_23787_p_opcode;
input  [63:0] grp_fu_23787_p_dout0;
output   grp_fu_23787_p_ce;
output  [63:0] grp_fu_23791_p_din0;
output  [63:0] grp_fu_23791_p_din1;
output  [1:0] grp_fu_23791_p_opcode;
input  [63:0] grp_fu_23791_p_dout0;
output   grp_fu_23791_p_ce;
output  [63:0] grp_fu_23795_p_din0;
output  [63:0] grp_fu_23795_p_din1;
output  [1:0] grp_fu_23795_p_opcode;
input  [63:0] grp_fu_23795_p_dout0;
output   grp_fu_23795_p_ce;
output  [63:0] grp_fu_23799_p_din0;
output  [63:0] grp_fu_23799_p_din1;
output  [1:0] grp_fu_23799_p_opcode;
input  [63:0] grp_fu_23799_p_dout0;
output   grp_fu_23799_p_ce;
output  [63:0] grp_fu_23803_p_din0;
output  [63:0] grp_fu_23803_p_din1;
output  [1:0] grp_fu_23803_p_opcode;
input  [63:0] grp_fu_23803_p_dout0;
output   grp_fu_23803_p_ce;
output  [63:0] grp_fu_23807_p_din0;
output  [63:0] grp_fu_23807_p_din1;
output  [1:0] grp_fu_23807_p_opcode;
input  [63:0] grp_fu_23807_p_dout0;
output   grp_fu_23807_p_ce;
output  [63:0] grp_fu_23811_p_din0;
output  [63:0] grp_fu_23811_p_din1;
output  [1:0] grp_fu_23811_p_opcode;
input  [63:0] grp_fu_23811_p_dout0;
output   grp_fu_23811_p_ce;
output  [63:0] grp_fu_23815_p_din0;
output  [63:0] grp_fu_23815_p_din1;
output  [1:0] grp_fu_23815_p_opcode;
input  [63:0] grp_fu_23815_p_dout0;
output   grp_fu_23815_p_ce;
output  [63:0] grp_fu_23819_p_din0;
output  [63:0] grp_fu_23819_p_din1;
output  [1:0] grp_fu_23819_p_opcode;
input  [63:0] grp_fu_23819_p_dout0;
output   grp_fu_23819_p_ce;
output  [63:0] grp_fu_23823_p_din0;
output  [63:0] grp_fu_23823_p_din1;
output  [1:0] grp_fu_23823_p_opcode;
input  [63:0] grp_fu_23823_p_dout0;
output   grp_fu_23823_p_ce;
output  [63:0] grp_fu_23827_p_din0;
output  [63:0] grp_fu_23827_p_din1;
output  [1:0] grp_fu_23827_p_opcode;
input  [63:0] grp_fu_23827_p_dout0;
output   grp_fu_23827_p_ce;
output  [63:0] grp_fu_23831_p_din0;
output  [63:0] grp_fu_23831_p_din1;
output  [1:0] grp_fu_23831_p_opcode;
input  [63:0] grp_fu_23831_p_dout0;
output   grp_fu_23831_p_ce;
output  [63:0] grp_fu_23835_p_din0;
output  [63:0] grp_fu_23835_p_din1;
output  [1:0] grp_fu_23835_p_opcode;
input  [63:0] grp_fu_23835_p_dout0;
output   grp_fu_23835_p_ce;
output  [63:0] grp_fu_23839_p_din0;
output  [63:0] grp_fu_23839_p_din1;
output  [1:0] grp_fu_23839_p_opcode;
input  [63:0] grp_fu_23839_p_dout0;
output   grp_fu_23839_p_ce;
output  [63:0] grp_fu_23843_p_din0;
output  [63:0] grp_fu_23843_p_din1;
output  [1:0] grp_fu_23843_p_opcode;
input  [63:0] grp_fu_23843_p_dout0;
output   grp_fu_23843_p_ce;
output  [63:0] grp_fu_23847_p_din0;
output  [63:0] grp_fu_23847_p_din1;
output  [1:0] grp_fu_23847_p_opcode;
input  [63:0] grp_fu_23847_p_dout0;
output   grp_fu_23847_p_ce;
output  [63:0] grp_fu_23851_p_din0;
output  [63:0] grp_fu_23851_p_din1;
output  [1:0] grp_fu_23851_p_opcode;
input  [63:0] grp_fu_23851_p_dout0;
output   grp_fu_23851_p_ce;
output  [63:0] grp_fu_23855_p_din0;
output  [63:0] grp_fu_23855_p_din1;
output  [1:0] grp_fu_23855_p_opcode;
input  [63:0] grp_fu_23855_p_dout0;
output   grp_fu_23855_p_ce;
output  [63:0] grp_fu_23859_p_din0;
output  [63:0] grp_fu_23859_p_din1;
output  [1:0] grp_fu_23859_p_opcode;
input  [63:0] grp_fu_23859_p_dout0;
output   grp_fu_23859_p_ce;
output  [63:0] grp_fu_23863_p_din0;
output  [63:0] grp_fu_23863_p_din1;
output  [1:0] grp_fu_23863_p_opcode;
input  [63:0] grp_fu_23863_p_dout0;
output   grp_fu_23863_p_ce;
output  [63:0] grp_fu_23867_p_din0;
output  [63:0] grp_fu_23867_p_din1;
output  [1:0] grp_fu_23867_p_opcode;
input  [63:0] grp_fu_23867_p_dout0;
output   grp_fu_23867_p_ce;
output  [63:0] grp_fu_23871_p_din0;
output  [63:0] grp_fu_23871_p_din1;
output  [1:0] grp_fu_23871_p_opcode;
input  [63:0] grp_fu_23871_p_dout0;
output   grp_fu_23871_p_ce;
output  [63:0] grp_fu_23875_p_din0;
output  [63:0] grp_fu_23875_p_din1;
output  [1:0] grp_fu_23875_p_opcode;
input  [63:0] grp_fu_23875_p_dout0;
output   grp_fu_23875_p_ce;
output  [63:0] grp_fu_23879_p_din0;
output  [63:0] grp_fu_23879_p_din1;
output  [1:0] grp_fu_23879_p_opcode;
input  [63:0] grp_fu_23879_p_dout0;
output   grp_fu_23879_p_ce;
output  [63:0] grp_fu_23883_p_din0;
output  [63:0] grp_fu_23883_p_din1;
output  [1:0] grp_fu_23883_p_opcode;
input  [63:0] grp_fu_23883_p_dout0;
output   grp_fu_23883_p_ce;
output  [63:0] grp_fu_23887_p_din0;
output  [63:0] grp_fu_23887_p_din1;
output  [1:0] grp_fu_23887_p_opcode;
input  [63:0] grp_fu_23887_p_dout0;
output   grp_fu_23887_p_ce;
output  [63:0] grp_fu_23891_p_din0;
output  [63:0] grp_fu_23891_p_din1;
output  [1:0] grp_fu_23891_p_opcode;
input  [63:0] grp_fu_23891_p_dout0;
output   grp_fu_23891_p_ce;
output  [63:0] grp_fu_23895_p_din0;
output  [63:0] grp_fu_23895_p_din1;
output  [1:0] grp_fu_23895_p_opcode;
input  [63:0] grp_fu_23895_p_dout0;
output   grp_fu_23895_p_ce;
output  [63:0] grp_fu_23899_p_din0;
output  [63:0] grp_fu_23899_p_din1;
output  [1:0] grp_fu_23899_p_opcode;
input  [63:0] grp_fu_23899_p_dout0;
output   grp_fu_23899_p_ce;
output  [63:0] grp_fu_23903_p_din0;
output  [63:0] grp_fu_23903_p_din1;
output  [1:0] grp_fu_23903_p_opcode;
input  [63:0] grp_fu_23903_p_dout0;
output   grp_fu_23903_p_ce;
output  [63:0] grp_fu_23907_p_din0;
output  [63:0] grp_fu_23907_p_din1;
output  [1:0] grp_fu_23907_p_opcode;
input  [63:0] grp_fu_23907_p_dout0;
output   grp_fu_23907_p_ce;
output  [63:0] grp_fu_23911_p_din0;
output  [63:0] grp_fu_23911_p_din1;
output  [1:0] grp_fu_23911_p_opcode;
input  [63:0] grp_fu_23911_p_dout0;
output   grp_fu_23911_p_ce;
output  [63:0] grp_fu_23915_p_din0;
output  [63:0] grp_fu_23915_p_din1;
output  [1:0] grp_fu_23915_p_opcode;
input  [63:0] grp_fu_23915_p_dout0;
output   grp_fu_23915_p_ce;
output  [63:0] grp_fu_23919_p_din0;
output  [63:0] grp_fu_23919_p_din1;
output  [1:0] grp_fu_23919_p_opcode;
input  [63:0] grp_fu_23919_p_dout0;
output   grp_fu_23919_p_ce;
output  [63:0] grp_fu_23923_p_din0;
output  [63:0] grp_fu_23923_p_din1;
output  [1:0] grp_fu_23923_p_opcode;
input  [63:0] grp_fu_23923_p_dout0;
output   grp_fu_23923_p_ce;
output  [63:0] grp_fu_23927_p_din0;
output  [63:0] grp_fu_23927_p_din1;
output  [1:0] grp_fu_23927_p_opcode;
input  [63:0] grp_fu_23927_p_dout0;
output   grp_fu_23927_p_ce;
output  [63:0] grp_fu_23931_p_din0;
output  [63:0] grp_fu_23931_p_din1;
output  [1:0] grp_fu_23931_p_opcode;
input  [63:0] grp_fu_23931_p_dout0;
output   grp_fu_23931_p_ce;
output  [63:0] grp_fu_23935_p_din0;
output  [63:0] grp_fu_23935_p_din1;
output  [1:0] grp_fu_23935_p_opcode;
input  [63:0] grp_fu_23935_p_dout0;
output   grp_fu_23935_p_ce;
output  [63:0] grp_fu_23939_p_din0;
output  [63:0] grp_fu_23939_p_din1;
output  [1:0] grp_fu_23939_p_opcode;
input  [63:0] grp_fu_23939_p_dout0;
output   grp_fu_23939_p_ce;
output  [63:0] grp_fu_23943_p_din0;
output  [63:0] grp_fu_23943_p_din1;
output  [1:0] grp_fu_23943_p_opcode;
input  [63:0] grp_fu_23943_p_dout0;
output   grp_fu_23943_p_ce;
output  [63:0] grp_fu_23947_p_din0;
output  [63:0] grp_fu_23947_p_din1;
output  [1:0] grp_fu_23947_p_opcode;
input  [63:0] grp_fu_23947_p_dout0;
output   grp_fu_23947_p_ce;
output  [63:0] grp_fu_23951_p_din0;
output  [63:0] grp_fu_23951_p_din1;
output  [1:0] grp_fu_23951_p_opcode;
input  [63:0] grp_fu_23951_p_dout0;
output   grp_fu_23951_p_ce;
output  [63:0] grp_fu_23955_p_din0;
output  [63:0] grp_fu_23955_p_din1;
output  [1:0] grp_fu_23955_p_opcode;
input  [63:0] grp_fu_23955_p_dout0;
output   grp_fu_23955_p_ce;
output  [63:0] grp_fu_23959_p_din0;
output  [63:0] grp_fu_23959_p_din1;
output  [1:0] grp_fu_23959_p_opcode;
input  [63:0] grp_fu_23959_p_dout0;
output   grp_fu_23959_p_ce;
output  [63:0] grp_fu_23963_p_din0;
output  [63:0] grp_fu_23963_p_din1;
output  [1:0] grp_fu_23963_p_opcode;
input  [63:0] grp_fu_23963_p_dout0;
output   grp_fu_23963_p_ce;
output  [63:0] grp_fu_23967_p_din0;
output  [63:0] grp_fu_23967_p_din1;
output  [1:0] grp_fu_23967_p_opcode;
input  [63:0] grp_fu_23967_p_dout0;
output   grp_fu_23967_p_ce;
output  [63:0] grp_fu_23971_p_din0;
output  [63:0] grp_fu_23971_p_din1;
output  [1:0] grp_fu_23971_p_opcode;
input  [63:0] grp_fu_23971_p_dout0;
output   grp_fu_23971_p_ce;
output  [63:0] grp_fu_23975_p_din0;
output  [63:0] grp_fu_23975_p_din1;
output  [1:0] grp_fu_23975_p_opcode;
input  [63:0] grp_fu_23975_p_dout0;
output   grp_fu_23975_p_ce;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [63:0] grp_fu_1262_p0;
reg   [63:0] grp_fu_1262_p1;
reg   [1:0] grp_fu_1262_opcode;
reg    grp_fu_1262_ce;
reg    grp_fu_1266_ce;
reg    grp_fu_1270_ce;
reg    grp_fu_1274_ce;
reg    grp_fu_1278_ce;
reg    grp_fu_1282_ce;
reg    grp_fu_1286_ce;
reg    grp_fu_1290_ce;
reg    grp_fu_1294_ce;
reg    grp_fu_1298_ce;
reg    grp_fu_1302_ce;
reg    grp_fu_1306_ce;
reg    grp_fu_1310_ce;
reg    grp_fu_1314_ce;
reg    grp_fu_1318_ce;
reg    grp_fu_1322_ce;
reg    grp_fu_1326_ce;
reg    grp_fu_1330_ce;
reg    grp_fu_1334_ce;
reg    grp_fu_1338_ce;
reg    grp_fu_1342_ce;
reg    grp_fu_1346_ce;
reg    grp_fu_1350_ce;
reg    grp_fu_1354_ce;
reg    grp_fu_1358_ce;
reg    grp_fu_1362_ce;
reg    grp_fu_1366_ce;
reg    grp_fu_1370_ce;
reg    grp_fu_1374_ce;
reg    grp_fu_1378_ce;
reg    grp_fu_1382_ce;
reg    grp_fu_1386_ce;
reg    grp_fu_1390_ce;
reg    grp_fu_1394_ce;
reg    grp_fu_1398_ce;
reg    grp_fu_1402_ce;
reg    grp_fu_1406_ce;
reg    grp_fu_1410_ce;
reg    grp_fu_1414_ce;
reg    grp_fu_1418_ce;
reg    grp_fu_1422_ce;
reg    grp_fu_1426_ce;
reg    grp_fu_1430_ce;
reg    grp_fu_1434_ce;
reg    grp_fu_1438_ce;
reg    grp_fu_1442_ce;
reg    grp_fu_1446_ce;
reg    grp_fu_1450_ce;
reg    grp_fu_1454_ce;
reg    grp_fu_1458_ce;
reg    grp_fu_1462_ce;
reg    grp_fu_1466_ce;
reg    grp_fu_1470_ce;
reg    grp_fu_1474_ce;
reg    grp_fu_1478_ce;
reg    grp_fu_1482_ce;
reg    grp_fu_1486_ce;
reg    grp_fu_1490_ce;
reg    grp_fu_1494_ce;
reg    grp_fu_1498_ce;
reg    grp_fu_1502_ce;
reg    grp_fu_1506_ce;
reg    grp_fu_1510_ce;
reg    grp_fu_1514_ce;
reg    grp_fu_1518_ce;
reg    grp_fu_1522_ce;
reg    grp_fu_1526_ce;
reg    grp_fu_1530_ce;
reg    grp_fu_1534_ce;
reg    grp_fu_1538_ce;
reg    grp_fu_1542_ce;
reg    grp_fu_1546_ce;
reg    grp_fu_1550_ce;
reg    grp_fu_1554_ce;
reg    grp_fu_1558_ce;
reg    grp_fu_1562_ce;
reg    grp_fu_1566_ce;
reg    grp_fu_1570_ce;
reg    grp_fu_1574_ce;
reg    grp_fu_1578_ce;
reg    grp_fu_1582_ce;
reg    grp_fu_1586_ce;
reg    grp_fu_1590_ce;
reg    grp_fu_1594_ce;
reg    grp_fu_1598_ce;
reg    grp_fu_1602_ce;
reg    grp_fu_1606_ce;
reg    grp_fu_1610_ce;
reg    grp_fu_1614_ce;
reg    grp_fu_1618_ce;
reg    grp_fu_1622_ce;
reg    grp_fu_1626_ce;
reg    grp_fu_1630_ce;
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
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2_ap_vld),.activations_1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1_ap_vld),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.input_activations_0_val(input_activations_0_val),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.input_activations_1_val(input_activations_1_val),.weights3_2_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_address0),.weights3_2_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_ce0),.weights3_2_q0(weights3_2_q0),.input_activations_2_val(input_activations_2_val),.weights3_3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_address0),.weights3_3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_ce0),.weights3_3_q0(weights3_3_q0),.input_activations_3_val(input_activations_3_val),.weights3_4_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_address0),.weights3_4_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_ce0),.weights3_4_q0(weights3_4_q0),.input_activations_4_val(input_activations_4_val),.weights3_5_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_address0),.weights3_5_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_ce0),.weights3_5_q0(weights3_5_q0),.input_activations_5_val(input_activations_5_val),.weights3_6_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_address0),.weights3_6_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_ce0),.weights3_6_q0(weights3_6_q0),.input_activations_6_val(input_activations_6_val),.weights3_7_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_address0),.weights3_7_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_ce0),.weights3_7_q0(weights3_7_q0),.input_activations_7_val(input_activations_7_val),.weights3_8_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_address0),.weights3_8_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_ce0),.weights3_8_q0(weights3_8_q0),.input_activations_8_val(input_activations_8_val),.weights3_9_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_address0),.weights3_9_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_ce0),.weights3_9_q0(weights3_9_q0),.input_activations_9_val(input_activations_9_val),.weights3_10_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_address0),.weights3_10_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_ce0),.weights3_10_q0(weights3_10_q0),.input_activations_10_val(input_activations_10_val),.weights3_11_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_address0),.weights3_11_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_ce0),.weights3_11_q0(weights3_11_q0),.input_activations_11_val(input_activations_11_val),.weights3_12_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_address0),.weights3_12_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_ce0),.weights3_12_q0(weights3_12_q0),.input_activations_12_val(input_activations_12_val),.weights3_13_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_address0),.weights3_13_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_ce0),.weights3_13_q0(weights3_13_q0),.input_activations_13_val(input_activations_13_val),.weights3_14_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_address0),.weights3_14_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_ce0),.weights3_14_q0(weights3_14_q0),.input_activations_14_val(input_activations_14_val),.weights3_15_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_address0),.weights3_15_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_ce0),.weights3_15_q0(weights3_15_q0),.input_activations_15_val(input_activations_15_val),.weights3_16_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_address0),.weights3_16_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_ce0),.weights3_16_q0(weights3_16_q0),.input_activations_16_val(input_activations_16_val),.weights3_17_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_address0),.weights3_17_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_ce0),.weights3_17_q0(weights3_17_q0),.input_activations_17_val(input_activations_17_val),.weights3_18_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_address0),.weights3_18_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_ce0),.weights3_18_q0(weights3_18_q0),.input_activations_18_val(input_activations_18_val),.weights3_19_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_address0),.weights3_19_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_ce0),.weights3_19_q0(weights3_19_q0),.input_activations_19_val(input_activations_19_val),.weights3_20_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_address0),.weights3_20_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_ce0),.weights3_20_q0(weights3_20_q0),.input_activations_20_val(input_activations_20_val),.weights3_21_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_address0),.weights3_21_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_ce0),.weights3_21_q0(weights3_21_q0),.input_activations_21_val(input_activations_21_val),.weights3_22_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_address0),.weights3_22_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_ce0),.weights3_22_q0(weights3_22_q0),.input_activations_22_val(input_activations_22_val),.weights3_23_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_address0),.weights3_23_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_ce0),.weights3_23_q0(weights3_23_q0),.input_activations_23_val(input_activations_23_val),.weights3_24_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_address0),.weights3_24_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_ce0),.weights3_24_q0(weights3_24_q0),.input_activations_24_val(input_activations_24_val),.weights3_25_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_address0),.weights3_25_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_ce0),.weights3_25_q0(weights3_25_q0),.input_activations_25_val(input_activations_25_val),.weights3_26_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_address0),.weights3_26_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_ce0),.weights3_26_q0(weights3_26_q0),.input_activations_26_val(input_activations_26_val),.weights3_27_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_address0),.weights3_27_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_ce0),.weights3_27_q0(weights3_27_q0),.input_activations_27_val(input_activations_27_val),.weights3_28_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_address0),.weights3_28_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_ce0),.weights3_28_q0(weights3_28_q0),.input_activations_28_val(input_activations_28_val),.weights3_29_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_address0),.weights3_29_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_ce0),.weights3_29_q0(weights3_29_q0),.input_activations_29_val(input_activations_29_val),.weights3_30_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_address0),.weights3_30_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_ce0),.weights3_30_q0(weights3_30_q0),.input_activations_30_val(input_activations_30_val),.weights3_31_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_address0),.weights3_31_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_ce0),.weights3_31_q0(weights3_31_q0),.input_activations_31_val(input_activations_31_val),.weights3_32_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_address0),.weights3_32_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_ce0),.weights3_32_q0(weights3_32_q0),.input_activations_32_val(input_activations_32_val),.weights3_33_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_address0),.weights3_33_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_ce0),.weights3_33_q0(weights3_33_q0),.input_activations_33_val(input_activations_33_val),.weights3_34_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_address0),.weights3_34_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_ce0),.weights3_34_q0(weights3_34_q0),.input_activations_34_val(input_activations_34_val),.weights3_35_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_address0),.weights3_35_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_ce0),.weights3_35_q0(weights3_35_q0),.input_activations_35_val(input_activations_35_val),.weights3_36_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_address0),.weights3_36_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_ce0),.weights3_36_q0(weights3_36_q0),.input_activations_36_val(input_activations_36_val),.weights3_37_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_address0),.weights3_37_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_ce0),.weights3_37_q0(weights3_37_q0),.input_activations_37_val(input_activations_37_val),.weights3_38_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_address0),.weights3_38_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_ce0),.weights3_38_q0(weights3_38_q0),.input_activations_38_val(input_activations_38_val),.weights3_39_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_address0),.weights3_39_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_ce0),.weights3_39_q0(weights3_39_q0),.input_activations_39_val(input_activations_39_val),.weights3_40_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_address0),.weights3_40_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_ce0),.weights3_40_q0(weights3_40_q0),.input_activations_40_val(input_activations_40_val),.weights3_41_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_address0),.weights3_41_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_ce0),.weights3_41_q0(weights3_41_q0),.input_activations_41_val(input_activations_41_val),.weights3_42_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_address0),.weights3_42_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_ce0),.weights3_42_q0(weights3_42_q0),.input_activations_42_val(input_activations_42_val),.weights3_43_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_address0),.weights3_43_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_ce0),.weights3_43_q0(weights3_43_q0),.input_activations_43_val(input_activations_43_val),.weights3_44_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_address0),.weights3_44_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_ce0),.weights3_44_q0(weights3_44_q0),.input_activations_44_val(input_activations_44_val),.weights3_45_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_address0),.weights3_45_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_ce0),.weights3_45_q0(weights3_45_q0),.input_activations_45_val(input_activations_45_val),.weights3_46_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_address0),.weights3_46_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_ce0),.weights3_46_q0(weights3_46_q0),.input_activations_46_val(input_activations_46_val),.weights3_47_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_address0),.weights3_47_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_ce0),.weights3_47_q0(weights3_47_q0),.input_activations_47_val(input_activations_47_val),.weights3_48_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_address0),.weights3_48_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_ce0),.weights3_48_q0(weights3_48_q0),.input_activations_48_val(input_activations_48_val),.weights3_49_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_address0),.weights3_49_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_ce0),.weights3_49_q0(weights3_49_q0),.input_activations_49_val(input_activations_49_val),.weights3_50_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_address0),.weights3_50_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_ce0),.weights3_50_q0(weights3_50_q0),.input_activations_50_val(input_activations_50_val),.weights3_51_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_address0),.weights3_51_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_ce0),.weights3_51_q0(weights3_51_q0),.input_activations_51_val(input_activations_51_val),.weights3_52_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_address0),.weights3_52_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_ce0),.weights3_52_q0(weights3_52_q0),.input_activations_52_val(input_activations_52_val),.weights3_53_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_address0),.weights3_53_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_ce0),.weights3_53_q0(weights3_53_q0),.input_activations_53_val(input_activations_53_val),.weights3_54_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_address0),.weights3_54_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_ce0),.weights3_54_q0(weights3_54_q0),.input_activations_54_val(input_activations_54_val),.weights3_55_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_address0),.weights3_55_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_ce0),.weights3_55_q0(weights3_55_q0),.input_activations_55_val(input_activations_55_val),.weights3_56_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_address0),.weights3_56_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_ce0),.weights3_56_q0(weights3_56_q0),.input_activations_56_val(input_activations_56_val),.weights3_57_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_address0),.weights3_57_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_ce0),.weights3_57_q0(weights3_57_q0),.input_activations_57_val(input_activations_57_val),.weights3_58_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_address0),.weights3_58_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_ce0),.weights3_58_q0(weights3_58_q0),.input_activations_58_val(input_activations_58_val),.weights3_59_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_address0),.weights3_59_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_ce0),.weights3_59_q0(weights3_59_q0),.input_activations_59_val(input_activations_59_val),.weights3_60_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_address0),.weights3_60_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_ce0),.weights3_60_q0(weights3_60_q0),.input_activations_60_val(input_activations_60_val),.weights3_61_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_address0),.weights3_61_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_ce0),.weights3_61_q0(weights3_61_q0),.input_activations_61_val(input_activations_61_val),.weights3_62_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_address0),.weights3_62_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_ce0),.weights3_62_q0(weights3_62_q0),.input_activations_62_val(input_activations_62_val),.weights3_63_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_address0),.weights3_63_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_ce0),.weights3_63_q0(weights3_63_q0),.input_activations_63_val(input_activations_63_val),.grp_fu_1262_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din0),.grp_fu_1262_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din1),.grp_fu_1262_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_opcode),.grp_fu_1262_p_dout0(grp_fu_23723_p_dout0),.grp_fu_1262_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_ce),.grp_fu_1266_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din0),.grp_fu_1266_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din1),.grp_fu_1266_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_opcode),.grp_fu_1266_p_dout0(grp_fu_23727_p_dout0),.grp_fu_1266_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_ce),.grp_fu_1270_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din0),.grp_fu_1270_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din1),.grp_fu_1270_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_opcode),.grp_fu_1270_p_dout0(grp_fu_23731_p_dout0),.grp_fu_1270_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_ce),.grp_fu_1274_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din0),.grp_fu_1274_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din1),.grp_fu_1274_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_opcode),.grp_fu_1274_p_dout0(grp_fu_23735_p_dout0),.grp_fu_1274_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_ce),.grp_fu_1278_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din0),.grp_fu_1278_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din1),.grp_fu_1278_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_opcode),.grp_fu_1278_p_dout0(grp_fu_23739_p_dout0),.grp_fu_1278_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_ce),.grp_fu_1282_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din0),.grp_fu_1282_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din1),.grp_fu_1282_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_opcode),.grp_fu_1282_p_dout0(grp_fu_23743_p_dout0),.grp_fu_1282_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_ce),.grp_fu_1286_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din0),.grp_fu_1286_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din1),.grp_fu_1286_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_opcode),.grp_fu_1286_p_dout0(grp_fu_23747_p_dout0),.grp_fu_1286_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_ce),.grp_fu_1290_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din0),.grp_fu_1290_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din1),.grp_fu_1290_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_opcode),.grp_fu_1290_p_dout0(grp_fu_23751_p_dout0),.grp_fu_1290_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_ce),.grp_fu_1294_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din0),.grp_fu_1294_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din1),.grp_fu_1294_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_opcode),.grp_fu_1294_p_dout0(grp_fu_23755_p_dout0),.grp_fu_1294_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_ce),.grp_fu_1298_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din0),.grp_fu_1298_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din1),.grp_fu_1298_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_opcode),.grp_fu_1298_p_dout0(grp_fu_23759_p_dout0),.grp_fu_1298_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_ce),.grp_fu_1302_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din0),.grp_fu_1302_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din1),.grp_fu_1302_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_opcode),.grp_fu_1302_p_dout0(grp_fu_23763_p_dout0),.grp_fu_1302_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_ce),.grp_fu_1306_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din0),.grp_fu_1306_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din1),.grp_fu_1306_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_opcode),.grp_fu_1306_p_dout0(grp_fu_23767_p_dout0),.grp_fu_1306_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_ce),.grp_fu_1310_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din0),.grp_fu_1310_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din1),.grp_fu_1310_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_opcode),.grp_fu_1310_p_dout0(grp_fu_23771_p_dout0),.grp_fu_1310_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_ce),.grp_fu_1314_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din0),.grp_fu_1314_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din1),.grp_fu_1314_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_opcode),.grp_fu_1314_p_dout0(grp_fu_23775_p_dout0),.grp_fu_1314_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_ce),.grp_fu_1318_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din0),.grp_fu_1318_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din1),.grp_fu_1318_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_opcode),.grp_fu_1318_p_dout0(grp_fu_23779_p_dout0),.grp_fu_1318_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_ce),.grp_fu_1322_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din0),.grp_fu_1322_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din1),.grp_fu_1322_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_opcode),.grp_fu_1322_p_dout0(grp_fu_23783_p_dout0),.grp_fu_1322_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_ce),.grp_fu_1326_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din0),.grp_fu_1326_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din1),.grp_fu_1326_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_opcode),.grp_fu_1326_p_dout0(grp_fu_23787_p_dout0),.grp_fu_1326_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_ce),.grp_fu_1330_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din0),.grp_fu_1330_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din1),.grp_fu_1330_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_opcode),.grp_fu_1330_p_dout0(grp_fu_23791_p_dout0),.grp_fu_1330_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_ce),.grp_fu_1334_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din0),.grp_fu_1334_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din1),.grp_fu_1334_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_opcode),.grp_fu_1334_p_dout0(grp_fu_23795_p_dout0),.grp_fu_1334_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_ce),.grp_fu_1338_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din0),.grp_fu_1338_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din1),.grp_fu_1338_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_opcode),.grp_fu_1338_p_dout0(grp_fu_23799_p_dout0),.grp_fu_1338_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_ce),.grp_fu_1342_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din0),.grp_fu_1342_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din1),.grp_fu_1342_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_opcode),.grp_fu_1342_p_dout0(grp_fu_23803_p_dout0),.grp_fu_1342_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_ce),.grp_fu_1346_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din0),.grp_fu_1346_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din1),.grp_fu_1346_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_opcode),.grp_fu_1346_p_dout0(grp_fu_23807_p_dout0),.grp_fu_1346_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_ce),.grp_fu_1350_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din0),.grp_fu_1350_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din1),.grp_fu_1350_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_opcode),.grp_fu_1350_p_dout0(grp_fu_23811_p_dout0),.grp_fu_1350_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_ce),.grp_fu_1354_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din0),.grp_fu_1354_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din1),.grp_fu_1354_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_opcode),.grp_fu_1354_p_dout0(grp_fu_23815_p_dout0),.grp_fu_1354_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_ce),.grp_fu_1358_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din0),.grp_fu_1358_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din1),.grp_fu_1358_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_opcode),.grp_fu_1358_p_dout0(grp_fu_23819_p_dout0),.grp_fu_1358_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_ce),.grp_fu_1362_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din0),.grp_fu_1362_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din1),.grp_fu_1362_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_opcode),.grp_fu_1362_p_dout0(grp_fu_23823_p_dout0),.grp_fu_1362_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_ce),.grp_fu_1366_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din0),.grp_fu_1366_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din1),.grp_fu_1366_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_opcode),.grp_fu_1366_p_dout0(grp_fu_23827_p_dout0),.grp_fu_1366_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_ce),.grp_fu_1370_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din0),.grp_fu_1370_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din1),.grp_fu_1370_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_opcode),.grp_fu_1370_p_dout0(grp_fu_23831_p_dout0),.grp_fu_1370_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_ce),.grp_fu_1374_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din0),.grp_fu_1374_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din1),.grp_fu_1374_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_opcode),.grp_fu_1374_p_dout0(grp_fu_23835_p_dout0),.grp_fu_1374_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_ce),.grp_fu_1378_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din0),.grp_fu_1378_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din1),.grp_fu_1378_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_opcode),.grp_fu_1378_p_dout0(grp_fu_23839_p_dout0),.grp_fu_1378_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_ce),.grp_fu_1382_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din0),.grp_fu_1382_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din1),.grp_fu_1382_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_opcode),.grp_fu_1382_p_dout0(grp_fu_23843_p_dout0),.grp_fu_1382_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_ce),.grp_fu_1386_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din0),.grp_fu_1386_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din1),.grp_fu_1386_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_opcode),.grp_fu_1386_p_dout0(grp_fu_23847_p_dout0),.grp_fu_1386_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_ce),.grp_fu_1390_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din0),.grp_fu_1390_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din1),.grp_fu_1390_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_opcode),.grp_fu_1390_p_dout0(grp_fu_23851_p_dout0),.grp_fu_1390_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_ce),.grp_fu_1394_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din0),.grp_fu_1394_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din1),.grp_fu_1394_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_opcode),.grp_fu_1394_p_dout0(grp_fu_23855_p_dout0),.grp_fu_1394_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_ce),.grp_fu_1398_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din0),.grp_fu_1398_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din1),.grp_fu_1398_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_opcode),.grp_fu_1398_p_dout0(grp_fu_23859_p_dout0),.grp_fu_1398_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_ce),.grp_fu_1402_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din0),.grp_fu_1402_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din1),.grp_fu_1402_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_opcode),.grp_fu_1402_p_dout0(grp_fu_23863_p_dout0),.grp_fu_1402_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_ce),.grp_fu_1406_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din0),.grp_fu_1406_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din1),.grp_fu_1406_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_opcode),.grp_fu_1406_p_dout0(grp_fu_23867_p_dout0),.grp_fu_1406_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_ce),.grp_fu_1410_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din0),.grp_fu_1410_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din1),.grp_fu_1410_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_opcode),.grp_fu_1410_p_dout0(grp_fu_23871_p_dout0),.grp_fu_1410_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_ce),.grp_fu_1414_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din0),.grp_fu_1414_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din1),.grp_fu_1414_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_opcode),.grp_fu_1414_p_dout0(grp_fu_23875_p_dout0),.grp_fu_1414_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_ce),.grp_fu_1418_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din0),.grp_fu_1418_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din1),.grp_fu_1418_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_opcode),.grp_fu_1418_p_dout0(grp_fu_23879_p_dout0),.grp_fu_1418_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_ce),.grp_fu_1422_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din0),.grp_fu_1422_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din1),.grp_fu_1422_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_opcode),.grp_fu_1422_p_dout0(grp_fu_23883_p_dout0),.grp_fu_1422_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_ce),.grp_fu_1426_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din0),.grp_fu_1426_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din1),.grp_fu_1426_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_opcode),.grp_fu_1426_p_dout0(grp_fu_23887_p_dout0),.grp_fu_1426_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_ce),.grp_fu_1430_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din0),.grp_fu_1430_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din1),.grp_fu_1430_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_opcode),.grp_fu_1430_p_dout0(grp_fu_23891_p_dout0),.grp_fu_1430_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_ce),.grp_fu_1434_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din0),.grp_fu_1434_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din1),.grp_fu_1434_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_opcode),.grp_fu_1434_p_dout0(grp_fu_23895_p_dout0),.grp_fu_1434_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_ce),.grp_fu_1438_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din0),.grp_fu_1438_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din1),.grp_fu_1438_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_opcode),.grp_fu_1438_p_dout0(grp_fu_23899_p_dout0),.grp_fu_1438_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_ce),.grp_fu_1442_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din0),.grp_fu_1442_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din1),.grp_fu_1442_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_opcode),.grp_fu_1442_p_dout0(grp_fu_23903_p_dout0),.grp_fu_1442_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_ce),.grp_fu_1446_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din0),.grp_fu_1446_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din1),.grp_fu_1446_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_opcode),.grp_fu_1446_p_dout0(grp_fu_23907_p_dout0),.grp_fu_1446_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_ce),.grp_fu_1450_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din0),.grp_fu_1450_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din1),.grp_fu_1450_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_opcode),.grp_fu_1450_p_dout0(grp_fu_23911_p_dout0),.grp_fu_1450_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_ce),.grp_fu_1454_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din0),.grp_fu_1454_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din1),.grp_fu_1454_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_opcode),.grp_fu_1454_p_dout0(grp_fu_23915_p_dout0),.grp_fu_1454_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_ce),.grp_fu_1458_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din0),.grp_fu_1458_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din1),.grp_fu_1458_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_opcode),.grp_fu_1458_p_dout0(grp_fu_23919_p_dout0),.grp_fu_1458_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_ce),.grp_fu_1462_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din0),.grp_fu_1462_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din1),.grp_fu_1462_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_opcode),.grp_fu_1462_p_dout0(grp_fu_23923_p_dout0),.grp_fu_1462_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_ce),.grp_fu_1466_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din0),.grp_fu_1466_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din1),.grp_fu_1466_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_opcode),.grp_fu_1466_p_dout0(grp_fu_23927_p_dout0),.grp_fu_1466_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_ce),.grp_fu_1470_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din0),.grp_fu_1470_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din1),.grp_fu_1470_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_opcode),.grp_fu_1470_p_dout0(grp_fu_23931_p_dout0),.grp_fu_1470_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_ce),.grp_fu_1474_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din0),.grp_fu_1474_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din1),.grp_fu_1474_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_opcode),.grp_fu_1474_p_dout0(grp_fu_23935_p_dout0),.grp_fu_1474_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_ce),.grp_fu_1478_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din0),.grp_fu_1478_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din1),.grp_fu_1478_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_opcode),.grp_fu_1478_p_dout0(grp_fu_23939_p_dout0),.grp_fu_1478_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_ce),.grp_fu_1482_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din0),.grp_fu_1482_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din1),.grp_fu_1482_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_opcode),.grp_fu_1482_p_dout0(grp_fu_23943_p_dout0),.grp_fu_1482_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_ce),.grp_fu_1486_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din0),.grp_fu_1486_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din1),.grp_fu_1486_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_opcode),.grp_fu_1486_p_dout0(grp_fu_23947_p_dout0),.grp_fu_1486_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_ce),.grp_fu_1490_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din0),.grp_fu_1490_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din1),.grp_fu_1490_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_opcode),.grp_fu_1490_p_dout0(grp_fu_23951_p_dout0),.grp_fu_1490_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_ce),.grp_fu_1494_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din0),.grp_fu_1494_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din1),.grp_fu_1494_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_opcode),.grp_fu_1494_p_dout0(grp_fu_23955_p_dout0),.grp_fu_1494_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_ce),.grp_fu_1498_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din0),.grp_fu_1498_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din1),.grp_fu_1498_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_opcode),.grp_fu_1498_p_dout0(grp_fu_23959_p_dout0),.grp_fu_1498_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_ce),.grp_fu_1502_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din0),.grp_fu_1502_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din1),.grp_fu_1502_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_opcode),.grp_fu_1502_p_dout0(grp_fu_23963_p_dout0),.grp_fu_1502_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_ce),.grp_fu_1506_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din0),.grp_fu_1506_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din1),.grp_fu_1506_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_opcode),.grp_fu_1506_p_dout0(grp_fu_23967_p_dout0),.grp_fu_1506_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_ce),.grp_fu_1510_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din0),.grp_fu_1510_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din1),.grp_fu_1510_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_opcode),.grp_fu_1510_p_dout0(grp_fu_23971_p_dout0),.grp_fu_1510_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_ce),.grp_fu_1514_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din0),.grp_fu_1514_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din1),.grp_fu_1514_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_opcode),.grp_fu_1514_p_dout0(grp_fu_23975_p_dout0),.grp_fu_1514_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_ce),.grp_fu_1518_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din0),.grp_fu_1518_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din1),.grp_fu_1518_p_dout0(grp_fu_23979_p_dout0),.grp_fu_1518_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_ce),.grp_fu_1522_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din0),.grp_fu_1522_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din1),.grp_fu_1522_p_dout0(grp_fu_23983_p_dout0),.grp_fu_1522_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_ce),.grp_fu_1526_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din0),.grp_fu_1526_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din1),.grp_fu_1526_p_dout0(grp_fu_23987_p_dout0),.grp_fu_1526_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_ce),.grp_fu_1530_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din0),.grp_fu_1530_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din1),.grp_fu_1530_p_dout0(grp_fu_23991_p_dout0),.grp_fu_1530_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_ce),.grp_fu_1534_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din0),.grp_fu_1534_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din1),.grp_fu_1534_p_dout0(grp_fu_23995_p_dout0),.grp_fu_1534_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_ce),.grp_fu_1538_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din0),.grp_fu_1538_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din1),.grp_fu_1538_p_dout0(grp_fu_23999_p_dout0),.grp_fu_1538_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_ce),.grp_fu_1542_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din0),.grp_fu_1542_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din1),.grp_fu_1542_p_dout0(grp_fu_24003_p_dout0),.grp_fu_1542_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_ce),.grp_fu_1546_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din0),.grp_fu_1546_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din1),.grp_fu_1546_p_dout0(grp_fu_24007_p_dout0),.grp_fu_1546_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_ce),.grp_fu_1550_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din0),.grp_fu_1550_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din1),.grp_fu_1550_p_dout0(grp_fu_24011_p_dout0),.grp_fu_1550_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_ce),.grp_fu_1554_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din0),.grp_fu_1554_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din1),.grp_fu_1554_p_dout0(grp_fu_24015_p_dout0),.grp_fu_1554_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_ce),.grp_fu_1558_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din0),.grp_fu_1558_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din1),.grp_fu_1558_p_dout0(grp_fu_24019_p_dout0),.grp_fu_1558_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_ce),.grp_fu_1562_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din0),.grp_fu_1562_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din1),.grp_fu_1562_p_dout0(grp_fu_24023_p_dout0),.grp_fu_1562_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_ce),.grp_fu_1566_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din0),.grp_fu_1566_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din1),.grp_fu_1566_p_dout0(grp_fu_24027_p_dout0),.grp_fu_1566_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_ce),.grp_fu_1570_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din0),.grp_fu_1570_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din1),.grp_fu_1570_p_dout0(grp_fu_24031_p_dout0),.grp_fu_1570_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_ce),.grp_fu_1574_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din0),.grp_fu_1574_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din1),.grp_fu_1574_p_dout0(grp_fu_24035_p_dout0),.grp_fu_1574_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_ce),.grp_fu_1578_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din0),.grp_fu_1578_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din1),.grp_fu_1578_p_dout0(grp_fu_24039_p_dout0),.grp_fu_1578_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_ce),.grp_fu_1582_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din0),.grp_fu_1582_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din1),.grp_fu_1582_p_dout0(grp_fu_24043_p_dout0),.grp_fu_1582_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_ce),.grp_fu_1586_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din0),.grp_fu_1586_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din1),.grp_fu_1586_p_dout0(grp_fu_24047_p_dout0),.grp_fu_1586_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_ce),.grp_fu_1590_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din0),.grp_fu_1590_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din1),.grp_fu_1590_p_dout0(grp_fu_24051_p_dout0),.grp_fu_1590_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_ce),.grp_fu_1594_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din0),.grp_fu_1594_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din1),.grp_fu_1594_p_dout0(grp_fu_24055_p_dout0),.grp_fu_1594_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_ce),.grp_fu_1598_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din0),.grp_fu_1598_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din1),.grp_fu_1598_p_dout0(grp_fu_24059_p_dout0),.grp_fu_1598_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_ce),.grp_fu_1602_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din0),.grp_fu_1602_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din1),.grp_fu_1602_p_dout0(grp_fu_24063_p_dout0),.grp_fu_1602_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_ce),.grp_fu_1606_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din0),.grp_fu_1606_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din1),.grp_fu_1606_p_dout0(grp_fu_24067_p_dout0),.grp_fu_1606_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_ce),.grp_fu_1610_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din0),.grp_fu_1610_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din1),.grp_fu_1610_p_dout0(grp_fu_24071_p_dout0),.grp_fu_1610_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_ce),.grp_fu_1614_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din0),.grp_fu_1614_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din1),.grp_fu_1614_p_dout0(grp_fu_24075_p_dout0),.grp_fu_1614_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_ce),.grp_fu_1618_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din0),.grp_fu_1618_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din1),.grp_fu_1618_p_dout0(grp_fu_24079_p_dout0),.grp_fu_1618_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_ce),.grp_fu_1622_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din0),.grp_fu_1622_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din1),.grp_fu_1622_p_dout0(grp_fu_24083_p_dout0),.grp_fu_1622_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_ce),.grp_fu_1626_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din0),.grp_fu_1626_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din1),.grp_fu_1626_p_dout0(grp_fu_24087_p_dout0),.grp_fu_1626_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_ce),.grp_fu_1630_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din1),.grp_fu_1630_p_dout0(grp_fu_24091_p_dout0),.grp_fu_1630_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_ce),.grp_fu_1634_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din0),.grp_fu_1634_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din1),.grp_fu_1634_p_dout0(grp_fu_24095_p_dout0),.grp_fu_1634_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_ce),.grp_fu_1638_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din0),.grp_fu_1638_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din1),.grp_fu_1638_p_dout0(grp_fu_24099_p_dout0),.grp_fu_1638_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_ce),.grp_fu_1642_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din0),.grp_fu_1642_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din1),.grp_fu_1642_p_dout0(grp_fu_24103_p_dout0),.grp_fu_1642_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_ce),.grp_fu_1646_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din0),.grp_fu_1646_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din1),.grp_fu_1646_p_dout0(grp_fu_24107_p_dout0),.grp_fu_1646_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_ce),.grp_fu_1650_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din0),.grp_fu_1650_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din1),.grp_fu_1650_p_dout0(grp_fu_24111_p_dout0),.grp_fu_1650_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_ce),.grp_fu_1654_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din0),.grp_fu_1654_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din1),.grp_fu_1654_p_dout0(grp_fu_24115_p_dout0),.grp_fu_1654_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_ce),.grp_fu_1658_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din0),.grp_fu_1658_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din1),.grp_fu_1658_p_dout0(grp_fu_24119_p_dout0),.grp_fu_1658_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_ce),.grp_fu_1662_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din0),.grp_fu_1662_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din1),.grp_fu_1662_p_dout0(grp_fu_24123_p_dout0),.grp_fu_1662_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_ce),.grp_fu_1666_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din0),.grp_fu_1666_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din1),.grp_fu_1666_p_dout0(grp_fu_24127_p_dout0),.grp_fu_1666_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_ce),.grp_fu_1670_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din0),.grp_fu_1670_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din1),.grp_fu_1670_p_dout0(grp_fu_24131_p_dout0),.grp_fu_1670_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_ce),.grp_fu_1674_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din0),.grp_fu_1674_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din1),.grp_fu_1674_p_dout0(grp_fu_24135_p_dout0),.grp_fu_1674_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_ce),.grp_fu_1678_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din0),.grp_fu_1678_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din1),.grp_fu_1678_p_dout0(grp_fu_24139_p_dout0),.grp_fu_1678_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_ce),.grp_fu_1682_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din0),.grp_fu_1682_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din1),.grp_fu_1682_p_dout0(grp_fu_24143_p_dout0),.grp_fu_1682_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_ce),.grp_fu_1686_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din0),.grp_fu_1686_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din1),.grp_fu_1686_p_dout0(grp_fu_24147_p_dout0),.grp_fu_1686_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_ce),.grp_fu_1690_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din0),.grp_fu_1690_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din1),.grp_fu_1690_p_dout0(grp_fu_24151_p_dout0),.grp_fu_1690_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_ce),.grp_fu_1694_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din0),.grp_fu_1694_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din1),.grp_fu_1694_p_dout0(grp_fu_24155_p_dout0),.grp_fu_1694_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_ce),.grp_fu_1698_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din0),.grp_fu_1698_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din1),.grp_fu_1698_p_dout0(grp_fu_24159_p_dout0),.grp_fu_1698_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_ce),.grp_fu_1702_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din0),.grp_fu_1702_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din1),.grp_fu_1702_p_dout0(grp_fu_24163_p_dout0),.grp_fu_1702_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_ce),.grp_fu_1706_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din0),.grp_fu_1706_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din1),.grp_fu_1706_p_dout0(grp_fu_24167_p_dout0),.grp_fu_1706_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_ce),.grp_fu_1710_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din0),.grp_fu_1710_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din1),.grp_fu_1710_p_dout0(grp_fu_24171_p_dout0),.grp_fu_1710_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_ce),.grp_fu_1714_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din0),.grp_fu_1714_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din1),.grp_fu_1714_p_dout0(grp_fu_24175_p_dout0),.grp_fu_1714_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_ce),.grp_fu_1718_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din0),.grp_fu_1718_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din1),.grp_fu_1718_p_dout0(grp_fu_24179_p_dout0),.grp_fu_1718_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_ce),.grp_fu_1722_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din0),.grp_fu_1722_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din1),.grp_fu_1722_p_dout0(grp_fu_24183_p_dout0),.grp_fu_1722_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_ce),.grp_fu_1726_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din0),.grp_fu_1726_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din1),.grp_fu_1726_p_dout0(grp_fu_24187_p_dout0),.grp_fu_1726_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_ce),.grp_fu_1730_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din0),.grp_fu_1730_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din1),.grp_fu_1730_p_dout0(grp_fu_24191_p_dout0),.grp_fu_1730_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_ce),.grp_fu_1734_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din0),.grp_fu_1734_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din1),.grp_fu_1734_p_dout0(grp_fu_24195_p_dout0),.grp_fu_1734_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_ce),.grp_fu_1738_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din0),.grp_fu_1738_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din1),.grp_fu_1738_p_dout0(grp_fu_24199_p_dout0),.grp_fu_1738_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_ce),.grp_fu_1742_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din1),.grp_fu_1742_p_dout0(grp_fu_24203_p_dout0),.grp_fu_1742_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_ce),.grp_fu_1746_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din0),.grp_fu_1746_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din1),.grp_fu_1746_p_dout0(grp_fu_24207_p_dout0),.grp_fu_1746_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_ce),.grp_fu_1750_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din0),.grp_fu_1750_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din1),.grp_fu_1750_p_dout0(grp_fu_24211_p_dout0),.grp_fu_1750_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_ce),.grp_fu_1754_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din0),.grp_fu_1754_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din1),.grp_fu_1754_p_dout0(grp_fu_24215_p_dout0),.grp_fu_1754_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_ce),.grp_fu_1758_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din0),.grp_fu_1758_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din1),.grp_fu_1758_p_dout0(grp_fu_24219_p_dout0),.grp_fu_1758_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_ce),.grp_fu_1762_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din0),.grp_fu_1762_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din1),.grp_fu_1762_p_dout0(grp_fu_24223_p_dout0),.grp_fu_1762_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_ce),.grp_fu_1766_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din0),.grp_fu_1766_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din1),.grp_fu_1766_p_dout0(grp_fu_24227_p_dout0),.grp_fu_1766_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_ce),.grp_fu_1770_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_24231_p_dout0),.grp_fu_1770_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1262_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din0),.grp_fu_1262_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din1),.grp_fu_1262_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_opcode),.grp_fu_1262_p_dout0(grp_fu_23723_p_dout0),.grp_fu_1262_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o_ap_vld == 1'b1))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o_ap_vld == 1'b1))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o_ap_vld == 1'b1))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_activations_2_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done == 1'b1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1262_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1262_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_ce;
    end else begin
        grp_fu_1262_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1262_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1262_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_opcode;
    end else begin
        grp_fu_1262_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1262_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1262_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din0;
    end else begin
        grp_fu_1262_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1262_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_grp_fu_1262_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1262_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1262_p_din1;
    end else begin
        grp_fu_1262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1266_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_ce;
    end else begin
        grp_fu_1266_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1270_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_ce;
    end else begin
        grp_fu_1270_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1274_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_ce;
    end else begin
        grp_fu_1274_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1278_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_ce;
    end else begin
        grp_fu_1278_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1282_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_ce;
    end else begin
        grp_fu_1282_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1286_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_ce;
    end else begin
        grp_fu_1286_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1290_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_ce;
    end else begin
        grp_fu_1290_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1294_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_ce;
    end else begin
        grp_fu_1294_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1298_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_ce;
    end else begin
        grp_fu_1298_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1302_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_ce;
    end else begin
        grp_fu_1302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1306_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_ce;
    end else begin
        grp_fu_1306_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1310_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_ce;
    end else begin
        grp_fu_1310_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1314_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_ce;
    end else begin
        grp_fu_1314_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1318_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_ce;
    end else begin
        grp_fu_1318_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1322_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_ce;
    end else begin
        grp_fu_1322_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1326_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_ce;
    end else begin
        grp_fu_1326_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1330_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_ce;
    end else begin
        grp_fu_1330_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1334_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_ce;
    end else begin
        grp_fu_1334_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1338_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_ce;
    end else begin
        grp_fu_1338_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1342_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_ce;
    end else begin
        grp_fu_1342_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1346_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_ce;
    end else begin
        grp_fu_1346_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1350_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_ce;
    end else begin
        grp_fu_1350_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1354_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_ce;
    end else begin
        grp_fu_1354_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1358_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_ce;
    end else begin
        grp_fu_1358_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1362_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_ce;
    end else begin
        grp_fu_1362_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1366_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_ce;
    end else begin
        grp_fu_1366_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1370_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_ce;
    end else begin
        grp_fu_1370_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1374_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_ce;
    end else begin
        grp_fu_1374_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1378_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_ce;
    end else begin
        grp_fu_1378_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1382_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_ce;
    end else begin
        grp_fu_1382_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1386_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_ce;
    end else begin
        grp_fu_1386_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1390_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_ce;
    end else begin
        grp_fu_1390_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1394_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_ce;
    end else begin
        grp_fu_1394_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1398_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_ce;
    end else begin
        grp_fu_1398_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1402_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_ce;
    end else begin
        grp_fu_1402_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1406_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_ce;
    end else begin
        grp_fu_1406_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1410_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_ce;
    end else begin
        grp_fu_1410_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1414_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_ce;
    end else begin
        grp_fu_1414_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1418_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_ce;
    end else begin
        grp_fu_1418_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1422_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_ce;
    end else begin
        grp_fu_1422_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1426_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_ce;
    end else begin
        grp_fu_1426_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1430_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_ce;
    end else begin
        grp_fu_1430_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1434_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_ce;
    end else begin
        grp_fu_1434_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1438_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_ce;
    end else begin
        grp_fu_1438_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1442_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_ce;
    end else begin
        grp_fu_1442_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1446_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_ce;
    end else begin
        grp_fu_1446_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1450_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_ce;
    end else begin
        grp_fu_1450_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1454_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_ce;
    end else begin
        grp_fu_1454_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1458_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_ce;
    end else begin
        grp_fu_1458_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1462_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_ce;
    end else begin
        grp_fu_1462_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1466_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_ce;
    end else begin
        grp_fu_1466_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1470_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_ce;
    end else begin
        grp_fu_1470_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1474_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_ce;
    end else begin
        grp_fu_1474_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1478_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_ce;
    end else begin
        grp_fu_1478_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1482_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_ce;
    end else begin
        grp_fu_1482_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1486_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_ce;
    end else begin
        grp_fu_1486_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1490_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_ce;
    end else begin
        grp_fu_1490_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1494_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_ce;
    end else begin
        grp_fu_1494_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1498_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_ce;
    end else begin
        grp_fu_1498_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1502_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_ce;
    end else begin
        grp_fu_1502_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1506_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_ce;
    end else begin
        grp_fu_1506_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1510_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_ce;
    end else begin
        grp_fu_1510_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1514_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_ce;
    end else begin
        grp_fu_1514_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1518_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_ce;
    end else begin
        grp_fu_1518_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1522_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_ce;
    end else begin
        grp_fu_1522_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1526_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_ce;
    end else begin
        grp_fu_1526_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1530_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_ce;
    end else begin
        grp_fu_1530_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1534_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_ce;
    end else begin
        grp_fu_1534_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1538_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_ce;
    end else begin
        grp_fu_1538_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1542_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_ce;
    end else begin
        grp_fu_1542_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1546_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_ce;
    end else begin
        grp_fu_1546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1550_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_ce;
    end else begin
        grp_fu_1550_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1554_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_ce;
    end else begin
        grp_fu_1554_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1558_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_ce;
    end else begin
        grp_fu_1558_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1562_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_ce;
    end else begin
        grp_fu_1562_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1566_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_ce;
    end else begin
        grp_fu_1566_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1570_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_ce;
    end else begin
        grp_fu_1570_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1574_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_ce;
    end else begin
        grp_fu_1574_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1578_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_ce;
    end else begin
        grp_fu_1578_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1582_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_ce;
    end else begin
        grp_fu_1582_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1586_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_ce;
    end else begin
        grp_fu_1586_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1590_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_ce;
    end else begin
        grp_fu_1590_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1594_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_ce;
    end else begin
        grp_fu_1594_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1598_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_ce;
    end else begin
        grp_fu_1598_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1602_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_ce;
    end else begin
        grp_fu_1602_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1606_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_ce;
    end else begin
        grp_fu_1606_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1610_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_ce;
    end else begin
        grp_fu_1610_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1614_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_ce;
    end else begin
        grp_fu_1614_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1618_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_ce;
    end else begin
        grp_fu_1618_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1622_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_ce;
    end else begin
        grp_fu_1622_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1626_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_ce;
    end else begin
        grp_fu_1626_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1630_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_ce;
    end else begin
        grp_fu_1630_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1634_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_ce;
    end else begin
        grp_fu_1634_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1638_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_ce;
    end else begin
        grp_fu_1638_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1642_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_ce;
    end else begin
        grp_fu_1642_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1646_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_ce;
    end else begin
        grp_fu_1646_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1650_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_ce;
    end else begin
        grp_fu_1650_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1654_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_ce;
    end else begin
        grp_fu_1654_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1658_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_ce;
    end else begin
        grp_fu_1658_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1662_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_ce;
    end else begin
        grp_fu_1662_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1666_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_ce;
    end else begin
        grp_fu_1666_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1670_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_ce;
    end else begin
        grp_fu_1670_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1674_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_ce;
    end else begin
        grp_fu_1674_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1678_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_ce;
    end else begin
        grp_fu_1678_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1682_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_ce;
    end else begin
        grp_fu_1682_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1686_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_ce;
    end else begin
        grp_fu_1686_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1690_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_ce;
    end else begin
        grp_fu_1690_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1694_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_ce;
    end else begin
        grp_fu_1694_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1698_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_ce;
    end else begin
        grp_fu_1698_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1702_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_ce;
    end else begin
        grp_fu_1702_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1706_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_ce;
    end else begin
        grp_fu_1706_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1710_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_ce;
    end else begin
        grp_fu_1710_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1714_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_ce;
    end else begin
        grp_fu_1714_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1718_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_ce;
    end else begin
        grp_fu_1718_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1722_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_ce;
    end else begin
        grp_fu_1722_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1726_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_ce;
    end else begin
        grp_fu_1726_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1730_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_ce;
    end else begin
        grp_fu_1730_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1734_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_ce;
    end else begin
        grp_fu_1734_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1738_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_ce;
    end else begin
        grp_fu_1738_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1742_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_ce;
    end else begin
        grp_fu_1742_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1746_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_ce;
    end else begin
        grp_fu_1746_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1750_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_ce;
    end else begin
        grp_fu_1750_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1754_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_ce;
    end else begin
        grp_fu_1754_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1758_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_ce;
    end else begin
        grp_fu_1758_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1762_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_ce;
    end else begin
        grp_fu_1762_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1766_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_ce;
    end else begin
        grp_fu_1766_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1770_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_biases3_ce0;
assign grp_fu_23723_p_ce = grp_fu_1262_ce;
assign grp_fu_23723_p_din0 = grp_fu_1262_p0;
assign grp_fu_23723_p_din1 = grp_fu_1262_p1;
assign grp_fu_23723_p_opcode = grp_fu_1262_opcode;
assign grp_fu_23727_p_ce = grp_fu_1266_ce;
assign grp_fu_23727_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din0;
assign grp_fu_23727_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_din1;
assign grp_fu_23727_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1266_p_opcode;
assign grp_fu_23731_p_ce = grp_fu_1270_ce;
assign grp_fu_23731_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din0;
assign grp_fu_23731_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_din1;
assign grp_fu_23731_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1270_p_opcode;
assign grp_fu_23735_p_ce = grp_fu_1274_ce;
assign grp_fu_23735_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din0;
assign grp_fu_23735_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_din1;
assign grp_fu_23735_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1274_p_opcode;
assign grp_fu_23739_p_ce = grp_fu_1278_ce;
assign grp_fu_23739_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din0;
assign grp_fu_23739_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_din1;
assign grp_fu_23739_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1278_p_opcode;
assign grp_fu_23743_p_ce = grp_fu_1282_ce;
assign grp_fu_23743_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din0;
assign grp_fu_23743_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_din1;
assign grp_fu_23743_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1282_p_opcode;
assign grp_fu_23747_p_ce = grp_fu_1286_ce;
assign grp_fu_23747_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din0;
assign grp_fu_23747_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1286_p_din1;
assign grp_fu_23747_p_opcode = 2'd0;
assign grp_fu_23751_p_ce = grp_fu_1290_ce;
assign grp_fu_23751_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din0;
assign grp_fu_23751_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1290_p_din1;
assign grp_fu_23751_p_opcode = 2'd0;
assign grp_fu_23755_p_ce = grp_fu_1294_ce;
assign grp_fu_23755_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din0;
assign grp_fu_23755_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1294_p_din1;
assign grp_fu_23755_p_opcode = 2'd0;
assign grp_fu_23759_p_ce = grp_fu_1298_ce;
assign grp_fu_23759_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din0;
assign grp_fu_23759_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1298_p_din1;
assign grp_fu_23759_p_opcode = 2'd0;
assign grp_fu_23763_p_ce = grp_fu_1302_ce;
assign grp_fu_23763_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din0;
assign grp_fu_23763_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1302_p_din1;
assign grp_fu_23763_p_opcode = 2'd0;
assign grp_fu_23767_p_ce = grp_fu_1306_ce;
assign grp_fu_23767_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din0;
assign grp_fu_23767_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1306_p_din1;
assign grp_fu_23767_p_opcode = 2'd0;
assign grp_fu_23771_p_ce = grp_fu_1310_ce;
assign grp_fu_23771_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din0;
assign grp_fu_23771_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1310_p_din1;
assign grp_fu_23771_p_opcode = 2'd0;
assign grp_fu_23775_p_ce = grp_fu_1314_ce;
assign grp_fu_23775_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din0;
assign grp_fu_23775_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1314_p_din1;
assign grp_fu_23775_p_opcode = 2'd0;
assign grp_fu_23779_p_ce = grp_fu_1318_ce;
assign grp_fu_23779_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din0;
assign grp_fu_23779_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1318_p_din1;
assign grp_fu_23779_p_opcode = 2'd0;
assign grp_fu_23783_p_ce = grp_fu_1322_ce;
assign grp_fu_23783_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din0;
assign grp_fu_23783_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1322_p_din1;
assign grp_fu_23783_p_opcode = 2'd0;
assign grp_fu_23787_p_ce = grp_fu_1326_ce;
assign grp_fu_23787_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din0;
assign grp_fu_23787_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1326_p_din1;
assign grp_fu_23787_p_opcode = 2'd0;
assign grp_fu_23791_p_ce = grp_fu_1330_ce;
assign grp_fu_23791_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din0;
assign grp_fu_23791_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1330_p_din1;
assign grp_fu_23791_p_opcode = 2'd0;
assign grp_fu_23795_p_ce = grp_fu_1334_ce;
assign grp_fu_23795_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din0;
assign grp_fu_23795_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1334_p_din1;
assign grp_fu_23795_p_opcode = 2'd0;
assign grp_fu_23799_p_ce = grp_fu_1338_ce;
assign grp_fu_23799_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din0;
assign grp_fu_23799_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1338_p_din1;
assign grp_fu_23799_p_opcode = 2'd0;
assign grp_fu_23803_p_ce = grp_fu_1342_ce;
assign grp_fu_23803_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din0;
assign grp_fu_23803_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1342_p_din1;
assign grp_fu_23803_p_opcode = 2'd0;
assign grp_fu_23807_p_ce = grp_fu_1346_ce;
assign grp_fu_23807_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din0;
assign grp_fu_23807_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1346_p_din1;
assign grp_fu_23807_p_opcode = 2'd0;
assign grp_fu_23811_p_ce = grp_fu_1350_ce;
assign grp_fu_23811_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din0;
assign grp_fu_23811_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1350_p_din1;
assign grp_fu_23811_p_opcode = 2'd0;
assign grp_fu_23815_p_ce = grp_fu_1354_ce;
assign grp_fu_23815_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din0;
assign grp_fu_23815_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1354_p_din1;
assign grp_fu_23815_p_opcode = 2'd0;
assign grp_fu_23819_p_ce = grp_fu_1358_ce;
assign grp_fu_23819_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din0;
assign grp_fu_23819_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1358_p_din1;
assign grp_fu_23819_p_opcode = 2'd0;
assign grp_fu_23823_p_ce = grp_fu_1362_ce;
assign grp_fu_23823_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din0;
assign grp_fu_23823_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1362_p_din1;
assign grp_fu_23823_p_opcode = 2'd0;
assign grp_fu_23827_p_ce = grp_fu_1366_ce;
assign grp_fu_23827_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din0;
assign grp_fu_23827_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1366_p_din1;
assign grp_fu_23827_p_opcode = 2'd0;
assign grp_fu_23831_p_ce = grp_fu_1370_ce;
assign grp_fu_23831_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din0;
assign grp_fu_23831_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1370_p_din1;
assign grp_fu_23831_p_opcode = 2'd0;
assign grp_fu_23835_p_ce = grp_fu_1374_ce;
assign grp_fu_23835_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din0;
assign grp_fu_23835_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1374_p_din1;
assign grp_fu_23835_p_opcode = 2'd0;
assign grp_fu_23839_p_ce = grp_fu_1378_ce;
assign grp_fu_23839_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din0;
assign grp_fu_23839_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1378_p_din1;
assign grp_fu_23839_p_opcode = 2'd0;
assign grp_fu_23843_p_ce = grp_fu_1382_ce;
assign grp_fu_23843_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din0;
assign grp_fu_23843_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1382_p_din1;
assign grp_fu_23843_p_opcode = 2'd0;
assign grp_fu_23847_p_ce = grp_fu_1386_ce;
assign grp_fu_23847_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din0;
assign grp_fu_23847_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1386_p_din1;
assign grp_fu_23847_p_opcode = 2'd0;
assign grp_fu_23851_p_ce = grp_fu_1390_ce;
assign grp_fu_23851_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din0;
assign grp_fu_23851_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1390_p_din1;
assign grp_fu_23851_p_opcode = 2'd0;
assign grp_fu_23855_p_ce = grp_fu_1394_ce;
assign grp_fu_23855_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din0;
assign grp_fu_23855_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1394_p_din1;
assign grp_fu_23855_p_opcode = 2'd0;
assign grp_fu_23859_p_ce = grp_fu_1398_ce;
assign grp_fu_23859_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din0;
assign grp_fu_23859_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1398_p_din1;
assign grp_fu_23859_p_opcode = 2'd0;
assign grp_fu_23863_p_ce = grp_fu_1402_ce;
assign grp_fu_23863_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din0;
assign grp_fu_23863_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1402_p_din1;
assign grp_fu_23863_p_opcode = 2'd0;
assign grp_fu_23867_p_ce = grp_fu_1406_ce;
assign grp_fu_23867_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din0;
assign grp_fu_23867_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1406_p_din1;
assign grp_fu_23867_p_opcode = 2'd0;
assign grp_fu_23871_p_ce = grp_fu_1410_ce;
assign grp_fu_23871_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din0;
assign grp_fu_23871_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1410_p_din1;
assign grp_fu_23871_p_opcode = 2'd0;
assign grp_fu_23875_p_ce = grp_fu_1414_ce;
assign grp_fu_23875_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din0;
assign grp_fu_23875_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1414_p_din1;
assign grp_fu_23875_p_opcode = 2'd0;
assign grp_fu_23879_p_ce = grp_fu_1418_ce;
assign grp_fu_23879_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din0;
assign grp_fu_23879_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1418_p_din1;
assign grp_fu_23879_p_opcode = 2'd0;
assign grp_fu_23883_p_ce = grp_fu_1422_ce;
assign grp_fu_23883_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din0;
assign grp_fu_23883_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1422_p_din1;
assign grp_fu_23883_p_opcode = 2'd0;
assign grp_fu_23887_p_ce = grp_fu_1426_ce;
assign grp_fu_23887_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din0;
assign grp_fu_23887_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1426_p_din1;
assign grp_fu_23887_p_opcode = 2'd0;
assign grp_fu_23891_p_ce = grp_fu_1430_ce;
assign grp_fu_23891_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din0;
assign grp_fu_23891_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1430_p_din1;
assign grp_fu_23891_p_opcode = 2'd0;
assign grp_fu_23895_p_ce = grp_fu_1434_ce;
assign grp_fu_23895_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din0;
assign grp_fu_23895_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1434_p_din1;
assign grp_fu_23895_p_opcode = 2'd0;
assign grp_fu_23899_p_ce = grp_fu_1438_ce;
assign grp_fu_23899_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din0;
assign grp_fu_23899_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1438_p_din1;
assign grp_fu_23899_p_opcode = 2'd0;
assign grp_fu_23903_p_ce = grp_fu_1442_ce;
assign grp_fu_23903_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din0;
assign grp_fu_23903_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1442_p_din1;
assign grp_fu_23903_p_opcode = 2'd0;
assign grp_fu_23907_p_ce = grp_fu_1446_ce;
assign grp_fu_23907_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din0;
assign grp_fu_23907_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1446_p_din1;
assign grp_fu_23907_p_opcode = 2'd0;
assign grp_fu_23911_p_ce = grp_fu_1450_ce;
assign grp_fu_23911_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din0;
assign grp_fu_23911_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1450_p_din1;
assign grp_fu_23911_p_opcode = 2'd0;
assign grp_fu_23915_p_ce = grp_fu_1454_ce;
assign grp_fu_23915_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din0;
assign grp_fu_23915_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1454_p_din1;
assign grp_fu_23915_p_opcode = 2'd0;
assign grp_fu_23919_p_ce = grp_fu_1458_ce;
assign grp_fu_23919_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din0;
assign grp_fu_23919_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1458_p_din1;
assign grp_fu_23919_p_opcode = 2'd0;
assign grp_fu_23923_p_ce = grp_fu_1462_ce;
assign grp_fu_23923_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din0;
assign grp_fu_23923_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1462_p_din1;
assign grp_fu_23923_p_opcode = 2'd0;
assign grp_fu_23927_p_ce = grp_fu_1466_ce;
assign grp_fu_23927_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din0;
assign grp_fu_23927_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1466_p_din1;
assign grp_fu_23927_p_opcode = 2'd0;
assign grp_fu_23931_p_ce = grp_fu_1470_ce;
assign grp_fu_23931_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din0;
assign grp_fu_23931_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1470_p_din1;
assign grp_fu_23931_p_opcode = 2'd0;
assign grp_fu_23935_p_ce = grp_fu_1474_ce;
assign grp_fu_23935_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din0;
assign grp_fu_23935_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1474_p_din1;
assign grp_fu_23935_p_opcode = 2'd0;
assign grp_fu_23939_p_ce = grp_fu_1478_ce;
assign grp_fu_23939_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din0;
assign grp_fu_23939_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1478_p_din1;
assign grp_fu_23939_p_opcode = 2'd0;
assign grp_fu_23943_p_ce = grp_fu_1482_ce;
assign grp_fu_23943_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din0;
assign grp_fu_23943_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1482_p_din1;
assign grp_fu_23943_p_opcode = 2'd0;
assign grp_fu_23947_p_ce = grp_fu_1486_ce;
assign grp_fu_23947_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din0;
assign grp_fu_23947_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1486_p_din1;
assign grp_fu_23947_p_opcode = 2'd0;
assign grp_fu_23951_p_ce = grp_fu_1490_ce;
assign grp_fu_23951_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din0;
assign grp_fu_23951_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1490_p_din1;
assign grp_fu_23951_p_opcode = 2'd0;
assign grp_fu_23955_p_ce = grp_fu_1494_ce;
assign grp_fu_23955_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din0;
assign grp_fu_23955_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1494_p_din1;
assign grp_fu_23955_p_opcode = 2'd0;
assign grp_fu_23959_p_ce = grp_fu_1498_ce;
assign grp_fu_23959_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din0;
assign grp_fu_23959_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1498_p_din1;
assign grp_fu_23959_p_opcode = 2'd0;
assign grp_fu_23963_p_ce = grp_fu_1502_ce;
assign grp_fu_23963_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din0;
assign grp_fu_23963_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1502_p_din1;
assign grp_fu_23963_p_opcode = 2'd0;
assign grp_fu_23967_p_ce = grp_fu_1506_ce;
assign grp_fu_23967_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din0;
assign grp_fu_23967_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1506_p_din1;
assign grp_fu_23967_p_opcode = 2'd0;
assign grp_fu_23971_p_ce = grp_fu_1510_ce;
assign grp_fu_23971_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din0;
assign grp_fu_23971_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1510_p_din1;
assign grp_fu_23971_p_opcode = 2'd0;
assign grp_fu_23975_p_ce = grp_fu_1514_ce;
assign grp_fu_23975_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din0;
assign grp_fu_23975_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1514_p_din1;
assign grp_fu_23975_p_opcode = 2'd0;
assign grp_fu_23979_p_ce = grp_fu_1518_ce;
assign grp_fu_23979_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din0;
assign grp_fu_23979_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1518_p_din1;
assign grp_fu_23983_p_ce = grp_fu_1522_ce;
assign grp_fu_23983_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din0;
assign grp_fu_23983_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1522_p_din1;
assign grp_fu_23987_p_ce = grp_fu_1526_ce;
assign grp_fu_23987_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din0;
assign grp_fu_23987_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1526_p_din1;
assign grp_fu_23991_p_ce = grp_fu_1530_ce;
assign grp_fu_23991_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din0;
assign grp_fu_23991_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1530_p_din1;
assign grp_fu_23995_p_ce = grp_fu_1534_ce;
assign grp_fu_23995_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din0;
assign grp_fu_23995_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1534_p_din1;
assign grp_fu_23999_p_ce = grp_fu_1538_ce;
assign grp_fu_23999_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din0;
assign grp_fu_23999_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1538_p_din1;
assign grp_fu_24003_p_ce = grp_fu_1542_ce;
assign grp_fu_24003_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din0;
assign grp_fu_24003_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1542_p_din1;
assign grp_fu_24007_p_ce = grp_fu_1546_ce;
assign grp_fu_24007_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din0;
assign grp_fu_24007_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1546_p_din1;
assign grp_fu_24011_p_ce = grp_fu_1550_ce;
assign grp_fu_24011_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din0;
assign grp_fu_24011_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1550_p_din1;
assign grp_fu_24015_p_ce = grp_fu_1554_ce;
assign grp_fu_24015_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din0;
assign grp_fu_24015_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1554_p_din1;
assign grp_fu_24019_p_ce = grp_fu_1558_ce;
assign grp_fu_24019_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din0;
assign grp_fu_24019_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1558_p_din1;
assign grp_fu_24023_p_ce = grp_fu_1562_ce;
assign grp_fu_24023_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din0;
assign grp_fu_24023_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1562_p_din1;
assign grp_fu_24027_p_ce = grp_fu_1566_ce;
assign grp_fu_24027_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din0;
assign grp_fu_24027_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1566_p_din1;
assign grp_fu_24031_p_ce = grp_fu_1570_ce;
assign grp_fu_24031_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din0;
assign grp_fu_24031_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1570_p_din1;
assign grp_fu_24035_p_ce = grp_fu_1574_ce;
assign grp_fu_24035_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din0;
assign grp_fu_24035_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1574_p_din1;
assign grp_fu_24039_p_ce = grp_fu_1578_ce;
assign grp_fu_24039_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din0;
assign grp_fu_24039_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1578_p_din1;
assign grp_fu_24043_p_ce = grp_fu_1582_ce;
assign grp_fu_24043_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din0;
assign grp_fu_24043_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1582_p_din1;
assign grp_fu_24047_p_ce = grp_fu_1586_ce;
assign grp_fu_24047_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din0;
assign grp_fu_24047_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1586_p_din1;
assign grp_fu_24051_p_ce = grp_fu_1590_ce;
assign grp_fu_24051_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din0;
assign grp_fu_24051_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1590_p_din1;
assign grp_fu_24055_p_ce = grp_fu_1594_ce;
assign grp_fu_24055_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din0;
assign grp_fu_24055_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1594_p_din1;
assign grp_fu_24059_p_ce = grp_fu_1598_ce;
assign grp_fu_24059_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din0;
assign grp_fu_24059_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1598_p_din1;
assign grp_fu_24063_p_ce = grp_fu_1602_ce;
assign grp_fu_24063_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din0;
assign grp_fu_24063_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1602_p_din1;
assign grp_fu_24067_p_ce = grp_fu_1606_ce;
assign grp_fu_24067_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din0;
assign grp_fu_24067_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1606_p_din1;
assign grp_fu_24071_p_ce = grp_fu_1610_ce;
assign grp_fu_24071_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din0;
assign grp_fu_24071_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1610_p_din1;
assign grp_fu_24075_p_ce = grp_fu_1614_ce;
assign grp_fu_24075_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din0;
assign grp_fu_24075_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1614_p_din1;
assign grp_fu_24079_p_ce = grp_fu_1618_ce;
assign grp_fu_24079_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din0;
assign grp_fu_24079_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1618_p_din1;
assign grp_fu_24083_p_ce = grp_fu_1622_ce;
assign grp_fu_24083_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din0;
assign grp_fu_24083_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1622_p_din1;
assign grp_fu_24087_p_ce = grp_fu_1626_ce;
assign grp_fu_24087_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din0;
assign grp_fu_24087_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1626_p_din1;
assign grp_fu_24091_p_ce = grp_fu_1630_ce;
assign grp_fu_24091_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din0;
assign grp_fu_24091_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1630_p_din1;
assign grp_fu_24095_p_ce = grp_fu_1634_ce;
assign grp_fu_24095_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din0;
assign grp_fu_24095_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1634_p_din1;
assign grp_fu_24099_p_ce = grp_fu_1638_ce;
assign grp_fu_24099_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din0;
assign grp_fu_24099_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1638_p_din1;
assign grp_fu_24103_p_ce = grp_fu_1642_ce;
assign grp_fu_24103_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din0;
assign grp_fu_24103_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1642_p_din1;
assign grp_fu_24107_p_ce = grp_fu_1646_ce;
assign grp_fu_24107_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din0;
assign grp_fu_24107_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1646_p_din1;
assign grp_fu_24111_p_ce = grp_fu_1650_ce;
assign grp_fu_24111_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din0;
assign grp_fu_24111_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1650_p_din1;
assign grp_fu_24115_p_ce = grp_fu_1654_ce;
assign grp_fu_24115_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din0;
assign grp_fu_24115_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1654_p_din1;
assign grp_fu_24119_p_ce = grp_fu_1658_ce;
assign grp_fu_24119_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din0;
assign grp_fu_24119_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1658_p_din1;
assign grp_fu_24123_p_ce = grp_fu_1662_ce;
assign grp_fu_24123_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din0;
assign grp_fu_24123_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1662_p_din1;
assign grp_fu_24127_p_ce = grp_fu_1666_ce;
assign grp_fu_24127_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din0;
assign grp_fu_24127_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1666_p_din1;
assign grp_fu_24131_p_ce = grp_fu_1670_ce;
assign grp_fu_24131_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din0;
assign grp_fu_24131_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1670_p_din1;
assign grp_fu_24135_p_ce = grp_fu_1674_ce;
assign grp_fu_24135_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din0;
assign grp_fu_24135_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1674_p_din1;
assign grp_fu_24139_p_ce = grp_fu_1678_ce;
assign grp_fu_24139_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din0;
assign grp_fu_24139_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1678_p_din1;
assign grp_fu_24143_p_ce = grp_fu_1682_ce;
assign grp_fu_24143_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din0;
assign grp_fu_24143_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1682_p_din1;
assign grp_fu_24147_p_ce = grp_fu_1686_ce;
assign grp_fu_24147_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din0;
assign grp_fu_24147_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1686_p_din1;
assign grp_fu_24151_p_ce = grp_fu_1690_ce;
assign grp_fu_24151_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din0;
assign grp_fu_24151_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1690_p_din1;
assign grp_fu_24155_p_ce = grp_fu_1694_ce;
assign grp_fu_24155_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din0;
assign grp_fu_24155_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1694_p_din1;
assign grp_fu_24159_p_ce = grp_fu_1698_ce;
assign grp_fu_24159_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din0;
assign grp_fu_24159_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1698_p_din1;
assign grp_fu_24163_p_ce = grp_fu_1702_ce;
assign grp_fu_24163_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din0;
assign grp_fu_24163_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1702_p_din1;
assign grp_fu_24167_p_ce = grp_fu_1706_ce;
assign grp_fu_24167_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din0;
assign grp_fu_24167_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1706_p_din1;
assign grp_fu_24171_p_ce = grp_fu_1710_ce;
assign grp_fu_24171_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din0;
assign grp_fu_24171_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1710_p_din1;
assign grp_fu_24175_p_ce = grp_fu_1714_ce;
assign grp_fu_24175_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din0;
assign grp_fu_24175_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1714_p_din1;
assign grp_fu_24179_p_ce = grp_fu_1718_ce;
assign grp_fu_24179_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din0;
assign grp_fu_24179_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1718_p_din1;
assign grp_fu_24183_p_ce = grp_fu_1722_ce;
assign grp_fu_24183_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din0;
assign grp_fu_24183_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1722_p_din1;
assign grp_fu_24187_p_ce = grp_fu_1726_ce;
assign grp_fu_24187_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din0;
assign grp_fu_24187_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1726_p_din1;
assign grp_fu_24191_p_ce = grp_fu_1730_ce;
assign grp_fu_24191_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din0;
assign grp_fu_24191_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1730_p_din1;
assign grp_fu_24195_p_ce = grp_fu_1734_ce;
assign grp_fu_24195_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din0;
assign grp_fu_24195_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1734_p_din1;
assign grp_fu_24199_p_ce = grp_fu_1738_ce;
assign grp_fu_24199_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din0;
assign grp_fu_24199_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1738_p_din1;
assign grp_fu_24203_p_ce = grp_fu_1742_ce;
assign grp_fu_24203_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din0;
assign grp_fu_24203_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1742_p_din1;
assign grp_fu_24207_p_ce = grp_fu_1746_ce;
assign grp_fu_24207_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din0;
assign grp_fu_24207_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1746_p_din1;
assign grp_fu_24211_p_ce = grp_fu_1750_ce;
assign grp_fu_24211_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din0;
assign grp_fu_24211_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1750_p_din1;
assign grp_fu_24215_p_ce = grp_fu_1754_ce;
assign grp_fu_24215_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din0;
assign grp_fu_24215_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1754_p_din1;
assign grp_fu_24219_p_ce = grp_fu_1758_ce;
assign grp_fu_24219_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din0;
assign grp_fu_24219_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1758_p_din1;
assign grp_fu_24223_p_ce = grp_fu_1762_ce;
assign grp_fu_24223_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din0;
assign grp_fu_24223_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1762_p_din1;
assign grp_fu_24227_p_ce = grp_fu_1766_ce;
assign grp_fu_24227_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din0;
assign grp_fu_24227_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1766_p_din1;
assign grp_fu_24231_p_ce = grp_fu_1770_ce;
assign grp_fu_24231_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din0;
assign grp_fu_24231_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_grp_fu_1770_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_930_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_ap_start_reg;
assign weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_address0;
assign weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_0_ce0;
assign weights3_10_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_address0;
assign weights3_10_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_10_ce0;
assign weights3_11_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_address0;
assign weights3_11_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_11_ce0;
assign weights3_12_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_address0;
assign weights3_12_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_12_ce0;
assign weights3_13_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_address0;
assign weights3_13_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_13_ce0;
assign weights3_14_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_address0;
assign weights3_14_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_14_ce0;
assign weights3_15_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_address0;
assign weights3_15_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_15_ce0;
assign weights3_16_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_address0;
assign weights3_16_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_16_ce0;
assign weights3_17_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_address0;
assign weights3_17_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_17_ce0;
assign weights3_18_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_address0;
assign weights3_18_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_18_ce0;
assign weights3_19_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_address0;
assign weights3_19_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_19_ce0;
assign weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_address0;
assign weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_1_ce0;
assign weights3_20_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_address0;
assign weights3_20_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_20_ce0;
assign weights3_21_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_address0;
assign weights3_21_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_21_ce0;
assign weights3_22_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_address0;
assign weights3_22_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_22_ce0;
assign weights3_23_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_address0;
assign weights3_23_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_23_ce0;
assign weights3_24_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_address0;
assign weights3_24_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_24_ce0;
assign weights3_25_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_address0;
assign weights3_25_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_25_ce0;
assign weights3_26_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_address0;
assign weights3_26_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_26_ce0;
assign weights3_27_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_address0;
assign weights3_27_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_27_ce0;
assign weights3_28_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_address0;
assign weights3_28_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_28_ce0;
assign weights3_29_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_address0;
assign weights3_29_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_29_ce0;
assign weights3_2_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_address0;
assign weights3_2_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_2_ce0;
assign weights3_30_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_address0;
assign weights3_30_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_30_ce0;
assign weights3_31_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_address0;
assign weights3_31_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_31_ce0;
assign weights3_32_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_address0;
assign weights3_32_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_32_ce0;
assign weights3_33_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_address0;
assign weights3_33_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_33_ce0;
assign weights3_34_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_address0;
assign weights3_34_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_34_ce0;
assign weights3_35_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_address0;
assign weights3_35_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_35_ce0;
assign weights3_36_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_address0;
assign weights3_36_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_36_ce0;
assign weights3_37_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_address0;
assign weights3_37_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_37_ce0;
assign weights3_38_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_address0;
assign weights3_38_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_38_ce0;
assign weights3_39_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_address0;
assign weights3_39_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_39_ce0;
assign weights3_3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_address0;
assign weights3_3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_3_ce0;
assign weights3_40_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_address0;
assign weights3_40_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_40_ce0;
assign weights3_41_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_address0;
assign weights3_41_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_41_ce0;
assign weights3_42_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_address0;
assign weights3_42_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_42_ce0;
assign weights3_43_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_address0;
assign weights3_43_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_43_ce0;
assign weights3_44_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_address0;
assign weights3_44_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_44_ce0;
assign weights3_45_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_address0;
assign weights3_45_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_45_ce0;
assign weights3_46_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_address0;
assign weights3_46_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_46_ce0;
assign weights3_47_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_address0;
assign weights3_47_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_47_ce0;
assign weights3_48_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_address0;
assign weights3_48_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_48_ce0;
assign weights3_49_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_address0;
assign weights3_49_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_49_ce0;
assign weights3_4_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_address0;
assign weights3_4_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_4_ce0;
assign weights3_50_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_address0;
assign weights3_50_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_50_ce0;
assign weights3_51_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_address0;
assign weights3_51_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_51_ce0;
assign weights3_52_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_address0;
assign weights3_52_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_52_ce0;
assign weights3_53_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_address0;
assign weights3_53_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_53_ce0;
assign weights3_54_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_address0;
assign weights3_54_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_54_ce0;
assign weights3_55_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_address0;
assign weights3_55_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_55_ce0;
assign weights3_56_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_address0;
assign weights3_56_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_56_ce0;
assign weights3_57_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_address0;
assign weights3_57_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_57_ce0;
assign weights3_58_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_address0;
assign weights3_58_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_58_ce0;
assign weights3_59_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_address0;
assign weights3_59_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_59_ce0;
assign weights3_5_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_address0;
assign weights3_5_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_5_ce0;
assign weights3_60_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_address0;
assign weights3_60_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_60_ce0;
assign weights3_61_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_address0;
assign weights3_61_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_61_ce0;
assign weights3_62_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_address0;
assign weights3_62_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_62_ce0;
assign weights3_63_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_address0;
assign weights3_63_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_63_ce0;
assign weights3_6_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_address0;
assign weights3_6_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_6_ce0;
assign weights3_7_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_address0;
assign weights3_7_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_7_ce0;
assign weights3_8_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_address0;
assign weights3_8_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_8_ce0;
assign weights3_9_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_address0;
assign weights3_9_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_664_weights3_9_ce0;
endmodule 