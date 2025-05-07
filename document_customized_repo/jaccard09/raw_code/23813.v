module backprop_update_weights_68_69_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_i,biases2_0_o,biases2_0_o_ap_vld,biases2_63_i,biases2_63_o,biases2_63_o_ap_vld,biases2_62_i,biases2_62_o,biases2_62_o_ap_vld,biases2_61_i,biases2_61_o,biases2_61_o_ap_vld,biases2_60_i,biases2_60_o,biases2_60_o_ap_vld,biases2_59_i,biases2_59_o,biases2_59_o_ap_vld,biases2_58_i,biases2_58_o,biases2_58_o_ap_vld,biases2_57_i,biases2_57_o,biases2_57_o_ap_vld,biases2_56_i,biases2_56_o,biases2_56_o_ap_vld,biases2_55_i,biases2_55_o,biases2_55_o_ap_vld,biases2_54_i,biases2_54_o,biases2_54_o_ap_vld,biases2_53_i,biases2_53_o,biases2_53_o_ap_vld,biases2_52_i,biases2_52_o,biases2_52_o_ap_vld,biases2_51_i,biases2_51_o,biases2_51_o_ap_vld,biases2_50_i,biases2_50_o,biases2_50_o_ap_vld,biases2_49_i,biases2_49_o,biases2_49_o_ap_vld,biases2_48_i,biases2_48_o,biases2_48_o_ap_vld,biases2_47_i,biases2_47_o,biases2_47_o_ap_vld,biases2_46_i,biases2_46_o,biases2_46_o_ap_vld,biases2_45_i,biases2_45_o,biases2_45_o_ap_vld,biases2_44_i,biases2_44_o,biases2_44_o_ap_vld,biases2_43_i,biases2_43_o,biases2_43_o_ap_vld,biases2_42_i,biases2_42_o,biases2_42_o_ap_vld,biases2_41_i,biases2_41_o,biases2_41_o_ap_vld,biases2_40_i,biases2_40_o,biases2_40_o_ap_vld,biases2_39_i,biases2_39_o,biases2_39_o_ap_vld,biases2_38_i,biases2_38_o,biases2_38_o_ap_vld,biases2_37_i,biases2_37_o,biases2_37_o_ap_vld,biases2_36_i,biases2_36_o,biases2_36_o_ap_vld,biases2_35_i,biases2_35_o,biases2_35_o_ap_vld,biases2_34_i,biases2_34_o,biases2_34_o_ap_vld,biases2_33_i,biases2_33_o,biases2_33_o_ap_vld,biases2_32_i,biases2_32_o,biases2_32_o_ap_vld,biases2_31_i,biases2_31_o,biases2_31_o_ap_vld,biases2_30_i,biases2_30_o,biases2_30_o_ap_vld,biases2_29_i,biases2_29_o,biases2_29_o_ap_vld,biases2_28_i,biases2_28_o,biases2_28_o_ap_vld,biases2_27_i,biases2_27_o,biases2_27_o_ap_vld,biases2_26_i,biases2_26_o,biases2_26_o_ap_vld,biases2_25_i,biases2_25_o,biases2_25_o_ap_vld,biases2_24_i,biases2_24_o,biases2_24_o_ap_vld,biases2_23_i,biases2_23_o,biases2_23_o_ap_vld,biases2_22_i,biases2_22_o,biases2_22_o_ap_vld,biases2_21_i,biases2_21_o,biases2_21_o_ap_vld,biases2_20_i,biases2_20_o,biases2_20_o_ap_vld,biases2_19_i,biases2_19_o,biases2_19_o_ap_vld,biases2_18_i,biases2_18_o,biases2_18_o_ap_vld,biases2_17_i,biases2_17_o,biases2_17_o_ap_vld,biases2_16_i,biases2_16_o,biases2_16_o_ap_vld,biases2_15_i,biases2_15_o,biases2_15_o_ap_vld,biases2_14_i,biases2_14_o,biases2_14_o_ap_vld,biases2_13_i,biases2_13_o,biases2_13_o_ap_vld,biases2_12_i,biases2_12_o,biases2_12_o_ap_vld,biases2_11_i,biases2_11_o,biases2_11_o_ap_vld,biases2_10_i,biases2_10_o,biases2_10_o_ap_vld,biases2_9_i,biases2_9_o,biases2_9_o_ap_vld,biases2_8_i,biases2_8_o,biases2_8_o_ap_vld,biases2_7_i,biases2_7_o,biases2_7_o_ap_vld,biases2_6_i,biases2_6_o,biases2_6_o_ap_vld,biases2_5_i,biases2_5_o,biases2_5_o_ap_vld,biases2_4_i,biases2_4_o,biases2_4_o_ap_vld,biases2_3_i,biases2_3_o,biases2_3_o_ap_vld,biases2_2_i,biases2_2_o,biases2_2_o_ap_vld,biases2_1_i,biases2_1_o,biases2_1_o_ap_vld,d_biases2_0_val,d_biases2_1_val,d_biases2_2_val,d_biases2_3_val,d_biases2_4_val,d_biases2_5_val,d_biases2_6_val,d_biases2_7_val,d_biases2_8_val,d_biases2_9_val,d_biases2_10_val,d_biases2_11_val,d_biases2_12_val,d_biases2_13_val,d_biases2_14_val,d_biases2_15_val,d_biases2_16_val,d_biases2_17_val,d_biases2_18_val,d_biases2_19_val,d_biases2_20_val,d_biases2_21_val,d_biases2_22_val,d_biases2_23_val,d_biases2_24_val,d_biases2_25_val,d_biases2_26_val,d_biases2_27_val,d_biases2_28_val,d_biases2_29_val,d_biases2_30_val,d_biases2_31_val,d_biases2_32_val,d_biases2_33_val,d_biases2_34_val,d_biases2_35_val,d_biases2_36_val,d_biases2_37_val,d_biases2_38_val,d_biases2_39_val,d_biases2_40_val,d_biases2_41_val,d_biases2_42_val,d_biases2_43_val,d_biases2_44_val,d_biases2_45_val,d_biases2_46_val,d_biases2_47_val,d_biases2_48_val,d_biases2_49_val,d_biases2_50_val,d_biases2_51_val,d_biases2_52_val,d_biases2_53_val,d_biases2_54_val,d_biases2_55_val,d_biases2_56_val,d_biases2_57_val,d_biases2_58_val,d_biases2_59_val,d_biases2_60_val,d_biases2_61_val,d_biases2_62_val,d_biases2_63_val,bias_norm_4_out,bias_norm_4_out_ap_vld,grp_fu_4943_p_din0,grp_fu_4943_p_din1,grp_fu_4943_p_opcode,grp_fu_4943_p_dout0,grp_fu_4943_p_ce,grp_fu_4947_p_din0,grp_fu_4947_p_din1,grp_fu_4947_p_dout0,grp_fu_4947_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] biases2_0_i;
output  [63:0] biases2_0_o;
output   biases2_0_o_ap_vld;
input  [63:0] biases2_63_i;
output  [63:0] biases2_63_o;
output   biases2_63_o_ap_vld;
input  [63:0] biases2_62_i;
output  [63:0] biases2_62_o;
output   biases2_62_o_ap_vld;
input  [63:0] biases2_61_i;
output  [63:0] biases2_61_o;
output   biases2_61_o_ap_vld;
input  [63:0] biases2_60_i;
output  [63:0] biases2_60_o;
output   biases2_60_o_ap_vld;
input  [63:0] biases2_59_i;
output  [63:0] biases2_59_o;
output   biases2_59_o_ap_vld;
input  [63:0] biases2_58_i;
output  [63:0] biases2_58_o;
output   biases2_58_o_ap_vld;
input  [63:0] biases2_57_i;
output  [63:0] biases2_57_o;
output   biases2_57_o_ap_vld;
input  [63:0] biases2_56_i;
output  [63:0] biases2_56_o;
output   biases2_56_o_ap_vld;
input  [63:0] biases2_55_i;
output  [63:0] biases2_55_o;
output   biases2_55_o_ap_vld;
input  [63:0] biases2_54_i;
output  [63:0] biases2_54_o;
output   biases2_54_o_ap_vld;
input  [63:0] biases2_53_i;
output  [63:0] biases2_53_o;
output   biases2_53_o_ap_vld;
input  [63:0] biases2_52_i;
output  [63:0] biases2_52_o;
output   biases2_52_o_ap_vld;
input  [63:0] biases2_51_i;
output  [63:0] biases2_51_o;
output   biases2_51_o_ap_vld;
input  [63:0] biases2_50_i;
output  [63:0] biases2_50_o;
output   biases2_50_o_ap_vld;
input  [63:0] biases2_49_i;
output  [63:0] biases2_49_o;
output   biases2_49_o_ap_vld;
input  [63:0] biases2_48_i;
output  [63:0] biases2_48_o;
output   biases2_48_o_ap_vld;
input  [63:0] biases2_47_i;
output  [63:0] biases2_47_o;
output   biases2_47_o_ap_vld;
input  [63:0] biases2_46_i;
output  [63:0] biases2_46_o;
output   biases2_46_o_ap_vld;
input  [63:0] biases2_45_i;
output  [63:0] biases2_45_o;
output   biases2_45_o_ap_vld;
input  [63:0] biases2_44_i;
output  [63:0] biases2_44_o;
output   biases2_44_o_ap_vld;
input  [63:0] biases2_43_i;
output  [63:0] biases2_43_o;
output   biases2_43_o_ap_vld;
input  [63:0] biases2_42_i;
output  [63:0] biases2_42_o;
output   biases2_42_o_ap_vld;
input  [63:0] biases2_41_i;
output  [63:0] biases2_41_o;
output   biases2_41_o_ap_vld;
input  [63:0] biases2_40_i;
output  [63:0] biases2_40_o;
output   biases2_40_o_ap_vld;
input  [63:0] biases2_39_i;
output  [63:0] biases2_39_o;
output   biases2_39_o_ap_vld;
input  [63:0] biases2_38_i;
output  [63:0] biases2_38_o;
output   biases2_38_o_ap_vld;
input  [63:0] biases2_37_i;
output  [63:0] biases2_37_o;
output   biases2_37_o_ap_vld;
input  [63:0] biases2_36_i;
output  [63:0] biases2_36_o;
output   biases2_36_o_ap_vld;
input  [63:0] biases2_35_i;
output  [63:0] biases2_35_o;
output   biases2_35_o_ap_vld;
input  [63:0] biases2_34_i;
output  [63:0] biases2_34_o;
output   biases2_34_o_ap_vld;
input  [63:0] biases2_33_i;
output  [63:0] biases2_33_o;
output   biases2_33_o_ap_vld;
input  [63:0] biases2_32_i;
output  [63:0] biases2_32_o;
output   biases2_32_o_ap_vld;
input  [63:0] biases2_31_i;
output  [63:0] biases2_31_o;
output   biases2_31_o_ap_vld;
input  [63:0] biases2_30_i;
output  [63:0] biases2_30_o;
output   biases2_30_o_ap_vld;
input  [63:0] biases2_29_i;
output  [63:0] biases2_29_o;
output   biases2_29_o_ap_vld;
input  [63:0] biases2_28_i;
output  [63:0] biases2_28_o;
output   biases2_28_o_ap_vld;
input  [63:0] biases2_27_i;
output  [63:0] biases2_27_o;
output   biases2_27_o_ap_vld;
input  [63:0] biases2_26_i;
output  [63:0] biases2_26_o;
output   biases2_26_o_ap_vld;
input  [63:0] biases2_25_i;
output  [63:0] biases2_25_o;
output   biases2_25_o_ap_vld;
input  [63:0] biases2_24_i;
output  [63:0] biases2_24_o;
output   biases2_24_o_ap_vld;
input  [63:0] biases2_23_i;
output  [63:0] biases2_23_o;
output   biases2_23_o_ap_vld;
input  [63:0] biases2_22_i;
output  [63:0] biases2_22_o;
output   biases2_22_o_ap_vld;
input  [63:0] biases2_21_i;
output  [63:0] biases2_21_o;
output   biases2_21_o_ap_vld;
input  [63:0] biases2_20_i;
output  [63:0] biases2_20_o;
output   biases2_20_o_ap_vld;
input  [63:0] biases2_19_i;
output  [63:0] biases2_19_o;
output   biases2_19_o_ap_vld;
input  [63:0] biases2_18_i;
output  [63:0] biases2_18_o;
output   biases2_18_o_ap_vld;
input  [63:0] biases2_17_i;
output  [63:0] biases2_17_o;
output   biases2_17_o_ap_vld;
input  [63:0] biases2_16_i;
output  [63:0] biases2_16_o;
output   biases2_16_o_ap_vld;
input  [63:0] biases2_15_i;
output  [63:0] biases2_15_o;
output   biases2_15_o_ap_vld;
input  [63:0] biases2_14_i;
output  [63:0] biases2_14_o;
output   biases2_14_o_ap_vld;
input  [63:0] biases2_13_i;
output  [63:0] biases2_13_o;
output   biases2_13_o_ap_vld;
input  [63:0] biases2_12_i;
output  [63:0] biases2_12_o;
output   biases2_12_o_ap_vld;
input  [63:0] biases2_11_i;
output  [63:0] biases2_11_o;
output   biases2_11_o_ap_vld;
input  [63:0] biases2_10_i;
output  [63:0] biases2_10_o;
output   biases2_10_o_ap_vld;
input  [63:0] biases2_9_i;
output  [63:0] biases2_9_o;
output   biases2_9_o_ap_vld;
input  [63:0] biases2_8_i;
output  [63:0] biases2_8_o;
output   biases2_8_o_ap_vld;
input  [63:0] biases2_7_i;
output  [63:0] biases2_7_o;
output   biases2_7_o_ap_vld;
input  [63:0] biases2_6_i;
output  [63:0] biases2_6_o;
output   biases2_6_o_ap_vld;
input  [63:0] biases2_5_i;
output  [63:0] biases2_5_o;
output   biases2_5_o_ap_vld;
input  [63:0] biases2_4_i;
output  [63:0] biases2_4_o;
output   biases2_4_o_ap_vld;
input  [63:0] biases2_3_i;
output  [63:0] biases2_3_o;
output   biases2_3_o_ap_vld;
input  [63:0] biases2_2_i;
output  [63:0] biases2_2_o;
output   biases2_2_o_ap_vld;
input  [63:0] biases2_1_i;
output  [63:0] biases2_1_o;
output   biases2_1_o_ap_vld;
input  [63:0] d_biases2_0_val;
input  [63:0] d_biases2_1_val;
input  [63:0] d_biases2_2_val;
input  [63:0] d_biases2_3_val;
input  [63:0] d_biases2_4_val;
input  [63:0] d_biases2_5_val;
input  [63:0] d_biases2_6_val;
input  [63:0] d_biases2_7_val;
input  [63:0] d_biases2_8_val;
input  [63:0] d_biases2_9_val;
input  [63:0] d_biases2_10_val;
input  [63:0] d_biases2_11_val;
input  [63:0] d_biases2_12_val;
input  [63:0] d_biases2_13_val;
input  [63:0] d_biases2_14_val;
input  [63:0] d_biases2_15_val;
input  [63:0] d_biases2_16_val;
input  [63:0] d_biases2_17_val;
input  [63:0] d_biases2_18_val;
input  [63:0] d_biases2_19_val;
input  [63:0] d_biases2_20_val;
input  [63:0] d_biases2_21_val;
input  [63:0] d_biases2_22_val;
input  [63:0] d_biases2_23_val;
input  [63:0] d_biases2_24_val;
input  [63:0] d_biases2_25_val;
input  [63:0] d_biases2_26_val;
input  [63:0] d_biases2_27_val;
input  [63:0] d_biases2_28_val;
input  [63:0] d_biases2_29_val;
input  [63:0] d_biases2_30_val;
input  [63:0] d_biases2_31_val;
input  [63:0] d_biases2_32_val;
input  [63:0] d_biases2_33_val;
input  [63:0] d_biases2_34_val;
input  [63:0] d_biases2_35_val;
input  [63:0] d_biases2_36_val;
input  [63:0] d_biases2_37_val;
input  [63:0] d_biases2_38_val;
input  [63:0] d_biases2_39_val;
input  [63:0] d_biases2_40_val;
input  [63:0] d_biases2_41_val;
input  [63:0] d_biases2_42_val;
input  [63:0] d_biases2_43_val;
input  [63:0] d_biases2_44_val;
input  [63:0] d_biases2_45_val;
input  [63:0] d_biases2_46_val;
input  [63:0] d_biases2_47_val;
input  [63:0] d_biases2_48_val;
input  [63:0] d_biases2_49_val;
input  [63:0] d_biases2_50_val;
input  [63:0] d_biases2_51_val;
input  [63:0] d_biases2_52_val;
input  [63:0] d_biases2_53_val;
input  [63:0] d_biases2_54_val;
input  [63:0] d_biases2_55_val;
input  [63:0] d_biases2_56_val;
input  [63:0] d_biases2_57_val;
input  [63:0] d_biases2_58_val;
input  [63:0] d_biases2_59_val;
input  [63:0] d_biases2_60_val;
input  [63:0] d_biases2_61_val;
input  [63:0] d_biases2_62_val;
input  [63:0] d_biases2_63_val;
output  [63:0] bias_norm_4_out;
output   bias_norm_4_out_ap_vld;
output  [63:0] grp_fu_4943_p_din0;
output  [63:0] grp_fu_4943_p_din1;
output  [1:0] grp_fu_4943_p_opcode;
input  [63:0] grp_fu_4943_p_dout0;
output   grp_fu_4943_p_ce;
output  [63:0] grp_fu_4947_p_din0;
output  [63:0] grp_fu_4947_p_din1;
input  [63:0] grp_fu_4947_p_dout0;
output   grp_fu_4947_p_ce;
reg ap_idle;
reg[63:0] biases2_0_o;
reg biases2_0_o_ap_vld;
reg[63:0] biases2_63_o;
reg biases2_63_o_ap_vld;
reg[63:0] biases2_62_o;
reg biases2_62_o_ap_vld;
reg[63:0] biases2_61_o;
reg biases2_61_o_ap_vld;
reg[63:0] biases2_60_o;
reg biases2_60_o_ap_vld;
reg[63:0] biases2_59_o;
reg biases2_59_o_ap_vld;
reg[63:0] biases2_58_o;
reg biases2_58_o_ap_vld;
reg[63:0] biases2_57_o;
reg biases2_57_o_ap_vld;
reg[63:0] biases2_56_o;
reg biases2_56_o_ap_vld;
reg[63:0] biases2_55_o;
reg biases2_55_o_ap_vld;
reg[63:0] biases2_54_o;
reg biases2_54_o_ap_vld;
reg[63:0] biases2_53_o;
reg biases2_53_o_ap_vld;
reg[63:0] biases2_52_o;
reg biases2_52_o_ap_vld;
reg[63:0] biases2_51_o;
reg biases2_51_o_ap_vld;
reg[63:0] biases2_50_o;
reg biases2_50_o_ap_vld;
reg[63:0] biases2_49_o;
reg biases2_49_o_ap_vld;
reg[63:0] biases2_48_o;
reg biases2_48_o_ap_vld;
reg[63:0] biases2_47_o;
reg biases2_47_o_ap_vld;
reg[63:0] biases2_46_o;
reg biases2_46_o_ap_vld;
reg[63:0] biases2_45_o;
reg biases2_45_o_ap_vld;
reg[63:0] biases2_44_o;
reg biases2_44_o_ap_vld;
reg[63:0] biases2_43_o;
reg biases2_43_o_ap_vld;
reg[63:0] biases2_42_o;
reg biases2_42_o_ap_vld;
reg[63:0] biases2_41_o;
reg biases2_41_o_ap_vld;
reg[63:0] biases2_40_o;
reg biases2_40_o_ap_vld;
reg[63:0] biases2_39_o;
reg biases2_39_o_ap_vld;
reg[63:0] biases2_38_o;
reg biases2_38_o_ap_vld;
reg[63:0] biases2_37_o;
reg biases2_37_o_ap_vld;
reg[63:0] biases2_36_o;
reg biases2_36_o_ap_vld;
reg[63:0] biases2_35_o;
reg biases2_35_o_ap_vld;
reg[63:0] biases2_34_o;
reg biases2_34_o_ap_vld;
reg[63:0] biases2_33_o;
reg biases2_33_o_ap_vld;
reg[63:0] biases2_32_o;
reg biases2_32_o_ap_vld;
reg[63:0] biases2_31_o;
reg biases2_31_o_ap_vld;
reg[63:0] biases2_30_o;
reg biases2_30_o_ap_vld;
reg[63:0] biases2_29_o;
reg biases2_29_o_ap_vld;
reg[63:0] biases2_28_o;
reg biases2_28_o_ap_vld;
reg[63:0] biases2_27_o;
reg biases2_27_o_ap_vld;
reg[63:0] biases2_26_o;
reg biases2_26_o_ap_vld;
reg[63:0] biases2_25_o;
reg biases2_25_o_ap_vld;
reg[63:0] biases2_24_o;
reg biases2_24_o_ap_vld;
reg[63:0] biases2_23_o;
reg biases2_23_o_ap_vld;
reg[63:0] biases2_22_o;
reg biases2_22_o_ap_vld;
reg[63:0] biases2_21_o;
reg biases2_21_o_ap_vld;
reg[63:0] biases2_20_o;
reg biases2_20_o_ap_vld;
reg[63:0] biases2_19_o;
reg biases2_19_o_ap_vld;
reg[63:0] biases2_18_o;
reg biases2_18_o_ap_vld;
reg[63:0] biases2_17_o;
reg biases2_17_o_ap_vld;
reg[63:0] biases2_16_o;
reg biases2_16_o_ap_vld;
reg[63:0] biases2_15_o;
reg biases2_15_o_ap_vld;
reg[63:0] biases2_14_o;
reg biases2_14_o_ap_vld;
reg[63:0] biases2_13_o;
reg biases2_13_o_ap_vld;
reg[63:0] biases2_12_o;
reg biases2_12_o_ap_vld;
reg[63:0] biases2_11_o;
reg biases2_11_o_ap_vld;
reg[63:0] biases2_10_o;
reg biases2_10_o_ap_vld;
reg[63:0] biases2_9_o;
reg biases2_9_o_ap_vld;
reg[63:0] biases2_8_o;
reg biases2_8_o_ap_vld;
reg[63:0] biases2_7_o;
reg biases2_7_o_ap_vld;
reg[63:0] biases2_6_o;
reg biases2_6_o_ap_vld;
reg[63:0] biases2_5_o;
reg biases2_5_o_ap_vld;
reg[63:0] biases2_4_o;
reg biases2_4_o_ap_vld;
reg[63:0] biases2_3_o;
reg biases2_3_o_ap_vld;
reg[63:0] biases2_2_o;
reg biases2_2_o_ap_vld;
reg[63:0] biases2_1_o;
reg biases2_1_o_ap_vld;
reg bias_norm_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln158_reg_2578;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln158_fu_1679_p2;
reg   [0:0] icmp_ln158_reg_2578_pp0_iter1_reg;
reg   [0:0] icmp_ln158_reg_2578_pp0_iter2_reg;
reg   [0:0] icmp_ln158_reg_2578_pp0_iter3_reg;
wire   [6:0] add_ln158_fu_1685_p2;
reg   [6:0] add_ln158_reg_2582;
wire   [5:0] trunc_ln158_fu_1691_p1;
reg   [5:0] trunc_ln158_reg_2587;
reg   [5:0] trunc_ln158_reg_2587_pp0_iter1_reg;
wire   [63:0] tmp_7_fu_1695_p131;
reg   [63:0] tmp_7_reg_2592;
wire   [63:0] tmp_8_fu_2219_p131;
reg   [63:0] tmp_8_reg_2597;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] mul3_reg_2602;
reg   [63:0] sub2_reg_2607;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] mul6_reg_2613;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] bias_norm_fu_426;
reg   [63:0] ap_sig_allocacmp_bias_norm_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] i_fu_430;
reg   [6:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
wire   [63:0] bitcast_ln159_64_fu_2482_p1;
wire    ap_block_pp0_stage1_01001;
reg    ap_predicate_pred585_state16;
reg    ap_predicate_pred591_state16;
reg    ap_predicate_pred597_state16;
reg    ap_predicate_pred603_state16;
reg    ap_predicate_pred609_state16;
reg    ap_predicate_pred615_state16;
reg    ap_predicate_pred621_state16;
reg    ap_predicate_pred627_state16;
reg    ap_predicate_pred633_state16;
reg    ap_predicate_pred639_state16;
reg    ap_predicate_pred645_state16;
reg    ap_predicate_pred651_state16;
reg    ap_predicate_pred657_state16;
reg    ap_predicate_pred663_state16;
reg    ap_predicate_pred669_state16;
reg    ap_predicate_pred675_state16;
reg    ap_predicate_pred681_state16;
reg    ap_predicate_pred687_state16;
reg    ap_predicate_pred693_state16;
reg    ap_predicate_pred699_state16;
reg    ap_predicate_pred705_state16;
reg    ap_predicate_pred711_state16;
reg    ap_predicate_pred717_state16;
reg    ap_predicate_pred723_state16;
reg    ap_predicate_pred729_state16;
reg    ap_predicate_pred735_state16;
reg    ap_predicate_pred741_state16;
reg    ap_predicate_pred747_state16;
reg    ap_predicate_pred753_state16;
reg    ap_predicate_pred759_state16;
reg    ap_predicate_pred765_state16;
reg    ap_predicate_pred771_state16;
reg    ap_predicate_pred777_state16;
reg    ap_predicate_pred783_state16;
reg    ap_predicate_pred789_state16;
reg    ap_predicate_pred795_state16;
reg    ap_predicate_pred801_state16;
reg    ap_predicate_pred807_state16;
reg    ap_predicate_pred813_state16;
reg    ap_predicate_pred819_state16;
reg    ap_predicate_pred825_state16;
reg    ap_predicate_pred831_state16;
reg    ap_predicate_pred837_state16;
reg    ap_predicate_pred843_state16;
reg    ap_predicate_pred849_state16;
reg    ap_predicate_pred855_state16;
reg    ap_predicate_pred861_state16;
reg    ap_predicate_pred867_state16;
reg    ap_predicate_pred873_state16;
reg    ap_predicate_pred879_state16;
reg    ap_predicate_pred885_state16;
reg    ap_predicate_pred891_state16;
reg    ap_predicate_pred897_state16;
reg    ap_predicate_pred903_state16;
reg    ap_predicate_pred909_state16;
reg    ap_predicate_pred915_state16;
reg    ap_predicate_pred921_state16;
reg    ap_predicate_pred927_state16;
reg    ap_predicate_pred933_state16;
reg    ap_predicate_pred939_state16;
reg    ap_predicate_pred945_state16;
reg    ap_predicate_pred951_state16;
reg    ap_predicate_pred957_state16;
reg    ap_predicate_pred963_state16;
wire    ap_block_pp0_stage2_01001;
reg   [63:0] grp_fu_1657_p0;
reg   [63:0] grp_fu_1657_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1661_p0;
reg   [63:0] grp_fu_1661_p1;
wire   [63:0] tmp_7_fu_1695_p129;
wire   [5:0] tmp_7_fu_1695_p130;
wire    ap_block_pp0_stage6;
wire   [63:0] tmp_8_fu_2219_p2;
wire   [63:0] tmp_8_fu_2219_p4;
wire   [63:0] tmp_8_fu_2219_p6;
wire   [63:0] tmp_8_fu_2219_p8;
wire   [63:0] tmp_8_fu_2219_p10;
wire   [63:0] tmp_8_fu_2219_p12;
wire   [63:0] tmp_8_fu_2219_p14;
wire   [63:0] tmp_8_fu_2219_p16;
wire   [63:0] tmp_8_fu_2219_p18;
wire   [63:0] tmp_8_fu_2219_p20;
wire   [63:0] tmp_8_fu_2219_p22;
wire   [63:0] tmp_8_fu_2219_p24;
wire   [63:0] tmp_8_fu_2219_p26;
wire   [63:0] tmp_8_fu_2219_p28;
wire   [63:0] tmp_8_fu_2219_p30;
wire   [63:0] tmp_8_fu_2219_p32;
wire   [63:0] tmp_8_fu_2219_p34;
wire   [63:0] tmp_8_fu_2219_p36;
wire   [63:0] tmp_8_fu_2219_p38;
wire   [63:0] tmp_8_fu_2219_p40;
wire   [63:0] tmp_8_fu_2219_p42;
wire   [63:0] tmp_8_fu_2219_p44;
wire   [63:0] tmp_8_fu_2219_p46;
wire   [63:0] tmp_8_fu_2219_p48;
wire   [63:0] tmp_8_fu_2219_p50;
wire   [63:0] tmp_8_fu_2219_p52;
wire   [63:0] tmp_8_fu_2219_p54;
wire   [63:0] tmp_8_fu_2219_p56;
wire   [63:0] tmp_8_fu_2219_p58;
wire   [63:0] tmp_8_fu_2219_p60;
wire   [63:0] tmp_8_fu_2219_p62;
wire   [63:0] tmp_8_fu_2219_p64;
wire   [63:0] tmp_8_fu_2219_p66;
wire   [63:0] tmp_8_fu_2219_p68;
wire   [63:0] tmp_8_fu_2219_p70;
wire   [63:0] tmp_8_fu_2219_p72;
wire   [63:0] tmp_8_fu_2219_p74;
wire   [63:0] tmp_8_fu_2219_p76;
wire   [63:0] tmp_8_fu_2219_p78;
wire   [63:0] tmp_8_fu_2219_p80;
wire   [63:0] tmp_8_fu_2219_p82;
wire   [63:0] tmp_8_fu_2219_p84;
wire   [63:0] tmp_8_fu_2219_p86;
wire   [63:0] tmp_8_fu_2219_p88;
wire   [63:0] tmp_8_fu_2219_p90;
wire   [63:0] tmp_8_fu_2219_p92;
wire   [63:0] tmp_8_fu_2219_p94;
wire   [63:0] tmp_8_fu_2219_p96;
wire   [63:0] tmp_8_fu_2219_p98;
wire   [63:0] tmp_8_fu_2219_p100;
wire   [63:0] tmp_8_fu_2219_p102;
wire   [63:0] tmp_8_fu_2219_p104;
wire   [63:0] tmp_8_fu_2219_p106;
wire   [63:0] tmp_8_fu_2219_p108;
wire   [63:0] tmp_8_fu_2219_p110;
wire   [63:0] tmp_8_fu_2219_p112;
wire   [63:0] tmp_8_fu_2219_p114;
wire   [63:0] tmp_8_fu_2219_p116;
wire   [63:0] tmp_8_fu_2219_p118;
wire   [63:0] tmp_8_fu_2219_p120;
wire   [63:0] tmp_8_fu_2219_p122;
wire   [63:0] tmp_8_fu_2219_p124;
wire   [63:0] tmp_8_fu_2219_p126;
wire   [63:0] tmp_8_fu_2219_p128;
wire   [63:0] tmp_8_fu_2219_p129;
reg   [1:0] grp_fu_1657_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_7_fu_1695_p1;
wire   [5:0] tmp_7_fu_1695_p3;
wire   [5:0] tmp_7_fu_1695_p5;
wire   [5:0] tmp_7_fu_1695_p7;
wire   [5:0] tmp_7_fu_1695_p9;
wire   [5:0] tmp_7_fu_1695_p11;
wire   [5:0] tmp_7_fu_1695_p13;
wire   [5:0] tmp_7_fu_1695_p15;
wire   [5:0] tmp_7_fu_1695_p17;
wire   [5:0] tmp_7_fu_1695_p19;
wire   [5:0] tmp_7_fu_1695_p21;
wire   [5:0] tmp_7_fu_1695_p23;
wire   [5:0] tmp_7_fu_1695_p25;
wire   [5:0] tmp_7_fu_1695_p27;
wire   [5:0] tmp_7_fu_1695_p29;
wire   [5:0] tmp_7_fu_1695_p31;
wire   [5:0] tmp_7_fu_1695_p33;
wire   [5:0] tmp_7_fu_1695_p35;
wire   [5:0] tmp_7_fu_1695_p37;
wire   [5:0] tmp_7_fu_1695_p39;
wire   [5:0] tmp_7_fu_1695_p41;
wire   [5:0] tmp_7_fu_1695_p43;
wire   [5:0] tmp_7_fu_1695_p45;
wire   [5:0] tmp_7_fu_1695_p47;
wire   [5:0] tmp_7_fu_1695_p49;
wire   [5:0] tmp_7_fu_1695_p51;
wire   [5:0] tmp_7_fu_1695_p53;
wire   [5:0] tmp_7_fu_1695_p55;
wire   [5:0] tmp_7_fu_1695_p57;
wire   [5:0] tmp_7_fu_1695_p59;
wire   [5:0] tmp_7_fu_1695_p61;
wire   [5:0] tmp_7_fu_1695_p63;
wire  signed [5:0] tmp_7_fu_1695_p65;
wire  signed [5:0] tmp_7_fu_1695_p67;
wire  signed [5:0] tmp_7_fu_1695_p69;
wire  signed [5:0] tmp_7_fu_1695_p71;
wire  signed [5:0] tmp_7_fu_1695_p73;
wire  signed [5:0] tmp_7_fu_1695_p75;
wire  signed [5:0] tmp_7_fu_1695_p77;
wire  signed [5:0] tmp_7_fu_1695_p79;
wire  signed [5:0] tmp_7_fu_1695_p81;
wire  signed [5:0] tmp_7_fu_1695_p83;
wire  signed [5:0] tmp_7_fu_1695_p85;
wire  signed [5:0] tmp_7_fu_1695_p87;
wire  signed [5:0] tmp_7_fu_1695_p89;
wire  signed [5:0] tmp_7_fu_1695_p91;
wire  signed [5:0] tmp_7_fu_1695_p93;
wire  signed [5:0] tmp_7_fu_1695_p95;
wire  signed [5:0] tmp_7_fu_1695_p97;
wire  signed [5:0] tmp_7_fu_1695_p99;
wire  signed [5:0] tmp_7_fu_1695_p101;
wire  signed [5:0] tmp_7_fu_1695_p103;
wire  signed [5:0] tmp_7_fu_1695_p105;
wire  signed [5:0] tmp_7_fu_1695_p107;
wire  signed [5:0] tmp_7_fu_1695_p109;
wire  signed [5:0] tmp_7_fu_1695_p111;
wire  signed [5:0] tmp_7_fu_1695_p113;
wire  signed [5:0] tmp_7_fu_1695_p115;
wire  signed [5:0] tmp_7_fu_1695_p117;
wire  signed [5:0] tmp_7_fu_1695_p119;
wire  signed [5:0] tmp_7_fu_1695_p121;
wire  signed [5:0] tmp_7_fu_1695_p123;
wire  signed [5:0] tmp_7_fu_1695_p125;
wire  signed [5:0] tmp_7_fu_1695_p127;
wire   [5:0] tmp_8_fu_2219_p1;
wire   [5:0] tmp_8_fu_2219_p3;
wire   [5:0] tmp_8_fu_2219_p5;
wire   [5:0] tmp_8_fu_2219_p7;
wire   [5:0] tmp_8_fu_2219_p9;
wire   [5:0] tmp_8_fu_2219_p11;
wire   [5:0] tmp_8_fu_2219_p13;
wire   [5:0] tmp_8_fu_2219_p15;
wire   [5:0] tmp_8_fu_2219_p17;
wire   [5:0] tmp_8_fu_2219_p19;
wire   [5:0] tmp_8_fu_2219_p21;
wire   [5:0] tmp_8_fu_2219_p23;
wire   [5:0] tmp_8_fu_2219_p25;
wire   [5:0] tmp_8_fu_2219_p27;
wire   [5:0] tmp_8_fu_2219_p29;
wire   [5:0] tmp_8_fu_2219_p31;
wire   [5:0] tmp_8_fu_2219_p33;
wire   [5:0] tmp_8_fu_2219_p35;
wire   [5:0] tmp_8_fu_2219_p37;
wire   [5:0] tmp_8_fu_2219_p39;
wire   [5:0] tmp_8_fu_2219_p41;
wire   [5:0] tmp_8_fu_2219_p43;
wire   [5:0] tmp_8_fu_2219_p45;
wire   [5:0] tmp_8_fu_2219_p47;
wire   [5:0] tmp_8_fu_2219_p49;
wire   [5:0] tmp_8_fu_2219_p51;
wire   [5:0] tmp_8_fu_2219_p53;
wire   [5:0] tmp_8_fu_2219_p55;
wire   [5:0] tmp_8_fu_2219_p57;
wire   [5:0] tmp_8_fu_2219_p59;
wire   [5:0] tmp_8_fu_2219_p61;
wire   [5:0] tmp_8_fu_2219_p63;
wire  signed [5:0] tmp_8_fu_2219_p65;
wire  signed [5:0] tmp_8_fu_2219_p67;
wire  signed [5:0] tmp_8_fu_2219_p69;
wire  signed [5:0] tmp_8_fu_2219_p71;
wire  signed [5:0] tmp_8_fu_2219_p73;
wire  signed [5:0] tmp_8_fu_2219_p75;
wire  signed [5:0] tmp_8_fu_2219_p77;
wire  signed [5:0] tmp_8_fu_2219_p79;
wire  signed [5:0] tmp_8_fu_2219_p81;
wire  signed [5:0] tmp_8_fu_2219_p83;
wire  signed [5:0] tmp_8_fu_2219_p85;
wire  signed [5:0] tmp_8_fu_2219_p87;
wire  signed [5:0] tmp_8_fu_2219_p89;
wire  signed [5:0] tmp_8_fu_2219_p91;
wire  signed [5:0] tmp_8_fu_2219_p93;
wire  signed [5:0] tmp_8_fu_2219_p95;
wire  signed [5:0] tmp_8_fu_2219_p97;
wire  signed [5:0] tmp_8_fu_2219_p99;
wire  signed [5:0] tmp_8_fu_2219_p101;
wire  signed [5:0] tmp_8_fu_2219_p103;
wire  signed [5:0] tmp_8_fu_2219_p105;
wire  signed [5:0] tmp_8_fu_2219_p107;
wire  signed [5:0] tmp_8_fu_2219_p109;
wire  signed [5:0] tmp_8_fu_2219_p111;
wire  signed [5:0] tmp_8_fu_2219_p113;
wire  signed [5:0] tmp_8_fu_2219_p115;
wire  signed [5:0] tmp_8_fu_2219_p117;
wire  signed [5:0] tmp_8_fu_2219_p119;
wire  signed [5:0] tmp_8_fu_2219_p121;
wire  signed [5:0] tmp_8_fu_2219_p123;
wire  signed [5:0] tmp_8_fu_2219_p125;
wire  signed [5:0] tmp_8_fu_2219_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_426 = 64'd0;
#0 i_fu_430 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U4503(.din0(d_biases2_0_val),.din1(d_biases2_1_val),.din2(d_biases2_2_val),.din3(d_biases2_3_val),.din4(d_biases2_4_val),.din5(d_biases2_5_val),.din6(d_biases2_6_val),.din7(d_biases2_7_val),.din8(d_biases2_8_val),.din9(d_biases2_9_val),.din10(d_biases2_10_val),.din11(d_biases2_11_val),.din12(d_biases2_12_val),.din13(d_biases2_13_val),.din14(d_biases2_14_val),.din15(d_biases2_15_val),.din16(d_biases2_16_val),.din17(d_biases2_17_val),.din18(d_biases2_18_val),.din19(d_biases2_19_val),.din20(d_biases2_20_val),.din21(d_biases2_21_val),.din22(d_biases2_22_val),.din23(d_biases2_23_val),.din24(d_biases2_24_val),.din25(d_biases2_25_val),.din26(d_biases2_26_val),.din27(d_biases2_27_val),.din28(d_biases2_28_val),.din29(d_biases2_29_val),.din30(d_biases2_30_val),.din31(d_biases2_31_val),.din32(d_biases2_32_val),.din33(d_biases2_33_val),.din34(d_biases2_34_val),.din35(d_biases2_35_val),.din36(d_biases2_36_val),.din37(d_biases2_37_val),.din38(d_biases2_38_val),.din39(d_biases2_39_val),.din40(d_biases2_40_val),.din41(d_biases2_41_val),.din42(d_biases2_42_val),.din43(d_biases2_43_val),.din44(d_biases2_44_val),.din45(d_biases2_45_val),.din46(d_biases2_46_val),.din47(d_biases2_47_val),.din48(d_biases2_48_val),.din49(d_biases2_49_val),.din50(d_biases2_50_val),.din51(d_biases2_51_val),.din52(d_biases2_52_val),.din53(d_biases2_53_val),.din54(d_biases2_54_val),.din55(d_biases2_55_val),.din56(d_biases2_56_val),.din57(d_biases2_57_val),.din58(d_biases2_58_val),.din59(d_biases2_59_val),.din60(d_biases2_60_val),.din61(d_biases2_61_val),.din62(d_biases2_62_val),.din63(d_biases2_63_val),.def(tmp_7_fu_1695_p129),.sel(tmp_7_fu_1695_p130),.dout(tmp_7_fu_1695_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U4504(.din0(tmp_8_fu_2219_p2),.din1(tmp_8_fu_2219_p4),.din2(tmp_8_fu_2219_p6),.din3(tmp_8_fu_2219_p8),.din4(tmp_8_fu_2219_p10),.din5(tmp_8_fu_2219_p12),.din6(tmp_8_fu_2219_p14),.din7(tmp_8_fu_2219_p16),.din8(tmp_8_fu_2219_p18),.din9(tmp_8_fu_2219_p20),.din10(tmp_8_fu_2219_p22),.din11(tmp_8_fu_2219_p24),.din12(tmp_8_fu_2219_p26),.din13(tmp_8_fu_2219_p28),.din14(tmp_8_fu_2219_p30),.din15(tmp_8_fu_2219_p32),.din16(tmp_8_fu_2219_p34),.din17(tmp_8_fu_2219_p36),.din18(tmp_8_fu_2219_p38),.din19(tmp_8_fu_2219_p40),.din20(tmp_8_fu_2219_p42),.din21(tmp_8_fu_2219_p44),.din22(tmp_8_fu_2219_p46),.din23(tmp_8_fu_2219_p48),.din24(tmp_8_fu_2219_p50),.din25(tmp_8_fu_2219_p52),.din26(tmp_8_fu_2219_p54),.din27(tmp_8_fu_2219_p56),.din28(tmp_8_fu_2219_p58),.din29(tmp_8_fu_2219_p60),.din30(tmp_8_fu_2219_p62),.din31(tmp_8_fu_2219_p64),.din32(tmp_8_fu_2219_p66),.din33(tmp_8_fu_2219_p68),.din34(tmp_8_fu_2219_p70),.din35(tmp_8_fu_2219_p72),.din36(tmp_8_fu_2219_p74),.din37(tmp_8_fu_2219_p76),.din38(tmp_8_fu_2219_p78),.din39(tmp_8_fu_2219_p80),.din40(tmp_8_fu_2219_p82),.din41(tmp_8_fu_2219_p84),.din42(tmp_8_fu_2219_p86),.din43(tmp_8_fu_2219_p88),.din44(tmp_8_fu_2219_p90),.din45(tmp_8_fu_2219_p92),.din46(tmp_8_fu_2219_p94),.din47(tmp_8_fu_2219_p96),.din48(tmp_8_fu_2219_p98),.din49(tmp_8_fu_2219_p100),.din50(tmp_8_fu_2219_p102),.din51(tmp_8_fu_2219_p104),.din52(tmp_8_fu_2219_p106),.din53(tmp_8_fu_2219_p108),.din54(tmp_8_fu_2219_p110),.din55(tmp_8_fu_2219_p112),.din56(tmp_8_fu_2219_p114),.din57(tmp_8_fu_2219_p116),.din58(tmp_8_fu_2219_p118),.din59(tmp_8_fu_2219_p120),.din60(tmp_8_fu_2219_p122),.din61(tmp_8_fu_2219_p124),.din62(tmp_8_fu_2219_p126),.din63(tmp_8_fu_2219_p128),.def(tmp_8_fu_2219_p129),.sel(trunc_ln158_reg_2587),.dout(tmp_8_fu_2219_p131));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_426 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bias_norm_fu_426 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_430 <= 7'd0;
    end else if (((icmp_ln158_reg_2578 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_430 <= add_ln158_reg_2582;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln158_reg_2582 <= add_ln158_fu_1685_p2;
        ap_predicate_pred585_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd62);
        ap_predicate_pred591_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd61);
        ap_predicate_pred597_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd60);
        ap_predicate_pred603_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd59);
        ap_predicate_pred609_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd58);
        ap_predicate_pred615_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd57);
        ap_predicate_pred621_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd56);
        ap_predicate_pred627_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd55);
        ap_predicate_pred633_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd54);
        ap_predicate_pred639_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd53);
        ap_predicate_pred645_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd52);
        ap_predicate_pred651_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd51);
        ap_predicate_pred657_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd50);
        ap_predicate_pred663_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd49);
        ap_predicate_pred669_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd48);
        ap_predicate_pred675_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd47);
        ap_predicate_pred681_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd46);
        ap_predicate_pred687_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd45);
        ap_predicate_pred693_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd44);
        ap_predicate_pred699_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd43);
        ap_predicate_pred705_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd42);
        ap_predicate_pred711_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd41);
        ap_predicate_pred717_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd40);
        ap_predicate_pred723_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd39);
        ap_predicate_pred729_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd38);
        ap_predicate_pred735_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd37);
        ap_predicate_pred741_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd36);
        ap_predicate_pred747_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd35);
        ap_predicate_pred753_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd34);
        ap_predicate_pred759_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd33);
        ap_predicate_pred765_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd32);
        ap_predicate_pred771_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd31);
        ap_predicate_pred777_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd30);
        ap_predicate_pred783_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd29);
        ap_predicate_pred789_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd28);
        ap_predicate_pred795_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd27);
        ap_predicate_pred801_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd26);
        ap_predicate_pred807_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd25);
        ap_predicate_pred813_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd24);
        ap_predicate_pred819_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd23);
        ap_predicate_pred825_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd22);
        ap_predicate_pred831_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd21);
        ap_predicate_pred837_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd20);
        ap_predicate_pred843_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd19);
        ap_predicate_pred849_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd18);
        ap_predicate_pred855_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd17);
        ap_predicate_pred861_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd16);
        ap_predicate_pred867_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd15);
        ap_predicate_pred873_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd14);
        ap_predicate_pred879_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd13);
        ap_predicate_pred885_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd12);
        ap_predicate_pred891_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd11);
        ap_predicate_pred897_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd10);
        ap_predicate_pred903_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd9);
        ap_predicate_pred909_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd8);
        ap_predicate_pred915_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd7);
        ap_predicate_pred921_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd6);
        ap_predicate_pred927_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd5);
        ap_predicate_pred933_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd4);
        ap_predicate_pred939_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd3);
        ap_predicate_pred945_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd2);
        ap_predicate_pred951_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd1);
        ap_predicate_pred957_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd0);
        ap_predicate_pred963_state16 <= (trunc_ln158_reg_2587_pp0_iter1_reg == 6'd63);
        icmp_ln158_reg_2578 <= icmp_ln158_fu_1679_p2;
        icmp_ln158_reg_2578_pp0_iter1_reg <= icmp_ln158_reg_2578;
        icmp_ln158_reg_2578_pp0_iter2_reg <= icmp_ln158_reg_2578_pp0_iter1_reg;
        icmp_ln158_reg_2578_pp0_iter3_reg <= icmp_ln158_reg_2578_pp0_iter2_reg;
        tmp_7_reg_2592 <= tmp_7_fu_1695_p131;
        trunc_ln158_reg_2587 <= trunc_ln158_fu_1691_p1;
        trunc_ln158_reg_2587_pp0_iter1_reg <= trunc_ln158_reg_2587;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul3_reg_2602 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul6_reg_2613 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub2_reg_2607 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_8_reg_2597 <= tmp_8_fu_2219_p131;
    end
end
always @ (*) begin
    if (((icmp_ln158_reg_2578 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln158_reg_2578_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_bias_norm_load_1 = grp_fu_4943_p_dout0;
    end else begin
        ap_sig_allocacmp_bias_norm_load_1 = bias_norm_fu_426;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_430;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln158_reg_2578_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bias_norm_4_out_ap_vld = 1'b1;
    end else begin
        bias_norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred957_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_0_o = biases2_0_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred957_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_o_ap_vld = 1'b1;
    end else begin
        biases2_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_10_o = biases2_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_o_ap_vld = 1'b1;
    end else begin
        biases2_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_11_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_11_o = biases2_11_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_11_o_ap_vld = 1'b1;
    end else begin
        biases2_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_12_o = biases2_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_o_ap_vld = 1'b1;
    end else begin
        biases2_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_13_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_13_o = biases2_13_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_13_o_ap_vld = 1'b1;
    end else begin
        biases2_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_14_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_14_o = biases2_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_14_o_ap_vld = 1'b1;
    end else begin
        biases2_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_15_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_15_o = biases2_15_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_15_o_ap_vld = 1'b1;
    end else begin
        biases2_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_16_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_16_o = biases2_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_16_o_ap_vld = 1'b1;
    end else begin
        biases2_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_17_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_17_o = biases2_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_17_o_ap_vld = 1'b1;
    end else begin
        biases2_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_18_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_18_o = biases2_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_18_o_ap_vld = 1'b1;
    end else begin
        biases2_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_19_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_19_o = biases2_19_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_19_o_ap_vld = 1'b1;
    end else begin
        biases2_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred951_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_1_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_1_o = biases2_1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred951_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_1_o_ap_vld = 1'b1;
    end else begin
        biases2_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_20_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_20_o = biases2_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_20_o_ap_vld = 1'b1;
    end else begin
        biases2_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_21_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_21_o = biases2_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_21_o_ap_vld = 1'b1;
    end else begin
        biases2_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_22_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_22_o = biases2_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_22_o_ap_vld = 1'b1;
    end else begin
        biases2_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_23_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_23_o = biases2_23_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_23_o_ap_vld = 1'b1;
    end else begin
        biases2_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_24_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_24_o = biases2_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_24_o_ap_vld = 1'b1;
    end else begin
        biases2_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_25_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_25_o = biases2_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_25_o_ap_vld = 1'b1;
    end else begin
        biases2_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_26_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_26_o = biases2_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_26_o_ap_vld = 1'b1;
    end else begin
        biases2_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_27_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_27_o = biases2_27_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_27_o_ap_vld = 1'b1;
    end else begin
        biases2_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_28_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_28_o = biases2_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_28_o_ap_vld = 1'b1;
    end else begin
        biases2_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_29_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_29_o = biases2_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_29_o_ap_vld = 1'b1;
    end else begin
        biases2_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred945_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_2_o = biases2_2_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred945_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_o_ap_vld = 1'b1;
    end else begin
        biases2_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_30_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_30_o = biases2_30_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_30_o_ap_vld = 1'b1;
    end else begin
        biases2_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_31_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_31_o = biases2_31_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_31_o_ap_vld = 1'b1;
    end else begin
        biases2_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_32_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_32_o = biases2_32_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_32_o_ap_vld = 1'b1;
    end else begin
        biases2_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_33_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_33_o = biases2_33_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_33_o_ap_vld = 1'b1;
    end else begin
        biases2_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_34_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_34_o = biases2_34_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_34_o_ap_vld = 1'b1;
    end else begin
        biases2_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_35_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_35_o = biases2_35_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_35_o_ap_vld = 1'b1;
    end else begin
        biases2_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_36_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_36_o = biases2_36_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_36_o_ap_vld = 1'b1;
    end else begin
        biases2_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_37_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_37_o = biases2_37_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_37_o_ap_vld = 1'b1;
    end else begin
        biases2_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_38_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_38_o = biases2_38_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_38_o_ap_vld = 1'b1;
    end else begin
        biases2_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_39_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_39_o = biases2_39_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_39_o_ap_vld = 1'b1;
    end else begin
        biases2_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred939_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_3_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_3_o = biases2_3_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred939_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_3_o_ap_vld = 1'b1;
    end else begin
        biases2_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_40_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_40_o = biases2_40_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_40_o_ap_vld = 1'b1;
    end else begin
        biases2_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_41_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_41_o = biases2_41_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_41_o_ap_vld = 1'b1;
    end else begin
        biases2_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_42_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_42_o = biases2_42_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_42_o_ap_vld = 1'b1;
    end else begin
        biases2_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_43_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_43_o = biases2_43_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_43_o_ap_vld = 1'b1;
    end else begin
        biases2_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_44_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_44_o = biases2_44_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_44_o_ap_vld = 1'b1;
    end else begin
        biases2_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_45_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_45_o = biases2_45_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_45_o_ap_vld = 1'b1;
    end else begin
        biases2_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_46_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_46_o = biases2_46_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_46_o_ap_vld = 1'b1;
    end else begin
        biases2_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_47_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_47_o = biases2_47_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_47_o_ap_vld = 1'b1;
    end else begin
        biases2_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_48_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_48_o = biases2_48_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_48_o_ap_vld = 1'b1;
    end else begin
        biases2_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_49_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_49_o = biases2_49_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_49_o_ap_vld = 1'b1;
    end else begin
        biases2_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred933_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_4_o = biases2_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred933_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_o_ap_vld = 1'b1;
    end else begin
        biases2_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_50_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_50_o = biases2_50_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_50_o_ap_vld = 1'b1;
    end else begin
        biases2_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_51_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_51_o = biases2_51_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_51_o_ap_vld = 1'b1;
    end else begin
        biases2_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_52_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_52_o = biases2_52_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_52_o_ap_vld = 1'b1;
    end else begin
        biases2_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_53_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_53_o = biases2_53_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_53_o_ap_vld = 1'b1;
    end else begin
        biases2_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_54_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_54_o = biases2_54_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_54_o_ap_vld = 1'b1;
    end else begin
        biases2_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_55_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_55_o = biases2_55_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_55_o_ap_vld = 1'b1;
    end else begin
        biases2_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_56_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_56_o = biases2_56_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_56_o_ap_vld = 1'b1;
    end else begin
        biases2_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_57_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_57_o = biases2_57_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_57_o_ap_vld = 1'b1;
    end else begin
        biases2_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_58_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_58_o = biases2_58_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_58_o_ap_vld = 1'b1;
    end else begin
        biases2_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_59_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_59_o = biases2_59_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_59_o_ap_vld = 1'b1;
    end else begin
        biases2_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred927_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_5_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_5_o = biases2_5_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred927_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_5_o_ap_vld = 1'b1;
    end else begin
        biases2_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_60_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_60_o = biases2_60_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_60_o_ap_vld = 1'b1;
    end else begin
        biases2_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_61_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_61_o = biases2_61_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_61_o_ap_vld = 1'b1;
    end else begin
        biases2_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_62_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_62_o = biases2_62_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_62_o_ap_vld = 1'b1;
    end else begin
        biases2_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred963_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_63_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_63_o = biases2_63_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred963_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_63_o_ap_vld = 1'b1;
    end else begin
        biases2_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred921_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_6_o = biases2_6_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred921_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_o_ap_vld = 1'b1;
    end else begin
        biases2_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred915_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_7_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_7_o = biases2_7_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred915_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_7_o_ap_vld = 1'b1;
    end else begin
        biases2_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred909_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_8_o = biases2_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred909_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_o_ap_vld = 1'b1;
    end else begin
        biases2_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred903_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_9_o = bitcast_ln159_64_fu_2482_p1;
    end else begin
        biases2_9_o = biases2_9_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred903_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_9_o_ap_vld = 1'b1;
    end else begin
        biases2_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1657_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1657_opcode = 2'd0;
    end else begin
        grp_fu_1657_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1657_p0 = ap_sig_allocacmp_bias_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1657_p0 = tmp_8_reg_2597;
    end else begin
        grp_fu_1657_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1657_p1 = mul6_reg_2613;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1657_p1 = mul3_reg_2602;
    end else begin
        grp_fu_1657_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1661_p0 = sub2_reg_2607;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1661_p0 = tmp_7_reg_2592;
    end else begin
        grp_fu_1661_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1661_p1 = sub2_reg_2607;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1661_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1661_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln158_fu_1685_p2 = (ap_sig_allocacmp_i_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bias_norm_4_out = bias_norm_fu_426;
assign bitcast_ln159_64_fu_2482_p1 = grp_fu_4943_p_dout0;
assign grp_fu_4943_p_ce = 1'b1;
assign grp_fu_4943_p_din0 = grp_fu_1657_p0;
assign grp_fu_4943_p_din1 = grp_fu_1657_p1;
assign grp_fu_4943_p_opcode = grp_fu_1657_opcode;
assign grp_fu_4947_p_ce = 1'b1;
assign grp_fu_4947_p_din0 = grp_fu_1661_p0;
assign grp_fu_4947_p_din1 = grp_fu_1661_p1;
assign icmp_ln158_fu_1679_p2 = ((ap_sig_allocacmp_i_2 == 7'd64) ? 1'b1 : 1'b0);
assign tmp_7_fu_1695_p129 = 'bx;
assign tmp_7_fu_1695_p130 = ap_sig_allocacmp_i_2[5:0];
assign tmp_8_fu_2219_p10 = biases2_4_i;
assign tmp_8_fu_2219_p100 = biases2_49_i;
assign tmp_8_fu_2219_p102 = biases2_50_i;
assign tmp_8_fu_2219_p104 = biases2_51_i;
assign tmp_8_fu_2219_p106 = biases2_52_i;
assign tmp_8_fu_2219_p108 = biases2_53_i;
assign tmp_8_fu_2219_p110 = biases2_54_i;
assign tmp_8_fu_2219_p112 = biases2_55_i;
assign tmp_8_fu_2219_p114 = biases2_56_i;
assign tmp_8_fu_2219_p116 = biases2_57_i;
assign tmp_8_fu_2219_p118 = biases2_58_i;
assign tmp_8_fu_2219_p12 = biases2_5_i;
assign tmp_8_fu_2219_p120 = biases2_59_i;
assign tmp_8_fu_2219_p122 = biases2_60_i;
assign tmp_8_fu_2219_p124 = biases2_61_i;
assign tmp_8_fu_2219_p126 = biases2_62_i;
assign tmp_8_fu_2219_p128 = biases2_63_i;
assign tmp_8_fu_2219_p129 = 'bx;
assign tmp_8_fu_2219_p14 = biases2_6_i;
assign tmp_8_fu_2219_p16 = biases2_7_i;
assign tmp_8_fu_2219_p18 = biases2_8_i;
assign tmp_8_fu_2219_p2 = biases2_0_i;
assign tmp_8_fu_2219_p20 = biases2_9_i;
assign tmp_8_fu_2219_p22 = biases2_10_i;
assign tmp_8_fu_2219_p24 = biases2_11_i;
assign tmp_8_fu_2219_p26 = biases2_12_i;
assign tmp_8_fu_2219_p28 = biases2_13_i;
assign tmp_8_fu_2219_p30 = biases2_14_i;
assign tmp_8_fu_2219_p32 = biases2_15_i;
assign tmp_8_fu_2219_p34 = biases2_16_i;
assign tmp_8_fu_2219_p36 = biases2_17_i;
assign tmp_8_fu_2219_p38 = biases2_18_i;
assign tmp_8_fu_2219_p4 = biases2_1_i;
assign tmp_8_fu_2219_p40 = biases2_19_i;
assign tmp_8_fu_2219_p42 = biases2_20_i;
assign tmp_8_fu_2219_p44 = biases2_21_i;
assign tmp_8_fu_2219_p46 = biases2_22_i;
assign tmp_8_fu_2219_p48 = biases2_23_i;
assign tmp_8_fu_2219_p50 = biases2_24_i;
assign tmp_8_fu_2219_p52 = biases2_25_i;
assign tmp_8_fu_2219_p54 = biases2_26_i;
assign tmp_8_fu_2219_p56 = biases2_27_i;
assign tmp_8_fu_2219_p58 = biases2_28_i;
assign tmp_8_fu_2219_p6 = biases2_2_i;
assign tmp_8_fu_2219_p60 = biases2_29_i;
assign tmp_8_fu_2219_p62 = biases2_30_i;
assign tmp_8_fu_2219_p64 = biases2_31_i;
assign tmp_8_fu_2219_p66 = biases2_32_i;
assign tmp_8_fu_2219_p68 = biases2_33_i;
assign tmp_8_fu_2219_p70 = biases2_34_i;
assign tmp_8_fu_2219_p72 = biases2_35_i;
assign tmp_8_fu_2219_p74 = biases2_36_i;
assign tmp_8_fu_2219_p76 = biases2_37_i;
assign tmp_8_fu_2219_p78 = biases2_38_i;
assign tmp_8_fu_2219_p8 = biases2_3_i;
assign tmp_8_fu_2219_p80 = biases2_39_i;
assign tmp_8_fu_2219_p82 = biases2_40_i;
assign tmp_8_fu_2219_p84 = biases2_41_i;
assign tmp_8_fu_2219_p86 = biases2_42_i;
assign tmp_8_fu_2219_p88 = biases2_43_i;
assign tmp_8_fu_2219_p90 = biases2_44_i;
assign tmp_8_fu_2219_p92 = biases2_45_i;
assign tmp_8_fu_2219_p94 = biases2_46_i;
assign tmp_8_fu_2219_p96 = biases2_47_i;
assign tmp_8_fu_2219_p98 = biases2_48_i;
assign trunc_ln158_fu_1691_p1 = ap_sig_allocacmp_i_2[5:0];
endmodule 