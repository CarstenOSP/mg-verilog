module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_32_address0,delta_weights1_32_ce0,delta_weights1_32_we0,delta_weights1_32_d0,delta_weights1_33_address0,delta_weights1_33_ce0,delta_weights1_33_we0,delta_weights1_33_d0,delta_weights1_34_address0,delta_weights1_34_ce0,delta_weights1_34_we0,delta_weights1_34_d0,delta_weights1_35_address0,delta_weights1_35_ce0,delta_weights1_35_we0,delta_weights1_35_d0,delta_weights1_36_address0,delta_weights1_36_ce0,delta_weights1_36_we0,delta_weights1_36_d0,delta_weights1_37_address0,delta_weights1_37_ce0,delta_weights1_37_we0,delta_weights1_37_d0,delta_weights1_38_address0,delta_weights1_38_ce0,delta_weights1_38_we0,delta_weights1_38_d0,delta_weights1_39_address0,delta_weights1_39_ce0,delta_weights1_39_we0,delta_weights1_39_d0,delta_weights1_40_address0,delta_weights1_40_ce0,delta_weights1_40_we0,delta_weights1_40_d0,delta_weights1_41_address0,delta_weights1_41_ce0,delta_weights1_41_we0,delta_weights1_41_d0,delta_weights1_42_address0,delta_weights1_42_ce0,delta_weights1_42_we0,delta_weights1_42_d0,delta_weights1_43_address0,delta_weights1_43_ce0,delta_weights1_43_we0,delta_weights1_43_d0,delta_weights1_44_address0,delta_weights1_44_ce0,delta_weights1_44_we0,delta_weights1_44_d0,delta_weights1_45_address0,delta_weights1_45_ce0,delta_weights1_45_we0,delta_weights1_45_d0,delta_weights1_46_address0,delta_weights1_46_ce0,delta_weights1_46_we0,delta_weights1_46_d0,delta_weights1_47_address0,delta_weights1_47_ce0,delta_weights1_47_we0,delta_weights1_47_d0,delta_weights1_48_address0,delta_weights1_48_ce0,delta_weights1_48_we0,delta_weights1_48_d0,delta_weights1_49_address0,delta_weights1_49_ce0,delta_weights1_49_we0,delta_weights1_49_d0,delta_weights1_50_address0,delta_weights1_50_ce0,delta_weights1_50_we0,delta_weights1_50_d0,delta_weights1_51_address0,delta_weights1_51_ce0,delta_weights1_51_we0,delta_weights1_51_d0,delta_weights1_52_address0,delta_weights1_52_ce0,delta_weights1_52_we0,delta_weights1_52_d0,delta_weights1_53_address0,delta_weights1_53_ce0,delta_weights1_53_we0,delta_weights1_53_d0,delta_weights1_54_address0,delta_weights1_54_ce0,delta_weights1_54_we0,delta_weights1_54_d0,delta_weights1_55_address0,delta_weights1_55_ce0,delta_weights1_55_we0,delta_weights1_55_d0,delta_weights1_56_address0,delta_weights1_56_ce0,delta_weights1_56_we0,delta_weights1_56_d0,delta_weights1_57_address0,delta_weights1_57_ce0,delta_weights1_57_we0,delta_weights1_57_d0,delta_weights1_58_address0,delta_weights1_58_ce0,delta_weights1_58_we0,delta_weights1_58_d0,delta_weights1_59_address0,delta_weights1_59_ce0,delta_weights1_59_we0,delta_weights1_59_d0,delta_weights1_60_address0,delta_weights1_60_ce0,delta_weights1_60_we0,delta_weights1_60_d0,delta_weights1_61_address0,delta_weights1_61_ce0,delta_weights1_61_we0,delta_weights1_61_d0,delta_weights1_62_address0,delta_weights1_62_ce0,delta_weights1_62_we0,delta_weights1_62_d0,delta_weights1_63_address0,delta_weights1_63_ce0,delta_weights1_63_we0,delta_weights1_63_d0,output_difference_0_val,output_difference_1_val,output_difference_2_val,output_difference_3_val,output_difference_4_val,output_difference_5_val,output_difference_6_val,output_difference_7_val,output_difference_8_val,output_difference_9_val,output_difference_10_val,output_difference_11_val,output_difference_12_val,output_difference_13_val,output_difference_14_val,output_difference_15_val,output_difference_16_val,output_difference_17_val,output_difference_18_val,output_difference_19_val,output_difference_20_val,output_difference_21_val,output_difference_22_val,output_difference_23_val,output_difference_24_val,output_difference_25_val,output_difference_26_val,output_difference_27_val,output_difference_28_val,output_difference_29_val,output_difference_30_val,output_difference_31_val,output_difference_32_val,output_difference_33_val,output_difference_34_val,output_difference_35_val,output_difference_36_val,output_difference_37_val,output_difference_38_val,output_difference_39_val,output_difference_40_val,output_difference_41_val,output_difference_42_val,output_difference_43_val,output_difference_44_val,output_difference_45_val,output_difference_46_val,output_difference_47_val,output_difference_48_val,output_difference_49_val,output_difference_50_val,output_difference_51_val,output_difference_52_val,output_difference_53_val,output_difference_54_val,output_difference_55_val,output_difference_56_val,output_difference_57_val,output_difference_58_val,output_difference_59_val,output_difference_60_val,output_difference_61_val,output_difference_62_val,output_difference_63_val,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,training_data_16_address0,training_data_16_ce0,training_data_16_q0,training_data_17_address0,training_data_17_ce0,training_data_17_q0,training_data_18_address0,training_data_18_ce0,training_data_18_q0,training_data_19_address0,training_data_19_ce0,training_data_19_q0,training_data_20_address0,training_data_20_ce0,training_data_20_q0,training_data_21_address0,training_data_21_ce0,training_data_21_q0,training_data_22_address0,training_data_22_ce0,training_data_22_q0,training_data_23_address0,training_data_23_ce0,training_data_23_q0,training_data_24_address0,training_data_24_ce0,training_data_24_q0,training_data_25_address0,training_data_25_ce0,training_data_25_q0,training_data_26_address0,training_data_26_ce0,training_data_26_q0,training_data_27_address0,training_data_27_ce0,training_data_27_q0,training_data_28_address0,training_data_28_ce0,training_data_28_q0,training_data_29_address0,training_data_29_ce0,training_data_29_q0,training_data_30_address0,training_data_30_ce0,training_data_30_q0,training_data_31_address0,training_data_31_ce0,training_data_31_q0,training_data_32_address0,training_data_32_ce0,training_data_32_q0,training_data_33_address0,training_data_33_ce0,training_data_33_q0,training_data_34_address0,training_data_34_ce0,training_data_34_q0,training_data_35_address0,training_data_35_ce0,training_data_35_q0,training_data_36_address0,training_data_36_ce0,training_data_36_q0,training_data_37_address0,training_data_37_ce0,training_data_37_q0,training_data_38_address0,training_data_38_ce0,training_data_38_q0,training_data_39_address0,training_data_39_ce0,training_data_39_q0,training_data_40_address0,training_data_40_ce0,training_data_40_q0,training_data_41_address0,training_data_41_ce0,training_data_41_q0,training_data_42_address0,training_data_42_ce0,training_data_42_q0,training_data_43_address0,training_data_43_ce0,training_data_43_q0,training_data_44_address0,training_data_44_ce0,training_data_44_q0,training_data_45_address0,training_data_45_ce0,training_data_45_q0,training_data_46_address0,training_data_46_ce0,training_data_46_q0,training_data_47_address0,training_data_47_ce0,training_data_47_q0,training_data_48_address0,training_data_48_ce0,training_data_48_q0,training_data_49_address0,training_data_49_ce0,training_data_49_q0,training_data_50_address0,training_data_50_ce0,training_data_50_q0,training_data_51_address0,training_data_51_ce0,training_data_51_q0,training_data_52_address0,training_data_52_ce0,training_data_52_q0,training_data_53_address0,training_data_53_ce0,training_data_53_q0,training_data_54_address0,training_data_54_ce0,training_data_54_q0,training_data_55_address0,training_data_55_ce0,training_data_55_q0,training_data_56_address0,training_data_56_ce0,training_data_56_q0,training_data_57_address0,training_data_57_ce0,training_data_57_q0,training_data_58_address0,training_data_58_ce0,training_data_58_q0,training_data_59_address0,training_data_59_ce0,training_data_59_q0,training_data_60_address0,training_data_60_ce0,training_data_60_q0,training_data_61_address0,training_data_61_ce0,training_data_61_q0,training_data_62_address0,training_data_62_ce0,training_data_62_q0,training_data_63_address0,training_data_63_ce0,training_data_63_q0,idx,grp_fu_23979_p_din0,grp_fu_23979_p_din1,grp_fu_23979_p_dout0,grp_fu_23979_p_ce,grp_fu_23983_p_din0,grp_fu_23983_p_din1,grp_fu_23983_p_dout0,grp_fu_23983_p_ce,grp_fu_23987_p_din0,grp_fu_23987_p_din1,grp_fu_23987_p_dout0,grp_fu_23987_p_ce,grp_fu_23991_p_din0,grp_fu_23991_p_din1,grp_fu_23991_p_dout0,grp_fu_23991_p_ce,grp_fu_23995_p_din0,grp_fu_23995_p_din1,grp_fu_23995_p_dout0,grp_fu_23995_p_ce,grp_fu_23999_p_din0,grp_fu_23999_p_din1,grp_fu_23999_p_dout0,grp_fu_23999_p_ce,grp_fu_24003_p_din0,grp_fu_24003_p_din1,grp_fu_24003_p_dout0,grp_fu_24003_p_ce,grp_fu_24007_p_din0,grp_fu_24007_p_din1,grp_fu_24007_p_dout0,grp_fu_24007_p_ce,grp_fu_24011_p_din0,grp_fu_24011_p_din1,grp_fu_24011_p_dout0,grp_fu_24011_p_ce,grp_fu_24015_p_din0,grp_fu_24015_p_din1,grp_fu_24015_p_dout0,grp_fu_24015_p_ce,grp_fu_24019_p_din0,grp_fu_24019_p_din1,grp_fu_24019_p_dout0,grp_fu_24019_p_ce,grp_fu_24023_p_din0,grp_fu_24023_p_din1,grp_fu_24023_p_dout0,grp_fu_24023_p_ce,grp_fu_24027_p_din0,grp_fu_24027_p_din1,grp_fu_24027_p_dout0,grp_fu_24027_p_ce,grp_fu_24031_p_din0,grp_fu_24031_p_din1,grp_fu_24031_p_dout0,grp_fu_24031_p_ce,grp_fu_24035_p_din0,grp_fu_24035_p_din1,grp_fu_24035_p_dout0,grp_fu_24035_p_ce,grp_fu_24039_p_din0,grp_fu_24039_p_din1,grp_fu_24039_p_dout0,grp_fu_24039_p_ce,grp_fu_24043_p_din0,grp_fu_24043_p_din1,grp_fu_24043_p_dout0,grp_fu_24043_p_ce,grp_fu_24047_p_din0,grp_fu_24047_p_din1,grp_fu_24047_p_dout0,grp_fu_24047_p_ce,grp_fu_24051_p_din0,grp_fu_24051_p_din1,grp_fu_24051_p_dout0,grp_fu_24051_p_ce,grp_fu_24055_p_din0,grp_fu_24055_p_din1,grp_fu_24055_p_dout0,grp_fu_24055_p_ce,grp_fu_24059_p_din0,grp_fu_24059_p_din1,grp_fu_24059_p_dout0,grp_fu_24059_p_ce,grp_fu_24063_p_din0,grp_fu_24063_p_din1,grp_fu_24063_p_dout0,grp_fu_24063_p_ce,grp_fu_24067_p_din0,grp_fu_24067_p_din1,grp_fu_24067_p_dout0,grp_fu_24067_p_ce,grp_fu_24071_p_din0,grp_fu_24071_p_din1,grp_fu_24071_p_dout0,grp_fu_24071_p_ce,grp_fu_24075_p_din0,grp_fu_24075_p_din1,grp_fu_24075_p_dout0,grp_fu_24075_p_ce,grp_fu_24079_p_din0,grp_fu_24079_p_din1,grp_fu_24079_p_dout0,grp_fu_24079_p_ce,grp_fu_24083_p_din0,grp_fu_24083_p_din1,grp_fu_24083_p_dout0,grp_fu_24083_p_ce,grp_fu_24087_p_din0,grp_fu_24087_p_din1,grp_fu_24087_p_dout0,grp_fu_24087_p_ce,grp_fu_24091_p_din0,grp_fu_24091_p_din1,grp_fu_24091_p_dout0,grp_fu_24091_p_ce,grp_fu_24095_p_din0,grp_fu_24095_p_din1,grp_fu_24095_p_dout0,grp_fu_24095_p_ce,grp_fu_24099_p_din0,grp_fu_24099_p_din1,grp_fu_24099_p_dout0,grp_fu_24099_p_ce,grp_fu_24103_p_din0,grp_fu_24103_p_din1,grp_fu_24103_p_dout0,grp_fu_24103_p_ce,grp_fu_24107_p_din0,grp_fu_24107_p_din1,grp_fu_24107_p_dout0,grp_fu_24107_p_ce,grp_fu_24111_p_din0,grp_fu_24111_p_din1,grp_fu_24111_p_dout0,grp_fu_24111_p_ce,grp_fu_24115_p_din0,grp_fu_24115_p_din1,grp_fu_24115_p_dout0,grp_fu_24115_p_ce,grp_fu_24119_p_din0,grp_fu_24119_p_din1,grp_fu_24119_p_dout0,grp_fu_24119_p_ce,grp_fu_24123_p_din0,grp_fu_24123_p_din1,grp_fu_24123_p_dout0,grp_fu_24123_p_ce,grp_fu_24127_p_din0,grp_fu_24127_p_din1,grp_fu_24127_p_dout0,grp_fu_24127_p_ce,grp_fu_24131_p_din0,grp_fu_24131_p_din1,grp_fu_24131_p_dout0,grp_fu_24131_p_ce,grp_fu_24135_p_din0,grp_fu_24135_p_din1,grp_fu_24135_p_dout0,grp_fu_24135_p_ce,grp_fu_24139_p_din0,grp_fu_24139_p_din1,grp_fu_24139_p_dout0,grp_fu_24139_p_ce,grp_fu_24143_p_din0,grp_fu_24143_p_din1,grp_fu_24143_p_dout0,grp_fu_24143_p_ce,grp_fu_24147_p_din0,grp_fu_24147_p_din1,grp_fu_24147_p_dout0,grp_fu_24147_p_ce,grp_fu_24151_p_din0,grp_fu_24151_p_din1,grp_fu_24151_p_dout0,grp_fu_24151_p_ce,grp_fu_24155_p_din0,grp_fu_24155_p_din1,grp_fu_24155_p_dout0,grp_fu_24155_p_ce,grp_fu_24159_p_din0,grp_fu_24159_p_din1,grp_fu_24159_p_dout0,grp_fu_24159_p_ce,grp_fu_24163_p_din0,grp_fu_24163_p_din1,grp_fu_24163_p_dout0,grp_fu_24163_p_ce,grp_fu_24167_p_din0,grp_fu_24167_p_din1,grp_fu_24167_p_dout0,grp_fu_24167_p_ce,grp_fu_24171_p_din0,grp_fu_24171_p_din1,grp_fu_24171_p_dout0,grp_fu_24171_p_ce,grp_fu_24175_p_din0,grp_fu_24175_p_din1,grp_fu_24175_p_dout0,grp_fu_24175_p_ce,grp_fu_24179_p_din0,grp_fu_24179_p_din1,grp_fu_24179_p_dout0,grp_fu_24179_p_ce,grp_fu_24183_p_din0,grp_fu_24183_p_din1,grp_fu_24183_p_dout0,grp_fu_24183_p_ce,grp_fu_24187_p_din0,grp_fu_24187_p_din1,grp_fu_24187_p_dout0,grp_fu_24187_p_ce,grp_fu_24191_p_din0,grp_fu_24191_p_din1,grp_fu_24191_p_dout0,grp_fu_24191_p_ce,grp_fu_24195_p_din0,grp_fu_24195_p_din1,grp_fu_24195_p_dout0,grp_fu_24195_p_ce,grp_fu_24199_p_din0,grp_fu_24199_p_din1,grp_fu_24199_p_dout0,grp_fu_24199_p_ce,grp_fu_24203_p_din0,grp_fu_24203_p_din1,grp_fu_24203_p_dout0,grp_fu_24203_p_ce,grp_fu_24207_p_din0,grp_fu_24207_p_din1,grp_fu_24207_p_dout0,grp_fu_24207_p_ce,grp_fu_24211_p_din0,grp_fu_24211_p_din1,grp_fu_24211_p_dout0,grp_fu_24211_p_ce,grp_fu_24215_p_din0,grp_fu_24215_p_din1,grp_fu_24215_p_dout0,grp_fu_24215_p_ce,grp_fu_24219_p_din0,grp_fu_24219_p_din1,grp_fu_24219_p_dout0,grp_fu_24219_p_ce,grp_fu_24223_p_din0,grp_fu_24223_p_din1,grp_fu_24223_p_dout0,grp_fu_24223_p_ce,grp_fu_24227_p_din0,grp_fu_24227_p_din1,grp_fu_24227_p_dout0,grp_fu_24227_p_ce,grp_fu_24231_p_din0,grp_fu_24231_p_din1,grp_fu_24231_p_dout0,grp_fu_24231_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [3:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [3:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [3:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [3:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [3:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [3:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [3:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [3:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [3:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [3:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [3:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [3:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [3:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [3:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [3:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [3:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [3:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [3:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [3:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [3:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [3:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [3:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [3:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [3:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [3:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [3:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [3:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [3:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [3:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [3:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [3:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [3:0] delta_weights1_32_address0;
output   delta_weights1_32_ce0;
output   delta_weights1_32_we0;
output  [63:0] delta_weights1_32_d0;
output  [3:0] delta_weights1_33_address0;
output   delta_weights1_33_ce0;
output   delta_weights1_33_we0;
output  [63:0] delta_weights1_33_d0;
output  [3:0] delta_weights1_34_address0;
output   delta_weights1_34_ce0;
output   delta_weights1_34_we0;
output  [63:0] delta_weights1_34_d0;
output  [3:0] delta_weights1_35_address0;
output   delta_weights1_35_ce0;
output   delta_weights1_35_we0;
output  [63:0] delta_weights1_35_d0;
output  [3:0] delta_weights1_36_address0;
output   delta_weights1_36_ce0;
output   delta_weights1_36_we0;
output  [63:0] delta_weights1_36_d0;
output  [3:0] delta_weights1_37_address0;
output   delta_weights1_37_ce0;
output   delta_weights1_37_we0;
output  [63:0] delta_weights1_37_d0;
output  [3:0] delta_weights1_38_address0;
output   delta_weights1_38_ce0;
output   delta_weights1_38_we0;
output  [63:0] delta_weights1_38_d0;
output  [3:0] delta_weights1_39_address0;
output   delta_weights1_39_ce0;
output   delta_weights1_39_we0;
output  [63:0] delta_weights1_39_d0;
output  [3:0] delta_weights1_40_address0;
output   delta_weights1_40_ce0;
output   delta_weights1_40_we0;
output  [63:0] delta_weights1_40_d0;
output  [3:0] delta_weights1_41_address0;
output   delta_weights1_41_ce0;
output   delta_weights1_41_we0;
output  [63:0] delta_weights1_41_d0;
output  [3:0] delta_weights1_42_address0;
output   delta_weights1_42_ce0;
output   delta_weights1_42_we0;
output  [63:0] delta_weights1_42_d0;
output  [3:0] delta_weights1_43_address0;
output   delta_weights1_43_ce0;
output   delta_weights1_43_we0;
output  [63:0] delta_weights1_43_d0;
output  [3:0] delta_weights1_44_address0;
output   delta_weights1_44_ce0;
output   delta_weights1_44_we0;
output  [63:0] delta_weights1_44_d0;
output  [3:0] delta_weights1_45_address0;
output   delta_weights1_45_ce0;
output   delta_weights1_45_we0;
output  [63:0] delta_weights1_45_d0;
output  [3:0] delta_weights1_46_address0;
output   delta_weights1_46_ce0;
output   delta_weights1_46_we0;
output  [63:0] delta_weights1_46_d0;
output  [3:0] delta_weights1_47_address0;
output   delta_weights1_47_ce0;
output   delta_weights1_47_we0;
output  [63:0] delta_weights1_47_d0;
output  [3:0] delta_weights1_48_address0;
output   delta_weights1_48_ce0;
output   delta_weights1_48_we0;
output  [63:0] delta_weights1_48_d0;
output  [3:0] delta_weights1_49_address0;
output   delta_weights1_49_ce0;
output   delta_weights1_49_we0;
output  [63:0] delta_weights1_49_d0;
output  [3:0] delta_weights1_50_address0;
output   delta_weights1_50_ce0;
output   delta_weights1_50_we0;
output  [63:0] delta_weights1_50_d0;
output  [3:0] delta_weights1_51_address0;
output   delta_weights1_51_ce0;
output   delta_weights1_51_we0;
output  [63:0] delta_weights1_51_d0;
output  [3:0] delta_weights1_52_address0;
output   delta_weights1_52_ce0;
output   delta_weights1_52_we0;
output  [63:0] delta_weights1_52_d0;
output  [3:0] delta_weights1_53_address0;
output   delta_weights1_53_ce0;
output   delta_weights1_53_we0;
output  [63:0] delta_weights1_53_d0;
output  [3:0] delta_weights1_54_address0;
output   delta_weights1_54_ce0;
output   delta_weights1_54_we0;
output  [63:0] delta_weights1_54_d0;
output  [3:0] delta_weights1_55_address0;
output   delta_weights1_55_ce0;
output   delta_weights1_55_we0;
output  [63:0] delta_weights1_55_d0;
output  [3:0] delta_weights1_56_address0;
output   delta_weights1_56_ce0;
output   delta_weights1_56_we0;
output  [63:0] delta_weights1_56_d0;
output  [3:0] delta_weights1_57_address0;
output   delta_weights1_57_ce0;
output   delta_weights1_57_we0;
output  [63:0] delta_weights1_57_d0;
output  [3:0] delta_weights1_58_address0;
output   delta_weights1_58_ce0;
output   delta_weights1_58_we0;
output  [63:0] delta_weights1_58_d0;
output  [3:0] delta_weights1_59_address0;
output   delta_weights1_59_ce0;
output   delta_weights1_59_we0;
output  [63:0] delta_weights1_59_d0;
output  [3:0] delta_weights1_60_address0;
output   delta_weights1_60_ce0;
output   delta_weights1_60_we0;
output  [63:0] delta_weights1_60_d0;
output  [3:0] delta_weights1_61_address0;
output   delta_weights1_61_ce0;
output   delta_weights1_61_we0;
output  [63:0] delta_weights1_61_d0;
output  [3:0] delta_weights1_62_address0;
output   delta_weights1_62_ce0;
output   delta_weights1_62_we0;
output  [63:0] delta_weights1_62_d0;
output  [3:0] delta_weights1_63_address0;
output   delta_weights1_63_ce0;
output   delta_weights1_63_we0;
output  [63:0] delta_weights1_63_d0;
input  [63:0] output_difference_0_val;
input  [63:0] output_difference_1_val;
input  [63:0] output_difference_2_val;
input  [63:0] output_difference_3_val;
input  [63:0] output_difference_4_val;
input  [63:0] output_difference_5_val;
input  [63:0] output_difference_6_val;
input  [63:0] output_difference_7_val;
input  [63:0] output_difference_8_val;
input  [63:0] output_difference_9_val;
input  [63:0] output_difference_10_val;
input  [63:0] output_difference_11_val;
input  [63:0] output_difference_12_val;
input  [63:0] output_difference_13_val;
input  [63:0] output_difference_14_val;
input  [63:0] output_difference_15_val;
input  [63:0] output_difference_16_val;
input  [63:0] output_difference_17_val;
input  [63:0] output_difference_18_val;
input  [63:0] output_difference_19_val;
input  [63:0] output_difference_20_val;
input  [63:0] output_difference_21_val;
input  [63:0] output_difference_22_val;
input  [63:0] output_difference_23_val;
input  [63:0] output_difference_24_val;
input  [63:0] output_difference_25_val;
input  [63:0] output_difference_26_val;
input  [63:0] output_difference_27_val;
input  [63:0] output_difference_28_val;
input  [63:0] output_difference_29_val;
input  [63:0] output_difference_30_val;
input  [63:0] output_difference_31_val;
input  [63:0] output_difference_32_val;
input  [63:0] output_difference_33_val;
input  [63:0] output_difference_34_val;
input  [63:0] output_difference_35_val;
input  [63:0] output_difference_36_val;
input  [63:0] output_difference_37_val;
input  [63:0] output_difference_38_val;
input  [63:0] output_difference_39_val;
input  [63:0] output_difference_40_val;
input  [63:0] output_difference_41_val;
input  [63:0] output_difference_42_val;
input  [63:0] output_difference_43_val;
input  [63:0] output_difference_44_val;
input  [63:0] output_difference_45_val;
input  [63:0] output_difference_46_val;
input  [63:0] output_difference_47_val;
input  [63:0] output_difference_48_val;
input  [63:0] output_difference_49_val;
input  [63:0] output_difference_50_val;
input  [63:0] output_difference_51_val;
input  [63:0] output_difference_52_val;
input  [63:0] output_difference_53_val;
input  [63:0] output_difference_54_val;
input  [63:0] output_difference_55_val;
input  [63:0] output_difference_56_val;
input  [63:0] output_difference_57_val;
input  [63:0] output_difference_58_val;
input  [63:0] output_difference_59_val;
input  [63:0] output_difference_60_val;
input  [63:0] output_difference_61_val;
input  [63:0] output_difference_62_val;
input  [63:0] output_difference_63_val;
output  [5:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [5:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [5:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [5:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [5:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [5:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [5:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [5:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [5:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [5:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [5:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [5:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [5:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [5:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [5:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [5:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
output  [5:0] training_data_16_address0;
output   training_data_16_ce0;
input  [63:0] training_data_16_q0;
output  [5:0] training_data_17_address0;
output   training_data_17_ce0;
input  [63:0] training_data_17_q0;
output  [5:0] training_data_18_address0;
output   training_data_18_ce0;
input  [63:0] training_data_18_q0;
output  [5:0] training_data_19_address0;
output   training_data_19_ce0;
input  [63:0] training_data_19_q0;
output  [5:0] training_data_20_address0;
output   training_data_20_ce0;
input  [63:0] training_data_20_q0;
output  [5:0] training_data_21_address0;
output   training_data_21_ce0;
input  [63:0] training_data_21_q0;
output  [5:0] training_data_22_address0;
output   training_data_22_ce0;
input  [63:0] training_data_22_q0;
output  [5:0] training_data_23_address0;
output   training_data_23_ce0;
input  [63:0] training_data_23_q0;
output  [5:0] training_data_24_address0;
output   training_data_24_ce0;
input  [63:0] training_data_24_q0;
output  [5:0] training_data_25_address0;
output   training_data_25_ce0;
input  [63:0] training_data_25_q0;
output  [5:0] training_data_26_address0;
output   training_data_26_ce0;
input  [63:0] training_data_26_q0;
output  [5:0] training_data_27_address0;
output   training_data_27_ce0;
input  [63:0] training_data_27_q0;
output  [5:0] training_data_28_address0;
output   training_data_28_ce0;
input  [63:0] training_data_28_q0;
output  [5:0] training_data_29_address0;
output   training_data_29_ce0;
input  [63:0] training_data_29_q0;
output  [5:0] training_data_30_address0;
output   training_data_30_ce0;
input  [63:0] training_data_30_q0;
output  [5:0] training_data_31_address0;
output   training_data_31_ce0;
input  [63:0] training_data_31_q0;
output  [5:0] training_data_32_address0;
output   training_data_32_ce0;
input  [63:0] training_data_32_q0;
output  [5:0] training_data_33_address0;
output   training_data_33_ce0;
input  [63:0] training_data_33_q0;
output  [5:0] training_data_34_address0;
output   training_data_34_ce0;
input  [63:0] training_data_34_q0;
output  [5:0] training_data_35_address0;
output   training_data_35_ce0;
input  [63:0] training_data_35_q0;
output  [5:0] training_data_36_address0;
output   training_data_36_ce0;
input  [63:0] training_data_36_q0;
output  [5:0] training_data_37_address0;
output   training_data_37_ce0;
input  [63:0] training_data_37_q0;
output  [5:0] training_data_38_address0;
output   training_data_38_ce0;
input  [63:0] training_data_38_q0;
output  [5:0] training_data_39_address0;
output   training_data_39_ce0;
input  [63:0] training_data_39_q0;
output  [5:0] training_data_40_address0;
output   training_data_40_ce0;
input  [63:0] training_data_40_q0;
output  [5:0] training_data_41_address0;
output   training_data_41_ce0;
input  [63:0] training_data_41_q0;
output  [5:0] training_data_42_address0;
output   training_data_42_ce0;
input  [63:0] training_data_42_q0;
output  [5:0] training_data_43_address0;
output   training_data_43_ce0;
input  [63:0] training_data_43_q0;
output  [5:0] training_data_44_address0;
output   training_data_44_ce0;
input  [63:0] training_data_44_q0;
output  [5:0] training_data_45_address0;
output   training_data_45_ce0;
input  [63:0] training_data_45_q0;
output  [5:0] training_data_46_address0;
output   training_data_46_ce0;
input  [63:0] training_data_46_q0;
output  [5:0] training_data_47_address0;
output   training_data_47_ce0;
input  [63:0] training_data_47_q0;
output  [5:0] training_data_48_address0;
output   training_data_48_ce0;
input  [63:0] training_data_48_q0;
output  [5:0] training_data_49_address0;
output   training_data_49_ce0;
input  [63:0] training_data_49_q0;
output  [5:0] training_data_50_address0;
output   training_data_50_ce0;
input  [63:0] training_data_50_q0;
output  [5:0] training_data_51_address0;
output   training_data_51_ce0;
input  [63:0] training_data_51_q0;
output  [5:0] training_data_52_address0;
output   training_data_52_ce0;
input  [63:0] training_data_52_q0;
output  [5:0] training_data_53_address0;
output   training_data_53_ce0;
input  [63:0] training_data_53_q0;
output  [5:0] training_data_54_address0;
output   training_data_54_ce0;
input  [63:0] training_data_54_q0;
output  [5:0] training_data_55_address0;
output   training_data_55_ce0;
input  [63:0] training_data_55_q0;
output  [5:0] training_data_56_address0;
output   training_data_56_ce0;
input  [63:0] training_data_56_q0;
output  [5:0] training_data_57_address0;
output   training_data_57_ce0;
input  [63:0] training_data_57_q0;
output  [5:0] training_data_58_address0;
output   training_data_58_ce0;
input  [63:0] training_data_58_q0;
output  [5:0] training_data_59_address0;
output   training_data_59_ce0;
input  [63:0] training_data_59_q0;
output  [5:0] training_data_60_address0;
output   training_data_60_ce0;
input  [63:0] training_data_60_q0;
output  [5:0] training_data_61_address0;
output   training_data_61_ce0;
input  [63:0] training_data_61_q0;
output  [5:0] training_data_62_address0;
output   training_data_62_ce0;
input  [63:0] training_data_62_q0;
output  [5:0] training_data_63_address0;
output   training_data_63_ce0;
input  [63:0] training_data_63_q0;
input  [11:0] idx;
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
wire   [0:0] icmp_ln113_fu_2880_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] i_12_reg_3902;
reg   [3:0] i_12_reg_3902_pp0_iter1_reg;
reg   [3:0] i_12_reg_3902_pp0_iter2_reg;
reg   [3:0] i_12_reg_3902_pp0_iter3_reg;
reg   [3:0] i_12_reg_3902_pp0_iter4_reg;
reg   [3:0] i_12_reg_3902_pp0_iter5_reg;
reg   [3:0] i_12_reg_3902_pp0_iter6_reg;
reg   [3:0] i_12_reg_3902_pp0_iter7_reg;
reg   [3:0] i_12_reg_3902_pp0_iter8_reg;
wire   [5:0] empty_fu_2902_p1;
reg   [5:0] empty_reg_3911;
wire   [63:0] tmp_fu_3245_p131;
reg   [63:0] tmp_reg_4236;
reg   [63:0] mul_reg_4304;
reg   [63:0] mul_1_reg_4309;
reg   [63:0] mul_2_reg_4314;
reg   [63:0] mul_3_reg_4319;
reg   [63:0] mul_4_reg_4324;
reg   [63:0] mul_5_reg_4329;
reg   [63:0] mul_6_reg_4334;
reg   [63:0] mul_7_reg_4339;
reg   [63:0] mul_8_reg_4344;
reg   [63:0] mul_9_reg_4349;
reg   [63:0] mul_10_reg_4354;
reg   [63:0] mul_11_reg_4359;
reg   [63:0] mul_12_reg_4364;
reg   [63:0] mul_13_reg_4369;
reg   [63:0] mul_14_reg_4374;
reg   [63:0] mul_15_reg_4379;
reg   [63:0] mul_16_reg_4384;
reg   [63:0] mul_17_reg_4389;
reg   [63:0] mul_18_reg_4394;
reg   [63:0] mul_19_reg_4399;
reg   [63:0] mul_20_reg_4404;
reg   [63:0] mul_21_reg_4409;
reg   [63:0] mul_22_reg_4414;
reg   [63:0] mul_23_reg_4419;
reg   [63:0] mul_24_reg_4424;
reg   [63:0] mul_25_reg_4429;
reg   [63:0] mul_26_reg_4434;
reg   [63:0] mul_27_reg_4439;
reg   [63:0] mul_28_reg_4444;
reg   [63:0] mul_29_reg_4449;
reg   [63:0] mul_30_reg_4454;
reg   [63:0] mul_31_reg_4459;
reg   [63:0] mul_32_reg_4464;
reg   [63:0] mul_33_reg_4469;
reg   [63:0] mul_34_reg_4474;
reg   [63:0] mul_35_reg_4479;
reg   [63:0] mul_36_reg_4484;
reg   [63:0] mul_37_reg_4489;
reg   [63:0] mul_38_reg_4494;
reg   [63:0] mul_39_reg_4499;
reg   [63:0] mul_40_reg_4504;
reg   [63:0] mul_41_reg_4509;
reg   [63:0] mul_42_reg_4514;
reg   [63:0] mul_43_reg_4519;
reg   [63:0] mul_44_reg_4524;
reg   [63:0] mul_45_reg_4529;
reg   [63:0] mul_46_reg_4534;
reg   [63:0] mul_47_reg_4539;
reg   [63:0] mul_48_reg_4544;
reg   [63:0] mul_49_reg_4549;
reg   [63:0] mul_50_reg_4554;
reg   [63:0] mul_51_reg_4559;
reg   [63:0] mul_52_reg_4564;
reg   [63:0] mul_53_reg_4569;
reg   [63:0] mul_54_reg_4574;
reg   [63:0] mul_55_reg_4579;
reg   [63:0] mul_56_reg_4584;
reg   [63:0] mul_57_reg_4589;
reg   [63:0] mul_58_reg_4594;
reg   [63:0] mul_59_reg_4599;
reg   [63:0] mul_60_reg_4604;
reg   [63:0] mul_61_reg_4609;
reg   [63:0] mul_62_reg_4614;
reg   [63:0] mul_63_reg_4619;
wire   [63:0] p_cast_fu_2916_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln113_fu_3508_p1;
reg   [3:0] i_fu_558;
wire   [3:0] add_ln113_fu_2886_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_12;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    training_data_8_ce0_local;
reg    training_data_9_ce0_local;
reg    training_data_10_ce0_local;
reg    training_data_11_ce0_local;
reg    training_data_12_ce0_local;
reg    training_data_13_ce0_local;
reg    training_data_14_ce0_local;
reg    training_data_15_ce0_local;
reg    training_data_16_ce0_local;
reg    training_data_17_ce0_local;
reg    training_data_18_ce0_local;
reg    training_data_19_ce0_local;
reg    training_data_20_ce0_local;
reg    training_data_21_ce0_local;
reg    training_data_22_ce0_local;
reg    training_data_23_ce0_local;
reg    training_data_24_ce0_local;
reg    training_data_25_ce0_local;
reg    training_data_26_ce0_local;
reg    training_data_27_ce0_local;
reg    training_data_28_ce0_local;
reg    training_data_29_ce0_local;
reg    training_data_30_ce0_local;
reg    training_data_31_ce0_local;
reg    training_data_32_ce0_local;
reg    training_data_33_ce0_local;
reg    training_data_34_ce0_local;
reg    training_data_35_ce0_local;
reg    training_data_36_ce0_local;
reg    training_data_37_ce0_local;
reg    training_data_38_ce0_local;
reg    training_data_39_ce0_local;
reg    training_data_40_ce0_local;
reg    training_data_41_ce0_local;
reg    training_data_42_ce0_local;
reg    training_data_43_ce0_local;
reg    training_data_44_ce0_local;
reg    training_data_45_ce0_local;
reg    training_data_46_ce0_local;
reg    training_data_47_ce0_local;
reg    training_data_48_ce0_local;
reg    training_data_49_ce0_local;
reg    training_data_50_ce0_local;
reg    training_data_51_ce0_local;
reg    training_data_52_ce0_local;
reg    training_data_53_ce0_local;
reg    training_data_54_ce0_local;
reg    training_data_55_ce0_local;
reg    training_data_56_ce0_local;
reg    training_data_57_ce0_local;
reg    training_data_58_ce0_local;
reg    training_data_59_ce0_local;
reg    training_data_60_ce0_local;
reg    training_data_61_ce0_local;
reg    training_data_62_ce0_local;
reg    training_data_63_ce0_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_16_we0_local;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_17_we0_local;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_18_we0_local;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_19_we0_local;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_20_we0_local;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_21_we0_local;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_22_we0_local;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_23_we0_local;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_24_we0_local;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_25_we0_local;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_26_we0_local;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_27_we0_local;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_28_we0_local;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_29_we0_local;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_30_we0_local;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_31_we0_local;
reg    delta_weights1_31_ce0_local;
reg    delta_weights1_32_we0_local;
reg    delta_weights1_32_ce0_local;
reg    delta_weights1_33_we0_local;
reg    delta_weights1_33_ce0_local;
reg    delta_weights1_34_we0_local;
reg    delta_weights1_34_ce0_local;
reg    delta_weights1_35_we0_local;
reg    delta_weights1_35_ce0_local;
reg    delta_weights1_36_we0_local;
reg    delta_weights1_36_ce0_local;
reg    delta_weights1_37_we0_local;
reg    delta_weights1_37_ce0_local;
reg    delta_weights1_38_we0_local;
reg    delta_weights1_38_ce0_local;
reg    delta_weights1_39_we0_local;
reg    delta_weights1_39_ce0_local;
reg    delta_weights1_40_we0_local;
reg    delta_weights1_40_ce0_local;
reg    delta_weights1_41_we0_local;
reg    delta_weights1_41_ce0_local;
reg    delta_weights1_42_we0_local;
reg    delta_weights1_42_ce0_local;
reg    delta_weights1_43_we0_local;
reg    delta_weights1_43_ce0_local;
reg    delta_weights1_44_we0_local;
reg    delta_weights1_44_ce0_local;
reg    delta_weights1_45_we0_local;
reg    delta_weights1_45_ce0_local;
reg    delta_weights1_46_we0_local;
reg    delta_weights1_46_ce0_local;
reg    delta_weights1_47_we0_local;
reg    delta_weights1_47_ce0_local;
reg    delta_weights1_48_we0_local;
reg    delta_weights1_48_ce0_local;
reg    delta_weights1_49_we0_local;
reg    delta_weights1_49_ce0_local;
reg    delta_weights1_50_we0_local;
reg    delta_weights1_50_ce0_local;
reg    delta_weights1_51_we0_local;
reg    delta_weights1_51_ce0_local;
reg    delta_weights1_52_we0_local;
reg    delta_weights1_52_ce0_local;
reg    delta_weights1_53_we0_local;
reg    delta_weights1_53_ce0_local;
reg    delta_weights1_54_we0_local;
reg    delta_weights1_54_ce0_local;
reg    delta_weights1_55_we0_local;
reg    delta_weights1_55_ce0_local;
reg    delta_weights1_56_we0_local;
reg    delta_weights1_56_ce0_local;
reg    delta_weights1_57_we0_local;
reg    delta_weights1_57_ce0_local;
reg    delta_weights1_58_we0_local;
reg    delta_weights1_58_ce0_local;
reg    delta_weights1_59_we0_local;
reg    delta_weights1_59_ce0_local;
reg    delta_weights1_60_we0_local;
reg    delta_weights1_60_ce0_local;
reg    delta_weights1_61_we0_local;
reg    delta_weights1_61_ce0_local;
reg    delta_weights1_62_we0_local;
reg    delta_weights1_62_ce0_local;
reg    delta_weights1_63_we0_local;
reg    delta_weights1_63_ce0_local;
wire   [11:0] zext_ln113_1_fu_2892_p1;
wire   [11:0] p_sum_fu_2896_p2;
wire   [5:0] tmp_1_fu_2906_p4;
wire   [63:0] tmp_fu_3245_p2;
wire   [63:0] tmp_fu_3245_p4;
wire   [63:0] tmp_fu_3245_p6;
wire   [63:0] tmp_fu_3245_p8;
wire   [63:0] tmp_fu_3245_p10;
wire   [63:0] tmp_fu_3245_p12;
wire   [63:0] tmp_fu_3245_p14;
wire   [63:0] tmp_fu_3245_p16;
wire   [63:0] tmp_fu_3245_p18;
wire   [63:0] tmp_fu_3245_p20;
wire   [63:0] tmp_fu_3245_p22;
wire   [63:0] tmp_fu_3245_p24;
wire   [63:0] tmp_fu_3245_p26;
wire   [63:0] tmp_fu_3245_p28;
wire   [63:0] tmp_fu_3245_p30;
wire   [63:0] tmp_fu_3245_p32;
wire   [63:0] tmp_fu_3245_p34;
wire   [63:0] tmp_fu_3245_p36;
wire   [63:0] tmp_fu_3245_p38;
wire   [63:0] tmp_fu_3245_p40;
wire   [63:0] tmp_fu_3245_p42;
wire   [63:0] tmp_fu_3245_p44;
wire   [63:0] tmp_fu_3245_p46;
wire   [63:0] tmp_fu_3245_p48;
wire   [63:0] tmp_fu_3245_p50;
wire   [63:0] tmp_fu_3245_p52;
wire   [63:0] tmp_fu_3245_p54;
wire   [63:0] tmp_fu_3245_p56;
wire   [63:0] tmp_fu_3245_p58;
wire   [63:0] tmp_fu_3245_p60;
wire   [63:0] tmp_fu_3245_p62;
wire   [63:0] tmp_fu_3245_p64;
wire   [63:0] tmp_fu_3245_p66;
wire   [63:0] tmp_fu_3245_p68;
wire   [63:0] tmp_fu_3245_p70;
wire   [63:0] tmp_fu_3245_p72;
wire   [63:0] tmp_fu_3245_p74;
wire   [63:0] tmp_fu_3245_p76;
wire   [63:0] tmp_fu_3245_p78;
wire   [63:0] tmp_fu_3245_p80;
wire   [63:0] tmp_fu_3245_p82;
wire   [63:0] tmp_fu_3245_p84;
wire   [63:0] tmp_fu_3245_p86;
wire   [63:0] tmp_fu_3245_p88;
wire   [63:0] tmp_fu_3245_p90;
wire   [63:0] tmp_fu_3245_p92;
wire   [63:0] tmp_fu_3245_p94;
wire   [63:0] tmp_fu_3245_p96;
wire   [63:0] tmp_fu_3245_p98;
wire   [63:0] tmp_fu_3245_p100;
wire   [63:0] tmp_fu_3245_p102;
wire   [63:0] tmp_fu_3245_p104;
wire   [63:0] tmp_fu_3245_p106;
wire   [63:0] tmp_fu_3245_p108;
wire   [63:0] tmp_fu_3245_p110;
wire   [63:0] tmp_fu_3245_p112;
wire   [63:0] tmp_fu_3245_p114;
wire   [63:0] tmp_fu_3245_p116;
wire   [63:0] tmp_fu_3245_p118;
wire   [63:0] tmp_fu_3245_p120;
wire   [63:0] tmp_fu_3245_p122;
wire   [63:0] tmp_fu_3245_p124;
wire   [63:0] tmp_fu_3245_p126;
wire   [63:0] tmp_fu_3245_p128;
wire   [63:0] tmp_fu_3245_p129;
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
wire   [5:0] tmp_fu_3245_p1;
wire   [5:0] tmp_fu_3245_p3;
wire   [5:0] tmp_fu_3245_p5;
wire   [5:0] tmp_fu_3245_p7;
wire   [5:0] tmp_fu_3245_p9;
wire   [5:0] tmp_fu_3245_p11;
wire   [5:0] tmp_fu_3245_p13;
wire   [5:0] tmp_fu_3245_p15;
wire   [5:0] tmp_fu_3245_p17;
wire   [5:0] tmp_fu_3245_p19;
wire   [5:0] tmp_fu_3245_p21;
wire   [5:0] tmp_fu_3245_p23;
wire   [5:0] tmp_fu_3245_p25;
wire   [5:0] tmp_fu_3245_p27;
wire   [5:0] tmp_fu_3245_p29;
wire   [5:0] tmp_fu_3245_p31;
wire   [5:0] tmp_fu_3245_p33;
wire   [5:0] tmp_fu_3245_p35;
wire   [5:0] tmp_fu_3245_p37;
wire   [5:0] tmp_fu_3245_p39;
wire   [5:0] tmp_fu_3245_p41;
wire   [5:0] tmp_fu_3245_p43;
wire   [5:0] tmp_fu_3245_p45;
wire   [5:0] tmp_fu_3245_p47;
wire   [5:0] tmp_fu_3245_p49;
wire   [5:0] tmp_fu_3245_p51;
wire   [5:0] tmp_fu_3245_p53;
wire   [5:0] tmp_fu_3245_p55;
wire   [5:0] tmp_fu_3245_p57;
wire   [5:0] tmp_fu_3245_p59;
wire   [5:0] tmp_fu_3245_p61;
wire   [5:0] tmp_fu_3245_p63;
wire  signed [5:0] tmp_fu_3245_p65;
wire  signed [5:0] tmp_fu_3245_p67;
wire  signed [5:0] tmp_fu_3245_p69;
wire  signed [5:0] tmp_fu_3245_p71;
wire  signed [5:0] tmp_fu_3245_p73;
wire  signed [5:0] tmp_fu_3245_p75;
wire  signed [5:0] tmp_fu_3245_p77;
wire  signed [5:0] tmp_fu_3245_p79;
wire  signed [5:0] tmp_fu_3245_p81;
wire  signed [5:0] tmp_fu_3245_p83;
wire  signed [5:0] tmp_fu_3245_p85;
wire  signed [5:0] tmp_fu_3245_p87;
wire  signed [5:0] tmp_fu_3245_p89;
wire  signed [5:0] tmp_fu_3245_p91;
wire  signed [5:0] tmp_fu_3245_p93;
wire  signed [5:0] tmp_fu_3245_p95;
wire  signed [5:0] tmp_fu_3245_p97;
wire  signed [5:0] tmp_fu_3245_p99;
wire  signed [5:0] tmp_fu_3245_p101;
wire  signed [5:0] tmp_fu_3245_p103;
wire  signed [5:0] tmp_fu_3245_p105;
wire  signed [5:0] tmp_fu_3245_p107;
wire  signed [5:0] tmp_fu_3245_p109;
wire  signed [5:0] tmp_fu_3245_p111;
wire  signed [5:0] tmp_fu_3245_p113;
wire  signed [5:0] tmp_fu_3245_p115;
wire  signed [5:0] tmp_fu_3245_p117;
wire  signed [5:0] tmp_fu_3245_p119;
wire  signed [5:0] tmp_fu_3245_p121;
wire  signed [5:0] tmp_fu_3245_p123;
wire  signed [5:0] tmp_fu_3245_p125;
wire  signed [5:0] tmp_fu_3245_p127;
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
#0 i_fu_558 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U3774(.din0(tmp_fu_3245_p2),.din1(tmp_fu_3245_p4),.din2(tmp_fu_3245_p6),.din3(tmp_fu_3245_p8),.din4(tmp_fu_3245_p10),.din5(tmp_fu_3245_p12),.din6(tmp_fu_3245_p14),.din7(tmp_fu_3245_p16),.din8(tmp_fu_3245_p18),.din9(tmp_fu_3245_p20),.din10(tmp_fu_3245_p22),.din11(tmp_fu_3245_p24),.din12(tmp_fu_3245_p26),.din13(tmp_fu_3245_p28),.din14(tmp_fu_3245_p30),.din15(tmp_fu_3245_p32),.din16(tmp_fu_3245_p34),.din17(tmp_fu_3245_p36),.din18(tmp_fu_3245_p38),.din19(tmp_fu_3245_p40),.din20(tmp_fu_3245_p42),.din21(tmp_fu_3245_p44),.din22(tmp_fu_3245_p46),.din23(tmp_fu_3245_p48),.din24(tmp_fu_3245_p50),.din25(tmp_fu_3245_p52),.din26(tmp_fu_3245_p54),.din27(tmp_fu_3245_p56),.din28(tmp_fu_3245_p58),.din29(tmp_fu_3245_p60),.din30(tmp_fu_3245_p62),.din31(tmp_fu_3245_p64),.din32(tmp_fu_3245_p66),.din33(tmp_fu_3245_p68),.din34(tmp_fu_3245_p70),.din35(tmp_fu_3245_p72),.din36(tmp_fu_3245_p74),.din37(tmp_fu_3245_p76),.din38(tmp_fu_3245_p78),.din39(tmp_fu_3245_p80),.din40(tmp_fu_3245_p82),.din41(tmp_fu_3245_p84),.din42(tmp_fu_3245_p86),.din43(tmp_fu_3245_p88),.din44(tmp_fu_3245_p90),.din45(tmp_fu_3245_p92),.din46(tmp_fu_3245_p94),.din47(tmp_fu_3245_p96),.din48(tmp_fu_3245_p98),.din49(tmp_fu_3245_p100),.din50(tmp_fu_3245_p102),.din51(tmp_fu_3245_p104),.din52(tmp_fu_3245_p106),.din53(tmp_fu_3245_p108),.din54(tmp_fu_3245_p110),.din55(tmp_fu_3245_p112),.din56(tmp_fu_3245_p114),.din57(tmp_fu_3245_p116),.din58(tmp_fu_3245_p118),.din59(tmp_fu_3245_p120),.din60(tmp_fu_3245_p122),.din61(tmp_fu_3245_p124),.din62(tmp_fu_3245_p126),.din63(tmp_fu_3245_p128),.def(tmp_fu_3245_p129),.sel(empty_reg_3911),.dout(tmp_fu_3245_p131));
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
        if (((icmp_ln113_fu_2880_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_558 <= add_ln113_fu_2886_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_558 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_3911 <= empty_fu_2902_p1;
        i_12_reg_3902 <= ap_sig_allocacmp_i_12;
        i_12_reg_3902_pp0_iter1_reg <= i_12_reg_3902;
        tmp_reg_4236 <= tmp_fu_3245_p131;
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
        i_12_reg_3902_pp0_iter2_reg <= i_12_reg_3902_pp0_iter1_reg;
        i_12_reg_3902_pp0_iter3_reg <= i_12_reg_3902_pp0_iter2_reg;
        i_12_reg_3902_pp0_iter4_reg <= i_12_reg_3902_pp0_iter3_reg;
        i_12_reg_3902_pp0_iter5_reg <= i_12_reg_3902_pp0_iter4_reg;
        i_12_reg_3902_pp0_iter6_reg <= i_12_reg_3902_pp0_iter5_reg;
        i_12_reg_3902_pp0_iter7_reg <= i_12_reg_3902_pp0_iter6_reg;
        i_12_reg_3902_pp0_iter8_reg <= i_12_reg_3902_pp0_iter7_reg;
        mul_10_reg_4354 <= grp_fu_24019_p_dout0;
        mul_11_reg_4359 <= grp_fu_24023_p_dout0;
        mul_12_reg_4364 <= grp_fu_24027_p_dout0;
        mul_13_reg_4369 <= grp_fu_24031_p_dout0;
        mul_14_reg_4374 <= grp_fu_24035_p_dout0;
        mul_15_reg_4379 <= grp_fu_24039_p_dout0;
        mul_16_reg_4384 <= grp_fu_24043_p_dout0;
        mul_17_reg_4389 <= grp_fu_24047_p_dout0;
        mul_18_reg_4394 <= grp_fu_24051_p_dout0;
        mul_19_reg_4399 <= grp_fu_24055_p_dout0;
        mul_1_reg_4309 <= grp_fu_23983_p_dout0;
        mul_20_reg_4404 <= grp_fu_24059_p_dout0;
        mul_21_reg_4409 <= grp_fu_24063_p_dout0;
        mul_22_reg_4414 <= grp_fu_24067_p_dout0;
        mul_23_reg_4419 <= grp_fu_24071_p_dout0;
        mul_24_reg_4424 <= grp_fu_24075_p_dout0;
        mul_25_reg_4429 <= grp_fu_24079_p_dout0;
        mul_26_reg_4434 <= grp_fu_24083_p_dout0;
        mul_27_reg_4439 <= grp_fu_24087_p_dout0;
        mul_28_reg_4444 <= grp_fu_24091_p_dout0;
        mul_29_reg_4449 <= grp_fu_24095_p_dout0;
        mul_2_reg_4314 <= grp_fu_23987_p_dout0;
        mul_30_reg_4454 <= grp_fu_24099_p_dout0;
        mul_31_reg_4459 <= grp_fu_24103_p_dout0;
        mul_32_reg_4464 <= grp_fu_24107_p_dout0;
        mul_33_reg_4469 <= grp_fu_24111_p_dout0;
        mul_34_reg_4474 <= grp_fu_24115_p_dout0;
        mul_35_reg_4479 <= grp_fu_24119_p_dout0;
        mul_36_reg_4484 <= grp_fu_24123_p_dout0;
        mul_37_reg_4489 <= grp_fu_24127_p_dout0;
        mul_38_reg_4494 <= grp_fu_24131_p_dout0;
        mul_39_reg_4499 <= grp_fu_24135_p_dout0;
        mul_3_reg_4319 <= grp_fu_23991_p_dout0;
        mul_40_reg_4504 <= grp_fu_24139_p_dout0;
        mul_41_reg_4509 <= grp_fu_24143_p_dout0;
        mul_42_reg_4514 <= grp_fu_24147_p_dout0;
        mul_43_reg_4519 <= grp_fu_24151_p_dout0;
        mul_44_reg_4524 <= grp_fu_24155_p_dout0;
        mul_45_reg_4529 <= grp_fu_24159_p_dout0;
        mul_46_reg_4534 <= grp_fu_24163_p_dout0;
        mul_47_reg_4539 <= grp_fu_24167_p_dout0;
        mul_48_reg_4544 <= grp_fu_24171_p_dout0;
        mul_49_reg_4549 <= grp_fu_24175_p_dout0;
        mul_4_reg_4324 <= grp_fu_23995_p_dout0;
        mul_50_reg_4554 <= grp_fu_24179_p_dout0;
        mul_51_reg_4559 <= grp_fu_24183_p_dout0;
        mul_52_reg_4564 <= grp_fu_24187_p_dout0;
        mul_53_reg_4569 <= grp_fu_24191_p_dout0;
        mul_54_reg_4574 <= grp_fu_24195_p_dout0;
        mul_55_reg_4579 <= grp_fu_24199_p_dout0;
        mul_56_reg_4584 <= grp_fu_24203_p_dout0;
        mul_57_reg_4589 <= grp_fu_24207_p_dout0;
        mul_58_reg_4594 <= grp_fu_24211_p_dout0;
        mul_59_reg_4599 <= grp_fu_24215_p_dout0;
        mul_5_reg_4329 <= grp_fu_23999_p_dout0;
        mul_60_reg_4604 <= grp_fu_24219_p_dout0;
        mul_61_reg_4609 <= grp_fu_24223_p_dout0;
        mul_62_reg_4614 <= grp_fu_24227_p_dout0;
        mul_63_reg_4619 <= grp_fu_24231_p_dout0;
        mul_6_reg_4334 <= grp_fu_24003_p_dout0;
        mul_7_reg_4339 <= grp_fu_24007_p_dout0;
        mul_8_reg_4344 <= grp_fu_24011_p_dout0;
        mul_9_reg_4349 <= grp_fu_24015_p_dout0;
        mul_reg_4304 <= grp_fu_23979_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_2880_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_12 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_558;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_32_ce0_local = 1'b1;
    end else begin
        delta_weights1_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_32_we0_local = 1'b1;
    end else begin
        delta_weights1_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_33_ce0_local = 1'b1;
    end else begin
        delta_weights1_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_33_we0_local = 1'b1;
    end else begin
        delta_weights1_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_34_ce0_local = 1'b1;
    end else begin
        delta_weights1_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_34_we0_local = 1'b1;
    end else begin
        delta_weights1_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_35_ce0_local = 1'b1;
    end else begin
        delta_weights1_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_35_we0_local = 1'b1;
    end else begin
        delta_weights1_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_36_ce0_local = 1'b1;
    end else begin
        delta_weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_36_we0_local = 1'b1;
    end else begin
        delta_weights1_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_37_ce0_local = 1'b1;
    end else begin
        delta_weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_37_we0_local = 1'b1;
    end else begin
        delta_weights1_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_38_ce0_local = 1'b1;
    end else begin
        delta_weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_38_we0_local = 1'b1;
    end else begin
        delta_weights1_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_39_ce0_local = 1'b1;
    end else begin
        delta_weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_39_we0_local = 1'b1;
    end else begin
        delta_weights1_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_40_ce0_local = 1'b1;
    end else begin
        delta_weights1_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_40_we0_local = 1'b1;
    end else begin
        delta_weights1_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_41_ce0_local = 1'b1;
    end else begin
        delta_weights1_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_41_we0_local = 1'b1;
    end else begin
        delta_weights1_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_42_ce0_local = 1'b1;
    end else begin
        delta_weights1_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_42_we0_local = 1'b1;
    end else begin
        delta_weights1_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_43_ce0_local = 1'b1;
    end else begin
        delta_weights1_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_43_we0_local = 1'b1;
    end else begin
        delta_weights1_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_44_ce0_local = 1'b1;
    end else begin
        delta_weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_44_we0_local = 1'b1;
    end else begin
        delta_weights1_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_45_ce0_local = 1'b1;
    end else begin
        delta_weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_45_we0_local = 1'b1;
    end else begin
        delta_weights1_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_46_ce0_local = 1'b1;
    end else begin
        delta_weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_46_we0_local = 1'b1;
    end else begin
        delta_weights1_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_47_ce0_local = 1'b1;
    end else begin
        delta_weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_47_we0_local = 1'b1;
    end else begin
        delta_weights1_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_48_ce0_local = 1'b1;
    end else begin
        delta_weights1_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_48_we0_local = 1'b1;
    end else begin
        delta_weights1_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_49_ce0_local = 1'b1;
    end else begin
        delta_weights1_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_49_we0_local = 1'b1;
    end else begin
        delta_weights1_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_50_ce0_local = 1'b1;
    end else begin
        delta_weights1_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_50_we0_local = 1'b1;
    end else begin
        delta_weights1_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_51_ce0_local = 1'b1;
    end else begin
        delta_weights1_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_51_we0_local = 1'b1;
    end else begin
        delta_weights1_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_52_ce0_local = 1'b1;
    end else begin
        delta_weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_52_we0_local = 1'b1;
    end else begin
        delta_weights1_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_53_ce0_local = 1'b1;
    end else begin
        delta_weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_53_we0_local = 1'b1;
    end else begin
        delta_weights1_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_54_ce0_local = 1'b1;
    end else begin
        delta_weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_54_we0_local = 1'b1;
    end else begin
        delta_weights1_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_55_ce0_local = 1'b1;
    end else begin
        delta_weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_55_we0_local = 1'b1;
    end else begin
        delta_weights1_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_56_ce0_local = 1'b1;
    end else begin
        delta_weights1_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_56_we0_local = 1'b1;
    end else begin
        delta_weights1_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_57_ce0_local = 1'b1;
    end else begin
        delta_weights1_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_57_we0_local = 1'b1;
    end else begin
        delta_weights1_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_58_ce0_local = 1'b1;
    end else begin
        delta_weights1_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_58_we0_local = 1'b1;
    end else begin
        delta_weights1_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_59_ce0_local = 1'b1;
    end else begin
        delta_weights1_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_59_we0_local = 1'b1;
    end else begin
        delta_weights1_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_60_ce0_local = 1'b1;
    end else begin
        delta_weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_60_we0_local = 1'b1;
    end else begin
        delta_weights1_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_61_ce0_local = 1'b1;
    end else begin
        delta_weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_61_we0_local = 1'b1;
    end else begin
        delta_weights1_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_62_ce0_local = 1'b1;
    end else begin
        delta_weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_62_we0_local = 1'b1;
    end else begin
        delta_weights1_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_63_ce0_local = 1'b1;
    end else begin
        delta_weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_63_we0_local = 1'b1;
    end else begin
        delta_weights1_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_16_ce0_local = 1'b1;
    end else begin
        training_data_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_17_ce0_local = 1'b1;
    end else begin
        training_data_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_18_ce0_local = 1'b1;
    end else begin
        training_data_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_19_ce0_local = 1'b1;
    end else begin
        training_data_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_20_ce0_local = 1'b1;
    end else begin
        training_data_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_21_ce0_local = 1'b1;
    end else begin
        training_data_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_22_ce0_local = 1'b1;
    end else begin
        training_data_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_23_ce0_local = 1'b1;
    end else begin
        training_data_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_24_ce0_local = 1'b1;
    end else begin
        training_data_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_25_ce0_local = 1'b1;
    end else begin
        training_data_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_26_ce0_local = 1'b1;
    end else begin
        training_data_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_27_ce0_local = 1'b1;
    end else begin
        training_data_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_28_ce0_local = 1'b1;
    end else begin
        training_data_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_29_ce0_local = 1'b1;
    end else begin
        training_data_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_30_ce0_local = 1'b1;
    end else begin
        training_data_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_31_ce0_local = 1'b1;
    end else begin
        training_data_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_32_ce0_local = 1'b1;
    end else begin
        training_data_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_33_ce0_local = 1'b1;
    end else begin
        training_data_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_34_ce0_local = 1'b1;
    end else begin
        training_data_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_35_ce0_local = 1'b1;
    end else begin
        training_data_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_36_ce0_local = 1'b1;
    end else begin
        training_data_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_37_ce0_local = 1'b1;
    end else begin
        training_data_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_38_ce0_local = 1'b1;
    end else begin
        training_data_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_39_ce0_local = 1'b1;
    end else begin
        training_data_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_40_ce0_local = 1'b1;
    end else begin
        training_data_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_41_ce0_local = 1'b1;
    end else begin
        training_data_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_42_ce0_local = 1'b1;
    end else begin
        training_data_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_43_ce0_local = 1'b1;
    end else begin
        training_data_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_44_ce0_local = 1'b1;
    end else begin
        training_data_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_45_ce0_local = 1'b1;
    end else begin
        training_data_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_46_ce0_local = 1'b1;
    end else begin
        training_data_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_47_ce0_local = 1'b1;
    end else begin
        training_data_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_48_ce0_local = 1'b1;
    end else begin
        training_data_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_49_ce0_local = 1'b1;
    end else begin
        training_data_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_50_ce0_local = 1'b1;
    end else begin
        training_data_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_51_ce0_local = 1'b1;
    end else begin
        training_data_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_52_ce0_local = 1'b1;
    end else begin
        training_data_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_53_ce0_local = 1'b1;
    end else begin
        training_data_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_54_ce0_local = 1'b1;
    end else begin
        training_data_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_55_ce0_local = 1'b1;
    end else begin
        training_data_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_56_ce0_local = 1'b1;
    end else begin
        training_data_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_57_ce0_local = 1'b1;
    end else begin
        training_data_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_58_ce0_local = 1'b1;
    end else begin
        training_data_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_59_ce0_local = 1'b1;
    end else begin
        training_data_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_60_ce0_local = 1'b1;
    end else begin
        training_data_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_61_ce0_local = 1'b1;
    end else begin
        training_data_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_62_ce0_local = 1'b1;
    end else begin
        training_data_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_63_ce0_local = 1'b1;
    end else begin
        training_data_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
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
assign add_ln113_fu_2886_p2 = (ap_sig_allocacmp_i_12 + 4'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_d0 = mul_reg_4304;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_10_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_d0 = mul_10_reg_4354;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_11_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_d0 = mul_11_reg_4359;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_12_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_d0 = mul_12_reg_4364;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_13_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_d0 = mul_13_reg_4369;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_14_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_d0 = mul_14_reg_4374;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_15_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_d0 = mul_15_reg_4379;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_16_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_d0 = mul_16_reg_4384;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_17_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_d0 = mul_17_reg_4389;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_18_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_d0 = mul_18_reg_4394;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_19_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_d0 = mul_19_reg_4399;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_1_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_reg_4309;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_20_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_d0 = mul_20_reg_4404;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_21_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_d0 = mul_21_reg_4409;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_22_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_d0 = mul_22_reg_4414;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_23_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_d0 = mul_23_reg_4419;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_24_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_d0 = mul_24_reg_4424;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_25_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_d0 = mul_25_reg_4429;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_26_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_d0 = mul_26_reg_4434;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_27_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_d0 = mul_27_reg_4439;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_28_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_d0 = mul_28_reg_4444;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_29_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_d0 = mul_29_reg_4449;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_2_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_2_reg_4314;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_30_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_d0 = mul_30_reg_4454;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_31_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_d0 = mul_31_reg_4459;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_32_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_32_ce0 = delta_weights1_32_ce0_local;
assign delta_weights1_32_d0 = mul_32_reg_4464;
assign delta_weights1_32_we0 = delta_weights1_32_we0_local;
assign delta_weights1_33_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_33_ce0 = delta_weights1_33_ce0_local;
assign delta_weights1_33_d0 = mul_33_reg_4469;
assign delta_weights1_33_we0 = delta_weights1_33_we0_local;
assign delta_weights1_34_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_34_ce0 = delta_weights1_34_ce0_local;
assign delta_weights1_34_d0 = mul_34_reg_4474;
assign delta_weights1_34_we0 = delta_weights1_34_we0_local;
assign delta_weights1_35_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_35_ce0 = delta_weights1_35_ce0_local;
assign delta_weights1_35_d0 = mul_35_reg_4479;
assign delta_weights1_35_we0 = delta_weights1_35_we0_local;
assign delta_weights1_36_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_36_ce0 = delta_weights1_36_ce0_local;
assign delta_weights1_36_d0 = mul_36_reg_4484;
assign delta_weights1_36_we0 = delta_weights1_36_we0_local;
assign delta_weights1_37_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_37_ce0 = delta_weights1_37_ce0_local;
assign delta_weights1_37_d0 = mul_37_reg_4489;
assign delta_weights1_37_we0 = delta_weights1_37_we0_local;
assign delta_weights1_38_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_38_ce0 = delta_weights1_38_ce0_local;
assign delta_weights1_38_d0 = mul_38_reg_4494;
assign delta_weights1_38_we0 = delta_weights1_38_we0_local;
assign delta_weights1_39_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_39_ce0 = delta_weights1_39_ce0_local;
assign delta_weights1_39_d0 = mul_39_reg_4499;
assign delta_weights1_39_we0 = delta_weights1_39_we0_local;
assign delta_weights1_3_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_3_reg_4319;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_40_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_40_ce0 = delta_weights1_40_ce0_local;
assign delta_weights1_40_d0 = mul_40_reg_4504;
assign delta_weights1_40_we0 = delta_weights1_40_we0_local;
assign delta_weights1_41_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_41_ce0 = delta_weights1_41_ce0_local;
assign delta_weights1_41_d0 = mul_41_reg_4509;
assign delta_weights1_41_we0 = delta_weights1_41_we0_local;
assign delta_weights1_42_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_42_ce0 = delta_weights1_42_ce0_local;
assign delta_weights1_42_d0 = mul_42_reg_4514;
assign delta_weights1_42_we0 = delta_weights1_42_we0_local;
assign delta_weights1_43_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_43_ce0 = delta_weights1_43_ce0_local;
assign delta_weights1_43_d0 = mul_43_reg_4519;
assign delta_weights1_43_we0 = delta_weights1_43_we0_local;
assign delta_weights1_44_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_44_ce0 = delta_weights1_44_ce0_local;
assign delta_weights1_44_d0 = mul_44_reg_4524;
assign delta_weights1_44_we0 = delta_weights1_44_we0_local;
assign delta_weights1_45_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_45_ce0 = delta_weights1_45_ce0_local;
assign delta_weights1_45_d0 = mul_45_reg_4529;
assign delta_weights1_45_we0 = delta_weights1_45_we0_local;
assign delta_weights1_46_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_46_ce0 = delta_weights1_46_ce0_local;
assign delta_weights1_46_d0 = mul_46_reg_4534;
assign delta_weights1_46_we0 = delta_weights1_46_we0_local;
assign delta_weights1_47_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_47_ce0 = delta_weights1_47_ce0_local;
assign delta_weights1_47_d0 = mul_47_reg_4539;
assign delta_weights1_47_we0 = delta_weights1_47_we0_local;
assign delta_weights1_48_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_48_ce0 = delta_weights1_48_ce0_local;
assign delta_weights1_48_d0 = mul_48_reg_4544;
assign delta_weights1_48_we0 = delta_weights1_48_we0_local;
assign delta_weights1_49_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_49_ce0 = delta_weights1_49_ce0_local;
assign delta_weights1_49_d0 = mul_49_reg_4549;
assign delta_weights1_49_we0 = delta_weights1_49_we0_local;
assign delta_weights1_4_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_4_reg_4324;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_50_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_50_ce0 = delta_weights1_50_ce0_local;
assign delta_weights1_50_d0 = mul_50_reg_4554;
assign delta_weights1_50_we0 = delta_weights1_50_we0_local;
assign delta_weights1_51_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_51_ce0 = delta_weights1_51_ce0_local;
assign delta_weights1_51_d0 = mul_51_reg_4559;
assign delta_weights1_51_we0 = delta_weights1_51_we0_local;
assign delta_weights1_52_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_52_ce0 = delta_weights1_52_ce0_local;
assign delta_weights1_52_d0 = mul_52_reg_4564;
assign delta_weights1_52_we0 = delta_weights1_52_we0_local;
assign delta_weights1_53_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_53_ce0 = delta_weights1_53_ce0_local;
assign delta_weights1_53_d0 = mul_53_reg_4569;
assign delta_weights1_53_we0 = delta_weights1_53_we0_local;
assign delta_weights1_54_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_54_ce0 = delta_weights1_54_ce0_local;
assign delta_weights1_54_d0 = mul_54_reg_4574;
assign delta_weights1_54_we0 = delta_weights1_54_we0_local;
assign delta_weights1_55_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_55_ce0 = delta_weights1_55_ce0_local;
assign delta_weights1_55_d0 = mul_55_reg_4579;
assign delta_weights1_55_we0 = delta_weights1_55_we0_local;
assign delta_weights1_56_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_56_ce0 = delta_weights1_56_ce0_local;
assign delta_weights1_56_d0 = mul_56_reg_4584;
assign delta_weights1_56_we0 = delta_weights1_56_we0_local;
assign delta_weights1_57_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_57_ce0 = delta_weights1_57_ce0_local;
assign delta_weights1_57_d0 = mul_57_reg_4589;
assign delta_weights1_57_we0 = delta_weights1_57_we0_local;
assign delta_weights1_58_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_58_ce0 = delta_weights1_58_ce0_local;
assign delta_weights1_58_d0 = mul_58_reg_4594;
assign delta_weights1_58_we0 = delta_weights1_58_we0_local;
assign delta_weights1_59_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_59_ce0 = delta_weights1_59_ce0_local;
assign delta_weights1_59_d0 = mul_59_reg_4599;
assign delta_weights1_59_we0 = delta_weights1_59_we0_local;
assign delta_weights1_5_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_5_reg_4329;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_60_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_60_ce0 = delta_weights1_60_ce0_local;
assign delta_weights1_60_d0 = mul_60_reg_4604;
assign delta_weights1_60_we0 = delta_weights1_60_we0_local;
assign delta_weights1_61_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_61_ce0 = delta_weights1_61_ce0_local;
assign delta_weights1_61_d0 = mul_61_reg_4609;
assign delta_weights1_61_we0 = delta_weights1_61_we0_local;
assign delta_weights1_62_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_62_ce0 = delta_weights1_62_ce0_local;
assign delta_weights1_62_d0 = mul_62_reg_4614;
assign delta_weights1_62_we0 = delta_weights1_62_we0_local;
assign delta_weights1_63_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_63_ce0 = delta_weights1_63_ce0_local;
assign delta_weights1_63_d0 = mul_63_reg_4619;
assign delta_weights1_63_we0 = delta_weights1_63_we0_local;
assign delta_weights1_6_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_6_reg_4334;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_7_reg_4339;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_8_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_d0 = mul_8_reg_4344;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_9_address0 = zext_ln113_fu_3508_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_d0 = mul_9_reg_4349;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign empty_fu_2902_p1 = p_sum_fu_2896_p2[5:0];
assign grp_fu_23979_p_ce = 1'b1;
assign grp_fu_23979_p_din0 = tmp_reg_4236;
assign grp_fu_23979_p_din1 = output_difference_0_val;
assign grp_fu_23983_p_ce = 1'b1;
assign grp_fu_23983_p_din0 = tmp_reg_4236;
assign grp_fu_23983_p_din1 = output_difference_1_val;
assign grp_fu_23987_p_ce = 1'b1;
assign grp_fu_23987_p_din0 = tmp_reg_4236;
assign grp_fu_23987_p_din1 = output_difference_2_val;
assign grp_fu_23991_p_ce = 1'b1;
assign grp_fu_23991_p_din0 = tmp_reg_4236;
assign grp_fu_23991_p_din1 = output_difference_3_val;
assign grp_fu_23995_p_ce = 1'b1;
assign grp_fu_23995_p_din0 = tmp_reg_4236;
assign grp_fu_23995_p_din1 = output_difference_4_val;
assign grp_fu_23999_p_ce = 1'b1;
assign grp_fu_23999_p_din0 = tmp_reg_4236;
assign grp_fu_23999_p_din1 = output_difference_5_val;
assign grp_fu_24003_p_ce = 1'b1;
assign grp_fu_24003_p_din0 = tmp_reg_4236;
assign grp_fu_24003_p_din1 = output_difference_6_val;
assign grp_fu_24007_p_ce = 1'b1;
assign grp_fu_24007_p_din0 = tmp_reg_4236;
assign grp_fu_24007_p_din1 = output_difference_7_val;
assign grp_fu_24011_p_ce = 1'b1;
assign grp_fu_24011_p_din0 = tmp_reg_4236;
assign grp_fu_24011_p_din1 = output_difference_8_val;
assign grp_fu_24015_p_ce = 1'b1;
assign grp_fu_24015_p_din0 = tmp_reg_4236;
assign grp_fu_24015_p_din1 = output_difference_9_val;
assign grp_fu_24019_p_ce = 1'b1;
assign grp_fu_24019_p_din0 = tmp_reg_4236;
assign grp_fu_24019_p_din1 = output_difference_10_val;
assign grp_fu_24023_p_ce = 1'b1;
assign grp_fu_24023_p_din0 = tmp_reg_4236;
assign grp_fu_24023_p_din1 = output_difference_11_val;
assign grp_fu_24027_p_ce = 1'b1;
assign grp_fu_24027_p_din0 = tmp_reg_4236;
assign grp_fu_24027_p_din1 = output_difference_12_val;
assign grp_fu_24031_p_ce = 1'b1;
assign grp_fu_24031_p_din0 = tmp_reg_4236;
assign grp_fu_24031_p_din1 = output_difference_13_val;
assign grp_fu_24035_p_ce = 1'b1;
assign grp_fu_24035_p_din0 = tmp_reg_4236;
assign grp_fu_24035_p_din1 = output_difference_14_val;
assign grp_fu_24039_p_ce = 1'b1;
assign grp_fu_24039_p_din0 = tmp_reg_4236;
assign grp_fu_24039_p_din1 = output_difference_15_val;
assign grp_fu_24043_p_ce = 1'b1;
assign grp_fu_24043_p_din0 = tmp_reg_4236;
assign grp_fu_24043_p_din1 = output_difference_16_val;
assign grp_fu_24047_p_ce = 1'b1;
assign grp_fu_24047_p_din0 = tmp_reg_4236;
assign grp_fu_24047_p_din1 = output_difference_17_val;
assign grp_fu_24051_p_ce = 1'b1;
assign grp_fu_24051_p_din0 = tmp_reg_4236;
assign grp_fu_24051_p_din1 = output_difference_18_val;
assign grp_fu_24055_p_ce = 1'b1;
assign grp_fu_24055_p_din0 = tmp_reg_4236;
assign grp_fu_24055_p_din1 = output_difference_19_val;
assign grp_fu_24059_p_ce = 1'b1;
assign grp_fu_24059_p_din0 = tmp_reg_4236;
assign grp_fu_24059_p_din1 = output_difference_20_val;
assign grp_fu_24063_p_ce = 1'b1;
assign grp_fu_24063_p_din0 = tmp_reg_4236;
assign grp_fu_24063_p_din1 = output_difference_21_val;
assign grp_fu_24067_p_ce = 1'b1;
assign grp_fu_24067_p_din0 = tmp_reg_4236;
assign grp_fu_24067_p_din1 = output_difference_22_val;
assign grp_fu_24071_p_ce = 1'b1;
assign grp_fu_24071_p_din0 = tmp_reg_4236;
assign grp_fu_24071_p_din1 = output_difference_23_val;
assign grp_fu_24075_p_ce = 1'b1;
assign grp_fu_24075_p_din0 = tmp_reg_4236;
assign grp_fu_24075_p_din1 = output_difference_24_val;
assign grp_fu_24079_p_ce = 1'b1;
assign grp_fu_24079_p_din0 = tmp_reg_4236;
assign grp_fu_24079_p_din1 = output_difference_25_val;
assign grp_fu_24083_p_ce = 1'b1;
assign grp_fu_24083_p_din0 = tmp_reg_4236;
assign grp_fu_24083_p_din1 = output_difference_26_val;
assign grp_fu_24087_p_ce = 1'b1;
assign grp_fu_24087_p_din0 = tmp_reg_4236;
assign grp_fu_24087_p_din1 = output_difference_27_val;
assign grp_fu_24091_p_ce = 1'b1;
assign grp_fu_24091_p_din0 = tmp_reg_4236;
assign grp_fu_24091_p_din1 = output_difference_28_val;
assign grp_fu_24095_p_ce = 1'b1;
assign grp_fu_24095_p_din0 = tmp_reg_4236;
assign grp_fu_24095_p_din1 = output_difference_29_val;
assign grp_fu_24099_p_ce = 1'b1;
assign grp_fu_24099_p_din0 = tmp_reg_4236;
assign grp_fu_24099_p_din1 = output_difference_30_val;
assign grp_fu_24103_p_ce = 1'b1;
assign grp_fu_24103_p_din0 = tmp_reg_4236;
assign grp_fu_24103_p_din1 = output_difference_31_val;
assign grp_fu_24107_p_ce = 1'b1;
assign grp_fu_24107_p_din0 = tmp_reg_4236;
assign grp_fu_24107_p_din1 = output_difference_32_val;
assign grp_fu_24111_p_ce = 1'b1;
assign grp_fu_24111_p_din0 = tmp_reg_4236;
assign grp_fu_24111_p_din1 = output_difference_33_val;
assign grp_fu_24115_p_ce = 1'b1;
assign grp_fu_24115_p_din0 = tmp_reg_4236;
assign grp_fu_24115_p_din1 = output_difference_34_val;
assign grp_fu_24119_p_ce = 1'b1;
assign grp_fu_24119_p_din0 = tmp_reg_4236;
assign grp_fu_24119_p_din1 = output_difference_35_val;
assign grp_fu_24123_p_ce = 1'b1;
assign grp_fu_24123_p_din0 = tmp_reg_4236;
assign grp_fu_24123_p_din1 = output_difference_36_val;
assign grp_fu_24127_p_ce = 1'b1;
assign grp_fu_24127_p_din0 = tmp_reg_4236;
assign grp_fu_24127_p_din1 = output_difference_37_val;
assign grp_fu_24131_p_ce = 1'b1;
assign grp_fu_24131_p_din0 = tmp_reg_4236;
assign grp_fu_24131_p_din1 = output_difference_38_val;
assign grp_fu_24135_p_ce = 1'b1;
assign grp_fu_24135_p_din0 = tmp_reg_4236;
assign grp_fu_24135_p_din1 = output_difference_39_val;
assign grp_fu_24139_p_ce = 1'b1;
assign grp_fu_24139_p_din0 = tmp_reg_4236;
assign grp_fu_24139_p_din1 = output_difference_40_val;
assign grp_fu_24143_p_ce = 1'b1;
assign grp_fu_24143_p_din0 = tmp_reg_4236;
assign grp_fu_24143_p_din1 = output_difference_41_val;
assign grp_fu_24147_p_ce = 1'b1;
assign grp_fu_24147_p_din0 = tmp_reg_4236;
assign grp_fu_24147_p_din1 = output_difference_42_val;
assign grp_fu_24151_p_ce = 1'b1;
assign grp_fu_24151_p_din0 = tmp_reg_4236;
assign grp_fu_24151_p_din1 = output_difference_43_val;
assign grp_fu_24155_p_ce = 1'b1;
assign grp_fu_24155_p_din0 = tmp_reg_4236;
assign grp_fu_24155_p_din1 = output_difference_44_val;
assign grp_fu_24159_p_ce = 1'b1;
assign grp_fu_24159_p_din0 = tmp_reg_4236;
assign grp_fu_24159_p_din1 = output_difference_45_val;
assign grp_fu_24163_p_ce = 1'b1;
assign grp_fu_24163_p_din0 = tmp_reg_4236;
assign grp_fu_24163_p_din1 = output_difference_46_val;
assign grp_fu_24167_p_ce = 1'b1;
assign grp_fu_24167_p_din0 = tmp_reg_4236;
assign grp_fu_24167_p_din1 = output_difference_47_val;
assign grp_fu_24171_p_ce = 1'b1;
assign grp_fu_24171_p_din0 = tmp_reg_4236;
assign grp_fu_24171_p_din1 = output_difference_48_val;
assign grp_fu_24175_p_ce = 1'b1;
assign grp_fu_24175_p_din0 = tmp_reg_4236;
assign grp_fu_24175_p_din1 = output_difference_49_val;
assign grp_fu_24179_p_ce = 1'b1;
assign grp_fu_24179_p_din0 = tmp_reg_4236;
assign grp_fu_24179_p_din1 = output_difference_50_val;
assign grp_fu_24183_p_ce = 1'b1;
assign grp_fu_24183_p_din0 = tmp_reg_4236;
assign grp_fu_24183_p_din1 = output_difference_51_val;
assign grp_fu_24187_p_ce = 1'b1;
assign grp_fu_24187_p_din0 = tmp_reg_4236;
assign grp_fu_24187_p_din1 = output_difference_52_val;
assign grp_fu_24191_p_ce = 1'b1;
assign grp_fu_24191_p_din0 = tmp_reg_4236;
assign grp_fu_24191_p_din1 = output_difference_53_val;
assign grp_fu_24195_p_ce = 1'b1;
assign grp_fu_24195_p_din0 = tmp_reg_4236;
assign grp_fu_24195_p_din1 = output_difference_54_val;
assign grp_fu_24199_p_ce = 1'b1;
assign grp_fu_24199_p_din0 = tmp_reg_4236;
assign grp_fu_24199_p_din1 = output_difference_55_val;
assign grp_fu_24203_p_ce = 1'b1;
assign grp_fu_24203_p_din0 = tmp_reg_4236;
assign grp_fu_24203_p_din1 = output_difference_56_val;
assign grp_fu_24207_p_ce = 1'b1;
assign grp_fu_24207_p_din0 = tmp_reg_4236;
assign grp_fu_24207_p_din1 = output_difference_57_val;
assign grp_fu_24211_p_ce = 1'b1;
assign grp_fu_24211_p_din0 = tmp_reg_4236;
assign grp_fu_24211_p_din1 = output_difference_58_val;
assign grp_fu_24215_p_ce = 1'b1;
assign grp_fu_24215_p_din0 = tmp_reg_4236;
assign grp_fu_24215_p_din1 = output_difference_59_val;
assign grp_fu_24219_p_ce = 1'b1;
assign grp_fu_24219_p_din0 = tmp_reg_4236;
assign grp_fu_24219_p_din1 = output_difference_60_val;
assign grp_fu_24223_p_ce = 1'b1;
assign grp_fu_24223_p_din0 = tmp_reg_4236;
assign grp_fu_24223_p_din1 = output_difference_61_val;
assign grp_fu_24227_p_ce = 1'b1;
assign grp_fu_24227_p_din0 = tmp_reg_4236;
assign grp_fu_24227_p_din1 = output_difference_62_val;
assign grp_fu_24231_p_ce = 1'b1;
assign grp_fu_24231_p_din0 = tmp_reg_4236;
assign grp_fu_24231_p_din1 = output_difference_63_val;
assign icmp_ln113_fu_2880_p2 = ((ap_sig_allocacmp_i_12 == 4'd13) ? 1'b1 : 1'b0);
assign p_cast_fu_2916_p1 = tmp_1_fu_2906_p4;
assign p_sum_fu_2896_p2 = (zext_ln113_1_fu_2892_p1 + idx);
assign tmp_1_fu_2906_p4 = {{p_sum_fu_2896_p2[11:6]}};
assign tmp_fu_3245_p10 = training_data_4_q0;
assign tmp_fu_3245_p100 = training_data_49_q0;
assign tmp_fu_3245_p102 = training_data_50_q0;
assign tmp_fu_3245_p104 = training_data_51_q0;
assign tmp_fu_3245_p106 = training_data_52_q0;
assign tmp_fu_3245_p108 = training_data_53_q0;
assign tmp_fu_3245_p110 = training_data_54_q0;
assign tmp_fu_3245_p112 = training_data_55_q0;
assign tmp_fu_3245_p114 = training_data_56_q0;
assign tmp_fu_3245_p116 = training_data_57_q0;
assign tmp_fu_3245_p118 = training_data_58_q0;
assign tmp_fu_3245_p12 = training_data_5_q0;
assign tmp_fu_3245_p120 = training_data_59_q0;
assign tmp_fu_3245_p122 = training_data_60_q0;
assign tmp_fu_3245_p124 = training_data_61_q0;
assign tmp_fu_3245_p126 = training_data_62_q0;
assign tmp_fu_3245_p128 = training_data_63_q0;
assign tmp_fu_3245_p129 = 'bx;
assign tmp_fu_3245_p14 = training_data_6_q0;
assign tmp_fu_3245_p16 = training_data_7_q0;
assign tmp_fu_3245_p18 = training_data_8_q0;
assign tmp_fu_3245_p2 = training_data_0_q0;
assign tmp_fu_3245_p20 = training_data_9_q0;
assign tmp_fu_3245_p22 = training_data_10_q0;
assign tmp_fu_3245_p24 = training_data_11_q0;
assign tmp_fu_3245_p26 = training_data_12_q0;
assign tmp_fu_3245_p28 = training_data_13_q0;
assign tmp_fu_3245_p30 = training_data_14_q0;
assign tmp_fu_3245_p32 = training_data_15_q0;
assign tmp_fu_3245_p34 = training_data_16_q0;
assign tmp_fu_3245_p36 = training_data_17_q0;
assign tmp_fu_3245_p38 = training_data_18_q0;
assign tmp_fu_3245_p4 = training_data_1_q0;
assign tmp_fu_3245_p40 = training_data_19_q0;
assign tmp_fu_3245_p42 = training_data_20_q0;
assign tmp_fu_3245_p44 = training_data_21_q0;
assign tmp_fu_3245_p46 = training_data_22_q0;
assign tmp_fu_3245_p48 = training_data_23_q0;
assign tmp_fu_3245_p50 = training_data_24_q0;
assign tmp_fu_3245_p52 = training_data_25_q0;
assign tmp_fu_3245_p54 = training_data_26_q0;
assign tmp_fu_3245_p56 = training_data_27_q0;
assign tmp_fu_3245_p58 = training_data_28_q0;
assign tmp_fu_3245_p6 = training_data_2_q0;
assign tmp_fu_3245_p60 = training_data_29_q0;
assign tmp_fu_3245_p62 = training_data_30_q0;
assign tmp_fu_3245_p64 = training_data_31_q0;
assign tmp_fu_3245_p66 = training_data_32_q0;
assign tmp_fu_3245_p68 = training_data_33_q0;
assign tmp_fu_3245_p70 = training_data_34_q0;
assign tmp_fu_3245_p72 = training_data_35_q0;
assign tmp_fu_3245_p74 = training_data_36_q0;
assign tmp_fu_3245_p76 = training_data_37_q0;
assign tmp_fu_3245_p78 = training_data_38_q0;
assign tmp_fu_3245_p8 = training_data_3_q0;
assign tmp_fu_3245_p80 = training_data_39_q0;
assign tmp_fu_3245_p82 = training_data_40_q0;
assign tmp_fu_3245_p84 = training_data_41_q0;
assign tmp_fu_3245_p86 = training_data_42_q0;
assign tmp_fu_3245_p88 = training_data_43_q0;
assign tmp_fu_3245_p90 = training_data_44_q0;
assign tmp_fu_3245_p92 = training_data_45_q0;
assign tmp_fu_3245_p94 = training_data_46_q0;
assign tmp_fu_3245_p96 = training_data_47_q0;
assign tmp_fu_3245_p98 = training_data_48_q0;
assign training_data_0_address0 = p_cast_fu_2916_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_2916_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_2916_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_2916_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_2916_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_2916_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_2916_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_16_address0 = p_cast_fu_2916_p1;
assign training_data_16_ce0 = training_data_16_ce0_local;
assign training_data_17_address0 = p_cast_fu_2916_p1;
assign training_data_17_ce0 = training_data_17_ce0_local;
assign training_data_18_address0 = p_cast_fu_2916_p1;
assign training_data_18_ce0 = training_data_18_ce0_local;
assign training_data_19_address0 = p_cast_fu_2916_p1;
assign training_data_19_ce0 = training_data_19_ce0_local;
assign training_data_1_address0 = p_cast_fu_2916_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_20_address0 = p_cast_fu_2916_p1;
assign training_data_20_ce0 = training_data_20_ce0_local;
assign training_data_21_address0 = p_cast_fu_2916_p1;
assign training_data_21_ce0 = training_data_21_ce0_local;
assign training_data_22_address0 = p_cast_fu_2916_p1;
assign training_data_22_ce0 = training_data_22_ce0_local;
assign training_data_23_address0 = p_cast_fu_2916_p1;
assign training_data_23_ce0 = training_data_23_ce0_local;
assign training_data_24_address0 = p_cast_fu_2916_p1;
assign training_data_24_ce0 = training_data_24_ce0_local;
assign training_data_25_address0 = p_cast_fu_2916_p1;
assign training_data_25_ce0 = training_data_25_ce0_local;
assign training_data_26_address0 = p_cast_fu_2916_p1;
assign training_data_26_ce0 = training_data_26_ce0_local;
assign training_data_27_address0 = p_cast_fu_2916_p1;
assign training_data_27_ce0 = training_data_27_ce0_local;
assign training_data_28_address0 = p_cast_fu_2916_p1;
assign training_data_28_ce0 = training_data_28_ce0_local;
assign training_data_29_address0 = p_cast_fu_2916_p1;
assign training_data_29_ce0 = training_data_29_ce0_local;
assign training_data_2_address0 = p_cast_fu_2916_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_30_address0 = p_cast_fu_2916_p1;
assign training_data_30_ce0 = training_data_30_ce0_local;
assign training_data_31_address0 = p_cast_fu_2916_p1;
assign training_data_31_ce0 = training_data_31_ce0_local;
assign training_data_32_address0 = p_cast_fu_2916_p1;
assign training_data_32_ce0 = training_data_32_ce0_local;
assign training_data_33_address0 = p_cast_fu_2916_p1;
assign training_data_33_ce0 = training_data_33_ce0_local;
assign training_data_34_address0 = p_cast_fu_2916_p1;
assign training_data_34_ce0 = training_data_34_ce0_local;
assign training_data_35_address0 = p_cast_fu_2916_p1;
assign training_data_35_ce0 = training_data_35_ce0_local;
assign training_data_36_address0 = p_cast_fu_2916_p1;
assign training_data_36_ce0 = training_data_36_ce0_local;
assign training_data_37_address0 = p_cast_fu_2916_p1;
assign training_data_37_ce0 = training_data_37_ce0_local;
assign training_data_38_address0 = p_cast_fu_2916_p1;
assign training_data_38_ce0 = training_data_38_ce0_local;
assign training_data_39_address0 = p_cast_fu_2916_p1;
assign training_data_39_ce0 = training_data_39_ce0_local;
assign training_data_3_address0 = p_cast_fu_2916_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_40_address0 = p_cast_fu_2916_p1;
assign training_data_40_ce0 = training_data_40_ce0_local;
assign training_data_41_address0 = p_cast_fu_2916_p1;
assign training_data_41_ce0 = training_data_41_ce0_local;
assign training_data_42_address0 = p_cast_fu_2916_p1;
assign training_data_42_ce0 = training_data_42_ce0_local;
assign training_data_43_address0 = p_cast_fu_2916_p1;
assign training_data_43_ce0 = training_data_43_ce0_local;
assign training_data_44_address0 = p_cast_fu_2916_p1;
assign training_data_44_ce0 = training_data_44_ce0_local;
assign training_data_45_address0 = p_cast_fu_2916_p1;
assign training_data_45_ce0 = training_data_45_ce0_local;
assign training_data_46_address0 = p_cast_fu_2916_p1;
assign training_data_46_ce0 = training_data_46_ce0_local;
assign training_data_47_address0 = p_cast_fu_2916_p1;
assign training_data_47_ce0 = training_data_47_ce0_local;
assign training_data_48_address0 = p_cast_fu_2916_p1;
assign training_data_48_ce0 = training_data_48_ce0_local;
assign training_data_49_address0 = p_cast_fu_2916_p1;
assign training_data_49_ce0 = training_data_49_ce0_local;
assign training_data_4_address0 = p_cast_fu_2916_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_50_address0 = p_cast_fu_2916_p1;
assign training_data_50_ce0 = training_data_50_ce0_local;
assign training_data_51_address0 = p_cast_fu_2916_p1;
assign training_data_51_ce0 = training_data_51_ce0_local;
assign training_data_52_address0 = p_cast_fu_2916_p1;
assign training_data_52_ce0 = training_data_52_ce0_local;
assign training_data_53_address0 = p_cast_fu_2916_p1;
assign training_data_53_ce0 = training_data_53_ce0_local;
assign training_data_54_address0 = p_cast_fu_2916_p1;
assign training_data_54_ce0 = training_data_54_ce0_local;
assign training_data_55_address0 = p_cast_fu_2916_p1;
assign training_data_55_ce0 = training_data_55_ce0_local;
assign training_data_56_address0 = p_cast_fu_2916_p1;
assign training_data_56_ce0 = training_data_56_ce0_local;
assign training_data_57_address0 = p_cast_fu_2916_p1;
assign training_data_57_ce0 = training_data_57_ce0_local;
assign training_data_58_address0 = p_cast_fu_2916_p1;
assign training_data_58_ce0 = training_data_58_ce0_local;
assign training_data_59_address0 = p_cast_fu_2916_p1;
assign training_data_59_ce0 = training_data_59_ce0_local;
assign training_data_5_address0 = p_cast_fu_2916_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_60_address0 = p_cast_fu_2916_p1;
assign training_data_60_ce0 = training_data_60_ce0_local;
assign training_data_61_address0 = p_cast_fu_2916_p1;
assign training_data_61_ce0 = training_data_61_ce0_local;
assign training_data_62_address0 = p_cast_fu_2916_p1;
assign training_data_62_ce0 = training_data_62_ce0_local;
assign training_data_63_address0 = p_cast_fu_2916_p1;
assign training_data_63_ce0 = training_data_63_ce0_local;
assign training_data_6_address0 = p_cast_fu_2916_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_2916_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_2916_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_2916_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign zext_ln113_1_fu_2892_p1 = ap_sig_allocacmp_i_12;
assign zext_ln113_fu_3508_p1 = i_12_reg_3902_pp0_iter8_reg;
endmodule 