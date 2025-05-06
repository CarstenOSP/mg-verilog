
module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_63_address0,delta_weights3_63_ce0,delta_weights3_63_we0,delta_weights3_63_d0,delta_weights3_62_address0,delta_weights3_62_ce0,delta_weights3_62_we0,delta_weights3_62_d0,delta_weights3_61_address0,delta_weights3_61_ce0,delta_weights3_61_we0,delta_weights3_61_d0,delta_weights3_60_address0,delta_weights3_60_ce0,delta_weights3_60_we0,delta_weights3_60_d0,delta_weights3_59_address0,delta_weights3_59_ce0,delta_weights3_59_we0,delta_weights3_59_d0,delta_weights3_58_address0,delta_weights3_58_ce0,delta_weights3_58_we0,delta_weights3_58_d0,delta_weights3_57_address0,delta_weights3_57_ce0,delta_weights3_57_we0,delta_weights3_57_d0,delta_weights3_56_address0,delta_weights3_56_ce0,delta_weights3_56_we0,delta_weights3_56_d0,delta_weights3_55_address0,delta_weights3_55_ce0,delta_weights3_55_we0,delta_weights3_55_d0,delta_weights3_54_address0,delta_weights3_54_ce0,delta_weights3_54_we0,delta_weights3_54_d0,delta_weights3_53_address0,delta_weights3_53_ce0,delta_weights3_53_we0,delta_weights3_53_d0,delta_weights3_52_address0,delta_weights3_52_ce0,delta_weights3_52_we0,delta_weights3_52_d0,delta_weights3_51_address0,delta_weights3_51_ce0,delta_weights3_51_we0,delta_weights3_51_d0,delta_weights3_50_address0,delta_weights3_50_ce0,delta_weights3_50_we0,delta_weights3_50_d0,delta_weights3_49_address0,delta_weights3_49_ce0,delta_weights3_49_we0,delta_weights3_49_d0,delta_weights3_48_address0,delta_weights3_48_ce0,delta_weights3_48_we0,delta_weights3_48_d0,delta_weights3_47_address0,delta_weights3_47_ce0,delta_weights3_47_we0,delta_weights3_47_d0,delta_weights3_46_address0,delta_weights3_46_ce0,delta_weights3_46_we0,delta_weights3_46_d0,delta_weights3_45_address0,delta_weights3_45_ce0,delta_weights3_45_we0,delta_weights3_45_d0,delta_weights3_44_address0,delta_weights3_44_ce0,delta_weights3_44_we0,delta_weights3_44_d0,delta_weights3_43_address0,delta_weights3_43_ce0,delta_weights3_43_we0,delta_weights3_43_d0,delta_weights3_42_address0,delta_weights3_42_ce0,delta_weights3_42_we0,delta_weights3_42_d0,delta_weights3_41_address0,delta_weights3_41_ce0,delta_weights3_41_we0,delta_weights3_41_d0,delta_weights3_40_address0,delta_weights3_40_ce0,delta_weights3_40_we0,delta_weights3_40_d0,delta_weights3_39_address0,delta_weights3_39_ce0,delta_weights3_39_we0,delta_weights3_39_d0,delta_weights3_38_address0,delta_weights3_38_ce0,delta_weights3_38_we0,delta_weights3_38_d0,delta_weights3_37_address0,delta_weights3_37_ce0,delta_weights3_37_we0,delta_weights3_37_d0,delta_weights3_36_address0,delta_weights3_36_ce0,delta_weights3_36_we0,delta_weights3_36_d0,delta_weights3_35_address0,delta_weights3_35_ce0,delta_weights3_35_we0,delta_weights3_35_d0,delta_weights3_34_address0,delta_weights3_34_ce0,delta_weights3_34_we0,delta_weights3_34_d0,delta_weights3_33_address0,delta_weights3_33_ce0,delta_weights3_33_we0,delta_weights3_33_d0,delta_weights3_32_address0,delta_weights3_32_ce0,delta_weights3_32_we0,delta_weights3_32_d0,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,activations2_load_2,activations2_4_load_2,activations2_8_load_2,activations2_12_load_2,activations2_16_load_2,activations2_20_load_2,activations2_24_load_2,activations2_28_load_2,activations2_32_load_2,activations2_36_load_2,activations2_40_load_2,activations2_44_load_2,activations2_48_load_2,activations2_52_load_2,activations2_56_load_2,activations2_60_load_2,p_reload690,p_reload689,p_reload,activations2_1_load_2,activations2_5_load_2,activations2_9_load_2,activations2_13_load_2,activations2_17_load_2,activations2_21_load_2,activations2_25_load_2,activations2_29_load_2,activations2_33_load_2,activations2_37_load_2,activations2_41_load_2,activations2_45_load_2,activations2_49_load_2,activations2_53_load_2,activations2_57_load_2,activations2_61_load_2,activations2_2_load_2,activations2_6_load_2,activations2_10_load_2,activations2_14_load_2,activations2_18_load_2,activations2_22_load_2,activations2_26_load_2,activations2_30_load_2,activations2_34_load_2,activations2_38_load_2,activations2_42_load_2,activations2_46_load_2,activations2_50_load_2,activations2_54_load_2,activations2_58_load_2,activations2_62_load_2,activations2_3_load_2,activations2_7_load_2,activations2_11_load_2,activations2_15_load_2,activations2_19_load_2,activations2_23_load_2,activations2_27_load_2,activations2_31_load_2,activations2_35_load_2,activations2_39_load_2,activations2_43_load_2,activations2_47_load_2,activations2_51_load_2,activations2_55_load_2,activations2_59_load_2,activations2_63_load_2,grp_fu_33265_p_din0,grp_fu_33265_p_din1,grp_fu_33265_p_dout0,grp_fu_33265_p_ce,grp_fu_33269_p_din0,grp_fu_33269_p_din1,grp_fu_33269_p_dout0,grp_fu_33269_p_ce,grp_fu_33273_p_din0,grp_fu_33273_p_din1,grp_fu_33273_p_dout0,grp_fu_33273_p_ce,grp_fu_33277_p_din0,grp_fu_33277_p_din1,grp_fu_33277_p_dout0,grp_fu_33277_p_ce,grp_fu_33281_p_din0,grp_fu_33281_p_din1,grp_fu_33281_p_dout0,grp_fu_33281_p_ce,grp_fu_33285_p_din0,grp_fu_33285_p_din1,grp_fu_33285_p_dout0,grp_fu_33285_p_ce,grp_fu_33289_p_din0,grp_fu_33289_p_din1,grp_fu_33289_p_dout0,grp_fu_33289_p_ce,grp_fu_33293_p_din0,grp_fu_33293_p_din1,grp_fu_33293_p_dout0,grp_fu_33293_p_ce,grp_fu_33297_p_din0,grp_fu_33297_p_din1,grp_fu_33297_p_dout0,grp_fu_33297_p_ce,grp_fu_33301_p_din0,grp_fu_33301_p_din1,grp_fu_33301_p_dout0,grp_fu_33301_p_ce,grp_fu_33305_p_din0,grp_fu_33305_p_din1,grp_fu_33305_p_dout0,grp_fu_33305_p_ce,grp_fu_33309_p_din0,grp_fu_33309_p_din1,grp_fu_33309_p_dout0,grp_fu_33309_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] delta_weights3_63_address0;
output   delta_weights3_63_ce0;
output   delta_weights3_63_we0;
output  [63:0] delta_weights3_63_d0;
output  [1:0] delta_weights3_62_address0;
output   delta_weights3_62_ce0;
output   delta_weights3_62_we0;
output  [63:0] delta_weights3_62_d0;
output  [1:0] delta_weights3_61_address0;
output   delta_weights3_61_ce0;
output   delta_weights3_61_we0;
output  [63:0] delta_weights3_61_d0;
output  [1:0] delta_weights3_60_address0;
output   delta_weights3_60_ce0;
output   delta_weights3_60_we0;
output  [63:0] delta_weights3_60_d0;
output  [1:0] delta_weights3_59_address0;
output   delta_weights3_59_ce0;
output   delta_weights3_59_we0;
output  [63:0] delta_weights3_59_d0;
output  [1:0] delta_weights3_58_address0;
output   delta_weights3_58_ce0;
output   delta_weights3_58_we0;
output  [63:0] delta_weights3_58_d0;
output  [1:0] delta_weights3_57_address0;
output   delta_weights3_57_ce0;
output   delta_weights3_57_we0;
output  [63:0] delta_weights3_57_d0;
output  [1:0] delta_weights3_56_address0;
output   delta_weights3_56_ce0;
output   delta_weights3_56_we0;
output  [63:0] delta_weights3_56_d0;
output  [1:0] delta_weights3_55_address0;
output   delta_weights3_55_ce0;
output   delta_weights3_55_we0;
output  [63:0] delta_weights3_55_d0;
output  [1:0] delta_weights3_54_address0;
output   delta_weights3_54_ce0;
output   delta_weights3_54_we0;
output  [63:0] delta_weights3_54_d0;
output  [1:0] delta_weights3_53_address0;
output   delta_weights3_53_ce0;
output   delta_weights3_53_we0;
output  [63:0] delta_weights3_53_d0;
output  [1:0] delta_weights3_52_address0;
output   delta_weights3_52_ce0;
output   delta_weights3_52_we0;
output  [63:0] delta_weights3_52_d0;
output  [1:0] delta_weights3_51_address0;
output   delta_weights3_51_ce0;
output   delta_weights3_51_we0;
output  [63:0] delta_weights3_51_d0;
output  [1:0] delta_weights3_50_address0;
output   delta_weights3_50_ce0;
output   delta_weights3_50_we0;
output  [63:0] delta_weights3_50_d0;
output  [1:0] delta_weights3_49_address0;
output   delta_weights3_49_ce0;
output   delta_weights3_49_we0;
output  [63:0] delta_weights3_49_d0;
output  [1:0] delta_weights3_48_address0;
output   delta_weights3_48_ce0;
output   delta_weights3_48_we0;
output  [63:0] delta_weights3_48_d0;
output  [1:0] delta_weights3_47_address0;
output   delta_weights3_47_ce0;
output   delta_weights3_47_we0;
output  [63:0] delta_weights3_47_d0;
output  [1:0] delta_weights3_46_address0;
output   delta_weights3_46_ce0;
output   delta_weights3_46_we0;
output  [63:0] delta_weights3_46_d0;
output  [1:0] delta_weights3_45_address0;
output   delta_weights3_45_ce0;
output   delta_weights3_45_we0;
output  [63:0] delta_weights3_45_d0;
output  [1:0] delta_weights3_44_address0;
output   delta_weights3_44_ce0;
output   delta_weights3_44_we0;
output  [63:0] delta_weights3_44_d0;
output  [1:0] delta_weights3_43_address0;
output   delta_weights3_43_ce0;
output   delta_weights3_43_we0;
output  [63:0] delta_weights3_43_d0;
output  [1:0] delta_weights3_42_address0;
output   delta_weights3_42_ce0;
output   delta_weights3_42_we0;
output  [63:0] delta_weights3_42_d0;
output  [1:0] delta_weights3_41_address0;
output   delta_weights3_41_ce0;
output   delta_weights3_41_we0;
output  [63:0] delta_weights3_41_d0;
output  [1:0] delta_weights3_40_address0;
output   delta_weights3_40_ce0;
output   delta_weights3_40_we0;
output  [63:0] delta_weights3_40_d0;
output  [1:0] delta_weights3_39_address0;
output   delta_weights3_39_ce0;
output   delta_weights3_39_we0;
output  [63:0] delta_weights3_39_d0;
output  [1:0] delta_weights3_38_address0;
output   delta_weights3_38_ce0;
output   delta_weights3_38_we0;
output  [63:0] delta_weights3_38_d0;
output  [1:0] delta_weights3_37_address0;
output   delta_weights3_37_ce0;
output   delta_weights3_37_we0;
output  [63:0] delta_weights3_37_d0;
output  [1:0] delta_weights3_36_address0;
output   delta_weights3_36_ce0;
output   delta_weights3_36_we0;
output  [63:0] delta_weights3_36_d0;
output  [1:0] delta_weights3_35_address0;
output   delta_weights3_35_ce0;
output   delta_weights3_35_we0;
output  [63:0] delta_weights3_35_d0;
output  [1:0] delta_weights3_34_address0;
output   delta_weights3_34_ce0;
output   delta_weights3_34_we0;
output  [63:0] delta_weights3_34_d0;
output  [1:0] delta_weights3_33_address0;
output   delta_weights3_33_ce0;
output   delta_weights3_33_we0;
output  [63:0] delta_weights3_33_d0;
output  [1:0] delta_weights3_32_address0;
output   delta_weights3_32_ce0;
output   delta_weights3_32_we0;
output  [63:0] delta_weights3_32_d0;
output  [1:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [1:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [1:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [1:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [1:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [1:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [1:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [1:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [1:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [1:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [1:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [1:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [1:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [1:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [1:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [1:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [1:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [1:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [1:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [1:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [1:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [1:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [1:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [1:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [1:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [1:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [1:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [1:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [1:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [1:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [1:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [1:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
input  [63:0] activations2_load_2;
input  [63:0] activations2_4_load_2;
input  [63:0] activations2_8_load_2;
input  [63:0] activations2_12_load_2;
input  [63:0] activations2_16_load_2;
input  [63:0] activations2_20_load_2;
input  [63:0] activations2_24_load_2;
input  [63:0] activations2_28_load_2;
input  [63:0] activations2_32_load_2;
input  [63:0] activations2_36_load_2;
input  [63:0] activations2_40_load_2;
input  [63:0] activations2_44_load_2;
input  [63:0] activations2_48_load_2;
input  [63:0] activations2_52_load_2;
input  [63:0] activations2_56_load_2;
input  [63:0] activations2_60_load_2;
input  [63:0] p_reload690;
input  [63:0] p_reload689;
input  [63:0] p_reload;
input  [63:0] activations2_1_load_2;
input  [63:0] activations2_5_load_2;
input  [63:0] activations2_9_load_2;
input  [63:0] activations2_13_load_2;
input  [63:0] activations2_17_load_2;
input  [63:0] activations2_21_load_2;
input  [63:0] activations2_25_load_2;
input  [63:0] activations2_29_load_2;
input  [63:0] activations2_33_load_2;
input  [63:0] activations2_37_load_2;
input  [63:0] activations2_41_load_2;
input  [63:0] activations2_45_load_2;
input  [63:0] activations2_49_load_2;
input  [63:0] activations2_53_load_2;
input  [63:0] activations2_57_load_2;
input  [63:0] activations2_61_load_2;
input  [63:0] activations2_2_load_2;
input  [63:0] activations2_6_load_2;
input  [63:0] activations2_10_load_2;
input  [63:0] activations2_14_load_2;
input  [63:0] activations2_18_load_2;
input  [63:0] activations2_22_load_2;
input  [63:0] activations2_26_load_2;
input  [63:0] activations2_30_load_2;
input  [63:0] activations2_34_load_2;
input  [63:0] activations2_38_load_2;
input  [63:0] activations2_42_load_2;
input  [63:0] activations2_46_load_2;
input  [63:0] activations2_50_load_2;
input  [63:0] activations2_54_load_2;
input  [63:0] activations2_58_load_2;
input  [63:0] activations2_62_load_2;
input  [63:0] activations2_3_load_2;
input  [63:0] activations2_7_load_2;
input  [63:0] activations2_11_load_2;
input  [63:0] activations2_15_load_2;
input  [63:0] activations2_19_load_2;
input  [63:0] activations2_23_load_2;
input  [63:0] activations2_27_load_2;
input  [63:0] activations2_31_load_2;
input  [63:0] activations2_35_load_2;
input  [63:0] activations2_39_load_2;
input  [63:0] activations2_43_load_2;
input  [63:0] activations2_47_load_2;
input  [63:0] activations2_51_load_2;
input  [63:0] activations2_55_load_2;
input  [63:0] activations2_59_load_2;
input  [63:0] activations2_63_load_2;
output  [63:0] grp_fu_33265_p_din0;
output  [63:0] grp_fu_33265_p_din1;
input  [63:0] grp_fu_33265_p_dout0;
output   grp_fu_33265_p_ce;
output  [63:0] grp_fu_33269_p_din0;
output  [63:0] grp_fu_33269_p_din1;
input  [63:0] grp_fu_33269_p_dout0;
output   grp_fu_33269_p_ce;
output  [63:0] grp_fu_33273_p_din0;
output  [63:0] grp_fu_33273_p_din1;
input  [63:0] grp_fu_33273_p_dout0;
output   grp_fu_33273_p_ce;
output  [63:0] grp_fu_33277_p_din0;
output  [63:0] grp_fu_33277_p_din1;
input  [63:0] grp_fu_33277_p_dout0;
output   grp_fu_33277_p_ce;
output  [63:0] grp_fu_33281_p_din0;
output  [63:0] grp_fu_33281_p_din1;
input  [63:0] grp_fu_33281_p_dout0;
output   grp_fu_33281_p_ce;
output  [63:0] grp_fu_33285_p_din0;
output  [63:0] grp_fu_33285_p_din1;
input  [63:0] grp_fu_33285_p_dout0;
output   grp_fu_33285_p_ce;
output  [63:0] grp_fu_33289_p_din0;
output  [63:0] grp_fu_33289_p_din1;
input  [63:0] grp_fu_33289_p_dout0;
output   grp_fu_33289_p_ce;
output  [63:0] grp_fu_33293_p_din0;
output  [63:0] grp_fu_33293_p_din1;
input  [63:0] grp_fu_33293_p_dout0;
output   grp_fu_33293_p_ce;
output  [63:0] grp_fu_33297_p_din0;
output  [63:0] grp_fu_33297_p_din1;
input  [63:0] grp_fu_33297_p_dout0;
output   grp_fu_33297_p_ce;
output  [63:0] grp_fu_33301_p_din0;
output  [63:0] grp_fu_33301_p_din1;
input  [63:0] grp_fu_33301_p_dout0;
output   grp_fu_33301_p_ce;
output  [63:0] grp_fu_33305_p_din0;
output  [63:0] grp_fu_33305_p_din1;
input  [63:0] grp_fu_33305_p_dout0;
output   grp_fu_33305_p_ce;
output  [63:0] grp_fu_33309_p_din0;
output  [63:0] grp_fu_33309_p_din1;
input  [63:0] grp_fu_33309_p_dout0;
output   grp_fu_33309_p_ce;
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
wire   [0:0] tmp_fu_2676_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln73_fu_2688_p1;
reg   [5:0] trunc_ln73_reg_3422;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter1_reg;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter2_reg;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter3_reg;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter4_reg;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter5_reg;
reg   [5:0] trunc_ln73_reg_3422_pp0_iter6_reg;
wire   [63:0] tmp_s_fu_2692_p35;
reg   [63:0] tmp_s_reg_3426;
reg   [1:0] lshr_ln2_reg_3433;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter1_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter2_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter3_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter4_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter5_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter6_reg;
reg   [1:0] lshr_ln2_reg_3433_pp0_iter7_reg;
reg   [5:0] tmp_77_reg_3438;
reg   [5:0] tmp_77_reg_3438_pp0_iter1_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter2_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter3_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter4_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter5_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter6_reg;
reg   [5:0] tmp_77_reg_3438_pp0_iter7_reg;
wire   [63:0] tmp_79_fu_2798_p35;
reg   [63:0] tmp_79_reg_3443;
wire   [63:0] tmp_80_fu_2870_p35;
reg   [63:0] tmp_80_reg_3450;
wire   [63:0] tmp_81_fu_2942_p35;
reg   [63:0] tmp_81_reg_3457;
reg   [63:0] mul_i1_reg_3464;
reg   [63:0] mul_16_i_reg_3484;
reg   [63:0] mul_216_i_reg_3504;
reg   [63:0] mul_1_i_reg_3524;
reg   [63:0] mul_1_1_i_reg_3544;
reg   [63:0] mul_1_2_i_reg_3564;
reg   [63:0] mul_2_i_reg_3584;
reg   [63:0] mul_2_1_i_reg_3604;
reg   [63:0] mul_2_2_i_reg_3624;
reg   [63:0] mul_3_i_reg_3644;
reg   [63:0] mul_3_1_i_reg_3664;
reg   [63:0] mul_3_2_i_reg_3684;
wire   [63:0] zext_ln75_1_fu_3025_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_2_fu_3115_p1;
wire   [63:0] zext_ln75_3_fu_3151_p1;
wire   [63:0] zext_ln75_4_fu_3187_p1;
wire   [63:0] zext_ln75_5_fu_3223_p1;
wire   [63:0] zext_ln75_6_fu_3259_p1;
wire   [63:0] zext_ln75_7_fu_3295_p1;
wire   [63:0] zext_ln75_8_fu_3331_p1;
wire   [63:0] zext_ln75_9_fu_3367_p1;
reg   [6:0] i_fu_358;
wire   [6:0] add_ln73_fu_3014_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_6;
reg    delta_weights3_56_we0_local;
reg    ap_predicate_pred999_state9;
reg   [63:0] delta_weights3_56_d0_local;
reg    delta_weights3_56_ce0_local;
reg   [1:0] delta_weights3_56_address0_local;
reg    ap_predicate_pred1008_state9;
reg    ap_predicate_pred1068_state9;
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
reg    ap_predicate_pred1064_state9;
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
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [1:0] delta_weights3_address0_local;
reg    ap_predicate_pred1015_state9;
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
reg    ap_predicate_pred1018_state9;
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
reg    delta_weights3_48_we0_local;
reg   [63:0] delta_weights3_48_d0_local;
reg    delta_weights3_48_ce0_local;
reg   [1:0] delta_weights3_48_address0_local;
reg    ap_predicate_pred1058_state9;
reg    ap_predicate_pred1054_state9;
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
reg    delta_weights3_44_we0_local;
reg   [63:0] delta_weights3_44_d0_local;
reg    delta_weights3_44_ce0_local;
reg   [1:0] delta_weights3_44_address0_local;
reg    ap_predicate_pred1050_state9;
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
reg    delta_weights3_40_we0_local;
reg   [63:0] delta_weights3_40_d0_local;
reg    delta_weights3_40_ce0_local;
reg   [1:0] delta_weights3_40_address0_local;
reg    ap_predicate_pred1046_state9;
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
reg    delta_weights3_36_we0_local;
reg   [63:0] delta_weights3_36_d0_local;
reg    delta_weights3_36_ce0_local;
reg   [1:0] delta_weights3_36_address0_local;
reg    ap_predicate_pred1042_state9;
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
reg    delta_weights3_32_we0_local;
reg   [63:0] delta_weights3_32_d0_local;
reg    delta_weights3_32_ce0_local;
reg   [1:0] delta_weights3_32_address0_local;
reg    ap_predicate_pred1038_state9;
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
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [1:0] delta_weights3_28_address0_local;
reg    ap_predicate_pred1034_state9;
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
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [1:0] delta_weights3_24_address0_local;
reg    ap_predicate_pred1030_state9;
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
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [1:0] delta_weights3_20_address0_local;
reg    ap_predicate_pred1026_state9;
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
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [1:0] delta_weights3_16_address0_local;
reg    ap_predicate_pred1022_state9;
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
wire   [63:0] tmp_s_fu_2692_p33;
wire   [7:0] p_shl_fu_2764_p3;
wire   [7:0] zext_ln75_fu_2684_p1;
wire   [7:0] sub_ln75_fu_2772_p2;
wire   [63:0] tmp_79_fu_2798_p33;
wire   [63:0] tmp_80_fu_2870_p33;
wire   [63:0] tmp_81_fu_2942_p33;
wire   [7:0] tmp_78_fu_3092_p3;
wire   [7:0] add_ln75_fu_3099_p2;
wire   [1:0] lshr_ln75_1_fu_3105_p4;
wire   [7:0] add_ln75_1_fu_3135_p2;
wire   [1:0] lshr_ln75_2_fu_3141_p4;
wire   [7:0] empty_fu_3171_p2;
wire   [1:0] lshr_ln75_3_fu_3177_p4;
wire   [7:0] add_ln75_2_fu_3207_p2;
wire   [1:0] lshr_ln75_4_fu_3213_p4;
wire   [7:0] add_ln75_3_fu_3243_p2;
wire   [1:0] lshr_ln75_5_fu_3249_p4;
wire   [7:0] empty_929_fu_3279_p2;
wire   [1:0] lshr_ln75_6_fu_3285_p4;
wire   [7:0] add_ln75_4_fu_3315_p2;
wire   [1:0] lshr_ln75_7_fu_3321_p4;
wire   [7:0] add_ln75_5_fu_3351_p2;
wire   [1:0] lshr_ln75_8_fu_3357_p4;
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
wire   [5:0] tmp_s_fu_2692_p1;
wire   [5:0] tmp_s_fu_2692_p3;
wire   [5:0] tmp_s_fu_2692_p5;
wire   [5:0] tmp_s_fu_2692_p7;
wire   [5:0] tmp_s_fu_2692_p9;
wire   [5:0] tmp_s_fu_2692_p11;
wire   [5:0] tmp_s_fu_2692_p13;
wire   [5:0] tmp_s_fu_2692_p15;
wire  signed [5:0] tmp_s_fu_2692_p17;
wire  signed [5:0] tmp_s_fu_2692_p19;
wire  signed [5:0] tmp_s_fu_2692_p21;
wire  signed [5:0] tmp_s_fu_2692_p23;
wire  signed [5:0] tmp_s_fu_2692_p25;
wire  signed [5:0] tmp_s_fu_2692_p27;
wire  signed [5:0] tmp_s_fu_2692_p29;
wire  signed [5:0] tmp_s_fu_2692_p31;
wire   [5:0] tmp_79_fu_2798_p1;
wire   [5:0] tmp_79_fu_2798_p3;
wire   [5:0] tmp_79_fu_2798_p5;
wire   [5:0] tmp_79_fu_2798_p7;
wire   [5:0] tmp_79_fu_2798_p9;
wire   [5:0] tmp_79_fu_2798_p11;
wire   [5:0] tmp_79_fu_2798_p13;
wire   [5:0] tmp_79_fu_2798_p15;
wire  signed [5:0] tmp_79_fu_2798_p17;
wire  signed [5:0] tmp_79_fu_2798_p19;
wire  signed [5:0] tmp_79_fu_2798_p21;
wire  signed [5:0] tmp_79_fu_2798_p23;
wire  signed [5:0] tmp_79_fu_2798_p25;
wire  signed [5:0] tmp_79_fu_2798_p27;
wire  signed [5:0] tmp_79_fu_2798_p29;
wire  signed [5:0] tmp_79_fu_2798_p31;
wire   [5:0] tmp_80_fu_2870_p1;
wire   [5:0] tmp_80_fu_2870_p3;
wire   [5:0] tmp_80_fu_2870_p5;
wire   [5:0] tmp_80_fu_2870_p7;
wire   [5:0] tmp_80_fu_2870_p9;
wire   [5:0] tmp_80_fu_2870_p11;
wire   [5:0] tmp_80_fu_2870_p13;
wire   [5:0] tmp_80_fu_2870_p15;
wire  signed [5:0] tmp_80_fu_2870_p17;
wire  signed [5:0] tmp_80_fu_2870_p19;
wire  signed [5:0] tmp_80_fu_2870_p21;
wire  signed [5:0] tmp_80_fu_2870_p23;
wire  signed [5:0] tmp_80_fu_2870_p25;
wire  signed [5:0] tmp_80_fu_2870_p27;
wire  signed [5:0] tmp_80_fu_2870_p29;
wire  signed [5:0] tmp_80_fu_2870_p31;
wire   [5:0] tmp_81_fu_2942_p1;
wire   [5:0] tmp_81_fu_2942_p3;
wire   [5:0] tmp_81_fu_2942_p5;
wire   [5:0] tmp_81_fu_2942_p7;
wire   [5:0] tmp_81_fu_2942_p9;
wire   [5:0] tmp_81_fu_2942_p11;
wire   [5:0] tmp_81_fu_2942_p13;
wire   [5:0] tmp_81_fu_2942_p15;
wire  signed [5:0] tmp_81_fu_2942_p17;
wire  signed [5:0] tmp_81_fu_2942_p19;
wire  signed [5:0] tmp_81_fu_2942_p21;
wire  signed [5:0] tmp_81_fu_2942_p23;
wire  signed [5:0] tmp_81_fu_2942_p25;
wire  signed [5:0] tmp_81_fu_2942_p27;
wire  signed [5:0] tmp_81_fu_2942_p29;
wire  signed [5:0] tmp_81_fu_2942_p31;
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
#0 i_fu_358 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U1849(.din0(activations2_load_2),.din1(activations2_4_load_2),.din2(activations2_8_load_2),.din3(activations2_12_load_2),.din4(activations2_16_load_2),.din5(activations2_20_load_2),.din6(activations2_24_load_2),.din7(activations2_28_load_2),.din8(activations2_32_load_2),.din9(activations2_36_load_2),.din10(activations2_40_load_2),.din11(activations2_44_load_2),.din12(activations2_48_load_2),.din13(activations2_52_load_2),.din14(activations2_56_load_2),.din15(activations2_60_load_2),.def(tmp_s_fu_2692_p33),.sel(trunc_ln73_fu_2688_p1),.dout(tmp_s_fu_2692_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U1850(.din0(activations2_1_load_2),.din1(activations2_5_load_2),.din2(activations2_9_load_2),.din3(activations2_13_load_2),.din4(activations2_17_load_2),.din5(activations2_21_load_2),.din6(activations2_25_load_2),.din7(activations2_29_load_2),.din8(activations2_33_load_2),.din9(activations2_37_load_2),.din10(activations2_41_load_2),.din11(activations2_45_load_2),.din12(activations2_49_load_2),.din13(activations2_53_load_2),.din14(activations2_57_load_2),.din15(activations2_61_load_2),.def(tmp_79_fu_2798_p33),.sel(trunc_ln73_fu_2688_p1),.dout(tmp_79_fu_2798_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U1851(.din0(activations2_2_load_2),.din1(activations2_6_load_2),.din2(activations2_10_load_2),.din3(activations2_14_load_2),.din4(activations2_18_load_2),.din5(activations2_22_load_2),.din6(activations2_26_load_2),.din7(activations2_30_load_2),.din8(activations2_34_load_2),.din9(activations2_38_load_2),.din10(activations2_42_load_2),.din11(activations2_46_load_2),.din12(activations2_50_load_2),.din13(activations2_54_load_2),.din14(activations2_58_load_2),.din15(activations2_62_load_2),.def(tmp_80_fu_2870_p33),.sel(trunc_ln73_fu_2688_p1),.dout(tmp_80_fu_2870_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U1852(.din0(activations2_3_load_2),.din1(activations2_7_load_2),.din2(activations2_11_load_2),.din3(activations2_15_load_2),.din4(activations2_19_load_2),.din5(activations2_23_load_2),.din6(activations2_27_load_2),.din7(activations2_31_load_2),.din8(activations2_35_load_2),.din9(activations2_39_load_2),.din10(activations2_43_load_2),.din11(activations2_47_load_2),.din12(activations2_51_load_2),.din13(activations2_55_load_2),.din14(activations2_59_load_2),.din15(activations2_63_load_2),.def(tmp_81_fu_2942_p33),.sel(trunc_ln73_fu_2688_p1),.dout(tmp_81_fu_2942_p35));
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
        if (((tmp_fu_2676_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_358 <= add_ln73_fu_3014_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_358 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln2_reg_3433 <= {{sub_ln75_fu_2772_p2[7:6]}};
        lshr_ln2_reg_3433_pp0_iter1_reg <= lshr_ln2_reg_3433;
        tmp_77_reg_3438 <= {{sub_ln75_fu_2772_p2[7:2]}};
        tmp_77_reg_3438_pp0_iter1_reg <= tmp_77_reg_3438;
        tmp_79_reg_3443 <= tmp_79_fu_2798_p35;
        tmp_80_reg_3450 <= tmp_80_fu_2870_p35;
        tmp_81_reg_3457 <= tmp_81_fu_2942_p35;
        tmp_s_reg_3426 <= tmp_s_fu_2692_p35;
        trunc_ln73_reg_3422 <= trunc_ln73_fu_2688_p1;
        trunc_ln73_reg_3422_pp0_iter1_reg <= trunc_ln73_reg_3422;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_predicate_pred1008_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd16);
        ap_predicate_pred1015_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd0);
        ap_predicate_pred1018_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd44);
        ap_predicate_pred1022_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd24);
        ap_predicate_pred1026_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd4);
        ap_predicate_pred1030_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd48);
        ap_predicate_pred1034_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd28);
        ap_predicate_pred1038_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd8);
        ap_predicate_pred1042_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd52);
        ap_predicate_pred1046_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd32);
        ap_predicate_pred1050_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd12);
        ap_predicate_pred1054_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd56);
        ap_predicate_pred1058_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd36);
        ap_predicate_pred1064_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd20);
        ap_predicate_pred1068_state9 <= (~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd40) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd20) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd36) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd56) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd12) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd32) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd52) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd8) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd28) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd48) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd4) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd24) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd44) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd0) & ~(trunc_ln73_reg_3422_pp0_iter6_reg == 6'd16));
        ap_predicate_pred999_state9 <= (trunc_ln73_reg_3422_pp0_iter6_reg == 6'd40);
        lshr_ln2_reg_3433_pp0_iter2_reg <= lshr_ln2_reg_3433_pp0_iter1_reg;
        lshr_ln2_reg_3433_pp0_iter3_reg <= lshr_ln2_reg_3433_pp0_iter2_reg;
        lshr_ln2_reg_3433_pp0_iter4_reg <= lshr_ln2_reg_3433_pp0_iter3_reg;
        lshr_ln2_reg_3433_pp0_iter5_reg <= lshr_ln2_reg_3433_pp0_iter4_reg;
        lshr_ln2_reg_3433_pp0_iter6_reg <= lshr_ln2_reg_3433_pp0_iter5_reg;
        lshr_ln2_reg_3433_pp0_iter7_reg <= lshr_ln2_reg_3433_pp0_iter6_reg;
        mul_16_i_reg_3484 <= grp_fu_33269_p_dout0;
        mul_1_1_i_reg_3544 <= grp_fu_33281_p_dout0;
        mul_1_2_i_reg_3564 <= grp_fu_33285_p_dout0;
        mul_1_i_reg_3524 <= grp_fu_33277_p_dout0;
        mul_216_i_reg_3504 <= grp_fu_33273_p_dout0;
        mul_2_1_i_reg_3604 <= grp_fu_33293_p_dout0;
        mul_2_2_i_reg_3624 <= grp_fu_33297_p_dout0;
        mul_2_i_reg_3584 <= grp_fu_33289_p_dout0;
        mul_3_1_i_reg_3664 <= grp_fu_33305_p_dout0;
        mul_3_2_i_reg_3684 <= grp_fu_33309_p_dout0;
        mul_3_i_reg_3644 <= grp_fu_33301_p_dout0;
        mul_i1_reg_3464 <= grp_fu_33265_p_dout0;
        tmp_77_reg_3438_pp0_iter2_reg <= tmp_77_reg_3438_pp0_iter1_reg;
        tmp_77_reg_3438_pp0_iter3_reg <= tmp_77_reg_3438_pp0_iter2_reg;
        tmp_77_reg_3438_pp0_iter4_reg <= tmp_77_reg_3438_pp0_iter3_reg;
        tmp_77_reg_3438_pp0_iter5_reg <= tmp_77_reg_3438_pp0_iter4_reg;
        tmp_77_reg_3438_pp0_iter6_reg <= tmp_77_reg_3438_pp0_iter5_reg;
        tmp_77_reg_3438_pp0_iter7_reg <= tmp_77_reg_3438_pp0_iter6_reg;
        trunc_ln73_reg_3422_pp0_iter2_reg <= trunc_ln73_reg_3422_pp0_iter1_reg;
        trunc_ln73_reg_3422_pp0_iter3_reg <= trunc_ln73_reg_3422_pp0_iter2_reg;
        trunc_ln73_reg_3422_pp0_iter4_reg <= trunc_ln73_reg_3422_pp0_iter3_reg;
        trunc_ln73_reg_3422_pp0_iter5_reg <= trunc_ln73_reg_3422_pp0_iter4_reg;
        trunc_ln73_reg_3422_pp0_iter6_reg <= trunc_ln73_reg_3422_pp0_iter5_reg;
    end
end
always @ (*) begin
    if (((tmp_fu_2676_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_358;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_16_address0_local = 'bx;
        end
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_16_d0_local = 'bx;
        end
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_17_address0_local = 'bx;
        end
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_17_d0_local = 'bx;
        end
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_18_address0_local = 'bx;
        end
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_18_d0_local = 'bx;
        end
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_19_address0_local = 'bx;
        end
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_19_d0_local = 'bx;
        end
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_7_fu_3295_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_16_i_reg_3484;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_3_i_reg_3644;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_20_address0_local = 'bx;
        end
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_20_d0_local = 'bx;
        end
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_21_address0_local = 'bx;
        end
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_21_d0_local = 'bx;
        end
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_22_address0_local = 'bx;
        end
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_22_d0_local = 'bx;
        end
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_23_address0_local = 'bx;
        end
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1026_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_23_d0_local = 'bx;
        end
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1026_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_24_address0_local = 'bx;
        end
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_24_d0_local = 'bx;
        end
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_25_address0_local = 'bx;
        end
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_25_d0_local = 'bx;
        end
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_26_address0_local = 'bx;
        end
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_26_d0_local = 'bx;
        end
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_27_address0_local = 'bx;
        end
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1030_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_27_d0_local = 'bx;
        end
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1030_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_28_address0_local = 'bx;
        end
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_28_d0_local = 'bx;
        end
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_29_address0_local = 'bx;
        end
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_29_d0_local = 'bx;
        end
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_8_fu_3331_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_216_i_reg_3504;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_3_1_i_reg_3664;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_30_address0_local = 'bx;
        end
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_30_d0_local = 'bx;
        end
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_31_address0_local = 'bx;
        end
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1034_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_31_d0_local = 'bx;
        end
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1034_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_32_address0_local = 'bx;
        end
    end else begin
        delta_weights3_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_32_ce0_local = 1'b1;
    end else begin
        delta_weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_32_d0_local = 'bx;
        end
    end else begin
        delta_weights3_32_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_32_we0_local = 1'b1;
    end else begin
        delta_weights3_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_33_address0_local = 'bx;
        end
    end else begin
        delta_weights3_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_33_ce0_local = 1'b1;
    end else begin
        delta_weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_33_d0_local = 'bx;
        end
    end else begin
        delta_weights3_33_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_33_we0_local = 1'b1;
    end else begin
        delta_weights3_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_34_address0_local = 'bx;
        end
    end else begin
        delta_weights3_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_34_ce0_local = 1'b1;
    end else begin
        delta_weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_34_d0_local = 'bx;
        end
    end else begin
        delta_weights3_34_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_34_we0_local = 1'b1;
    end else begin
        delta_weights3_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_35_address0_local = 'bx;
        end
    end else begin
        delta_weights3_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_35_ce0_local = 1'b1;
    end else begin
        delta_weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1038_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_35_d0_local = 'bx;
        end
    end else begin
        delta_weights3_35_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1038_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)))) begin
        delta_weights3_35_we0_local = 1'b1;
    end else begin
        delta_weights3_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_36_address0_local = 'bx;
        end
    end else begin
        delta_weights3_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_36_ce0_local = 1'b1;
    end else begin
        delta_weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_36_d0_local = 'bx;
        end
    end else begin
        delta_weights3_36_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_36_we0_local = 1'b1;
    end else begin
        delta_weights3_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_37_address0_local = 'bx;
        end
    end else begin
        delta_weights3_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_37_ce0_local = 1'b1;
    end else begin
        delta_weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_37_d0_local = 'bx;
        end
    end else begin
        delta_weights3_37_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_37_we0_local = 1'b1;
    end else begin
        delta_weights3_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_38_address0_local = 'bx;
        end
    end else begin
        delta_weights3_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_38_ce0_local = 1'b1;
    end else begin
        delta_weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_38_d0_local = 'bx;
        end
    end else begin
        delta_weights3_38_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_38_we0_local = 1'b1;
    end else begin
        delta_weights3_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_39_address0_local = 'bx;
        end
    end else begin
        delta_weights3_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_39_ce0_local = 1'b1;
    end else begin
        delta_weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1042_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_39_d0_local = 'bx;
        end
    end else begin
        delta_weights3_39_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1042_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)))) begin
        delta_weights3_39_we0_local = 1'b1;
    end else begin
        delta_weights3_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_9_fu_3367_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_1_i_reg_3524;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_3_2_i_reg_3684;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_40_address0_local = 'bx;
        end
    end else begin
        delta_weights3_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_40_ce0_local = 1'b1;
    end else begin
        delta_weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_40_d0_local = 'bx;
        end
    end else begin
        delta_weights3_40_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_40_we0_local = 1'b1;
    end else begin
        delta_weights3_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_41_address0_local = 'bx;
        end
    end else begin
        delta_weights3_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_41_ce0_local = 1'b1;
    end else begin
        delta_weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_41_d0_local = 'bx;
        end
    end else begin
        delta_weights3_41_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_41_we0_local = 1'b1;
    end else begin
        delta_weights3_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_42_address0_local = 'bx;
        end
    end else begin
        delta_weights3_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_42_ce0_local = 1'b1;
    end else begin
        delta_weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_42_d0_local = 'bx;
        end
    end else begin
        delta_weights3_42_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_42_we0_local = 1'b1;
    end else begin
        delta_weights3_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_43_address0_local = 'bx;
        end
    end else begin
        delta_weights3_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_43_ce0_local = 1'b1;
    end else begin
        delta_weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1046_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_43_d0_local = 'bx;
        end
    end else begin
        delta_weights3_43_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1046_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)))) begin
        delta_weights3_43_we0_local = 1'b1;
    end else begin
        delta_weights3_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_44_address0_local = 'bx;
        end
    end else begin
        delta_weights3_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_44_ce0_local = 1'b1;
    end else begin
        delta_weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_44_d0_local = 'bx;
        end
    end else begin
        delta_weights3_44_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_44_we0_local = 1'b1;
    end else begin
        delta_weights3_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_45_address0_local = 'bx;
        end
    end else begin
        delta_weights3_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_45_ce0_local = 1'b1;
    end else begin
        delta_weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_45_d0_local = 'bx;
        end
    end else begin
        delta_weights3_45_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_45_we0_local = 1'b1;
    end else begin
        delta_weights3_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_46_address0_local = 'bx;
        end
    end else begin
        delta_weights3_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_46_ce0_local = 1'b1;
    end else begin
        delta_weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_46_d0_local = 'bx;
        end
    end else begin
        delta_weights3_46_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_46_we0_local = 1'b1;
    end else begin
        delta_weights3_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_47_address0_local = 'bx;
        end
    end else begin
        delta_weights3_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_47_ce0_local = 1'b1;
    end else begin
        delta_weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1050_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_47_d0_local = 'bx;
        end
    end else begin
        delta_weights3_47_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1050_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)))) begin
        delta_weights3_47_we0_local = 1'b1;
    end else begin
        delta_weights3_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_48_address0_local = 'bx;
        end
    end else begin
        delta_weights3_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_48_ce0_local = 1'b1;
    end else begin
        delta_weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_48_d0_local = 'bx;
        end
    end else begin
        delta_weights3_48_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_48_we0_local = 1'b1;
    end else begin
        delta_weights3_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_49_address0_local = 'bx;
        end
    end else begin
        delta_weights3_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_49_ce0_local = 1'b1;
    end else begin
        delta_weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_49_d0_local = 'bx;
        end
    end else begin
        delta_weights3_49_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_49_we0_local = 1'b1;
    end else begin
        delta_weights3_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_6_fu_3259_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_i1_reg_3464;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_2_2_i_reg_3624;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_50_address0_local = 'bx;
        end
    end else begin
        delta_weights3_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_50_ce0_local = 1'b1;
    end else begin
        delta_weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_50_d0_local = 'bx;
        end
    end else begin
        delta_weights3_50_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_50_we0_local = 1'b1;
    end else begin
        delta_weights3_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_51_address0_local = 'bx;
        end
    end else begin
        delta_weights3_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_51_ce0_local = 1'b1;
    end else begin
        delta_weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1054_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_51_d0_local = 'bx;
        end
    end else begin
        delta_weights3_51_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1054_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_51_we0_local = 1'b1;
    end else begin
        delta_weights3_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_2_fu_3115_p1;
        end else begin
            delta_weights3_52_address0_local = 'bx;
        end
    end else begin
        delta_weights3_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_52_ce0_local = 1'b1;
    end else begin
        delta_weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_i1_reg_3464;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_1_1_i_reg_3544;
        end else begin
            delta_weights3_52_d0_local = 'bx;
        end
    end else begin
        delta_weights3_52_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_52_we0_local = 1'b1;
    end else begin
        delta_weights3_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_3_fu_3151_p1;
        end else begin
            delta_weights3_53_address0_local = 'bx;
        end
    end else begin
        delta_weights3_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_53_ce0_local = 1'b1;
    end else begin
        delta_weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_16_i_reg_3484;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_1_2_i_reg_3564;
        end else begin
            delta_weights3_53_d0_local = 'bx;
        end
    end else begin
        delta_weights3_53_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_53_we0_local = 1'b1;
    end else begin
        delta_weights3_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_4_fu_3187_p1;
        end else begin
            delta_weights3_54_address0_local = 'bx;
        end
    end else begin
        delta_weights3_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_54_ce0_local = 1'b1;
    end else begin
        delta_weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_216_i_reg_3504;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_2_i_reg_3584;
        end else begin
            delta_weights3_54_d0_local = 'bx;
        end
    end else begin
        delta_weights3_54_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_54_we0_local = 1'b1;
    end else begin
        delta_weights3_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_5_fu_3223_p1;
        end else begin
            delta_weights3_55_address0_local = 'bx;
        end
    end else begin
        delta_weights3_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_55_ce0_local = 1'b1;
    end else begin
        delta_weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_1_i_reg_3524;
        end else if ((ap_predicate_pred1058_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_2_1_i_reg_3604;
        end else begin
            delta_weights3_55_d0_local = 'bx;
        end
    end else begin
        delta_weights3_55_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1058_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)))) begin
        delta_weights3_55_we0_local = 1'b1;
    end else begin
        delta_weights3_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_56_address0_local = 'bx;
        end
    end else begin
        delta_weights3_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_56_ce0_local = 1'b1;
    end else begin
        delta_weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_56_d0_local = 'bx;
        end
    end else begin
        delta_weights3_56_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_56_we0_local = 1'b1;
    end else begin
        delta_weights3_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_57_address0_local = 'bx;
        end
    end else begin
        delta_weights3_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_57_ce0_local = 1'b1;
    end else begin
        delta_weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_57_d0_local = 'bx;
        end
    end else begin
        delta_weights3_57_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_57_we0_local = 1'b1;
    end else begin
        delta_weights3_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_58_address0_local = 'bx;
        end
    end else begin
        delta_weights3_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_58_ce0_local = 1'b1;
    end else begin
        delta_weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_216_i_reg_3504;
        end else begin
            delta_weights3_58_d0_local = 'bx;
        end
    end else begin
        delta_weights3_58_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_58_we0_local = 1'b1;
    end else begin
        delta_weights3_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_59_address0_local = 'bx;
        end
    end else begin
        delta_weights3_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_59_ce0_local = 1'b1;
    end else begin
        delta_weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1008_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_1_i_reg_3524;
        end else begin
            delta_weights3_59_d0_local = 'bx;
        end
    end else begin
        delta_weights3_59_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1008_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_59_we0_local = 1'b1;
    end else begin
        delta_weights3_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_7_fu_3295_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_16_i_reg_3484;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_3_i_reg_3644;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_2_fu_3115_p1;
        end else begin
            delta_weights3_60_address0_local = 'bx;
        end
    end else begin
        delta_weights3_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_60_ce0_local = 1'b1;
    end else begin
        delta_weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_i1_reg_3464;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_1_1_i_reg_3544;
        end else begin
            delta_weights3_60_d0_local = 'bx;
        end
    end else begin
        delta_weights3_60_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_60_we0_local = 1'b1;
    end else begin
        delta_weights3_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_3_fu_3151_p1;
        end else begin
            delta_weights3_61_address0_local = 'bx;
        end
    end else begin
        delta_weights3_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_61_ce0_local = 1'b1;
    end else begin
        delta_weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_16_i_reg_3484;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_1_2_i_reg_3564;
        end else begin
            delta_weights3_61_d0_local = 'bx;
        end
    end else begin
        delta_weights3_61_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_61_we0_local = 1'b1;
    end else begin
        delta_weights3_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_8_fu_3331_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_4_fu_3187_p1;
        end else begin
            delta_weights3_62_address0_local = 'bx;
        end
    end else begin
        delta_weights3_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_62_ce0_local = 1'b1;
    end else begin
        delta_weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_3_1_i_reg_3664;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_216_i_reg_3504;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_2_i_reg_3584;
        end else begin
            delta_weights3_62_d0_local = 'bx;
        end
    end else begin
        delta_weights3_62_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_62_we0_local = 1'b1;
    end else begin
        delta_weights3_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_9_fu_3367_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_5_fu_3223_p1;
        end else begin
            delta_weights3_63_address0_local = 'bx;
        end
    end else begin
        delta_weights3_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_63_ce0_local = 1'b1;
    end else begin
        delta_weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1068_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_3_2_i_reg_3684;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_1_i_reg_3524;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_2_1_i_reg_3604;
        end else begin
            delta_weights3_63_d0_local = 'bx;
        end
    end else begin
        delta_weights3_63_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1068_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_63_we0_local = 1'b1;
    end else begin
        delta_weights3_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_3187_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_8_fu_3331_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_2_i_reg_3584;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_216_i_reg_3504;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_3_1_i_reg_3664;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_5_fu_3223_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_9_fu_3367_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_2_1_i_reg_3604;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_1_i_reg_3524;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_3_2_i_reg_3684;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_6_fu_3259_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_2_2_i_reg_3624;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_i1_reg_3464;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_7_fu_3295_p1;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_3_fu_3151_p1;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_1_fu_3025_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_3_i_reg_3644;
        end else if ((ap_predicate_pred1018_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_1_2_i_reg_3564;
        end else if ((ap_predicate_pred1022_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_16_i_reg_3484;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1022_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1018_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_1_fu_3025_p1;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_3115_p1;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_6_fu_3259_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1015_state9 == 1'b1)) begin
            delta_weights3_d0_local = mul_i1_reg_3464;
        end else if ((ap_predicate_pred1064_state9 == 1'b1)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_3544;
        end else if ((ap_predicate_pred999_state9 == 1'b1)) begin
            delta_weights3_d0_local = mul_2_2_i_reg_3624;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1015_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1064_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred999_state9 == 1'b1)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
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
assign add_ln73_fu_3014_p2 = (ap_sig_allocacmp_i_6 + 7'd4);
assign add_ln75_1_fu_3135_p2 = (tmp_78_fu_3092_p3 + 8'd2);
assign add_ln75_2_fu_3207_p2 = (tmp_78_fu_3092_p3 + 8'd4);
assign add_ln75_3_fu_3243_p2 = (tmp_78_fu_3092_p3 + 8'd5);
assign add_ln75_4_fu_3315_p2 = (tmp_78_fu_3092_p3 + 8'd7);
assign add_ln75_5_fu_3351_p2 = (tmp_78_fu_3092_p3 + 8'd8);
assign add_ln75_fu_3099_p2 = (tmp_78_fu_3092_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
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
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign empty_929_fu_3279_p2 = (tmp_78_fu_3092_p3 + 8'd6);
assign empty_fu_3171_p2 = (tmp_78_fu_3092_p3 + 8'd3);
assign grp_fu_33265_p_ce = 1'b1;
assign grp_fu_33265_p_din0 = tmp_s_reg_3426;
assign grp_fu_33265_p_din1 = p_reload690;
assign grp_fu_33269_p_ce = 1'b1;
assign grp_fu_33269_p_din0 = tmp_s_reg_3426;
assign grp_fu_33269_p_din1 = p_reload689;
assign grp_fu_33273_p_ce = 1'b1;
assign grp_fu_33273_p_din0 = tmp_s_reg_3426;
assign grp_fu_33273_p_din1 = p_reload;
assign grp_fu_33277_p_ce = 1'b1;
assign grp_fu_33277_p_din0 = tmp_79_reg_3443;
assign grp_fu_33277_p_din1 = p_reload690;
assign grp_fu_33281_p_ce = 1'b1;
assign grp_fu_33281_p_din0 = tmp_79_reg_3443;
assign grp_fu_33281_p_din1 = p_reload689;
assign grp_fu_33285_p_ce = 1'b1;
assign grp_fu_33285_p_din0 = tmp_79_reg_3443;
assign grp_fu_33285_p_din1 = p_reload;
assign grp_fu_33289_p_ce = 1'b1;
assign grp_fu_33289_p_din0 = tmp_80_reg_3450;
assign grp_fu_33289_p_din1 = p_reload690;
assign grp_fu_33293_p_ce = 1'b1;
assign grp_fu_33293_p_din0 = tmp_80_reg_3450;
assign grp_fu_33293_p_din1 = p_reload689;
assign grp_fu_33297_p_ce = 1'b1;
assign grp_fu_33297_p_din0 = tmp_80_reg_3450;
assign grp_fu_33297_p_din1 = p_reload;
assign grp_fu_33301_p_ce = 1'b1;
assign grp_fu_33301_p_din0 = tmp_81_reg_3457;
assign grp_fu_33301_p_din1 = p_reload690;
assign grp_fu_33305_p_ce = 1'b1;
assign grp_fu_33305_p_din0 = tmp_81_reg_3457;
assign grp_fu_33305_p_din1 = p_reload689;
assign grp_fu_33309_p_ce = 1'b1;
assign grp_fu_33309_p_din0 = tmp_81_reg_3457;
assign grp_fu_33309_p_din1 = p_reload;
assign lshr_ln75_1_fu_3105_p4 = {{add_ln75_fu_3099_p2[7:6]}};
assign lshr_ln75_2_fu_3141_p4 = {{add_ln75_1_fu_3135_p2[7:6]}};
assign lshr_ln75_3_fu_3177_p4 = {{empty_fu_3171_p2[7:6]}};
assign lshr_ln75_4_fu_3213_p4 = {{add_ln75_2_fu_3207_p2[7:6]}};
assign lshr_ln75_5_fu_3249_p4 = {{add_ln75_3_fu_3243_p2[7:6]}};
assign lshr_ln75_6_fu_3285_p4 = {{empty_929_fu_3279_p2[7:6]}};
assign lshr_ln75_7_fu_3321_p4 = {{add_ln75_4_fu_3315_p2[7:6]}};
assign lshr_ln75_8_fu_3357_p4 = {{add_ln75_5_fu_3351_p2[7:6]}};
assign p_shl_fu_2764_p3 = {{trunc_ln73_fu_2688_p1}, {2'd0}};
assign sub_ln75_fu_2772_p2 = (p_shl_fu_2764_p3 - zext_ln75_fu_2684_p1);
assign tmp_78_fu_3092_p3 = {{tmp_77_reg_3438_pp0_iter7_reg}, {2'd3}};
assign tmp_79_fu_2798_p33 = 'bx;
assign tmp_80_fu_2870_p33 = 'bx;
assign tmp_81_fu_2942_p33 = 'bx;
assign tmp_fu_2676_p3 = ap_sig_allocacmp_i_6[32'd6];
assign tmp_s_fu_2692_p33 = 'bx;
assign trunc_ln73_fu_2688_p1 = ap_sig_allocacmp_i_6[5:0];
assign zext_ln75_1_fu_3025_p1 = lshr_ln2_reg_3433_pp0_iter7_reg;
assign zext_ln75_2_fu_3115_p1 = lshr_ln75_1_fu_3105_p4;
assign zext_ln75_3_fu_3151_p1 = lshr_ln75_2_fu_3141_p4;
assign zext_ln75_4_fu_3187_p1 = lshr_ln75_3_fu_3177_p4;
assign zext_ln75_5_fu_3223_p1 = lshr_ln75_4_fu_3213_p4;
assign zext_ln75_6_fu_3259_p1 = lshr_ln75_5_fu_3249_p4;
assign zext_ln75_7_fu_3295_p1 = lshr_ln75_6_fu_3285_p4;
assign zext_ln75_8_fu_3331_p1 = lshr_ln75_7_fu_3321_p4;
assign zext_ln75_9_fu_3367_p1 = lshr_ln75_8_fu_3357_p4;
assign zext_ln75_fu_2684_p1 = ap_sig_allocacmp_i_6;
endmodule 
