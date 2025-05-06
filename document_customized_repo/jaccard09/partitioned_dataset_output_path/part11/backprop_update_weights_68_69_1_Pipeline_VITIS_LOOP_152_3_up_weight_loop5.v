
module backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,d_weights2_16_address0,d_weights2_16_ce0,d_weights2_16_q0,d_weights2_17_address0,d_weights2_17_ce0,d_weights2_17_q0,d_weights2_18_address0,d_weights2_18_ce0,d_weights2_18_q0,d_weights2_19_address0,d_weights2_19_ce0,d_weights2_19_q0,d_weights2_20_address0,d_weights2_20_ce0,d_weights2_20_q0,d_weights2_21_address0,d_weights2_21_ce0,d_weights2_21_q0,d_weights2_22_address0,d_weights2_22_ce0,d_weights2_22_q0,d_weights2_23_address0,d_weights2_23_ce0,d_weights2_23_q0,d_weights2_24_address0,d_weights2_24_ce0,d_weights2_24_q0,d_weights2_25_address0,d_weights2_25_ce0,d_weights2_25_q0,d_weights2_26_address0,d_weights2_26_ce0,d_weights2_26_q0,d_weights2_27_address0,d_weights2_27_ce0,d_weights2_27_q0,d_weights2_28_address0,d_weights2_28_ce0,d_weights2_28_q0,d_weights2_29_address0,d_weights2_29_ce0,d_weights2_29_q0,d_weights2_30_address0,d_weights2_30_ce0,d_weights2_30_q0,d_weights2_31_address0,d_weights2_31_ce0,d_weights2_31_q0,d_weights2_32_address0,d_weights2_32_ce0,d_weights2_32_q0,d_weights2_33_address0,d_weights2_33_ce0,d_weights2_33_q0,d_weights2_34_address0,d_weights2_34_ce0,d_weights2_34_q0,d_weights2_35_address0,d_weights2_35_ce0,d_weights2_35_q0,d_weights2_36_address0,d_weights2_36_ce0,d_weights2_36_q0,d_weights2_37_address0,d_weights2_37_ce0,d_weights2_37_q0,d_weights2_38_address0,d_weights2_38_ce0,d_weights2_38_q0,d_weights2_39_address0,d_weights2_39_ce0,d_weights2_39_q0,d_weights2_40_address0,d_weights2_40_ce0,d_weights2_40_q0,d_weights2_41_address0,d_weights2_41_ce0,d_weights2_41_q0,d_weights2_42_address0,d_weights2_42_ce0,d_weights2_42_q0,d_weights2_43_address0,d_weights2_43_ce0,d_weights2_43_q0,d_weights2_44_address0,d_weights2_44_ce0,d_weights2_44_q0,d_weights2_45_address0,d_weights2_45_ce0,d_weights2_45_q0,d_weights2_46_address0,d_weights2_46_ce0,d_weights2_46_q0,d_weights2_47_address0,d_weights2_47_ce0,d_weights2_47_q0,d_weights2_48_address0,d_weights2_48_ce0,d_weights2_48_q0,d_weights2_49_address0,d_weights2_49_ce0,d_weights2_49_q0,d_weights2_50_address0,d_weights2_50_ce0,d_weights2_50_q0,d_weights2_51_address0,d_weights2_51_ce0,d_weights2_51_q0,d_weights2_52_address0,d_weights2_52_ce0,d_weights2_52_q0,d_weights2_53_address0,d_weights2_53_ce0,d_weights2_53_q0,d_weights2_54_address0,d_weights2_54_ce0,d_weights2_54_q0,d_weights2_55_address0,d_weights2_55_ce0,d_weights2_55_q0,d_weights2_56_address0,d_weights2_56_ce0,d_weights2_56_q0,d_weights2_57_address0,d_weights2_57_ce0,d_weights2_57_q0,d_weights2_58_address0,d_weights2_58_ce0,d_weights2_58_q0,d_weights2_59_address0,d_weights2_59_ce0,d_weights2_59_q0,d_weights2_60_address0,d_weights2_60_ce0,d_weights2_60_q0,d_weights2_61_address0,d_weights2_61_ce0,d_weights2_61_q0,d_weights2_62_address0,d_weights2_62_ce0,d_weights2_62_q0,d_weights2_63_address0,d_weights2_63_ce0,d_weights2_63_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_16_address0,weights2_16_ce0,weights2_16_we0,weights2_16_d0,weights2_16_q0,weights2_17_address0,weights2_17_ce0,weights2_17_we0,weights2_17_d0,weights2_17_q0,weights2_18_address0,weights2_18_ce0,weights2_18_we0,weights2_18_d0,weights2_18_q0,weights2_19_address0,weights2_19_ce0,weights2_19_we0,weights2_19_d0,weights2_19_q0,weights2_20_address0,weights2_20_ce0,weights2_20_we0,weights2_20_d0,weights2_20_q0,weights2_21_address0,weights2_21_ce0,weights2_21_we0,weights2_21_d0,weights2_21_q0,weights2_22_address0,weights2_22_ce0,weights2_22_we0,weights2_22_d0,weights2_22_q0,weights2_23_address0,weights2_23_ce0,weights2_23_we0,weights2_23_d0,weights2_23_q0,weights2_24_address0,weights2_24_ce0,weights2_24_we0,weights2_24_d0,weights2_24_q0,weights2_25_address0,weights2_25_ce0,weights2_25_we0,weights2_25_d0,weights2_25_q0,weights2_26_address0,weights2_26_ce0,weights2_26_we0,weights2_26_d0,weights2_26_q0,weights2_27_address0,weights2_27_ce0,weights2_27_we0,weights2_27_d0,weights2_27_q0,weights2_28_address0,weights2_28_ce0,weights2_28_we0,weights2_28_d0,weights2_28_q0,weights2_29_address0,weights2_29_ce0,weights2_29_we0,weights2_29_d0,weights2_29_q0,weights2_30_address0,weights2_30_ce0,weights2_30_we0,weights2_30_d0,weights2_30_q0,weights2_31_address0,weights2_31_ce0,weights2_31_we0,weights2_31_d0,weights2_31_q0,weights2_32_address0,weights2_32_ce0,weights2_32_we0,weights2_32_d0,weights2_32_q0,weights2_33_address0,weights2_33_ce0,weights2_33_we0,weights2_33_d0,weights2_33_q0,weights2_34_address0,weights2_34_ce0,weights2_34_we0,weights2_34_d0,weights2_34_q0,weights2_35_address0,weights2_35_ce0,weights2_35_we0,weights2_35_d0,weights2_35_q0,weights2_36_address0,weights2_36_ce0,weights2_36_we0,weights2_36_d0,weights2_36_q0,weights2_37_address0,weights2_37_ce0,weights2_37_we0,weights2_37_d0,weights2_37_q0,weights2_38_address0,weights2_38_ce0,weights2_38_we0,weights2_38_d0,weights2_38_q0,weights2_39_address0,weights2_39_ce0,weights2_39_we0,weights2_39_d0,weights2_39_q0,weights2_40_address0,weights2_40_ce0,weights2_40_we0,weights2_40_d0,weights2_40_q0,weights2_41_address0,weights2_41_ce0,weights2_41_we0,weights2_41_d0,weights2_41_q0,weights2_42_address0,weights2_42_ce0,weights2_42_we0,weights2_42_d0,weights2_42_q0,weights2_43_address0,weights2_43_ce0,weights2_43_we0,weights2_43_d0,weights2_43_q0,weights2_44_address0,weights2_44_ce0,weights2_44_we0,weights2_44_d0,weights2_44_q0,weights2_45_address0,weights2_45_ce0,weights2_45_we0,weights2_45_d0,weights2_45_q0,weights2_46_address0,weights2_46_ce0,weights2_46_we0,weights2_46_d0,weights2_46_q0,weights2_47_address0,weights2_47_ce0,weights2_47_we0,weights2_47_d0,weights2_47_q0,weights2_48_address0,weights2_48_ce0,weights2_48_we0,weights2_48_d0,weights2_48_q0,weights2_49_address0,weights2_49_ce0,weights2_49_we0,weights2_49_d0,weights2_49_q0,weights2_50_address0,weights2_50_ce0,weights2_50_we0,weights2_50_d0,weights2_50_q0,weights2_51_address0,weights2_51_ce0,weights2_51_we0,weights2_51_d0,weights2_51_q0,weights2_52_address0,weights2_52_ce0,weights2_52_we0,weights2_52_d0,weights2_52_q0,weights2_53_address0,weights2_53_ce0,weights2_53_we0,weights2_53_d0,weights2_53_q0,weights2_54_address0,weights2_54_ce0,weights2_54_we0,weights2_54_d0,weights2_54_q0,weights2_55_address0,weights2_55_ce0,weights2_55_we0,weights2_55_d0,weights2_55_q0,weights2_56_address0,weights2_56_ce0,weights2_56_we0,weights2_56_d0,weights2_56_q0,weights2_57_address0,weights2_57_ce0,weights2_57_we0,weights2_57_d0,weights2_57_q0,weights2_58_address0,weights2_58_ce0,weights2_58_we0,weights2_58_d0,weights2_58_q0,weights2_59_address0,weights2_59_ce0,weights2_59_we0,weights2_59_d0,weights2_59_q0,weights2_60_address0,weights2_60_ce0,weights2_60_we0,weights2_60_d0,weights2_60_q0,weights2_61_address0,weights2_61_ce0,weights2_61_we0,weights2_61_d0,weights2_61_q0,weights2_62_address0,weights2_62_ce0,weights2_62_we0,weights2_62_d0,weights2_62_q0,weights2_63_address0,weights2_63_ce0,weights2_63_we0,weights2_63_d0,weights2_63_q0,norm_4_out,norm_4_out_ap_vld,grp_fu_4935_p_din0,grp_fu_4935_p_din1,grp_fu_4935_p_opcode,grp_fu_4935_p_dout0,grp_fu_4935_p_ce,grp_fu_4939_p_din0,grp_fu_4939_p_din1,grp_fu_4939_p_dout0,grp_fu_4939_p_ce);  
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
output  [5:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [5:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [5:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [5:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [5:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [5:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [5:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [5:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [5:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [5:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [5:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [5:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [5:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [5:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [5:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [5:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [5:0] d_weights2_16_address0;
output   d_weights2_16_ce0;
input  [63:0] d_weights2_16_q0;
output  [5:0] d_weights2_17_address0;
output   d_weights2_17_ce0;
input  [63:0] d_weights2_17_q0;
output  [5:0] d_weights2_18_address0;
output   d_weights2_18_ce0;
input  [63:0] d_weights2_18_q0;
output  [5:0] d_weights2_19_address0;
output   d_weights2_19_ce0;
input  [63:0] d_weights2_19_q0;
output  [5:0] d_weights2_20_address0;
output   d_weights2_20_ce0;
input  [63:0] d_weights2_20_q0;
output  [5:0] d_weights2_21_address0;
output   d_weights2_21_ce0;
input  [63:0] d_weights2_21_q0;
output  [5:0] d_weights2_22_address0;
output   d_weights2_22_ce0;
input  [63:0] d_weights2_22_q0;
output  [5:0] d_weights2_23_address0;
output   d_weights2_23_ce0;
input  [63:0] d_weights2_23_q0;
output  [5:0] d_weights2_24_address0;
output   d_weights2_24_ce0;
input  [63:0] d_weights2_24_q0;
output  [5:0] d_weights2_25_address0;
output   d_weights2_25_ce0;
input  [63:0] d_weights2_25_q0;
output  [5:0] d_weights2_26_address0;
output   d_weights2_26_ce0;
input  [63:0] d_weights2_26_q0;
output  [5:0] d_weights2_27_address0;
output   d_weights2_27_ce0;
input  [63:0] d_weights2_27_q0;
output  [5:0] d_weights2_28_address0;
output   d_weights2_28_ce0;
input  [63:0] d_weights2_28_q0;
output  [5:0] d_weights2_29_address0;
output   d_weights2_29_ce0;
input  [63:0] d_weights2_29_q0;
output  [5:0] d_weights2_30_address0;
output   d_weights2_30_ce0;
input  [63:0] d_weights2_30_q0;
output  [5:0] d_weights2_31_address0;
output   d_weights2_31_ce0;
input  [63:0] d_weights2_31_q0;
output  [5:0] d_weights2_32_address0;
output   d_weights2_32_ce0;
input  [63:0] d_weights2_32_q0;
output  [5:0] d_weights2_33_address0;
output   d_weights2_33_ce0;
input  [63:0] d_weights2_33_q0;
output  [5:0] d_weights2_34_address0;
output   d_weights2_34_ce0;
input  [63:0] d_weights2_34_q0;
output  [5:0] d_weights2_35_address0;
output   d_weights2_35_ce0;
input  [63:0] d_weights2_35_q0;
output  [5:0] d_weights2_36_address0;
output   d_weights2_36_ce0;
input  [63:0] d_weights2_36_q0;
output  [5:0] d_weights2_37_address0;
output   d_weights2_37_ce0;
input  [63:0] d_weights2_37_q0;
output  [5:0] d_weights2_38_address0;
output   d_weights2_38_ce0;
input  [63:0] d_weights2_38_q0;
output  [5:0] d_weights2_39_address0;
output   d_weights2_39_ce0;
input  [63:0] d_weights2_39_q0;
output  [5:0] d_weights2_40_address0;
output   d_weights2_40_ce0;
input  [63:0] d_weights2_40_q0;
output  [5:0] d_weights2_41_address0;
output   d_weights2_41_ce0;
input  [63:0] d_weights2_41_q0;
output  [5:0] d_weights2_42_address0;
output   d_weights2_42_ce0;
input  [63:0] d_weights2_42_q0;
output  [5:0] d_weights2_43_address0;
output   d_weights2_43_ce0;
input  [63:0] d_weights2_43_q0;
output  [5:0] d_weights2_44_address0;
output   d_weights2_44_ce0;
input  [63:0] d_weights2_44_q0;
output  [5:0] d_weights2_45_address0;
output   d_weights2_45_ce0;
input  [63:0] d_weights2_45_q0;
output  [5:0] d_weights2_46_address0;
output   d_weights2_46_ce0;
input  [63:0] d_weights2_46_q0;
output  [5:0] d_weights2_47_address0;
output   d_weights2_47_ce0;
input  [63:0] d_weights2_47_q0;
output  [5:0] d_weights2_48_address0;
output   d_weights2_48_ce0;
input  [63:0] d_weights2_48_q0;
output  [5:0] d_weights2_49_address0;
output   d_weights2_49_ce0;
input  [63:0] d_weights2_49_q0;
output  [5:0] d_weights2_50_address0;
output   d_weights2_50_ce0;
input  [63:0] d_weights2_50_q0;
output  [5:0] d_weights2_51_address0;
output   d_weights2_51_ce0;
input  [63:0] d_weights2_51_q0;
output  [5:0] d_weights2_52_address0;
output   d_weights2_52_ce0;
input  [63:0] d_weights2_52_q0;
output  [5:0] d_weights2_53_address0;
output   d_weights2_53_ce0;
input  [63:0] d_weights2_53_q0;
output  [5:0] d_weights2_54_address0;
output   d_weights2_54_ce0;
input  [63:0] d_weights2_54_q0;
output  [5:0] d_weights2_55_address0;
output   d_weights2_55_ce0;
input  [63:0] d_weights2_55_q0;
output  [5:0] d_weights2_56_address0;
output   d_weights2_56_ce0;
input  [63:0] d_weights2_56_q0;
output  [5:0] d_weights2_57_address0;
output   d_weights2_57_ce0;
input  [63:0] d_weights2_57_q0;
output  [5:0] d_weights2_58_address0;
output   d_weights2_58_ce0;
input  [63:0] d_weights2_58_q0;
output  [5:0] d_weights2_59_address0;
output   d_weights2_59_ce0;
input  [63:0] d_weights2_59_q0;
output  [5:0] d_weights2_60_address0;
output   d_weights2_60_ce0;
input  [63:0] d_weights2_60_q0;
output  [5:0] d_weights2_61_address0;
output   d_weights2_61_ce0;
input  [63:0] d_weights2_61_q0;
output  [5:0] d_weights2_62_address0;
output   d_weights2_62_ce0;
input  [63:0] d_weights2_62_q0;
output  [5:0] d_weights2_63_address0;
output   d_weights2_63_ce0;
input  [63:0] d_weights2_63_q0;
output  [5:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [5:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [5:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [5:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [5:0] weights2_4_address0;
output   weights2_4_ce0;
output   weights2_4_we0;
output  [63:0] weights2_4_d0;
input  [63:0] weights2_4_q0;
output  [5:0] weights2_5_address0;
output   weights2_5_ce0;
output   weights2_5_we0;
output  [63:0] weights2_5_d0;
input  [63:0] weights2_5_q0;
output  [5:0] weights2_6_address0;
output   weights2_6_ce0;
output   weights2_6_we0;
output  [63:0] weights2_6_d0;
input  [63:0] weights2_6_q0;
output  [5:0] weights2_7_address0;
output   weights2_7_ce0;
output   weights2_7_we0;
output  [63:0] weights2_7_d0;
input  [63:0] weights2_7_q0;
output  [5:0] weights2_8_address0;
output   weights2_8_ce0;
output   weights2_8_we0;
output  [63:0] weights2_8_d0;
input  [63:0] weights2_8_q0;
output  [5:0] weights2_9_address0;
output   weights2_9_ce0;
output   weights2_9_we0;
output  [63:0] weights2_9_d0;
input  [63:0] weights2_9_q0;
output  [5:0] weights2_10_address0;
output   weights2_10_ce0;
output   weights2_10_we0;
output  [63:0] weights2_10_d0;
input  [63:0] weights2_10_q0;
output  [5:0] weights2_11_address0;
output   weights2_11_ce0;
output   weights2_11_we0;
output  [63:0] weights2_11_d0;
input  [63:0] weights2_11_q0;
output  [5:0] weights2_12_address0;
output   weights2_12_ce0;
output   weights2_12_we0;
output  [63:0] weights2_12_d0;
input  [63:0] weights2_12_q0;
output  [5:0] weights2_13_address0;
output   weights2_13_ce0;
output   weights2_13_we0;
output  [63:0] weights2_13_d0;
input  [63:0] weights2_13_q0;
output  [5:0] weights2_14_address0;
output   weights2_14_ce0;
output   weights2_14_we0;
output  [63:0] weights2_14_d0;
input  [63:0] weights2_14_q0;
output  [5:0] weights2_15_address0;
output   weights2_15_ce0;
output   weights2_15_we0;
output  [63:0] weights2_15_d0;
input  [63:0] weights2_15_q0;
output  [5:0] weights2_16_address0;
output   weights2_16_ce0;
output   weights2_16_we0;
output  [63:0] weights2_16_d0;
input  [63:0] weights2_16_q0;
output  [5:0] weights2_17_address0;
output   weights2_17_ce0;
output   weights2_17_we0;
output  [63:0] weights2_17_d0;
input  [63:0] weights2_17_q0;
output  [5:0] weights2_18_address0;
output   weights2_18_ce0;
output   weights2_18_we0;
output  [63:0] weights2_18_d0;
input  [63:0] weights2_18_q0;
output  [5:0] weights2_19_address0;
output   weights2_19_ce0;
output   weights2_19_we0;
output  [63:0] weights2_19_d0;
input  [63:0] weights2_19_q0;
output  [5:0] weights2_20_address0;
output   weights2_20_ce0;
output   weights2_20_we0;
output  [63:0] weights2_20_d0;
input  [63:0] weights2_20_q0;
output  [5:0] weights2_21_address0;
output   weights2_21_ce0;
output   weights2_21_we0;
output  [63:0] weights2_21_d0;
input  [63:0] weights2_21_q0;
output  [5:0] weights2_22_address0;
output   weights2_22_ce0;
output   weights2_22_we0;
output  [63:0] weights2_22_d0;
input  [63:0] weights2_22_q0;
output  [5:0] weights2_23_address0;
output   weights2_23_ce0;
output   weights2_23_we0;
output  [63:0] weights2_23_d0;
input  [63:0] weights2_23_q0;
output  [5:0] weights2_24_address0;
output   weights2_24_ce0;
output   weights2_24_we0;
output  [63:0] weights2_24_d0;
input  [63:0] weights2_24_q0;
output  [5:0] weights2_25_address0;
output   weights2_25_ce0;
output   weights2_25_we0;
output  [63:0] weights2_25_d0;
input  [63:0] weights2_25_q0;
output  [5:0] weights2_26_address0;
output   weights2_26_ce0;
output   weights2_26_we0;
output  [63:0] weights2_26_d0;
input  [63:0] weights2_26_q0;
output  [5:0] weights2_27_address0;
output   weights2_27_ce0;
output   weights2_27_we0;
output  [63:0] weights2_27_d0;
input  [63:0] weights2_27_q0;
output  [5:0] weights2_28_address0;
output   weights2_28_ce0;
output   weights2_28_we0;
output  [63:0] weights2_28_d0;
input  [63:0] weights2_28_q0;
output  [5:0] weights2_29_address0;
output   weights2_29_ce0;
output   weights2_29_we0;
output  [63:0] weights2_29_d0;
input  [63:0] weights2_29_q0;
output  [5:0] weights2_30_address0;
output   weights2_30_ce0;
output   weights2_30_we0;
output  [63:0] weights2_30_d0;
input  [63:0] weights2_30_q0;
output  [5:0] weights2_31_address0;
output   weights2_31_ce0;
output   weights2_31_we0;
output  [63:0] weights2_31_d0;
input  [63:0] weights2_31_q0;
output  [5:0] weights2_32_address0;
output   weights2_32_ce0;
output   weights2_32_we0;
output  [63:0] weights2_32_d0;
input  [63:0] weights2_32_q0;
output  [5:0] weights2_33_address0;
output   weights2_33_ce0;
output   weights2_33_we0;
output  [63:0] weights2_33_d0;
input  [63:0] weights2_33_q0;
output  [5:0] weights2_34_address0;
output   weights2_34_ce0;
output   weights2_34_we0;
output  [63:0] weights2_34_d0;
input  [63:0] weights2_34_q0;
output  [5:0] weights2_35_address0;
output   weights2_35_ce0;
output   weights2_35_we0;
output  [63:0] weights2_35_d0;
input  [63:0] weights2_35_q0;
output  [5:0] weights2_36_address0;
output   weights2_36_ce0;
output   weights2_36_we0;
output  [63:0] weights2_36_d0;
input  [63:0] weights2_36_q0;
output  [5:0] weights2_37_address0;
output   weights2_37_ce0;
output   weights2_37_we0;
output  [63:0] weights2_37_d0;
input  [63:0] weights2_37_q0;
output  [5:0] weights2_38_address0;
output   weights2_38_ce0;
output   weights2_38_we0;
output  [63:0] weights2_38_d0;
input  [63:0] weights2_38_q0;
output  [5:0] weights2_39_address0;
output   weights2_39_ce0;
output   weights2_39_we0;
output  [63:0] weights2_39_d0;
input  [63:0] weights2_39_q0;
output  [5:0] weights2_40_address0;
output   weights2_40_ce0;
output   weights2_40_we0;
output  [63:0] weights2_40_d0;
input  [63:0] weights2_40_q0;
output  [5:0] weights2_41_address0;
output   weights2_41_ce0;
output   weights2_41_we0;
output  [63:0] weights2_41_d0;
input  [63:0] weights2_41_q0;
output  [5:0] weights2_42_address0;
output   weights2_42_ce0;
output   weights2_42_we0;
output  [63:0] weights2_42_d0;
input  [63:0] weights2_42_q0;
output  [5:0] weights2_43_address0;
output   weights2_43_ce0;
output   weights2_43_we0;
output  [63:0] weights2_43_d0;
input  [63:0] weights2_43_q0;
output  [5:0] weights2_44_address0;
output   weights2_44_ce0;
output   weights2_44_we0;
output  [63:0] weights2_44_d0;
input  [63:0] weights2_44_q0;
output  [5:0] weights2_45_address0;
output   weights2_45_ce0;
output   weights2_45_we0;
output  [63:0] weights2_45_d0;
input  [63:0] weights2_45_q0;
output  [5:0] weights2_46_address0;
output   weights2_46_ce0;
output   weights2_46_we0;
output  [63:0] weights2_46_d0;
input  [63:0] weights2_46_q0;
output  [5:0] weights2_47_address0;
output   weights2_47_ce0;
output   weights2_47_we0;
output  [63:0] weights2_47_d0;
input  [63:0] weights2_47_q0;
output  [5:0] weights2_48_address0;
output   weights2_48_ce0;
output   weights2_48_we0;
output  [63:0] weights2_48_d0;
input  [63:0] weights2_48_q0;
output  [5:0] weights2_49_address0;
output   weights2_49_ce0;
output   weights2_49_we0;
output  [63:0] weights2_49_d0;
input  [63:0] weights2_49_q0;
output  [5:0] weights2_50_address0;
output   weights2_50_ce0;
output   weights2_50_we0;
output  [63:0] weights2_50_d0;
input  [63:0] weights2_50_q0;
output  [5:0] weights2_51_address0;
output   weights2_51_ce0;
output   weights2_51_we0;
output  [63:0] weights2_51_d0;
input  [63:0] weights2_51_q0;
output  [5:0] weights2_52_address0;
output   weights2_52_ce0;
output   weights2_52_we0;
output  [63:0] weights2_52_d0;
input  [63:0] weights2_52_q0;
output  [5:0] weights2_53_address0;
output   weights2_53_ce0;
output   weights2_53_we0;
output  [63:0] weights2_53_d0;
input  [63:0] weights2_53_q0;
output  [5:0] weights2_54_address0;
output   weights2_54_ce0;
output   weights2_54_we0;
output  [63:0] weights2_54_d0;
input  [63:0] weights2_54_q0;
output  [5:0] weights2_55_address0;
output   weights2_55_ce0;
output   weights2_55_we0;
output  [63:0] weights2_55_d0;
input  [63:0] weights2_55_q0;
output  [5:0] weights2_56_address0;
output   weights2_56_ce0;
output   weights2_56_we0;
output  [63:0] weights2_56_d0;
input  [63:0] weights2_56_q0;
output  [5:0] weights2_57_address0;
output   weights2_57_ce0;
output   weights2_57_we0;
output  [63:0] weights2_57_d0;
input  [63:0] weights2_57_q0;
output  [5:0] weights2_58_address0;
output   weights2_58_ce0;
output   weights2_58_we0;
output  [63:0] weights2_58_d0;
input  [63:0] weights2_58_q0;
output  [5:0] weights2_59_address0;
output   weights2_59_ce0;
output   weights2_59_we0;
output  [63:0] weights2_59_d0;
input  [63:0] weights2_59_q0;
output  [5:0] weights2_60_address0;
output   weights2_60_ce0;
output   weights2_60_we0;
output  [63:0] weights2_60_d0;
input  [63:0] weights2_60_q0;
output  [5:0] weights2_61_address0;
output   weights2_61_ce0;
output   weights2_61_we0;
output  [63:0] weights2_61_d0;
input  [63:0] weights2_61_q0;
output  [5:0] weights2_62_address0;
output   weights2_62_ce0;
output   weights2_62_we0;
output  [63:0] weights2_62_d0;
input  [63:0] weights2_62_q0;
output  [5:0] weights2_63_address0;
output   weights2_63_ce0;
output   weights2_63_we0;
output  [63:0] weights2_63_d0;
input  [63:0] weights2_63_q0;
output  [63:0] norm_4_out;
output   norm_4_out_ap_vld;
output  [63:0] grp_fu_4935_p_din0;
output  [63:0] grp_fu_4935_p_din1;
output  [1:0] grp_fu_4935_p_opcode;
input  [63:0] grp_fu_4935_p_dout0;
output   grp_fu_4935_p_ce;
output  [63:0] grp_fu_4939_p_din0;
output  [63:0] grp_fu_4939_p_din1;
input  [63:0] grp_fu_4939_p_dout0;
output   grp_fu_4939_p_ce;
reg ap_idle;
reg norm_4_out_ap_vld;
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
reg   [0:0] icmp_ln152_reg_3178;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln152_fu_2151_p2;
reg   [0:0] icmp_ln152_reg_3178_pp0_iter1_reg;
reg   [0:0] icmp_ln152_reg_3178_pp0_iter2_reg;
reg   [0:0] icmp_ln152_reg_3178_pp0_iter3_reg;
wire   [12:0] add_ln152_fu_2157_p2;
reg   [12:0] add_ln152_reg_3182;
wire   [0:0] icmp_ln153_fu_2166_p2;
reg   [0:0] icmp_ln153_reg_3187;
wire   [6:0] select_ln121_fu_2172_p3;
reg   [6:0] select_ln121_reg_3192;
wire   [5:0] trunc_ln153_fu_2180_p1;
reg   [5:0] trunc_ln153_reg_3197;
reg   [5:0] trunc_ln153_reg_3197_pp0_iter1_reg;
reg   [5:0] trunc_ln153_reg_3197_pp0_iter2_reg;
wire   [63:0] zext_ln152_fu_2200_p1;
reg   [63:0] zext_ln152_reg_3203;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_9_fu_2287_p131;
reg   [63:0] tmp_9_reg_3591;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [5:0] weights2_0_addr_reg_3596;
reg   [5:0] weights2_0_addr_reg_3596_pp0_iter2_reg;
reg   [5:0] weights2_1_addr_reg_3601;
reg   [5:0] weights2_1_addr_reg_3601_pp0_iter2_reg;
reg   [5:0] weights2_2_addr_reg_3606;
reg   [5:0] weights2_2_addr_reg_3606_pp0_iter2_reg;
reg   [5:0] weights2_3_addr_reg_3611;
reg   [5:0] weights2_3_addr_reg_3611_pp0_iter2_reg;
reg   [5:0] weights2_4_addr_reg_3616;
reg   [5:0] weights2_4_addr_reg_3616_pp0_iter2_reg;
reg   [5:0] weights2_5_addr_reg_3621;
reg   [5:0] weights2_5_addr_reg_3621_pp0_iter2_reg;
reg   [5:0] weights2_6_addr_reg_3626;
reg   [5:0] weights2_6_addr_reg_3626_pp0_iter2_reg;
reg   [5:0] weights2_7_addr_reg_3631;
reg   [5:0] weights2_7_addr_reg_3631_pp0_iter2_reg;
reg   [5:0] weights2_8_addr_reg_3636;
reg   [5:0] weights2_8_addr_reg_3636_pp0_iter2_reg;
reg   [5:0] weights2_9_addr_reg_3641;
reg   [5:0] weights2_9_addr_reg_3641_pp0_iter2_reg;
reg   [5:0] weights2_10_addr_reg_3646;
reg   [5:0] weights2_10_addr_reg_3646_pp0_iter2_reg;
reg   [5:0] weights2_11_addr_reg_3651;
reg   [5:0] weights2_11_addr_reg_3651_pp0_iter2_reg;
reg   [5:0] weights2_12_addr_reg_3656;
reg   [5:0] weights2_12_addr_reg_3656_pp0_iter2_reg;
reg   [5:0] weights2_13_addr_reg_3661;
reg   [5:0] weights2_13_addr_reg_3661_pp0_iter2_reg;
reg   [5:0] weights2_14_addr_reg_3666;
reg   [5:0] weights2_14_addr_reg_3666_pp0_iter2_reg;
reg   [5:0] weights2_15_addr_reg_3671;
reg   [5:0] weights2_15_addr_reg_3671_pp0_iter2_reg;
reg   [5:0] weights2_16_addr_reg_3676;
reg   [5:0] weights2_16_addr_reg_3676_pp0_iter2_reg;
reg   [5:0] weights2_17_addr_reg_3681;
reg   [5:0] weights2_17_addr_reg_3681_pp0_iter2_reg;
reg   [5:0] weights2_18_addr_reg_3686;
reg   [5:0] weights2_18_addr_reg_3686_pp0_iter2_reg;
reg   [5:0] weights2_19_addr_reg_3691;
reg   [5:0] weights2_19_addr_reg_3691_pp0_iter2_reg;
reg   [5:0] weights2_20_addr_reg_3696;
reg   [5:0] weights2_20_addr_reg_3696_pp0_iter2_reg;
reg   [5:0] weights2_21_addr_reg_3701;
reg   [5:0] weights2_21_addr_reg_3701_pp0_iter2_reg;
reg   [5:0] weights2_22_addr_reg_3706;
reg   [5:0] weights2_22_addr_reg_3706_pp0_iter2_reg;
reg   [5:0] weights2_23_addr_reg_3711;
reg   [5:0] weights2_23_addr_reg_3711_pp0_iter2_reg;
reg   [5:0] weights2_24_addr_reg_3716;
reg   [5:0] weights2_24_addr_reg_3716_pp0_iter2_reg;
reg   [5:0] weights2_25_addr_reg_3721;
reg   [5:0] weights2_25_addr_reg_3721_pp0_iter2_reg;
reg   [5:0] weights2_26_addr_reg_3726;
reg   [5:0] weights2_26_addr_reg_3726_pp0_iter2_reg;
reg   [5:0] weights2_27_addr_reg_3731;
reg   [5:0] weights2_27_addr_reg_3731_pp0_iter2_reg;
reg   [5:0] weights2_28_addr_reg_3736;
reg   [5:0] weights2_28_addr_reg_3736_pp0_iter2_reg;
reg   [5:0] weights2_29_addr_reg_3741;
reg   [5:0] weights2_29_addr_reg_3741_pp0_iter2_reg;
reg   [5:0] weights2_30_addr_reg_3746;
reg   [5:0] weights2_30_addr_reg_3746_pp0_iter2_reg;
reg   [5:0] weights2_31_addr_reg_3751;
reg   [5:0] weights2_31_addr_reg_3751_pp0_iter2_reg;
reg   [5:0] weights2_32_addr_reg_3756;
reg   [5:0] weights2_32_addr_reg_3756_pp0_iter2_reg;
reg   [5:0] weights2_33_addr_reg_3761;
reg   [5:0] weights2_33_addr_reg_3761_pp0_iter2_reg;
reg   [5:0] weights2_34_addr_reg_3766;
reg   [5:0] weights2_34_addr_reg_3766_pp0_iter2_reg;
reg   [5:0] weights2_35_addr_reg_3771;
reg   [5:0] weights2_35_addr_reg_3771_pp0_iter2_reg;
reg   [5:0] weights2_36_addr_reg_3776;
reg   [5:0] weights2_36_addr_reg_3776_pp0_iter2_reg;
reg   [5:0] weights2_37_addr_reg_3781;
reg   [5:0] weights2_37_addr_reg_3781_pp0_iter2_reg;
reg   [5:0] weights2_38_addr_reg_3786;
reg   [5:0] weights2_38_addr_reg_3786_pp0_iter2_reg;
reg   [5:0] weights2_39_addr_reg_3791;
reg   [5:0] weights2_39_addr_reg_3791_pp0_iter2_reg;
reg   [5:0] weights2_40_addr_reg_3796;
reg   [5:0] weights2_40_addr_reg_3796_pp0_iter2_reg;
reg   [5:0] weights2_41_addr_reg_3801;
reg   [5:0] weights2_41_addr_reg_3801_pp0_iter2_reg;
reg   [5:0] weights2_42_addr_reg_3806;
reg   [5:0] weights2_42_addr_reg_3806_pp0_iter2_reg;
reg   [5:0] weights2_43_addr_reg_3811;
reg   [5:0] weights2_43_addr_reg_3811_pp0_iter2_reg;
reg   [5:0] weights2_44_addr_reg_3816;
reg   [5:0] weights2_44_addr_reg_3816_pp0_iter2_reg;
reg   [5:0] weights2_45_addr_reg_3821;
reg   [5:0] weights2_45_addr_reg_3821_pp0_iter2_reg;
reg   [5:0] weights2_46_addr_reg_3826;
reg   [5:0] weights2_46_addr_reg_3826_pp0_iter2_reg;
reg   [5:0] weights2_47_addr_reg_3831;
reg   [5:0] weights2_47_addr_reg_3831_pp0_iter2_reg;
reg   [5:0] weights2_48_addr_reg_3836;
reg   [5:0] weights2_48_addr_reg_3836_pp0_iter2_reg;
reg   [5:0] weights2_49_addr_reg_3841;
reg   [5:0] weights2_49_addr_reg_3841_pp0_iter2_reg;
reg   [5:0] weights2_50_addr_reg_3846;
reg   [5:0] weights2_50_addr_reg_3846_pp0_iter2_reg;
reg   [5:0] weights2_51_addr_reg_3851;
reg   [5:0] weights2_51_addr_reg_3851_pp0_iter2_reg;
reg   [5:0] weights2_52_addr_reg_3856;
reg   [5:0] weights2_52_addr_reg_3856_pp0_iter2_reg;
reg   [5:0] weights2_53_addr_reg_3861;
reg   [5:0] weights2_53_addr_reg_3861_pp0_iter2_reg;
reg   [5:0] weights2_54_addr_reg_3866;
reg   [5:0] weights2_54_addr_reg_3866_pp0_iter2_reg;
reg   [5:0] weights2_55_addr_reg_3871;
reg   [5:0] weights2_55_addr_reg_3871_pp0_iter2_reg;
reg   [5:0] weights2_56_addr_reg_3876;
reg   [5:0] weights2_56_addr_reg_3876_pp0_iter2_reg;
reg   [5:0] weights2_57_addr_reg_3881;
reg   [5:0] weights2_57_addr_reg_3881_pp0_iter2_reg;
reg   [5:0] weights2_58_addr_reg_3886;
reg   [5:0] weights2_58_addr_reg_3886_pp0_iter2_reg;
reg   [5:0] weights2_59_addr_reg_3891;
reg   [5:0] weights2_59_addr_reg_3891_pp0_iter2_reg;
reg   [5:0] weights2_60_addr_reg_3896;
reg   [5:0] weights2_60_addr_reg_3896_pp0_iter2_reg;
reg   [5:0] weights2_61_addr_reg_3901;
reg   [5:0] weights2_61_addr_reg_3901_pp0_iter2_reg;
reg   [5:0] weights2_62_addr_reg_3906;
reg   [5:0] weights2_62_addr_reg_3906_pp0_iter2_reg;
reg   [5:0] weights2_63_addr_reg_3911;
reg   [5:0] weights2_63_addr_reg_3911_pp0_iter2_reg;
reg   [63:0] mul5_reg_3916;
wire   [63:0] tmp_s_fu_2806_p131;
reg   [63:0] tmp_s_reg_3921;
reg   [63:0] sub3_reg_3926;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul7_reg_3933;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_432;
reg   [63:0] ap_sig_allocacmp_norm_load_2;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_436;
wire   [6:0] add_ln153_fu_2268_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_4_fu_440;
wire   [6:0] select_ln152_fu_2193_p3;
reg   [12:0] indvar_flatten13_fu_444;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_1_ce0_local;
reg    d_weights2_2_ce0_local;
reg    d_weights2_3_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_15_ce0_local;
reg    d_weights2_16_ce0_local;
reg    d_weights2_17_ce0_local;
reg    d_weights2_18_ce0_local;
reg    d_weights2_19_ce0_local;
reg    d_weights2_20_ce0_local;
reg    d_weights2_21_ce0_local;
reg    d_weights2_22_ce0_local;
reg    d_weights2_23_ce0_local;
reg    d_weights2_24_ce0_local;
reg    d_weights2_25_ce0_local;
reg    d_weights2_26_ce0_local;
reg    d_weights2_27_ce0_local;
reg    d_weights2_28_ce0_local;
reg    d_weights2_29_ce0_local;
reg    d_weights2_30_ce0_local;
reg    d_weights2_31_ce0_local;
reg    d_weights2_32_ce0_local;
reg    d_weights2_33_ce0_local;
reg    d_weights2_34_ce0_local;
reg    d_weights2_35_ce0_local;
reg    d_weights2_36_ce0_local;
reg    d_weights2_37_ce0_local;
reg    d_weights2_38_ce0_local;
reg    d_weights2_39_ce0_local;
reg    d_weights2_40_ce0_local;
reg    d_weights2_41_ce0_local;
reg    d_weights2_42_ce0_local;
reg    d_weights2_43_ce0_local;
reg    d_weights2_44_ce0_local;
reg    d_weights2_45_ce0_local;
reg    d_weights2_46_ce0_local;
reg    d_weights2_47_ce0_local;
reg    d_weights2_48_ce0_local;
reg    d_weights2_49_ce0_local;
reg    d_weights2_50_ce0_local;
reg    d_weights2_51_ce0_local;
reg    d_weights2_52_ce0_local;
reg    d_weights2_53_ce0_local;
reg    d_weights2_54_ce0_local;
reg    d_weights2_55_ce0_local;
reg    d_weights2_56_ce0_local;
reg    d_weights2_57_ce0_local;
reg    d_weights2_58_ce0_local;
reg    d_weights2_59_ce0_local;
reg    d_weights2_60_ce0_local;
reg    d_weights2_61_ce0_local;
reg    d_weights2_62_ce0_local;
reg    d_weights2_63_ce0_local;
reg    weights2_0_ce0_local;
reg   [5:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
reg    ap_predicate_pred1976_state19;
wire   [63:0] bitcast_ln154_64_fu_3069_p1;
reg    weights2_1_ce0_local;
reg   [5:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
reg    ap_predicate_pred1988_state19;
reg    weights2_2_ce0_local;
reg   [5:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    ap_predicate_pred1997_state19;
reg    weights2_3_ce0_local;
reg   [5:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
reg    ap_predicate_pred2006_state19;
reg    weights2_4_ce0_local;
reg   [5:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    ap_predicate_pred2015_state19;
reg    weights2_5_ce0_local;
reg   [5:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    ap_predicate_pred2024_state19;
reg    weights2_6_ce0_local;
reg   [5:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    ap_predicate_pred2033_state19;
reg    weights2_7_ce0_local;
reg   [5:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    ap_predicate_pred2042_state19;
reg    weights2_8_ce0_local;
reg   [5:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    ap_predicate_pred2051_state19;
reg    weights2_9_ce0_local;
reg   [5:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    ap_predicate_pred2060_state19;
reg    weights2_10_ce0_local;
reg   [5:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    ap_predicate_pred2069_state19;
reg    weights2_11_ce0_local;
reg   [5:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    ap_predicate_pred2078_state19;
reg    weights2_12_ce0_local;
reg   [5:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    ap_predicate_pred2087_state19;
reg    weights2_13_ce0_local;
reg   [5:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    ap_predicate_pred2096_state19;
reg    weights2_14_ce0_local;
reg   [5:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    ap_predicate_pred2105_state19;
reg    weights2_15_ce0_local;
reg   [5:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg    ap_predicate_pred2114_state19;
reg    weights2_16_ce0_local;
reg   [5:0] weights2_16_address0_local;
reg    weights2_16_we0_local;
reg    ap_predicate_pred2123_state19;
reg    weights2_17_ce0_local;
reg   [5:0] weights2_17_address0_local;
reg    weights2_17_we0_local;
reg    ap_predicate_pred2132_state19;
reg    weights2_18_ce0_local;
reg   [5:0] weights2_18_address0_local;
reg    weights2_18_we0_local;
reg    ap_predicate_pred2141_state19;
reg    weights2_19_ce0_local;
reg   [5:0] weights2_19_address0_local;
reg    weights2_19_we0_local;
reg    ap_predicate_pred2150_state19;
reg    weights2_20_ce0_local;
reg   [5:0] weights2_20_address0_local;
reg    weights2_20_we0_local;
reg    ap_predicate_pred2159_state19;
reg    weights2_21_ce0_local;
reg   [5:0] weights2_21_address0_local;
reg    weights2_21_we0_local;
reg    ap_predicate_pred2168_state19;
reg    weights2_22_ce0_local;
reg   [5:0] weights2_22_address0_local;
reg    weights2_22_we0_local;
reg    ap_predicate_pred2177_state19;
reg    weights2_23_ce0_local;
reg   [5:0] weights2_23_address0_local;
reg    weights2_23_we0_local;
reg    ap_predicate_pred2186_state19;
reg    weights2_24_ce0_local;
reg   [5:0] weights2_24_address0_local;
reg    weights2_24_we0_local;
reg    ap_predicate_pred2195_state19;
reg    weights2_25_ce0_local;
reg   [5:0] weights2_25_address0_local;
reg    weights2_25_we0_local;
reg    ap_predicate_pred2204_state19;
reg    weights2_26_ce0_local;
reg   [5:0] weights2_26_address0_local;
reg    weights2_26_we0_local;
reg    ap_predicate_pred2213_state19;
reg    weights2_27_ce0_local;
reg   [5:0] weights2_27_address0_local;
reg    weights2_27_we0_local;
reg    ap_predicate_pred2222_state19;
reg    weights2_28_ce0_local;
reg   [5:0] weights2_28_address0_local;
reg    weights2_28_we0_local;
reg    ap_predicate_pred2231_state19;
reg    weights2_29_ce0_local;
reg   [5:0] weights2_29_address0_local;
reg    weights2_29_we0_local;
reg    ap_predicate_pred2240_state19;
reg    weights2_30_ce0_local;
reg   [5:0] weights2_30_address0_local;
reg    weights2_30_we0_local;
reg    ap_predicate_pred2249_state19;
reg    weights2_31_ce0_local;
reg   [5:0] weights2_31_address0_local;
reg    weights2_31_we0_local;
reg    ap_predicate_pred2258_state19;
reg    weights2_32_ce0_local;
reg   [5:0] weights2_32_address0_local;
reg    weights2_32_we0_local;
reg    ap_predicate_pred2267_state19;
reg    weights2_33_ce0_local;
reg   [5:0] weights2_33_address0_local;
reg    weights2_33_we0_local;
reg    ap_predicate_pred2276_state19;
reg    weights2_34_ce0_local;
reg   [5:0] weights2_34_address0_local;
reg    weights2_34_we0_local;
reg    ap_predicate_pred2285_state19;
reg    weights2_35_ce0_local;
reg   [5:0] weights2_35_address0_local;
reg    weights2_35_we0_local;
reg    ap_predicate_pred2294_state19;
reg    weights2_36_ce0_local;
reg   [5:0] weights2_36_address0_local;
reg    weights2_36_we0_local;
reg    ap_predicate_pred2303_state19;
reg    weights2_37_ce0_local;
reg   [5:0] weights2_37_address0_local;
reg    weights2_37_we0_local;
reg    ap_predicate_pred2312_state19;
reg    weights2_38_ce0_local;
reg   [5:0] weights2_38_address0_local;
reg    weights2_38_we0_local;
reg    ap_predicate_pred2321_state19;
reg    weights2_39_ce0_local;
reg   [5:0] weights2_39_address0_local;
reg    weights2_39_we0_local;
reg    ap_predicate_pred2330_state19;
reg    weights2_40_ce0_local;
reg   [5:0] weights2_40_address0_local;
reg    weights2_40_we0_local;
reg    ap_predicate_pred2339_state19;
reg    weights2_41_ce0_local;
reg   [5:0] weights2_41_address0_local;
reg    weights2_41_we0_local;
reg    ap_predicate_pred2348_state19;
reg    weights2_42_ce0_local;
reg   [5:0] weights2_42_address0_local;
reg    weights2_42_we0_local;
reg    ap_predicate_pred2357_state19;
reg    weights2_43_ce0_local;
reg   [5:0] weights2_43_address0_local;
reg    weights2_43_we0_local;
reg    ap_predicate_pred2366_state19;
reg    weights2_44_ce0_local;
reg   [5:0] weights2_44_address0_local;
reg    weights2_44_we0_local;
reg    ap_predicate_pred2375_state19;
reg    weights2_45_ce0_local;
reg   [5:0] weights2_45_address0_local;
reg    weights2_45_we0_local;
reg    ap_predicate_pred2384_state19;
reg    weights2_46_ce0_local;
reg   [5:0] weights2_46_address0_local;
reg    weights2_46_we0_local;
reg    ap_predicate_pred2393_state19;
reg    weights2_47_ce0_local;
reg   [5:0] weights2_47_address0_local;
reg    weights2_47_we0_local;
reg    ap_predicate_pred2402_state19;
reg    weights2_48_ce0_local;
reg   [5:0] weights2_48_address0_local;
reg    weights2_48_we0_local;
reg    ap_predicate_pred2411_state19;
reg    weights2_49_ce0_local;
reg   [5:0] weights2_49_address0_local;
reg    weights2_49_we0_local;
reg    ap_predicate_pred2420_state19;
reg    weights2_50_ce0_local;
reg   [5:0] weights2_50_address0_local;
reg    weights2_50_we0_local;
reg    ap_predicate_pred2429_state19;
reg    weights2_51_ce0_local;
reg   [5:0] weights2_51_address0_local;
reg    weights2_51_we0_local;
reg    ap_predicate_pred2438_state19;
reg    weights2_52_ce0_local;
reg   [5:0] weights2_52_address0_local;
reg    weights2_52_we0_local;
reg    ap_predicate_pred2447_state19;
reg    weights2_53_ce0_local;
reg   [5:0] weights2_53_address0_local;
reg    weights2_53_we0_local;
reg    ap_predicate_pred2456_state19;
reg    weights2_54_ce0_local;
reg   [5:0] weights2_54_address0_local;
reg    weights2_54_we0_local;
reg    ap_predicate_pred2465_state19;
reg    weights2_55_ce0_local;
reg   [5:0] weights2_55_address0_local;
reg    weights2_55_we0_local;
reg    ap_predicate_pred2474_state19;
reg    weights2_56_ce0_local;
reg   [5:0] weights2_56_address0_local;
reg    weights2_56_we0_local;
reg    ap_predicate_pred2483_state19;
reg    weights2_57_ce0_local;
reg   [5:0] weights2_57_address0_local;
reg    weights2_57_we0_local;
reg    ap_predicate_pred2492_state19;
reg    weights2_58_ce0_local;
reg   [5:0] weights2_58_address0_local;
reg    weights2_58_we0_local;
reg    ap_predicate_pred2501_state19;
reg    weights2_59_ce0_local;
reg   [5:0] weights2_59_address0_local;
reg    weights2_59_we0_local;
reg    ap_predicate_pred2510_state19;
reg    weights2_60_ce0_local;
reg   [5:0] weights2_60_address0_local;
reg    weights2_60_we0_local;
reg    ap_predicate_pred2519_state19;
reg    weights2_61_ce0_local;
reg   [5:0] weights2_61_address0_local;
reg    weights2_61_we0_local;
reg    ap_predicate_pred2528_state19;
reg    weights2_62_ce0_local;
reg   [5:0] weights2_62_address0_local;
reg    weights2_62_we0_local;
reg    ap_predicate_pred2537_state19;
reg    weights2_63_ce0_local;
reg   [5:0] weights2_63_address0_local;
reg    weights2_63_we0_local;
reg    ap_predicate_pred2546_state19;
reg   [63:0] grp_fu_2119_p0;
reg   [63:0] grp_fu_2119_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_2123_p0;
reg   [63:0] grp_fu_2123_p1;
wire   [6:0] add_ln152_1_fu_2187_p2;
wire   [63:0] tmp_9_fu_2287_p129;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_s_fu_2806_p2;
wire   [63:0] tmp_s_fu_2806_p4;
wire   [63:0] tmp_s_fu_2806_p6;
wire   [63:0] tmp_s_fu_2806_p8;
wire   [63:0] tmp_s_fu_2806_p10;
wire   [63:0] tmp_s_fu_2806_p12;
wire   [63:0] tmp_s_fu_2806_p14;
wire   [63:0] tmp_s_fu_2806_p16;
wire   [63:0] tmp_s_fu_2806_p18;
wire   [63:0] tmp_s_fu_2806_p20;
wire   [63:0] tmp_s_fu_2806_p22;
wire   [63:0] tmp_s_fu_2806_p24;
wire   [63:0] tmp_s_fu_2806_p26;
wire   [63:0] tmp_s_fu_2806_p28;
wire   [63:0] tmp_s_fu_2806_p30;
wire   [63:0] tmp_s_fu_2806_p32;
wire   [63:0] tmp_s_fu_2806_p34;
wire   [63:0] tmp_s_fu_2806_p36;
wire   [63:0] tmp_s_fu_2806_p38;
wire   [63:0] tmp_s_fu_2806_p40;
wire   [63:0] tmp_s_fu_2806_p42;
wire   [63:0] tmp_s_fu_2806_p44;
wire   [63:0] tmp_s_fu_2806_p46;
wire   [63:0] tmp_s_fu_2806_p48;
wire   [63:0] tmp_s_fu_2806_p50;
wire   [63:0] tmp_s_fu_2806_p52;
wire   [63:0] tmp_s_fu_2806_p54;
wire   [63:0] tmp_s_fu_2806_p56;
wire   [63:0] tmp_s_fu_2806_p58;
wire   [63:0] tmp_s_fu_2806_p60;
wire   [63:0] tmp_s_fu_2806_p62;
wire   [63:0] tmp_s_fu_2806_p64;
wire   [63:0] tmp_s_fu_2806_p66;
wire   [63:0] tmp_s_fu_2806_p68;
wire   [63:0] tmp_s_fu_2806_p70;
wire   [63:0] tmp_s_fu_2806_p72;
wire   [63:0] tmp_s_fu_2806_p74;
wire   [63:0] tmp_s_fu_2806_p76;
wire   [63:0] tmp_s_fu_2806_p78;
wire   [63:0] tmp_s_fu_2806_p80;
wire   [63:0] tmp_s_fu_2806_p82;
wire   [63:0] tmp_s_fu_2806_p84;
wire   [63:0] tmp_s_fu_2806_p86;
wire   [63:0] tmp_s_fu_2806_p88;
wire   [63:0] tmp_s_fu_2806_p90;
wire   [63:0] tmp_s_fu_2806_p92;
wire   [63:0] tmp_s_fu_2806_p94;
wire   [63:0] tmp_s_fu_2806_p96;
wire   [63:0] tmp_s_fu_2806_p98;
wire   [63:0] tmp_s_fu_2806_p100;
wire   [63:0] tmp_s_fu_2806_p102;
wire   [63:0] tmp_s_fu_2806_p104;
wire   [63:0] tmp_s_fu_2806_p106;
wire   [63:0] tmp_s_fu_2806_p108;
wire   [63:0] tmp_s_fu_2806_p110;
wire   [63:0] tmp_s_fu_2806_p112;
wire   [63:0] tmp_s_fu_2806_p114;
wire   [63:0] tmp_s_fu_2806_p116;
wire   [63:0] tmp_s_fu_2806_p118;
wire   [63:0] tmp_s_fu_2806_p120;
wire   [63:0] tmp_s_fu_2806_p122;
wire   [63:0] tmp_s_fu_2806_p124;
wire   [63:0] tmp_s_fu_2806_p126;
wire   [63:0] tmp_s_fu_2806_p128;
wire   [63:0] tmp_s_fu_2806_p129;
reg   [1:0] grp_fu_2119_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_9_fu_2287_p1;
wire   [5:0] tmp_9_fu_2287_p3;
wire   [5:0] tmp_9_fu_2287_p5;
wire   [5:0] tmp_9_fu_2287_p7;
wire   [5:0] tmp_9_fu_2287_p9;
wire   [5:0] tmp_9_fu_2287_p11;
wire   [5:0] tmp_9_fu_2287_p13;
wire   [5:0] tmp_9_fu_2287_p15;
wire   [5:0] tmp_9_fu_2287_p17;
wire   [5:0] tmp_9_fu_2287_p19;
wire   [5:0] tmp_9_fu_2287_p21;
wire   [5:0] tmp_9_fu_2287_p23;
wire   [5:0] tmp_9_fu_2287_p25;
wire   [5:0] tmp_9_fu_2287_p27;
wire   [5:0] tmp_9_fu_2287_p29;
wire   [5:0] tmp_9_fu_2287_p31;
wire   [5:0] tmp_9_fu_2287_p33;
wire   [5:0] tmp_9_fu_2287_p35;
wire   [5:0] tmp_9_fu_2287_p37;
wire   [5:0] tmp_9_fu_2287_p39;
wire   [5:0] tmp_9_fu_2287_p41;
wire   [5:0] tmp_9_fu_2287_p43;
wire   [5:0] tmp_9_fu_2287_p45;
wire   [5:0] tmp_9_fu_2287_p47;
wire   [5:0] tmp_9_fu_2287_p49;
wire   [5:0] tmp_9_fu_2287_p51;
wire   [5:0] tmp_9_fu_2287_p53;
wire   [5:0] tmp_9_fu_2287_p55;
wire   [5:0] tmp_9_fu_2287_p57;
wire   [5:0] tmp_9_fu_2287_p59;
wire   [5:0] tmp_9_fu_2287_p61;
wire   [5:0] tmp_9_fu_2287_p63;
wire  signed [5:0] tmp_9_fu_2287_p65;
wire  signed [5:0] tmp_9_fu_2287_p67;
wire  signed [5:0] tmp_9_fu_2287_p69;
wire  signed [5:0] tmp_9_fu_2287_p71;
wire  signed [5:0] tmp_9_fu_2287_p73;
wire  signed [5:0] tmp_9_fu_2287_p75;
wire  signed [5:0] tmp_9_fu_2287_p77;
wire  signed [5:0] tmp_9_fu_2287_p79;
wire  signed [5:0] tmp_9_fu_2287_p81;
wire  signed [5:0] tmp_9_fu_2287_p83;
wire  signed [5:0] tmp_9_fu_2287_p85;
wire  signed [5:0] tmp_9_fu_2287_p87;
wire  signed [5:0] tmp_9_fu_2287_p89;
wire  signed [5:0] tmp_9_fu_2287_p91;
wire  signed [5:0] tmp_9_fu_2287_p93;
wire  signed [5:0] tmp_9_fu_2287_p95;
wire  signed [5:0] tmp_9_fu_2287_p97;
wire  signed [5:0] tmp_9_fu_2287_p99;
wire  signed [5:0] tmp_9_fu_2287_p101;
wire  signed [5:0] tmp_9_fu_2287_p103;
wire  signed [5:0] tmp_9_fu_2287_p105;
wire  signed [5:0] tmp_9_fu_2287_p107;
wire  signed [5:0] tmp_9_fu_2287_p109;
wire  signed [5:0] tmp_9_fu_2287_p111;
wire  signed [5:0] tmp_9_fu_2287_p113;
wire  signed [5:0] tmp_9_fu_2287_p115;
wire  signed [5:0] tmp_9_fu_2287_p117;
wire  signed [5:0] tmp_9_fu_2287_p119;
wire  signed [5:0] tmp_9_fu_2287_p121;
wire  signed [5:0] tmp_9_fu_2287_p123;
wire  signed [5:0] tmp_9_fu_2287_p125;
wire  signed [5:0] tmp_9_fu_2287_p127;
wire   [5:0] tmp_s_fu_2806_p1;
wire   [5:0] tmp_s_fu_2806_p3;
wire   [5:0] tmp_s_fu_2806_p5;
wire   [5:0] tmp_s_fu_2806_p7;
wire   [5:0] tmp_s_fu_2806_p9;
wire   [5:0] tmp_s_fu_2806_p11;
wire   [5:0] tmp_s_fu_2806_p13;
wire   [5:0] tmp_s_fu_2806_p15;
wire   [5:0] tmp_s_fu_2806_p17;
wire   [5:0] tmp_s_fu_2806_p19;
wire   [5:0] tmp_s_fu_2806_p21;
wire   [5:0] tmp_s_fu_2806_p23;
wire   [5:0] tmp_s_fu_2806_p25;
wire   [5:0] tmp_s_fu_2806_p27;
wire   [5:0] tmp_s_fu_2806_p29;
wire   [5:0] tmp_s_fu_2806_p31;
wire   [5:0] tmp_s_fu_2806_p33;
wire   [5:0] tmp_s_fu_2806_p35;
wire   [5:0] tmp_s_fu_2806_p37;
wire   [5:0] tmp_s_fu_2806_p39;
wire   [5:0] tmp_s_fu_2806_p41;
wire   [5:0] tmp_s_fu_2806_p43;
wire   [5:0] tmp_s_fu_2806_p45;
wire   [5:0] tmp_s_fu_2806_p47;
wire   [5:0] tmp_s_fu_2806_p49;
wire   [5:0] tmp_s_fu_2806_p51;
wire   [5:0] tmp_s_fu_2806_p53;
wire   [5:0] tmp_s_fu_2806_p55;
wire   [5:0] tmp_s_fu_2806_p57;
wire   [5:0] tmp_s_fu_2806_p59;
wire   [5:0] tmp_s_fu_2806_p61;
wire   [5:0] tmp_s_fu_2806_p63;
wire  signed [5:0] tmp_s_fu_2806_p65;
wire  signed [5:0] tmp_s_fu_2806_p67;
wire  signed [5:0] tmp_s_fu_2806_p69;
wire  signed [5:0] tmp_s_fu_2806_p71;
wire  signed [5:0] tmp_s_fu_2806_p73;
wire  signed [5:0] tmp_s_fu_2806_p75;
wire  signed [5:0] tmp_s_fu_2806_p77;
wire  signed [5:0] tmp_s_fu_2806_p79;
wire  signed [5:0] tmp_s_fu_2806_p81;
wire  signed [5:0] tmp_s_fu_2806_p83;
wire  signed [5:0] tmp_s_fu_2806_p85;
wire  signed [5:0] tmp_s_fu_2806_p87;
wire  signed [5:0] tmp_s_fu_2806_p89;
wire  signed [5:0] tmp_s_fu_2806_p91;
wire  signed [5:0] tmp_s_fu_2806_p93;
wire  signed [5:0] tmp_s_fu_2806_p95;
wire  signed [5:0] tmp_s_fu_2806_p97;
wire  signed [5:0] tmp_s_fu_2806_p99;
wire  signed [5:0] tmp_s_fu_2806_p101;
wire  signed [5:0] tmp_s_fu_2806_p103;
wire  signed [5:0] tmp_s_fu_2806_p105;
wire  signed [5:0] tmp_s_fu_2806_p107;
wire  signed [5:0] tmp_s_fu_2806_p109;
wire  signed [5:0] tmp_s_fu_2806_p111;
wire  signed [5:0] tmp_s_fu_2806_p113;
wire  signed [5:0] tmp_s_fu_2806_p115;
wire  signed [5:0] tmp_s_fu_2806_p117;
wire  signed [5:0] tmp_s_fu_2806_p119;
wire  signed [5:0] tmp_s_fu_2806_p121;
wire  signed [5:0] tmp_s_fu_2806_p123;
wire  signed [5:0] tmp_s_fu_2806_p125;
wire  signed [5:0] tmp_s_fu_2806_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_432 = 64'd0;
#0 j_fu_436 = 7'd0;
#0 i_4_fu_440 = 7'd0;
#0 indvar_flatten13_fu_444 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U4370(.din0(d_weights2_0_q0),.din1(d_weights2_1_q0),.din2(d_weights2_2_q0),.din3(d_weights2_3_q0),.din4(d_weights2_4_q0),.din5(d_weights2_5_q0),.din6(d_weights2_6_q0),.din7(d_weights2_7_q0),.din8(d_weights2_8_q0),.din9(d_weights2_9_q0),.din10(d_weights2_10_q0),.din11(d_weights2_11_q0),.din12(d_weights2_12_q0),.din13(d_weights2_13_q0),.din14(d_weights2_14_q0),.din15(d_weights2_15_q0),.din16(d_weights2_16_q0),.din17(d_weights2_17_q0),.din18(d_weights2_18_q0),.din19(d_weights2_19_q0),.din20(d_weights2_20_q0),.din21(d_weights2_21_q0),.din22(d_weights2_22_q0),.din23(d_weights2_23_q0),.din24(d_weights2_24_q0),.din25(d_weights2_25_q0),.din26(d_weights2_26_q0),.din27(d_weights2_27_q0),.din28(d_weights2_28_q0),.din29(d_weights2_29_q0),.din30(d_weights2_30_q0),.din31(d_weights2_31_q0),.din32(d_weights2_32_q0),.din33(d_weights2_33_q0),.din34(d_weights2_34_q0),.din35(d_weights2_35_q0),.din36(d_weights2_36_q0),.din37(d_weights2_37_q0),.din38(d_weights2_38_q0),.din39(d_weights2_39_q0),.din40(d_weights2_40_q0),.din41(d_weights2_41_q0),.din42(d_weights2_42_q0),.din43(d_weights2_43_q0),.din44(d_weights2_44_q0),.din45(d_weights2_45_q0),.din46(d_weights2_46_q0),.din47(d_weights2_47_q0),.din48(d_weights2_48_q0),.din49(d_weights2_49_q0),.din50(d_weights2_50_q0),.din51(d_weights2_51_q0),.din52(d_weights2_52_q0),.din53(d_weights2_53_q0),.din54(d_weights2_54_q0),.din55(d_weights2_55_q0),.din56(d_weights2_56_q0),.din57(d_weights2_57_q0),.din58(d_weights2_58_q0),.din59(d_weights2_59_q0),.din60(d_weights2_60_q0),.din61(d_weights2_61_q0),.din62(d_weights2_62_q0),.din63(d_weights2_63_q0),.def(tmp_9_fu_2287_p129),.sel(trunc_ln153_reg_3197),.dout(tmp_9_fu_2287_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U4371(.din0(tmp_s_fu_2806_p2),.din1(tmp_s_fu_2806_p4),.din2(tmp_s_fu_2806_p6),.din3(tmp_s_fu_2806_p8),.din4(tmp_s_fu_2806_p10),.din5(tmp_s_fu_2806_p12),.din6(tmp_s_fu_2806_p14),.din7(tmp_s_fu_2806_p16),.din8(tmp_s_fu_2806_p18),.din9(tmp_s_fu_2806_p20),.din10(tmp_s_fu_2806_p22),.din11(tmp_s_fu_2806_p24),.din12(tmp_s_fu_2806_p26),.din13(tmp_s_fu_2806_p28),.din14(tmp_s_fu_2806_p30),.din15(tmp_s_fu_2806_p32),.din16(tmp_s_fu_2806_p34),.din17(tmp_s_fu_2806_p36),.din18(tmp_s_fu_2806_p38),.din19(tmp_s_fu_2806_p40),.din20(tmp_s_fu_2806_p42),.din21(tmp_s_fu_2806_p44),.din22(tmp_s_fu_2806_p46),.din23(tmp_s_fu_2806_p48),.din24(tmp_s_fu_2806_p50),.din25(tmp_s_fu_2806_p52),.din26(tmp_s_fu_2806_p54),.din27(tmp_s_fu_2806_p56),.din28(tmp_s_fu_2806_p58),.din29(tmp_s_fu_2806_p60),.din30(tmp_s_fu_2806_p62),.din31(tmp_s_fu_2806_p64),.din32(tmp_s_fu_2806_p66),.din33(tmp_s_fu_2806_p68),.din34(tmp_s_fu_2806_p70),.din35(tmp_s_fu_2806_p72),.din36(tmp_s_fu_2806_p74),.din37(tmp_s_fu_2806_p76),.din38(tmp_s_fu_2806_p78),.din39(tmp_s_fu_2806_p80),.din40(tmp_s_fu_2806_p82),.din41(tmp_s_fu_2806_p84),.din42(tmp_s_fu_2806_p86),.din43(tmp_s_fu_2806_p88),.din44(tmp_s_fu_2806_p90),.din45(tmp_s_fu_2806_p92),.din46(tmp_s_fu_2806_p94),.din47(tmp_s_fu_2806_p96),.din48(tmp_s_fu_2806_p98),.din49(tmp_s_fu_2806_p100),.din50(tmp_s_fu_2806_p102),.din51(tmp_s_fu_2806_p104),.din52(tmp_s_fu_2806_p106),.din53(tmp_s_fu_2806_p108),.din54(tmp_s_fu_2806_p110),.din55(tmp_s_fu_2806_p112),.din56(tmp_s_fu_2806_p114),.din57(tmp_s_fu_2806_p116),.din58(tmp_s_fu_2806_p118),.din59(tmp_s_fu_2806_p120),.din60(tmp_s_fu_2806_p122),.din61(tmp_s_fu_2806_p124),.din62(tmp_s_fu_2806_p126),.din63(tmp_s_fu_2806_p128),.def(tmp_s_fu_2806_p129),.sel(trunc_ln153_reg_3197_pp0_iter1_reg),.dout(tmp_s_fu_2806_p131));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage4) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage4) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage4) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_4_fu_440 <= 7'd0;
    end else if (((icmp_ln152_reg_3178 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_4_fu_440 <= select_ln152_fu_2193_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten13_fu_444 <= 13'd0;
    end else if (((icmp_ln152_reg_3178 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_444 <= add_ln152_reg_3182;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_436 <= 7'd0;
    end else if (((icmp_ln152_reg_3178 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_436 <= add_ln153_fu_2268_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_fu_432 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_432 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_reg_3182 <= add_ln152_fu_2157_p2;
        icmp_ln152_reg_3178 <= icmp_ln152_fu_2151_p2;
        icmp_ln152_reg_3178_pp0_iter1_reg <= icmp_ln152_reg_3178;
        icmp_ln152_reg_3178_pp0_iter2_reg <= icmp_ln152_reg_3178_pp0_iter1_reg;
        icmp_ln152_reg_3178_pp0_iter3_reg <= icmp_ln152_reg_3178_pp0_iter2_reg;
        icmp_ln153_reg_3187 <= icmp_ln153_fu_2166_p2;
        select_ln121_reg_3192 <= select_ln121_fu_2172_p3;
        trunc_ln153_reg_3197 <= trunc_ln153_fu_2180_p1;
        trunc_ln153_reg_3197_pp0_iter1_reg <= trunc_ln153_reg_3197;
        trunc_ln153_reg_3197_pp0_iter2_reg <= trunc_ln153_reg_3197_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1976_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1988_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd1);
        ap_predicate_pred1997_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd2);
        ap_predicate_pred2006_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd3);
        ap_predicate_pred2015_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd4);
        ap_predicate_pred2024_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd5);
        ap_predicate_pred2033_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd6);
        ap_predicate_pred2042_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd7);
        ap_predicate_pred2051_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd8);
        ap_predicate_pred2060_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd9);
        ap_predicate_pred2069_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd10);
        ap_predicate_pred2078_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd11);
        ap_predicate_pred2087_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd12);
        ap_predicate_pred2096_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd13);
        ap_predicate_pred2105_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd14);
        ap_predicate_pred2114_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd15);
        ap_predicate_pred2123_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd16);
        ap_predicate_pred2132_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd17);
        ap_predicate_pred2141_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd18);
        ap_predicate_pred2150_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd19);
        ap_predicate_pred2159_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd20);
        ap_predicate_pred2168_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd21);
        ap_predicate_pred2177_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd22);
        ap_predicate_pred2186_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd23);
        ap_predicate_pred2195_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd24);
        ap_predicate_pred2204_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd25);
        ap_predicate_pred2213_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd26);
        ap_predicate_pred2222_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd27);
        ap_predicate_pred2231_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd28);
        ap_predicate_pred2240_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd29);
        ap_predicate_pred2249_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd30);
        ap_predicate_pred2258_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd31);
        ap_predicate_pred2267_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd32);
        ap_predicate_pred2276_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd33);
        ap_predicate_pred2285_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd34);
        ap_predicate_pred2294_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd35);
        ap_predicate_pred2303_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd36);
        ap_predicate_pred2312_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd37);
        ap_predicate_pred2321_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd38);
        ap_predicate_pred2330_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd39);
        ap_predicate_pred2339_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd40);
        ap_predicate_pred2348_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd41);
        ap_predicate_pred2357_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd42);
        ap_predicate_pred2366_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd43);
        ap_predicate_pred2375_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd44);
        ap_predicate_pred2384_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd45);
        ap_predicate_pred2393_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd46);
        ap_predicate_pred2402_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd47);
        ap_predicate_pred2411_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd48);
        ap_predicate_pred2420_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd49);
        ap_predicate_pred2429_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd50);
        ap_predicate_pred2438_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd51);
        ap_predicate_pred2447_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd52);
        ap_predicate_pred2456_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd53);
        ap_predicate_pred2465_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd54);
        ap_predicate_pred2474_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd55);
        ap_predicate_pred2483_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd56);
        ap_predicate_pred2492_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd57);
        ap_predicate_pred2501_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd58);
        ap_predicate_pred2510_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd59);
        ap_predicate_pred2519_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd60);
        ap_predicate_pred2528_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd61);
        ap_predicate_pred2537_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd62);
        ap_predicate_pred2546_state19 <= (trunc_ln153_reg_3197_pp0_iter2_reg == 6'd63);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul5_reg_3916 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul7_reg_3933 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub3_reg_3926 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_9_reg_3591 <= tmp_9_fu_2287_p131;
        tmp_s_reg_3921 <= tmp_s_fu_2806_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_addr_reg_3596 <= zext_ln152_reg_3203;
        weights2_0_addr_reg_3596_pp0_iter2_reg <= weights2_0_addr_reg_3596;
        weights2_10_addr_reg_3646 <= zext_ln152_reg_3203;
        weights2_10_addr_reg_3646_pp0_iter2_reg <= weights2_10_addr_reg_3646;
        weights2_11_addr_reg_3651 <= zext_ln152_reg_3203;
        weights2_11_addr_reg_3651_pp0_iter2_reg <= weights2_11_addr_reg_3651;
        weights2_12_addr_reg_3656 <= zext_ln152_reg_3203;
        weights2_12_addr_reg_3656_pp0_iter2_reg <= weights2_12_addr_reg_3656;
        weights2_13_addr_reg_3661 <= zext_ln152_reg_3203;
        weights2_13_addr_reg_3661_pp0_iter2_reg <= weights2_13_addr_reg_3661;
        weights2_14_addr_reg_3666 <= zext_ln152_reg_3203;
        weights2_14_addr_reg_3666_pp0_iter2_reg <= weights2_14_addr_reg_3666;
        weights2_15_addr_reg_3671 <= zext_ln152_reg_3203;
        weights2_15_addr_reg_3671_pp0_iter2_reg <= weights2_15_addr_reg_3671;
        weights2_16_addr_reg_3676 <= zext_ln152_reg_3203;
        weights2_16_addr_reg_3676_pp0_iter2_reg <= weights2_16_addr_reg_3676;
        weights2_17_addr_reg_3681 <= zext_ln152_reg_3203;
        weights2_17_addr_reg_3681_pp0_iter2_reg <= weights2_17_addr_reg_3681;
        weights2_18_addr_reg_3686 <= zext_ln152_reg_3203;
        weights2_18_addr_reg_3686_pp0_iter2_reg <= weights2_18_addr_reg_3686;
        weights2_19_addr_reg_3691 <= zext_ln152_reg_3203;
        weights2_19_addr_reg_3691_pp0_iter2_reg <= weights2_19_addr_reg_3691;
        weights2_1_addr_reg_3601 <= zext_ln152_reg_3203;
        weights2_1_addr_reg_3601_pp0_iter2_reg <= weights2_1_addr_reg_3601;
        weights2_20_addr_reg_3696 <= zext_ln152_reg_3203;
        weights2_20_addr_reg_3696_pp0_iter2_reg <= weights2_20_addr_reg_3696;
        weights2_21_addr_reg_3701 <= zext_ln152_reg_3203;
        weights2_21_addr_reg_3701_pp0_iter2_reg <= weights2_21_addr_reg_3701;
        weights2_22_addr_reg_3706 <= zext_ln152_reg_3203;
        weights2_22_addr_reg_3706_pp0_iter2_reg <= weights2_22_addr_reg_3706;
        weights2_23_addr_reg_3711 <= zext_ln152_reg_3203;
        weights2_23_addr_reg_3711_pp0_iter2_reg <= weights2_23_addr_reg_3711;
        weights2_24_addr_reg_3716 <= zext_ln152_reg_3203;
        weights2_24_addr_reg_3716_pp0_iter2_reg <= weights2_24_addr_reg_3716;
        weights2_25_addr_reg_3721 <= zext_ln152_reg_3203;
        weights2_25_addr_reg_3721_pp0_iter2_reg <= weights2_25_addr_reg_3721;
        weights2_26_addr_reg_3726 <= zext_ln152_reg_3203;
        weights2_26_addr_reg_3726_pp0_iter2_reg <= weights2_26_addr_reg_3726;
        weights2_27_addr_reg_3731 <= zext_ln152_reg_3203;
        weights2_27_addr_reg_3731_pp0_iter2_reg <= weights2_27_addr_reg_3731;
        weights2_28_addr_reg_3736 <= zext_ln152_reg_3203;
        weights2_28_addr_reg_3736_pp0_iter2_reg <= weights2_28_addr_reg_3736;
        weights2_29_addr_reg_3741 <= zext_ln152_reg_3203;
        weights2_29_addr_reg_3741_pp0_iter2_reg <= weights2_29_addr_reg_3741;
        weights2_2_addr_reg_3606 <= zext_ln152_reg_3203;
        weights2_2_addr_reg_3606_pp0_iter2_reg <= weights2_2_addr_reg_3606;
        weights2_30_addr_reg_3746 <= zext_ln152_reg_3203;
        weights2_30_addr_reg_3746_pp0_iter2_reg <= weights2_30_addr_reg_3746;
        weights2_31_addr_reg_3751 <= zext_ln152_reg_3203;
        weights2_31_addr_reg_3751_pp0_iter2_reg <= weights2_31_addr_reg_3751;
        weights2_32_addr_reg_3756 <= zext_ln152_reg_3203;
        weights2_32_addr_reg_3756_pp0_iter2_reg <= weights2_32_addr_reg_3756;
        weights2_33_addr_reg_3761 <= zext_ln152_reg_3203;
        weights2_33_addr_reg_3761_pp0_iter2_reg <= weights2_33_addr_reg_3761;
        weights2_34_addr_reg_3766 <= zext_ln152_reg_3203;
        weights2_34_addr_reg_3766_pp0_iter2_reg <= weights2_34_addr_reg_3766;
        weights2_35_addr_reg_3771 <= zext_ln152_reg_3203;
        weights2_35_addr_reg_3771_pp0_iter2_reg <= weights2_35_addr_reg_3771;
        weights2_36_addr_reg_3776 <= zext_ln152_reg_3203;
        weights2_36_addr_reg_3776_pp0_iter2_reg <= weights2_36_addr_reg_3776;
        weights2_37_addr_reg_3781 <= zext_ln152_reg_3203;
        weights2_37_addr_reg_3781_pp0_iter2_reg <= weights2_37_addr_reg_3781;
        weights2_38_addr_reg_3786 <= zext_ln152_reg_3203;
        weights2_38_addr_reg_3786_pp0_iter2_reg <= weights2_38_addr_reg_3786;
        weights2_39_addr_reg_3791 <= zext_ln152_reg_3203;
        weights2_39_addr_reg_3791_pp0_iter2_reg <= weights2_39_addr_reg_3791;
        weights2_3_addr_reg_3611 <= zext_ln152_reg_3203;
        weights2_3_addr_reg_3611_pp0_iter2_reg <= weights2_3_addr_reg_3611;
        weights2_40_addr_reg_3796 <= zext_ln152_reg_3203;
        weights2_40_addr_reg_3796_pp0_iter2_reg <= weights2_40_addr_reg_3796;
        weights2_41_addr_reg_3801 <= zext_ln152_reg_3203;
        weights2_41_addr_reg_3801_pp0_iter2_reg <= weights2_41_addr_reg_3801;
        weights2_42_addr_reg_3806 <= zext_ln152_reg_3203;
        weights2_42_addr_reg_3806_pp0_iter2_reg <= weights2_42_addr_reg_3806;
        weights2_43_addr_reg_3811 <= zext_ln152_reg_3203;
        weights2_43_addr_reg_3811_pp0_iter2_reg <= weights2_43_addr_reg_3811;
        weights2_44_addr_reg_3816 <= zext_ln152_reg_3203;
        weights2_44_addr_reg_3816_pp0_iter2_reg <= weights2_44_addr_reg_3816;
        weights2_45_addr_reg_3821 <= zext_ln152_reg_3203;
        weights2_45_addr_reg_3821_pp0_iter2_reg <= weights2_45_addr_reg_3821;
        weights2_46_addr_reg_3826 <= zext_ln152_reg_3203;
        weights2_46_addr_reg_3826_pp0_iter2_reg <= weights2_46_addr_reg_3826;
        weights2_47_addr_reg_3831 <= zext_ln152_reg_3203;
        weights2_47_addr_reg_3831_pp0_iter2_reg <= weights2_47_addr_reg_3831;
        weights2_48_addr_reg_3836 <= zext_ln152_reg_3203;
        weights2_48_addr_reg_3836_pp0_iter2_reg <= weights2_48_addr_reg_3836;
        weights2_49_addr_reg_3841 <= zext_ln152_reg_3203;
        weights2_49_addr_reg_3841_pp0_iter2_reg <= weights2_49_addr_reg_3841;
        weights2_4_addr_reg_3616 <= zext_ln152_reg_3203;
        weights2_4_addr_reg_3616_pp0_iter2_reg <= weights2_4_addr_reg_3616;
        weights2_50_addr_reg_3846 <= zext_ln152_reg_3203;
        weights2_50_addr_reg_3846_pp0_iter2_reg <= weights2_50_addr_reg_3846;
        weights2_51_addr_reg_3851 <= zext_ln152_reg_3203;
        weights2_51_addr_reg_3851_pp0_iter2_reg <= weights2_51_addr_reg_3851;
        weights2_52_addr_reg_3856 <= zext_ln152_reg_3203;
        weights2_52_addr_reg_3856_pp0_iter2_reg <= weights2_52_addr_reg_3856;
        weights2_53_addr_reg_3861 <= zext_ln152_reg_3203;
        weights2_53_addr_reg_3861_pp0_iter2_reg <= weights2_53_addr_reg_3861;
        weights2_54_addr_reg_3866 <= zext_ln152_reg_3203;
        weights2_54_addr_reg_3866_pp0_iter2_reg <= weights2_54_addr_reg_3866;
        weights2_55_addr_reg_3871 <= zext_ln152_reg_3203;
        weights2_55_addr_reg_3871_pp0_iter2_reg <= weights2_55_addr_reg_3871;
        weights2_56_addr_reg_3876 <= zext_ln152_reg_3203;
        weights2_56_addr_reg_3876_pp0_iter2_reg <= weights2_56_addr_reg_3876;
        weights2_57_addr_reg_3881 <= zext_ln152_reg_3203;
        weights2_57_addr_reg_3881_pp0_iter2_reg <= weights2_57_addr_reg_3881;
        weights2_58_addr_reg_3886 <= zext_ln152_reg_3203;
        weights2_58_addr_reg_3886_pp0_iter2_reg <= weights2_58_addr_reg_3886;
        weights2_59_addr_reg_3891 <= zext_ln152_reg_3203;
        weights2_59_addr_reg_3891_pp0_iter2_reg <= weights2_59_addr_reg_3891;
        weights2_5_addr_reg_3621 <= zext_ln152_reg_3203;
        weights2_5_addr_reg_3621_pp0_iter2_reg <= weights2_5_addr_reg_3621;
        weights2_60_addr_reg_3896 <= zext_ln152_reg_3203;
        weights2_60_addr_reg_3896_pp0_iter2_reg <= weights2_60_addr_reg_3896;
        weights2_61_addr_reg_3901 <= zext_ln152_reg_3203;
        weights2_61_addr_reg_3901_pp0_iter2_reg <= weights2_61_addr_reg_3901;
        weights2_62_addr_reg_3906 <= zext_ln152_reg_3203;
        weights2_62_addr_reg_3906_pp0_iter2_reg <= weights2_62_addr_reg_3906;
        weights2_63_addr_reg_3911 <= zext_ln152_reg_3203;
        weights2_63_addr_reg_3911_pp0_iter2_reg <= weights2_63_addr_reg_3911;
        weights2_6_addr_reg_3626 <= zext_ln152_reg_3203;
        weights2_6_addr_reg_3626_pp0_iter2_reg <= weights2_6_addr_reg_3626;
        weights2_7_addr_reg_3631 <= zext_ln152_reg_3203;
        weights2_7_addr_reg_3631_pp0_iter2_reg <= weights2_7_addr_reg_3631;
        weights2_8_addr_reg_3636 <= zext_ln152_reg_3203;
        weights2_8_addr_reg_3636_pp0_iter2_reg <= weights2_8_addr_reg_3636;
        weights2_9_addr_reg_3641 <= zext_ln152_reg_3203;
        weights2_9_addr_reg_3641_pp0_iter2_reg <= weights2_9_addr_reg_3641;
        zext_ln152_reg_3203[6 : 0] <= zext_ln152_fu_2200_p1[6 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_3178 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_3178_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_444;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_436;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_2 = grp_fu_4935_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_load_2 = norm_fu_432;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_0_ce0_local = 1'b1;
    end else begin
        d_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_10_ce0_local = 1'b1;
    end else begin
        d_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_11_ce0_local = 1'b1;
    end else begin
        d_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_12_ce0_local = 1'b1;
    end else begin
        d_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_13_ce0_local = 1'b1;
    end else begin
        d_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_14_ce0_local = 1'b1;
    end else begin
        d_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_15_ce0_local = 1'b1;
    end else begin
        d_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_16_ce0_local = 1'b1;
    end else begin
        d_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_17_ce0_local = 1'b1;
    end else begin
        d_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_18_ce0_local = 1'b1;
    end else begin
        d_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_19_ce0_local = 1'b1;
    end else begin
        d_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_1_ce0_local = 1'b1;
    end else begin
        d_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_20_ce0_local = 1'b1;
    end else begin
        d_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_21_ce0_local = 1'b1;
    end else begin
        d_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_22_ce0_local = 1'b1;
    end else begin
        d_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_23_ce0_local = 1'b1;
    end else begin
        d_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_24_ce0_local = 1'b1;
    end else begin
        d_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_25_ce0_local = 1'b1;
    end else begin
        d_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_26_ce0_local = 1'b1;
    end else begin
        d_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_27_ce0_local = 1'b1;
    end else begin
        d_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_28_ce0_local = 1'b1;
    end else begin
        d_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_29_ce0_local = 1'b1;
    end else begin
        d_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_2_ce0_local = 1'b1;
    end else begin
        d_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_30_ce0_local = 1'b1;
    end else begin
        d_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_31_ce0_local = 1'b1;
    end else begin
        d_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_32_ce0_local = 1'b1;
    end else begin
        d_weights2_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_33_ce0_local = 1'b1;
    end else begin
        d_weights2_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_34_ce0_local = 1'b1;
    end else begin
        d_weights2_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_35_ce0_local = 1'b1;
    end else begin
        d_weights2_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_36_ce0_local = 1'b1;
    end else begin
        d_weights2_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_37_ce0_local = 1'b1;
    end else begin
        d_weights2_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_38_ce0_local = 1'b1;
    end else begin
        d_weights2_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_39_ce0_local = 1'b1;
    end else begin
        d_weights2_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_3_ce0_local = 1'b1;
    end else begin
        d_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_40_ce0_local = 1'b1;
    end else begin
        d_weights2_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_41_ce0_local = 1'b1;
    end else begin
        d_weights2_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_42_ce0_local = 1'b1;
    end else begin
        d_weights2_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_43_ce0_local = 1'b1;
    end else begin
        d_weights2_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_44_ce0_local = 1'b1;
    end else begin
        d_weights2_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_45_ce0_local = 1'b1;
    end else begin
        d_weights2_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_46_ce0_local = 1'b1;
    end else begin
        d_weights2_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_47_ce0_local = 1'b1;
    end else begin
        d_weights2_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_48_ce0_local = 1'b1;
    end else begin
        d_weights2_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_49_ce0_local = 1'b1;
    end else begin
        d_weights2_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_4_ce0_local = 1'b1;
    end else begin
        d_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_50_ce0_local = 1'b1;
    end else begin
        d_weights2_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_51_ce0_local = 1'b1;
    end else begin
        d_weights2_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_52_ce0_local = 1'b1;
    end else begin
        d_weights2_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_53_ce0_local = 1'b1;
    end else begin
        d_weights2_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_54_ce0_local = 1'b1;
    end else begin
        d_weights2_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_55_ce0_local = 1'b1;
    end else begin
        d_weights2_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_56_ce0_local = 1'b1;
    end else begin
        d_weights2_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_57_ce0_local = 1'b1;
    end else begin
        d_weights2_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_58_ce0_local = 1'b1;
    end else begin
        d_weights2_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_59_ce0_local = 1'b1;
    end else begin
        d_weights2_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_5_ce0_local = 1'b1;
    end else begin
        d_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_60_ce0_local = 1'b1;
    end else begin
        d_weights2_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_61_ce0_local = 1'b1;
    end else begin
        d_weights2_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_62_ce0_local = 1'b1;
    end else begin
        d_weights2_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_63_ce0_local = 1'b1;
    end else begin
        d_weights2_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_6_ce0_local = 1'b1;
    end else begin
        d_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_7_ce0_local = 1'b1;
    end else begin
        d_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_8_ce0_local = 1'b1;
    end else begin
        d_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_9_ce0_local = 1'b1;
    end else begin
        d_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2119_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2119_opcode = 2'd0;
    end else begin
        grp_fu_2119_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2119_p0 = ap_sig_allocacmp_norm_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2119_p0 = tmp_s_reg_3921;
    end else begin
        grp_fu_2119_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2119_p1 = mul7_reg_3933;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2119_p1 = mul5_reg_3916;
    end else begin
        grp_fu_2119_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2123_p0 = sub3_reg_3926;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2123_p0 = tmp_9_reg_3591;
    end else begin
        grp_fu_2123_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2123_p1 = sub3_reg_3926;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2123_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2123_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_3178_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        norm_4_out_ap_vld = 1'b1;
    end else begin
        norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = weights2_0_addr_reg_3596_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1976_state19 == 1'b1))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_10_address0_local = weights2_10_addr_reg_3646_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_10_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2069_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_11_address0_local = weights2_11_addr_reg_3651_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_11_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2078_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_12_address0_local = weights2_12_addr_reg_3656_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_12_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2087_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_13_address0_local = weights2_13_addr_reg_3661_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_13_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2096_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_14_address0_local = weights2_14_addr_reg_3666_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_14_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2105_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_15_address0_local = weights2_15_addr_reg_3671_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_15_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2114_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_16_address0_local = weights2_16_addr_reg_3676_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_16_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2123_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_16_we0_local = 1'b1;
    end else begin
        weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_17_address0_local = weights2_17_addr_reg_3681_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_17_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2132_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_17_we0_local = 1'b1;
    end else begin
        weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_18_address0_local = weights2_18_addr_reg_3686_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_18_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2141_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_18_we0_local = 1'b1;
    end else begin
        weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_19_address0_local = weights2_19_addr_reg_3691_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_19_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2150_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_19_we0_local = 1'b1;
    end else begin
        weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = weights2_1_addr_reg_3601_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1988_state19 == 1'b1))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_20_address0_local = weights2_20_addr_reg_3696_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_20_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2159_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_20_we0_local = 1'b1;
    end else begin
        weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_21_address0_local = weights2_21_addr_reg_3701_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_21_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2168_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_21_we0_local = 1'b1;
    end else begin
        weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_22_address0_local = weights2_22_addr_reg_3706_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_22_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2177_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_22_we0_local = 1'b1;
    end else begin
        weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_23_address0_local = weights2_23_addr_reg_3711_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_23_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2186_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_23_we0_local = 1'b1;
    end else begin
        weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_24_address0_local = weights2_24_addr_reg_3716_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_24_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2195_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_24_we0_local = 1'b1;
    end else begin
        weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_25_address0_local = weights2_25_addr_reg_3721_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_25_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2204_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_25_we0_local = 1'b1;
    end else begin
        weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_26_address0_local = weights2_26_addr_reg_3726_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_26_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2213_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_26_we0_local = 1'b1;
    end else begin
        weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_27_address0_local = weights2_27_addr_reg_3731_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_27_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2222_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_27_we0_local = 1'b1;
    end else begin
        weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_28_address0_local = weights2_28_addr_reg_3736_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_28_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2231_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_28_we0_local = 1'b1;
    end else begin
        weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_29_address0_local = weights2_29_addr_reg_3741_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_29_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2240_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_29_we0_local = 1'b1;
    end else begin
        weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_address0_local = weights2_2_addr_reg_3606_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1997_state19 == 1'b1))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_30_address0_local = weights2_30_addr_reg_3746_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_30_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2249_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_30_we0_local = 1'b1;
    end else begin
        weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_31_address0_local = weights2_31_addr_reg_3751_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_31_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2258_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_31_we0_local = 1'b1;
    end else begin
        weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_32_address0_local = weights2_32_addr_reg_3756_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_32_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_32_ce0_local = 1'b1;
    end else begin
        weights2_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2267_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_32_we0_local = 1'b1;
    end else begin
        weights2_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_33_address0_local = weights2_33_addr_reg_3761_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_33_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_33_ce0_local = 1'b1;
    end else begin
        weights2_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2276_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_33_we0_local = 1'b1;
    end else begin
        weights2_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_34_address0_local = weights2_34_addr_reg_3766_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_34_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_34_ce0_local = 1'b1;
    end else begin
        weights2_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2285_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_34_we0_local = 1'b1;
    end else begin
        weights2_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_35_address0_local = weights2_35_addr_reg_3771_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_35_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_35_ce0_local = 1'b1;
    end else begin
        weights2_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2294_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_35_we0_local = 1'b1;
    end else begin
        weights2_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_36_address0_local = weights2_36_addr_reg_3776_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_36_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_36_ce0_local = 1'b1;
    end else begin
        weights2_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2303_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_36_we0_local = 1'b1;
    end else begin
        weights2_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_37_address0_local = weights2_37_addr_reg_3781_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_37_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_37_ce0_local = 1'b1;
    end else begin
        weights2_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2312_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_37_we0_local = 1'b1;
    end else begin
        weights2_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_38_address0_local = weights2_38_addr_reg_3786_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_38_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_38_ce0_local = 1'b1;
    end else begin
        weights2_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2321_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_38_we0_local = 1'b1;
    end else begin
        weights2_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_39_address0_local = weights2_39_addr_reg_3791_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_39_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_39_ce0_local = 1'b1;
    end else begin
        weights2_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2330_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_39_we0_local = 1'b1;
    end else begin
        weights2_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_address0_local = weights2_3_addr_reg_3611_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2006_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_40_address0_local = weights2_40_addr_reg_3796_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_40_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_40_ce0_local = 1'b1;
    end else begin
        weights2_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2339_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_40_we0_local = 1'b1;
    end else begin
        weights2_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_41_address0_local = weights2_41_addr_reg_3801_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_41_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_41_ce0_local = 1'b1;
    end else begin
        weights2_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2348_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_41_we0_local = 1'b1;
    end else begin
        weights2_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_42_address0_local = weights2_42_addr_reg_3806_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_42_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_42_ce0_local = 1'b1;
    end else begin
        weights2_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2357_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_42_we0_local = 1'b1;
    end else begin
        weights2_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_43_address0_local = weights2_43_addr_reg_3811_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_43_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_43_ce0_local = 1'b1;
    end else begin
        weights2_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2366_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_43_we0_local = 1'b1;
    end else begin
        weights2_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_44_address0_local = weights2_44_addr_reg_3816_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_44_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_44_ce0_local = 1'b1;
    end else begin
        weights2_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2375_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_44_we0_local = 1'b1;
    end else begin
        weights2_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_45_address0_local = weights2_45_addr_reg_3821_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_45_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_45_ce0_local = 1'b1;
    end else begin
        weights2_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2384_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_45_we0_local = 1'b1;
    end else begin
        weights2_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_46_address0_local = weights2_46_addr_reg_3826_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_46_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_46_ce0_local = 1'b1;
    end else begin
        weights2_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2393_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_46_we0_local = 1'b1;
    end else begin
        weights2_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_47_address0_local = weights2_47_addr_reg_3831_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_47_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_47_ce0_local = 1'b1;
    end else begin
        weights2_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2402_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_47_we0_local = 1'b1;
    end else begin
        weights2_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_48_address0_local = weights2_48_addr_reg_3836_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_48_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_48_ce0_local = 1'b1;
    end else begin
        weights2_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2411_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_48_we0_local = 1'b1;
    end else begin
        weights2_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_49_address0_local = weights2_49_addr_reg_3841_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_49_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_49_ce0_local = 1'b1;
    end else begin
        weights2_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2420_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_49_we0_local = 1'b1;
    end else begin
        weights2_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_4_address0_local = weights2_4_addr_reg_3616_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_4_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2015_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_50_address0_local = weights2_50_addr_reg_3846_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_50_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_50_ce0_local = 1'b1;
    end else begin
        weights2_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2429_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_50_we0_local = 1'b1;
    end else begin
        weights2_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_51_address0_local = weights2_51_addr_reg_3851_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_51_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_51_ce0_local = 1'b1;
    end else begin
        weights2_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2438_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_51_we0_local = 1'b1;
    end else begin
        weights2_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_52_address0_local = weights2_52_addr_reg_3856_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_52_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_52_ce0_local = 1'b1;
    end else begin
        weights2_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2447_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_52_we0_local = 1'b1;
    end else begin
        weights2_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_53_address0_local = weights2_53_addr_reg_3861_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_53_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_53_ce0_local = 1'b1;
    end else begin
        weights2_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2456_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_53_we0_local = 1'b1;
    end else begin
        weights2_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_54_address0_local = weights2_54_addr_reg_3866_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_54_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_54_ce0_local = 1'b1;
    end else begin
        weights2_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2465_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_54_we0_local = 1'b1;
    end else begin
        weights2_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_55_address0_local = weights2_55_addr_reg_3871_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_55_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_55_ce0_local = 1'b1;
    end else begin
        weights2_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2474_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_55_we0_local = 1'b1;
    end else begin
        weights2_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_56_address0_local = weights2_56_addr_reg_3876_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_56_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_56_ce0_local = 1'b1;
    end else begin
        weights2_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2483_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_56_we0_local = 1'b1;
    end else begin
        weights2_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_57_address0_local = weights2_57_addr_reg_3881_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_57_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_57_ce0_local = 1'b1;
    end else begin
        weights2_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2492_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_57_we0_local = 1'b1;
    end else begin
        weights2_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_58_address0_local = weights2_58_addr_reg_3886_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_58_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_58_ce0_local = 1'b1;
    end else begin
        weights2_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2501_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_58_we0_local = 1'b1;
    end else begin
        weights2_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_59_address0_local = weights2_59_addr_reg_3891_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_59_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_59_ce0_local = 1'b1;
    end else begin
        weights2_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2510_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_59_we0_local = 1'b1;
    end else begin
        weights2_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_5_address0_local = weights2_5_addr_reg_3621_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_5_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2024_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_60_address0_local = weights2_60_addr_reg_3896_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_60_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_60_ce0_local = 1'b1;
    end else begin
        weights2_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2519_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_60_we0_local = 1'b1;
    end else begin
        weights2_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_61_address0_local = weights2_61_addr_reg_3901_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_61_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_61_ce0_local = 1'b1;
    end else begin
        weights2_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2528_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_61_we0_local = 1'b1;
    end else begin
        weights2_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_62_address0_local = weights2_62_addr_reg_3906_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_62_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_62_ce0_local = 1'b1;
    end else begin
        weights2_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2537_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_62_we0_local = 1'b1;
    end else begin
        weights2_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_63_address0_local = weights2_63_addr_reg_3911_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_63_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_63_ce0_local = 1'b1;
    end else begin
        weights2_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2546_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_63_we0_local = 1'b1;
    end else begin
        weights2_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_6_address0_local = weights2_6_addr_reg_3626_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_6_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2033_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_7_address0_local = weights2_7_addr_reg_3631_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_7_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2042_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_8_address0_local = weights2_8_addr_reg_3636_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_8_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2051_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_9_address0_local = weights2_9_addr_reg_3641_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_9_address0_local = zext_ln152_reg_3203;
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred2060_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage4) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln152_1_fu_2187_p2 = (i_4_fu_440 + 7'd1);
assign add_ln152_fu_2157_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);
assign add_ln153_fu_2268_p2 = (select_ln121_reg_3192 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_64_fu_3069_p1 = sub3_reg_3926;
assign d_weights2_0_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_16_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_16_ce0 = d_weights2_16_ce0_local;
assign d_weights2_17_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_17_ce0 = d_weights2_17_ce0_local;
assign d_weights2_18_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_18_ce0 = d_weights2_18_ce0_local;
assign d_weights2_19_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_19_ce0 = d_weights2_19_ce0_local;
assign d_weights2_1_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_20_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_20_ce0 = d_weights2_20_ce0_local;
assign d_weights2_21_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_21_ce0 = d_weights2_21_ce0_local;
assign d_weights2_22_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_22_ce0 = d_weights2_22_ce0_local;
assign d_weights2_23_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_23_ce0 = d_weights2_23_ce0_local;
assign d_weights2_24_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_24_ce0 = d_weights2_24_ce0_local;
assign d_weights2_25_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_25_ce0 = d_weights2_25_ce0_local;
assign d_weights2_26_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_26_ce0 = d_weights2_26_ce0_local;
assign d_weights2_27_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_27_ce0 = d_weights2_27_ce0_local;
assign d_weights2_28_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_28_ce0 = d_weights2_28_ce0_local;
assign d_weights2_29_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_29_ce0 = d_weights2_29_ce0_local;
assign d_weights2_2_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_30_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_30_ce0 = d_weights2_30_ce0_local;
assign d_weights2_31_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_31_ce0 = d_weights2_31_ce0_local;
assign d_weights2_32_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_32_ce0 = d_weights2_32_ce0_local;
assign d_weights2_33_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_33_ce0 = d_weights2_33_ce0_local;
assign d_weights2_34_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_34_ce0 = d_weights2_34_ce0_local;
assign d_weights2_35_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_35_ce0 = d_weights2_35_ce0_local;
assign d_weights2_36_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_36_ce0 = d_weights2_36_ce0_local;
assign d_weights2_37_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_37_ce0 = d_weights2_37_ce0_local;
assign d_weights2_38_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_38_ce0 = d_weights2_38_ce0_local;
assign d_weights2_39_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_39_ce0 = d_weights2_39_ce0_local;
assign d_weights2_3_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_40_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_40_ce0 = d_weights2_40_ce0_local;
assign d_weights2_41_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_41_ce0 = d_weights2_41_ce0_local;
assign d_weights2_42_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_42_ce0 = d_weights2_42_ce0_local;
assign d_weights2_43_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_43_ce0 = d_weights2_43_ce0_local;
assign d_weights2_44_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_44_ce0 = d_weights2_44_ce0_local;
assign d_weights2_45_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_45_ce0 = d_weights2_45_ce0_local;
assign d_weights2_46_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_46_ce0 = d_weights2_46_ce0_local;
assign d_weights2_47_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_47_ce0 = d_weights2_47_ce0_local;
assign d_weights2_48_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_48_ce0 = d_weights2_48_ce0_local;
assign d_weights2_49_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_49_ce0 = d_weights2_49_ce0_local;
assign d_weights2_4_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_50_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_50_ce0 = d_weights2_50_ce0_local;
assign d_weights2_51_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_51_ce0 = d_weights2_51_ce0_local;
assign d_weights2_52_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_52_ce0 = d_weights2_52_ce0_local;
assign d_weights2_53_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_53_ce0 = d_weights2_53_ce0_local;
assign d_weights2_54_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_54_ce0 = d_weights2_54_ce0_local;
assign d_weights2_55_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_55_ce0 = d_weights2_55_ce0_local;
assign d_weights2_56_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_56_ce0 = d_weights2_56_ce0_local;
assign d_weights2_57_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_57_ce0 = d_weights2_57_ce0_local;
assign d_weights2_58_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_58_ce0 = d_weights2_58_ce0_local;
assign d_weights2_59_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_59_ce0 = d_weights2_59_ce0_local;
assign d_weights2_5_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_60_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_60_ce0 = d_weights2_60_ce0_local;
assign d_weights2_61_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_61_ce0 = d_weights2_61_ce0_local;
assign d_weights2_62_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_62_ce0 = d_weights2_62_ce0_local;
assign d_weights2_63_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_63_ce0 = d_weights2_63_ce0_local;
assign d_weights2_6_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln152_fu_2200_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign grp_fu_4935_p_ce = 1'b1;
assign grp_fu_4935_p_din0 = grp_fu_2119_p0;
assign grp_fu_4935_p_din1 = grp_fu_2119_p1;
assign grp_fu_4935_p_opcode = grp_fu_2119_opcode;
assign grp_fu_4939_p_ce = 1'b1;
assign grp_fu_4939_p_din0 = grp_fu_2123_p0;
assign grp_fu_4939_p_din1 = grp_fu_2123_p1;
assign icmp_ln152_fu_2151_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln153_fu_2166_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign norm_4_out = norm_fu_432;
assign select_ln121_fu_2172_p3 = ((icmp_ln153_fu_2166_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln152_fu_2193_p3 = ((icmp_ln153_reg_3187[0:0] == 1'b1) ? add_ln152_1_fu_2187_p2 : i_4_fu_440);
assign tmp_9_fu_2287_p129 = 'bx;
assign tmp_s_fu_2806_p10 = weights2_4_q0;
assign tmp_s_fu_2806_p100 = weights2_49_q0;
assign tmp_s_fu_2806_p102 = weights2_50_q0;
assign tmp_s_fu_2806_p104 = weights2_51_q0;
assign tmp_s_fu_2806_p106 = weights2_52_q0;
assign tmp_s_fu_2806_p108 = weights2_53_q0;
assign tmp_s_fu_2806_p110 = weights2_54_q0;
assign tmp_s_fu_2806_p112 = weights2_55_q0;
assign tmp_s_fu_2806_p114 = weights2_56_q0;
assign tmp_s_fu_2806_p116 = weights2_57_q0;
assign tmp_s_fu_2806_p118 = weights2_58_q0;
assign tmp_s_fu_2806_p12 = weights2_5_q0;
assign tmp_s_fu_2806_p120 = weights2_59_q0;
assign tmp_s_fu_2806_p122 = weights2_60_q0;
assign tmp_s_fu_2806_p124 = weights2_61_q0;
assign tmp_s_fu_2806_p126 = weights2_62_q0;
assign tmp_s_fu_2806_p128 = weights2_63_q0;
assign tmp_s_fu_2806_p129 = 'bx;
assign tmp_s_fu_2806_p14 = weights2_6_q0;
assign tmp_s_fu_2806_p16 = weights2_7_q0;
assign tmp_s_fu_2806_p18 = weights2_8_q0;
assign tmp_s_fu_2806_p2 = weights2_0_q0;
assign tmp_s_fu_2806_p20 = weights2_9_q0;
assign tmp_s_fu_2806_p22 = weights2_10_q0;
assign tmp_s_fu_2806_p24 = weights2_11_q0;
assign tmp_s_fu_2806_p26 = weights2_12_q0;
assign tmp_s_fu_2806_p28 = weights2_13_q0;
assign tmp_s_fu_2806_p30 = weights2_14_q0;
assign tmp_s_fu_2806_p32 = weights2_15_q0;
assign tmp_s_fu_2806_p34 = weights2_16_q0;
assign tmp_s_fu_2806_p36 = weights2_17_q0;
assign tmp_s_fu_2806_p38 = weights2_18_q0;
assign tmp_s_fu_2806_p4 = weights2_1_q0;
assign tmp_s_fu_2806_p40 = weights2_19_q0;
assign tmp_s_fu_2806_p42 = weights2_20_q0;
assign tmp_s_fu_2806_p44 = weights2_21_q0;
assign tmp_s_fu_2806_p46 = weights2_22_q0;
assign tmp_s_fu_2806_p48 = weights2_23_q0;
assign tmp_s_fu_2806_p50 = weights2_24_q0;
assign tmp_s_fu_2806_p52 = weights2_25_q0;
assign tmp_s_fu_2806_p54 = weights2_26_q0;
assign tmp_s_fu_2806_p56 = weights2_27_q0;
assign tmp_s_fu_2806_p58 = weights2_28_q0;
assign tmp_s_fu_2806_p6 = weights2_2_q0;
assign tmp_s_fu_2806_p60 = weights2_29_q0;
assign tmp_s_fu_2806_p62 = weights2_30_q0;
assign tmp_s_fu_2806_p64 = weights2_31_q0;
assign tmp_s_fu_2806_p66 = weights2_32_q0;
assign tmp_s_fu_2806_p68 = weights2_33_q0;
assign tmp_s_fu_2806_p70 = weights2_34_q0;
assign tmp_s_fu_2806_p72 = weights2_35_q0;
assign tmp_s_fu_2806_p74 = weights2_36_q0;
assign tmp_s_fu_2806_p76 = weights2_37_q0;
assign tmp_s_fu_2806_p78 = weights2_38_q0;
assign tmp_s_fu_2806_p8 = weights2_3_q0;
assign tmp_s_fu_2806_p80 = weights2_39_q0;
assign tmp_s_fu_2806_p82 = weights2_40_q0;
assign tmp_s_fu_2806_p84 = weights2_41_q0;
assign tmp_s_fu_2806_p86 = weights2_42_q0;
assign tmp_s_fu_2806_p88 = weights2_43_q0;
assign tmp_s_fu_2806_p90 = weights2_44_q0;
assign tmp_s_fu_2806_p92 = weights2_45_q0;
assign tmp_s_fu_2806_p94 = weights2_46_q0;
assign tmp_s_fu_2806_p96 = weights2_47_q0;
assign tmp_s_fu_2806_p98 = weights2_48_q0;
assign trunc_ln153_fu_2180_p1 = select_ln121_fu_2172_p3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_16_address0 = weights2_16_address0_local;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_16_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_16_we0 = weights2_16_we0_local;
assign weights2_17_address0 = weights2_17_address0_local;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_17_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_17_we0 = weights2_17_we0_local;
assign weights2_18_address0 = weights2_18_address0_local;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_18_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_18_we0 = weights2_18_we0_local;
assign weights2_19_address0 = weights2_19_address0_local;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_19_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_19_we0 = weights2_19_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_20_address0 = weights2_20_address0_local;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_20_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_20_we0 = weights2_20_we0_local;
assign weights2_21_address0 = weights2_21_address0_local;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_21_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_21_we0 = weights2_21_we0_local;
assign weights2_22_address0 = weights2_22_address0_local;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_22_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_22_we0 = weights2_22_we0_local;
assign weights2_23_address0 = weights2_23_address0_local;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_23_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_23_we0 = weights2_23_we0_local;
assign weights2_24_address0 = weights2_24_address0_local;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_24_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_24_we0 = weights2_24_we0_local;
assign weights2_25_address0 = weights2_25_address0_local;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_25_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_25_we0 = weights2_25_we0_local;
assign weights2_26_address0 = weights2_26_address0_local;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_26_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_26_we0 = weights2_26_we0_local;
assign weights2_27_address0 = weights2_27_address0_local;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_27_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_27_we0 = weights2_27_we0_local;
assign weights2_28_address0 = weights2_28_address0_local;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_28_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_28_we0 = weights2_28_we0_local;
assign weights2_29_address0 = weights2_29_address0_local;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_29_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_29_we0 = weights2_29_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_30_address0 = weights2_30_address0_local;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_30_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_30_we0 = weights2_30_we0_local;
assign weights2_31_address0 = weights2_31_address0_local;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_31_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_31_we0 = weights2_31_we0_local;
assign weights2_32_address0 = weights2_32_address0_local;
assign weights2_32_ce0 = weights2_32_ce0_local;
assign weights2_32_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_32_we0 = weights2_32_we0_local;
assign weights2_33_address0 = weights2_33_address0_local;
assign weights2_33_ce0 = weights2_33_ce0_local;
assign weights2_33_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_33_we0 = weights2_33_we0_local;
assign weights2_34_address0 = weights2_34_address0_local;
assign weights2_34_ce0 = weights2_34_ce0_local;
assign weights2_34_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_34_we0 = weights2_34_we0_local;
assign weights2_35_address0 = weights2_35_address0_local;
assign weights2_35_ce0 = weights2_35_ce0_local;
assign weights2_35_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_35_we0 = weights2_35_we0_local;
assign weights2_36_address0 = weights2_36_address0_local;
assign weights2_36_ce0 = weights2_36_ce0_local;
assign weights2_36_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_36_we0 = weights2_36_we0_local;
assign weights2_37_address0 = weights2_37_address0_local;
assign weights2_37_ce0 = weights2_37_ce0_local;
assign weights2_37_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_37_we0 = weights2_37_we0_local;
assign weights2_38_address0 = weights2_38_address0_local;
assign weights2_38_ce0 = weights2_38_ce0_local;
assign weights2_38_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_38_we0 = weights2_38_we0_local;
assign weights2_39_address0 = weights2_39_address0_local;
assign weights2_39_ce0 = weights2_39_ce0_local;
assign weights2_39_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_39_we0 = weights2_39_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_40_address0 = weights2_40_address0_local;
assign weights2_40_ce0 = weights2_40_ce0_local;
assign weights2_40_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_40_we0 = weights2_40_we0_local;
assign weights2_41_address0 = weights2_41_address0_local;
assign weights2_41_ce0 = weights2_41_ce0_local;
assign weights2_41_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_41_we0 = weights2_41_we0_local;
assign weights2_42_address0 = weights2_42_address0_local;
assign weights2_42_ce0 = weights2_42_ce0_local;
assign weights2_42_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_42_we0 = weights2_42_we0_local;
assign weights2_43_address0 = weights2_43_address0_local;
assign weights2_43_ce0 = weights2_43_ce0_local;
assign weights2_43_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_43_we0 = weights2_43_we0_local;
assign weights2_44_address0 = weights2_44_address0_local;
assign weights2_44_ce0 = weights2_44_ce0_local;
assign weights2_44_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_44_we0 = weights2_44_we0_local;
assign weights2_45_address0 = weights2_45_address0_local;
assign weights2_45_ce0 = weights2_45_ce0_local;
assign weights2_45_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_45_we0 = weights2_45_we0_local;
assign weights2_46_address0 = weights2_46_address0_local;
assign weights2_46_ce0 = weights2_46_ce0_local;
assign weights2_46_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_46_we0 = weights2_46_we0_local;
assign weights2_47_address0 = weights2_47_address0_local;
assign weights2_47_ce0 = weights2_47_ce0_local;
assign weights2_47_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_47_we0 = weights2_47_we0_local;
assign weights2_48_address0 = weights2_48_address0_local;
assign weights2_48_ce0 = weights2_48_ce0_local;
assign weights2_48_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_48_we0 = weights2_48_we0_local;
assign weights2_49_address0 = weights2_49_address0_local;
assign weights2_49_ce0 = weights2_49_ce0_local;
assign weights2_49_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_49_we0 = weights2_49_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_50_address0 = weights2_50_address0_local;
assign weights2_50_ce0 = weights2_50_ce0_local;
assign weights2_50_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_50_we0 = weights2_50_we0_local;
assign weights2_51_address0 = weights2_51_address0_local;
assign weights2_51_ce0 = weights2_51_ce0_local;
assign weights2_51_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_51_we0 = weights2_51_we0_local;
assign weights2_52_address0 = weights2_52_address0_local;
assign weights2_52_ce0 = weights2_52_ce0_local;
assign weights2_52_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_52_we0 = weights2_52_we0_local;
assign weights2_53_address0 = weights2_53_address0_local;
assign weights2_53_ce0 = weights2_53_ce0_local;
assign weights2_53_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_53_we0 = weights2_53_we0_local;
assign weights2_54_address0 = weights2_54_address0_local;
assign weights2_54_ce0 = weights2_54_ce0_local;
assign weights2_54_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_54_we0 = weights2_54_we0_local;
assign weights2_55_address0 = weights2_55_address0_local;
assign weights2_55_ce0 = weights2_55_ce0_local;
assign weights2_55_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_55_we0 = weights2_55_we0_local;
assign weights2_56_address0 = weights2_56_address0_local;
assign weights2_56_ce0 = weights2_56_ce0_local;
assign weights2_56_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_56_we0 = weights2_56_we0_local;
assign weights2_57_address0 = weights2_57_address0_local;
assign weights2_57_ce0 = weights2_57_ce0_local;
assign weights2_57_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_57_we0 = weights2_57_we0_local;
assign weights2_58_address0 = weights2_58_address0_local;
assign weights2_58_ce0 = weights2_58_ce0_local;
assign weights2_58_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_58_we0 = weights2_58_we0_local;
assign weights2_59_address0 = weights2_59_address0_local;
assign weights2_59_ce0 = weights2_59_ce0_local;
assign weights2_59_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_59_we0 = weights2_59_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_60_address0 = weights2_60_address0_local;
assign weights2_60_ce0 = weights2_60_ce0_local;
assign weights2_60_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_60_we0 = weights2_60_we0_local;
assign weights2_61_address0 = weights2_61_address0_local;
assign weights2_61_ce0 = weights2_61_ce0_local;
assign weights2_61_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_61_we0 = weights2_61_we0_local;
assign weights2_62_address0 = weights2_62_address0_local;
assign weights2_62_ce0 = weights2_62_ce0_local;
assign weights2_62_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_62_we0 = weights2_62_we0_local;
assign weights2_63_address0 = weights2_63_address0_local;
assign weights2_63_ce0 = weights2_63_ce0_local;
assign weights2_63_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_63_we0 = weights2_63_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_64_fu_3069_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln152_fu_2200_p1 = select_ln152_fu_2193_p3;
always @ (posedge ap_clk) begin
    zext_ln152_reg_3203[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
