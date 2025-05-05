module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases_0_val,biases_1_val,biases_2_val,biases_3_val,biases_4_val,biases_5_val,biases_6_val,biases_7_val,biases_8_val,biases_9_val,biases_10_val,biases_11_val,biases_12_val,biases_13_val,biases_14_val,biases_15_val,biases_16_val,biases_17_val,biases_18_val,biases_19_val,biases_20_val,biases_21_val,biases_22_val,biases_23_val,biases_24_val,biases_25_val,biases_26_val,biases_27_val,biases_28_val,biases_29_val,biases_30_val,biases_31_val,biases_32_val,biases_33_val,biases_34_val,biases_35_val,biases_36_val,biases_37_val,biases_38_val,biases_39_val,biases_40_val,biases_41_val,biases_42_val,biases_43_val,biases_44_val,biases_45_val,biases_46_val,biases_47_val,biases_48_val,biases_49_val,biases_50_val,biases_51_val,biases_52_val,biases_53_val,biases_54_val,biases_55_val,biases_56_val,biases_57_val,biases_58_val,biases_59_val,biases_60_val,biases_61_val,biases_62_val,biases_63_val,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,weights2_32_address0,weights2_32_ce0,weights2_32_q0,weights2_33_address0,weights2_33_ce0,weights2_33_q0,weights2_34_address0,weights2_34_ce0,weights2_34_q0,weights2_35_address0,weights2_35_ce0,weights2_35_q0,weights2_36_address0,weights2_36_ce0,weights2_36_q0,weights2_37_address0,weights2_37_ce0,weights2_37_q0,weights2_38_address0,weights2_38_ce0,weights2_38_q0,weights2_39_address0,weights2_39_ce0,weights2_39_q0,weights2_40_address0,weights2_40_ce0,weights2_40_q0,weights2_41_address0,weights2_41_ce0,weights2_41_q0,weights2_42_address0,weights2_42_ce0,weights2_42_q0,weights2_43_address0,weights2_43_ce0,weights2_43_q0,weights2_44_address0,weights2_44_ce0,weights2_44_q0,weights2_45_address0,weights2_45_ce0,weights2_45_q0,weights2_46_address0,weights2_46_ce0,weights2_46_q0,weights2_47_address0,weights2_47_ce0,weights2_47_q0,weights2_48_address0,weights2_48_ce0,weights2_48_q0,weights2_49_address0,weights2_49_ce0,weights2_49_q0,weights2_50_address0,weights2_50_ce0,weights2_50_q0,weights2_51_address0,weights2_51_ce0,weights2_51_q0,weights2_52_address0,weights2_52_ce0,weights2_52_q0,weights2_53_address0,weights2_53_ce0,weights2_53_q0,weights2_54_address0,weights2_54_ce0,weights2_54_q0,weights2_55_address0,weights2_55_ce0,weights2_55_q0,weights2_56_address0,weights2_56_ce0,weights2_56_q0,weights2_57_address0,weights2_57_ce0,weights2_57_q0,weights2_58_address0,weights2_58_ce0,weights2_58_q0,weights2_59_address0,weights2_59_ce0,weights2_59_q0,weights2_60_address0,weights2_60_ce0,weights2_60_q0,weights2_61_address0,weights2_61_ce0,weights2_61_q0,weights2_62_address0,weights2_62_ce0,weights2_62_q0,weights2_63_address0,weights2_63_ce0,weights2_63_q0,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,activations_3_i,activations_3_o,activations_3_o_ap_vld,activations_4_i,activations_4_o,activations_4_o_ap_vld,activations_5_i,activations_5_o,activations_5_o_ap_vld,activations_6_i,activations_6_o,activations_6_o_ap_vld,activations_7_i,activations_7_o,activations_7_o_ap_vld,activations_8_i,activations_8_o,activations_8_o_ap_vld,activations_9_i,activations_9_o,activations_9_o_ap_vld,activations_10_i,activations_10_o,activations_10_o_ap_vld,activations_11_i,activations_11_o,activations_11_o_ap_vld,activations_12_i,activations_12_o,activations_12_o_ap_vld,activations_13_i,activations_13_o,activations_13_o_ap_vld,activations_14_i,activations_14_o,activations_14_o_ap_vld,activations_15_i,activations_15_o,activations_15_o_ap_vld,activations_16_i,activations_16_o,activations_16_o_ap_vld,activations_17_i,activations_17_o,activations_17_o_ap_vld,activations_18_i,activations_18_o,activations_18_o_ap_vld,activations_19_i,activations_19_o,activations_19_o_ap_vld,activations_20_i,activations_20_o,activations_20_o_ap_vld,activations_21_i,activations_21_o,activations_21_o_ap_vld,activations_22_i,activations_22_o,activations_22_o_ap_vld,activations_23_i,activations_23_o,activations_23_o_ap_vld,activations_24_i,activations_24_o,activations_24_o_ap_vld,activations_25_i,activations_25_o,activations_25_o_ap_vld,activations_26_i,activations_26_o,activations_26_o_ap_vld,activations_27_i,activations_27_o,activations_27_o_ap_vld,activations_28_i,activations_28_o,activations_28_o_ap_vld,activations_29_i,activations_29_o,activations_29_o_ap_vld,activations_30_i,activations_30_o,activations_30_o_ap_vld,activations_31_i,activations_31_o,activations_31_o_ap_vld,activations_32_i,activations_32_o,activations_32_o_ap_vld,activations_33_i,activations_33_o,activations_33_o_ap_vld,activations_34_i,activations_34_o,activations_34_o_ap_vld,activations_35_i,activations_35_o,activations_35_o_ap_vld,activations_36_i,activations_36_o,activations_36_o_ap_vld,activations_37_i,activations_37_o,activations_37_o_ap_vld,activations_38_i,activations_38_o,activations_38_o_ap_vld,activations_39_i,activations_39_o,activations_39_o_ap_vld,activations_40_i,activations_40_o,activations_40_o_ap_vld,activations_41_i,activations_41_o,activations_41_o_ap_vld,activations_42_i,activations_42_o,activations_42_o_ap_vld,activations_43_i,activations_43_o,activations_43_o_ap_vld,activations_44_i,activations_44_o,activations_44_o_ap_vld,activations_45_i,activations_45_o,activations_45_o_ap_vld,activations_46_i,activations_46_o,activations_46_o_ap_vld,activations_47_i,activations_47_o,activations_47_o_ap_vld,activations_48_i,activations_48_o,activations_48_o_ap_vld,activations_49_i,activations_49_o,activations_49_o_ap_vld,activations_50_i,activations_50_o,activations_50_o_ap_vld,activations_51_i,activations_51_o,activations_51_o_ap_vld,activations_52_i,activations_52_o,activations_52_o_ap_vld,activations_53_i,activations_53_o,activations_53_o_ap_vld,activations_54_i,activations_54_o,activations_54_o_ap_vld,activations_55_i,activations_55_o,activations_55_o_ap_vld,activations_56_i,activations_56_o,activations_56_o_ap_vld,activations_57_i,activations_57_o,activations_57_o_ap_vld,activations_58_i,activations_58_o,activations_58_o_ap_vld,activations_59_i,activations_59_o,activations_59_o_ap_vld,activations_60_i,activations_60_o,activations_60_o_ap_vld,activations_61_i,activations_61_o,activations_61_o_ap_vld,activations_62_i,activations_62_o,activations_62_o_ap_vld,activations_63_i,activations_63_o,activations_63_o_ap_vld,input_activations_0_val,input_activations_1_val,input_activations_2_val,input_activations_3_val,input_activations_4_val,input_activations_5_val,input_activations_6_val,input_activations_7_val,input_activations_8_val,input_activations_9_val,input_activations_10_val,input_activations_11_val,input_activations_12_val,input_activations_13_val,input_activations_14_val,input_activations_15_val,input_activations_16_val,input_activations_17_val,input_activations_18_val,input_activations_19_val,input_activations_20_val,input_activations_21_val,input_activations_22_val,input_activations_23_val,input_activations_24_val,input_activations_25_val,input_activations_26_val,input_activations_27_val,input_activations_28_val,input_activations_29_val,input_activations_30_val,input_activations_31_val,input_activations_32_val,input_activations_33_val,input_activations_34_val,input_activations_35_val,input_activations_36_val,input_activations_37_val,input_activations_38_val,input_activations_39_val,input_activations_40_val,input_activations_41_val,input_activations_42_val,input_activations_43_val,input_activations_44_val,input_activations_45_val,input_activations_46_val,input_activations_47_val,input_activations_48_val,input_activations_49_val,input_activations_50_val,input_activations_51_val,input_activations_52_val,input_activations_53_val,input_activations_54_val,input_activations_55_val,input_activations_56_val,input_activations_57_val,input_activations_58_val,input_activations_59_val,input_activations_60_val,input_activations_61_val,input_activations_62_val,input_activations_63_val,grp_fu_24749_p_din0,grp_fu_24749_p_din1,grp_fu_24749_p_opcode,grp_fu_24749_p_dout0,grp_fu_24749_p_ce,grp_fu_24941_p_din0,grp_fu_24941_p_din1,grp_fu_24941_p_dout0,grp_fu_24941_p_ce); 
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
input  [63:0] biases_0_val;
input  [63:0] biases_1_val;
input  [63:0] biases_2_val;
input  [63:0] biases_3_val;
input  [63:0] biases_4_val;
input  [63:0] biases_5_val;
input  [63:0] biases_6_val;
input  [63:0] biases_7_val;
input  [63:0] biases_8_val;
input  [63:0] biases_9_val;
input  [63:0] biases_10_val;
input  [63:0] biases_11_val;
input  [63:0] biases_12_val;
input  [63:0] biases_13_val;
input  [63:0] biases_14_val;
input  [63:0] biases_15_val;
input  [63:0] biases_16_val;
input  [63:0] biases_17_val;
input  [63:0] biases_18_val;
input  [63:0] biases_19_val;
input  [63:0] biases_20_val;
input  [63:0] biases_21_val;
input  [63:0] biases_22_val;
input  [63:0] biases_23_val;
input  [63:0] biases_24_val;
input  [63:0] biases_25_val;
input  [63:0] biases_26_val;
input  [63:0] biases_27_val;
input  [63:0] biases_28_val;
input  [63:0] biases_29_val;
input  [63:0] biases_30_val;
input  [63:0] biases_31_val;
input  [63:0] biases_32_val;
input  [63:0] biases_33_val;
input  [63:0] biases_34_val;
input  [63:0] biases_35_val;
input  [63:0] biases_36_val;
input  [63:0] biases_37_val;
input  [63:0] biases_38_val;
input  [63:0] biases_39_val;
input  [63:0] biases_40_val;
input  [63:0] biases_41_val;
input  [63:0] biases_42_val;
input  [63:0] biases_43_val;
input  [63:0] biases_44_val;
input  [63:0] biases_45_val;
input  [63:0] biases_46_val;
input  [63:0] biases_47_val;
input  [63:0] biases_48_val;
input  [63:0] biases_49_val;
input  [63:0] biases_50_val;
input  [63:0] biases_51_val;
input  [63:0] biases_52_val;
input  [63:0] biases_53_val;
input  [63:0] biases_54_val;
input  [63:0] biases_55_val;
input  [63:0] biases_56_val;
input  [63:0] biases_57_val;
input  [63:0] biases_58_val;
input  [63:0] biases_59_val;
input  [63:0] biases_60_val;
input  [63:0] biases_61_val;
input  [63:0] biases_62_val;
input  [63:0] biases_63_val;
output  [5:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [5:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [5:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [5:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [5:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [5:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [5:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [5:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [5:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [5:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [5:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [5:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [5:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [5:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [5:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [5:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [5:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [5:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [5:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [5:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [5:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [5:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [5:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [5:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [5:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [5:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [5:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [5:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [5:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [5:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [5:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [5:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [5:0] weights2_32_address0;
output   weights2_32_ce0;
input  [63:0] weights2_32_q0;
output  [5:0] weights2_33_address0;
output   weights2_33_ce0;
input  [63:0] weights2_33_q0;
output  [5:0] weights2_34_address0;
output   weights2_34_ce0;
input  [63:0] weights2_34_q0;
output  [5:0] weights2_35_address0;
output   weights2_35_ce0;
input  [63:0] weights2_35_q0;
output  [5:0] weights2_36_address0;
output   weights2_36_ce0;
input  [63:0] weights2_36_q0;
output  [5:0] weights2_37_address0;
output   weights2_37_ce0;
input  [63:0] weights2_37_q0;
output  [5:0] weights2_38_address0;
output   weights2_38_ce0;
input  [63:0] weights2_38_q0;
output  [5:0] weights2_39_address0;
output   weights2_39_ce0;
input  [63:0] weights2_39_q0;
output  [5:0] weights2_40_address0;
output   weights2_40_ce0;
input  [63:0] weights2_40_q0;
output  [5:0] weights2_41_address0;
output   weights2_41_ce0;
input  [63:0] weights2_41_q0;
output  [5:0] weights2_42_address0;
output   weights2_42_ce0;
input  [63:0] weights2_42_q0;
output  [5:0] weights2_43_address0;
output   weights2_43_ce0;
input  [63:0] weights2_43_q0;
output  [5:0] weights2_44_address0;
output   weights2_44_ce0;
input  [63:0] weights2_44_q0;
output  [5:0] weights2_45_address0;
output   weights2_45_ce0;
input  [63:0] weights2_45_q0;
output  [5:0] weights2_46_address0;
output   weights2_46_ce0;
input  [63:0] weights2_46_q0;
output  [5:0] weights2_47_address0;
output   weights2_47_ce0;
input  [63:0] weights2_47_q0;
output  [5:0] weights2_48_address0;
output   weights2_48_ce0;
input  [63:0] weights2_48_q0;
output  [5:0] weights2_49_address0;
output   weights2_49_ce0;
input  [63:0] weights2_49_q0;
output  [5:0] weights2_50_address0;
output   weights2_50_ce0;
input  [63:0] weights2_50_q0;
output  [5:0] weights2_51_address0;
output   weights2_51_ce0;
input  [63:0] weights2_51_q0;
output  [5:0] weights2_52_address0;
output   weights2_52_ce0;
input  [63:0] weights2_52_q0;
output  [5:0] weights2_53_address0;
output   weights2_53_ce0;
input  [63:0] weights2_53_q0;
output  [5:0] weights2_54_address0;
output   weights2_54_ce0;
input  [63:0] weights2_54_q0;
output  [5:0] weights2_55_address0;
output   weights2_55_ce0;
input  [63:0] weights2_55_q0;
output  [5:0] weights2_56_address0;
output   weights2_56_ce0;
input  [63:0] weights2_56_q0;
output  [5:0] weights2_57_address0;
output   weights2_57_ce0;
input  [63:0] weights2_57_q0;
output  [5:0] weights2_58_address0;
output   weights2_58_ce0;
input  [63:0] weights2_58_q0;
output  [5:0] weights2_59_address0;
output   weights2_59_ce0;
input  [63:0] weights2_59_q0;
output  [5:0] weights2_60_address0;
output   weights2_60_ce0;
input  [63:0] weights2_60_q0;
output  [5:0] weights2_61_address0;
output   weights2_61_ce0;
input  [63:0] weights2_61_q0;
output  [5:0] weights2_62_address0;
output   weights2_62_ce0;
input  [63:0] weights2_62_q0;
output  [5:0] weights2_63_address0;
output   weights2_63_ce0;
input  [63:0] weights2_63_q0;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
input  [63:0] activations_3_i;
output  [63:0] activations_3_o;
output   activations_3_o_ap_vld;
input  [63:0] activations_4_i;
output  [63:0] activations_4_o;
output   activations_4_o_ap_vld;
input  [63:0] activations_5_i;
output  [63:0] activations_5_o;
output   activations_5_o_ap_vld;
input  [63:0] activations_6_i;
output  [63:0] activations_6_o;
output   activations_6_o_ap_vld;
input  [63:0] activations_7_i;
output  [63:0] activations_7_o;
output   activations_7_o_ap_vld;
input  [63:0] activations_8_i;
output  [63:0] activations_8_o;
output   activations_8_o_ap_vld;
input  [63:0] activations_9_i;
output  [63:0] activations_9_o;
output   activations_9_o_ap_vld;
input  [63:0] activations_10_i;
output  [63:0] activations_10_o;
output   activations_10_o_ap_vld;
input  [63:0] activations_11_i;
output  [63:0] activations_11_o;
output   activations_11_o_ap_vld;
input  [63:0] activations_12_i;
output  [63:0] activations_12_o;
output   activations_12_o_ap_vld;
input  [63:0] activations_13_i;
output  [63:0] activations_13_o;
output   activations_13_o_ap_vld;
input  [63:0] activations_14_i;
output  [63:0] activations_14_o;
output   activations_14_o_ap_vld;
input  [63:0] activations_15_i;
output  [63:0] activations_15_o;
output   activations_15_o_ap_vld;
input  [63:0] activations_16_i;
output  [63:0] activations_16_o;
output   activations_16_o_ap_vld;
input  [63:0] activations_17_i;
output  [63:0] activations_17_o;
output   activations_17_o_ap_vld;
input  [63:0] activations_18_i;
output  [63:0] activations_18_o;
output   activations_18_o_ap_vld;
input  [63:0] activations_19_i;
output  [63:0] activations_19_o;
output   activations_19_o_ap_vld;
input  [63:0] activations_20_i;
output  [63:0] activations_20_o;
output   activations_20_o_ap_vld;
input  [63:0] activations_21_i;
output  [63:0] activations_21_o;
output   activations_21_o_ap_vld;
input  [63:0] activations_22_i;
output  [63:0] activations_22_o;
output   activations_22_o_ap_vld;
input  [63:0] activations_23_i;
output  [63:0] activations_23_o;
output   activations_23_o_ap_vld;
input  [63:0] activations_24_i;
output  [63:0] activations_24_o;
output   activations_24_o_ap_vld;
input  [63:0] activations_25_i;
output  [63:0] activations_25_o;
output   activations_25_o_ap_vld;
input  [63:0] activations_26_i;
output  [63:0] activations_26_o;
output   activations_26_o_ap_vld;
input  [63:0] activations_27_i;
output  [63:0] activations_27_o;
output   activations_27_o_ap_vld;
input  [63:0] activations_28_i;
output  [63:0] activations_28_o;
output   activations_28_o_ap_vld;
input  [63:0] activations_29_i;
output  [63:0] activations_29_o;
output   activations_29_o_ap_vld;
input  [63:0] activations_30_i;
output  [63:0] activations_30_o;
output   activations_30_o_ap_vld;
input  [63:0] activations_31_i;
output  [63:0] activations_31_o;
output   activations_31_o_ap_vld;
input  [63:0] activations_32_i;
output  [63:0] activations_32_o;
output   activations_32_o_ap_vld;
input  [63:0] activations_33_i;
output  [63:0] activations_33_o;
output   activations_33_o_ap_vld;
input  [63:0] activations_34_i;
output  [63:0] activations_34_o;
output   activations_34_o_ap_vld;
input  [63:0] activations_35_i;
output  [63:0] activations_35_o;
output   activations_35_o_ap_vld;
input  [63:0] activations_36_i;
output  [63:0] activations_36_o;
output   activations_36_o_ap_vld;
input  [63:0] activations_37_i;
output  [63:0] activations_37_o;
output   activations_37_o_ap_vld;
input  [63:0] activations_38_i;
output  [63:0] activations_38_o;
output   activations_38_o_ap_vld;
input  [63:0] activations_39_i;
output  [63:0] activations_39_o;
output   activations_39_o_ap_vld;
input  [63:0] activations_40_i;
output  [63:0] activations_40_o;
output   activations_40_o_ap_vld;
input  [63:0] activations_41_i;
output  [63:0] activations_41_o;
output   activations_41_o_ap_vld;
input  [63:0] activations_42_i;
output  [63:0] activations_42_o;
output   activations_42_o_ap_vld;
input  [63:0] activations_43_i;
output  [63:0] activations_43_o;
output   activations_43_o_ap_vld;
input  [63:0] activations_44_i;
output  [63:0] activations_44_o;
output   activations_44_o_ap_vld;
input  [63:0] activations_45_i;
output  [63:0] activations_45_o;
output   activations_45_o_ap_vld;
input  [63:0] activations_46_i;
output  [63:0] activations_46_o;
output   activations_46_o_ap_vld;
input  [63:0] activations_47_i;
output  [63:0] activations_47_o;
output   activations_47_o_ap_vld;
input  [63:0] activations_48_i;
output  [63:0] activations_48_o;
output   activations_48_o_ap_vld;
input  [63:0] activations_49_i;
output  [63:0] activations_49_o;
output   activations_49_o_ap_vld;
input  [63:0] activations_50_i;
output  [63:0] activations_50_o;
output   activations_50_o_ap_vld;
input  [63:0] activations_51_i;
output  [63:0] activations_51_o;
output   activations_51_o_ap_vld;
input  [63:0] activations_52_i;
output  [63:0] activations_52_o;
output   activations_52_o_ap_vld;
input  [63:0] activations_53_i;
output  [63:0] activations_53_o;
output   activations_53_o_ap_vld;
input  [63:0] activations_54_i;
output  [63:0] activations_54_o;
output   activations_54_o_ap_vld;
input  [63:0] activations_55_i;
output  [63:0] activations_55_o;
output   activations_55_o_ap_vld;
input  [63:0] activations_56_i;
output  [63:0] activations_56_o;
output   activations_56_o_ap_vld;
input  [63:0] activations_57_i;
output  [63:0] activations_57_o;
output   activations_57_o_ap_vld;
input  [63:0] activations_58_i;
output  [63:0] activations_58_o;
output   activations_58_o_ap_vld;
input  [63:0] activations_59_i;
output  [63:0] activations_59_o;
output   activations_59_o_ap_vld;
input  [63:0] activations_60_i;
output  [63:0] activations_60_o;
output   activations_60_o_ap_vld;
input  [63:0] activations_61_i;
output  [63:0] activations_61_o;
output   activations_61_o_ap_vld;
input  [63:0] activations_62_i;
output  [63:0] activations_62_o;
output   activations_62_o_ap_vld;
input  [63:0] activations_63_i;
output  [63:0] activations_63_o;
output   activations_63_o_ap_vld;
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
output  [63:0] grp_fu_24749_p_din0;
output  [63:0] grp_fu_24749_p_din1;
output  [0:0] grp_fu_24749_p_opcode;
input  [63:0] grp_fu_24749_p_dout0;
output   grp_fu_24749_p_ce;
output  [63:0] grp_fu_24941_p_din0;
output  [63:0] grp_fu_24941_p_din1;
input  [63:0] grp_fu_24941_p_dout0;
output   grp_fu_24941_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
reg[63:0] activations_3_o;
reg activations_3_o_ap_vld;
reg[63:0] activations_4_o;
reg activations_4_o_ap_vld;
reg[63:0] activations_5_o;
reg activations_5_o_ap_vld;
reg[63:0] activations_6_o;
reg activations_6_o_ap_vld;
reg[63:0] activations_7_o;
reg activations_7_o_ap_vld;
reg[63:0] activations_8_o;
reg activations_8_o_ap_vld;
reg[63:0] activations_9_o;
reg activations_9_o_ap_vld;
reg[63:0] activations_10_o;
reg activations_10_o_ap_vld;
reg[63:0] activations_11_o;
reg activations_11_o_ap_vld;
reg[63:0] activations_12_o;
reg activations_12_o_ap_vld;
reg[63:0] activations_13_o;
reg activations_13_o_ap_vld;
reg[63:0] activations_14_o;
reg activations_14_o_ap_vld;
reg[63:0] activations_15_o;
reg activations_15_o_ap_vld;
reg[63:0] activations_16_o;
reg activations_16_o_ap_vld;
reg[63:0] activations_17_o;
reg activations_17_o_ap_vld;
reg[63:0] activations_18_o;
reg activations_18_o_ap_vld;
reg[63:0] activations_19_o;
reg activations_19_o_ap_vld;
reg[63:0] activations_20_o;
reg activations_20_o_ap_vld;
reg[63:0] activations_21_o;
reg activations_21_o_ap_vld;
reg[63:0] activations_22_o;
reg activations_22_o_ap_vld;
reg[63:0] activations_23_o;
reg activations_23_o_ap_vld;
reg[63:0] activations_24_o;
reg activations_24_o_ap_vld;
reg[63:0] activations_25_o;
reg activations_25_o_ap_vld;
reg[63:0] activations_26_o;
reg activations_26_o_ap_vld;
reg[63:0] activations_27_o;
reg activations_27_o_ap_vld;
reg[63:0] activations_28_o;
reg activations_28_o_ap_vld;
reg[63:0] activations_29_o;
reg activations_29_o_ap_vld;
reg[63:0] activations_30_o;
reg activations_30_o_ap_vld;
reg[63:0] activations_31_o;
reg activations_31_o_ap_vld;
reg[63:0] activations_32_o;
reg activations_32_o_ap_vld;
reg[63:0] activations_33_o;
reg activations_33_o_ap_vld;
reg[63:0] activations_34_o;
reg activations_34_o_ap_vld;
reg[63:0] activations_35_o;
reg activations_35_o_ap_vld;
reg[63:0] activations_36_o;
reg activations_36_o_ap_vld;
reg[63:0] activations_37_o;
reg activations_37_o_ap_vld;
reg[63:0] activations_38_o;
reg activations_38_o_ap_vld;
reg[63:0] activations_39_o;
reg activations_39_o_ap_vld;
reg[63:0] activations_40_o;
reg activations_40_o_ap_vld;
reg[63:0] activations_41_o;
reg activations_41_o_ap_vld;
reg[63:0] activations_42_o;
reg activations_42_o_ap_vld;
reg[63:0] activations_43_o;
reg activations_43_o_ap_vld;
reg[63:0] activations_44_o;
reg activations_44_o_ap_vld;
reg[63:0] activations_45_o;
reg activations_45_o_ap_vld;
reg[63:0] activations_46_o;
reg activations_46_o_ap_vld;
reg[63:0] activations_47_o;
reg activations_47_o_ap_vld;
reg[63:0] activations_48_o;
reg activations_48_o_ap_vld;
reg[63:0] activations_49_o;
reg activations_49_o_ap_vld;
reg[63:0] activations_50_o;
reg activations_50_o_ap_vld;
reg[63:0] activations_51_o;
reg activations_51_o_ap_vld;
reg[63:0] activations_52_o;
reg activations_52_o_ap_vld;
reg[63:0] activations_53_o;
reg activations_53_o_ap_vld;
reg[63:0] activations_54_o;
reg activations_54_o_ap_vld;
reg[63:0] activations_55_o;
reg activations_55_o_ap_vld;
reg[63:0] activations_56_o;
reg activations_56_o_ap_vld;
reg[63:0] activations_57_o;
reg activations_57_o_ap_vld;
reg[63:0] activations_58_o;
reg activations_58_o_ap_vld;
reg[63:0] activations_59_o;
reg activations_59_o_ap_vld;
reg[63:0] activations_60_o;
reg activations_60_o_ap_vld;
reg[63:0] activations_61_o;
reg activations_61_o_ap_vld;
reg[63:0] activations_62_o;
reg activations_62_o_ap_vld;
reg[63:0] activations_63_o;
reg activations_63_o_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln44_fu_3075_p2;
reg   [6:0] add_ln44_reg_4200;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln44_fu_3149_p1;
reg   [5:0] trunc_ln44_reg_4205;
wire   [63:0] empty_fu_3153_p1;
reg   [63:0] empty_reg_4529;
wire    ap_CS_fsm_state3;
wire   [63:0] empty_159_fu_3158_p1;
reg   [63:0] empty_159_reg_4534;
wire   [63:0] empty_160_fu_3163_p1;
reg   [63:0] empty_160_reg_4539;
wire   [63:0] empty_161_fu_3168_p1;
reg   [63:0] empty_161_reg_4544;
wire   [63:0] empty_162_fu_3173_p1;
reg   [63:0] empty_162_reg_4549;
wire   [63:0] empty_163_fu_3178_p1;
reg   [63:0] empty_163_reg_4554;
wire   [63:0] empty_164_fu_3183_p1;
reg   [63:0] empty_164_reg_4559;
wire   [63:0] empty_165_fu_3188_p1;
reg   [63:0] empty_165_reg_4564;
wire   [63:0] empty_166_fu_3193_p1;
reg   [63:0] empty_166_reg_4569;
wire   [63:0] empty_167_fu_3198_p1;
reg   [63:0] empty_167_reg_4574;
wire   [63:0] empty_168_fu_3203_p1;
reg   [63:0] empty_168_reg_4579;
wire   [63:0] empty_169_fu_3208_p1;
reg   [63:0] empty_169_reg_4584;
wire   [63:0] empty_170_fu_3213_p1;
reg   [63:0] empty_170_reg_4589;
wire   [63:0] empty_171_fu_3218_p1;
reg   [63:0] empty_171_reg_4594;
wire   [63:0] empty_172_fu_3223_p1;
reg   [63:0] empty_172_reg_4599;
wire   [63:0] empty_173_fu_3228_p1;
reg   [63:0] empty_173_reg_4604;
wire   [63:0] empty_174_fu_3233_p1;
reg   [63:0] empty_174_reg_4609;
wire   [63:0] empty_175_fu_3238_p1;
reg   [63:0] empty_175_reg_4614;
wire   [63:0] empty_176_fu_3243_p1;
reg   [63:0] empty_176_reg_4619;
wire   [63:0] empty_177_fu_3248_p1;
reg   [63:0] empty_177_reg_4624;
wire   [63:0] empty_178_fu_3253_p1;
reg   [63:0] empty_178_reg_4629;
wire   [63:0] empty_179_fu_3258_p1;
reg   [63:0] empty_179_reg_4634;
wire   [63:0] empty_180_fu_3263_p1;
reg   [63:0] empty_180_reg_4639;
wire   [63:0] empty_181_fu_3268_p1;
reg   [63:0] empty_181_reg_4644;
wire   [63:0] empty_182_fu_3273_p1;
reg   [63:0] empty_182_reg_4649;
wire   [63:0] empty_183_fu_3278_p1;
reg   [63:0] empty_183_reg_4654;
wire   [63:0] empty_184_fu_3283_p1;
reg   [63:0] empty_184_reg_4659;
wire   [63:0] empty_185_fu_3288_p1;
reg   [63:0] empty_185_reg_4664;
wire   [63:0] empty_186_fu_3293_p1;
reg   [63:0] empty_186_reg_4669;
wire   [63:0] empty_187_fu_3298_p1;
reg   [63:0] empty_187_reg_4674;
wire   [63:0] empty_188_fu_3303_p1;
reg   [63:0] empty_188_reg_4679;
wire   [63:0] empty_189_fu_3308_p1;
reg   [63:0] empty_189_reg_4684;
wire   [63:0] empty_190_fu_3313_p1;
reg   [63:0] empty_190_reg_4689;
wire   [63:0] empty_191_fu_3318_p1;
reg   [63:0] empty_191_reg_4694;
wire   [63:0] empty_192_fu_3323_p1;
reg   [63:0] empty_192_reg_4699;
wire   [63:0] empty_193_fu_3328_p1;
reg   [63:0] empty_193_reg_4704;
wire   [63:0] empty_194_fu_3333_p1;
reg   [63:0] empty_194_reg_4709;
wire   [63:0] empty_195_fu_3338_p1;
reg   [63:0] empty_195_reg_4714;
wire   [63:0] empty_196_fu_3343_p1;
reg   [63:0] empty_196_reg_4719;
wire   [63:0] empty_197_fu_3348_p1;
reg   [63:0] empty_197_reg_4724;
wire   [63:0] empty_198_fu_3353_p1;
reg   [63:0] empty_198_reg_4729;
wire   [63:0] empty_199_fu_3358_p1;
reg   [63:0] empty_199_reg_4734;
wire   [63:0] empty_200_fu_3363_p1;
reg   [63:0] empty_200_reg_4739;
wire   [63:0] empty_201_fu_3368_p1;
reg   [63:0] empty_201_reg_4744;
wire   [63:0] empty_202_fu_3373_p1;
reg   [63:0] empty_202_reg_4749;
wire   [63:0] empty_203_fu_3378_p1;
reg   [63:0] empty_203_reg_4754;
wire   [63:0] empty_204_fu_3383_p1;
reg   [63:0] empty_204_reg_4759;
wire   [63:0] empty_205_fu_3388_p1;
reg   [63:0] empty_205_reg_4764;
wire   [63:0] empty_206_fu_3393_p1;
reg   [63:0] empty_206_reg_4769;
wire   [63:0] empty_207_fu_3398_p1;
reg   [63:0] empty_207_reg_4774;
wire   [63:0] empty_208_fu_3403_p1;
reg   [63:0] empty_208_reg_4779;
wire   [63:0] empty_209_fu_3408_p1;
reg   [63:0] empty_209_reg_4784;
wire   [63:0] empty_210_fu_3413_p1;
reg   [63:0] empty_210_reg_4789;
wire   [63:0] empty_211_fu_3418_p1;
reg   [63:0] empty_211_reg_4794;
wire   [63:0] empty_212_fu_3423_p1;
reg   [63:0] empty_212_reg_4799;
wire   [63:0] empty_213_fu_3428_p1;
reg   [63:0] empty_213_reg_4804;
wire   [63:0] empty_214_fu_3433_p1;
reg   [63:0] empty_214_reg_4809;
wire   [63:0] empty_215_fu_3438_p1;
reg   [63:0] empty_215_reg_4814;
wire   [63:0] empty_216_fu_3443_p1;
reg   [63:0] empty_216_reg_4819;
wire   [63:0] empty_217_fu_3448_p1;
reg   [63:0] empty_217_reg_4824;
wire   [63:0] empty_218_fu_3453_p1;
reg   [63:0] empty_218_reg_4829;
wire   [63:0] empty_219_fu_3458_p1;
reg   [63:0] empty_219_reg_4834;
wire   [63:0] empty_220_fu_3463_p1;
reg   [63:0] empty_220_reg_4839;
wire   [63:0] empty_221_fu_3468_p1;
reg   [63:0] empty_221_reg_4844;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg;
wire   [0:0] icmp_ln44_fu_3069_p2;
wire    ap_CS_fsm_state6;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln44_fu_3081_p1;
reg   [6:0] i_fu_676;
wire    ap_CS_fsm_state5;
reg    ap_predicate_pred1835_state5;
reg    ap_predicate_pred1843_state5;
reg    ap_predicate_pred1848_state5;
reg    ap_predicate_pred1853_state5;
reg    ap_predicate_pred1858_state5;
reg    ap_predicate_pred1863_state5;
reg    ap_predicate_pred1868_state5;
reg    ap_predicate_pred1873_state5;
reg    ap_predicate_pred1878_state5;
reg    ap_predicate_pred1883_state5;
reg    ap_predicate_pred1888_state5;
reg    ap_predicate_pred1893_state5;
reg    ap_predicate_pred1898_state5;
reg    ap_predicate_pred1903_state5;
reg    ap_predicate_pred1908_state5;
reg    ap_predicate_pred1913_state5;
reg    ap_predicate_pred1918_state5;
reg    ap_predicate_pred1923_state5;
reg    ap_predicate_pred1928_state5;
reg    ap_predicate_pred1933_state5;
reg    ap_predicate_pred1938_state5;
reg    ap_predicate_pred1943_state5;
reg    ap_predicate_pred1948_state5;
reg    ap_predicate_pred1953_state5;
reg    ap_predicate_pred1958_state5;
reg    ap_predicate_pred1963_state5;
reg    ap_predicate_pred1968_state5;
reg    ap_predicate_pred1973_state5;
reg    ap_predicate_pred1978_state5;
reg    ap_predicate_pred1983_state5;
reg    ap_predicate_pred1988_state5;
reg    ap_predicate_pred1993_state5;
reg    ap_predicate_pred1998_state5;
reg    ap_predicate_pred2003_state5;
reg    ap_predicate_pred2008_state5;
reg    ap_predicate_pred2013_state5;
reg    ap_predicate_pred2018_state5;
reg    ap_predicate_pred2023_state5;
reg    ap_predicate_pred2028_state5;
reg    ap_predicate_pred2033_state5;
reg    ap_predicate_pred2038_state5;
reg    ap_predicate_pred2043_state5;
reg    ap_predicate_pred2048_state5;
reg    ap_predicate_pred2053_state5;
reg    ap_predicate_pred2058_state5;
reg    ap_predicate_pred2063_state5;
reg    ap_predicate_pred2068_state5;
reg    ap_predicate_pred2073_state5;
reg    ap_predicate_pred2078_state5;
reg    ap_predicate_pred2083_state5;
reg    ap_predicate_pred2088_state5;
reg    ap_predicate_pred2093_state5;
reg    ap_predicate_pred2098_state5;
reg    ap_predicate_pred2103_state5;
reg    ap_predicate_pred2108_state5;
reg    ap_predicate_pred2113_state5;
reg    ap_predicate_pred2118_state5;
reg    ap_predicate_pred2123_state5;
reg    ap_predicate_pred2128_state5;
reg    ap_predicate_pred2133_state5;
reg    ap_predicate_pred2138_state5;
reg    ap_predicate_pred2143_state5;
reg    ap_predicate_pred2148_state5;
reg    ap_predicate_pred2153_state5;
reg    weights2_1_ce0_local;
reg    weights2_17_ce0_local;
reg    weights2_33_ce0_local;
reg    weights2_49_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_18_ce0_local;
reg    weights2_34_ce0_local;
reg    weights2_50_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_19_ce0_local;
reg    weights2_35_ce0_local;
reg    weights2_51_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_20_ce0_local;
reg    weights2_36_ce0_local;
reg    weights2_52_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_21_ce0_local;
reg    weights2_37_ce0_local;
reg    weights2_53_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_22_ce0_local;
reg    weights2_38_ce0_local;
reg    weights2_54_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_23_ce0_local;
reg    weights2_39_ce0_local;
reg    weights2_55_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_24_ce0_local;
reg    weights2_40_ce0_local;
reg    weights2_56_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_25_ce0_local;
reg    weights2_41_ce0_local;
reg    weights2_57_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_26_ce0_local;
reg    weights2_42_ce0_local;
reg    weights2_58_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_27_ce0_local;
reg    weights2_43_ce0_local;
reg    weights2_59_ce0_local;
reg    weights2_12_ce0_local;
reg    weights2_28_ce0_local;
reg    weights2_44_ce0_local;
reg    weights2_60_ce0_local;
reg    weights2_13_ce0_local;
reg    weights2_29_ce0_local;
reg    weights2_45_ce0_local;
reg    weights2_61_ce0_local;
reg    weights2_14_ce0_local;
reg    weights2_30_ce0_local;
reg    weights2_46_ce0_local;
reg    weights2_62_ce0_local;
reg    weights2_15_ce0_local;
reg    weights2_31_ce0_local;
reg    weights2_47_ce0_local;
reg    weights2_63_ce0_local;
reg    weights2_0_ce0_local;
reg    weights2_16_ce0_local;
reg    weights2_32_ce0_local;
reg    weights2_48_ce0_local;
reg   [63:0] grp_fu_4849_p0;
reg   [63:0] grp_fu_4849_p1;
reg   [1:0] grp_fu_4849_opcode;
reg    grp_fu_4849_ce;
reg    grp_fu_4853_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg = 1'b0;
#0 i_fu_676 = 7'd0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o_ap_vld),.activations_63_i(activations_63_i),.activations_63_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o),.activations_63_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o_ap_vld),.activations_62_i(activations_62_i),.activations_62_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o),.activations_62_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o_ap_vld),.activations_61_i(activations_61_i),.activations_61_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o),.activations_61_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o_ap_vld),.activations_60_i(activations_60_i),.activations_60_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o),.activations_60_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o_ap_vld),.activations_59_i(activations_59_i),.activations_59_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o),.activations_59_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o_ap_vld),.activations_58_i(activations_58_i),.activations_58_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o),.activations_58_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o_ap_vld),.activations_57_i(activations_57_i),.activations_57_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o),.activations_57_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o_ap_vld),.activations_56_i(activations_56_i),.activations_56_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o),.activations_56_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o_ap_vld),.activations_55_i(activations_55_i),.activations_55_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o),.activations_55_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o_ap_vld),.activations_54_i(activations_54_i),.activations_54_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o),.activations_54_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o_ap_vld),.activations_53_i(activations_53_i),.activations_53_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o),.activations_53_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o_ap_vld),.activations_52_i(activations_52_i),.activations_52_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o),.activations_52_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o_ap_vld),.activations_51_i(activations_51_i),.activations_51_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o),.activations_51_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o_ap_vld),.activations_50_i(activations_50_i),.activations_50_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o),.activations_50_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o_ap_vld),.activations_49_i(activations_49_i),.activations_49_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o),.activations_49_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o_ap_vld),.activations_48_i(activations_48_i),.activations_48_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o),.activations_48_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o_ap_vld),.activations_47_i(activations_47_i),.activations_47_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o),.activations_47_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o_ap_vld),.activations_46_i(activations_46_i),.activations_46_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o),.activations_46_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o_ap_vld),.activations_45_i(activations_45_i),.activations_45_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o),.activations_45_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o_ap_vld),.activations_44_i(activations_44_i),.activations_44_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o),.activations_44_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o_ap_vld),.activations_43_i(activations_43_i),.activations_43_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o),.activations_43_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o_ap_vld),.activations_42_i(activations_42_i),.activations_42_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o),.activations_42_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o_ap_vld),.activations_41_i(activations_41_i),.activations_41_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o),.activations_41_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o_ap_vld),.activations_40_i(activations_40_i),.activations_40_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o),.activations_40_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o_ap_vld),.activations_39_i(activations_39_i),.activations_39_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o),.activations_39_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o_ap_vld),.activations_38_i(activations_38_i),.activations_38_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o),.activations_38_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o_ap_vld),.activations_37_i(activations_37_i),.activations_37_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o),.activations_37_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o_ap_vld),.activations_36_i(activations_36_i),.activations_36_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o),.activations_36_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o_ap_vld),.activations_35_i(activations_35_i),.activations_35_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o),.activations_35_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o_ap_vld),.activations_34_i(activations_34_i),.activations_34_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o),.activations_34_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o_ap_vld),.activations_33_i(activations_33_i),.activations_33_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o),.activations_33_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o_ap_vld),.activations_32_i(activations_32_i),.activations_32_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o),.activations_32_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o_ap_vld),.activations_31_i(activations_31_i),.activations_31_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o),.activations_31_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o_ap_vld),.activations_30_i(activations_30_i),.activations_30_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o),.activations_30_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o_ap_vld),.activations_29_i(activations_29_i),.activations_29_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o),.activations_29_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o_ap_vld),.activations_28_i(activations_28_i),.activations_28_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o),.activations_28_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o_ap_vld),.activations_27_i(activations_27_i),.activations_27_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o),.activations_27_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o_ap_vld),.activations_26_i(activations_26_i),.activations_26_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o),.activations_26_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o_ap_vld),.activations_25_i(activations_25_i),.activations_25_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o),.activations_25_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o_ap_vld),.activations_24_i(activations_24_i),.activations_24_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o),.activations_24_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o_ap_vld),.activations_23_i(activations_23_i),.activations_23_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o),.activations_23_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o_ap_vld),.activations_22_i(activations_22_i),.activations_22_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o),.activations_22_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o_ap_vld),.activations_21_i(activations_21_i),.activations_21_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o),.activations_21_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o_ap_vld),.activations_20_i(activations_20_i),.activations_20_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o),.activations_20_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o_ap_vld),.activations_19_i(activations_19_i),.activations_19_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o),.activations_19_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o_ap_vld),.activations_18_i(activations_18_i),.activations_18_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o),.activations_18_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o_ap_vld),.activations_17_i(activations_17_i),.activations_17_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o),.activations_17_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o_ap_vld),.activations_16_i(activations_16_i),.activations_16_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o),.activations_16_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o_ap_vld),.activations_15_i(activations_15_i),.activations_15_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o),.activations_15_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o_ap_vld),.activations_14_i(activations_14_i),.activations_14_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o),.activations_14_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o_ap_vld),.activations_13_i(activations_13_i),.activations_13_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o),.activations_13_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o_ap_vld),.activations_12_i(activations_12_i),.activations_12_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o),.activations_12_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o_ap_vld),.activations_11_i(activations_11_i),.activations_11_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o),.activations_11_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o_ap_vld),.activations_10_i(activations_10_i),.activations_10_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o),.activations_10_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o_ap_vld),.activations_9_i(activations_9_i),.activations_9_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o),.activations_9_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o_ap_vld),.activations_8_i(activations_8_i),.activations_8_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o),.activations_8_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o_ap_vld),.activations_7_i(activations_7_i),.activations_7_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o),.activations_7_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o_ap_vld),.activations_6_i(activations_6_i),.activations_6_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o),.activations_6_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o_ap_vld),.activations_5_i(activations_5_i),.activations_5_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o),.activations_5_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o_ap_vld),.activations_4_i(activations_4_i),.activations_4_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o),.activations_4_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o_ap_vld),.activations_3_i(activations_3_i),.activations_3_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o),.activations_3_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o_ap_vld),.biases_0_val(biases_0_val),.biases_1_val(biases_1_val),.biases_2_val(biases_2_val),.biases_3_val(biases_3_val),.biases_4_val(biases_4_val),.biases_5_val(biases_5_val),.biases_6_val(biases_6_val),.biases_7_val(biases_7_val),.biases_8_val(biases_8_val),.biases_9_val(biases_9_val),.biases_10_val(biases_10_val),.biases_11_val(biases_11_val),.biases_12_val(biases_12_val),.biases_13_val(biases_13_val),.biases_14_val(biases_14_val),.biases_15_val(biases_15_val),.biases_16_val(biases_16_val),.biases_17_val(biases_17_val),.biases_18_val(biases_18_val),.biases_19_val(biases_19_val),.biases_20_val(biases_20_val),.biases_21_val(biases_21_val),.biases_22_val(biases_22_val),.biases_23_val(biases_23_val),.biases_24_val(biases_24_val),.biases_25_val(biases_25_val),.biases_26_val(biases_26_val),.biases_27_val(biases_27_val),.biases_28_val(biases_28_val),.biases_29_val(biases_29_val),.biases_30_val(biases_30_val),.biases_31_val(biases_31_val),.biases_32_val(biases_32_val),.biases_33_val(biases_33_val),.biases_34_val(biases_34_val),.biases_35_val(biases_35_val),.biases_36_val(biases_36_val),.biases_37_val(biases_37_val),.biases_38_val(biases_38_val),.biases_39_val(biases_39_val),.biases_40_val(biases_40_val),.biases_41_val(biases_41_val),.biases_42_val(biases_42_val),.biases_43_val(biases_43_val),.biases_44_val(biases_44_val),.biases_45_val(biases_45_val),.biases_46_val(biases_46_val),.biases_47_val(biases_47_val),.biases_48_val(biases_48_val),.biases_49_val(biases_49_val),.biases_50_val(biases_50_val),.biases_51_val(biases_51_val),.biases_52_val(biases_52_val),.biases_53_val(biases_53_val),.biases_54_val(biases_54_val),.biases_55_val(biases_55_val),.biases_56_val(biases_56_val),.biases_57_val(biases_57_val),.biases_58_val(biases_58_val),.biases_59_val(biases_59_val),.biases_60_val(biases_60_val),.biases_61_val(biases_61_val),.biases_62_val(biases_62_val),.biases_63_val(biases_63_val),.grp_fu_4849_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din0),.grp_fu_4849_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din1),.grp_fu_4849_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_opcode),.grp_fu_4849_p_dout0(grp_fu_24749_p_dout0),.grp_fu_4849_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_ready),.empty_22(empty_218_reg_4829),.empty_23(empty_219_reg_4834),.empty_24(empty_220_reg_4839),.empty_25(empty_221_reg_4844),.input_activations_0_val(input_activations_0_val),.input_activations_16_val(input_activations_16_val),.input_activations_32_val(input_activations_32_val),.input_activations_48_val(input_activations_48_val),.empty_26(empty_reg_4529),.empty_27(empty_159_reg_4534),.empty_28(empty_160_reg_4539),.empty_29(empty_161_reg_4544),.input_activations_1_val(input_activations_1_val),.input_activations_17_val(input_activations_17_val),.input_activations_33_val(input_activations_33_val),.input_activations_49_val(input_activations_49_val),.empty_30(empty_162_reg_4549),.empty_31(empty_163_reg_4554),.empty_32(empty_164_reg_4559),.empty_33(empty_165_reg_4564),.input_activations_2_val(input_activations_2_val),.input_activations_18_val(input_activations_18_val),.input_activations_34_val(input_activations_34_val),.input_activations_50_val(input_activations_50_val),.empty_34(empty_166_reg_4569),.empty_35(empty_167_reg_4574),.empty_36(empty_168_reg_4579),.empty_37(empty_169_reg_4584),.input_activations_3_val(input_activations_3_val),.input_activations_19_val(input_activations_19_val),.input_activations_35_val(input_activations_35_val),.input_activations_51_val(input_activations_51_val),.empty_38(empty_170_reg_4589),.empty_39(empty_171_reg_4594),.empty_40(empty_172_reg_4599),.empty_41(empty_173_reg_4604),.input_activations_4_val(input_activations_4_val),.input_activations_20_val(input_activations_20_val),.input_activations_36_val(input_activations_36_val),.input_activations_52_val(input_activations_52_val),.empty_42(empty_174_reg_4609),.empty_43(empty_175_reg_4614),.empty_44(empty_176_reg_4619),.empty_45(empty_177_reg_4624),.input_activations_5_val(input_activations_5_val),.input_activations_21_val(input_activations_21_val),.input_activations_37_val(input_activations_37_val),.input_activations_53_val(input_activations_53_val),.empty_46(empty_178_reg_4629),.empty_47(empty_179_reg_4634),.empty_48(empty_180_reg_4639),.empty_49(empty_181_reg_4644),.input_activations_6_val(input_activations_6_val),.input_activations_22_val(input_activations_22_val),.input_activations_38_val(input_activations_38_val),.input_activations_54_val(input_activations_54_val),.empty_50(empty_182_reg_4649),.empty_51(empty_183_reg_4654),.empty_52(empty_184_reg_4659),.empty_53(empty_185_reg_4664),.input_activations_7_val(input_activations_7_val),.input_activations_23_val(input_activations_23_val),.input_activations_39_val(input_activations_39_val),.input_activations_55_val(input_activations_55_val),.empty_54(empty_186_reg_4669),.empty_55(empty_187_reg_4674),.empty_56(empty_188_reg_4679),.empty_57(empty_189_reg_4684),.input_activations_8_val(input_activations_8_val),.input_activations_24_val(input_activations_24_val),.input_activations_40_val(input_activations_40_val),.input_activations_56_val(input_activations_56_val),.empty_58(empty_190_reg_4689),.empty_59(empty_191_reg_4694),.empty_60(empty_192_reg_4699),.empty_61(empty_193_reg_4704),.input_activations_9_val(input_activations_9_val),.input_activations_25_val(input_activations_25_val),.input_activations_41_val(input_activations_41_val),.input_activations_57_val(input_activations_57_val),.empty_62(empty_194_reg_4709),.empty_63(empty_195_reg_4714),.empty_64(empty_196_reg_4719),.empty_65(empty_197_reg_4724),.input_activations_10_val(input_activations_10_val),.input_activations_26_val(input_activations_26_val),.input_activations_42_val(input_activations_42_val),.input_activations_58_val(input_activations_58_val),.empty_66(empty_198_reg_4729),.empty_67(empty_199_reg_4734),.empty_68(empty_200_reg_4739),.empty_69(empty_201_reg_4744),.input_activations_11_val(input_activations_11_val),.input_activations_27_val(input_activations_27_val),.input_activations_43_val(input_activations_43_val),.input_activations_59_val(input_activations_59_val),.empty_70(empty_202_reg_4749),.empty_71(empty_203_reg_4754),.empty_72(empty_204_reg_4759),.empty_73(empty_205_reg_4764),.input_activations_12_val(input_activations_12_val),.input_activations_28_val(input_activations_28_val),.input_activations_44_val(input_activations_44_val),.input_activations_60_val(input_activations_60_val),.empty_74(empty_206_reg_4769),.empty_75(empty_207_reg_4774),.empty_76(empty_208_reg_4779),.empty_77(empty_209_reg_4784),.input_activations_13_val(input_activations_13_val),.input_activations_29_val(input_activations_29_val),.input_activations_45_val(input_activations_45_val),.input_activations_61_val(input_activations_61_val),.empty_78(empty_210_reg_4789),.empty_79(empty_211_reg_4794),.empty_80(empty_212_reg_4799),.empty_81(empty_213_reg_4804),.input_activations_14_val(input_activations_14_val),.input_activations_30_val(input_activations_30_val),.input_activations_46_val(input_activations_46_val),.input_activations_62_val(input_activations_62_val),.empty_82(empty_214_reg_4809),.empty_83(empty_215_reg_4814),.empty_84(empty_216_reg_4819),.empty(empty_217_reg_4824),.input_activations_15_val(input_activations_15_val),.input_activations_31_val(input_activations_31_val),.input_activations_47_val(input_activations_47_val),.input_activations_63_val(input_activations_63_val),.add114_out(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out),.add114_out_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out_ap_vld),.grp_fu_4849_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din0),.grp_fu_4849_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din1),.grp_fu_4849_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_opcode),.grp_fu_4849_p_dout0(grp_fu_24749_p_dout0),.grp_fu_4849_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_ce),.grp_fu_4853_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din0),.grp_fu_4853_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din1),.grp_fu_4853_p_dout0(grp_fu_24941_p_dout0),.grp_fu_4853_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln44_fu_3069_p2 == 1'd1))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_676 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_676 <= add_ln44_reg_4200;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln44_reg_4200 <= add_ln44_fu_3075_p2;
        trunc_ln44_reg_4205 <= trunc_ln44_fu_3149_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_done == 1'b1))) begin
        ap_predicate_pred1835_state5 <= (trunc_ln44_reg_4205 == 6'd62);
        ap_predicate_pred1843_state5 <= (trunc_ln44_reg_4205 == 6'd61);
        ap_predicate_pred1848_state5 <= (trunc_ln44_reg_4205 == 6'd60);
        ap_predicate_pred1853_state5 <= (trunc_ln44_reg_4205 == 6'd59);
        ap_predicate_pred1858_state5 <= (trunc_ln44_reg_4205 == 6'd58);
        ap_predicate_pred1863_state5 <= (trunc_ln44_reg_4205 == 6'd57);
        ap_predicate_pred1868_state5 <= (trunc_ln44_reg_4205 == 6'd56);
        ap_predicate_pred1873_state5 <= (trunc_ln44_reg_4205 == 6'd55);
        ap_predicate_pred1878_state5 <= (trunc_ln44_reg_4205 == 6'd54);
        ap_predicate_pred1883_state5 <= (trunc_ln44_reg_4205 == 6'd53);
        ap_predicate_pred1888_state5 <= (trunc_ln44_reg_4205 == 6'd52);
        ap_predicate_pred1893_state5 <= (trunc_ln44_reg_4205 == 6'd51);
        ap_predicate_pred1898_state5 <= (trunc_ln44_reg_4205 == 6'd50);
        ap_predicate_pred1903_state5 <= (trunc_ln44_reg_4205 == 6'd49);
        ap_predicate_pred1908_state5 <= (trunc_ln44_reg_4205 == 6'd48);
        ap_predicate_pred1913_state5 <= (trunc_ln44_reg_4205 == 6'd47);
        ap_predicate_pred1918_state5 <= (trunc_ln44_reg_4205 == 6'd46);
        ap_predicate_pred1923_state5 <= (trunc_ln44_reg_4205 == 6'd45);
        ap_predicate_pred1928_state5 <= (trunc_ln44_reg_4205 == 6'd44);
        ap_predicate_pred1933_state5 <= (trunc_ln44_reg_4205 == 6'd43);
        ap_predicate_pred1938_state5 <= (trunc_ln44_reg_4205 == 6'd42);
        ap_predicate_pred1943_state5 <= (trunc_ln44_reg_4205 == 6'd41);
        ap_predicate_pred1948_state5 <= (trunc_ln44_reg_4205 == 6'd40);
        ap_predicate_pred1953_state5 <= (trunc_ln44_reg_4205 == 6'd39);
        ap_predicate_pred1958_state5 <= (trunc_ln44_reg_4205 == 6'd38);
        ap_predicate_pred1963_state5 <= (trunc_ln44_reg_4205 == 6'd37);
        ap_predicate_pred1968_state5 <= (trunc_ln44_reg_4205 == 6'd36);
        ap_predicate_pred1973_state5 <= (trunc_ln44_reg_4205 == 6'd35);
        ap_predicate_pred1978_state5 <= (trunc_ln44_reg_4205 == 6'd34);
        ap_predicate_pred1983_state5 <= (trunc_ln44_reg_4205 == 6'd33);
        ap_predicate_pred1988_state5 <= (trunc_ln44_reg_4205 == 6'd32);
        ap_predicate_pred1993_state5 <= (trunc_ln44_reg_4205 == 6'd31);
        ap_predicate_pred1998_state5 <= (trunc_ln44_reg_4205 == 6'd30);
        ap_predicate_pred2003_state5 <= (trunc_ln44_reg_4205 == 6'd29);
        ap_predicate_pred2008_state5 <= (trunc_ln44_reg_4205 == 6'd28);
        ap_predicate_pred2013_state5 <= (trunc_ln44_reg_4205 == 6'd27);
        ap_predicate_pred2018_state5 <= (trunc_ln44_reg_4205 == 6'd26);
        ap_predicate_pred2023_state5 <= (trunc_ln44_reg_4205 == 6'd25);
        ap_predicate_pred2028_state5 <= (trunc_ln44_reg_4205 == 6'd24);
        ap_predicate_pred2033_state5 <= (trunc_ln44_reg_4205 == 6'd23);
        ap_predicate_pred2038_state5 <= (trunc_ln44_reg_4205 == 6'd22);
        ap_predicate_pred2043_state5 <= (trunc_ln44_reg_4205 == 6'd21);
        ap_predicate_pred2048_state5 <= (trunc_ln44_reg_4205 == 6'd20);
        ap_predicate_pred2053_state5 <= (trunc_ln44_reg_4205 == 6'd19);
        ap_predicate_pred2058_state5 <= (trunc_ln44_reg_4205 == 6'd18);
        ap_predicate_pred2063_state5 <= (trunc_ln44_reg_4205 == 6'd17);
        ap_predicate_pred2068_state5 <= (trunc_ln44_reg_4205 == 6'd16);
        ap_predicate_pred2073_state5 <= (trunc_ln44_reg_4205 == 6'd15);
        ap_predicate_pred2078_state5 <= (trunc_ln44_reg_4205 == 6'd14);
        ap_predicate_pred2083_state5 <= (trunc_ln44_reg_4205 == 6'd13);
        ap_predicate_pred2088_state5 <= (trunc_ln44_reg_4205 == 6'd12);
        ap_predicate_pred2093_state5 <= (trunc_ln44_reg_4205 == 6'd11);
        ap_predicate_pred2098_state5 <= (trunc_ln44_reg_4205 == 6'd10);
        ap_predicate_pred2103_state5 <= (trunc_ln44_reg_4205 == 6'd9);
        ap_predicate_pred2108_state5 <= (trunc_ln44_reg_4205 == 6'd8);
        ap_predicate_pred2113_state5 <= (trunc_ln44_reg_4205 == 6'd7);
        ap_predicate_pred2118_state5 <= (trunc_ln44_reg_4205 == 6'd6);
        ap_predicate_pred2123_state5 <= (trunc_ln44_reg_4205 == 6'd5);
        ap_predicate_pred2128_state5 <= (trunc_ln44_reg_4205 == 6'd4);
        ap_predicate_pred2133_state5 <= (trunc_ln44_reg_4205 == 6'd3);
        ap_predicate_pred2138_state5 <= (trunc_ln44_reg_4205 == 6'd2);
        ap_predicate_pred2143_state5 <= (trunc_ln44_reg_4205 == 6'd1);
        ap_predicate_pred2148_state5 <= (trunc_ln44_reg_4205 == 6'd0);
        ap_predicate_pred2153_state5 <= (trunc_ln44_reg_4205 == 6'd63);
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_159_reg_4534 <= empty_159_fu_3158_p1;
        empty_160_reg_4539 <= empty_160_fu_3163_p1;
        empty_161_reg_4544 <= empty_161_fu_3168_p1;
        empty_162_reg_4549 <= empty_162_fu_3173_p1;
        empty_163_reg_4554 <= empty_163_fu_3178_p1;
        empty_164_reg_4559 <= empty_164_fu_3183_p1;
        empty_165_reg_4564 <= empty_165_fu_3188_p1;
        empty_166_reg_4569 <= empty_166_fu_3193_p1;
        empty_167_reg_4574 <= empty_167_fu_3198_p1;
        empty_168_reg_4579 <= empty_168_fu_3203_p1;
        empty_169_reg_4584 <= empty_169_fu_3208_p1;
        empty_170_reg_4589 <= empty_170_fu_3213_p1;
        empty_171_reg_4594 <= empty_171_fu_3218_p1;
        empty_172_reg_4599 <= empty_172_fu_3223_p1;
        empty_173_reg_4604 <= empty_173_fu_3228_p1;
        empty_174_reg_4609 <= empty_174_fu_3233_p1;
        empty_175_reg_4614 <= empty_175_fu_3238_p1;
        empty_176_reg_4619 <= empty_176_fu_3243_p1;
        empty_177_reg_4624 <= empty_177_fu_3248_p1;
        empty_178_reg_4629 <= empty_178_fu_3253_p1;
        empty_179_reg_4634 <= empty_179_fu_3258_p1;
        empty_180_reg_4639 <= empty_180_fu_3263_p1;
        empty_181_reg_4644 <= empty_181_fu_3268_p1;
        empty_182_reg_4649 <= empty_182_fu_3273_p1;
        empty_183_reg_4654 <= empty_183_fu_3278_p1;
        empty_184_reg_4659 <= empty_184_fu_3283_p1;
        empty_185_reg_4664 <= empty_185_fu_3288_p1;
        empty_186_reg_4669 <= empty_186_fu_3293_p1;
        empty_187_reg_4674 <= empty_187_fu_3298_p1;
        empty_188_reg_4679 <= empty_188_fu_3303_p1;
        empty_189_reg_4684 <= empty_189_fu_3308_p1;
        empty_190_reg_4689 <= empty_190_fu_3313_p1;
        empty_191_reg_4694 <= empty_191_fu_3318_p1;
        empty_192_reg_4699 <= empty_192_fu_3323_p1;
        empty_193_reg_4704 <= empty_193_fu_3328_p1;
        empty_194_reg_4709 <= empty_194_fu_3333_p1;
        empty_195_reg_4714 <= empty_195_fu_3338_p1;
        empty_196_reg_4719 <= empty_196_fu_3343_p1;
        empty_197_reg_4724 <= empty_197_fu_3348_p1;
        empty_198_reg_4729 <= empty_198_fu_3353_p1;
        empty_199_reg_4734 <= empty_199_fu_3358_p1;
        empty_200_reg_4739 <= empty_200_fu_3363_p1;
        empty_201_reg_4744 <= empty_201_fu_3368_p1;
        empty_202_reg_4749 <= empty_202_fu_3373_p1;
        empty_203_reg_4754 <= empty_203_fu_3378_p1;
        empty_204_reg_4759 <= empty_204_fu_3383_p1;
        empty_205_reg_4764 <= empty_205_fu_3388_p1;
        empty_206_reg_4769 <= empty_206_fu_3393_p1;
        empty_207_reg_4774 <= empty_207_fu_3398_p1;
        empty_208_reg_4779 <= empty_208_fu_3403_p1;
        empty_209_reg_4784 <= empty_209_fu_3408_p1;
        empty_210_reg_4789 <= empty_210_fu_3413_p1;
        empty_211_reg_4794 <= empty_211_fu_3418_p1;
        empty_212_reg_4799 <= empty_212_fu_3423_p1;
        empty_213_reg_4804 <= empty_213_fu_3428_p1;
        empty_214_reg_4809 <= empty_214_fu_3433_p1;
        empty_215_reg_4814 <= empty_215_fu_3438_p1;
        empty_216_reg_4819 <= empty_216_fu_3443_p1;
        empty_217_reg_4824 <= empty_217_fu_3448_p1;
        empty_218_reg_4829 <= empty_218_fu_3453_p1;
        empty_219_reg_4834 <= empty_219_fu_3458_p1;
        empty_220_reg_4839 <= empty_220_fu_3463_p1;
        empty_221_reg_4844 <= empty_221_fu_3468_p1;
        empty_reg_4529 <= empty_fu_3153_p1;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2148_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o_ap_vld == 1'b1))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2148_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_0_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_0_o_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2098_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_10_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o_ap_vld == 1'b1))) begin
        activations_10_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o;
    end else begin
        activations_10_o = activations_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2098_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_10_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_10_o_ap_vld;
    end else begin
        activations_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2093_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_11_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o_ap_vld == 1'b1))) begin
        activations_11_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o;
    end else begin
        activations_11_o = activations_11_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2093_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_11_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_11_o_ap_vld;
    end else begin
        activations_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2088_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_12_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o_ap_vld == 1'b1))) begin
        activations_12_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o;
    end else begin
        activations_12_o = activations_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2088_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_12_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_12_o_ap_vld;
    end else begin
        activations_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2083_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_13_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o_ap_vld == 1'b1))) begin
        activations_13_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o;
    end else begin
        activations_13_o = activations_13_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2083_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_13_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_13_o_ap_vld;
    end else begin
        activations_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2078_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_14_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o_ap_vld == 1'b1))) begin
        activations_14_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o;
    end else begin
        activations_14_o = activations_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2078_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_14_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_14_o_ap_vld;
    end else begin
        activations_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2073_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_15_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o_ap_vld == 1'b1))) begin
        activations_15_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o;
    end else begin
        activations_15_o = activations_15_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2073_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_15_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_15_o_ap_vld;
    end else begin
        activations_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2068_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_16_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o_ap_vld == 1'b1))) begin
        activations_16_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o;
    end else begin
        activations_16_o = activations_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2068_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_16_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_16_o_ap_vld;
    end else begin
        activations_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2063_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_17_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o_ap_vld == 1'b1))) begin
        activations_17_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o;
    end else begin
        activations_17_o = activations_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2063_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_17_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_17_o_ap_vld;
    end else begin
        activations_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2058_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_18_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o_ap_vld == 1'b1))) begin
        activations_18_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o;
    end else begin
        activations_18_o = activations_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2058_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_18_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_18_o_ap_vld;
    end else begin
        activations_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2053_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_19_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o_ap_vld == 1'b1))) begin
        activations_19_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o;
    end else begin
        activations_19_o = activations_19_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2053_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_19_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_19_o_ap_vld;
    end else begin
        activations_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2143_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o_ap_vld == 1'b1))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2143_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_1_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_1_o_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2048_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_20_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o_ap_vld == 1'b1))) begin
        activations_20_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o;
    end else begin
        activations_20_o = activations_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2048_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_20_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_20_o_ap_vld;
    end else begin
        activations_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2043_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_21_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o_ap_vld == 1'b1))) begin
        activations_21_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o;
    end else begin
        activations_21_o = activations_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2043_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_21_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_21_o_ap_vld;
    end else begin
        activations_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2038_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_22_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o_ap_vld == 1'b1))) begin
        activations_22_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o;
    end else begin
        activations_22_o = activations_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2038_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_22_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_22_o_ap_vld;
    end else begin
        activations_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2033_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_23_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o_ap_vld == 1'b1))) begin
        activations_23_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o;
    end else begin
        activations_23_o = activations_23_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2033_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_23_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_23_o_ap_vld;
    end else begin
        activations_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2028_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_24_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o_ap_vld == 1'b1))) begin
        activations_24_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o;
    end else begin
        activations_24_o = activations_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2028_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_24_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_24_o_ap_vld;
    end else begin
        activations_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2023_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_25_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o_ap_vld == 1'b1))) begin
        activations_25_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o;
    end else begin
        activations_25_o = activations_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2023_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_25_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_25_o_ap_vld;
    end else begin
        activations_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2018_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_26_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o_ap_vld == 1'b1))) begin
        activations_26_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o;
    end else begin
        activations_26_o = activations_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2018_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_26_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_26_o_ap_vld;
    end else begin
        activations_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2013_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_27_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o_ap_vld == 1'b1))) begin
        activations_27_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o;
    end else begin
        activations_27_o = activations_27_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2013_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_27_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_27_o_ap_vld;
    end else begin
        activations_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2008_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_28_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o_ap_vld == 1'b1))) begin
        activations_28_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o;
    end else begin
        activations_28_o = activations_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2008_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_28_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_28_o_ap_vld;
    end else begin
        activations_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2003_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_29_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o_ap_vld == 1'b1))) begin
        activations_29_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o;
    end else begin
        activations_29_o = activations_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2003_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_29_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_29_o_ap_vld;
    end else begin
        activations_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2138_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o_ap_vld == 1'b1))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2138_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_2_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_2_o_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1998_state5 == 1'b1))) begin
        activations_30_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o_ap_vld == 1'b1))) begin
        activations_30_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o;
    end else begin
        activations_30_o = activations_30_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1998_state5 == 1'b1))) begin
        activations_30_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_30_o_ap_vld;
    end else begin
        activations_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1993_state5 == 1'b1))) begin
        activations_31_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o_ap_vld == 1'b1))) begin
        activations_31_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o;
    end else begin
        activations_31_o = activations_31_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1993_state5 == 1'b1))) begin
        activations_31_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_31_o_ap_vld;
    end else begin
        activations_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1988_state5 == 1'b1))) begin
        activations_32_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o_ap_vld == 1'b1))) begin
        activations_32_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o;
    end else begin
        activations_32_o = activations_32_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1988_state5 == 1'b1))) begin
        activations_32_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_32_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_32_o_ap_vld;
    end else begin
        activations_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1983_state5 == 1'b1))) begin
        activations_33_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o_ap_vld == 1'b1))) begin
        activations_33_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o;
    end else begin
        activations_33_o = activations_33_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1983_state5 == 1'b1))) begin
        activations_33_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_33_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_33_o_ap_vld;
    end else begin
        activations_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1978_state5 == 1'b1))) begin
        activations_34_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o_ap_vld == 1'b1))) begin
        activations_34_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o;
    end else begin
        activations_34_o = activations_34_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1978_state5 == 1'b1))) begin
        activations_34_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_34_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_34_o_ap_vld;
    end else begin
        activations_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1973_state5 == 1'b1))) begin
        activations_35_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o_ap_vld == 1'b1))) begin
        activations_35_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o;
    end else begin
        activations_35_o = activations_35_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1973_state5 == 1'b1))) begin
        activations_35_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_35_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_35_o_ap_vld;
    end else begin
        activations_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1968_state5 == 1'b1))) begin
        activations_36_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o_ap_vld == 1'b1))) begin
        activations_36_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o;
    end else begin
        activations_36_o = activations_36_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1968_state5 == 1'b1))) begin
        activations_36_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_36_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_36_o_ap_vld;
    end else begin
        activations_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1963_state5 == 1'b1))) begin
        activations_37_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o_ap_vld == 1'b1))) begin
        activations_37_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o;
    end else begin
        activations_37_o = activations_37_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1963_state5 == 1'b1))) begin
        activations_37_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_37_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_37_o_ap_vld;
    end else begin
        activations_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1958_state5 == 1'b1))) begin
        activations_38_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o_ap_vld == 1'b1))) begin
        activations_38_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o;
    end else begin
        activations_38_o = activations_38_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1958_state5 == 1'b1))) begin
        activations_38_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_38_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_38_o_ap_vld;
    end else begin
        activations_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1953_state5 == 1'b1))) begin
        activations_39_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o_ap_vld == 1'b1))) begin
        activations_39_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o;
    end else begin
        activations_39_o = activations_39_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1953_state5 == 1'b1))) begin
        activations_39_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_39_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_39_o_ap_vld;
    end else begin
        activations_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2133_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_3_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o_ap_vld == 1'b1))) begin
        activations_3_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o;
    end else begin
        activations_3_o = activations_3_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2133_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_3_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_3_o_ap_vld;
    end else begin
        activations_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1948_state5 == 1'b1))) begin
        activations_40_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o_ap_vld == 1'b1))) begin
        activations_40_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o;
    end else begin
        activations_40_o = activations_40_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1948_state5 == 1'b1))) begin
        activations_40_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_40_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_40_o_ap_vld;
    end else begin
        activations_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1943_state5 == 1'b1))) begin
        activations_41_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o_ap_vld == 1'b1))) begin
        activations_41_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o;
    end else begin
        activations_41_o = activations_41_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1943_state5 == 1'b1))) begin
        activations_41_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_41_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_41_o_ap_vld;
    end else begin
        activations_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1938_state5 == 1'b1))) begin
        activations_42_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o_ap_vld == 1'b1))) begin
        activations_42_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o;
    end else begin
        activations_42_o = activations_42_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1938_state5 == 1'b1))) begin
        activations_42_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_42_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_42_o_ap_vld;
    end else begin
        activations_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1933_state5 == 1'b1))) begin
        activations_43_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o_ap_vld == 1'b1))) begin
        activations_43_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o;
    end else begin
        activations_43_o = activations_43_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1933_state5 == 1'b1))) begin
        activations_43_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_43_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_43_o_ap_vld;
    end else begin
        activations_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1928_state5 == 1'b1))) begin
        activations_44_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o_ap_vld == 1'b1))) begin
        activations_44_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o;
    end else begin
        activations_44_o = activations_44_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1928_state5 == 1'b1))) begin
        activations_44_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_44_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_44_o_ap_vld;
    end else begin
        activations_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1923_state5 == 1'b1))) begin
        activations_45_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o_ap_vld == 1'b1))) begin
        activations_45_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o;
    end else begin
        activations_45_o = activations_45_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1923_state5 == 1'b1))) begin
        activations_45_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_45_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_45_o_ap_vld;
    end else begin
        activations_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1918_state5 == 1'b1))) begin
        activations_46_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o_ap_vld == 1'b1))) begin
        activations_46_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o;
    end else begin
        activations_46_o = activations_46_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1918_state5 == 1'b1))) begin
        activations_46_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_46_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_46_o_ap_vld;
    end else begin
        activations_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1913_state5 == 1'b1))) begin
        activations_47_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o_ap_vld == 1'b1))) begin
        activations_47_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o;
    end else begin
        activations_47_o = activations_47_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1913_state5 == 1'b1))) begin
        activations_47_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_47_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_47_o_ap_vld;
    end else begin
        activations_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1908_state5 == 1'b1))) begin
        activations_48_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o_ap_vld == 1'b1))) begin
        activations_48_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o;
    end else begin
        activations_48_o = activations_48_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1908_state5 == 1'b1))) begin
        activations_48_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_48_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_48_o_ap_vld;
    end else begin
        activations_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1903_state5 == 1'b1))) begin
        activations_49_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o_ap_vld == 1'b1))) begin
        activations_49_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o;
    end else begin
        activations_49_o = activations_49_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1903_state5 == 1'b1))) begin
        activations_49_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_49_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_49_o_ap_vld;
    end else begin
        activations_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2128_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_4_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o_ap_vld == 1'b1))) begin
        activations_4_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o;
    end else begin
        activations_4_o = activations_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2128_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_4_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_4_o_ap_vld;
    end else begin
        activations_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1898_state5 == 1'b1))) begin
        activations_50_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o_ap_vld == 1'b1))) begin
        activations_50_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o;
    end else begin
        activations_50_o = activations_50_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1898_state5 == 1'b1))) begin
        activations_50_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_50_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_50_o_ap_vld;
    end else begin
        activations_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1893_state5 == 1'b1))) begin
        activations_51_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o_ap_vld == 1'b1))) begin
        activations_51_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o;
    end else begin
        activations_51_o = activations_51_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1893_state5 == 1'b1))) begin
        activations_51_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_51_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_51_o_ap_vld;
    end else begin
        activations_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1888_state5 == 1'b1))) begin
        activations_52_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o_ap_vld == 1'b1))) begin
        activations_52_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o;
    end else begin
        activations_52_o = activations_52_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1888_state5 == 1'b1))) begin
        activations_52_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_52_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_52_o_ap_vld;
    end else begin
        activations_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1883_state5 == 1'b1))) begin
        activations_53_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o_ap_vld == 1'b1))) begin
        activations_53_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o;
    end else begin
        activations_53_o = activations_53_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1883_state5 == 1'b1))) begin
        activations_53_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_53_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_53_o_ap_vld;
    end else begin
        activations_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1878_state5 == 1'b1))) begin
        activations_54_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o_ap_vld == 1'b1))) begin
        activations_54_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o;
    end else begin
        activations_54_o = activations_54_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1878_state5 == 1'b1))) begin
        activations_54_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_54_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_54_o_ap_vld;
    end else begin
        activations_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1873_state5 == 1'b1))) begin
        activations_55_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o_ap_vld == 1'b1))) begin
        activations_55_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o;
    end else begin
        activations_55_o = activations_55_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1873_state5 == 1'b1))) begin
        activations_55_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_55_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_55_o_ap_vld;
    end else begin
        activations_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1868_state5 == 1'b1))) begin
        activations_56_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o_ap_vld == 1'b1))) begin
        activations_56_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o;
    end else begin
        activations_56_o = activations_56_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1868_state5 == 1'b1))) begin
        activations_56_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_56_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_56_o_ap_vld;
    end else begin
        activations_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1863_state5 == 1'b1))) begin
        activations_57_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o_ap_vld == 1'b1))) begin
        activations_57_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o;
    end else begin
        activations_57_o = activations_57_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1863_state5 == 1'b1))) begin
        activations_57_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_57_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_57_o_ap_vld;
    end else begin
        activations_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1858_state5 == 1'b1))) begin
        activations_58_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o_ap_vld == 1'b1))) begin
        activations_58_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o;
    end else begin
        activations_58_o = activations_58_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1858_state5 == 1'b1))) begin
        activations_58_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_58_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_58_o_ap_vld;
    end else begin
        activations_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1853_state5 == 1'b1))) begin
        activations_59_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o_ap_vld == 1'b1))) begin
        activations_59_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o;
    end else begin
        activations_59_o = activations_59_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1853_state5 == 1'b1))) begin
        activations_59_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_59_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_59_o_ap_vld;
    end else begin
        activations_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2123_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_5_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o_ap_vld == 1'b1))) begin
        activations_5_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o;
    end else begin
        activations_5_o = activations_5_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2123_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_5_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_5_o_ap_vld;
    end else begin
        activations_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1848_state5 == 1'b1))) begin
        activations_60_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o_ap_vld == 1'b1))) begin
        activations_60_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o;
    end else begin
        activations_60_o = activations_60_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1848_state5 == 1'b1))) begin
        activations_60_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_60_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_60_o_ap_vld;
    end else begin
        activations_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1843_state5 == 1'b1))) begin
        activations_61_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o_ap_vld == 1'b1))) begin
        activations_61_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o;
    end else begin
        activations_61_o = activations_61_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1843_state5 == 1'b1))) begin
        activations_61_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_61_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_61_o_ap_vld;
    end else begin
        activations_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1835_state5 == 1'b1))) begin
        activations_62_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o_ap_vld == 1'b1))) begin
        activations_62_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o;
    end else begin
        activations_62_o = activations_62_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1835_state5 == 1'b1))) begin
        activations_62_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_62_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_62_o_ap_vld;
    end else begin
        activations_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2153_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_63_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o_ap_vld == 1'b1))) begin
        activations_63_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o;
    end else begin
        activations_63_o = activations_63_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2153_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_63_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_63_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_63_o_ap_vld;
    end else begin
        activations_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2118_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_6_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o_ap_vld == 1'b1))) begin
        activations_6_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o;
    end else begin
        activations_6_o = activations_6_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2118_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_6_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_6_o_ap_vld;
    end else begin
        activations_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2113_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_7_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o_ap_vld == 1'b1))) begin
        activations_7_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o;
    end else begin
        activations_7_o = activations_7_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2113_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_7_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_7_o_ap_vld;
    end else begin
        activations_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2108_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_8_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o_ap_vld == 1'b1))) begin
        activations_8_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o;
    end else begin
        activations_8_o = activations_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2108_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_8_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_8_o_ap_vld;
    end else begin
        activations_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2103_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_9_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_add114_out;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o_ap_vld == 1'b1))) begin
        activations_9_o = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o;
    end else begin
        activations_9_o = activations_9_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred2103_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        activations_9_o_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_o_ap_vld = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_activations_9_o_ap_vld;
    end else begin
        activations_9_o_ap_vld = 1'b0;
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4849_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_4849_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_ce;
    end else begin
        grp_fu_4849_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4849_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_4849_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_opcode;
    end else begin
        grp_fu_4849_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4849_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_4849_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din0;
    end else begin
        grp_fu_4849_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4849_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4849_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_4849_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_grp_fu_4849_p_din1;
    end else begin
        grp_fu_4849_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4853_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_ce;
    end else begin
        grp_fu_4853_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_32_ce0_local = 1'b1;
    end else begin
        weights2_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_33_ce0_local = 1'b1;
    end else begin
        weights2_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_34_ce0_local = 1'b1;
    end else begin
        weights2_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_35_ce0_local = 1'b1;
    end else begin
        weights2_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_36_ce0_local = 1'b1;
    end else begin
        weights2_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_37_ce0_local = 1'b1;
    end else begin
        weights2_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_38_ce0_local = 1'b1;
    end else begin
        weights2_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_39_ce0_local = 1'b1;
    end else begin
        weights2_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_40_ce0_local = 1'b1;
    end else begin
        weights2_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_41_ce0_local = 1'b1;
    end else begin
        weights2_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_42_ce0_local = 1'b1;
    end else begin
        weights2_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_43_ce0_local = 1'b1;
    end else begin
        weights2_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_44_ce0_local = 1'b1;
    end else begin
        weights2_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_45_ce0_local = 1'b1;
    end else begin
        weights2_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_46_ce0_local = 1'b1;
    end else begin
        weights2_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_47_ce0_local = 1'b1;
    end else begin
        weights2_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_48_ce0_local = 1'b1;
    end else begin
        weights2_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_49_ce0_local = 1'b1;
    end else begin
        weights2_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_50_ce0_local = 1'b1;
    end else begin
        weights2_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_51_ce0_local = 1'b1;
    end else begin
        weights2_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_52_ce0_local = 1'b1;
    end else begin
        weights2_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_53_ce0_local = 1'b1;
    end else begin
        weights2_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_54_ce0_local = 1'b1;
    end else begin
        weights2_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_55_ce0_local = 1'b1;
    end else begin
        weights2_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_56_ce0_local = 1'b1;
    end else begin
        weights2_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_57_ce0_local = 1'b1;
    end else begin
        weights2_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_58_ce0_local = 1'b1;
    end else begin
        weights2_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_59_ce0_local = 1'b1;
    end else begin
        weights2_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_60_ce0_local = 1'b1;
    end else begin
        weights2_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_61_ce0_local = 1'b1;
    end else begin
        weights2_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_62_ce0_local = 1'b1;
    end else begin
        weights2_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_63_ce0_local = 1'b1;
    end else begin
        weights2_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln44_fu_3069_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_done == 1'b1))) begin
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
assign add_ln44_fu_3075_p2 = (i_fu_676 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign empty_159_fu_3158_p1 = weights2_17_q0;
assign empty_160_fu_3163_p1 = weights2_33_q0;
assign empty_161_fu_3168_p1 = weights2_49_q0;
assign empty_162_fu_3173_p1 = weights2_2_q0;
assign empty_163_fu_3178_p1 = weights2_18_q0;
assign empty_164_fu_3183_p1 = weights2_34_q0;
assign empty_165_fu_3188_p1 = weights2_50_q0;
assign empty_166_fu_3193_p1 = weights2_3_q0;
assign empty_167_fu_3198_p1 = weights2_19_q0;
assign empty_168_fu_3203_p1 = weights2_35_q0;
assign empty_169_fu_3208_p1 = weights2_51_q0;
assign empty_170_fu_3213_p1 = weights2_4_q0;
assign empty_171_fu_3218_p1 = weights2_20_q0;
assign empty_172_fu_3223_p1 = weights2_36_q0;
assign empty_173_fu_3228_p1 = weights2_52_q0;
assign empty_174_fu_3233_p1 = weights2_5_q0;
assign empty_175_fu_3238_p1 = weights2_21_q0;
assign empty_176_fu_3243_p1 = weights2_37_q0;
assign empty_177_fu_3248_p1 = weights2_53_q0;
assign empty_178_fu_3253_p1 = weights2_6_q0;
assign empty_179_fu_3258_p1 = weights2_22_q0;
assign empty_180_fu_3263_p1 = weights2_38_q0;
assign empty_181_fu_3268_p1 = weights2_54_q0;
assign empty_182_fu_3273_p1 = weights2_7_q0;
assign empty_183_fu_3278_p1 = weights2_23_q0;
assign empty_184_fu_3283_p1 = weights2_39_q0;
assign empty_185_fu_3288_p1 = weights2_55_q0;
assign empty_186_fu_3293_p1 = weights2_8_q0;
assign empty_187_fu_3298_p1 = weights2_24_q0;
assign empty_188_fu_3303_p1 = weights2_40_q0;
assign empty_189_fu_3308_p1 = weights2_56_q0;
assign empty_190_fu_3313_p1 = weights2_9_q0;
assign empty_191_fu_3318_p1 = weights2_25_q0;
assign empty_192_fu_3323_p1 = weights2_41_q0;
assign empty_193_fu_3328_p1 = weights2_57_q0;
assign empty_194_fu_3333_p1 = weights2_10_q0;
assign empty_195_fu_3338_p1 = weights2_26_q0;
assign empty_196_fu_3343_p1 = weights2_42_q0;
assign empty_197_fu_3348_p1 = weights2_58_q0;
assign empty_198_fu_3353_p1 = weights2_11_q0;
assign empty_199_fu_3358_p1 = weights2_27_q0;
assign empty_200_fu_3363_p1 = weights2_43_q0;
assign empty_201_fu_3368_p1 = weights2_59_q0;
assign empty_202_fu_3373_p1 = weights2_12_q0;
assign empty_203_fu_3378_p1 = weights2_28_q0;
assign empty_204_fu_3383_p1 = weights2_44_q0;
assign empty_205_fu_3388_p1 = weights2_60_q0;
assign empty_206_fu_3393_p1 = weights2_13_q0;
assign empty_207_fu_3398_p1 = weights2_29_q0;
assign empty_208_fu_3403_p1 = weights2_45_q0;
assign empty_209_fu_3408_p1 = weights2_61_q0;
assign empty_210_fu_3413_p1 = weights2_14_q0;
assign empty_211_fu_3418_p1 = weights2_30_q0;
assign empty_212_fu_3423_p1 = weights2_46_q0;
assign empty_213_fu_3428_p1 = weights2_62_q0;
assign empty_214_fu_3433_p1 = weights2_15_q0;
assign empty_215_fu_3438_p1 = weights2_31_q0;
assign empty_216_fu_3443_p1 = weights2_47_q0;
assign empty_217_fu_3448_p1 = weights2_63_q0;
assign empty_218_fu_3453_p1 = weights2_0_q0;
assign empty_219_fu_3458_p1 = weights2_16_q0;
assign empty_220_fu_3463_p1 = weights2_32_q0;
assign empty_221_fu_3468_p1 = weights2_48_q0;
assign empty_fu_3153_p1 = weights2_1_q0;
assign grp_fu_24749_p_ce = grp_fu_4849_ce;
assign grp_fu_24749_p_din0 = grp_fu_4849_p0;
assign grp_fu_24749_p_din1 = grp_fu_4849_p1;
assign grp_fu_24749_p_opcode = grp_fu_4849_opcode;
assign grp_fu_24941_p_ce = grp_fu_4853_ce;
assign grp_fu_24941_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din0;
assign grp_fu_24941_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_grp_fu_4853_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_2732_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_2928_ap_start_reg;
assign icmp_ln44_fu_3069_p2 = ((i_fu_676 == 7'd64) ? 1'b1 : 1'b0);
assign trunc_ln44_fu_3149_p1 = i_fu_676[5:0];
assign weights2_0_address0 = zext_ln44_fu_3081_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln44_fu_3081_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln44_fu_3081_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln44_fu_3081_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln44_fu_3081_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln44_fu_3081_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln44_fu_3081_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_16_address0 = zext_ln44_fu_3081_p1;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_17_address0 = zext_ln44_fu_3081_p1;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_18_address0 = zext_ln44_fu_3081_p1;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_19_address0 = zext_ln44_fu_3081_p1;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_1_address0 = zext_ln44_fu_3081_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_20_address0 = zext_ln44_fu_3081_p1;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_21_address0 = zext_ln44_fu_3081_p1;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_22_address0 = zext_ln44_fu_3081_p1;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_23_address0 = zext_ln44_fu_3081_p1;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_24_address0 = zext_ln44_fu_3081_p1;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_25_address0 = zext_ln44_fu_3081_p1;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_26_address0 = zext_ln44_fu_3081_p1;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_27_address0 = zext_ln44_fu_3081_p1;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_28_address0 = zext_ln44_fu_3081_p1;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_29_address0 = zext_ln44_fu_3081_p1;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_2_address0 = zext_ln44_fu_3081_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_30_address0 = zext_ln44_fu_3081_p1;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_31_address0 = zext_ln44_fu_3081_p1;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_32_address0 = zext_ln44_fu_3081_p1;
assign weights2_32_ce0 = weights2_32_ce0_local;
assign weights2_33_address0 = zext_ln44_fu_3081_p1;
assign weights2_33_ce0 = weights2_33_ce0_local;
assign weights2_34_address0 = zext_ln44_fu_3081_p1;
assign weights2_34_ce0 = weights2_34_ce0_local;
assign weights2_35_address0 = zext_ln44_fu_3081_p1;
assign weights2_35_ce0 = weights2_35_ce0_local;
assign weights2_36_address0 = zext_ln44_fu_3081_p1;
assign weights2_36_ce0 = weights2_36_ce0_local;
assign weights2_37_address0 = zext_ln44_fu_3081_p1;
assign weights2_37_ce0 = weights2_37_ce0_local;
assign weights2_38_address0 = zext_ln44_fu_3081_p1;
assign weights2_38_ce0 = weights2_38_ce0_local;
assign weights2_39_address0 = zext_ln44_fu_3081_p1;
assign weights2_39_ce0 = weights2_39_ce0_local;
assign weights2_3_address0 = zext_ln44_fu_3081_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_40_address0 = zext_ln44_fu_3081_p1;
assign weights2_40_ce0 = weights2_40_ce0_local;
assign weights2_41_address0 = zext_ln44_fu_3081_p1;
assign weights2_41_ce0 = weights2_41_ce0_local;
assign weights2_42_address0 = zext_ln44_fu_3081_p1;
assign weights2_42_ce0 = weights2_42_ce0_local;
assign weights2_43_address0 = zext_ln44_fu_3081_p1;
assign weights2_43_ce0 = weights2_43_ce0_local;
assign weights2_44_address0 = zext_ln44_fu_3081_p1;
assign weights2_44_ce0 = weights2_44_ce0_local;
assign weights2_45_address0 = zext_ln44_fu_3081_p1;
assign weights2_45_ce0 = weights2_45_ce0_local;
assign weights2_46_address0 = zext_ln44_fu_3081_p1;
assign weights2_46_ce0 = weights2_46_ce0_local;
assign weights2_47_address0 = zext_ln44_fu_3081_p1;
assign weights2_47_ce0 = weights2_47_ce0_local;
assign weights2_48_address0 = zext_ln44_fu_3081_p1;
assign weights2_48_ce0 = weights2_48_ce0_local;
assign weights2_49_address0 = zext_ln44_fu_3081_p1;
assign weights2_49_ce0 = weights2_49_ce0_local;
assign weights2_4_address0 = zext_ln44_fu_3081_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_50_address0 = zext_ln44_fu_3081_p1;
assign weights2_50_ce0 = weights2_50_ce0_local;
assign weights2_51_address0 = zext_ln44_fu_3081_p1;
assign weights2_51_ce0 = weights2_51_ce0_local;
assign weights2_52_address0 = zext_ln44_fu_3081_p1;
assign weights2_52_ce0 = weights2_52_ce0_local;
assign weights2_53_address0 = zext_ln44_fu_3081_p1;
assign weights2_53_ce0 = weights2_53_ce0_local;
assign weights2_54_address0 = zext_ln44_fu_3081_p1;
assign weights2_54_ce0 = weights2_54_ce0_local;
assign weights2_55_address0 = zext_ln44_fu_3081_p1;
assign weights2_55_ce0 = weights2_55_ce0_local;
assign weights2_56_address0 = zext_ln44_fu_3081_p1;
assign weights2_56_ce0 = weights2_56_ce0_local;
assign weights2_57_address0 = zext_ln44_fu_3081_p1;
assign weights2_57_ce0 = weights2_57_ce0_local;
assign weights2_58_address0 = zext_ln44_fu_3081_p1;
assign weights2_58_ce0 = weights2_58_ce0_local;
assign weights2_59_address0 = zext_ln44_fu_3081_p1;
assign weights2_59_ce0 = weights2_59_ce0_local;
assign weights2_5_address0 = zext_ln44_fu_3081_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_60_address0 = zext_ln44_fu_3081_p1;
assign weights2_60_ce0 = weights2_60_ce0_local;
assign weights2_61_address0 = zext_ln44_fu_3081_p1;
assign weights2_61_ce0 = weights2_61_ce0_local;
assign weights2_62_address0 = zext_ln44_fu_3081_p1;
assign weights2_62_ce0 = weights2_62_ce0_local;
assign weights2_63_address0 = zext_ln44_fu_3081_p1;
assign weights2_63_ce0 = weights2_63_ce0_local;
assign weights2_6_address0 = zext_ln44_fu_3081_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln44_fu_3081_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln44_fu_3081_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln44_fu_3081_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln44_fu_3081_p1 = i_fu_676;
endmodule 