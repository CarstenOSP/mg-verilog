
module backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,d_weights1_32_address0,d_weights1_32_ce0,d_weights1_32_q0,d_weights1_33_address0,d_weights1_33_ce0,d_weights1_33_q0,d_weights1_34_address0,d_weights1_34_ce0,d_weights1_34_q0,d_weights1_35_address0,d_weights1_35_ce0,d_weights1_35_q0,d_weights1_36_address0,d_weights1_36_ce0,d_weights1_36_q0,d_weights1_37_address0,d_weights1_37_ce0,d_weights1_37_q0,d_weights1_38_address0,d_weights1_38_ce0,d_weights1_38_q0,d_weights1_39_address0,d_weights1_39_ce0,d_weights1_39_q0,d_weights1_40_address0,d_weights1_40_ce0,d_weights1_40_q0,d_weights1_41_address0,d_weights1_41_ce0,d_weights1_41_q0,d_weights1_42_address0,d_weights1_42_ce0,d_weights1_42_q0,d_weights1_43_address0,d_weights1_43_ce0,d_weights1_43_q0,d_weights1_44_address0,d_weights1_44_ce0,d_weights1_44_q0,d_weights1_45_address0,d_weights1_45_ce0,d_weights1_45_q0,d_weights1_46_address0,d_weights1_46_ce0,d_weights1_46_q0,d_weights1_47_address0,d_weights1_47_ce0,d_weights1_47_q0,d_weights1_48_address0,d_weights1_48_ce0,d_weights1_48_q0,d_weights1_49_address0,d_weights1_49_ce0,d_weights1_49_q0,d_weights1_50_address0,d_weights1_50_ce0,d_weights1_50_q0,d_weights1_51_address0,d_weights1_51_ce0,d_weights1_51_q0,d_weights1_52_address0,d_weights1_52_ce0,d_weights1_52_q0,d_weights1_53_address0,d_weights1_53_ce0,d_weights1_53_q0,d_weights1_54_address0,d_weights1_54_ce0,d_weights1_54_q0,d_weights1_55_address0,d_weights1_55_ce0,d_weights1_55_q0,d_weights1_56_address0,d_weights1_56_ce0,d_weights1_56_q0,d_weights1_57_address0,d_weights1_57_ce0,d_weights1_57_q0,d_weights1_58_address0,d_weights1_58_ce0,d_weights1_58_q0,d_weights1_59_address0,d_weights1_59_ce0,d_weights1_59_q0,d_weights1_60_address0,d_weights1_60_ce0,d_weights1_60_q0,d_weights1_61_address0,d_weights1_61_ce0,d_weights1_61_q0,d_weights1_62_address0,d_weights1_62_ce0,d_weights1_62_q0,d_weights1_63_address0,d_weights1_63_ce0,d_weights1_63_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_32_address0,weights1_32_ce0,weights1_32_we0,weights1_32_d0,weights1_32_q0,weights1_33_address0,weights1_33_ce0,weights1_33_we0,weights1_33_d0,weights1_33_q0,weights1_34_address0,weights1_34_ce0,weights1_34_we0,weights1_34_d0,weights1_34_q0,weights1_35_address0,weights1_35_ce0,weights1_35_we0,weights1_35_d0,weights1_35_q0,weights1_36_address0,weights1_36_ce0,weights1_36_we0,weights1_36_d0,weights1_36_q0,weights1_37_address0,weights1_37_ce0,weights1_37_we0,weights1_37_d0,weights1_37_q0,weights1_38_address0,weights1_38_ce0,weights1_38_we0,weights1_38_d0,weights1_38_q0,weights1_39_address0,weights1_39_ce0,weights1_39_we0,weights1_39_d0,weights1_39_q0,weights1_40_address0,weights1_40_ce0,weights1_40_we0,weights1_40_d0,weights1_40_q0,weights1_41_address0,weights1_41_ce0,weights1_41_we0,weights1_41_d0,weights1_41_q0,weights1_42_address0,weights1_42_ce0,weights1_42_we0,weights1_42_d0,weights1_42_q0,weights1_43_address0,weights1_43_ce0,weights1_43_we0,weights1_43_d0,weights1_43_q0,weights1_44_address0,weights1_44_ce0,weights1_44_we0,weights1_44_d0,weights1_44_q0,weights1_45_address0,weights1_45_ce0,weights1_45_we0,weights1_45_d0,weights1_45_q0,weights1_46_address0,weights1_46_ce0,weights1_46_we0,weights1_46_d0,weights1_46_q0,weights1_47_address0,weights1_47_ce0,weights1_47_we0,weights1_47_d0,weights1_47_q0,weights1_48_address0,weights1_48_ce0,weights1_48_we0,weights1_48_d0,weights1_48_q0,weights1_49_address0,weights1_49_ce0,weights1_49_we0,weights1_49_d0,weights1_49_q0,weights1_50_address0,weights1_50_ce0,weights1_50_we0,weights1_50_d0,weights1_50_q0,weights1_51_address0,weights1_51_ce0,weights1_51_we0,weights1_51_d0,weights1_51_q0,weights1_52_address0,weights1_52_ce0,weights1_52_we0,weights1_52_d0,weights1_52_q0,weights1_53_address0,weights1_53_ce0,weights1_53_we0,weights1_53_d0,weights1_53_q0,weights1_54_address0,weights1_54_ce0,weights1_54_we0,weights1_54_d0,weights1_54_q0,weights1_55_address0,weights1_55_ce0,weights1_55_we0,weights1_55_d0,weights1_55_q0,weights1_56_address0,weights1_56_ce0,weights1_56_we0,weights1_56_d0,weights1_56_q0,weights1_57_address0,weights1_57_ce0,weights1_57_we0,weights1_57_d0,weights1_57_q0,weights1_58_address0,weights1_58_ce0,weights1_58_we0,weights1_58_d0,weights1_58_q0,weights1_59_address0,weights1_59_ce0,weights1_59_we0,weights1_59_d0,weights1_59_q0,weights1_60_address0,weights1_60_ce0,weights1_60_we0,weights1_60_d0,weights1_60_q0,weights1_61_address0,weights1_61_ce0,weights1_61_we0,weights1_61_d0,weights1_61_q0,weights1_62_address0,weights1_62_ce0,weights1_62_we0,weights1_62_d0,weights1_62_q0,weights1_63_address0,weights1_63_ce0,weights1_63_we0,weights1_63_d0,weights1_63_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_4915_p_din0,grp_fu_4915_p_din1,grp_fu_4915_p_opcode,grp_fu_4915_p_dout0,grp_fu_4915_p_ce,grp_fu_4919_p_din0,grp_fu_4919_p_din1,grp_fu_4919_p_dout0,grp_fu_4919_p_ce);  
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
output  [3:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [3:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [3:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [3:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [3:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [3:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [3:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [3:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [3:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [3:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [3:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [3:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [3:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [3:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [3:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [3:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [3:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [3:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [3:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [3:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [3:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [3:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [3:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [3:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [3:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [3:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [3:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [3:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [3:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [3:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [3:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [3:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [3:0] d_weights1_32_address0;
output   d_weights1_32_ce0;
input  [63:0] d_weights1_32_q0;
output  [3:0] d_weights1_33_address0;
output   d_weights1_33_ce0;
input  [63:0] d_weights1_33_q0;
output  [3:0] d_weights1_34_address0;
output   d_weights1_34_ce0;
input  [63:0] d_weights1_34_q0;
output  [3:0] d_weights1_35_address0;
output   d_weights1_35_ce0;
input  [63:0] d_weights1_35_q0;
output  [3:0] d_weights1_36_address0;
output   d_weights1_36_ce0;
input  [63:0] d_weights1_36_q0;
output  [3:0] d_weights1_37_address0;
output   d_weights1_37_ce0;
input  [63:0] d_weights1_37_q0;
output  [3:0] d_weights1_38_address0;
output   d_weights1_38_ce0;
input  [63:0] d_weights1_38_q0;
output  [3:0] d_weights1_39_address0;
output   d_weights1_39_ce0;
input  [63:0] d_weights1_39_q0;
output  [3:0] d_weights1_40_address0;
output   d_weights1_40_ce0;
input  [63:0] d_weights1_40_q0;
output  [3:0] d_weights1_41_address0;
output   d_weights1_41_ce0;
input  [63:0] d_weights1_41_q0;
output  [3:0] d_weights1_42_address0;
output   d_weights1_42_ce0;
input  [63:0] d_weights1_42_q0;
output  [3:0] d_weights1_43_address0;
output   d_weights1_43_ce0;
input  [63:0] d_weights1_43_q0;
output  [3:0] d_weights1_44_address0;
output   d_weights1_44_ce0;
input  [63:0] d_weights1_44_q0;
output  [3:0] d_weights1_45_address0;
output   d_weights1_45_ce0;
input  [63:0] d_weights1_45_q0;
output  [3:0] d_weights1_46_address0;
output   d_weights1_46_ce0;
input  [63:0] d_weights1_46_q0;
output  [3:0] d_weights1_47_address0;
output   d_weights1_47_ce0;
input  [63:0] d_weights1_47_q0;
output  [3:0] d_weights1_48_address0;
output   d_weights1_48_ce0;
input  [63:0] d_weights1_48_q0;
output  [3:0] d_weights1_49_address0;
output   d_weights1_49_ce0;
input  [63:0] d_weights1_49_q0;
output  [3:0] d_weights1_50_address0;
output   d_weights1_50_ce0;
input  [63:0] d_weights1_50_q0;
output  [3:0] d_weights1_51_address0;
output   d_weights1_51_ce0;
input  [63:0] d_weights1_51_q0;
output  [3:0] d_weights1_52_address0;
output   d_weights1_52_ce0;
input  [63:0] d_weights1_52_q0;
output  [3:0] d_weights1_53_address0;
output   d_weights1_53_ce0;
input  [63:0] d_weights1_53_q0;
output  [3:0] d_weights1_54_address0;
output   d_weights1_54_ce0;
input  [63:0] d_weights1_54_q0;
output  [3:0] d_weights1_55_address0;
output   d_weights1_55_ce0;
input  [63:0] d_weights1_55_q0;
output  [3:0] d_weights1_56_address0;
output   d_weights1_56_ce0;
input  [63:0] d_weights1_56_q0;
output  [3:0] d_weights1_57_address0;
output   d_weights1_57_ce0;
input  [63:0] d_weights1_57_q0;
output  [3:0] d_weights1_58_address0;
output   d_weights1_58_ce0;
input  [63:0] d_weights1_58_q0;
output  [3:0] d_weights1_59_address0;
output   d_weights1_59_ce0;
input  [63:0] d_weights1_59_q0;
output  [3:0] d_weights1_60_address0;
output   d_weights1_60_ce0;
input  [63:0] d_weights1_60_q0;
output  [3:0] d_weights1_61_address0;
output   d_weights1_61_ce0;
input  [63:0] d_weights1_61_q0;
output  [3:0] d_weights1_62_address0;
output   d_weights1_62_ce0;
input  [63:0] d_weights1_62_q0;
output  [3:0] d_weights1_63_address0;
output   d_weights1_63_ce0;
input  [63:0] d_weights1_63_q0;
output  [3:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [3:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [3:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [3:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [3:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [3:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [3:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [3:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [3:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [3:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [3:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [3:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [3:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [3:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [3:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [3:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [3:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [3:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [3:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [3:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [3:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [3:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [3:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [3:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [3:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [3:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [3:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [3:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [3:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [3:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [3:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [3:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [3:0] weights1_32_address0;
output   weights1_32_ce0;
output   weights1_32_we0;
output  [63:0] weights1_32_d0;
input  [63:0] weights1_32_q0;
output  [3:0] weights1_33_address0;
output   weights1_33_ce0;
output   weights1_33_we0;
output  [63:0] weights1_33_d0;
input  [63:0] weights1_33_q0;
output  [3:0] weights1_34_address0;
output   weights1_34_ce0;
output   weights1_34_we0;
output  [63:0] weights1_34_d0;
input  [63:0] weights1_34_q0;
output  [3:0] weights1_35_address0;
output   weights1_35_ce0;
output   weights1_35_we0;
output  [63:0] weights1_35_d0;
input  [63:0] weights1_35_q0;
output  [3:0] weights1_36_address0;
output   weights1_36_ce0;
output   weights1_36_we0;
output  [63:0] weights1_36_d0;
input  [63:0] weights1_36_q0;
output  [3:0] weights1_37_address0;
output   weights1_37_ce0;
output   weights1_37_we0;
output  [63:0] weights1_37_d0;
input  [63:0] weights1_37_q0;
output  [3:0] weights1_38_address0;
output   weights1_38_ce0;
output   weights1_38_we0;
output  [63:0] weights1_38_d0;
input  [63:0] weights1_38_q0;
output  [3:0] weights1_39_address0;
output   weights1_39_ce0;
output   weights1_39_we0;
output  [63:0] weights1_39_d0;
input  [63:0] weights1_39_q0;
output  [3:0] weights1_40_address0;
output   weights1_40_ce0;
output   weights1_40_we0;
output  [63:0] weights1_40_d0;
input  [63:0] weights1_40_q0;
output  [3:0] weights1_41_address0;
output   weights1_41_ce0;
output   weights1_41_we0;
output  [63:0] weights1_41_d0;
input  [63:0] weights1_41_q0;
output  [3:0] weights1_42_address0;
output   weights1_42_ce0;
output   weights1_42_we0;
output  [63:0] weights1_42_d0;
input  [63:0] weights1_42_q0;
output  [3:0] weights1_43_address0;
output   weights1_43_ce0;
output   weights1_43_we0;
output  [63:0] weights1_43_d0;
input  [63:0] weights1_43_q0;
output  [3:0] weights1_44_address0;
output   weights1_44_ce0;
output   weights1_44_we0;
output  [63:0] weights1_44_d0;
input  [63:0] weights1_44_q0;
output  [3:0] weights1_45_address0;
output   weights1_45_ce0;
output   weights1_45_we0;
output  [63:0] weights1_45_d0;
input  [63:0] weights1_45_q0;
output  [3:0] weights1_46_address0;
output   weights1_46_ce0;
output   weights1_46_we0;
output  [63:0] weights1_46_d0;
input  [63:0] weights1_46_q0;
output  [3:0] weights1_47_address0;
output   weights1_47_ce0;
output   weights1_47_we0;
output  [63:0] weights1_47_d0;
input  [63:0] weights1_47_q0;
output  [3:0] weights1_48_address0;
output   weights1_48_ce0;
output   weights1_48_we0;
output  [63:0] weights1_48_d0;
input  [63:0] weights1_48_q0;
output  [3:0] weights1_49_address0;
output   weights1_49_ce0;
output   weights1_49_we0;
output  [63:0] weights1_49_d0;
input  [63:0] weights1_49_q0;
output  [3:0] weights1_50_address0;
output   weights1_50_ce0;
output   weights1_50_we0;
output  [63:0] weights1_50_d0;
input  [63:0] weights1_50_q0;
output  [3:0] weights1_51_address0;
output   weights1_51_ce0;
output   weights1_51_we0;
output  [63:0] weights1_51_d0;
input  [63:0] weights1_51_q0;
output  [3:0] weights1_52_address0;
output   weights1_52_ce0;
output   weights1_52_we0;
output  [63:0] weights1_52_d0;
input  [63:0] weights1_52_q0;
output  [3:0] weights1_53_address0;
output   weights1_53_ce0;
output   weights1_53_we0;
output  [63:0] weights1_53_d0;
input  [63:0] weights1_53_q0;
output  [3:0] weights1_54_address0;
output   weights1_54_ce0;
output   weights1_54_we0;
output  [63:0] weights1_54_d0;
input  [63:0] weights1_54_q0;
output  [3:0] weights1_55_address0;
output   weights1_55_ce0;
output   weights1_55_we0;
output  [63:0] weights1_55_d0;
input  [63:0] weights1_55_q0;
output  [3:0] weights1_56_address0;
output   weights1_56_ce0;
output   weights1_56_we0;
output  [63:0] weights1_56_d0;
input  [63:0] weights1_56_q0;
output  [3:0] weights1_57_address0;
output   weights1_57_ce0;
output   weights1_57_we0;
output  [63:0] weights1_57_d0;
input  [63:0] weights1_57_q0;
output  [3:0] weights1_58_address0;
output   weights1_58_ce0;
output   weights1_58_we0;
output  [63:0] weights1_58_d0;
input  [63:0] weights1_58_q0;
output  [3:0] weights1_59_address0;
output   weights1_59_ce0;
output   weights1_59_we0;
output  [63:0] weights1_59_d0;
input  [63:0] weights1_59_q0;
output  [3:0] weights1_60_address0;
output   weights1_60_ce0;
output   weights1_60_we0;
output  [63:0] weights1_60_d0;
input  [63:0] weights1_60_q0;
output  [3:0] weights1_61_address0;
output   weights1_61_ce0;
output   weights1_61_we0;
output  [63:0] weights1_61_d0;
input  [63:0] weights1_61_q0;
output  [3:0] weights1_62_address0;
output   weights1_62_ce0;
output   weights1_62_we0;
output  [63:0] weights1_62_d0;
input  [63:0] weights1_62_q0;
output  [3:0] weights1_63_address0;
output   weights1_63_ce0;
output   weights1_63_we0;
output  [63:0] weights1_63_d0;
input  [63:0] weights1_63_q0;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_4915_p_din0;
output  [63:0] grp_fu_4915_p_din1;
output  [1:0] grp_fu_4915_p_opcode;
input  [63:0] grp_fu_4915_p_dout0;
output   grp_fu_4915_p_ce;
output  [63:0] grp_fu_4919_p_din0;
output  [63:0] grp_fu_4919_p_din1;
input  [63:0] grp_fu_4919_p_dout0;
output   grp_fu_4919_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
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
reg   [0:0] icmp_ln126_reg_3182;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_2155_p2;
reg   [0:0] icmp_ln126_reg_3182_pp0_iter1_reg;
reg   [0:0] icmp_ln126_reg_3182_pp0_iter2_reg;
reg   [0:0] icmp_ln126_reg_3182_pp0_iter3_reg;
wire   [9:0] add_ln126_fu_2161_p2;
reg   [9:0] add_ln126_reg_3186;
wire   [6:0] select_ln121_fu_2179_p3;
reg   [6:0] select_ln121_reg_3191;
wire   [3:0] select_ln126_fu_2193_p3;
reg   [3:0] select_ln126_reg_3196;
wire   [63:0] zext_ln126_fu_2201_p1;
reg   [63:0] zext_ln126_reg_3201;
wire   [5:0] trunc_ln127_fu_2269_p1;
reg   [5:0] trunc_ln127_reg_3589;
reg   [5:0] trunc_ln127_reg_3589_pp0_iter1_reg;
reg   [5:0] trunc_ln127_reg_3589_pp0_iter2_reg;
wire   [63:0] tmp_2_fu_2273_p131;
reg   [63:0] tmp_2_reg_3595;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [3:0] weights1_0_addr_reg_3600;
reg   [3:0] weights1_0_addr_reg_3600_pp0_iter2_reg;
reg   [3:0] weights1_1_addr_reg_3605;
reg   [3:0] weights1_1_addr_reg_3605_pp0_iter2_reg;
reg   [3:0] weights1_2_addr_reg_3610;
reg   [3:0] weights1_2_addr_reg_3610_pp0_iter2_reg;
reg   [3:0] weights1_3_addr_reg_3615;
reg   [3:0] weights1_3_addr_reg_3615_pp0_iter2_reg;
reg   [3:0] weights1_4_addr_reg_3620;
reg   [3:0] weights1_4_addr_reg_3620_pp0_iter2_reg;
reg   [3:0] weights1_5_addr_reg_3625;
reg   [3:0] weights1_5_addr_reg_3625_pp0_iter2_reg;
reg   [3:0] weights1_6_addr_reg_3630;
reg   [3:0] weights1_6_addr_reg_3630_pp0_iter2_reg;
reg   [3:0] weights1_7_addr_reg_3635;
reg   [3:0] weights1_7_addr_reg_3635_pp0_iter2_reg;
reg   [3:0] weights1_8_addr_reg_3640;
reg   [3:0] weights1_8_addr_reg_3640_pp0_iter2_reg;
reg   [3:0] weights1_9_addr_reg_3645;
reg   [3:0] weights1_9_addr_reg_3645_pp0_iter2_reg;
reg   [3:0] weights1_10_addr_reg_3650;
reg   [3:0] weights1_10_addr_reg_3650_pp0_iter2_reg;
reg   [3:0] weights1_11_addr_reg_3655;
reg   [3:0] weights1_11_addr_reg_3655_pp0_iter2_reg;
reg   [3:0] weights1_12_addr_reg_3660;
reg   [3:0] weights1_12_addr_reg_3660_pp0_iter2_reg;
reg   [3:0] weights1_13_addr_reg_3665;
reg   [3:0] weights1_13_addr_reg_3665_pp0_iter2_reg;
reg   [3:0] weights1_14_addr_reg_3670;
reg   [3:0] weights1_14_addr_reg_3670_pp0_iter2_reg;
reg   [3:0] weights1_15_addr_reg_3675;
reg   [3:0] weights1_15_addr_reg_3675_pp0_iter2_reg;
reg   [3:0] weights1_16_addr_reg_3680;
reg   [3:0] weights1_16_addr_reg_3680_pp0_iter2_reg;
reg   [3:0] weights1_17_addr_reg_3685;
reg   [3:0] weights1_17_addr_reg_3685_pp0_iter2_reg;
reg   [3:0] weights1_18_addr_reg_3690;
reg   [3:0] weights1_18_addr_reg_3690_pp0_iter2_reg;
reg   [3:0] weights1_19_addr_reg_3695;
reg   [3:0] weights1_19_addr_reg_3695_pp0_iter2_reg;
reg   [3:0] weights1_20_addr_reg_3700;
reg   [3:0] weights1_20_addr_reg_3700_pp0_iter2_reg;
reg   [3:0] weights1_21_addr_reg_3705;
reg   [3:0] weights1_21_addr_reg_3705_pp0_iter2_reg;
reg   [3:0] weights1_22_addr_reg_3710;
reg   [3:0] weights1_22_addr_reg_3710_pp0_iter2_reg;
reg   [3:0] weights1_23_addr_reg_3715;
reg   [3:0] weights1_23_addr_reg_3715_pp0_iter2_reg;
reg   [3:0] weights1_24_addr_reg_3720;
reg   [3:0] weights1_24_addr_reg_3720_pp0_iter2_reg;
reg   [3:0] weights1_25_addr_reg_3725;
reg   [3:0] weights1_25_addr_reg_3725_pp0_iter2_reg;
reg   [3:0] weights1_26_addr_reg_3730;
reg   [3:0] weights1_26_addr_reg_3730_pp0_iter2_reg;
reg   [3:0] weights1_27_addr_reg_3735;
reg   [3:0] weights1_27_addr_reg_3735_pp0_iter2_reg;
reg   [3:0] weights1_28_addr_reg_3740;
reg   [3:0] weights1_28_addr_reg_3740_pp0_iter2_reg;
reg   [3:0] weights1_29_addr_reg_3745;
reg   [3:0] weights1_29_addr_reg_3745_pp0_iter2_reg;
reg   [3:0] weights1_30_addr_reg_3750;
reg   [3:0] weights1_30_addr_reg_3750_pp0_iter2_reg;
reg   [3:0] weights1_31_addr_reg_3755;
reg   [3:0] weights1_31_addr_reg_3755_pp0_iter2_reg;
reg   [3:0] weights1_32_addr_reg_3760;
reg   [3:0] weights1_32_addr_reg_3760_pp0_iter2_reg;
reg   [3:0] weights1_33_addr_reg_3765;
reg   [3:0] weights1_33_addr_reg_3765_pp0_iter2_reg;
reg   [3:0] weights1_34_addr_reg_3770;
reg   [3:0] weights1_34_addr_reg_3770_pp0_iter2_reg;
reg   [3:0] weights1_35_addr_reg_3775;
reg   [3:0] weights1_35_addr_reg_3775_pp0_iter2_reg;
reg   [3:0] weights1_36_addr_reg_3780;
reg   [3:0] weights1_36_addr_reg_3780_pp0_iter2_reg;
reg   [3:0] weights1_37_addr_reg_3785;
reg   [3:0] weights1_37_addr_reg_3785_pp0_iter2_reg;
reg   [3:0] weights1_38_addr_reg_3790;
reg   [3:0] weights1_38_addr_reg_3790_pp0_iter2_reg;
reg   [3:0] weights1_39_addr_reg_3795;
reg   [3:0] weights1_39_addr_reg_3795_pp0_iter2_reg;
reg   [3:0] weights1_40_addr_reg_3800;
reg   [3:0] weights1_40_addr_reg_3800_pp0_iter2_reg;
reg   [3:0] weights1_41_addr_reg_3805;
reg   [3:0] weights1_41_addr_reg_3805_pp0_iter2_reg;
reg   [3:0] weights1_42_addr_reg_3810;
reg   [3:0] weights1_42_addr_reg_3810_pp0_iter2_reg;
reg   [3:0] weights1_43_addr_reg_3815;
reg   [3:0] weights1_43_addr_reg_3815_pp0_iter2_reg;
reg   [3:0] weights1_44_addr_reg_3820;
reg   [3:0] weights1_44_addr_reg_3820_pp0_iter2_reg;
reg   [3:0] weights1_45_addr_reg_3825;
reg   [3:0] weights1_45_addr_reg_3825_pp0_iter2_reg;
reg   [3:0] weights1_46_addr_reg_3830;
reg   [3:0] weights1_46_addr_reg_3830_pp0_iter2_reg;
reg   [3:0] weights1_47_addr_reg_3835;
reg   [3:0] weights1_47_addr_reg_3835_pp0_iter2_reg;
reg   [3:0] weights1_48_addr_reg_3840;
reg   [3:0] weights1_48_addr_reg_3840_pp0_iter2_reg;
reg   [3:0] weights1_49_addr_reg_3845;
reg   [3:0] weights1_49_addr_reg_3845_pp0_iter2_reg;
reg   [3:0] weights1_50_addr_reg_3850;
reg   [3:0] weights1_50_addr_reg_3850_pp0_iter2_reg;
reg   [3:0] weights1_51_addr_reg_3855;
reg   [3:0] weights1_51_addr_reg_3855_pp0_iter2_reg;
reg   [3:0] weights1_52_addr_reg_3860;
reg   [3:0] weights1_52_addr_reg_3860_pp0_iter2_reg;
reg   [3:0] weights1_53_addr_reg_3865;
reg   [3:0] weights1_53_addr_reg_3865_pp0_iter2_reg;
reg   [3:0] weights1_54_addr_reg_3870;
reg   [3:0] weights1_54_addr_reg_3870_pp0_iter2_reg;
reg   [3:0] weights1_55_addr_reg_3875;
reg   [3:0] weights1_55_addr_reg_3875_pp0_iter2_reg;
reg   [3:0] weights1_56_addr_reg_3880;
reg   [3:0] weights1_56_addr_reg_3880_pp0_iter2_reg;
reg   [3:0] weights1_57_addr_reg_3885;
reg   [3:0] weights1_57_addr_reg_3885_pp0_iter2_reg;
reg   [3:0] weights1_58_addr_reg_3890;
reg   [3:0] weights1_58_addr_reg_3890_pp0_iter2_reg;
reg   [3:0] weights1_59_addr_reg_3895;
reg   [3:0] weights1_59_addr_reg_3895_pp0_iter2_reg;
reg   [3:0] weights1_60_addr_reg_3900;
reg   [3:0] weights1_60_addr_reg_3900_pp0_iter2_reg;
reg   [3:0] weights1_61_addr_reg_3905;
reg   [3:0] weights1_61_addr_reg_3905_pp0_iter2_reg;
reg   [3:0] weights1_62_addr_reg_3910;
reg   [3:0] weights1_62_addr_reg_3910_pp0_iter2_reg;
reg   [3:0] weights1_63_addr_reg_3915;
reg   [3:0] weights1_63_addr_reg_3915_pp0_iter2_reg;
reg   [63:0] mul4_reg_3920;
wire   [63:0] tmp_3_fu_2810_p131;
reg   [63:0] tmp_3_reg_3925;
reg   [63:0] sub_reg_3930;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] mul2_reg_3937;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage0;
reg   [63:0] norm_2_fu_436;
reg   [63:0] ap_sig_allocacmp_norm_2_load;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_440;
wire   [6:0] add_ln127_fu_2536_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_444;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten_fu_448;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage3_01001;
reg    d_weights1_0_ce0_local;
reg    d_weights1_1_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_30_ce0_local;
reg    d_weights1_31_ce0_local;
reg    d_weights1_32_ce0_local;
reg    d_weights1_33_ce0_local;
reg    d_weights1_34_ce0_local;
reg    d_weights1_35_ce0_local;
reg    d_weights1_36_ce0_local;
reg    d_weights1_37_ce0_local;
reg    d_weights1_38_ce0_local;
reg    d_weights1_39_ce0_local;
reg    d_weights1_40_ce0_local;
reg    d_weights1_41_ce0_local;
reg    d_weights1_42_ce0_local;
reg    d_weights1_43_ce0_local;
reg    d_weights1_44_ce0_local;
reg    d_weights1_45_ce0_local;
reg    d_weights1_46_ce0_local;
reg    d_weights1_47_ce0_local;
reg    d_weights1_48_ce0_local;
reg    d_weights1_49_ce0_local;
reg    d_weights1_50_ce0_local;
reg    d_weights1_51_ce0_local;
reg    d_weights1_52_ce0_local;
reg    d_weights1_53_ce0_local;
reg    d_weights1_54_ce0_local;
reg    d_weights1_55_ce0_local;
reg    d_weights1_56_ce0_local;
reg    d_weights1_57_ce0_local;
reg    d_weights1_58_ce0_local;
reg    d_weights1_59_ce0_local;
reg    d_weights1_60_ce0_local;
reg    d_weights1_61_ce0_local;
reg    d_weights1_62_ce0_local;
reg    d_weights1_63_ce0_local;
reg    weights1_0_ce0_local;
reg   [3:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred1708_state18;
wire   [63:0] bitcast_ln128_64_fu_3073_p1;
reg    weights1_1_ce0_local;
reg   [3:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg    ap_predicate_pred1721_state18;
reg    weights1_2_ce0_local;
reg   [3:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred1731_state18;
reg    weights1_3_ce0_local;
reg   [3:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    ap_predicate_pred1741_state18;
reg    weights1_4_ce0_local;
reg   [3:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred1751_state18;
reg    weights1_5_ce0_local;
reg   [3:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred1761_state18;
reg    weights1_6_ce0_local;
reg   [3:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred1771_state18;
reg    weights1_7_ce0_local;
reg   [3:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred1781_state18;
reg    weights1_8_ce0_local;
reg   [3:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred1791_state18;
reg    weights1_9_ce0_local;
reg   [3:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred1801_state18;
reg    weights1_10_ce0_local;
reg   [3:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1811_state18;
reg    weights1_11_ce0_local;
reg   [3:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred1821_state18;
reg    weights1_12_ce0_local;
reg   [3:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1831_state18;
reg    weights1_13_ce0_local;
reg   [3:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred1841_state18;
reg    weights1_14_ce0_local;
reg   [3:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1851_state18;
reg    weights1_15_ce0_local;
reg   [3:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred1861_state18;
reg    weights1_16_ce0_local;
reg   [3:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1871_state18;
reg    weights1_17_ce0_local;
reg   [3:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred1881_state18;
reg    weights1_18_ce0_local;
reg   [3:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1891_state18;
reg    weights1_19_ce0_local;
reg   [3:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred1901_state18;
reg    weights1_20_ce0_local;
reg   [3:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1911_state18;
reg    weights1_21_ce0_local;
reg   [3:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred1921_state18;
reg    weights1_22_ce0_local;
reg   [3:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1931_state18;
reg    weights1_23_ce0_local;
reg   [3:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred1941_state18;
reg    weights1_24_ce0_local;
reg   [3:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1951_state18;
reg    weights1_25_ce0_local;
reg   [3:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred1961_state18;
reg    weights1_26_ce0_local;
reg   [3:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1971_state18;
reg    weights1_27_ce0_local;
reg   [3:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred1981_state18;
reg    weights1_28_ce0_local;
reg   [3:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1991_state18;
reg    weights1_29_ce0_local;
reg   [3:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred2001_state18;
reg    weights1_30_ce0_local;
reg   [3:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred2011_state18;
reg    weights1_31_ce0_local;
reg   [3:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred2021_state18;
reg    weights1_32_ce0_local;
reg   [3:0] weights1_32_address0_local;
reg    weights1_32_we0_local;
reg    ap_predicate_pred2031_state18;
reg    weights1_33_ce0_local;
reg   [3:0] weights1_33_address0_local;
reg    weights1_33_we0_local;
reg    ap_predicate_pred2041_state18;
reg    weights1_34_ce0_local;
reg   [3:0] weights1_34_address0_local;
reg    weights1_34_we0_local;
reg    ap_predicate_pred2051_state18;
reg    weights1_35_ce0_local;
reg   [3:0] weights1_35_address0_local;
reg    weights1_35_we0_local;
reg    ap_predicate_pred2061_state18;
reg    weights1_36_ce0_local;
reg   [3:0] weights1_36_address0_local;
reg    weights1_36_we0_local;
reg    ap_predicate_pred2071_state18;
reg    weights1_37_ce0_local;
reg   [3:0] weights1_37_address0_local;
reg    weights1_37_we0_local;
reg    ap_predicate_pred2081_state18;
reg    weights1_38_ce0_local;
reg   [3:0] weights1_38_address0_local;
reg    weights1_38_we0_local;
reg    ap_predicate_pred2091_state18;
reg    weights1_39_ce0_local;
reg   [3:0] weights1_39_address0_local;
reg    weights1_39_we0_local;
reg    ap_predicate_pred2101_state18;
reg    weights1_40_ce0_local;
reg   [3:0] weights1_40_address0_local;
reg    weights1_40_we0_local;
reg    ap_predicate_pred2111_state18;
reg    weights1_41_ce0_local;
reg   [3:0] weights1_41_address0_local;
reg    weights1_41_we0_local;
reg    ap_predicate_pred2121_state18;
reg    weights1_42_ce0_local;
reg   [3:0] weights1_42_address0_local;
reg    weights1_42_we0_local;
reg    ap_predicate_pred2131_state18;
reg    weights1_43_ce0_local;
reg   [3:0] weights1_43_address0_local;
reg    weights1_43_we0_local;
reg    ap_predicate_pred2141_state18;
reg    weights1_44_ce0_local;
reg   [3:0] weights1_44_address0_local;
reg    weights1_44_we0_local;
reg    ap_predicate_pred2151_state18;
reg    weights1_45_ce0_local;
reg   [3:0] weights1_45_address0_local;
reg    weights1_45_we0_local;
reg    ap_predicate_pred2161_state18;
reg    weights1_46_ce0_local;
reg   [3:0] weights1_46_address0_local;
reg    weights1_46_we0_local;
reg    ap_predicate_pred2171_state18;
reg    weights1_47_ce0_local;
reg   [3:0] weights1_47_address0_local;
reg    weights1_47_we0_local;
reg    ap_predicate_pred2181_state18;
reg    weights1_48_ce0_local;
reg   [3:0] weights1_48_address0_local;
reg    weights1_48_we0_local;
reg    ap_predicate_pred2191_state18;
reg    weights1_49_ce0_local;
reg   [3:0] weights1_49_address0_local;
reg    weights1_49_we0_local;
reg    ap_predicate_pred2201_state18;
reg    weights1_50_ce0_local;
reg   [3:0] weights1_50_address0_local;
reg    weights1_50_we0_local;
reg    ap_predicate_pred2211_state18;
reg    weights1_51_ce0_local;
reg   [3:0] weights1_51_address0_local;
reg    weights1_51_we0_local;
reg    ap_predicate_pred2221_state18;
reg    weights1_52_ce0_local;
reg   [3:0] weights1_52_address0_local;
reg    weights1_52_we0_local;
reg    ap_predicate_pred2231_state18;
reg    weights1_53_ce0_local;
reg   [3:0] weights1_53_address0_local;
reg    weights1_53_we0_local;
reg    ap_predicate_pred2241_state18;
reg    weights1_54_ce0_local;
reg   [3:0] weights1_54_address0_local;
reg    weights1_54_we0_local;
reg    ap_predicate_pred2251_state18;
reg    weights1_55_ce0_local;
reg   [3:0] weights1_55_address0_local;
reg    weights1_55_we0_local;
reg    ap_predicate_pred2261_state18;
reg    weights1_56_ce0_local;
reg   [3:0] weights1_56_address0_local;
reg    weights1_56_we0_local;
reg    ap_predicate_pred2271_state18;
reg    weights1_57_ce0_local;
reg   [3:0] weights1_57_address0_local;
reg    weights1_57_we0_local;
reg    ap_predicate_pred2281_state18;
reg    weights1_58_ce0_local;
reg   [3:0] weights1_58_address0_local;
reg    weights1_58_we0_local;
reg    ap_predicate_pred2291_state18;
reg    weights1_59_ce0_local;
reg   [3:0] weights1_59_address0_local;
reg    weights1_59_we0_local;
reg    ap_predicate_pred2301_state18;
reg    weights1_60_ce0_local;
reg   [3:0] weights1_60_address0_local;
reg    weights1_60_we0_local;
reg    ap_predicate_pred2311_state18;
reg    weights1_61_ce0_local;
reg   [3:0] weights1_61_address0_local;
reg    weights1_61_we0_local;
reg    ap_predicate_pred2321_state18;
reg    weights1_62_ce0_local;
reg   [3:0] weights1_62_address0_local;
reg    weights1_62_we0_local;
reg    ap_predicate_pred2331_state18;
reg    weights1_63_ce0_local;
reg   [3:0] weights1_63_address0_local;
reg    weights1_63_we0_local;
reg    ap_predicate_pred2341_state18;
reg   [63:0] grp_fu_2123_p0;
reg   [63:0] grp_fu_2123_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_2127_p0;
reg   [63:0] grp_fu_2127_p1;
wire   [0:0] icmp_ln127_fu_2173_p2;
wire   [3:0] add_ln126_1_fu_2187_p2;
wire   [63:0] tmp_2_fu_2273_p129;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_3_fu_2810_p2;
wire   [63:0] tmp_3_fu_2810_p4;
wire   [63:0] tmp_3_fu_2810_p6;
wire   [63:0] tmp_3_fu_2810_p8;
wire   [63:0] tmp_3_fu_2810_p10;
wire   [63:0] tmp_3_fu_2810_p12;
wire   [63:0] tmp_3_fu_2810_p14;
wire   [63:0] tmp_3_fu_2810_p16;
wire   [63:0] tmp_3_fu_2810_p18;
wire   [63:0] tmp_3_fu_2810_p20;
wire   [63:0] tmp_3_fu_2810_p22;
wire   [63:0] tmp_3_fu_2810_p24;
wire   [63:0] tmp_3_fu_2810_p26;
wire   [63:0] tmp_3_fu_2810_p28;
wire   [63:0] tmp_3_fu_2810_p30;
wire   [63:0] tmp_3_fu_2810_p32;
wire   [63:0] tmp_3_fu_2810_p34;
wire   [63:0] tmp_3_fu_2810_p36;
wire   [63:0] tmp_3_fu_2810_p38;
wire   [63:0] tmp_3_fu_2810_p40;
wire   [63:0] tmp_3_fu_2810_p42;
wire   [63:0] tmp_3_fu_2810_p44;
wire   [63:0] tmp_3_fu_2810_p46;
wire   [63:0] tmp_3_fu_2810_p48;
wire   [63:0] tmp_3_fu_2810_p50;
wire   [63:0] tmp_3_fu_2810_p52;
wire   [63:0] tmp_3_fu_2810_p54;
wire   [63:0] tmp_3_fu_2810_p56;
wire   [63:0] tmp_3_fu_2810_p58;
wire   [63:0] tmp_3_fu_2810_p60;
wire   [63:0] tmp_3_fu_2810_p62;
wire   [63:0] tmp_3_fu_2810_p64;
wire   [63:0] tmp_3_fu_2810_p66;
wire   [63:0] tmp_3_fu_2810_p68;
wire   [63:0] tmp_3_fu_2810_p70;
wire   [63:0] tmp_3_fu_2810_p72;
wire   [63:0] tmp_3_fu_2810_p74;
wire   [63:0] tmp_3_fu_2810_p76;
wire   [63:0] tmp_3_fu_2810_p78;
wire   [63:0] tmp_3_fu_2810_p80;
wire   [63:0] tmp_3_fu_2810_p82;
wire   [63:0] tmp_3_fu_2810_p84;
wire   [63:0] tmp_3_fu_2810_p86;
wire   [63:0] tmp_3_fu_2810_p88;
wire   [63:0] tmp_3_fu_2810_p90;
wire   [63:0] tmp_3_fu_2810_p92;
wire   [63:0] tmp_3_fu_2810_p94;
wire   [63:0] tmp_3_fu_2810_p96;
wire   [63:0] tmp_3_fu_2810_p98;
wire   [63:0] tmp_3_fu_2810_p100;
wire   [63:0] tmp_3_fu_2810_p102;
wire   [63:0] tmp_3_fu_2810_p104;
wire   [63:0] tmp_3_fu_2810_p106;
wire   [63:0] tmp_3_fu_2810_p108;
wire   [63:0] tmp_3_fu_2810_p110;
wire   [63:0] tmp_3_fu_2810_p112;
wire   [63:0] tmp_3_fu_2810_p114;
wire   [63:0] tmp_3_fu_2810_p116;
wire   [63:0] tmp_3_fu_2810_p118;
wire   [63:0] tmp_3_fu_2810_p120;
wire   [63:0] tmp_3_fu_2810_p122;
wire   [63:0] tmp_3_fu_2810_p124;
wire   [63:0] tmp_3_fu_2810_p126;
wire   [63:0] tmp_3_fu_2810_p128;
wire   [63:0] tmp_3_fu_2810_p129;
reg   [1:0] grp_fu_2123_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_2_fu_2273_p1;
wire   [5:0] tmp_2_fu_2273_p3;
wire   [5:0] tmp_2_fu_2273_p5;
wire   [5:0] tmp_2_fu_2273_p7;
wire   [5:0] tmp_2_fu_2273_p9;
wire   [5:0] tmp_2_fu_2273_p11;
wire   [5:0] tmp_2_fu_2273_p13;
wire   [5:0] tmp_2_fu_2273_p15;
wire   [5:0] tmp_2_fu_2273_p17;
wire   [5:0] tmp_2_fu_2273_p19;
wire   [5:0] tmp_2_fu_2273_p21;
wire   [5:0] tmp_2_fu_2273_p23;
wire   [5:0] tmp_2_fu_2273_p25;
wire   [5:0] tmp_2_fu_2273_p27;
wire   [5:0] tmp_2_fu_2273_p29;
wire   [5:0] tmp_2_fu_2273_p31;
wire   [5:0] tmp_2_fu_2273_p33;
wire   [5:0] tmp_2_fu_2273_p35;
wire   [5:0] tmp_2_fu_2273_p37;
wire   [5:0] tmp_2_fu_2273_p39;
wire   [5:0] tmp_2_fu_2273_p41;
wire   [5:0] tmp_2_fu_2273_p43;
wire   [5:0] tmp_2_fu_2273_p45;
wire   [5:0] tmp_2_fu_2273_p47;
wire   [5:0] tmp_2_fu_2273_p49;
wire   [5:0] tmp_2_fu_2273_p51;
wire   [5:0] tmp_2_fu_2273_p53;
wire   [5:0] tmp_2_fu_2273_p55;
wire   [5:0] tmp_2_fu_2273_p57;
wire   [5:0] tmp_2_fu_2273_p59;
wire   [5:0] tmp_2_fu_2273_p61;
wire   [5:0] tmp_2_fu_2273_p63;
wire  signed [5:0] tmp_2_fu_2273_p65;
wire  signed [5:0] tmp_2_fu_2273_p67;
wire  signed [5:0] tmp_2_fu_2273_p69;
wire  signed [5:0] tmp_2_fu_2273_p71;
wire  signed [5:0] tmp_2_fu_2273_p73;
wire  signed [5:0] tmp_2_fu_2273_p75;
wire  signed [5:0] tmp_2_fu_2273_p77;
wire  signed [5:0] tmp_2_fu_2273_p79;
wire  signed [5:0] tmp_2_fu_2273_p81;
wire  signed [5:0] tmp_2_fu_2273_p83;
wire  signed [5:0] tmp_2_fu_2273_p85;
wire  signed [5:0] tmp_2_fu_2273_p87;
wire  signed [5:0] tmp_2_fu_2273_p89;
wire  signed [5:0] tmp_2_fu_2273_p91;
wire  signed [5:0] tmp_2_fu_2273_p93;
wire  signed [5:0] tmp_2_fu_2273_p95;
wire  signed [5:0] tmp_2_fu_2273_p97;
wire  signed [5:0] tmp_2_fu_2273_p99;
wire  signed [5:0] tmp_2_fu_2273_p101;
wire  signed [5:0] tmp_2_fu_2273_p103;
wire  signed [5:0] tmp_2_fu_2273_p105;
wire  signed [5:0] tmp_2_fu_2273_p107;
wire  signed [5:0] tmp_2_fu_2273_p109;
wire  signed [5:0] tmp_2_fu_2273_p111;
wire  signed [5:0] tmp_2_fu_2273_p113;
wire  signed [5:0] tmp_2_fu_2273_p115;
wire  signed [5:0] tmp_2_fu_2273_p117;
wire  signed [5:0] tmp_2_fu_2273_p119;
wire  signed [5:0] tmp_2_fu_2273_p121;
wire  signed [5:0] tmp_2_fu_2273_p123;
wire  signed [5:0] tmp_2_fu_2273_p125;
wire  signed [5:0] tmp_2_fu_2273_p127;
wire   [5:0] tmp_3_fu_2810_p1;
wire   [5:0] tmp_3_fu_2810_p3;
wire   [5:0] tmp_3_fu_2810_p5;
wire   [5:0] tmp_3_fu_2810_p7;
wire   [5:0] tmp_3_fu_2810_p9;
wire   [5:0] tmp_3_fu_2810_p11;
wire   [5:0] tmp_3_fu_2810_p13;
wire   [5:0] tmp_3_fu_2810_p15;
wire   [5:0] tmp_3_fu_2810_p17;
wire   [5:0] tmp_3_fu_2810_p19;
wire   [5:0] tmp_3_fu_2810_p21;
wire   [5:0] tmp_3_fu_2810_p23;
wire   [5:0] tmp_3_fu_2810_p25;
wire   [5:0] tmp_3_fu_2810_p27;
wire   [5:0] tmp_3_fu_2810_p29;
wire   [5:0] tmp_3_fu_2810_p31;
wire   [5:0] tmp_3_fu_2810_p33;
wire   [5:0] tmp_3_fu_2810_p35;
wire   [5:0] tmp_3_fu_2810_p37;
wire   [5:0] tmp_3_fu_2810_p39;
wire   [5:0] tmp_3_fu_2810_p41;
wire   [5:0] tmp_3_fu_2810_p43;
wire   [5:0] tmp_3_fu_2810_p45;
wire   [5:0] tmp_3_fu_2810_p47;
wire   [5:0] tmp_3_fu_2810_p49;
wire   [5:0] tmp_3_fu_2810_p51;
wire   [5:0] tmp_3_fu_2810_p53;
wire   [5:0] tmp_3_fu_2810_p55;
wire   [5:0] tmp_3_fu_2810_p57;
wire   [5:0] tmp_3_fu_2810_p59;
wire   [5:0] tmp_3_fu_2810_p61;
wire   [5:0] tmp_3_fu_2810_p63;
wire  signed [5:0] tmp_3_fu_2810_p65;
wire  signed [5:0] tmp_3_fu_2810_p67;
wire  signed [5:0] tmp_3_fu_2810_p69;
wire  signed [5:0] tmp_3_fu_2810_p71;
wire  signed [5:0] tmp_3_fu_2810_p73;
wire  signed [5:0] tmp_3_fu_2810_p75;
wire  signed [5:0] tmp_3_fu_2810_p77;
wire  signed [5:0] tmp_3_fu_2810_p79;
wire  signed [5:0] tmp_3_fu_2810_p81;
wire  signed [5:0] tmp_3_fu_2810_p83;
wire  signed [5:0] tmp_3_fu_2810_p85;
wire  signed [5:0] tmp_3_fu_2810_p87;
wire  signed [5:0] tmp_3_fu_2810_p89;
wire  signed [5:0] tmp_3_fu_2810_p91;
wire  signed [5:0] tmp_3_fu_2810_p93;
wire  signed [5:0] tmp_3_fu_2810_p95;
wire  signed [5:0] tmp_3_fu_2810_p97;
wire  signed [5:0] tmp_3_fu_2810_p99;
wire  signed [5:0] tmp_3_fu_2810_p101;
wire  signed [5:0] tmp_3_fu_2810_p103;
wire  signed [5:0] tmp_3_fu_2810_p105;
wire  signed [5:0] tmp_3_fu_2810_p107;
wire  signed [5:0] tmp_3_fu_2810_p109;
wire  signed [5:0] tmp_3_fu_2810_p111;
wire  signed [5:0] tmp_3_fu_2810_p113;
wire  signed [5:0] tmp_3_fu_2810_p115;
wire  signed [5:0] tmp_3_fu_2810_p117;
wire  signed [5:0] tmp_3_fu_2810_p119;
wire  signed [5:0] tmp_3_fu_2810_p121;
wire  signed [5:0] tmp_3_fu_2810_p123;
wire  signed [5:0] tmp_3_fu_2810_p125;
wire  signed [5:0] tmp_3_fu_2810_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_436 = 64'd0;
#0 j_fu_440 = 7'd0;
#0 i_fu_444 = 4'd0;
#0 indvar_flatten_fu_448 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U3970(.din0(d_weights1_0_q0),.din1(d_weights1_1_q0),.din2(d_weights1_2_q0),.din3(d_weights1_3_q0),.din4(d_weights1_4_q0),.din5(d_weights1_5_q0),.din6(d_weights1_6_q0),.din7(d_weights1_7_q0),.din8(d_weights1_8_q0),.din9(d_weights1_9_q0),.din10(d_weights1_10_q0),.din11(d_weights1_11_q0),.din12(d_weights1_12_q0),.din13(d_weights1_13_q0),.din14(d_weights1_14_q0),.din15(d_weights1_15_q0),.din16(d_weights1_16_q0),.din17(d_weights1_17_q0),.din18(d_weights1_18_q0),.din19(d_weights1_19_q0),.din20(d_weights1_20_q0),.din21(d_weights1_21_q0),.din22(d_weights1_22_q0),.din23(d_weights1_23_q0),.din24(d_weights1_24_q0),.din25(d_weights1_25_q0),.din26(d_weights1_26_q0),.din27(d_weights1_27_q0),.din28(d_weights1_28_q0),.din29(d_weights1_29_q0),.din30(d_weights1_30_q0),.din31(d_weights1_31_q0),.din32(d_weights1_32_q0),.din33(d_weights1_33_q0),.din34(d_weights1_34_q0),.din35(d_weights1_35_q0),.din36(d_weights1_36_q0),.din37(d_weights1_37_q0),.din38(d_weights1_38_q0),.din39(d_weights1_39_q0),.din40(d_weights1_40_q0),.din41(d_weights1_41_q0),.din42(d_weights1_42_q0),.din43(d_weights1_43_q0),.din44(d_weights1_44_q0),.din45(d_weights1_45_q0),.din46(d_weights1_46_q0),.din47(d_weights1_47_q0),.din48(d_weights1_48_q0),.din49(d_weights1_49_q0),.din50(d_weights1_50_q0),.din51(d_weights1_51_q0),.din52(d_weights1_52_q0),.din53(d_weights1_53_q0),.din54(d_weights1_54_q0),.din55(d_weights1_55_q0),.din56(d_weights1_56_q0),.din57(d_weights1_57_q0),.din58(d_weights1_58_q0),.din59(d_weights1_59_q0),.din60(d_weights1_60_q0),.din61(d_weights1_61_q0),.din62(d_weights1_62_q0),.din63(d_weights1_63_q0),.def(tmp_2_fu_2273_p129),.sel(trunc_ln127_reg_3589),.dout(tmp_2_fu_2273_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U3971(.din0(tmp_3_fu_2810_p2),.din1(tmp_3_fu_2810_p4),.din2(tmp_3_fu_2810_p6),.din3(tmp_3_fu_2810_p8),.din4(tmp_3_fu_2810_p10),.din5(tmp_3_fu_2810_p12),.din6(tmp_3_fu_2810_p14),.din7(tmp_3_fu_2810_p16),.din8(tmp_3_fu_2810_p18),.din9(tmp_3_fu_2810_p20),.din10(tmp_3_fu_2810_p22),.din11(tmp_3_fu_2810_p24),.din12(tmp_3_fu_2810_p26),.din13(tmp_3_fu_2810_p28),.din14(tmp_3_fu_2810_p30),.din15(tmp_3_fu_2810_p32),.din16(tmp_3_fu_2810_p34),.din17(tmp_3_fu_2810_p36),.din18(tmp_3_fu_2810_p38),.din19(tmp_3_fu_2810_p40),.din20(tmp_3_fu_2810_p42),.din21(tmp_3_fu_2810_p44),.din22(tmp_3_fu_2810_p46),.din23(tmp_3_fu_2810_p48),.din24(tmp_3_fu_2810_p50),.din25(tmp_3_fu_2810_p52),.din26(tmp_3_fu_2810_p54),.din27(tmp_3_fu_2810_p56),.din28(tmp_3_fu_2810_p58),.din29(tmp_3_fu_2810_p60),.din30(tmp_3_fu_2810_p62),.din31(tmp_3_fu_2810_p64),.din32(tmp_3_fu_2810_p66),.din33(tmp_3_fu_2810_p68),.din34(tmp_3_fu_2810_p70),.din35(tmp_3_fu_2810_p72),.din36(tmp_3_fu_2810_p74),.din37(tmp_3_fu_2810_p76),.din38(tmp_3_fu_2810_p78),.din39(tmp_3_fu_2810_p80),.din40(tmp_3_fu_2810_p82),.din41(tmp_3_fu_2810_p84),.din42(tmp_3_fu_2810_p86),.din43(tmp_3_fu_2810_p88),.din44(tmp_3_fu_2810_p90),.din45(tmp_3_fu_2810_p92),.din46(tmp_3_fu_2810_p94),.din47(tmp_3_fu_2810_p96),.din48(tmp_3_fu_2810_p98),.din49(tmp_3_fu_2810_p100),.din50(tmp_3_fu_2810_p102),.din51(tmp_3_fu_2810_p104),.din52(tmp_3_fu_2810_p106),.din53(tmp_3_fu_2810_p108),.din54(tmp_3_fu_2810_p110),.din55(tmp_3_fu_2810_p112),.din56(tmp_3_fu_2810_p114),.din57(tmp_3_fu_2810_p116),.din58(tmp_3_fu_2810_p118),.din59(tmp_3_fu_2810_p120),.din60(tmp_3_fu_2810_p122),.din61(tmp_3_fu_2810_p124),.din62(tmp_3_fu_2810_p126),.din63(tmp_3_fu_2810_p128),.def(tmp_3_fu_2810_p129),.sel(trunc_ln127_reg_3589_pp0_iter1_reg),.dout(tmp_3_fu_2810_p131));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_444 <= 4'd0;
    end else if (((icmp_ln126_reg_3182 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_444 <= select_ln126_reg_3196;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten_fu_448 <= 10'd0;
    end else if (((icmp_ln126_reg_3182 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_448 <= add_ln126_reg_3186;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_440 <= 7'd0;
    end else if (((icmp_ln126_reg_3182 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_440 <= add_ln127_fu_2536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_2_fu_436 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        norm_2_fu_436 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_reg_3186 <= add_ln126_fu_2161_p2;
        icmp_ln126_reg_3182 <= icmp_ln126_fu_2155_p2;
        icmp_ln126_reg_3182_pp0_iter1_reg <= icmp_ln126_reg_3182;
        icmp_ln126_reg_3182_pp0_iter2_reg <= icmp_ln126_reg_3182_pp0_iter1_reg;
        icmp_ln126_reg_3182_pp0_iter3_reg <= icmp_ln126_reg_3182_pp0_iter2_reg;
        select_ln121_reg_3191 <= select_ln121_fu_2179_p3;
        select_ln126_reg_3196 <= select_ln126_fu_2193_p3;
        trunc_ln127_reg_3589 <= trunc_ln127_fu_2269_p1;
        trunc_ln127_reg_3589_pp0_iter1_reg <= trunc_ln127_reg_3589;
        trunc_ln127_reg_3589_pp0_iter2_reg <= trunc_ln127_reg_3589_pp0_iter1_reg;
        weights1_0_addr_reg_3600 <= zext_ln126_reg_3201;
        weights1_0_addr_reg_3600_pp0_iter2_reg <= weights1_0_addr_reg_3600;
        weights1_10_addr_reg_3650 <= zext_ln126_reg_3201;
        weights1_10_addr_reg_3650_pp0_iter2_reg <= weights1_10_addr_reg_3650;
        weights1_11_addr_reg_3655 <= zext_ln126_reg_3201;
        weights1_11_addr_reg_3655_pp0_iter2_reg <= weights1_11_addr_reg_3655;
        weights1_12_addr_reg_3660 <= zext_ln126_reg_3201;
        weights1_12_addr_reg_3660_pp0_iter2_reg <= weights1_12_addr_reg_3660;
        weights1_13_addr_reg_3665 <= zext_ln126_reg_3201;
        weights1_13_addr_reg_3665_pp0_iter2_reg <= weights1_13_addr_reg_3665;
        weights1_14_addr_reg_3670 <= zext_ln126_reg_3201;
        weights1_14_addr_reg_3670_pp0_iter2_reg <= weights1_14_addr_reg_3670;
        weights1_15_addr_reg_3675 <= zext_ln126_reg_3201;
        weights1_15_addr_reg_3675_pp0_iter2_reg <= weights1_15_addr_reg_3675;
        weights1_16_addr_reg_3680 <= zext_ln126_reg_3201;
        weights1_16_addr_reg_3680_pp0_iter2_reg <= weights1_16_addr_reg_3680;
        weights1_17_addr_reg_3685 <= zext_ln126_reg_3201;
        weights1_17_addr_reg_3685_pp0_iter2_reg <= weights1_17_addr_reg_3685;
        weights1_18_addr_reg_3690 <= zext_ln126_reg_3201;
        weights1_18_addr_reg_3690_pp0_iter2_reg <= weights1_18_addr_reg_3690;
        weights1_19_addr_reg_3695 <= zext_ln126_reg_3201;
        weights1_19_addr_reg_3695_pp0_iter2_reg <= weights1_19_addr_reg_3695;
        weights1_1_addr_reg_3605 <= zext_ln126_reg_3201;
        weights1_1_addr_reg_3605_pp0_iter2_reg <= weights1_1_addr_reg_3605;
        weights1_20_addr_reg_3700 <= zext_ln126_reg_3201;
        weights1_20_addr_reg_3700_pp0_iter2_reg <= weights1_20_addr_reg_3700;
        weights1_21_addr_reg_3705 <= zext_ln126_reg_3201;
        weights1_21_addr_reg_3705_pp0_iter2_reg <= weights1_21_addr_reg_3705;
        weights1_22_addr_reg_3710 <= zext_ln126_reg_3201;
        weights1_22_addr_reg_3710_pp0_iter2_reg <= weights1_22_addr_reg_3710;
        weights1_23_addr_reg_3715 <= zext_ln126_reg_3201;
        weights1_23_addr_reg_3715_pp0_iter2_reg <= weights1_23_addr_reg_3715;
        weights1_24_addr_reg_3720 <= zext_ln126_reg_3201;
        weights1_24_addr_reg_3720_pp0_iter2_reg <= weights1_24_addr_reg_3720;
        weights1_25_addr_reg_3725 <= zext_ln126_reg_3201;
        weights1_25_addr_reg_3725_pp0_iter2_reg <= weights1_25_addr_reg_3725;
        weights1_26_addr_reg_3730 <= zext_ln126_reg_3201;
        weights1_26_addr_reg_3730_pp0_iter2_reg <= weights1_26_addr_reg_3730;
        weights1_27_addr_reg_3735 <= zext_ln126_reg_3201;
        weights1_27_addr_reg_3735_pp0_iter2_reg <= weights1_27_addr_reg_3735;
        weights1_28_addr_reg_3740 <= zext_ln126_reg_3201;
        weights1_28_addr_reg_3740_pp0_iter2_reg <= weights1_28_addr_reg_3740;
        weights1_29_addr_reg_3745 <= zext_ln126_reg_3201;
        weights1_29_addr_reg_3745_pp0_iter2_reg <= weights1_29_addr_reg_3745;
        weights1_2_addr_reg_3610 <= zext_ln126_reg_3201;
        weights1_2_addr_reg_3610_pp0_iter2_reg <= weights1_2_addr_reg_3610;
        weights1_30_addr_reg_3750 <= zext_ln126_reg_3201;
        weights1_30_addr_reg_3750_pp0_iter2_reg <= weights1_30_addr_reg_3750;
        weights1_31_addr_reg_3755 <= zext_ln126_reg_3201;
        weights1_31_addr_reg_3755_pp0_iter2_reg <= weights1_31_addr_reg_3755;
        weights1_32_addr_reg_3760 <= zext_ln126_reg_3201;
        weights1_32_addr_reg_3760_pp0_iter2_reg <= weights1_32_addr_reg_3760;
        weights1_33_addr_reg_3765 <= zext_ln126_reg_3201;
        weights1_33_addr_reg_3765_pp0_iter2_reg <= weights1_33_addr_reg_3765;
        weights1_34_addr_reg_3770 <= zext_ln126_reg_3201;
        weights1_34_addr_reg_3770_pp0_iter2_reg <= weights1_34_addr_reg_3770;
        weights1_35_addr_reg_3775 <= zext_ln126_reg_3201;
        weights1_35_addr_reg_3775_pp0_iter2_reg <= weights1_35_addr_reg_3775;
        weights1_36_addr_reg_3780 <= zext_ln126_reg_3201;
        weights1_36_addr_reg_3780_pp0_iter2_reg <= weights1_36_addr_reg_3780;
        weights1_37_addr_reg_3785 <= zext_ln126_reg_3201;
        weights1_37_addr_reg_3785_pp0_iter2_reg <= weights1_37_addr_reg_3785;
        weights1_38_addr_reg_3790 <= zext_ln126_reg_3201;
        weights1_38_addr_reg_3790_pp0_iter2_reg <= weights1_38_addr_reg_3790;
        weights1_39_addr_reg_3795 <= zext_ln126_reg_3201;
        weights1_39_addr_reg_3795_pp0_iter2_reg <= weights1_39_addr_reg_3795;
        weights1_3_addr_reg_3615 <= zext_ln126_reg_3201;
        weights1_3_addr_reg_3615_pp0_iter2_reg <= weights1_3_addr_reg_3615;
        weights1_40_addr_reg_3800 <= zext_ln126_reg_3201;
        weights1_40_addr_reg_3800_pp0_iter2_reg <= weights1_40_addr_reg_3800;
        weights1_41_addr_reg_3805 <= zext_ln126_reg_3201;
        weights1_41_addr_reg_3805_pp0_iter2_reg <= weights1_41_addr_reg_3805;
        weights1_42_addr_reg_3810 <= zext_ln126_reg_3201;
        weights1_42_addr_reg_3810_pp0_iter2_reg <= weights1_42_addr_reg_3810;
        weights1_43_addr_reg_3815 <= zext_ln126_reg_3201;
        weights1_43_addr_reg_3815_pp0_iter2_reg <= weights1_43_addr_reg_3815;
        weights1_44_addr_reg_3820 <= zext_ln126_reg_3201;
        weights1_44_addr_reg_3820_pp0_iter2_reg <= weights1_44_addr_reg_3820;
        weights1_45_addr_reg_3825 <= zext_ln126_reg_3201;
        weights1_45_addr_reg_3825_pp0_iter2_reg <= weights1_45_addr_reg_3825;
        weights1_46_addr_reg_3830 <= zext_ln126_reg_3201;
        weights1_46_addr_reg_3830_pp0_iter2_reg <= weights1_46_addr_reg_3830;
        weights1_47_addr_reg_3835 <= zext_ln126_reg_3201;
        weights1_47_addr_reg_3835_pp0_iter2_reg <= weights1_47_addr_reg_3835;
        weights1_48_addr_reg_3840 <= zext_ln126_reg_3201;
        weights1_48_addr_reg_3840_pp0_iter2_reg <= weights1_48_addr_reg_3840;
        weights1_49_addr_reg_3845 <= zext_ln126_reg_3201;
        weights1_49_addr_reg_3845_pp0_iter2_reg <= weights1_49_addr_reg_3845;
        weights1_4_addr_reg_3620 <= zext_ln126_reg_3201;
        weights1_4_addr_reg_3620_pp0_iter2_reg <= weights1_4_addr_reg_3620;
        weights1_50_addr_reg_3850 <= zext_ln126_reg_3201;
        weights1_50_addr_reg_3850_pp0_iter2_reg <= weights1_50_addr_reg_3850;
        weights1_51_addr_reg_3855 <= zext_ln126_reg_3201;
        weights1_51_addr_reg_3855_pp0_iter2_reg <= weights1_51_addr_reg_3855;
        weights1_52_addr_reg_3860 <= zext_ln126_reg_3201;
        weights1_52_addr_reg_3860_pp0_iter2_reg <= weights1_52_addr_reg_3860;
        weights1_53_addr_reg_3865 <= zext_ln126_reg_3201;
        weights1_53_addr_reg_3865_pp0_iter2_reg <= weights1_53_addr_reg_3865;
        weights1_54_addr_reg_3870 <= zext_ln126_reg_3201;
        weights1_54_addr_reg_3870_pp0_iter2_reg <= weights1_54_addr_reg_3870;
        weights1_55_addr_reg_3875 <= zext_ln126_reg_3201;
        weights1_55_addr_reg_3875_pp0_iter2_reg <= weights1_55_addr_reg_3875;
        weights1_56_addr_reg_3880 <= zext_ln126_reg_3201;
        weights1_56_addr_reg_3880_pp0_iter2_reg <= weights1_56_addr_reg_3880;
        weights1_57_addr_reg_3885 <= zext_ln126_reg_3201;
        weights1_57_addr_reg_3885_pp0_iter2_reg <= weights1_57_addr_reg_3885;
        weights1_58_addr_reg_3890 <= zext_ln126_reg_3201;
        weights1_58_addr_reg_3890_pp0_iter2_reg <= weights1_58_addr_reg_3890;
        weights1_59_addr_reg_3895 <= zext_ln126_reg_3201;
        weights1_59_addr_reg_3895_pp0_iter2_reg <= weights1_59_addr_reg_3895;
        weights1_5_addr_reg_3625 <= zext_ln126_reg_3201;
        weights1_5_addr_reg_3625_pp0_iter2_reg <= weights1_5_addr_reg_3625;
        weights1_60_addr_reg_3900 <= zext_ln126_reg_3201;
        weights1_60_addr_reg_3900_pp0_iter2_reg <= weights1_60_addr_reg_3900;
        weights1_61_addr_reg_3905 <= zext_ln126_reg_3201;
        weights1_61_addr_reg_3905_pp0_iter2_reg <= weights1_61_addr_reg_3905;
        weights1_62_addr_reg_3910 <= zext_ln126_reg_3201;
        weights1_62_addr_reg_3910_pp0_iter2_reg <= weights1_62_addr_reg_3910;
        weights1_63_addr_reg_3915 <= zext_ln126_reg_3201;
        weights1_63_addr_reg_3915_pp0_iter2_reg <= weights1_63_addr_reg_3915;
        weights1_6_addr_reg_3630 <= zext_ln126_reg_3201;
        weights1_6_addr_reg_3630_pp0_iter2_reg <= weights1_6_addr_reg_3630;
        weights1_7_addr_reg_3635 <= zext_ln126_reg_3201;
        weights1_7_addr_reg_3635_pp0_iter2_reg <= weights1_7_addr_reg_3635;
        weights1_8_addr_reg_3640 <= zext_ln126_reg_3201;
        weights1_8_addr_reg_3640_pp0_iter2_reg <= weights1_8_addr_reg_3640;
        weights1_9_addr_reg_3645 <= zext_ln126_reg_3201;
        weights1_9_addr_reg_3645_pp0_iter2_reg <= weights1_9_addr_reg_3645;
        zext_ln126_reg_3201[3 : 0] <= zext_ln126_fu_2201_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1708_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1721_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd1);
        ap_predicate_pred1731_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd2);
        ap_predicate_pred1741_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd3);
        ap_predicate_pred1751_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd4);
        ap_predicate_pred1761_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd5);
        ap_predicate_pred1771_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd6);
        ap_predicate_pred1781_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd7);
        ap_predicate_pred1791_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd8);
        ap_predicate_pred1801_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd9);
        ap_predicate_pred1811_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd10);
        ap_predicate_pred1821_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd11);
        ap_predicate_pred1831_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd12);
        ap_predicate_pred1841_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd13);
        ap_predicate_pred1851_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd14);
        ap_predicate_pred1861_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd15);
        ap_predicate_pred1871_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd16);
        ap_predicate_pred1881_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd17);
        ap_predicate_pred1891_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd18);
        ap_predicate_pred1901_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd19);
        ap_predicate_pred1911_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd20);
        ap_predicate_pred1921_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd21);
        ap_predicate_pred1931_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd22);
        ap_predicate_pred1941_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd23);
        ap_predicate_pred1951_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd24);
        ap_predicate_pred1961_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd25);
        ap_predicate_pred1971_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd26);
        ap_predicate_pred1981_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd27);
        ap_predicate_pred1991_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd28);
        ap_predicate_pred2001_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd29);
        ap_predicate_pred2011_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd30);
        ap_predicate_pred2021_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd31);
        ap_predicate_pred2031_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd32);
        ap_predicate_pred2041_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd33);
        ap_predicate_pred2051_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd34);
        ap_predicate_pred2061_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd35);
        ap_predicate_pred2071_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd36);
        ap_predicate_pred2081_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd37);
        ap_predicate_pred2091_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd38);
        ap_predicate_pred2101_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd39);
        ap_predicate_pred2111_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd40);
        ap_predicate_pred2121_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd41);
        ap_predicate_pred2131_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd42);
        ap_predicate_pred2141_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd43);
        ap_predicate_pred2151_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd44);
        ap_predicate_pred2161_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd45);
        ap_predicate_pred2171_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd46);
        ap_predicate_pred2181_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd47);
        ap_predicate_pred2191_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd48);
        ap_predicate_pred2201_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd49);
        ap_predicate_pred2211_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd50);
        ap_predicate_pred2221_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd51);
        ap_predicate_pred2231_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd52);
        ap_predicate_pred2241_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd53);
        ap_predicate_pred2251_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd54);
        ap_predicate_pred2261_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd55);
        ap_predicate_pred2271_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd56);
        ap_predicate_pred2281_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd57);
        ap_predicate_pred2291_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd58);
        ap_predicate_pred2301_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd59);
        ap_predicate_pred2311_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd60);
        ap_predicate_pred2321_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd61);
        ap_predicate_pred2331_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd62);
        ap_predicate_pred2341_state18 <= (trunc_ln127_reg_3589_pp0_iter2_reg == 6'd63);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul2_reg_3937 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul4_reg_3920 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub_reg_3930 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_3595 <= tmp_2_fu_2273_p131;
        tmp_3_reg_3925 <= tmp_3_fu_2810_p131;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3182 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3182_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_444;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_448;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_440;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_norm_2_load = grp_fu_4915_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_2_load = norm_2_fu_436;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_0_ce0_local = 1'b1;
    end else begin
        d_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_10_ce0_local = 1'b1;
    end else begin
        d_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_11_ce0_local = 1'b1;
    end else begin
        d_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_12_ce0_local = 1'b1;
    end else begin
        d_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_13_ce0_local = 1'b1;
    end else begin
        d_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_14_ce0_local = 1'b1;
    end else begin
        d_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_15_ce0_local = 1'b1;
    end else begin
        d_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_16_ce0_local = 1'b1;
    end else begin
        d_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_17_ce0_local = 1'b1;
    end else begin
        d_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_18_ce0_local = 1'b1;
    end else begin
        d_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_19_ce0_local = 1'b1;
    end else begin
        d_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_1_ce0_local = 1'b1;
    end else begin
        d_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_20_ce0_local = 1'b1;
    end else begin
        d_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_21_ce0_local = 1'b1;
    end else begin
        d_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_22_ce0_local = 1'b1;
    end else begin
        d_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_23_ce0_local = 1'b1;
    end else begin
        d_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_24_ce0_local = 1'b1;
    end else begin
        d_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_25_ce0_local = 1'b1;
    end else begin
        d_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_26_ce0_local = 1'b1;
    end else begin
        d_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_27_ce0_local = 1'b1;
    end else begin
        d_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_28_ce0_local = 1'b1;
    end else begin
        d_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_29_ce0_local = 1'b1;
    end else begin
        d_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_2_ce0_local = 1'b1;
    end else begin
        d_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_30_ce0_local = 1'b1;
    end else begin
        d_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_31_ce0_local = 1'b1;
    end else begin
        d_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_32_ce0_local = 1'b1;
    end else begin
        d_weights1_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_33_ce0_local = 1'b1;
    end else begin
        d_weights1_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_34_ce0_local = 1'b1;
    end else begin
        d_weights1_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_35_ce0_local = 1'b1;
    end else begin
        d_weights1_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_36_ce0_local = 1'b1;
    end else begin
        d_weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_37_ce0_local = 1'b1;
    end else begin
        d_weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_38_ce0_local = 1'b1;
    end else begin
        d_weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_39_ce0_local = 1'b1;
    end else begin
        d_weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_3_ce0_local = 1'b1;
    end else begin
        d_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_40_ce0_local = 1'b1;
    end else begin
        d_weights1_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_41_ce0_local = 1'b1;
    end else begin
        d_weights1_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_42_ce0_local = 1'b1;
    end else begin
        d_weights1_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_43_ce0_local = 1'b1;
    end else begin
        d_weights1_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_44_ce0_local = 1'b1;
    end else begin
        d_weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_45_ce0_local = 1'b1;
    end else begin
        d_weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_46_ce0_local = 1'b1;
    end else begin
        d_weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_47_ce0_local = 1'b1;
    end else begin
        d_weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_48_ce0_local = 1'b1;
    end else begin
        d_weights1_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_49_ce0_local = 1'b1;
    end else begin
        d_weights1_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_4_ce0_local = 1'b1;
    end else begin
        d_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_50_ce0_local = 1'b1;
    end else begin
        d_weights1_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_51_ce0_local = 1'b1;
    end else begin
        d_weights1_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_52_ce0_local = 1'b1;
    end else begin
        d_weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_53_ce0_local = 1'b1;
    end else begin
        d_weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_54_ce0_local = 1'b1;
    end else begin
        d_weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_55_ce0_local = 1'b1;
    end else begin
        d_weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_56_ce0_local = 1'b1;
    end else begin
        d_weights1_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_57_ce0_local = 1'b1;
    end else begin
        d_weights1_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_58_ce0_local = 1'b1;
    end else begin
        d_weights1_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_59_ce0_local = 1'b1;
    end else begin
        d_weights1_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_5_ce0_local = 1'b1;
    end else begin
        d_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_60_ce0_local = 1'b1;
    end else begin
        d_weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_61_ce0_local = 1'b1;
    end else begin
        d_weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_62_ce0_local = 1'b1;
    end else begin
        d_weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_63_ce0_local = 1'b1;
    end else begin
        d_weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_6_ce0_local = 1'b1;
    end else begin
        d_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_7_ce0_local = 1'b1;
    end else begin
        d_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_8_ce0_local = 1'b1;
    end else begin
        d_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_weights1_9_ce0_local = 1'b1;
    end else begin
        d_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2123_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2123_opcode = 2'd0;
    end else begin
        grp_fu_2123_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2123_p0 = ap_sig_allocacmp_norm_2_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2123_p0 = tmp_3_reg_3925;
    end else begin
        grp_fu_2123_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2123_p1 = mul2_reg_3937;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2123_p1 = mul4_reg_3920;
    end else begin
        grp_fu_2123_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2127_p0 = sub_reg_3930;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2127_p0 = tmp_2_reg_3595;
    end else begin
        grp_fu_2127_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2127_p1 = sub_reg_3930;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2127_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2127_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3182_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = weights1_0_addr_reg_3600_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1708_state18 == 1'b1))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_10_address0_local = weights1_10_addr_reg_3650_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_10_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_10_ce0_local = 1'b1;
    end else begin
        weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1811_state18 == 1'b1))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_11_address0_local = weights1_11_addr_reg_3655_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_11_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_11_ce0_local = 1'b1;
    end else begin
        weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1821_state18 == 1'b1))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_12_address0_local = weights1_12_addr_reg_3660_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_12_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1831_state18 == 1'b1))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_13_address0_local = weights1_13_addr_reg_3665_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_13_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1841_state18 == 1'b1))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_14_address0_local = weights1_14_addr_reg_3670_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_14_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1851_state18 == 1'b1))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_15_address0_local = weights1_15_addr_reg_3675_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_15_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1861_state18 == 1'b1))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_16_address0_local = weights1_16_addr_reg_3680_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_16_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_16_ce0_local = 1'b1;
    end else begin
        weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1871_state18 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_17_address0_local = weights1_17_addr_reg_3685_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_17_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_17_ce0_local = 1'b1;
    end else begin
        weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1881_state18 == 1'b1))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_18_address0_local = weights1_18_addr_reg_3690_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_18_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_18_ce0_local = 1'b1;
    end else begin
        weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1891_state18 == 1'b1))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_19_address0_local = weights1_19_addr_reg_3695_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_19_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_19_ce0_local = 1'b1;
    end else begin
        weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1901_state18 == 1'b1))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = weights1_1_addr_reg_3605_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1721_state18 == 1'b1))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_20_address0_local = weights1_20_addr_reg_3700_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_20_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1911_state18 == 1'b1))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_21_address0_local = weights1_21_addr_reg_3705_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_21_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1921_state18 == 1'b1))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_22_address0_local = weights1_22_addr_reg_3710_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_22_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1931_state18 == 1'b1))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_23_address0_local = weights1_23_addr_reg_3715_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_23_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1941_state18 == 1'b1))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_24_address0_local = weights1_24_addr_reg_3720_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_24_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_24_ce0_local = 1'b1;
    end else begin
        weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1951_state18 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_25_address0_local = weights1_25_addr_reg_3725_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_25_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_25_ce0_local = 1'b1;
    end else begin
        weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1961_state18 == 1'b1))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_26_address0_local = weights1_26_addr_reg_3730_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_26_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_26_ce0_local = 1'b1;
    end else begin
        weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1971_state18 == 1'b1))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_27_address0_local = weights1_27_addr_reg_3735_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_27_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_27_ce0_local = 1'b1;
    end else begin
        weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1981_state18 == 1'b1))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_28_address0_local = weights1_28_addr_reg_3740_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_28_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1991_state18 == 1'b1))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_29_address0_local = weights1_29_addr_reg_3745_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_29_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2001_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_29_we0_local = 1'b1;
    end else begin
        weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_2_address0_local = weights1_2_addr_reg_3610_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_2_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1731_state18 == 1'b1))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_30_address0_local = weights1_30_addr_reg_3750_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_30_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2011_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_31_address0_local = weights1_31_addr_reg_3755_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_31_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2021_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_32_address0_local = weights1_32_addr_reg_3760_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_32_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_32_ce0_local = 1'b1;
    end else begin
        weights1_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2031_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_32_we0_local = 1'b1;
    end else begin
        weights1_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_33_address0_local = weights1_33_addr_reg_3765_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_33_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_33_ce0_local = 1'b1;
    end else begin
        weights1_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2041_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_33_we0_local = 1'b1;
    end else begin
        weights1_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_34_address0_local = weights1_34_addr_reg_3770_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_34_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_34_ce0_local = 1'b1;
    end else begin
        weights1_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2051_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_34_we0_local = 1'b1;
    end else begin
        weights1_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_35_address0_local = weights1_35_addr_reg_3775_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_35_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_35_ce0_local = 1'b1;
    end else begin
        weights1_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2061_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_35_we0_local = 1'b1;
    end else begin
        weights1_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_36_address0_local = weights1_36_addr_reg_3780_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_36_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_36_ce0_local = 1'b1;
    end else begin
        weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2071_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_36_we0_local = 1'b1;
    end else begin
        weights1_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_37_address0_local = weights1_37_addr_reg_3785_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_37_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_37_ce0_local = 1'b1;
    end else begin
        weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2081_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_37_we0_local = 1'b1;
    end else begin
        weights1_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_38_address0_local = weights1_38_addr_reg_3790_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_38_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_38_ce0_local = 1'b1;
    end else begin
        weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2091_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_38_we0_local = 1'b1;
    end else begin
        weights1_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_39_address0_local = weights1_39_addr_reg_3795_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_39_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_39_ce0_local = 1'b1;
    end else begin
        weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2101_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_39_we0_local = 1'b1;
    end else begin
        weights1_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_3_address0_local = weights1_3_addr_reg_3615_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_3_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1741_state18 == 1'b1))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_40_address0_local = weights1_40_addr_reg_3800_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_40_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_40_ce0_local = 1'b1;
    end else begin
        weights1_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2111_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_40_we0_local = 1'b1;
    end else begin
        weights1_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_41_address0_local = weights1_41_addr_reg_3805_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_41_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_41_ce0_local = 1'b1;
    end else begin
        weights1_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2121_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_41_we0_local = 1'b1;
    end else begin
        weights1_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_42_address0_local = weights1_42_addr_reg_3810_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_42_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_42_ce0_local = 1'b1;
    end else begin
        weights1_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2131_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_42_we0_local = 1'b1;
    end else begin
        weights1_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_43_address0_local = weights1_43_addr_reg_3815_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_43_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_43_ce0_local = 1'b1;
    end else begin
        weights1_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2141_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_43_we0_local = 1'b1;
    end else begin
        weights1_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_44_address0_local = weights1_44_addr_reg_3820_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_44_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_44_ce0_local = 1'b1;
    end else begin
        weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2151_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_44_we0_local = 1'b1;
    end else begin
        weights1_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_45_address0_local = weights1_45_addr_reg_3825_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_45_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_45_ce0_local = 1'b1;
    end else begin
        weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2161_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_45_we0_local = 1'b1;
    end else begin
        weights1_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_46_address0_local = weights1_46_addr_reg_3830_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_46_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_46_ce0_local = 1'b1;
    end else begin
        weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2171_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_46_we0_local = 1'b1;
    end else begin
        weights1_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_47_address0_local = weights1_47_addr_reg_3835_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_47_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_47_ce0_local = 1'b1;
    end else begin
        weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2181_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_47_we0_local = 1'b1;
    end else begin
        weights1_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_48_address0_local = weights1_48_addr_reg_3840_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_48_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_48_ce0_local = 1'b1;
    end else begin
        weights1_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2191_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_48_we0_local = 1'b1;
    end else begin
        weights1_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_49_address0_local = weights1_49_addr_reg_3845_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_49_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_49_ce0_local = 1'b1;
    end else begin
        weights1_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2201_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_49_we0_local = 1'b1;
    end else begin
        weights1_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_4_address0_local = weights1_4_addr_reg_3620_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_4_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1751_state18 == 1'b1))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_50_address0_local = weights1_50_addr_reg_3850_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_50_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_50_ce0_local = 1'b1;
    end else begin
        weights1_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2211_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_50_we0_local = 1'b1;
    end else begin
        weights1_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_51_address0_local = weights1_51_addr_reg_3855_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_51_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_51_ce0_local = 1'b1;
    end else begin
        weights1_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2221_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_51_we0_local = 1'b1;
    end else begin
        weights1_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_52_address0_local = weights1_52_addr_reg_3860_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_52_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_52_ce0_local = 1'b1;
    end else begin
        weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2231_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_52_we0_local = 1'b1;
    end else begin
        weights1_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_53_address0_local = weights1_53_addr_reg_3865_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_53_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_53_ce0_local = 1'b1;
    end else begin
        weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2241_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_53_we0_local = 1'b1;
    end else begin
        weights1_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_54_address0_local = weights1_54_addr_reg_3870_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_54_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_54_ce0_local = 1'b1;
    end else begin
        weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2251_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_54_we0_local = 1'b1;
    end else begin
        weights1_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_55_address0_local = weights1_55_addr_reg_3875_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_55_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_55_ce0_local = 1'b1;
    end else begin
        weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2261_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_55_we0_local = 1'b1;
    end else begin
        weights1_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_56_address0_local = weights1_56_addr_reg_3880_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_56_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_56_ce0_local = 1'b1;
    end else begin
        weights1_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2271_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_56_we0_local = 1'b1;
    end else begin
        weights1_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_57_address0_local = weights1_57_addr_reg_3885_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_57_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_57_ce0_local = 1'b1;
    end else begin
        weights1_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2281_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_57_we0_local = 1'b1;
    end else begin
        weights1_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_58_address0_local = weights1_58_addr_reg_3890_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_58_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_58_ce0_local = 1'b1;
    end else begin
        weights1_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2291_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_58_we0_local = 1'b1;
    end else begin
        weights1_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_59_address0_local = weights1_59_addr_reg_3895_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_59_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_59_ce0_local = 1'b1;
    end else begin
        weights1_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2301_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_59_we0_local = 1'b1;
    end else begin
        weights1_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_5_address0_local = weights1_5_addr_reg_3625_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_5_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1761_state18 == 1'b1))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_60_address0_local = weights1_60_addr_reg_3900_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_60_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_60_ce0_local = 1'b1;
    end else begin
        weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2311_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_60_we0_local = 1'b1;
    end else begin
        weights1_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_61_address0_local = weights1_61_addr_reg_3905_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_61_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_61_ce0_local = 1'b1;
    end else begin
        weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2321_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_61_we0_local = 1'b1;
    end else begin
        weights1_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_62_address0_local = weights1_62_addr_reg_3910_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_62_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_62_ce0_local = 1'b1;
    end else begin
        weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2331_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_62_we0_local = 1'b1;
    end else begin
        weights1_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_63_address0_local = weights1_63_addr_reg_3915_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_63_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_63_ce0_local = 1'b1;
    end else begin
        weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2341_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_63_we0_local = 1'b1;
    end else begin
        weights1_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_6_address0_local = weights1_6_addr_reg_3630_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_6_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1771_state18 == 1'b1))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_7_address0_local = weights1_7_addr_reg_3635_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_7_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1781_state18 == 1'b1))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_8_address0_local = weights1_8_addr_reg_3640_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_8_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_8_ce0_local = 1'b1;
    end else begin
        weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1791_state18 == 1'b1))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_9_address0_local = weights1_9_addr_reg_3645_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_9_address0_local = zext_ln126_reg_3201;
    end else begin
        weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_9_ce0_local = 1'b1;
    end else begin
        weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1801_state18 == 1'b1))) begin
        weights1_9_we0_local = 1'b1;
    end else begin
        weights1_9_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln126_1_fu_2187_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_2161_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln127_fu_2536_p2 = (select_ln121_reg_3191 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_64_fu_3073_p1 = sub_reg_3930;
assign d_weights1_0_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_32_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_32_ce0 = d_weights1_32_ce0_local;
assign d_weights1_33_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_33_ce0 = d_weights1_33_ce0_local;
assign d_weights1_34_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_34_ce0 = d_weights1_34_ce0_local;
assign d_weights1_35_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_35_ce0 = d_weights1_35_ce0_local;
assign d_weights1_36_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_36_ce0 = d_weights1_36_ce0_local;
assign d_weights1_37_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_37_ce0 = d_weights1_37_ce0_local;
assign d_weights1_38_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_38_ce0 = d_weights1_38_ce0_local;
assign d_weights1_39_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_39_ce0 = d_weights1_39_ce0_local;
assign d_weights1_3_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_40_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_40_ce0 = d_weights1_40_ce0_local;
assign d_weights1_41_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_41_ce0 = d_weights1_41_ce0_local;
assign d_weights1_42_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_42_ce0 = d_weights1_42_ce0_local;
assign d_weights1_43_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_43_ce0 = d_weights1_43_ce0_local;
assign d_weights1_44_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_44_ce0 = d_weights1_44_ce0_local;
assign d_weights1_45_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_45_ce0 = d_weights1_45_ce0_local;
assign d_weights1_46_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_46_ce0 = d_weights1_46_ce0_local;
assign d_weights1_47_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_47_ce0 = d_weights1_47_ce0_local;
assign d_weights1_48_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_48_ce0 = d_weights1_48_ce0_local;
assign d_weights1_49_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_49_ce0 = d_weights1_49_ce0_local;
assign d_weights1_4_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_50_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_50_ce0 = d_weights1_50_ce0_local;
assign d_weights1_51_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_51_ce0 = d_weights1_51_ce0_local;
assign d_weights1_52_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_52_ce0 = d_weights1_52_ce0_local;
assign d_weights1_53_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_53_ce0 = d_weights1_53_ce0_local;
assign d_weights1_54_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_54_ce0 = d_weights1_54_ce0_local;
assign d_weights1_55_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_55_ce0 = d_weights1_55_ce0_local;
assign d_weights1_56_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_56_ce0 = d_weights1_56_ce0_local;
assign d_weights1_57_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_57_ce0 = d_weights1_57_ce0_local;
assign d_weights1_58_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_58_ce0 = d_weights1_58_ce0_local;
assign d_weights1_59_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_59_ce0 = d_weights1_59_ce0_local;
assign d_weights1_5_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_60_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_60_ce0 = d_weights1_60_ce0_local;
assign d_weights1_61_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_61_ce0 = d_weights1_61_ce0_local;
assign d_weights1_62_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_62_ce0 = d_weights1_62_ce0_local;
assign d_weights1_63_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_63_ce0 = d_weights1_63_ce0_local;
assign d_weights1_6_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln126_fu_2201_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_4915_p_ce = 1'b1;
assign grp_fu_4915_p_din0 = grp_fu_2123_p0;
assign grp_fu_4915_p_din1 = grp_fu_2123_p1;
assign grp_fu_4915_p_opcode = grp_fu_2123_opcode;
assign grp_fu_4919_p_ce = 1'b1;
assign grp_fu_4919_p_din0 = grp_fu_2127_p0;
assign grp_fu_4919_p_din1 = grp_fu_2127_p1;
assign icmp_ln126_fu_2155_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln127_fu_2173_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_436;
assign select_ln121_fu_2179_p3 = ((icmp_ln127_fu_2173_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln126_fu_2193_p3 = ((icmp_ln127_fu_2173_p2[0:0] == 1'b1) ? add_ln126_1_fu_2187_p2 : ap_sig_allocacmp_i_load);
assign tmp_2_fu_2273_p129 = 'bx;
assign tmp_3_fu_2810_p10 = weights1_4_q0;
assign tmp_3_fu_2810_p100 = weights1_49_q0;
assign tmp_3_fu_2810_p102 = weights1_50_q0;
assign tmp_3_fu_2810_p104 = weights1_51_q0;
assign tmp_3_fu_2810_p106 = weights1_52_q0;
assign tmp_3_fu_2810_p108 = weights1_53_q0;
assign tmp_3_fu_2810_p110 = weights1_54_q0;
assign tmp_3_fu_2810_p112 = weights1_55_q0;
assign tmp_3_fu_2810_p114 = weights1_56_q0;
assign tmp_3_fu_2810_p116 = weights1_57_q0;
assign tmp_3_fu_2810_p118 = weights1_58_q0;
assign tmp_3_fu_2810_p12 = weights1_5_q0;
assign tmp_3_fu_2810_p120 = weights1_59_q0;
assign tmp_3_fu_2810_p122 = weights1_60_q0;
assign tmp_3_fu_2810_p124 = weights1_61_q0;
assign tmp_3_fu_2810_p126 = weights1_62_q0;
assign tmp_3_fu_2810_p128 = weights1_63_q0;
assign tmp_3_fu_2810_p129 = 'bx;
assign tmp_3_fu_2810_p14 = weights1_6_q0;
assign tmp_3_fu_2810_p16 = weights1_7_q0;
assign tmp_3_fu_2810_p18 = weights1_8_q0;
assign tmp_3_fu_2810_p2 = weights1_0_q0;
assign tmp_3_fu_2810_p20 = weights1_9_q0;
assign tmp_3_fu_2810_p22 = weights1_10_q0;
assign tmp_3_fu_2810_p24 = weights1_11_q0;
assign tmp_3_fu_2810_p26 = weights1_12_q0;
assign tmp_3_fu_2810_p28 = weights1_13_q0;
assign tmp_3_fu_2810_p30 = weights1_14_q0;
assign tmp_3_fu_2810_p32 = weights1_15_q0;
assign tmp_3_fu_2810_p34 = weights1_16_q0;
assign tmp_3_fu_2810_p36 = weights1_17_q0;
assign tmp_3_fu_2810_p38 = weights1_18_q0;
assign tmp_3_fu_2810_p4 = weights1_1_q0;
assign tmp_3_fu_2810_p40 = weights1_19_q0;
assign tmp_3_fu_2810_p42 = weights1_20_q0;
assign tmp_3_fu_2810_p44 = weights1_21_q0;
assign tmp_3_fu_2810_p46 = weights1_22_q0;
assign tmp_3_fu_2810_p48 = weights1_23_q0;
assign tmp_3_fu_2810_p50 = weights1_24_q0;
assign tmp_3_fu_2810_p52 = weights1_25_q0;
assign tmp_3_fu_2810_p54 = weights1_26_q0;
assign tmp_3_fu_2810_p56 = weights1_27_q0;
assign tmp_3_fu_2810_p58 = weights1_28_q0;
assign tmp_3_fu_2810_p6 = weights1_2_q0;
assign tmp_3_fu_2810_p60 = weights1_29_q0;
assign tmp_3_fu_2810_p62 = weights1_30_q0;
assign tmp_3_fu_2810_p64 = weights1_31_q0;
assign tmp_3_fu_2810_p66 = weights1_32_q0;
assign tmp_3_fu_2810_p68 = weights1_33_q0;
assign tmp_3_fu_2810_p70 = weights1_34_q0;
assign tmp_3_fu_2810_p72 = weights1_35_q0;
assign tmp_3_fu_2810_p74 = weights1_36_q0;
assign tmp_3_fu_2810_p76 = weights1_37_q0;
assign tmp_3_fu_2810_p78 = weights1_38_q0;
assign tmp_3_fu_2810_p8 = weights1_3_q0;
assign tmp_3_fu_2810_p80 = weights1_39_q0;
assign tmp_3_fu_2810_p82 = weights1_40_q0;
assign tmp_3_fu_2810_p84 = weights1_41_q0;
assign tmp_3_fu_2810_p86 = weights1_42_q0;
assign tmp_3_fu_2810_p88 = weights1_43_q0;
assign tmp_3_fu_2810_p90 = weights1_44_q0;
assign tmp_3_fu_2810_p92 = weights1_45_q0;
assign tmp_3_fu_2810_p94 = weights1_46_q0;
assign tmp_3_fu_2810_p96 = weights1_47_q0;
assign tmp_3_fu_2810_p98 = weights1_48_q0;
assign trunc_ln127_fu_2269_p1 = select_ln121_fu_2179_p3[5:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_32_address0 = weights1_32_address0_local;
assign weights1_32_ce0 = weights1_32_ce0_local;
assign weights1_32_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_32_we0 = weights1_32_we0_local;
assign weights1_33_address0 = weights1_33_address0_local;
assign weights1_33_ce0 = weights1_33_ce0_local;
assign weights1_33_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_33_we0 = weights1_33_we0_local;
assign weights1_34_address0 = weights1_34_address0_local;
assign weights1_34_ce0 = weights1_34_ce0_local;
assign weights1_34_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_34_we0 = weights1_34_we0_local;
assign weights1_35_address0 = weights1_35_address0_local;
assign weights1_35_ce0 = weights1_35_ce0_local;
assign weights1_35_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_35_we0 = weights1_35_we0_local;
assign weights1_36_address0 = weights1_36_address0_local;
assign weights1_36_ce0 = weights1_36_ce0_local;
assign weights1_36_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_36_we0 = weights1_36_we0_local;
assign weights1_37_address0 = weights1_37_address0_local;
assign weights1_37_ce0 = weights1_37_ce0_local;
assign weights1_37_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_37_we0 = weights1_37_we0_local;
assign weights1_38_address0 = weights1_38_address0_local;
assign weights1_38_ce0 = weights1_38_ce0_local;
assign weights1_38_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_38_we0 = weights1_38_we0_local;
assign weights1_39_address0 = weights1_39_address0_local;
assign weights1_39_ce0 = weights1_39_ce0_local;
assign weights1_39_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_39_we0 = weights1_39_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_40_address0 = weights1_40_address0_local;
assign weights1_40_ce0 = weights1_40_ce0_local;
assign weights1_40_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_40_we0 = weights1_40_we0_local;
assign weights1_41_address0 = weights1_41_address0_local;
assign weights1_41_ce0 = weights1_41_ce0_local;
assign weights1_41_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_41_we0 = weights1_41_we0_local;
assign weights1_42_address0 = weights1_42_address0_local;
assign weights1_42_ce0 = weights1_42_ce0_local;
assign weights1_42_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_42_we0 = weights1_42_we0_local;
assign weights1_43_address0 = weights1_43_address0_local;
assign weights1_43_ce0 = weights1_43_ce0_local;
assign weights1_43_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_43_we0 = weights1_43_we0_local;
assign weights1_44_address0 = weights1_44_address0_local;
assign weights1_44_ce0 = weights1_44_ce0_local;
assign weights1_44_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_44_we0 = weights1_44_we0_local;
assign weights1_45_address0 = weights1_45_address0_local;
assign weights1_45_ce0 = weights1_45_ce0_local;
assign weights1_45_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_45_we0 = weights1_45_we0_local;
assign weights1_46_address0 = weights1_46_address0_local;
assign weights1_46_ce0 = weights1_46_ce0_local;
assign weights1_46_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_46_we0 = weights1_46_we0_local;
assign weights1_47_address0 = weights1_47_address0_local;
assign weights1_47_ce0 = weights1_47_ce0_local;
assign weights1_47_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_47_we0 = weights1_47_we0_local;
assign weights1_48_address0 = weights1_48_address0_local;
assign weights1_48_ce0 = weights1_48_ce0_local;
assign weights1_48_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_48_we0 = weights1_48_we0_local;
assign weights1_49_address0 = weights1_49_address0_local;
assign weights1_49_ce0 = weights1_49_ce0_local;
assign weights1_49_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_49_we0 = weights1_49_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_50_address0 = weights1_50_address0_local;
assign weights1_50_ce0 = weights1_50_ce0_local;
assign weights1_50_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_50_we0 = weights1_50_we0_local;
assign weights1_51_address0 = weights1_51_address0_local;
assign weights1_51_ce0 = weights1_51_ce0_local;
assign weights1_51_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_51_we0 = weights1_51_we0_local;
assign weights1_52_address0 = weights1_52_address0_local;
assign weights1_52_ce0 = weights1_52_ce0_local;
assign weights1_52_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_52_we0 = weights1_52_we0_local;
assign weights1_53_address0 = weights1_53_address0_local;
assign weights1_53_ce0 = weights1_53_ce0_local;
assign weights1_53_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_53_we0 = weights1_53_we0_local;
assign weights1_54_address0 = weights1_54_address0_local;
assign weights1_54_ce0 = weights1_54_ce0_local;
assign weights1_54_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_54_we0 = weights1_54_we0_local;
assign weights1_55_address0 = weights1_55_address0_local;
assign weights1_55_ce0 = weights1_55_ce0_local;
assign weights1_55_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_55_we0 = weights1_55_we0_local;
assign weights1_56_address0 = weights1_56_address0_local;
assign weights1_56_ce0 = weights1_56_ce0_local;
assign weights1_56_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_56_we0 = weights1_56_we0_local;
assign weights1_57_address0 = weights1_57_address0_local;
assign weights1_57_ce0 = weights1_57_ce0_local;
assign weights1_57_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_57_we0 = weights1_57_we0_local;
assign weights1_58_address0 = weights1_58_address0_local;
assign weights1_58_ce0 = weights1_58_ce0_local;
assign weights1_58_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_58_we0 = weights1_58_we0_local;
assign weights1_59_address0 = weights1_59_address0_local;
assign weights1_59_ce0 = weights1_59_ce0_local;
assign weights1_59_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_59_we0 = weights1_59_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_60_address0 = weights1_60_address0_local;
assign weights1_60_ce0 = weights1_60_ce0_local;
assign weights1_60_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_60_we0 = weights1_60_we0_local;
assign weights1_61_address0 = weights1_61_address0_local;
assign weights1_61_ce0 = weights1_61_ce0_local;
assign weights1_61_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_61_we0 = weights1_61_we0_local;
assign weights1_62_address0 = weights1_62_address0_local;
assign weights1_62_ce0 = weights1_62_ce0_local;
assign weights1_62_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_62_we0 = weights1_62_we0_local;
assign weights1_63_address0 = weights1_63_address0_local;
assign weights1_63_ce0 = weights1_63_ce0_local;
assign weights1_63_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_63_we0 = weights1_63_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_64_fu_3073_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln126_fu_2201_p1 = select_ln126_fu_2193_p3;
always @ (posedge ap_clk) begin
    zext_ln126_reg_3201[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
