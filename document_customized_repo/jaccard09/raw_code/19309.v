module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_32_address0,delta_weights3_32_ce0,delta_weights3_32_we0,delta_weights3_32_d0,delta_weights3_33_address0,delta_weights3_33_ce0,delta_weights3_33_we0,delta_weights3_33_d0,delta_weights3_34_address0,delta_weights3_34_ce0,delta_weights3_34_we0,delta_weights3_34_d0,delta_weights3_35_address0,delta_weights3_35_ce0,delta_weights3_35_we0,delta_weights3_35_d0,delta_weights3_36_address0,delta_weights3_36_ce0,delta_weights3_36_we0,delta_weights3_36_d0,delta_weights3_37_address0,delta_weights3_37_ce0,delta_weights3_37_we0,delta_weights3_37_d0,delta_weights3_38_address0,delta_weights3_38_ce0,delta_weights3_38_we0,delta_weights3_38_d0,delta_weights3_39_address0,delta_weights3_39_ce0,delta_weights3_39_we0,delta_weights3_39_d0,delta_weights3_40_address0,delta_weights3_40_ce0,delta_weights3_40_we0,delta_weights3_40_d0,delta_weights3_41_address0,delta_weights3_41_ce0,delta_weights3_41_we0,delta_weights3_41_d0,delta_weights3_42_address0,delta_weights3_42_ce0,delta_weights3_42_we0,delta_weights3_42_d0,delta_weights3_43_address0,delta_weights3_43_ce0,delta_weights3_43_we0,delta_weights3_43_d0,delta_weights3_44_address0,delta_weights3_44_ce0,delta_weights3_44_we0,delta_weights3_44_d0,delta_weights3_45_address0,delta_weights3_45_ce0,delta_weights3_45_we0,delta_weights3_45_d0,delta_weights3_46_address0,delta_weights3_46_ce0,delta_weights3_46_we0,delta_weights3_46_d0,delta_weights3_47_address0,delta_weights3_47_ce0,delta_weights3_47_we0,delta_weights3_47_d0,delta_weights3_48_address0,delta_weights3_48_ce0,delta_weights3_48_we0,delta_weights3_48_d0,delta_weights3_49_address0,delta_weights3_49_ce0,delta_weights3_49_we0,delta_weights3_49_d0,delta_weights3_50_address0,delta_weights3_50_ce0,delta_weights3_50_we0,delta_weights3_50_d0,delta_weights3_51_address0,delta_weights3_51_ce0,delta_weights3_51_we0,delta_weights3_51_d0,delta_weights3_52_address0,delta_weights3_52_ce0,delta_weights3_52_we0,delta_weights3_52_d0,delta_weights3_53_address0,delta_weights3_53_ce0,delta_weights3_53_we0,delta_weights3_53_d0,delta_weights3_54_address0,delta_weights3_54_ce0,delta_weights3_54_we0,delta_weights3_54_d0,delta_weights3_55_address0,delta_weights3_55_ce0,delta_weights3_55_we0,delta_weights3_55_d0,delta_weights3_56_address0,delta_weights3_56_ce0,delta_weights3_56_we0,delta_weights3_56_d0,delta_weights3_57_address0,delta_weights3_57_ce0,delta_weights3_57_we0,delta_weights3_57_d0,delta_weights3_58_address0,delta_weights3_58_ce0,delta_weights3_58_we0,delta_weights3_58_d0,delta_weights3_59_address0,delta_weights3_59_ce0,delta_weights3_59_we0,delta_weights3_59_d0,delta_weights3_60_address0,delta_weights3_60_ce0,delta_weights3_60_we0,delta_weights3_60_d0,delta_weights3_61_address0,delta_weights3_61_ce0,delta_weights3_61_we0,delta_weights3_61_d0,delta_weights3_62_address0,delta_weights3_62_ce0,delta_weights3_62_we0,delta_weights3_62_d0,delta_weights3_63_address0,delta_weights3_63_ce0,delta_weights3_63_we0,delta_weights3_63_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_val,last_activations_1_val,last_activations_2_val,last_activations_3_val,last_activations_4_val,last_activations_5_val,last_activations_6_val,last_activations_7_val,last_activations_8_val,last_activations_9_val,last_activations_10_val,last_activations_11_val,last_activations_12_val,last_activations_13_val,last_activations_14_val,last_activations_15_val,last_activations_16_val,last_activations_17_val,last_activations_18_val,last_activations_19_val,last_activations_20_val,last_activations_21_val,last_activations_22_val,last_activations_23_val,last_activations_24_val,last_activations_25_val,last_activations_26_val,last_activations_27_val,last_activations_28_val,last_activations_29_val,last_activations_30_val,last_activations_31_val,last_activations_32_val,last_activations_33_val,last_activations_34_val,last_activations_35_val,last_activations_36_val,last_activations_37_val,last_activations_38_val,last_activations_39_val,last_activations_40_val,last_activations_41_val,last_activations_42_val,last_activations_43_val,last_activations_44_val,last_activations_45_val,last_activations_46_val,last_activations_47_val,last_activations_48_val,last_activations_49_val,last_activations_50_val,last_activations_51_val,last_activations_52_val,last_activations_53_val,last_activations_54_val,last_activations_55_val,last_activations_56_val,last_activations_57_val,last_activations_58_val,last_activations_59_val,last_activations_60_val,last_activations_61_val,last_activations_62_val,last_activations_63_val,grp_fu_18599_p_din0,grp_fu_18599_p_din1,grp_fu_18599_p_dout0,grp_fu_18599_p_ce,grp_fu_18603_p_din0,grp_fu_18603_p_din1,grp_fu_18603_p_dout0,grp_fu_18603_p_ce,grp_fu_18607_p_din0,grp_fu_18607_p_din1,grp_fu_18607_p_dout0,grp_fu_18607_p_ce,grp_fu_18611_p_din0,grp_fu_18611_p_din1,grp_fu_18611_p_dout0,grp_fu_18611_p_ce,grp_fu_18615_p_din0,grp_fu_18615_p_din1,grp_fu_18615_p_dout0,grp_fu_18615_p_ce,grp_fu_18619_p_din0,grp_fu_18619_p_din1,grp_fu_18619_p_dout0,grp_fu_18619_p_ce,grp_fu_18623_p_din0,grp_fu_18623_p_din1,grp_fu_18623_p_dout0,grp_fu_18623_p_ce,grp_fu_18627_p_din0,grp_fu_18627_p_din1,grp_fu_18627_p_dout0,grp_fu_18627_p_ce,grp_fu_18631_p_din0,grp_fu_18631_p_din1,grp_fu_18631_p_dout0,grp_fu_18631_p_ce,grp_fu_18635_p_din0,grp_fu_18635_p_din1,grp_fu_18635_p_dout0,grp_fu_18635_p_ce,grp_fu_18639_p_din0,grp_fu_18639_p_din1,grp_fu_18639_p_dout0,grp_fu_18639_p_ce,grp_fu_18643_p_din0,grp_fu_18643_p_din1,grp_fu_18643_p_dout0,grp_fu_18643_p_ce,grp_fu_18647_p_din0,grp_fu_18647_p_din1,grp_fu_18647_p_dout0,grp_fu_18647_p_ce,grp_fu_18651_p_din0,grp_fu_18651_p_din1,grp_fu_18651_p_dout0,grp_fu_18651_p_ce,grp_fu_18655_p_din0,grp_fu_18655_p_din1,grp_fu_18655_p_dout0,grp_fu_18655_p_ce,grp_fu_18659_p_din0,grp_fu_18659_p_din1,grp_fu_18659_p_dout0,grp_fu_18659_p_ce,grp_fu_18663_p_din0,grp_fu_18663_p_din1,grp_fu_18663_p_dout0,grp_fu_18663_p_ce,grp_fu_18667_p_din0,grp_fu_18667_p_din1,grp_fu_18667_p_dout0,grp_fu_18667_p_ce,grp_fu_18671_p_din0,grp_fu_18671_p_din1,grp_fu_18671_p_dout0,grp_fu_18671_p_ce,grp_fu_18675_p_din0,grp_fu_18675_p_din1,grp_fu_18675_p_dout0,grp_fu_18675_p_ce,grp_fu_18679_p_din0,grp_fu_18679_p_din1,grp_fu_18679_p_dout0,grp_fu_18679_p_ce,grp_fu_18683_p_din0,grp_fu_18683_p_din1,grp_fu_18683_p_dout0,grp_fu_18683_p_ce,grp_fu_18687_p_din0,grp_fu_18687_p_din1,grp_fu_18687_p_dout0,grp_fu_18687_p_ce,grp_fu_18691_p_din0,grp_fu_18691_p_din1,grp_fu_18691_p_dout0,grp_fu_18691_p_ce,grp_fu_18695_p_din0,grp_fu_18695_p_din1,grp_fu_18695_p_dout0,grp_fu_18695_p_ce,grp_fu_18699_p_din0,grp_fu_18699_p_din1,grp_fu_18699_p_dout0,grp_fu_18699_p_ce,grp_fu_18703_p_din0,grp_fu_18703_p_din1,grp_fu_18703_p_dout0,grp_fu_18703_p_ce,grp_fu_18707_p_din0,grp_fu_18707_p_din1,grp_fu_18707_p_dout0,grp_fu_18707_p_ce,grp_fu_18711_p_din0,grp_fu_18711_p_din1,grp_fu_18711_p_dout0,grp_fu_18711_p_ce,grp_fu_18715_p_din0,grp_fu_18715_p_din1,grp_fu_18715_p_dout0,grp_fu_18715_p_ce,grp_fu_18719_p_din0,grp_fu_18719_p_din1,grp_fu_18719_p_dout0,grp_fu_18719_p_ce,grp_fu_18723_p_din0,grp_fu_18723_p_din1,grp_fu_18723_p_dout0,grp_fu_18723_p_ce,grp_fu_18727_p_din0,grp_fu_18727_p_din1,grp_fu_18727_p_dout0,grp_fu_18727_p_ce,grp_fu_18731_p_din0,grp_fu_18731_p_din1,grp_fu_18731_p_dout0,grp_fu_18731_p_ce,grp_fu_18735_p_din0,grp_fu_18735_p_din1,grp_fu_18735_p_dout0,grp_fu_18735_p_ce,grp_fu_18739_p_din0,grp_fu_18739_p_din1,grp_fu_18739_p_dout0,grp_fu_18739_p_ce,grp_fu_18743_p_din0,grp_fu_18743_p_din1,grp_fu_18743_p_dout0,grp_fu_18743_p_ce,grp_fu_18747_p_din0,grp_fu_18747_p_din1,grp_fu_18747_p_dout0,grp_fu_18747_p_ce,grp_fu_18751_p_din0,grp_fu_18751_p_din1,grp_fu_18751_p_dout0,grp_fu_18751_p_ce,grp_fu_18755_p_din0,grp_fu_18755_p_din1,grp_fu_18755_p_dout0,grp_fu_18755_p_ce,grp_fu_18759_p_din0,grp_fu_18759_p_din1,grp_fu_18759_p_dout0,grp_fu_18759_p_ce,grp_fu_18763_p_din0,grp_fu_18763_p_din1,grp_fu_18763_p_dout0,grp_fu_18763_p_ce,grp_fu_18767_p_din0,grp_fu_18767_p_din1,grp_fu_18767_p_dout0,grp_fu_18767_p_ce,grp_fu_18771_p_din0,grp_fu_18771_p_din1,grp_fu_18771_p_dout0,grp_fu_18771_p_ce,grp_fu_18775_p_din0,grp_fu_18775_p_din1,grp_fu_18775_p_dout0,grp_fu_18775_p_ce,grp_fu_18779_p_din0,grp_fu_18779_p_din1,grp_fu_18779_p_dout0,grp_fu_18779_p_ce,grp_fu_18783_p_din0,grp_fu_18783_p_din1,grp_fu_18783_p_dout0,grp_fu_18783_p_ce,grp_fu_18787_p_din0,grp_fu_18787_p_din1,grp_fu_18787_p_dout0,grp_fu_18787_p_ce); 
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
output  [63:0] grp_fu_18599_p_din0;
output  [63:0] grp_fu_18599_p_din1;
input  [63:0] grp_fu_18599_p_dout0;
output   grp_fu_18599_p_ce;
output  [63:0] grp_fu_18603_p_din0;
output  [63:0] grp_fu_18603_p_din1;
input  [63:0] grp_fu_18603_p_dout0;
output   grp_fu_18603_p_ce;
output  [63:0] grp_fu_18607_p_din0;
output  [63:0] grp_fu_18607_p_din1;
input  [63:0] grp_fu_18607_p_dout0;
output   grp_fu_18607_p_ce;
output  [63:0] grp_fu_18611_p_din0;
output  [63:0] grp_fu_18611_p_din1;
input  [63:0] grp_fu_18611_p_dout0;
output   grp_fu_18611_p_ce;
output  [63:0] grp_fu_18615_p_din0;
output  [63:0] grp_fu_18615_p_din1;
input  [63:0] grp_fu_18615_p_dout0;
output   grp_fu_18615_p_ce;
output  [63:0] grp_fu_18619_p_din0;
output  [63:0] grp_fu_18619_p_din1;
input  [63:0] grp_fu_18619_p_dout0;
output   grp_fu_18619_p_ce;
output  [63:0] grp_fu_18623_p_din0;
output  [63:0] grp_fu_18623_p_din1;
input  [63:0] grp_fu_18623_p_dout0;
output   grp_fu_18623_p_ce;
output  [63:0] grp_fu_18627_p_din0;
output  [63:0] grp_fu_18627_p_din1;
input  [63:0] grp_fu_18627_p_dout0;
output   grp_fu_18627_p_ce;
output  [63:0] grp_fu_18631_p_din0;
output  [63:0] grp_fu_18631_p_din1;
input  [63:0] grp_fu_18631_p_dout0;
output   grp_fu_18631_p_ce;
output  [63:0] grp_fu_18635_p_din0;
output  [63:0] grp_fu_18635_p_din1;
input  [63:0] grp_fu_18635_p_dout0;
output   grp_fu_18635_p_ce;
output  [63:0] grp_fu_18639_p_din0;
output  [63:0] grp_fu_18639_p_din1;
input  [63:0] grp_fu_18639_p_dout0;
output   grp_fu_18639_p_ce;
output  [63:0] grp_fu_18643_p_din0;
output  [63:0] grp_fu_18643_p_din1;
input  [63:0] grp_fu_18643_p_dout0;
output   grp_fu_18643_p_ce;
output  [63:0] grp_fu_18647_p_din0;
output  [63:0] grp_fu_18647_p_din1;
input  [63:0] grp_fu_18647_p_dout0;
output   grp_fu_18647_p_ce;
output  [63:0] grp_fu_18651_p_din0;
output  [63:0] grp_fu_18651_p_din1;
input  [63:0] grp_fu_18651_p_dout0;
output   grp_fu_18651_p_ce;
output  [63:0] grp_fu_18655_p_din0;
output  [63:0] grp_fu_18655_p_din1;
input  [63:0] grp_fu_18655_p_dout0;
output   grp_fu_18655_p_ce;
output  [63:0] grp_fu_18659_p_din0;
output  [63:0] grp_fu_18659_p_din1;
input  [63:0] grp_fu_18659_p_dout0;
output   grp_fu_18659_p_ce;
output  [63:0] grp_fu_18663_p_din0;
output  [63:0] grp_fu_18663_p_din1;
input  [63:0] grp_fu_18663_p_dout0;
output   grp_fu_18663_p_ce;
output  [63:0] grp_fu_18667_p_din0;
output  [63:0] grp_fu_18667_p_din1;
input  [63:0] grp_fu_18667_p_dout0;
output   grp_fu_18667_p_ce;
output  [63:0] grp_fu_18671_p_din0;
output  [63:0] grp_fu_18671_p_din1;
input  [63:0] grp_fu_18671_p_dout0;
output   grp_fu_18671_p_ce;
output  [63:0] grp_fu_18675_p_din0;
output  [63:0] grp_fu_18675_p_din1;
input  [63:0] grp_fu_18675_p_dout0;
output   grp_fu_18675_p_ce;
output  [63:0] grp_fu_18679_p_din0;
output  [63:0] grp_fu_18679_p_din1;
input  [63:0] grp_fu_18679_p_dout0;
output   grp_fu_18679_p_ce;
output  [63:0] grp_fu_18683_p_din0;
output  [63:0] grp_fu_18683_p_din1;
input  [63:0] grp_fu_18683_p_dout0;
output   grp_fu_18683_p_ce;
output  [63:0] grp_fu_18687_p_din0;
output  [63:0] grp_fu_18687_p_din1;
input  [63:0] grp_fu_18687_p_dout0;
output   grp_fu_18687_p_ce;
output  [63:0] grp_fu_18691_p_din0;
output  [63:0] grp_fu_18691_p_din1;
input  [63:0] grp_fu_18691_p_dout0;
output   grp_fu_18691_p_ce;
output  [63:0] grp_fu_18695_p_din0;
output  [63:0] grp_fu_18695_p_din1;
input  [63:0] grp_fu_18695_p_dout0;
output   grp_fu_18695_p_ce;
output  [63:0] grp_fu_18699_p_din0;
output  [63:0] grp_fu_18699_p_din1;
input  [63:0] grp_fu_18699_p_dout0;
output   grp_fu_18699_p_ce;
output  [63:0] grp_fu_18703_p_din0;
output  [63:0] grp_fu_18703_p_din1;
input  [63:0] grp_fu_18703_p_dout0;
output   grp_fu_18703_p_ce;
output  [63:0] grp_fu_18707_p_din0;
output  [63:0] grp_fu_18707_p_din1;
input  [63:0] grp_fu_18707_p_dout0;
output   grp_fu_18707_p_ce;
output  [63:0] grp_fu_18711_p_din0;
output  [63:0] grp_fu_18711_p_din1;
input  [63:0] grp_fu_18711_p_dout0;
output   grp_fu_18711_p_ce;
output  [63:0] grp_fu_18715_p_din0;
output  [63:0] grp_fu_18715_p_din1;
input  [63:0] grp_fu_18715_p_dout0;
output   grp_fu_18715_p_ce;
output  [63:0] grp_fu_18719_p_din0;
output  [63:0] grp_fu_18719_p_din1;
input  [63:0] grp_fu_18719_p_dout0;
output   grp_fu_18719_p_ce;
output  [63:0] grp_fu_18723_p_din0;
output  [63:0] grp_fu_18723_p_din1;
input  [63:0] grp_fu_18723_p_dout0;
output   grp_fu_18723_p_ce;
output  [63:0] grp_fu_18727_p_din0;
output  [63:0] grp_fu_18727_p_din1;
input  [63:0] grp_fu_18727_p_dout0;
output   grp_fu_18727_p_ce;
output  [63:0] grp_fu_18731_p_din0;
output  [63:0] grp_fu_18731_p_din1;
input  [63:0] grp_fu_18731_p_dout0;
output   grp_fu_18731_p_ce;
output  [63:0] grp_fu_18735_p_din0;
output  [63:0] grp_fu_18735_p_din1;
input  [63:0] grp_fu_18735_p_dout0;
output   grp_fu_18735_p_ce;
output  [63:0] grp_fu_18739_p_din0;
output  [63:0] grp_fu_18739_p_din1;
input  [63:0] grp_fu_18739_p_dout0;
output   grp_fu_18739_p_ce;
output  [63:0] grp_fu_18743_p_din0;
output  [63:0] grp_fu_18743_p_din1;
input  [63:0] grp_fu_18743_p_dout0;
output   grp_fu_18743_p_ce;
output  [63:0] grp_fu_18747_p_din0;
output  [63:0] grp_fu_18747_p_din1;
input  [63:0] grp_fu_18747_p_dout0;
output   grp_fu_18747_p_ce;
output  [63:0] grp_fu_18751_p_din0;
output  [63:0] grp_fu_18751_p_din1;
input  [63:0] grp_fu_18751_p_dout0;
output   grp_fu_18751_p_ce;
output  [63:0] grp_fu_18755_p_din0;
output  [63:0] grp_fu_18755_p_din1;
input  [63:0] grp_fu_18755_p_dout0;
output   grp_fu_18755_p_ce;
output  [63:0] grp_fu_18759_p_din0;
output  [63:0] grp_fu_18759_p_din1;
input  [63:0] grp_fu_18759_p_dout0;
output   grp_fu_18759_p_ce;
output  [63:0] grp_fu_18763_p_din0;
output  [63:0] grp_fu_18763_p_din1;
input  [63:0] grp_fu_18763_p_dout0;
output   grp_fu_18763_p_ce;
output  [63:0] grp_fu_18767_p_din0;
output  [63:0] grp_fu_18767_p_din1;
input  [63:0] grp_fu_18767_p_dout0;
output   grp_fu_18767_p_ce;
output  [63:0] grp_fu_18771_p_din0;
output  [63:0] grp_fu_18771_p_din1;
input  [63:0] grp_fu_18771_p_dout0;
output   grp_fu_18771_p_ce;
output  [63:0] grp_fu_18775_p_din0;
output  [63:0] grp_fu_18775_p_din1;
input  [63:0] grp_fu_18775_p_dout0;
output   grp_fu_18775_p_ce;
output  [63:0] grp_fu_18779_p_din0;
output  [63:0] grp_fu_18779_p_din1;
input  [63:0] grp_fu_18779_p_dout0;
output   grp_fu_18779_p_ce;
output  [63:0] grp_fu_18783_p_din0;
output  [63:0] grp_fu_18783_p_din1;
input  [63:0] grp_fu_18783_p_dout0;
output   grp_fu_18783_p_ce;
output  [63:0] grp_fu_18787_p_din0;
output  [63:0] grp_fu_18787_p_din1;
input  [63:0] grp_fu_18787_p_dout0;
output   grp_fu_18787_p_ce;
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
wire   [0:0] tmp_442_fu_2852_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln73_fu_2864_p1;
reg   [5:0] trunc_ln73_reg_4407;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter1_reg;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter2_reg;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter3_reg;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter4_reg;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter5_reg;
reg   [5:0] trunc_ln73_reg_4407_pp0_iter6_reg;
wire   [63:0] tmp_fu_2868_p11;
reg   [63:0] tmp_reg_4411;
reg   [1:0] lshr_ln_reg_4418;
reg   [1:0] lshr_ln_reg_4418_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_4418_pp0_iter7_reg;
reg   [5:0] tmp_27_reg_4423;
reg   [5:0] tmp_27_reg_4423_pp0_iter1_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter2_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter3_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter4_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter5_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter6_reg;
reg   [5:0] tmp_27_reg_4423_pp0_iter7_reg;
reg   [3:0] tmp_29_reg_4428;
reg   [3:0] tmp_29_reg_4428_pp0_iter1_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter2_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter3_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter4_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter5_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter6_reg;
reg   [3:0] tmp_29_reg_4428_pp0_iter7_reg;
wire   [63:0] tmp_s_fu_2936_p11;
reg   [63:0] tmp_s_reg_4433;
wire   [63:0] tmp_375_fu_2960_p11;
reg   [63:0] tmp_375_reg_4440;
wire   [63:0] tmp_376_fu_2984_p11;
reg   [63:0] tmp_376_reg_4447;
wire   [63:0] tmp_377_fu_3008_p11;
reg   [63:0] tmp_377_reg_4454;
wire   [63:0] tmp_378_fu_3032_p11;
reg   [63:0] tmp_378_reg_4461;
wire   [63:0] tmp_379_fu_3056_p11;
reg   [63:0] tmp_379_reg_4468;
wire   [63:0] tmp_380_fu_3080_p11;
reg   [63:0] tmp_380_reg_4475;
wire   [63:0] tmp_381_fu_3104_p11;
reg   [63:0] tmp_381_reg_4482;
wire   [63:0] tmp_382_fu_3128_p11;
reg   [63:0] tmp_382_reg_4489;
wire   [63:0] tmp_383_fu_3152_p11;
reg   [63:0] tmp_383_reg_4496;
wire   [63:0] tmp_384_fu_3176_p11;
reg   [63:0] tmp_384_reg_4503;
wire   [63:0] tmp_385_fu_3200_p11;
reg   [63:0] tmp_385_reg_4510;
wire   [63:0] tmp_386_fu_3224_p11;
reg   [63:0] tmp_386_reg_4517;
wire   [63:0] tmp_387_fu_3248_p11;
reg   [63:0] tmp_387_reg_4524;
wire   [63:0] tmp_388_fu_3272_p11;
reg   [63:0] tmp_388_reg_4531;
reg   [63:0] mul_reg_4538;
reg   [63:0] mul_s_reg_4546;
reg   [63:0] mul_16_reg_4554;
reg   [63:0] mul_1_reg_4562;
reg   [63:0] mul_1_1_reg_4570;
reg   [63:0] mul_1_2_reg_4578;
reg   [63:0] mul_2_reg_4586;
reg   [63:0] mul_2_1_reg_4594;
reg   [63:0] mul_2_2_reg_4602;
reg   [63:0] mul_3_reg_4610;
reg   [63:0] mul_3_1_reg_4618;
reg   [63:0] mul_3_2_reg_4626;
reg   [63:0] mul_4_reg_4634;
reg   [63:0] mul_4_1_reg_4642;
reg   [63:0] mul_4_2_reg_4650;
reg   [63:0] mul_5_reg_4658;
reg   [63:0] mul_5_1_reg_4666;
reg   [63:0] mul_5_2_reg_4674;
reg   [63:0] mul_6_reg_4682;
reg   [63:0] mul_6_1_reg_4690;
reg   [63:0] mul_6_2_reg_4698;
reg   [63:0] mul_7_reg_4706;
reg   [63:0] mul_7_1_reg_4714;
reg   [63:0] mul_7_2_reg_4722;
reg   [63:0] mul_8_reg_4730;
reg   [63:0] mul_8_1_reg_4738;
reg   [63:0] mul_8_2_reg_4746;
reg   [63:0] mul_9_reg_4754;
reg   [63:0] mul_9_1_reg_4762;
reg   [63:0] mul_9_2_reg_4770;
reg   [63:0] mul_10_reg_4778;
reg   [63:0] mul_10_1_reg_4786;
reg   [63:0] mul_10_2_reg_4794;
reg   [63:0] mul_11_reg_4802;
reg   [63:0] mul_11_1_reg_4810;
reg   [63:0] mul_11_2_reg_4818;
reg   [63:0] mul_12_reg_4826;
reg   [63:0] mul_12_1_reg_4834;
reg   [63:0] mul_12_2_reg_4842;
reg   [63:0] mul_13_reg_4850;
reg   [63:0] mul_13_1_reg_4858;
reg   [63:0] mul_13_2_reg_4866;
reg   [63:0] mul_14_reg_4874;
reg   [63:0] mul_14_1_reg_4882;
reg   [63:0] mul_14_2_reg_4890;
reg   [63:0] mul_15_reg_4898;
reg   [63:0] mul_15_1_reg_4906;
reg   [63:0] mul_15_2_reg_4914;
wire   [63:0] zext_ln75_1_fu_3307_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_2_fu_3361_p1;
wire   [63:0] zext_ln75_3_fu_3385_p1;
wire   [63:0] zext_ln75_4_fu_3409_p1;
wire   [63:0] zext_ln75_5_fu_3433_p1;
wire   [63:0] zext_ln75_6_fu_3457_p1;
wire   [63:0] zext_ln75_7_fu_3481_p1;
wire   [63:0] zext_ln75_8_fu_3505_p1;
wire   [63:0] zext_ln75_9_fu_3529_p1;
wire   [63:0] zext_ln75_10_fu_3553_p1;
wire   [63:0] zext_ln75_11_fu_3584_p1;
wire   [63:0] zext_ln75_12_fu_3608_p1;
wire   [63:0] zext_ln75_13_fu_3632_p1;
wire   [63:0] zext_ln75_14_fu_3656_p1;
wire   [63:0] zext_ln75_15_fu_3680_p1;
wire   [63:0] zext_ln75_16_fu_3704_p1;
wire   [63:0] zext_ln75_17_fu_3728_p1;
wire   [63:0] zext_ln75_18_fu_3752_p1;
wire   [63:0] zext_ln75_19_fu_3776_p1;
wire   [63:0] zext_ln75_20_fu_3800_p1;
wire   [63:0] zext_ln75_21_fu_3824_p1;
wire   [63:0] zext_ln75_22_fu_3848_p1;
wire   [63:0] zext_ln75_23_fu_3872_p1;
wire   [63:0] zext_ln75_24_fu_3896_p1;
wire   [63:0] zext_ln75_25_fu_3920_p1;
wire   [63:0] zext_ln75_26_fu_3944_p1;
wire   [63:0] zext_ln75_27_fu_3968_p1;
wire   [63:0] zext_ln75_28_fu_3992_p1;
wire   [63:0] zext_ln75_29_fu_4016_p1;
wire   [63:0] zext_ln75_30_fu_4040_p1;
wire   [63:0] zext_ln75_31_fu_4064_p1;
wire   [63:0] zext_ln75_32_fu_4088_p1;
wire   [63:0] zext_ln75_33_fu_4112_p1;
wire   [63:0] zext_ln75_34_fu_4136_p1;
wire   [63:0] zext_ln75_35_fu_4160_p1;
wire   [63:0] zext_ln75_36_fu_4184_p1;
wire   [63:0] zext_ln75_37_fu_4208_p1;
wire   [63:0] zext_ln75_38_fu_4232_p1;
wire   [63:0] zext_ln75_39_fu_4256_p1;
wire   [63:0] zext_ln75_40_fu_4280_p1;
wire   [63:0] zext_ln75_41_fu_4304_p1;
wire   [63:0] zext_ln75_42_fu_4328_p1;
reg   [6:0] i_fu_390;
wire   [6:0] add_ln73_fu_3296_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    delta_weights3_32_we0_local;
reg    ap_predicate_pred1222_state9;
reg   [63:0] delta_weights3_32_d0_local;
reg    delta_weights3_32_ce0_local;
reg   [1:0] delta_weights3_32_address0_local;
reg    ap_predicate_pred1231_state9;
reg    ap_predicate_pred1243_state9;
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
reg    delta_weights3_48_we0_local;
reg   [63:0] delta_weights3_48_d0_local;
reg    delta_weights3_48_ce0_local;
reg   [1:0] delta_weights3_48_address0_local;
reg    ap_predicate_pred1239_state9;
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
wire   [63:0] tmp_fu_2868_p9;
wire   [7:0] p_shl_fu_2892_p3;
wire   [7:0] zext_ln75_fu_2860_p1;
wire   [7:0] sub_ln75_fu_2900_p2;
wire   [63:0] tmp_s_fu_2936_p9;
wire   [63:0] tmp_375_fu_2960_p9;
wire   [63:0] tmp_376_fu_2984_p9;
wire   [63:0] tmp_377_fu_3008_p9;
wire   [63:0] tmp_378_fu_3032_p9;
wire   [63:0] tmp_379_fu_3056_p9;
wire   [63:0] tmp_380_fu_3080_p9;
wire   [63:0] tmp_381_fu_3104_p9;
wire   [63:0] tmp_382_fu_3128_p9;
wire   [63:0] tmp_383_fu_3152_p9;
wire   [63:0] tmp_384_fu_3176_p9;
wire   [63:0] tmp_385_fu_3200_p9;
wire   [63:0] tmp_386_fu_3224_p9;
wire   [63:0] tmp_387_fu_3248_p9;
wire   [63:0] tmp_388_fu_3272_p9;
wire   [7:0] tmp_28_fu_3338_p3;
wire   [7:0] add_ln75_fu_3345_p2;
wire   [1:0] lshr_ln75_1_fu_3351_p4;
wire   [7:0] add_ln75_1_fu_3369_p2;
wire   [1:0] lshr_ln75_2_fu_3375_p4;
wire   [7:0] empty_fu_3393_p2;
wire   [1:0] lshr_ln75_3_fu_3399_p4;
wire   [7:0] add_ln75_2_fu_3417_p2;
wire   [1:0] lshr_ln75_4_fu_3423_p4;
wire   [7:0] empty_1264_fu_3441_p2;
wire   [1:0] lshr_ln75_5_fu_3447_p4;
wire   [7:0] add_ln75_3_fu_3465_p2;
wire   [1:0] lshr_ln75_6_fu_3471_p4;
wire   [7:0] empty_1265_fu_3489_p2;
wire   [1:0] lshr_ln75_7_fu_3495_p4;
wire   [7:0] add_ln75_4_fu_3513_p2;
wire   [1:0] lshr_ln75_8_fu_3519_p4;
wire   [7:0] add_ln75_5_fu_3537_p2;
wire   [1:0] lshr_ln75_9_fu_3543_p4;
wire   [7:0] tmp_30_fu_3561_p3;
wire   [7:0] add_ln75_6_fu_3568_p2;
wire   [1:0] lshr_ln75_s_fu_3574_p4;
wire   [7:0] add_ln75_7_fu_3592_p2;
wire   [1:0] lshr_ln75_10_fu_3598_p4;
wire   [7:0] empty_1266_fu_3616_p2;
wire   [1:0] lshr_ln75_11_fu_3622_p4;
wire   [7:0] add_ln75_8_fu_3640_p2;
wire   [1:0] lshr_ln75_12_fu_3646_p4;
wire   [7:0] add_ln75_9_fu_3664_p2;
wire   [1:0] lshr_ln75_13_fu_3670_p4;
wire   [7:0] empty_1267_fu_3688_p2;
wire   [1:0] lshr_ln75_14_fu_3694_p4;
wire   [7:0] add_ln75_10_fu_3712_p2;
wire   [1:0] lshr_ln75_15_fu_3718_p4;
wire   [7:0] add_ln75_11_fu_3736_p2;
wire   [1:0] lshr_ln75_16_fu_3742_p4;
wire   [7:0] empty_1268_fu_3760_p2;
wire   [1:0] lshr_ln75_17_fu_3766_p4;
wire   [7:0] add_ln75_12_fu_3784_p2;
wire   [1:0] lshr_ln75_18_fu_3790_p4;
wire   [7:0] add_ln75_13_fu_3808_p2;
wire   [1:0] lshr_ln75_19_fu_3814_p4;
wire   [7:0] empty_1269_fu_3832_p2;
wire   [1:0] lshr_ln75_20_fu_3838_p4;
wire   [7:0] add_ln75_14_fu_3856_p2;
wire   [1:0] lshr_ln75_21_fu_3862_p4;
wire   [7:0] add_ln75_15_fu_3880_p2;
wire   [1:0] lshr_ln75_22_fu_3886_p4;
wire   [7:0] empty_1270_fu_3904_p2;
wire   [1:0] lshr_ln75_23_fu_3910_p4;
wire   [7:0] add_ln75_16_fu_3928_p2;
wire   [1:0] lshr_ln75_24_fu_3934_p4;
wire   [7:0] add_ln75_17_fu_3952_p2;
wire   [1:0] lshr_ln75_25_fu_3958_p4;
wire   [7:0] empty_1271_fu_3976_p2;
wire   [1:0] lshr_ln75_26_fu_3982_p4;
wire   [7:0] add_ln75_18_fu_4000_p2;
wire   [1:0] lshr_ln75_27_fu_4006_p4;
wire   [7:0] add_ln75_19_fu_4024_p2;
wire   [1:0] lshr_ln75_28_fu_4030_p4;
wire   [7:0] empty_1272_fu_4048_p2;
wire   [1:0] lshr_ln75_29_fu_4054_p4;
wire   [7:0] add_ln75_20_fu_4072_p2;
wire   [1:0] lshr_ln75_30_fu_4078_p4;
wire   [7:0] add_ln75_21_fu_4096_p2;
wire   [1:0] lshr_ln75_31_fu_4102_p4;
wire   [7:0] empty_1273_fu_4120_p2;
wire   [1:0] lshr_ln75_32_fu_4126_p4;
wire   [7:0] add_ln75_22_fu_4144_p2;
wire   [1:0] lshr_ln75_33_fu_4150_p4;
wire   [7:0] add_ln75_23_fu_4168_p2;
wire   [1:0] lshr_ln75_34_fu_4174_p4;
wire   [7:0] empty_1274_fu_4192_p2;
wire   [1:0] lshr_ln75_35_fu_4198_p4;
wire   [7:0] add_ln75_24_fu_4216_p2;
wire   [1:0] lshr_ln75_36_fu_4222_p4;
wire   [7:0] add_ln75_25_fu_4240_p2;
wire   [1:0] lshr_ln75_37_fu_4246_p4;
wire   [7:0] empty_1275_fu_4264_p2;
wire   [1:0] lshr_ln75_38_fu_4270_p4;
wire   [7:0] add_ln75_26_fu_4288_p2;
wire   [1:0] lshr_ln75_39_fu_4294_p4;
wire   [7:0] add_ln75_27_fu_4312_p2;
wire   [1:0] lshr_ln75_40_fu_4318_p4;
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
wire   [5:0] tmp_fu_2868_p1;
wire   [5:0] tmp_fu_2868_p3;
wire  signed [5:0] tmp_fu_2868_p5;
wire  signed [5:0] tmp_fu_2868_p7;
wire   [5:0] tmp_s_fu_2936_p1;
wire   [5:0] tmp_s_fu_2936_p3;
wire  signed [5:0] tmp_s_fu_2936_p5;
wire  signed [5:0] tmp_s_fu_2936_p7;
wire   [5:0] tmp_375_fu_2960_p1;
wire   [5:0] tmp_375_fu_2960_p3;
wire  signed [5:0] tmp_375_fu_2960_p5;
wire  signed [5:0] tmp_375_fu_2960_p7;
wire   [5:0] tmp_376_fu_2984_p1;
wire   [5:0] tmp_376_fu_2984_p3;
wire  signed [5:0] tmp_376_fu_2984_p5;
wire  signed [5:0] tmp_376_fu_2984_p7;
wire   [5:0] tmp_377_fu_3008_p1;
wire   [5:0] tmp_377_fu_3008_p3;
wire  signed [5:0] tmp_377_fu_3008_p5;
wire  signed [5:0] tmp_377_fu_3008_p7;
wire   [5:0] tmp_378_fu_3032_p1;
wire   [5:0] tmp_378_fu_3032_p3;
wire  signed [5:0] tmp_378_fu_3032_p5;
wire  signed [5:0] tmp_378_fu_3032_p7;
wire   [5:0] tmp_379_fu_3056_p1;
wire   [5:0] tmp_379_fu_3056_p3;
wire  signed [5:0] tmp_379_fu_3056_p5;
wire  signed [5:0] tmp_379_fu_3056_p7;
wire   [5:0] tmp_380_fu_3080_p1;
wire   [5:0] tmp_380_fu_3080_p3;
wire  signed [5:0] tmp_380_fu_3080_p5;
wire  signed [5:0] tmp_380_fu_3080_p7;
wire   [5:0] tmp_381_fu_3104_p1;
wire   [5:0] tmp_381_fu_3104_p3;
wire  signed [5:0] tmp_381_fu_3104_p5;
wire  signed [5:0] tmp_381_fu_3104_p7;
wire   [5:0] tmp_382_fu_3128_p1;
wire   [5:0] tmp_382_fu_3128_p3;
wire  signed [5:0] tmp_382_fu_3128_p5;
wire  signed [5:0] tmp_382_fu_3128_p7;
wire   [5:0] tmp_383_fu_3152_p1;
wire   [5:0] tmp_383_fu_3152_p3;
wire  signed [5:0] tmp_383_fu_3152_p5;
wire  signed [5:0] tmp_383_fu_3152_p7;
wire   [5:0] tmp_384_fu_3176_p1;
wire   [5:0] tmp_384_fu_3176_p3;
wire  signed [5:0] tmp_384_fu_3176_p5;
wire  signed [5:0] tmp_384_fu_3176_p7;
wire   [5:0] tmp_385_fu_3200_p1;
wire   [5:0] tmp_385_fu_3200_p3;
wire  signed [5:0] tmp_385_fu_3200_p5;
wire  signed [5:0] tmp_385_fu_3200_p7;
wire   [5:0] tmp_386_fu_3224_p1;
wire   [5:0] tmp_386_fu_3224_p3;
wire  signed [5:0] tmp_386_fu_3224_p5;
wire  signed [5:0] tmp_386_fu_3224_p7;
wire   [5:0] tmp_387_fu_3248_p1;
wire   [5:0] tmp_387_fu_3248_p3;
wire  signed [5:0] tmp_387_fu_3248_p5;
wire  signed [5:0] tmp_387_fu_3248_p7;
wire   [5:0] tmp_388_fu_3272_p1;
wire   [5:0] tmp_388_fu_3272_p3;
wire  signed [5:0] tmp_388_fu_3272_p5;
wire  signed [5:0] tmp_388_fu_3272_p7;
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
#0 i_fu_390 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2556(.din0(last_activations_0_val),.din1(last_activations_16_val),.din2(last_activations_32_val),.din3(last_activations_48_val),.def(tmp_fu_2868_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_fu_2868_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2557(.din0(last_activations_1_val),.din1(last_activations_17_val),.din2(last_activations_33_val),.din3(last_activations_49_val),.def(tmp_s_fu_2936_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_s_fu_2936_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2558(.din0(last_activations_2_val),.din1(last_activations_18_val),.din2(last_activations_34_val),.din3(last_activations_50_val),.def(tmp_375_fu_2960_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_375_fu_2960_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2559(.din0(last_activations_3_val),.din1(last_activations_19_val),.din2(last_activations_35_val),.din3(last_activations_51_val),.def(tmp_376_fu_2984_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_376_fu_2984_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2560(.din0(last_activations_4_val),.din1(last_activations_20_val),.din2(last_activations_36_val),.din3(last_activations_52_val),.def(tmp_377_fu_3008_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_377_fu_3008_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2561(.din0(last_activations_5_val),.din1(last_activations_21_val),.din2(last_activations_37_val),.din3(last_activations_53_val),.def(tmp_378_fu_3032_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_378_fu_3032_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2562(.din0(last_activations_6_val),.din1(last_activations_22_val),.din2(last_activations_38_val),.din3(last_activations_54_val),.def(tmp_379_fu_3056_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_379_fu_3056_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2563(.din0(last_activations_7_val),.din1(last_activations_23_val),.din2(last_activations_39_val),.din3(last_activations_55_val),.def(tmp_380_fu_3080_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_380_fu_3080_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2564(.din0(last_activations_8_val),.din1(last_activations_24_val),.din2(last_activations_40_val),.din3(last_activations_56_val),.def(tmp_381_fu_3104_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_381_fu_3104_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2565(.din0(last_activations_9_val),.din1(last_activations_25_val),.din2(last_activations_41_val),.din3(last_activations_57_val),.def(tmp_382_fu_3128_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_382_fu_3128_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2566(.din0(last_activations_10_val),.din1(last_activations_26_val),.din2(last_activations_42_val),.din3(last_activations_58_val),.def(tmp_383_fu_3152_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_383_fu_3152_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2567(.din0(last_activations_11_val),.din1(last_activations_27_val),.din2(last_activations_43_val),.din3(last_activations_59_val),.def(tmp_384_fu_3176_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_384_fu_3176_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2568(.din0(last_activations_12_val),.din1(last_activations_28_val),.din2(last_activations_44_val),.din3(last_activations_60_val),.def(tmp_385_fu_3200_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_385_fu_3200_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2569(.din0(last_activations_13_val),.din1(last_activations_29_val),.din2(last_activations_45_val),.din3(last_activations_61_val),.def(tmp_386_fu_3224_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_386_fu_3224_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2570(.din0(last_activations_14_val),.din1(last_activations_30_val),.din2(last_activations_46_val),.din3(last_activations_62_val),.def(tmp_387_fu_3248_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_387_fu_3248_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h10 ),.din1_WIDTH( 64 ),.CASE2( 6'h20 ),.din2_WIDTH( 64 ),.CASE3( 6'h30 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_9_6_64_1_1_U2571(.din0(last_activations_15_val),.din1(last_activations_31_val),.din2(last_activations_47_val),.din3(last_activations_63_val),.def(tmp_388_fu_3272_p9),.sel(trunc_ln73_fu_2864_p1),.dout(tmp_388_fu_3272_p11));
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
        if (((tmp_442_fu_2852_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_390 <= add_ln73_fu_3296_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_390 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_4418 <= {{sub_ln75_fu_2900_p2[7:6]}};
        lshr_ln_reg_4418_pp0_iter1_reg <= lshr_ln_reg_4418;
        tmp_27_reg_4423 <= {{sub_ln75_fu_2900_p2[7:2]}};
        tmp_27_reg_4423_pp0_iter1_reg <= tmp_27_reg_4423;
        tmp_29_reg_4428 <= {{sub_ln75_fu_2900_p2[7:4]}};
        tmp_29_reg_4428_pp0_iter1_reg <= tmp_29_reg_4428;
        tmp_375_reg_4440 <= tmp_375_fu_2960_p11;
        tmp_376_reg_4447 <= tmp_376_fu_2984_p11;
        tmp_377_reg_4454 <= tmp_377_fu_3008_p11;
        tmp_378_reg_4461 <= tmp_378_fu_3032_p11;
        tmp_379_reg_4468 <= tmp_379_fu_3056_p11;
        tmp_380_reg_4475 <= tmp_380_fu_3080_p11;
        tmp_381_reg_4482 <= tmp_381_fu_3104_p11;
        tmp_382_reg_4489 <= tmp_382_fu_3128_p11;
        tmp_383_reg_4496 <= tmp_383_fu_3152_p11;
        tmp_384_reg_4503 <= tmp_384_fu_3176_p11;
        tmp_385_reg_4510 <= tmp_385_fu_3200_p11;
        tmp_386_reg_4517 <= tmp_386_fu_3224_p11;
        tmp_387_reg_4524 <= tmp_387_fu_3248_p11;
        tmp_388_reg_4531 <= tmp_388_fu_3272_p11;
        tmp_reg_4411 <= tmp_fu_2868_p11;
        tmp_s_reg_4433 <= tmp_s_fu_2936_p11;
        trunc_ln73_reg_4407 <= trunc_ln73_fu_2864_p1;
        trunc_ln73_reg_4407_pp0_iter1_reg <= trunc_ln73_reg_4407;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_predicate_pred1222_state9 <= (trunc_ln73_reg_4407_pp0_iter6_reg == 6'd32);
        ap_predicate_pred1231_state9 <= (trunc_ln73_reg_4407_pp0_iter6_reg == 6'd0);
        ap_predicate_pred1239_state9 <= (trunc_ln73_reg_4407_pp0_iter6_reg == 6'd16);
        ap_predicate_pred1243_state9 <= (~(trunc_ln73_reg_4407_pp0_iter6_reg == 6'd16) & ~(trunc_ln73_reg_4407_pp0_iter6_reg == 6'd0) & ~(trunc_ln73_reg_4407_pp0_iter6_reg == 6'd32));
        lshr_ln_reg_4418_pp0_iter2_reg <= lshr_ln_reg_4418_pp0_iter1_reg;
        lshr_ln_reg_4418_pp0_iter3_reg <= lshr_ln_reg_4418_pp0_iter2_reg;
        lshr_ln_reg_4418_pp0_iter4_reg <= lshr_ln_reg_4418_pp0_iter3_reg;
        lshr_ln_reg_4418_pp0_iter5_reg <= lshr_ln_reg_4418_pp0_iter4_reg;
        lshr_ln_reg_4418_pp0_iter6_reg <= lshr_ln_reg_4418_pp0_iter5_reg;
        lshr_ln_reg_4418_pp0_iter7_reg <= lshr_ln_reg_4418_pp0_iter6_reg;
        mul_10_1_reg_4786 <= grp_fu_18723_p_dout0;
        mul_10_2_reg_4794 <= grp_fu_18727_p_dout0;
        mul_10_reg_4778 <= grp_fu_18719_p_dout0;
        mul_11_1_reg_4810 <= grp_fu_18735_p_dout0;
        mul_11_2_reg_4818 <= grp_fu_18739_p_dout0;
        mul_11_reg_4802 <= grp_fu_18731_p_dout0;
        mul_12_1_reg_4834 <= grp_fu_18747_p_dout0;
        mul_12_2_reg_4842 <= grp_fu_18751_p_dout0;
        mul_12_reg_4826 <= grp_fu_18743_p_dout0;
        mul_13_1_reg_4858 <= grp_fu_18759_p_dout0;
        mul_13_2_reg_4866 <= grp_fu_18763_p_dout0;
        mul_13_reg_4850 <= grp_fu_18755_p_dout0;
        mul_14_1_reg_4882 <= grp_fu_18771_p_dout0;
        mul_14_2_reg_4890 <= grp_fu_18775_p_dout0;
        mul_14_reg_4874 <= grp_fu_18767_p_dout0;
        mul_15_1_reg_4906 <= grp_fu_18783_p_dout0;
        mul_15_2_reg_4914 <= grp_fu_18787_p_dout0;
        mul_15_reg_4898 <= grp_fu_18779_p_dout0;
        mul_16_reg_4554 <= grp_fu_18607_p_dout0;
        mul_1_1_reg_4570 <= grp_fu_18615_p_dout0;
        mul_1_2_reg_4578 <= grp_fu_18619_p_dout0;
        mul_1_reg_4562 <= grp_fu_18611_p_dout0;
        mul_2_1_reg_4594 <= grp_fu_18627_p_dout0;
        mul_2_2_reg_4602 <= grp_fu_18631_p_dout0;
        mul_2_reg_4586 <= grp_fu_18623_p_dout0;
        mul_3_1_reg_4618 <= grp_fu_18639_p_dout0;
        mul_3_2_reg_4626 <= grp_fu_18643_p_dout0;
        mul_3_reg_4610 <= grp_fu_18635_p_dout0;
        mul_4_1_reg_4642 <= grp_fu_18651_p_dout0;
        mul_4_2_reg_4650 <= grp_fu_18655_p_dout0;
        mul_4_reg_4634 <= grp_fu_18647_p_dout0;
        mul_5_1_reg_4666 <= grp_fu_18663_p_dout0;
        mul_5_2_reg_4674 <= grp_fu_18667_p_dout0;
        mul_5_reg_4658 <= grp_fu_18659_p_dout0;
        mul_6_1_reg_4690 <= grp_fu_18675_p_dout0;
        mul_6_2_reg_4698 <= grp_fu_18679_p_dout0;
        mul_6_reg_4682 <= grp_fu_18671_p_dout0;
        mul_7_1_reg_4714 <= grp_fu_18687_p_dout0;
        mul_7_2_reg_4722 <= grp_fu_18691_p_dout0;
        mul_7_reg_4706 <= grp_fu_18683_p_dout0;
        mul_8_1_reg_4738 <= grp_fu_18699_p_dout0;
        mul_8_2_reg_4746 <= grp_fu_18703_p_dout0;
        mul_8_reg_4730 <= grp_fu_18695_p_dout0;
        mul_9_1_reg_4762 <= grp_fu_18711_p_dout0;
        mul_9_2_reg_4770 <= grp_fu_18715_p_dout0;
        mul_9_reg_4754 <= grp_fu_18707_p_dout0;
        mul_reg_4538 <= grp_fu_18599_p_dout0;
        mul_s_reg_4546 <= grp_fu_18603_p_dout0;
        tmp_27_reg_4423_pp0_iter2_reg <= tmp_27_reg_4423_pp0_iter1_reg;
        tmp_27_reg_4423_pp0_iter3_reg <= tmp_27_reg_4423_pp0_iter2_reg;
        tmp_27_reg_4423_pp0_iter4_reg <= tmp_27_reg_4423_pp0_iter3_reg;
        tmp_27_reg_4423_pp0_iter5_reg <= tmp_27_reg_4423_pp0_iter4_reg;
        tmp_27_reg_4423_pp0_iter6_reg <= tmp_27_reg_4423_pp0_iter5_reg;
        tmp_27_reg_4423_pp0_iter7_reg <= tmp_27_reg_4423_pp0_iter6_reg;
        tmp_29_reg_4428_pp0_iter2_reg <= tmp_29_reg_4428_pp0_iter1_reg;
        tmp_29_reg_4428_pp0_iter3_reg <= tmp_29_reg_4428_pp0_iter2_reg;
        tmp_29_reg_4428_pp0_iter4_reg <= tmp_29_reg_4428_pp0_iter3_reg;
        tmp_29_reg_4428_pp0_iter5_reg <= tmp_29_reg_4428_pp0_iter4_reg;
        tmp_29_reg_4428_pp0_iter6_reg <= tmp_29_reg_4428_pp0_iter5_reg;
        tmp_29_reg_4428_pp0_iter7_reg <= tmp_29_reg_4428_pp0_iter6_reg;
        trunc_ln73_reg_4407_pp0_iter2_reg <= trunc_ln73_reg_4407_pp0_iter1_reg;
        trunc_ln73_reg_4407_pp0_iter3_reg <= trunc_ln73_reg_4407_pp0_iter2_reg;
        trunc_ln73_reg_4407_pp0_iter4_reg <= trunc_ln73_reg_4407_pp0_iter3_reg;
        trunc_ln73_reg_4407_pp0_iter5_reg <= trunc_ln73_reg_4407_pp0_iter4_reg;
        trunc_ln73_reg_4407_pp0_iter6_reg <= trunc_ln73_reg_4407_pp0_iter5_reg;
    end
end
always @ (*) begin
    if (((tmp_442_fu_2852_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_390;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_11_fu_3584_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_27_fu_3968_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_reg_4538;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_5_1_reg_4666;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_10_2_reg_4794;
        end else begin
            delta_weights3_0_d0_local = 'bx;
        end
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_7_fu_3481_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_21_fu_3824_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_37_fu_4208_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_3_1_reg_4618;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_8_2_reg_4746;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_14_reg_4874;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_22_fu_3848_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_38_fu_4232_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_3_2_reg_4626;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_9_reg_4754;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_14_1_reg_4882;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_8_fu_3505_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_23_fu_3872_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_39_fu_4256_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_4_reg_4634;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_9_1_reg_4762;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_14_2_reg_4890;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_9_fu_3529_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_24_fu_3896_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_40_fu_4280_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_4_1_reg_4642;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_9_2_reg_4770;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_15_reg_4898;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_10_fu_3553_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_25_fu_3920_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_41_fu_4304_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_4_2_reg_4650;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_10_reg_4778;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_15_1_reg_4906;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_26_fu_3944_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_42_fu_4328_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_5_reg_4658;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_10_1_reg_4786;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_15_2_reg_4914;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_11_fu_3584_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_27_fu_3968_p1;
        end else begin
            delta_weights3_16_address0_local = 'bx;
        end
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_reg_4538;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_5_1_reg_4666;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_10_2_reg_4794;
        end else begin
            delta_weights3_16_d0_local = 'bx;
        end
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_12_fu_3608_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_28_fu_3992_p1;
        end else begin
            delta_weights3_17_address0_local = 'bx;
        end
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_s_reg_4546;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_5_2_reg_4674;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_11_reg_4802;
        end else begin
            delta_weights3_17_d0_local = 'bx;
        end
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_13_fu_3632_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_29_fu_4016_p1;
        end else begin
            delta_weights3_18_address0_local = 'bx;
        end
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_16_reg_4554;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_6_reg_4682;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_11_1_reg_4810;
        end else begin
            delta_weights3_18_d0_local = 'bx;
        end
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_14_fu_3656_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_30_fu_4040_p1;
        end else begin
            delta_weights3_19_address0_local = 'bx;
        end
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_1_reg_4562;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_6_1_reg_4690;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_11_2_reg_4818;
        end else begin
            delta_weights3_19_d0_local = 'bx;
        end
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_12_fu_3608_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_28_fu_3992_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_s_reg_4546;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_5_2_reg_4674;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_11_reg_4802;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_2_fu_3361_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_15_fu_3680_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_31_fu_4064_p1;
        end else begin
            delta_weights3_20_address0_local = 'bx;
        end
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_1_1_reg_4570;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_6_2_reg_4698;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_12_reg_4826;
        end else begin
            delta_weights3_20_d0_local = 'bx;
        end
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_3_fu_3385_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_16_fu_3704_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_32_fu_4088_p1;
        end else begin
            delta_weights3_21_address0_local = 'bx;
        end
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_1_2_reg_4578;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_7_reg_4706;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_12_1_reg_4834;
        end else begin
            delta_weights3_21_d0_local = 'bx;
        end
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_4_fu_3409_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_17_fu_3728_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_33_fu_4112_p1;
        end else begin
            delta_weights3_22_address0_local = 'bx;
        end
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_2_reg_4586;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_7_1_reg_4714;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_12_2_reg_4842;
        end else begin
            delta_weights3_22_d0_local = 'bx;
        end
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_18_fu_3752_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_34_fu_4136_p1;
        end else begin
            delta_weights3_23_address0_local = 'bx;
        end
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_2_1_reg_4594;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_7_2_reg_4722;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_13_reg_4850;
        end else begin
            delta_weights3_23_d0_local = 'bx;
        end
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_5_fu_3433_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_19_fu_3776_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_35_fu_4160_p1;
        end else begin
            delta_weights3_24_address0_local = 'bx;
        end
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_2_2_reg_4602;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_8_reg_4730;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_13_1_reg_4858;
        end else begin
            delta_weights3_24_d0_local = 'bx;
        end
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_6_fu_3457_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_20_fu_3800_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_36_fu_4184_p1;
        end else begin
            delta_weights3_25_address0_local = 'bx;
        end
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_3_reg_4610;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_8_1_reg_4738;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_13_2_reg_4866;
        end else begin
            delta_weights3_25_d0_local = 'bx;
        end
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_7_fu_3481_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_21_fu_3824_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_37_fu_4208_p1;
        end else begin
            delta_weights3_26_address0_local = 'bx;
        end
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_3_1_reg_4618;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_8_2_reg_4746;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_14_reg_4874;
        end else begin
            delta_weights3_26_d0_local = 'bx;
        end
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_22_fu_3848_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_38_fu_4232_p1;
        end else begin
            delta_weights3_27_address0_local = 'bx;
        end
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_3_2_reg_4626;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_9_reg_4754;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_14_1_reg_4882;
        end else begin
            delta_weights3_27_d0_local = 'bx;
        end
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_8_fu_3505_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_23_fu_3872_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_39_fu_4256_p1;
        end else begin
            delta_weights3_28_address0_local = 'bx;
        end
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_4_reg_4634;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_9_1_reg_4762;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_14_2_reg_4890;
        end else begin
            delta_weights3_28_d0_local = 'bx;
        end
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_9_fu_3529_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_24_fu_3896_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_40_fu_4280_p1;
        end else begin
            delta_weights3_29_address0_local = 'bx;
        end
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_4_1_reg_4642;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_9_2_reg_4770;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_15_reg_4898;
        end else begin
            delta_weights3_29_d0_local = 'bx;
        end
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_13_fu_3632_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_29_fu_4016_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_16_reg_4554;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_6_reg_4682;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_11_1_reg_4810;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_10_fu_3553_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_25_fu_3920_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_41_fu_4304_p1;
        end else begin
            delta_weights3_30_address0_local = 'bx;
        end
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_4_2_reg_4650;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_10_reg_4778;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_15_1_reg_4906;
        end else begin
            delta_weights3_30_d0_local = 'bx;
        end
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_26_fu_3944_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_42_fu_4328_p1;
        end else begin
            delta_weights3_31_address0_local = 'bx;
        end
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_5_reg_4658;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_10_1_reg_4786;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_15_2_reg_4914;
        end else begin
            delta_weights3_31_d0_local = 'bx;
        end
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_11_fu_3584_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_27_fu_3968_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_32_address0_local = 'bx;
        end
    end else begin
        delta_weights3_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_32_ce0_local = 1'b1;
    end else begin
        delta_weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_5_1_reg_4666;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_10_2_reg_4794;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_reg_4538;
        end else begin
            delta_weights3_32_d0_local = 'bx;
        end
    end else begin
        delta_weights3_32_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_32_we0_local = 1'b1;
    end else begin
        delta_weights3_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_12_fu_3608_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_28_fu_3992_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_33_address0_local = 'bx;
        end
    end else begin
        delta_weights3_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_33_ce0_local = 1'b1;
    end else begin
        delta_weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_5_2_reg_4674;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_11_reg_4802;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_s_reg_4546;
        end else begin
            delta_weights3_33_d0_local = 'bx;
        end
    end else begin
        delta_weights3_33_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_33_we0_local = 1'b1;
    end else begin
        delta_weights3_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_13_fu_3632_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_29_fu_4016_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_34_address0_local = 'bx;
        end
    end else begin
        delta_weights3_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_34_ce0_local = 1'b1;
    end else begin
        delta_weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_6_reg_4682;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_11_1_reg_4810;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_16_reg_4554;
        end else begin
            delta_weights3_34_d0_local = 'bx;
        end
    end else begin
        delta_weights3_34_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_34_we0_local = 1'b1;
    end else begin
        delta_weights3_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_14_fu_3656_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_30_fu_4040_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_35_address0_local = 'bx;
        end
    end else begin
        delta_weights3_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_35_ce0_local = 1'b1;
    end else begin
        delta_weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_6_1_reg_4690;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_11_2_reg_4818;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_1_reg_4562;
        end else begin
            delta_weights3_35_d0_local = 'bx;
        end
    end else begin
        delta_weights3_35_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_35_we0_local = 1'b1;
    end else begin
        delta_weights3_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_15_fu_3680_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_31_fu_4064_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_2_fu_3361_p1;
        end else begin
            delta_weights3_36_address0_local = 'bx;
        end
    end else begin
        delta_weights3_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_36_ce0_local = 1'b1;
    end else begin
        delta_weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_6_2_reg_4698;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_12_reg_4826;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_1_1_reg_4570;
        end else begin
            delta_weights3_36_d0_local = 'bx;
        end
    end else begin
        delta_weights3_36_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_36_we0_local = 1'b1;
    end else begin
        delta_weights3_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_16_fu_3704_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_32_fu_4088_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_3_fu_3385_p1;
        end else begin
            delta_weights3_37_address0_local = 'bx;
        end
    end else begin
        delta_weights3_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_37_ce0_local = 1'b1;
    end else begin
        delta_weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_7_reg_4706;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_12_1_reg_4834;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_1_2_reg_4578;
        end else begin
            delta_weights3_37_d0_local = 'bx;
        end
    end else begin
        delta_weights3_37_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_37_we0_local = 1'b1;
    end else begin
        delta_weights3_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_17_fu_3728_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_33_fu_4112_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_4_fu_3409_p1;
        end else begin
            delta_weights3_38_address0_local = 'bx;
        end
    end else begin
        delta_weights3_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_38_ce0_local = 1'b1;
    end else begin
        delta_weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_7_1_reg_4714;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_12_2_reg_4842;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_2_reg_4586;
        end else begin
            delta_weights3_38_d0_local = 'bx;
        end
    end else begin
        delta_weights3_38_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_38_we0_local = 1'b1;
    end else begin
        delta_weights3_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_18_fu_3752_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_34_fu_4136_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_39_address0_local = 'bx;
        end
    end else begin
        delta_weights3_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_39_ce0_local = 1'b1;
    end else begin
        delta_weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_7_2_reg_4722;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_13_reg_4850;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_2_1_reg_4594;
        end else begin
            delta_weights3_39_d0_local = 'bx;
        end
    end else begin
        delta_weights3_39_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_39_we0_local = 1'b1;
    end else begin
        delta_weights3_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_14_fu_3656_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_30_fu_4040_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_1_reg_4562;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_6_1_reg_4690;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_11_2_reg_4818;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_19_fu_3776_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_35_fu_4160_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_5_fu_3433_p1;
        end else begin
            delta_weights3_40_address0_local = 'bx;
        end
    end else begin
        delta_weights3_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_40_ce0_local = 1'b1;
    end else begin
        delta_weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_8_reg_4730;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_13_1_reg_4858;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_2_2_reg_4602;
        end else begin
            delta_weights3_40_d0_local = 'bx;
        end
    end else begin
        delta_weights3_40_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_40_we0_local = 1'b1;
    end else begin
        delta_weights3_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_20_fu_3800_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_36_fu_4184_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_6_fu_3457_p1;
        end else begin
            delta_weights3_41_address0_local = 'bx;
        end
    end else begin
        delta_weights3_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_41_ce0_local = 1'b1;
    end else begin
        delta_weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_8_1_reg_4738;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_13_2_reg_4866;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_3_reg_4610;
        end else begin
            delta_weights3_41_d0_local = 'bx;
        end
    end else begin
        delta_weights3_41_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_41_we0_local = 1'b1;
    end else begin
        delta_weights3_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_21_fu_3824_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_37_fu_4208_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_7_fu_3481_p1;
        end else begin
            delta_weights3_42_address0_local = 'bx;
        end
    end else begin
        delta_weights3_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_42_ce0_local = 1'b1;
    end else begin
        delta_weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_8_2_reg_4746;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_14_reg_4874;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_3_1_reg_4618;
        end else begin
            delta_weights3_42_d0_local = 'bx;
        end
    end else begin
        delta_weights3_42_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_42_we0_local = 1'b1;
    end else begin
        delta_weights3_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_22_fu_3848_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_38_fu_4232_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_43_address0_local = 'bx;
        end
    end else begin
        delta_weights3_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_43_ce0_local = 1'b1;
    end else begin
        delta_weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_9_reg_4754;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_14_1_reg_4882;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_3_2_reg_4626;
        end else begin
            delta_weights3_43_d0_local = 'bx;
        end
    end else begin
        delta_weights3_43_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_43_we0_local = 1'b1;
    end else begin
        delta_weights3_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_23_fu_3872_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_39_fu_4256_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_8_fu_3505_p1;
        end else begin
            delta_weights3_44_address0_local = 'bx;
        end
    end else begin
        delta_weights3_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_44_ce0_local = 1'b1;
    end else begin
        delta_weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_9_1_reg_4762;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_14_2_reg_4890;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_4_reg_4634;
        end else begin
            delta_weights3_44_d0_local = 'bx;
        end
    end else begin
        delta_weights3_44_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_44_we0_local = 1'b1;
    end else begin
        delta_weights3_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_24_fu_3896_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_40_fu_4280_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_9_fu_3529_p1;
        end else begin
            delta_weights3_45_address0_local = 'bx;
        end
    end else begin
        delta_weights3_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_45_ce0_local = 1'b1;
    end else begin
        delta_weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_9_2_reg_4770;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_15_reg_4898;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_4_1_reg_4642;
        end else begin
            delta_weights3_45_d0_local = 'bx;
        end
    end else begin
        delta_weights3_45_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_45_we0_local = 1'b1;
    end else begin
        delta_weights3_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_25_fu_3920_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_41_fu_4304_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_10_fu_3553_p1;
        end else begin
            delta_weights3_46_address0_local = 'bx;
        end
    end else begin
        delta_weights3_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_46_ce0_local = 1'b1;
    end else begin
        delta_weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_10_reg_4778;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_15_1_reg_4906;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_4_2_reg_4650;
        end else begin
            delta_weights3_46_d0_local = 'bx;
        end
    end else begin
        delta_weights3_46_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_46_we0_local = 1'b1;
    end else begin
        delta_weights3_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_26_fu_3944_p1;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_42_fu_4328_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_1_fu_3307_p1;
        end else begin
            delta_weights3_47_address0_local = 'bx;
        end
    end else begin
        delta_weights3_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_47_ce0_local = 1'b1;
    end else begin
        delta_weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_10_1_reg_4786;
        end else if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_15_2_reg_4914;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_5_reg_4658;
        end else begin
            delta_weights3_47_d0_local = 'bx;
        end
    end else begin
        delta_weights3_47_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_47_we0_local = 1'b1;
    end else begin
        delta_weights3_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_27_fu_3968_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_11_fu_3584_p1;
        end else begin
            delta_weights3_48_address0_local = 'bx;
        end
    end else begin
        delta_weights3_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_48_ce0_local = 1'b1;
    end else begin
        delta_weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_10_2_reg_4794;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_reg_4538;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_5_1_reg_4666;
        end else begin
            delta_weights3_48_d0_local = 'bx;
        end
    end else begin
        delta_weights3_48_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_48_we0_local = 1'b1;
    end else begin
        delta_weights3_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_28_fu_3992_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_12_fu_3608_p1;
        end else begin
            delta_weights3_49_address0_local = 'bx;
        end
    end else begin
        delta_weights3_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_49_ce0_local = 1'b1;
    end else begin
        delta_weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_11_reg_4802;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_s_reg_4546;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_5_2_reg_4674;
        end else begin
            delta_weights3_49_d0_local = 'bx;
        end
    end else begin
        delta_weights3_49_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_49_we0_local = 1'b1;
    end else begin
        delta_weights3_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_3361_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_15_fu_3680_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_31_fu_4064_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_1_1_reg_4570;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_6_2_reg_4698;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_12_reg_4826;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_29_fu_4016_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_13_fu_3632_p1;
        end else begin
            delta_weights3_50_address0_local = 'bx;
        end
    end else begin
        delta_weights3_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_50_ce0_local = 1'b1;
    end else begin
        delta_weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_11_1_reg_4810;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_16_reg_4554;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_6_reg_4682;
        end else begin
            delta_weights3_50_d0_local = 'bx;
        end
    end else begin
        delta_weights3_50_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_50_we0_local = 1'b1;
    end else begin
        delta_weights3_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_30_fu_4040_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_14_fu_3656_p1;
        end else begin
            delta_weights3_51_address0_local = 'bx;
        end
    end else begin
        delta_weights3_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_51_ce0_local = 1'b1;
    end else begin
        delta_weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_11_2_reg_4818;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_1_reg_4562;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_6_1_reg_4690;
        end else begin
            delta_weights3_51_d0_local = 'bx;
        end
    end else begin
        delta_weights3_51_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_51_we0_local = 1'b1;
    end else begin
        delta_weights3_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_31_fu_4064_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_2_fu_3361_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_15_fu_3680_p1;
        end else begin
            delta_weights3_52_address0_local = 'bx;
        end
    end else begin
        delta_weights3_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_52_ce0_local = 1'b1;
    end else begin
        delta_weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_12_reg_4826;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_1_1_reg_4570;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_6_2_reg_4698;
        end else begin
            delta_weights3_52_d0_local = 'bx;
        end
    end else begin
        delta_weights3_52_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_52_we0_local = 1'b1;
    end else begin
        delta_weights3_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_32_fu_4088_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_3_fu_3385_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_16_fu_3704_p1;
        end else begin
            delta_weights3_53_address0_local = 'bx;
        end
    end else begin
        delta_weights3_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_53_ce0_local = 1'b1;
    end else begin
        delta_weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_12_1_reg_4834;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_1_2_reg_4578;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_7_reg_4706;
        end else begin
            delta_weights3_53_d0_local = 'bx;
        end
    end else begin
        delta_weights3_53_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_53_we0_local = 1'b1;
    end else begin
        delta_weights3_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_33_fu_4112_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_4_fu_3409_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_17_fu_3728_p1;
        end else begin
            delta_weights3_54_address0_local = 'bx;
        end
    end else begin
        delta_weights3_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_54_ce0_local = 1'b1;
    end else begin
        delta_weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_12_2_reg_4842;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_2_reg_4586;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_7_1_reg_4714;
        end else begin
            delta_weights3_54_d0_local = 'bx;
        end
    end else begin
        delta_weights3_54_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_54_we0_local = 1'b1;
    end else begin
        delta_weights3_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_34_fu_4136_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_18_fu_3752_p1;
        end else begin
            delta_weights3_55_address0_local = 'bx;
        end
    end else begin
        delta_weights3_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_55_ce0_local = 1'b1;
    end else begin
        delta_weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_13_reg_4850;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_2_1_reg_4594;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_7_2_reg_4722;
        end else begin
            delta_weights3_55_d0_local = 'bx;
        end
    end else begin
        delta_weights3_55_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_55_we0_local = 1'b1;
    end else begin
        delta_weights3_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_35_fu_4160_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_5_fu_3433_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_19_fu_3776_p1;
        end else begin
            delta_weights3_56_address0_local = 'bx;
        end
    end else begin
        delta_weights3_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_56_ce0_local = 1'b1;
    end else begin
        delta_weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_13_1_reg_4858;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_2_2_reg_4602;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_8_reg_4730;
        end else begin
            delta_weights3_56_d0_local = 'bx;
        end
    end else begin
        delta_weights3_56_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_56_we0_local = 1'b1;
    end else begin
        delta_weights3_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_36_fu_4184_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_6_fu_3457_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_20_fu_3800_p1;
        end else begin
            delta_weights3_57_address0_local = 'bx;
        end
    end else begin
        delta_weights3_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_57_ce0_local = 1'b1;
    end else begin
        delta_weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_13_2_reg_4866;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_3_reg_4610;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_8_1_reg_4738;
        end else begin
            delta_weights3_57_d0_local = 'bx;
        end
    end else begin
        delta_weights3_57_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_57_we0_local = 1'b1;
    end else begin
        delta_weights3_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_37_fu_4208_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_7_fu_3481_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_21_fu_3824_p1;
        end else begin
            delta_weights3_58_address0_local = 'bx;
        end
    end else begin
        delta_weights3_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_58_ce0_local = 1'b1;
    end else begin
        delta_weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_14_reg_4874;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_3_1_reg_4618;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_8_2_reg_4746;
        end else begin
            delta_weights3_58_d0_local = 'bx;
        end
    end else begin
        delta_weights3_58_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_58_we0_local = 1'b1;
    end else begin
        delta_weights3_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_38_fu_4232_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_22_fu_3848_p1;
        end else begin
            delta_weights3_59_address0_local = 'bx;
        end
    end else begin
        delta_weights3_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_59_ce0_local = 1'b1;
    end else begin
        delta_weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_14_1_reg_4882;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_3_2_reg_4626;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_9_reg_4754;
        end else begin
            delta_weights3_59_d0_local = 'bx;
        end
    end else begin
        delta_weights3_59_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_59_we0_local = 1'b1;
    end else begin
        delta_weights3_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_3385_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_16_fu_3704_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_32_fu_4088_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_1_2_reg_4578;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_7_reg_4706;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_12_1_reg_4834;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_39_fu_4256_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_8_fu_3505_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_23_fu_3872_p1;
        end else begin
            delta_weights3_60_address0_local = 'bx;
        end
    end else begin
        delta_weights3_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_60_ce0_local = 1'b1;
    end else begin
        delta_weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_14_2_reg_4890;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_4_reg_4634;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_9_1_reg_4762;
        end else begin
            delta_weights3_60_d0_local = 'bx;
        end
    end else begin
        delta_weights3_60_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_60_we0_local = 1'b1;
    end else begin
        delta_weights3_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_40_fu_4280_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_9_fu_3529_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_24_fu_3896_p1;
        end else begin
            delta_weights3_61_address0_local = 'bx;
        end
    end else begin
        delta_weights3_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_61_ce0_local = 1'b1;
    end else begin
        delta_weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_15_reg_4898;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_4_1_reg_4642;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_9_2_reg_4770;
        end else begin
            delta_weights3_61_d0_local = 'bx;
        end
    end else begin
        delta_weights3_61_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_61_we0_local = 1'b1;
    end else begin
        delta_weights3_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_41_fu_4304_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_10_fu_3553_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_25_fu_3920_p1;
        end else begin
            delta_weights3_62_address0_local = 'bx;
        end
    end else begin
        delta_weights3_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_62_ce0_local = 1'b1;
    end else begin
        delta_weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_15_1_reg_4906;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_4_2_reg_4650;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_10_reg_4778;
        end else begin
            delta_weights3_62_d0_local = 'bx;
        end
    end else begin
        delta_weights3_62_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_62_we0_local = 1'b1;
    end else begin
        delta_weights3_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_42_fu_4328_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_26_fu_3944_p1;
        end else begin
            delta_weights3_63_address0_local = 'bx;
        end
    end else begin
        delta_weights3_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_63_ce0_local = 1'b1;
    end else begin
        delta_weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1243_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_15_2_reg_4914;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_5_reg_4658;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_10_1_reg_4786;
        end else begin
            delta_weights3_63_d0_local = 'bx;
        end
    end else begin
        delta_weights3_63_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1243_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_63_we0_local = 1'b1;
    end else begin
        delta_weights3_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_3409_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_17_fu_3728_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_33_fu_4112_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_2_reg_4586;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_7_1_reg_4714;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_12_2_reg_4842;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_3307_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_18_fu_3752_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_34_fu_4136_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_2_1_reg_4594;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_7_2_reg_4722;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_13_reg_4850;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_5_fu_3433_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_19_fu_3776_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_35_fu_4160_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_2_2_reg_4602;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_8_reg_4730;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_13_1_reg_4858;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_6_fu_3457_p1;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_20_fu_3800_p1;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_36_fu_4184_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1231_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_3_reg_4610;
        end else if ((ap_predicate_pred1239_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_8_1_reg_4738;
        end else if ((ap_predicate_pred1222_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_13_2_reg_4866;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1239_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1231_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1222_state9 == 1'b1)))) begin
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
assign add_ln73_fu_3296_p2 = (ap_sig_allocacmp_i_13 + 7'd16);
assign add_ln75_10_fu_3712_p2 = (tmp_30_fu_3561_p3 + 8'd7);
assign add_ln75_11_fu_3736_p2 = (tmp_30_fu_3561_p3 + 8'd8);
assign add_ln75_12_fu_3784_p2 = (tmp_30_fu_3561_p3 + 8'd10);
assign add_ln75_13_fu_3808_p2 = (tmp_30_fu_3561_p3 + 8'd11);
assign add_ln75_14_fu_3856_p2 = (tmp_30_fu_3561_p3 + 8'd13);
assign add_ln75_15_fu_3880_p2 = (tmp_30_fu_3561_p3 + 8'd14);
assign add_ln75_16_fu_3928_p2 = (tmp_30_fu_3561_p3 + 8'd16);
assign add_ln75_17_fu_3952_p2 = (tmp_30_fu_3561_p3 + 8'd17);
assign add_ln75_18_fu_4000_p2 = (tmp_30_fu_3561_p3 + 8'd19);
assign add_ln75_19_fu_4024_p2 = (tmp_30_fu_3561_p3 + 8'd20);
assign add_ln75_1_fu_3369_p2 = (tmp_28_fu_3338_p3 + 8'd2);
assign add_ln75_20_fu_4072_p2 = (tmp_30_fu_3561_p3 + 8'd22);
assign add_ln75_21_fu_4096_p2 = (tmp_30_fu_3561_p3 + 8'd23);
assign add_ln75_22_fu_4144_p2 = (tmp_30_fu_3561_p3 + 8'd25);
assign add_ln75_23_fu_4168_p2 = (tmp_30_fu_3561_p3 + 8'd26);
assign add_ln75_24_fu_4216_p2 = (tmp_30_fu_3561_p3 + 8'd28);
assign add_ln75_25_fu_4240_p2 = (tmp_30_fu_3561_p3 + 8'd29);
assign add_ln75_26_fu_4288_p2 = (tmp_30_fu_3561_p3 + 8'd31);
assign add_ln75_27_fu_4312_p2 = (tmp_30_fu_3561_p3 + 8'd32);
assign add_ln75_2_fu_3417_p2 = (tmp_28_fu_3338_p3 + 8'd5);
assign add_ln75_3_fu_3465_p2 = (tmp_28_fu_3338_p3 + 8'd7);
assign add_ln75_4_fu_3513_p2 = (tmp_28_fu_3338_p3 + 8'd10);
assign add_ln75_5_fu_3537_p2 = (tmp_28_fu_3338_p3 + 8'd11);
assign add_ln75_6_fu_3568_p2 = (tmp_30_fu_3561_p3 + 8'd1);
assign add_ln75_7_fu_3592_p2 = (tmp_30_fu_3561_p3 + 8'd2);
assign add_ln75_8_fu_3640_p2 = (tmp_30_fu_3561_p3 + 8'd4);
assign add_ln75_9_fu_3664_p2 = (tmp_30_fu_3561_p3 + 8'd5);
assign add_ln75_fu_3345_p2 = (tmp_28_fu_3338_p3 + 8'd1);
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
assign empty_1264_fu_3441_p2 = (tmp_28_fu_3338_p3 + 8'd6);
assign empty_1265_fu_3489_p2 = (tmp_28_fu_3338_p3 + 8'd9);
assign empty_1266_fu_3616_p2 = (tmp_30_fu_3561_p3 + 8'd3);
assign empty_1267_fu_3688_p2 = (tmp_30_fu_3561_p3 + 8'd6);
assign empty_1268_fu_3760_p2 = (tmp_30_fu_3561_p3 + 8'd9);
assign empty_1269_fu_3832_p2 = (tmp_30_fu_3561_p3 + 8'd12);
assign empty_1270_fu_3904_p2 = (tmp_30_fu_3561_p3 + 8'd15);
assign empty_1271_fu_3976_p2 = (tmp_30_fu_3561_p3 + 8'd18);
assign empty_1272_fu_4048_p2 = (tmp_30_fu_3561_p3 + 8'd21);
assign empty_1273_fu_4120_p2 = (tmp_30_fu_3561_p3 + 8'd24);
assign empty_1274_fu_4192_p2 = (tmp_30_fu_3561_p3 + 8'd27);
assign empty_1275_fu_4264_p2 = (tmp_30_fu_3561_p3 + 8'd30);
assign empty_fu_3393_p2 = (tmp_28_fu_3338_p3 + 8'd3);
assign grp_fu_18599_p_ce = 1'b1;
assign grp_fu_18599_p_din0 = tmp_reg_4411;
assign grp_fu_18599_p_din1 = output_difference_0_0_val;
assign grp_fu_18603_p_ce = 1'b1;
assign grp_fu_18603_p_din0 = tmp_reg_4411;
assign grp_fu_18603_p_din1 = output_difference_0_1_val;
assign grp_fu_18607_p_ce = 1'b1;
assign grp_fu_18607_p_din0 = tmp_reg_4411;
assign grp_fu_18607_p_din1 = output_difference_0_2_val;
assign grp_fu_18611_p_ce = 1'b1;
assign grp_fu_18611_p_din0 = tmp_s_reg_4433;
assign grp_fu_18611_p_din1 = output_difference_0_0_val;
assign grp_fu_18615_p_ce = 1'b1;
assign grp_fu_18615_p_din0 = tmp_s_reg_4433;
assign grp_fu_18615_p_din1 = output_difference_0_1_val;
assign grp_fu_18619_p_ce = 1'b1;
assign grp_fu_18619_p_din0 = tmp_s_reg_4433;
assign grp_fu_18619_p_din1 = output_difference_0_2_val;
assign grp_fu_18623_p_ce = 1'b1;
assign grp_fu_18623_p_din0 = tmp_375_reg_4440;
assign grp_fu_18623_p_din1 = output_difference_0_0_val;
assign grp_fu_18627_p_ce = 1'b1;
assign grp_fu_18627_p_din0 = tmp_375_reg_4440;
assign grp_fu_18627_p_din1 = output_difference_0_1_val;
assign grp_fu_18631_p_ce = 1'b1;
assign grp_fu_18631_p_din0 = tmp_375_reg_4440;
assign grp_fu_18631_p_din1 = output_difference_0_2_val;
assign grp_fu_18635_p_ce = 1'b1;
assign grp_fu_18635_p_din0 = tmp_376_reg_4447;
assign grp_fu_18635_p_din1 = output_difference_0_0_val;
assign grp_fu_18639_p_ce = 1'b1;
assign grp_fu_18639_p_din0 = tmp_376_reg_4447;
assign grp_fu_18639_p_din1 = output_difference_0_1_val;
assign grp_fu_18643_p_ce = 1'b1;
assign grp_fu_18643_p_din0 = tmp_376_reg_4447;
assign grp_fu_18643_p_din1 = output_difference_0_2_val;
assign grp_fu_18647_p_ce = 1'b1;
assign grp_fu_18647_p_din0 = tmp_377_reg_4454;
assign grp_fu_18647_p_din1 = output_difference_0_0_val;
assign grp_fu_18651_p_ce = 1'b1;
assign grp_fu_18651_p_din0 = tmp_377_reg_4454;
assign grp_fu_18651_p_din1 = output_difference_0_1_val;
assign grp_fu_18655_p_ce = 1'b1;
assign grp_fu_18655_p_din0 = tmp_377_reg_4454;
assign grp_fu_18655_p_din1 = output_difference_0_2_val;
assign grp_fu_18659_p_ce = 1'b1;
assign grp_fu_18659_p_din0 = tmp_378_reg_4461;
assign grp_fu_18659_p_din1 = output_difference_0_0_val;
assign grp_fu_18663_p_ce = 1'b1;
assign grp_fu_18663_p_din0 = tmp_378_reg_4461;
assign grp_fu_18663_p_din1 = output_difference_0_1_val;
assign grp_fu_18667_p_ce = 1'b1;
assign grp_fu_18667_p_din0 = tmp_378_reg_4461;
assign grp_fu_18667_p_din1 = output_difference_0_2_val;
assign grp_fu_18671_p_ce = 1'b1;
assign grp_fu_18671_p_din0 = tmp_379_reg_4468;
assign grp_fu_18671_p_din1 = output_difference_0_0_val;
assign grp_fu_18675_p_ce = 1'b1;
assign grp_fu_18675_p_din0 = tmp_379_reg_4468;
assign grp_fu_18675_p_din1 = output_difference_0_1_val;
assign grp_fu_18679_p_ce = 1'b1;
assign grp_fu_18679_p_din0 = tmp_379_reg_4468;
assign grp_fu_18679_p_din1 = output_difference_0_2_val;
assign grp_fu_18683_p_ce = 1'b1;
assign grp_fu_18683_p_din0 = tmp_380_reg_4475;
assign grp_fu_18683_p_din1 = output_difference_0_0_val;
assign grp_fu_18687_p_ce = 1'b1;
assign grp_fu_18687_p_din0 = tmp_380_reg_4475;
assign grp_fu_18687_p_din1 = output_difference_0_1_val;
assign grp_fu_18691_p_ce = 1'b1;
assign grp_fu_18691_p_din0 = tmp_380_reg_4475;
assign grp_fu_18691_p_din1 = output_difference_0_2_val;
assign grp_fu_18695_p_ce = 1'b1;
assign grp_fu_18695_p_din0 = tmp_381_reg_4482;
assign grp_fu_18695_p_din1 = output_difference_0_0_val;
assign grp_fu_18699_p_ce = 1'b1;
assign grp_fu_18699_p_din0 = tmp_381_reg_4482;
assign grp_fu_18699_p_din1 = output_difference_0_1_val;
assign grp_fu_18703_p_ce = 1'b1;
assign grp_fu_18703_p_din0 = tmp_381_reg_4482;
assign grp_fu_18703_p_din1 = output_difference_0_2_val;
assign grp_fu_18707_p_ce = 1'b1;
assign grp_fu_18707_p_din0 = tmp_382_reg_4489;
assign grp_fu_18707_p_din1 = output_difference_0_0_val;
assign grp_fu_18711_p_ce = 1'b1;
assign grp_fu_18711_p_din0 = tmp_382_reg_4489;
assign grp_fu_18711_p_din1 = output_difference_0_1_val;
assign grp_fu_18715_p_ce = 1'b1;
assign grp_fu_18715_p_din0 = tmp_382_reg_4489;
assign grp_fu_18715_p_din1 = output_difference_0_2_val;
assign grp_fu_18719_p_ce = 1'b1;
assign grp_fu_18719_p_din0 = tmp_383_reg_4496;
assign grp_fu_18719_p_din1 = output_difference_0_0_val;
assign grp_fu_18723_p_ce = 1'b1;
assign grp_fu_18723_p_din0 = tmp_383_reg_4496;
assign grp_fu_18723_p_din1 = output_difference_0_1_val;
assign grp_fu_18727_p_ce = 1'b1;
assign grp_fu_18727_p_din0 = tmp_383_reg_4496;
assign grp_fu_18727_p_din1 = output_difference_0_2_val;
assign grp_fu_18731_p_ce = 1'b1;
assign grp_fu_18731_p_din0 = tmp_384_reg_4503;
assign grp_fu_18731_p_din1 = output_difference_0_0_val;
assign grp_fu_18735_p_ce = 1'b1;
assign grp_fu_18735_p_din0 = tmp_384_reg_4503;
assign grp_fu_18735_p_din1 = output_difference_0_1_val;
assign grp_fu_18739_p_ce = 1'b1;
assign grp_fu_18739_p_din0 = tmp_384_reg_4503;
assign grp_fu_18739_p_din1 = output_difference_0_2_val;
assign grp_fu_18743_p_ce = 1'b1;
assign grp_fu_18743_p_din0 = tmp_385_reg_4510;
assign grp_fu_18743_p_din1 = output_difference_0_0_val;
assign grp_fu_18747_p_ce = 1'b1;
assign grp_fu_18747_p_din0 = tmp_385_reg_4510;
assign grp_fu_18747_p_din1 = output_difference_0_1_val;
assign grp_fu_18751_p_ce = 1'b1;
assign grp_fu_18751_p_din0 = tmp_385_reg_4510;
assign grp_fu_18751_p_din1 = output_difference_0_2_val;
assign grp_fu_18755_p_ce = 1'b1;
assign grp_fu_18755_p_din0 = tmp_386_reg_4517;
assign grp_fu_18755_p_din1 = output_difference_0_0_val;
assign grp_fu_18759_p_ce = 1'b1;
assign grp_fu_18759_p_din0 = tmp_386_reg_4517;
assign grp_fu_18759_p_din1 = output_difference_0_1_val;
assign grp_fu_18763_p_ce = 1'b1;
assign grp_fu_18763_p_din0 = tmp_386_reg_4517;
assign grp_fu_18763_p_din1 = output_difference_0_2_val;
assign grp_fu_18767_p_ce = 1'b1;
assign grp_fu_18767_p_din0 = tmp_387_reg_4524;
assign grp_fu_18767_p_din1 = output_difference_0_0_val;
assign grp_fu_18771_p_ce = 1'b1;
assign grp_fu_18771_p_din0 = tmp_387_reg_4524;
assign grp_fu_18771_p_din1 = output_difference_0_1_val;
assign grp_fu_18775_p_ce = 1'b1;
assign grp_fu_18775_p_din0 = tmp_387_reg_4524;
assign grp_fu_18775_p_din1 = output_difference_0_2_val;
assign grp_fu_18779_p_ce = 1'b1;
assign grp_fu_18779_p_din0 = tmp_388_reg_4531;
assign grp_fu_18779_p_din1 = output_difference_0_0_val;
assign grp_fu_18783_p_ce = 1'b1;
assign grp_fu_18783_p_din0 = tmp_388_reg_4531;
assign grp_fu_18783_p_din1 = output_difference_0_1_val;
assign grp_fu_18787_p_ce = 1'b1;
assign grp_fu_18787_p_din0 = tmp_388_reg_4531;
assign grp_fu_18787_p_din1 = output_difference_0_2_val;
assign lshr_ln75_10_fu_3598_p4 = {{add_ln75_7_fu_3592_p2[7:6]}};
assign lshr_ln75_11_fu_3622_p4 = {{empty_1266_fu_3616_p2[7:6]}};
assign lshr_ln75_12_fu_3646_p4 = {{add_ln75_8_fu_3640_p2[7:6]}};
assign lshr_ln75_13_fu_3670_p4 = {{add_ln75_9_fu_3664_p2[7:6]}};
assign lshr_ln75_14_fu_3694_p4 = {{empty_1267_fu_3688_p2[7:6]}};
assign lshr_ln75_15_fu_3718_p4 = {{add_ln75_10_fu_3712_p2[7:6]}};
assign lshr_ln75_16_fu_3742_p4 = {{add_ln75_11_fu_3736_p2[7:6]}};
assign lshr_ln75_17_fu_3766_p4 = {{empty_1268_fu_3760_p2[7:6]}};
assign lshr_ln75_18_fu_3790_p4 = {{add_ln75_12_fu_3784_p2[7:6]}};
assign lshr_ln75_19_fu_3814_p4 = {{add_ln75_13_fu_3808_p2[7:6]}};
assign lshr_ln75_1_fu_3351_p4 = {{add_ln75_fu_3345_p2[7:6]}};
assign lshr_ln75_20_fu_3838_p4 = {{empty_1269_fu_3832_p2[7:6]}};
assign lshr_ln75_21_fu_3862_p4 = {{add_ln75_14_fu_3856_p2[7:6]}};
assign lshr_ln75_22_fu_3886_p4 = {{add_ln75_15_fu_3880_p2[7:6]}};
assign lshr_ln75_23_fu_3910_p4 = {{empty_1270_fu_3904_p2[7:6]}};
assign lshr_ln75_24_fu_3934_p4 = {{add_ln75_16_fu_3928_p2[7:6]}};
assign lshr_ln75_25_fu_3958_p4 = {{add_ln75_17_fu_3952_p2[7:6]}};
assign lshr_ln75_26_fu_3982_p4 = {{empty_1271_fu_3976_p2[7:6]}};
assign lshr_ln75_27_fu_4006_p4 = {{add_ln75_18_fu_4000_p2[7:6]}};
assign lshr_ln75_28_fu_4030_p4 = {{add_ln75_19_fu_4024_p2[7:6]}};
assign lshr_ln75_29_fu_4054_p4 = {{empty_1272_fu_4048_p2[7:6]}};
assign lshr_ln75_2_fu_3375_p4 = {{add_ln75_1_fu_3369_p2[7:6]}};
assign lshr_ln75_30_fu_4078_p4 = {{add_ln75_20_fu_4072_p2[7:6]}};
assign lshr_ln75_31_fu_4102_p4 = {{add_ln75_21_fu_4096_p2[7:6]}};
assign lshr_ln75_32_fu_4126_p4 = {{empty_1273_fu_4120_p2[7:6]}};
assign lshr_ln75_33_fu_4150_p4 = {{add_ln75_22_fu_4144_p2[7:6]}};
assign lshr_ln75_34_fu_4174_p4 = {{add_ln75_23_fu_4168_p2[7:6]}};
assign lshr_ln75_35_fu_4198_p4 = {{empty_1274_fu_4192_p2[7:6]}};
assign lshr_ln75_36_fu_4222_p4 = {{add_ln75_24_fu_4216_p2[7:6]}};
assign lshr_ln75_37_fu_4246_p4 = {{add_ln75_25_fu_4240_p2[7:6]}};
assign lshr_ln75_38_fu_4270_p4 = {{empty_1275_fu_4264_p2[7:6]}};
assign lshr_ln75_39_fu_4294_p4 = {{add_ln75_26_fu_4288_p2[7:6]}};
assign lshr_ln75_3_fu_3399_p4 = {{empty_fu_3393_p2[7:6]}};
assign lshr_ln75_40_fu_4318_p4 = {{add_ln75_27_fu_4312_p2[7:6]}};
assign lshr_ln75_4_fu_3423_p4 = {{add_ln75_2_fu_3417_p2[7:6]}};
assign lshr_ln75_5_fu_3447_p4 = {{empty_1264_fu_3441_p2[7:6]}};
assign lshr_ln75_6_fu_3471_p4 = {{add_ln75_3_fu_3465_p2[7:6]}};
assign lshr_ln75_7_fu_3495_p4 = {{empty_1265_fu_3489_p2[7:6]}};
assign lshr_ln75_8_fu_3519_p4 = {{add_ln75_4_fu_3513_p2[7:6]}};
assign lshr_ln75_9_fu_3543_p4 = {{add_ln75_5_fu_3537_p2[7:6]}};
assign lshr_ln75_s_fu_3574_p4 = {{add_ln75_6_fu_3568_p2[7:6]}};
assign p_shl_fu_2892_p3 = {{trunc_ln73_fu_2864_p1}, {2'd0}};
assign sub_ln75_fu_2900_p2 = (p_shl_fu_2892_p3 - zext_ln75_fu_2860_p1);
assign tmp_28_fu_3338_p3 = {{tmp_27_reg_4423_pp0_iter7_reg}, {2'd3}};
assign tmp_30_fu_3561_p3 = {{tmp_29_reg_4428_pp0_iter7_reg}, {4'd15}};
assign tmp_375_fu_2960_p9 = 'bx;
assign tmp_376_fu_2984_p9 = 'bx;
assign tmp_377_fu_3008_p9 = 'bx;
assign tmp_378_fu_3032_p9 = 'bx;
assign tmp_379_fu_3056_p9 = 'bx;
assign tmp_380_fu_3080_p9 = 'bx;
assign tmp_381_fu_3104_p9 = 'bx;
assign tmp_382_fu_3128_p9 = 'bx;
assign tmp_383_fu_3152_p9 = 'bx;
assign tmp_384_fu_3176_p9 = 'bx;
assign tmp_385_fu_3200_p9 = 'bx;
assign tmp_386_fu_3224_p9 = 'bx;
assign tmp_387_fu_3248_p9 = 'bx;
assign tmp_388_fu_3272_p9 = 'bx;
assign tmp_442_fu_2852_p3 = ap_sig_allocacmp_i_13[32'd6];
assign tmp_fu_2868_p9 = 'bx;
assign tmp_s_fu_2936_p9 = 'bx;
assign trunc_ln73_fu_2864_p1 = ap_sig_allocacmp_i_13[5:0];
assign zext_ln75_10_fu_3553_p1 = lshr_ln75_9_fu_3543_p4;
assign zext_ln75_11_fu_3584_p1 = lshr_ln75_s_fu_3574_p4;
assign zext_ln75_12_fu_3608_p1 = lshr_ln75_10_fu_3598_p4;
assign zext_ln75_13_fu_3632_p1 = lshr_ln75_11_fu_3622_p4;
assign zext_ln75_14_fu_3656_p1 = lshr_ln75_12_fu_3646_p4;
assign zext_ln75_15_fu_3680_p1 = lshr_ln75_13_fu_3670_p4;
assign zext_ln75_16_fu_3704_p1 = lshr_ln75_14_fu_3694_p4;
assign zext_ln75_17_fu_3728_p1 = lshr_ln75_15_fu_3718_p4;
assign zext_ln75_18_fu_3752_p1 = lshr_ln75_16_fu_3742_p4;
assign zext_ln75_19_fu_3776_p1 = lshr_ln75_17_fu_3766_p4;
assign zext_ln75_1_fu_3307_p1 = lshr_ln_reg_4418_pp0_iter7_reg;
assign zext_ln75_20_fu_3800_p1 = lshr_ln75_18_fu_3790_p4;
assign zext_ln75_21_fu_3824_p1 = lshr_ln75_19_fu_3814_p4;
assign zext_ln75_22_fu_3848_p1 = lshr_ln75_20_fu_3838_p4;
assign zext_ln75_23_fu_3872_p1 = lshr_ln75_21_fu_3862_p4;
assign zext_ln75_24_fu_3896_p1 = lshr_ln75_22_fu_3886_p4;
assign zext_ln75_25_fu_3920_p1 = lshr_ln75_23_fu_3910_p4;
assign zext_ln75_26_fu_3944_p1 = lshr_ln75_24_fu_3934_p4;
assign zext_ln75_27_fu_3968_p1 = lshr_ln75_25_fu_3958_p4;
assign zext_ln75_28_fu_3992_p1 = lshr_ln75_26_fu_3982_p4;
assign zext_ln75_29_fu_4016_p1 = lshr_ln75_27_fu_4006_p4;
assign zext_ln75_2_fu_3361_p1 = lshr_ln75_1_fu_3351_p4;
assign zext_ln75_30_fu_4040_p1 = lshr_ln75_28_fu_4030_p4;
assign zext_ln75_31_fu_4064_p1 = lshr_ln75_29_fu_4054_p4;
assign zext_ln75_32_fu_4088_p1 = lshr_ln75_30_fu_4078_p4;
assign zext_ln75_33_fu_4112_p1 = lshr_ln75_31_fu_4102_p4;
assign zext_ln75_34_fu_4136_p1 = lshr_ln75_32_fu_4126_p4;
assign zext_ln75_35_fu_4160_p1 = lshr_ln75_33_fu_4150_p4;
assign zext_ln75_36_fu_4184_p1 = lshr_ln75_34_fu_4174_p4;
assign zext_ln75_37_fu_4208_p1 = lshr_ln75_35_fu_4198_p4;
assign zext_ln75_38_fu_4232_p1 = lshr_ln75_36_fu_4222_p4;
assign zext_ln75_39_fu_4256_p1 = lshr_ln75_37_fu_4246_p4;
assign zext_ln75_3_fu_3385_p1 = lshr_ln75_2_fu_3375_p4;
assign zext_ln75_40_fu_4280_p1 = lshr_ln75_38_fu_4270_p4;
assign zext_ln75_41_fu_4304_p1 = lshr_ln75_39_fu_4294_p4;
assign zext_ln75_42_fu_4328_p1 = lshr_ln75_40_fu_4318_p4;
assign zext_ln75_4_fu_3409_p1 = lshr_ln75_3_fu_3399_p4;
assign zext_ln75_5_fu_3433_p1 = lshr_ln75_4_fu_3423_p4;
assign zext_ln75_6_fu_3457_p1 = lshr_ln75_5_fu_3447_p4;
assign zext_ln75_7_fu_3481_p1 = lshr_ln75_6_fu_3471_p4;
assign zext_ln75_8_fu_3505_p1 = lshr_ln75_7_fu_3495_p4;
assign zext_ln75_9_fu_3529_p1 = lshr_ln75_8_fu_3519_p4;
assign zext_ln75_fu_2860_p1 = ap_sig_allocacmp_i_13;
endmodule 