
module backprop_matrix_vector_product_with_bias_input_layer_35_36_1_Pipeline_VITIS_LOOP_26_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_63_i,activations_63_o,activations_63_o_ap_vld,activations_62_i,activations_62_o,activations_62_o_ap_vld,activations_61_i,activations_61_o,activations_61_o_ap_vld,activations_60_i,activations_60_o,activations_60_o_ap_vld,activations_59_i,activations_59_o,activations_59_o_ap_vld,activations_58_i,activations_58_o,activations_58_o_ap_vld,activations_57_i,activations_57_o,activations_57_o_ap_vld,activations_56_i,activations_56_o,activations_56_o_ap_vld,activations_55_i,activations_55_o,activations_55_o_ap_vld,activations_54_i,activations_54_o,activations_54_o_ap_vld,activations_53_i,activations_53_o,activations_53_o_ap_vld,activations_52_i,activations_52_o,activations_52_o_ap_vld,activations_51_i,activations_51_o,activations_51_o_ap_vld,activations_50_i,activations_50_o,activations_50_o_ap_vld,activations_49_i,activations_49_o,activations_49_o_ap_vld,activations_48_i,activations_48_o,activations_48_o_ap_vld,activations_47_i,activations_47_o,activations_47_o_ap_vld,activations_46_i,activations_46_o,activations_46_o_ap_vld,activations_45_i,activations_45_o,activations_45_o_ap_vld,activations_44_i,activations_44_o,activations_44_o_ap_vld,activations_43_i,activations_43_o,activations_43_o_ap_vld,activations_42_i,activations_42_o,activations_42_o_ap_vld,activations_41_i,activations_41_o,activations_41_o_ap_vld,activations_40_i,activations_40_o,activations_40_o_ap_vld,activations_39_i,activations_39_o,activations_39_o_ap_vld,activations_38_i,activations_38_o,activations_38_o_ap_vld,activations_37_i,activations_37_o,activations_37_o_ap_vld,activations_36_i,activations_36_o,activations_36_o_ap_vld,activations_35_i,activations_35_o,activations_35_o_ap_vld,activations_34_i,activations_34_o,activations_34_o_ap_vld,activations_33_i,activations_33_o,activations_33_o_ap_vld,activations_32_i,activations_32_o,activations_32_o_ap_vld,activations_31_i,activations_31_o,activations_31_o_ap_vld,activations_30_i,activations_30_o,activations_30_o_ap_vld,activations_29_i,activations_29_o,activations_29_o_ap_vld,activations_28_i,activations_28_o,activations_28_o_ap_vld,activations_27_i,activations_27_o,activations_27_o_ap_vld,activations_26_i,activations_26_o,activations_26_o_ap_vld,activations_25_i,activations_25_o,activations_25_o_ap_vld,activations_24_i,activations_24_o,activations_24_o_ap_vld,activations_23_i,activations_23_o,activations_23_o_ap_vld,activations_22_i,activations_22_o,activations_22_o_ap_vld,activations_21_i,activations_21_o,activations_21_o_ap_vld,activations_20_i,activations_20_o,activations_20_o_ap_vld,activations_19_i,activations_19_o,activations_19_o_ap_vld,activations_18_i,activations_18_o,activations_18_o_ap_vld,activations_17_i,activations_17_o,activations_17_o_ap_vld,activations_16_i,activations_16_o,activations_16_o_ap_vld,activations_15_i,activations_15_o,activations_15_o_ap_vld,activations_14_i,activations_14_o,activations_14_o_ap_vld,activations_13_i,activations_13_o,activations_13_o_ap_vld,activations_12_i,activations_12_o,activations_12_o_ap_vld,activations_11_i,activations_11_o,activations_11_o_ap_vld,activations_10_i,activations_10_o,activations_10_o_ap_vld,activations_9_i,activations_9_o,activations_9_o_ap_vld,activations_8_i,activations_8_o,activations_8_o_ap_vld,activations_7_i,activations_7_o,activations_7_o_ap_vld,activations_6_i,activations_6_o,activations_6_o_ap_vld,activations_5_i,activations_5_o,activations_5_o_ap_vld,activations_4_i,activations_4_o,activations_4_o_ap_vld,activations_3_i,activations_3_o,activations_3_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,biases_0_val,biases_1_val,biases_2_val,biases_3_val,biases_4_val,biases_5_val,biases_6_val,biases_7_val,biases_8_val,biases_9_val,biases_10_val,biases_11_val,biases_12_val,biases_13_val,biases_14_val,biases_15_val,biases_16_val,biases_17_val,biases_18_val,biases_19_val,biases_20_val,biases_21_val,biases_22_val,biases_23_val,biases_24_val,biases_25_val,biases_26_val,biases_27_val,biases_28_val,biases_29_val,biases_30_val,biases_31_val,biases_32_val,biases_33_val,biases_34_val,biases_35_val,biases_36_val,biases_37_val,biases_38_val,biases_39_val,biases_40_val,biases_41_val,biases_42_val,biases_43_val,biases_44_val,biases_45_val,biases_46_val,biases_47_val,biases_48_val,biases_49_val,biases_50_val,biases_51_val,biases_52_val,biases_53_val,biases_54_val,biases_55_val,biases_56_val,biases_57_val,biases_58_val,biases_59_val,biases_60_val,biases_61_val,biases_62_val,biases_63_val,grp_fu_21256_p_din0,grp_fu_21256_p_din1,grp_fu_21256_p_opcode,grp_fu_21256_p_dout0,grp_fu_21256_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_63_i;
output  [63:0] activations_63_o;
output   activations_63_o_ap_vld;
input  [63:0] activations_62_i;
output  [63:0] activations_62_o;
output   activations_62_o_ap_vld;
input  [63:0] activations_61_i;
output  [63:0] activations_61_o;
output   activations_61_o_ap_vld;
input  [63:0] activations_60_i;
output  [63:0] activations_60_o;
output   activations_60_o_ap_vld;
input  [63:0] activations_59_i;
output  [63:0] activations_59_o;
output   activations_59_o_ap_vld;
input  [63:0] activations_58_i;
output  [63:0] activations_58_o;
output   activations_58_o_ap_vld;
input  [63:0] activations_57_i;
output  [63:0] activations_57_o;
output   activations_57_o_ap_vld;
input  [63:0] activations_56_i;
output  [63:0] activations_56_o;
output   activations_56_o_ap_vld;
input  [63:0] activations_55_i;
output  [63:0] activations_55_o;
output   activations_55_o_ap_vld;
input  [63:0] activations_54_i;
output  [63:0] activations_54_o;
output   activations_54_o_ap_vld;
input  [63:0] activations_53_i;
output  [63:0] activations_53_o;
output   activations_53_o_ap_vld;
input  [63:0] activations_52_i;
output  [63:0] activations_52_o;
output   activations_52_o_ap_vld;
input  [63:0] activations_51_i;
output  [63:0] activations_51_o;
output   activations_51_o_ap_vld;
input  [63:0] activations_50_i;
output  [63:0] activations_50_o;
output   activations_50_o_ap_vld;
input  [63:0] activations_49_i;
output  [63:0] activations_49_o;
output   activations_49_o_ap_vld;
input  [63:0] activations_48_i;
output  [63:0] activations_48_o;
output   activations_48_o_ap_vld;
input  [63:0] activations_47_i;
output  [63:0] activations_47_o;
output   activations_47_o_ap_vld;
input  [63:0] activations_46_i;
output  [63:0] activations_46_o;
output   activations_46_o_ap_vld;
input  [63:0] activations_45_i;
output  [63:0] activations_45_o;
output   activations_45_o_ap_vld;
input  [63:0] activations_44_i;
output  [63:0] activations_44_o;
output   activations_44_o_ap_vld;
input  [63:0] activations_43_i;
output  [63:0] activations_43_o;
output   activations_43_o_ap_vld;
input  [63:0] activations_42_i;
output  [63:0] activations_42_o;
output   activations_42_o_ap_vld;
input  [63:0] activations_41_i;
output  [63:0] activations_41_o;
output   activations_41_o_ap_vld;
input  [63:0] activations_40_i;
output  [63:0] activations_40_o;
output   activations_40_o_ap_vld;
input  [63:0] activations_39_i;
output  [63:0] activations_39_o;
output   activations_39_o_ap_vld;
input  [63:0] activations_38_i;
output  [63:0] activations_38_o;
output   activations_38_o_ap_vld;
input  [63:0] activations_37_i;
output  [63:0] activations_37_o;
output   activations_37_o_ap_vld;
input  [63:0] activations_36_i;
output  [63:0] activations_36_o;
output   activations_36_o_ap_vld;
input  [63:0] activations_35_i;
output  [63:0] activations_35_o;
output   activations_35_o_ap_vld;
input  [63:0] activations_34_i;
output  [63:0] activations_34_o;
output   activations_34_o_ap_vld;
input  [63:0] activations_33_i;
output  [63:0] activations_33_o;
output   activations_33_o_ap_vld;
input  [63:0] activations_32_i;
output  [63:0] activations_32_o;
output   activations_32_o_ap_vld;
input  [63:0] activations_31_i;
output  [63:0] activations_31_o;
output   activations_31_o_ap_vld;
input  [63:0] activations_30_i;
output  [63:0] activations_30_o;
output   activations_30_o_ap_vld;
input  [63:0] activations_29_i;
output  [63:0] activations_29_o;
output   activations_29_o_ap_vld;
input  [63:0] activations_28_i;
output  [63:0] activations_28_o;
output   activations_28_o_ap_vld;
input  [63:0] activations_27_i;
output  [63:0] activations_27_o;
output   activations_27_o_ap_vld;
input  [63:0] activations_26_i;
output  [63:0] activations_26_o;
output   activations_26_o_ap_vld;
input  [63:0] activations_25_i;
output  [63:0] activations_25_o;
output   activations_25_o_ap_vld;
input  [63:0] activations_24_i;
output  [63:0] activations_24_o;
output   activations_24_o_ap_vld;
input  [63:0] activations_23_i;
output  [63:0] activations_23_o;
output   activations_23_o_ap_vld;
input  [63:0] activations_22_i;
output  [63:0] activations_22_o;
output   activations_22_o_ap_vld;
input  [63:0] activations_21_i;
output  [63:0] activations_21_o;
output   activations_21_o_ap_vld;
input  [63:0] activations_20_i;
output  [63:0] activations_20_o;
output   activations_20_o_ap_vld;
input  [63:0] activations_19_i;
output  [63:0] activations_19_o;
output   activations_19_o_ap_vld;
input  [63:0] activations_18_i;
output  [63:0] activations_18_o;
output   activations_18_o_ap_vld;
input  [63:0] activations_17_i;
output  [63:0] activations_17_o;
output   activations_17_o_ap_vld;
input  [63:0] activations_16_i;
output  [63:0] activations_16_o;
output   activations_16_o_ap_vld;
input  [63:0] activations_15_i;
output  [63:0] activations_15_o;
output   activations_15_o_ap_vld;
input  [63:0] activations_14_i;
output  [63:0] activations_14_o;
output   activations_14_o_ap_vld;
input  [63:0] activations_13_i;
output  [63:0] activations_13_o;
output   activations_13_o_ap_vld;
input  [63:0] activations_12_i;
output  [63:0] activations_12_o;
output   activations_12_o_ap_vld;
input  [63:0] activations_11_i;
output  [63:0] activations_11_o;
output   activations_11_o_ap_vld;
input  [63:0] activations_10_i;
output  [63:0] activations_10_o;
output   activations_10_o_ap_vld;
input  [63:0] activations_9_i;
output  [63:0] activations_9_o;
output   activations_9_o_ap_vld;
input  [63:0] activations_8_i;
output  [63:0] activations_8_o;
output   activations_8_o_ap_vld;
input  [63:0] activations_7_i;
output  [63:0] activations_7_o;
output   activations_7_o_ap_vld;
input  [63:0] activations_6_i;
output  [63:0] activations_6_o;
output   activations_6_o_ap_vld;
input  [63:0] activations_5_i;
output  [63:0] activations_5_o;
output   activations_5_o_ap_vld;
input  [63:0] activations_4_i;
output  [63:0] activations_4_o;
output   activations_4_o_ap_vld;
input  [63:0] activations_3_i;
output  [63:0] activations_3_o;
output   activations_3_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
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
output  [63:0] grp_fu_21256_p_din0;
output  [63:0] grp_fu_21256_p_din1;
output  [0:0] grp_fu_21256_p_opcode;
input  [63:0] grp_fu_21256_p_dout0;
output   grp_fu_21256_p_ce;
reg ap_idle;
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_63_o;
reg activations_63_o_ap_vld;
reg[63:0] activations_62_o;
reg activations_62_o_ap_vld;
reg[63:0] activations_61_o;
reg activations_61_o_ap_vld;
reg[63:0] activations_60_o;
reg activations_60_o_ap_vld;
reg[63:0] activations_59_o;
reg activations_59_o_ap_vld;
reg[63:0] activations_58_o;
reg activations_58_o_ap_vld;
reg[63:0] activations_57_o;
reg activations_57_o_ap_vld;
reg[63:0] activations_56_o;
reg activations_56_o_ap_vld;
reg[63:0] activations_55_o;
reg activations_55_o_ap_vld;
reg[63:0] activations_54_o;
reg activations_54_o_ap_vld;
reg[63:0] activations_53_o;
reg activations_53_o_ap_vld;
reg[63:0] activations_52_o;
reg activations_52_o_ap_vld;
reg[63:0] activations_51_o;
reg activations_51_o_ap_vld;
reg[63:0] activations_50_o;
reg activations_50_o_ap_vld;
reg[63:0] activations_49_o;
reg activations_49_o_ap_vld;
reg[63:0] activations_48_o;
reg activations_48_o_ap_vld;
reg[63:0] activations_47_o;
reg activations_47_o_ap_vld;
reg[63:0] activations_46_o;
reg activations_46_o_ap_vld;
reg[63:0] activations_45_o;
reg activations_45_o_ap_vld;
reg[63:0] activations_44_o;
reg activations_44_o_ap_vld;
reg[63:0] activations_43_o;
reg activations_43_o_ap_vld;
reg[63:0] activations_42_o;
reg activations_42_o_ap_vld;
reg[63:0] activations_41_o;
reg activations_41_o_ap_vld;
reg[63:0] activations_40_o;
reg activations_40_o_ap_vld;
reg[63:0] activations_39_o;
reg activations_39_o_ap_vld;
reg[63:0] activations_38_o;
reg activations_38_o_ap_vld;
reg[63:0] activations_37_o;
reg activations_37_o_ap_vld;
reg[63:0] activations_36_o;
reg activations_36_o_ap_vld;
reg[63:0] activations_35_o;
reg activations_35_o_ap_vld;
reg[63:0] activations_34_o;
reg activations_34_o_ap_vld;
reg[63:0] activations_33_o;
reg activations_33_o_ap_vld;
reg[63:0] activations_32_o;
reg activations_32_o_ap_vld;
reg[63:0] activations_31_o;
reg activations_31_o_ap_vld;
reg[63:0] activations_30_o;
reg activations_30_o_ap_vld;
reg[63:0] activations_29_o;
reg activations_29_o_ap_vld;
reg[63:0] activations_28_o;
reg activations_28_o_ap_vld;
reg[63:0] activations_27_o;
reg activations_27_o_ap_vld;
reg[63:0] activations_26_o;
reg activations_26_o_ap_vld;
reg[63:0] activations_25_o;
reg activations_25_o_ap_vld;
reg[63:0] activations_24_o;
reg activations_24_o_ap_vld;
reg[63:0] activations_23_o;
reg activations_23_o_ap_vld;
reg[63:0] activations_22_o;
reg activations_22_o_ap_vld;
reg[63:0] activations_21_o;
reg activations_21_o_ap_vld;
reg[63:0] activations_20_o;
reg activations_20_o_ap_vld;
reg[63:0] activations_19_o;
reg activations_19_o_ap_vld;
reg[63:0] activations_18_o;
reg activations_18_o_ap_vld;
reg[63:0] activations_17_o;
reg activations_17_o_ap_vld;
reg[63:0] activations_16_o;
reg activations_16_o_ap_vld;
reg[63:0] activations_15_o;
reg activations_15_o_ap_vld;
reg[63:0] activations_14_o;
reg activations_14_o_ap_vld;
reg[63:0] activations_13_o;
reg activations_13_o_ap_vld;
reg[63:0] activations_12_o;
reg activations_12_o_ap_vld;
reg[63:0] activations_11_o;
reg activations_11_o_ap_vld;
reg[63:0] activations_10_o;
reg activations_10_o_ap_vld;
reg[63:0] activations_9_o;
reg activations_9_o_ap_vld;
reg[63:0] activations_8_o;
reg activations_8_o_ap_vld;
reg[63:0] activations_7_o;
reg activations_7_o_ap_vld;
reg[63:0] activations_6_o;
reg activations_6_o_ap_vld;
reg[63:0] activations_5_o;
reg activations_5_o_ap_vld;
reg[63:0] activations_4_o;
reg activations_4_o_ap_vld;
reg[63:0] activations_3_o;
reg activations_3_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
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
wire   [0:0] icmp_ln26_fu_1714_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln26_fu_1726_p1;
reg   [5:0] trunc_ln26_reg_2274;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter1_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter2_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter3_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter4_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter5_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter6_reg;
wire   [63:0] tmp_s_fu_1730_p131;
reg   [63:0] tmp_s_reg_2278;
wire   [63:0] tmp_109_fu_1994_p131;
reg   [63:0] tmp_109_reg_2283;
reg   [6:0] i_fu_418;
wire   [6:0] add_ln26_fu_1720_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage0_01001;
reg    ap_predicate_pred518_state9;
reg    ap_predicate_pred525_state9;
reg    ap_predicate_pred531_state9;
reg    ap_predicate_pred537_state9;
reg    ap_predicate_pred543_state9;
reg    ap_predicate_pred549_state9;
reg    ap_predicate_pred555_state9;
reg    ap_predicate_pred561_state9;
reg    ap_predicate_pred567_state9;
reg    ap_predicate_pred573_state9;
reg    ap_predicate_pred579_state9;
reg    ap_predicate_pred585_state9;
reg    ap_predicate_pred591_state9;
reg    ap_predicate_pred597_state9;
reg    ap_predicate_pred603_state9;
reg    ap_predicate_pred609_state9;
reg    ap_predicate_pred615_state9;
reg    ap_predicate_pred621_state9;
reg    ap_predicate_pred627_state9;
reg    ap_predicate_pred633_state9;
reg    ap_predicate_pred639_state9;
reg    ap_predicate_pred645_state9;
reg    ap_predicate_pred651_state9;
reg    ap_predicate_pred657_state9;
reg    ap_predicate_pred663_state9;
reg    ap_predicate_pred669_state9;
reg    ap_predicate_pred675_state9;
reg    ap_predicate_pred681_state9;
reg    ap_predicate_pred687_state9;
reg    ap_predicate_pred693_state9;
reg    ap_predicate_pred699_state9;
reg    ap_predicate_pred705_state9;
reg    ap_predicate_pred711_state9;
reg    ap_predicate_pred717_state9;
reg    ap_predicate_pred723_state9;
reg    ap_predicate_pred729_state9;
reg    ap_predicate_pred735_state9;
reg    ap_predicate_pred741_state9;
reg    ap_predicate_pred747_state9;
reg    ap_predicate_pred753_state9;
reg    ap_predicate_pred759_state9;
reg    ap_predicate_pred765_state9;
reg    ap_predicate_pred771_state9;
reg    ap_predicate_pred777_state9;
reg    ap_predicate_pred783_state9;
reg    ap_predicate_pred789_state9;
reg    ap_predicate_pred795_state9;
reg    ap_predicate_pred801_state9;
reg    ap_predicate_pred807_state9;
reg    ap_predicate_pred813_state9;
reg    ap_predicate_pred819_state9;
reg    ap_predicate_pred825_state9;
reg    ap_predicate_pred831_state9;
reg    ap_predicate_pred837_state9;
reg    ap_predicate_pred843_state9;
reg    ap_predicate_pred849_state9;
reg    ap_predicate_pred855_state9;
reg    ap_predicate_pred861_state9;
reg    ap_predicate_pred867_state9;
reg    ap_predicate_pred873_state9;
reg    ap_predicate_pred879_state9;
reg    ap_predicate_pred885_state9;
reg    ap_predicate_pred891_state9;
reg    ap_predicate_pred897_state9;
wire   [63:0] tmp_s_fu_1730_p129;
wire   [63:0] tmp_109_fu_1994_p129;
wire    ap_block_pp0_stage0_00001;
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
wire   [5:0] tmp_s_fu_1730_p1;
wire   [5:0] tmp_s_fu_1730_p3;
wire   [5:0] tmp_s_fu_1730_p5;
wire   [5:0] tmp_s_fu_1730_p7;
wire   [5:0] tmp_s_fu_1730_p9;
wire   [5:0] tmp_s_fu_1730_p11;
wire   [5:0] tmp_s_fu_1730_p13;
wire   [5:0] tmp_s_fu_1730_p15;
wire   [5:0] tmp_s_fu_1730_p17;
wire   [5:0] tmp_s_fu_1730_p19;
wire   [5:0] tmp_s_fu_1730_p21;
wire   [5:0] tmp_s_fu_1730_p23;
wire   [5:0] tmp_s_fu_1730_p25;
wire   [5:0] tmp_s_fu_1730_p27;
wire   [5:0] tmp_s_fu_1730_p29;
wire   [5:0] tmp_s_fu_1730_p31;
wire   [5:0] tmp_s_fu_1730_p33;
wire   [5:0] tmp_s_fu_1730_p35;
wire   [5:0] tmp_s_fu_1730_p37;
wire   [5:0] tmp_s_fu_1730_p39;
wire   [5:0] tmp_s_fu_1730_p41;
wire   [5:0] tmp_s_fu_1730_p43;
wire   [5:0] tmp_s_fu_1730_p45;
wire   [5:0] tmp_s_fu_1730_p47;
wire   [5:0] tmp_s_fu_1730_p49;
wire   [5:0] tmp_s_fu_1730_p51;
wire   [5:0] tmp_s_fu_1730_p53;
wire   [5:0] tmp_s_fu_1730_p55;
wire   [5:0] tmp_s_fu_1730_p57;
wire   [5:0] tmp_s_fu_1730_p59;
wire   [5:0] tmp_s_fu_1730_p61;
wire   [5:0] tmp_s_fu_1730_p63;
wire  signed [5:0] tmp_s_fu_1730_p65;
wire  signed [5:0] tmp_s_fu_1730_p67;
wire  signed [5:0] tmp_s_fu_1730_p69;
wire  signed [5:0] tmp_s_fu_1730_p71;
wire  signed [5:0] tmp_s_fu_1730_p73;
wire  signed [5:0] tmp_s_fu_1730_p75;
wire  signed [5:0] tmp_s_fu_1730_p77;
wire  signed [5:0] tmp_s_fu_1730_p79;
wire  signed [5:0] tmp_s_fu_1730_p81;
wire  signed [5:0] tmp_s_fu_1730_p83;
wire  signed [5:0] tmp_s_fu_1730_p85;
wire  signed [5:0] tmp_s_fu_1730_p87;
wire  signed [5:0] tmp_s_fu_1730_p89;
wire  signed [5:0] tmp_s_fu_1730_p91;
wire  signed [5:0] tmp_s_fu_1730_p93;
wire  signed [5:0] tmp_s_fu_1730_p95;
wire  signed [5:0] tmp_s_fu_1730_p97;
wire  signed [5:0] tmp_s_fu_1730_p99;
wire  signed [5:0] tmp_s_fu_1730_p101;
wire  signed [5:0] tmp_s_fu_1730_p103;
wire  signed [5:0] tmp_s_fu_1730_p105;
wire  signed [5:0] tmp_s_fu_1730_p107;
wire  signed [5:0] tmp_s_fu_1730_p109;
wire  signed [5:0] tmp_s_fu_1730_p111;
wire  signed [5:0] tmp_s_fu_1730_p113;
wire  signed [5:0] tmp_s_fu_1730_p115;
wire  signed [5:0] tmp_s_fu_1730_p117;
wire  signed [5:0] tmp_s_fu_1730_p119;
wire  signed [5:0] tmp_s_fu_1730_p121;
wire  signed [5:0] tmp_s_fu_1730_p123;
wire  signed [5:0] tmp_s_fu_1730_p125;
wire  signed [5:0] tmp_s_fu_1730_p127;
wire   [5:0] tmp_109_fu_1994_p1;
wire   [5:0] tmp_109_fu_1994_p3;
wire   [5:0] tmp_109_fu_1994_p5;
wire   [5:0] tmp_109_fu_1994_p7;
wire   [5:0] tmp_109_fu_1994_p9;
wire   [5:0] tmp_109_fu_1994_p11;
wire   [5:0] tmp_109_fu_1994_p13;
wire   [5:0] tmp_109_fu_1994_p15;
wire   [5:0] tmp_109_fu_1994_p17;
wire   [5:0] tmp_109_fu_1994_p19;
wire   [5:0] tmp_109_fu_1994_p21;
wire   [5:0] tmp_109_fu_1994_p23;
wire   [5:0] tmp_109_fu_1994_p25;
wire   [5:0] tmp_109_fu_1994_p27;
wire   [5:0] tmp_109_fu_1994_p29;
wire   [5:0] tmp_109_fu_1994_p31;
wire   [5:0] tmp_109_fu_1994_p33;
wire   [5:0] tmp_109_fu_1994_p35;
wire   [5:0] tmp_109_fu_1994_p37;
wire   [5:0] tmp_109_fu_1994_p39;
wire   [5:0] tmp_109_fu_1994_p41;
wire   [5:0] tmp_109_fu_1994_p43;
wire   [5:0] tmp_109_fu_1994_p45;
wire   [5:0] tmp_109_fu_1994_p47;
wire   [5:0] tmp_109_fu_1994_p49;
wire   [5:0] tmp_109_fu_1994_p51;
wire   [5:0] tmp_109_fu_1994_p53;
wire   [5:0] tmp_109_fu_1994_p55;
wire   [5:0] tmp_109_fu_1994_p57;
wire   [5:0] tmp_109_fu_1994_p59;
wire   [5:0] tmp_109_fu_1994_p61;
wire   [5:0] tmp_109_fu_1994_p63;
wire  signed [5:0] tmp_109_fu_1994_p65;
wire  signed [5:0] tmp_109_fu_1994_p67;
wire  signed [5:0] tmp_109_fu_1994_p69;
wire  signed [5:0] tmp_109_fu_1994_p71;
wire  signed [5:0] tmp_109_fu_1994_p73;
wire  signed [5:0] tmp_109_fu_1994_p75;
wire  signed [5:0] tmp_109_fu_1994_p77;
wire  signed [5:0] tmp_109_fu_1994_p79;
wire  signed [5:0] tmp_109_fu_1994_p81;
wire  signed [5:0] tmp_109_fu_1994_p83;
wire  signed [5:0] tmp_109_fu_1994_p85;
wire  signed [5:0] tmp_109_fu_1994_p87;
wire  signed [5:0] tmp_109_fu_1994_p89;
wire  signed [5:0] tmp_109_fu_1994_p91;
wire  signed [5:0] tmp_109_fu_1994_p93;
wire  signed [5:0] tmp_109_fu_1994_p95;
wire  signed [5:0] tmp_109_fu_1994_p97;
wire  signed [5:0] tmp_109_fu_1994_p99;
wire  signed [5:0] tmp_109_fu_1994_p101;
wire  signed [5:0] tmp_109_fu_1994_p103;
wire  signed [5:0] tmp_109_fu_1994_p105;
wire  signed [5:0] tmp_109_fu_1994_p107;
wire  signed [5:0] tmp_109_fu_1994_p109;
wire  signed [5:0] tmp_109_fu_1994_p111;
wire  signed [5:0] tmp_109_fu_1994_p113;
wire  signed [5:0] tmp_109_fu_1994_p115;
wire  signed [5:0] tmp_109_fu_1994_p117;
wire  signed [5:0] tmp_109_fu_1994_p119;
wire  signed [5:0] tmp_109_fu_1994_p121;
wire  signed [5:0] tmp_109_fu_1994_p123;
wire  signed [5:0] tmp_109_fu_1994_p125;
wire  signed [5:0] tmp_109_fu_1994_p127;
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
#0 i_fu_418 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U316(.din0(activations_0_i),.din1(activations_1_i),.din2(activations_2_i),.din3(activations_3_i),.din4(activations_4_i),.din5(activations_5_i),.din6(activations_6_i),.din7(activations_7_i),.din8(activations_8_i),.din9(activations_9_i),.din10(activations_10_i),.din11(activations_11_i),.din12(activations_12_i),.din13(activations_13_i),.din14(activations_14_i),.din15(activations_15_i),.din16(activations_16_i),.din17(activations_17_i),.din18(activations_18_i),.din19(activations_19_i),.din20(activations_20_i),.din21(activations_21_i),.din22(activations_22_i),.din23(activations_23_i),.din24(activations_24_i),.din25(activations_25_i),.din26(activations_26_i),.din27(activations_27_i),.din28(activations_28_i),.din29(activations_29_i),.din30(activations_30_i),.din31(activations_31_i),.din32(activations_32_i),.din33(activations_33_i),.din34(activations_34_i),.din35(activations_35_i),.din36(activations_36_i),.din37(activations_37_i),.din38(activations_38_i),.din39(activations_39_i),.din40(activations_40_i),.din41(activations_41_i),.din42(activations_42_i),.din43(activations_43_i),.din44(activations_44_i),.din45(activations_45_i),.din46(activations_46_i),.din47(activations_47_i),.din48(activations_48_i),.din49(activations_49_i),.din50(activations_50_i),.din51(activations_51_i),.din52(activations_52_i),.din53(activations_53_i),.din54(activations_54_i),.din55(activations_55_i),.din56(activations_56_i),.din57(activations_57_i),.din58(activations_58_i),.din59(activations_59_i),.din60(activations_60_i),.din61(activations_61_i),.din62(activations_62_i),.din63(activations_63_i),.def(tmp_s_fu_1730_p129),.sel(trunc_ln26_fu_1726_p1),.dout(tmp_s_fu_1730_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U317(.din0(biases_0_val),.din1(biases_1_val),.din2(biases_2_val),.din3(biases_3_val),.din4(biases_4_val),.din5(biases_5_val),.din6(biases_6_val),.din7(biases_7_val),.din8(biases_8_val),.din9(biases_9_val),.din10(biases_10_val),.din11(biases_11_val),.din12(biases_12_val),.din13(biases_13_val),.din14(biases_14_val),.din15(biases_15_val),.din16(biases_16_val),.din17(biases_17_val),.din18(biases_18_val),.din19(biases_19_val),.din20(biases_20_val),.din21(biases_21_val),.din22(biases_22_val),.din23(biases_23_val),.din24(biases_24_val),.din25(biases_25_val),.din26(biases_26_val),.din27(biases_27_val),.din28(biases_28_val),.din29(biases_29_val),.din30(biases_30_val),.din31(biases_31_val),.din32(biases_32_val),.din33(biases_33_val),.din34(biases_34_val),.din35(biases_35_val),.din36(biases_36_val),.din37(biases_37_val),.din38(biases_38_val),.din39(biases_39_val),.din40(biases_40_val),.din41(biases_41_val),.din42(biases_42_val),.din43(biases_43_val),.din44(biases_44_val),.din45(biases_45_val),.din46(biases_46_val),.din47(biases_47_val),.din48(biases_48_val),.din49(biases_49_val),.din50(biases_50_val),.din51(biases_51_val),.din52(biases_52_val),.din53(biases_53_val),.din54(biases_54_val),.din55(biases_55_val),.din56(biases_56_val),.din57(biases_57_val),.din58(biases_58_val),.din59(biases_59_val),.din60(biases_60_val),.din61(biases_61_val),.din62(biases_62_val),.din63(biases_63_val),.def(tmp_109_fu_1994_p129),.sel(trunc_ln26_fu_1726_p1),.dout(tmp_109_fu_1994_p131));
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
        if (((icmp_ln26_fu_1714_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_418 <= add_ln26_fu_1720_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_418 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_109_reg_2283 <= tmp_109_fu_1994_p131;
        tmp_s_reg_2278 <= tmp_s_fu_1730_p131;
        trunc_ln26_reg_2274 <= trunc_ln26_fu_1726_p1;
        trunc_ln26_reg_2274_pp0_iter1_reg <= trunc_ln26_reg_2274;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_predicate_pred518_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd62);
        ap_predicate_pred525_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd61);
        ap_predicate_pred531_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd60);
        ap_predicate_pred537_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd59);
        ap_predicate_pred543_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd58);
        ap_predicate_pred549_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd57);
        ap_predicate_pred555_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd56);
        ap_predicate_pred561_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd55);
        ap_predicate_pred567_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd54);
        ap_predicate_pred573_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd53);
        ap_predicate_pred579_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd52);
        ap_predicate_pred585_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd51);
        ap_predicate_pred591_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd50);
        ap_predicate_pred597_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd49);
        ap_predicate_pred603_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd48);
        ap_predicate_pred609_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd47);
        ap_predicate_pred615_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd46);
        ap_predicate_pred621_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd45);
        ap_predicate_pred627_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd44);
        ap_predicate_pred633_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd43);
        ap_predicate_pred639_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd42);
        ap_predicate_pred645_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd41);
        ap_predicate_pred651_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd40);
        ap_predicate_pred657_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd39);
        ap_predicate_pred663_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd38);
        ap_predicate_pred669_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd37);
        ap_predicate_pred675_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd36);
        ap_predicate_pred681_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd35);
        ap_predicate_pred687_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd34);
        ap_predicate_pred693_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd33);
        ap_predicate_pred699_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd32);
        ap_predicate_pred705_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd31);
        ap_predicate_pred711_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd30);
        ap_predicate_pred717_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd29);
        ap_predicate_pred723_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd28);
        ap_predicate_pred729_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd27);
        ap_predicate_pred735_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd26);
        ap_predicate_pred741_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd25);
        ap_predicate_pred747_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd24);
        ap_predicate_pred753_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd23);
        ap_predicate_pred759_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd22);
        ap_predicate_pred765_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd21);
        ap_predicate_pred771_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd20);
        ap_predicate_pred777_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd19);
        ap_predicate_pred783_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd18);
        ap_predicate_pred789_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd17);
        ap_predicate_pred795_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd16);
        ap_predicate_pred801_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd15);
        ap_predicate_pred807_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd14);
        ap_predicate_pred813_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd13);
        ap_predicate_pred819_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd12);
        ap_predicate_pred825_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd11);
        ap_predicate_pred831_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd10);
        ap_predicate_pred837_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd9);
        ap_predicate_pred843_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd8);
        ap_predicate_pred849_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd7);
        ap_predicate_pred855_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd6);
        ap_predicate_pred861_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd5);
        ap_predicate_pred867_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd4);
        ap_predicate_pred873_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd3);
        ap_predicate_pred879_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd2);
        ap_predicate_pred885_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd1);
        ap_predicate_pred891_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd0);
        ap_predicate_pred897_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd63);
        trunc_ln26_reg_2274_pp0_iter2_reg <= trunc_ln26_reg_2274_pp0_iter1_reg;
        trunc_ln26_reg_2274_pp0_iter3_reg <= trunc_ln26_reg_2274_pp0_iter2_reg;
        trunc_ln26_reg_2274_pp0_iter4_reg <= trunc_ln26_reg_2274_pp0_iter3_reg;
        trunc_ln26_reg_2274_pp0_iter5_reg <= trunc_ln26_reg_2274_pp0_iter4_reg;
        trunc_ln26_reg_2274_pp0_iter6_reg <= trunc_ln26_reg_2274_pp0_iter5_reg;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_0_o = grp_fu_21256_p_dout0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_0_o_ap_vld = 1'b1;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_10_o = grp_fu_21256_p_dout0;
    end else begin
        activations_10_o = activations_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_10_o_ap_vld = 1'b1;
    end else begin
        activations_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_11_o = grp_fu_21256_p_dout0;
    end else begin
        activations_11_o = activations_11_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_11_o_ap_vld = 1'b1;
    end else begin
        activations_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_12_o = grp_fu_21256_p_dout0;
    end else begin
        activations_12_o = activations_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_12_o_ap_vld = 1'b1;
    end else begin
        activations_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_13_o = grp_fu_21256_p_dout0;
    end else begin
        activations_13_o = activations_13_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_13_o_ap_vld = 1'b1;
    end else begin
        activations_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_14_o = grp_fu_21256_p_dout0;
    end else begin
        activations_14_o = activations_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_14_o_ap_vld = 1'b1;
    end else begin
        activations_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_15_o = grp_fu_21256_p_dout0;
    end else begin
        activations_15_o = activations_15_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_15_o_ap_vld = 1'b1;
    end else begin
        activations_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_16_o = grp_fu_21256_p_dout0;
    end else begin
        activations_16_o = activations_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_16_o_ap_vld = 1'b1;
    end else begin
        activations_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_17_o = grp_fu_21256_p_dout0;
    end else begin
        activations_17_o = activations_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_17_o_ap_vld = 1'b1;
    end else begin
        activations_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_18_o = grp_fu_21256_p_dout0;
    end else begin
        activations_18_o = activations_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_18_o_ap_vld = 1'b1;
    end else begin
        activations_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_19_o = grp_fu_21256_p_dout0;
    end else begin
        activations_19_o = activations_19_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_19_o_ap_vld = 1'b1;
    end else begin
        activations_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_1_o = grp_fu_21256_p_dout0;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_1_o_ap_vld = 1'b1;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_20_o = grp_fu_21256_p_dout0;
    end else begin
        activations_20_o = activations_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_20_o_ap_vld = 1'b1;
    end else begin
        activations_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_21_o = grp_fu_21256_p_dout0;
    end else begin
        activations_21_o = activations_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_21_o_ap_vld = 1'b1;
    end else begin
        activations_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_22_o = grp_fu_21256_p_dout0;
    end else begin
        activations_22_o = activations_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_22_o_ap_vld = 1'b1;
    end else begin
        activations_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_23_o = grp_fu_21256_p_dout0;
    end else begin
        activations_23_o = activations_23_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_23_o_ap_vld = 1'b1;
    end else begin
        activations_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_24_o = grp_fu_21256_p_dout0;
    end else begin
        activations_24_o = activations_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_24_o_ap_vld = 1'b1;
    end else begin
        activations_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_25_o = grp_fu_21256_p_dout0;
    end else begin
        activations_25_o = activations_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_25_o_ap_vld = 1'b1;
    end else begin
        activations_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_26_o = grp_fu_21256_p_dout0;
    end else begin
        activations_26_o = activations_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_26_o_ap_vld = 1'b1;
    end else begin
        activations_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_27_o = grp_fu_21256_p_dout0;
    end else begin
        activations_27_o = activations_27_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_27_o_ap_vld = 1'b1;
    end else begin
        activations_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_28_o = grp_fu_21256_p_dout0;
    end else begin
        activations_28_o = activations_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_28_o_ap_vld = 1'b1;
    end else begin
        activations_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_29_o = grp_fu_21256_p_dout0;
    end else begin
        activations_29_o = activations_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_29_o_ap_vld = 1'b1;
    end else begin
        activations_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_2_o = grp_fu_21256_p_dout0;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_2_o_ap_vld = 1'b1;
    end else begin
        activations_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_30_o = grp_fu_21256_p_dout0;
    end else begin
        activations_30_o = activations_30_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_30_o_ap_vld = 1'b1;
    end else begin
        activations_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_31_o = grp_fu_21256_p_dout0;
    end else begin
        activations_31_o = activations_31_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_31_o_ap_vld = 1'b1;
    end else begin
        activations_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_32_o = grp_fu_21256_p_dout0;
    end else begin
        activations_32_o = activations_32_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_32_o_ap_vld = 1'b1;
    end else begin
        activations_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_33_o = grp_fu_21256_p_dout0;
    end else begin
        activations_33_o = activations_33_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_33_o_ap_vld = 1'b1;
    end else begin
        activations_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_34_o = grp_fu_21256_p_dout0;
    end else begin
        activations_34_o = activations_34_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_34_o_ap_vld = 1'b1;
    end else begin
        activations_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_35_o = grp_fu_21256_p_dout0;
    end else begin
        activations_35_o = activations_35_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_35_o_ap_vld = 1'b1;
    end else begin
        activations_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_36_o = grp_fu_21256_p_dout0;
    end else begin
        activations_36_o = activations_36_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_36_o_ap_vld = 1'b1;
    end else begin
        activations_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_37_o = grp_fu_21256_p_dout0;
    end else begin
        activations_37_o = activations_37_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_37_o_ap_vld = 1'b1;
    end else begin
        activations_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_38_o = grp_fu_21256_p_dout0;
    end else begin
        activations_38_o = activations_38_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_38_o_ap_vld = 1'b1;
    end else begin
        activations_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_39_o = grp_fu_21256_p_dout0;
    end else begin
        activations_39_o = activations_39_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_39_o_ap_vld = 1'b1;
    end else begin
        activations_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_3_o = grp_fu_21256_p_dout0;
    end else begin
        activations_3_o = activations_3_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_3_o_ap_vld = 1'b1;
    end else begin
        activations_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_40_o = grp_fu_21256_p_dout0;
    end else begin
        activations_40_o = activations_40_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_40_o_ap_vld = 1'b1;
    end else begin
        activations_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_41_o = grp_fu_21256_p_dout0;
    end else begin
        activations_41_o = activations_41_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_41_o_ap_vld = 1'b1;
    end else begin
        activations_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_42_o = grp_fu_21256_p_dout0;
    end else begin
        activations_42_o = activations_42_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_42_o_ap_vld = 1'b1;
    end else begin
        activations_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_43_o = grp_fu_21256_p_dout0;
    end else begin
        activations_43_o = activations_43_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_43_o_ap_vld = 1'b1;
    end else begin
        activations_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_44_o = grp_fu_21256_p_dout0;
    end else begin
        activations_44_o = activations_44_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_44_o_ap_vld = 1'b1;
    end else begin
        activations_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_45_o = grp_fu_21256_p_dout0;
    end else begin
        activations_45_o = activations_45_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_45_o_ap_vld = 1'b1;
    end else begin
        activations_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_46_o = grp_fu_21256_p_dout0;
    end else begin
        activations_46_o = activations_46_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_46_o_ap_vld = 1'b1;
    end else begin
        activations_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_47_o = grp_fu_21256_p_dout0;
    end else begin
        activations_47_o = activations_47_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_47_o_ap_vld = 1'b1;
    end else begin
        activations_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_48_o = grp_fu_21256_p_dout0;
    end else begin
        activations_48_o = activations_48_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_48_o_ap_vld = 1'b1;
    end else begin
        activations_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_49_o = grp_fu_21256_p_dout0;
    end else begin
        activations_49_o = activations_49_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_49_o_ap_vld = 1'b1;
    end else begin
        activations_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_4_o = grp_fu_21256_p_dout0;
    end else begin
        activations_4_o = activations_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_4_o_ap_vld = 1'b1;
    end else begin
        activations_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_50_o = grp_fu_21256_p_dout0;
    end else begin
        activations_50_o = activations_50_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_50_o_ap_vld = 1'b1;
    end else begin
        activations_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_51_o = grp_fu_21256_p_dout0;
    end else begin
        activations_51_o = activations_51_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_51_o_ap_vld = 1'b1;
    end else begin
        activations_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred579_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_52_o = grp_fu_21256_p_dout0;
    end else begin
        activations_52_o = activations_52_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred579_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_52_o_ap_vld = 1'b1;
    end else begin
        activations_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred573_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_53_o = grp_fu_21256_p_dout0;
    end else begin
        activations_53_o = activations_53_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred573_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_53_o_ap_vld = 1'b1;
    end else begin
        activations_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred567_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_54_o = grp_fu_21256_p_dout0;
    end else begin
        activations_54_o = activations_54_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred567_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_54_o_ap_vld = 1'b1;
    end else begin
        activations_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred561_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_55_o = grp_fu_21256_p_dout0;
    end else begin
        activations_55_o = activations_55_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred561_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_55_o_ap_vld = 1'b1;
    end else begin
        activations_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred555_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_56_o = grp_fu_21256_p_dout0;
    end else begin
        activations_56_o = activations_56_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred555_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_56_o_ap_vld = 1'b1;
    end else begin
        activations_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred549_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_57_o = grp_fu_21256_p_dout0;
    end else begin
        activations_57_o = activations_57_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred549_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_57_o_ap_vld = 1'b1;
    end else begin
        activations_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred543_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_58_o = grp_fu_21256_p_dout0;
    end else begin
        activations_58_o = activations_58_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred543_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_58_o_ap_vld = 1'b1;
    end else begin
        activations_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred537_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_59_o = grp_fu_21256_p_dout0;
    end else begin
        activations_59_o = activations_59_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred537_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_59_o_ap_vld = 1'b1;
    end else begin
        activations_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_5_o = grp_fu_21256_p_dout0;
    end else begin
        activations_5_o = activations_5_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_5_o_ap_vld = 1'b1;
    end else begin
        activations_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred531_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_60_o = grp_fu_21256_p_dout0;
    end else begin
        activations_60_o = activations_60_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred531_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_60_o_ap_vld = 1'b1;
    end else begin
        activations_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_predicate_pred525_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_61_o = grp_fu_21256_p_dout0;
    end else begin
        activations_61_o = activations_61_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred525_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_61_o_ap_vld = 1'b1;
    end else begin
        activations_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_predicate_pred518_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_62_o = grp_fu_21256_p_dout0;
    end else begin
        activations_62_o = activations_62_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred518_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_62_o_ap_vld = 1'b1;
    end else begin
        activations_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_63_o = grp_fu_21256_p_dout0;
    end else begin
        activations_63_o = activations_63_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_63_o_ap_vld = 1'b1;
    end else begin
        activations_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_6_o = grp_fu_21256_p_dout0;
    end else begin
        activations_6_o = activations_6_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_6_o_ap_vld = 1'b1;
    end else begin
        activations_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_7_o = grp_fu_21256_p_dout0;
    end else begin
        activations_7_o = activations_7_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_7_o_ap_vld = 1'b1;
    end else begin
        activations_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_8_o = grp_fu_21256_p_dout0;
    end else begin
        activations_8_o = activations_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_8_o_ap_vld = 1'b1;
    end else begin
        activations_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_9_o = grp_fu_21256_p_dout0;
    end else begin
        activations_9_o = activations_9_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations_9_o_ap_vld = 1'b1;
    end else begin
        activations_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_1714_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_418;
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
assign add_ln26_fu_1720_p2 = (ap_sig_allocacmp_i_7 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_21256_p_ce = 1'b1;
assign grp_fu_21256_p_din0 = tmp_s_reg_2278;
assign grp_fu_21256_p_din1 = tmp_109_reg_2283;
assign grp_fu_21256_p_opcode = 2'd0;
assign icmp_ln26_fu_1714_p2 = ((ap_sig_allocacmp_i_7 == 7'd64) ? 1'b1 : 1'b0);
assign tmp_109_fu_1994_p129 = 'bx;
assign tmp_s_fu_1730_p129 = 'bx;
assign trunc_ln26_fu_1726_p1 = ap_sig_allocacmp_i_7[5:0];
endmodule 
