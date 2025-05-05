module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,weights2_32_address0,weights2_32_ce0,weights2_32_q0,weights2_33_address0,weights2_33_ce0,weights2_33_q0,weights2_34_address0,weights2_34_ce0,weights2_34_q0,weights2_35_address0,weights2_35_ce0,weights2_35_q0,weights2_36_address0,weights2_36_ce0,weights2_36_q0,weights2_37_address0,weights2_37_ce0,weights2_37_q0,weights2_38_address0,weights2_38_ce0,weights2_38_q0,weights2_39_address0,weights2_39_ce0,weights2_39_q0,weights2_40_address0,weights2_40_ce0,weights2_40_q0,weights2_41_address0,weights2_41_ce0,weights2_41_q0,weights2_42_address0,weights2_42_ce0,weights2_42_q0,weights2_43_address0,weights2_43_ce0,weights2_43_q0,weights2_44_address0,weights2_44_ce0,weights2_44_q0,weights2_45_address0,weights2_45_ce0,weights2_45_q0,weights2_46_address0,weights2_46_ce0,weights2_46_q0,weights2_47_address0,weights2_47_ce0,weights2_47_q0,weights2_48_address0,weights2_48_ce0,weights2_48_q0,weights2_49_address0,weights2_49_ce0,weights2_49_q0,weights2_50_address0,weights2_50_ce0,weights2_50_q0,weights2_51_address0,weights2_51_ce0,weights2_51_q0,weights2_52_address0,weights2_52_ce0,weights2_52_q0,weights2_53_address0,weights2_53_ce0,weights2_53_q0,weights2_54_address0,weights2_54_ce0,weights2_54_q0,weights2_55_address0,weights2_55_ce0,weights2_55_q0,weights2_56_address0,weights2_56_ce0,weights2_56_q0,weights2_57_address0,weights2_57_ce0,weights2_57_q0,weights2_58_address0,weights2_58_ce0,weights2_58_q0,weights2_59_address0,weights2_59_ce0,weights2_59_q0,weights2_60_address0,weights2_60_ce0,weights2_60_q0,weights2_61_address0,weights2_61_ce0,weights2_61_q0,weights2_62_address0,weights2_62_ce0,weights2_62_q0,weights2_63_address0,weights2_63_ce0,weights2_63_q0,output_differences_0_val,output_differences_1_val,output_differences_2_val,output_differences_3_val,output_differences_4_val,output_differences_5_val,output_differences_6_val,output_differences_7_val,output_differences_8_val,output_differences_9_val,output_differences_10_val,output_differences_11_val,output_differences_12_val,output_differences_13_val,output_differences_14_val,output_differences_15_val,output_differences_16_val,output_differences_17_val,output_differences_18_val,output_differences_19_val,output_differences_20_val,output_differences_21_val,output_differences_22_val,output_differences_23_val,output_differences_24_val,output_differences_25_val,output_differences_26_val,output_differences_27_val,output_differences_28_val,output_differences_29_val,output_differences_30_val,output_differences_31_val,output_differences_32_val,output_differences_33_val,output_differences_34_val,output_differences_35_val,output_differences_36_val,output_differences_37_val,output_differences_38_val,output_differences_39_val,output_differences_40_val,output_differences_41_val,output_differences_42_val,output_differences_43_val,output_differences_44_val,output_differences_45_val,output_differences_46_val,output_differences_47_val,output_differences_48_val,output_differences_49_val,output_differences_50_val,output_differences_51_val,output_differences_52_val,output_differences_53_val,output_differences_54_val,output_differences_55_val,output_differences_56_val,output_differences_57_val,output_differences_58_val,output_differences_59_val,output_differences_60_val,output_differences_61_val,output_differences_62_val,output_differences_63_val,oracle_activations_0,oracle_activations_0_ap_vld,oracle_activations_1,oracle_activations_1_ap_vld,oracle_activations_2,oracle_activations_2_ap_vld,oracle_activations_3,oracle_activations_3_ap_vld,oracle_activations_4,oracle_activations_4_ap_vld,oracle_activations_5,oracle_activations_5_ap_vld,oracle_activations_6,oracle_activations_6_ap_vld,oracle_activations_7,oracle_activations_7_ap_vld,oracle_activations_8,oracle_activations_8_ap_vld,oracle_activations_9,oracle_activations_9_ap_vld,oracle_activations_10,oracle_activations_10_ap_vld,oracle_activations_11,oracle_activations_11_ap_vld,oracle_activations_12,oracle_activations_12_ap_vld,oracle_activations_13,oracle_activations_13_ap_vld,oracle_activations_14,oracle_activations_14_ap_vld,oracle_activations_15,oracle_activations_15_ap_vld,oracle_activations_16,oracle_activations_16_ap_vld,oracle_activations_17,oracle_activations_17_ap_vld,oracle_activations_18,oracle_activations_18_ap_vld,oracle_activations_19,oracle_activations_19_ap_vld,oracle_activations_20,oracle_activations_20_ap_vld,oracle_activations_21,oracle_activations_21_ap_vld,oracle_activations_22,oracle_activations_22_ap_vld,oracle_activations_23,oracle_activations_23_ap_vld,oracle_activations_24,oracle_activations_24_ap_vld,oracle_activations_25,oracle_activations_25_ap_vld,oracle_activations_26,oracle_activations_26_ap_vld,oracle_activations_27,oracle_activations_27_ap_vld,oracle_activations_28,oracle_activations_28_ap_vld,oracle_activations_29,oracle_activations_29_ap_vld,oracle_activations_30,oracle_activations_30_ap_vld,oracle_activations_31,oracle_activations_31_ap_vld,oracle_activations_32,oracle_activations_32_ap_vld,oracle_activations_33,oracle_activations_33_ap_vld,oracle_activations_34,oracle_activations_34_ap_vld,oracle_activations_35,oracle_activations_35_ap_vld,oracle_activations_36,oracle_activations_36_ap_vld,oracle_activations_37,oracle_activations_37_ap_vld,oracle_activations_38,oracle_activations_38_ap_vld,oracle_activations_39,oracle_activations_39_ap_vld,oracle_activations_40,oracle_activations_40_ap_vld,oracle_activations_41,oracle_activations_41_ap_vld,oracle_activations_42,oracle_activations_42_ap_vld,oracle_activations_43,oracle_activations_43_ap_vld,oracle_activations_44,oracle_activations_44_ap_vld,oracle_activations_45,oracle_activations_45_ap_vld,oracle_activations_46,oracle_activations_46_ap_vld,oracle_activations_47,oracle_activations_47_ap_vld,oracle_activations_48,oracle_activations_48_ap_vld,oracle_activations_49,oracle_activations_49_ap_vld,oracle_activations_50,oracle_activations_50_ap_vld,oracle_activations_51,oracle_activations_51_ap_vld,oracle_activations_52,oracle_activations_52_ap_vld,oracle_activations_53,oracle_activations_53_ap_vld,oracle_activations_54,oracle_activations_54_ap_vld,oracle_activations_55,oracle_activations_55_ap_vld,oracle_activations_56,oracle_activations_56_ap_vld,oracle_activations_57,oracle_activations_57_ap_vld,oracle_activations_58,oracle_activations_58_ap_vld,oracle_activations_59,oracle_activations_59_ap_vld,oracle_activations_60,oracle_activations_60_ap_vld,oracle_activations_61,oracle_activations_61_ap_vld,oracle_activations_62,oracle_activations_62_ap_vld,oracle_activations_63,oracle_activations_63_ap_vld,dactivations_0_val,dactivations_1_val,dactivations_2_val,dactivations_3_val,dactivations_4_val,dactivations_5_val,dactivations_6_val,dactivations_7_val,dactivations_8_val,dactivations_9_val,dactivations_10_val,dactivations_11_val,dactivations_12_val,dactivations_13_val,dactivations_14_val,dactivations_15_val,dactivations_16_val,dactivations_17_val,dactivations_18_val,dactivations_19_val,dactivations_20_val,dactivations_21_val,dactivations_22_val,dactivations_23_val,dactivations_24_val,dactivations_25_val,dactivations_26_val,dactivations_27_val,dactivations_28_val,dactivations_29_val,dactivations_30_val,dactivations_31_val,dactivations_32_val,dactivations_33_val,dactivations_34_val,dactivations_35_val,dactivations_36_val,dactivations_37_val,dactivations_38_val,dactivations_39_val,dactivations_40_val,dactivations_41_val,dactivations_42_val,dactivations_43_val,dactivations_44_val,dactivations_45_val,dactivations_46_val,dactivations_47_val,dactivations_48_val,dactivations_49_val,dactivations_50_val,dactivations_51_val,dactivations_52_val,dactivations_53_val,dactivations_54_val,dactivations_55_val,dactivations_56_val,dactivations_57_val,dactivations_58_val,dactivations_59_val,dactivations_60_val,dactivations_61_val,dactivations_62_val,dactivations_63_val,grp_fu_25005_p_din0,grp_fu_25005_p_din1,grp_fu_25005_p_dout0,grp_fu_25005_p_ce,grp_fu_24749_p_din0,grp_fu_24749_p_din1,grp_fu_24749_p_opcode,grp_fu_24749_p_dout0,grp_fu_24749_p_ce); 
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
input  [63:0] output_differences_0_val;
input  [63:0] output_differences_1_val;
input  [63:0] output_differences_2_val;
input  [63:0] output_differences_3_val;
input  [63:0] output_differences_4_val;
input  [63:0] output_differences_5_val;
input  [63:0] output_differences_6_val;
input  [63:0] output_differences_7_val;
input  [63:0] output_differences_8_val;
input  [63:0] output_differences_9_val;
input  [63:0] output_differences_10_val;
input  [63:0] output_differences_11_val;
input  [63:0] output_differences_12_val;
input  [63:0] output_differences_13_val;
input  [63:0] output_differences_14_val;
input  [63:0] output_differences_15_val;
input  [63:0] output_differences_16_val;
input  [63:0] output_differences_17_val;
input  [63:0] output_differences_18_val;
input  [63:0] output_differences_19_val;
input  [63:0] output_differences_20_val;
input  [63:0] output_differences_21_val;
input  [63:0] output_differences_22_val;
input  [63:0] output_differences_23_val;
input  [63:0] output_differences_24_val;
input  [63:0] output_differences_25_val;
input  [63:0] output_differences_26_val;
input  [63:0] output_differences_27_val;
input  [63:0] output_differences_28_val;
input  [63:0] output_differences_29_val;
input  [63:0] output_differences_30_val;
input  [63:0] output_differences_31_val;
input  [63:0] output_differences_32_val;
input  [63:0] output_differences_33_val;
input  [63:0] output_differences_34_val;
input  [63:0] output_differences_35_val;
input  [63:0] output_differences_36_val;
input  [63:0] output_differences_37_val;
input  [63:0] output_differences_38_val;
input  [63:0] output_differences_39_val;
input  [63:0] output_differences_40_val;
input  [63:0] output_differences_41_val;
input  [63:0] output_differences_42_val;
input  [63:0] output_differences_43_val;
input  [63:0] output_differences_44_val;
input  [63:0] output_differences_45_val;
input  [63:0] output_differences_46_val;
input  [63:0] output_differences_47_val;
input  [63:0] output_differences_48_val;
input  [63:0] output_differences_49_val;
input  [63:0] output_differences_50_val;
input  [63:0] output_differences_51_val;
input  [63:0] output_differences_52_val;
input  [63:0] output_differences_53_val;
input  [63:0] output_differences_54_val;
input  [63:0] output_differences_55_val;
input  [63:0] output_differences_56_val;
input  [63:0] output_differences_57_val;
input  [63:0] output_differences_58_val;
input  [63:0] output_differences_59_val;
input  [63:0] output_differences_60_val;
input  [63:0] output_differences_61_val;
input  [63:0] output_differences_62_val;
input  [63:0] output_differences_63_val;
output  [63:0] oracle_activations_0;
output   oracle_activations_0_ap_vld;
output  [63:0] oracle_activations_1;
output   oracle_activations_1_ap_vld;
output  [63:0] oracle_activations_2;
output   oracle_activations_2_ap_vld;
output  [63:0] oracle_activations_3;
output   oracle_activations_3_ap_vld;
output  [63:0] oracle_activations_4;
output   oracle_activations_4_ap_vld;
output  [63:0] oracle_activations_5;
output   oracle_activations_5_ap_vld;
output  [63:0] oracle_activations_6;
output   oracle_activations_6_ap_vld;
output  [63:0] oracle_activations_7;
output   oracle_activations_7_ap_vld;
output  [63:0] oracle_activations_8;
output   oracle_activations_8_ap_vld;
output  [63:0] oracle_activations_9;
output   oracle_activations_9_ap_vld;
output  [63:0] oracle_activations_10;
output   oracle_activations_10_ap_vld;
output  [63:0] oracle_activations_11;
output   oracle_activations_11_ap_vld;
output  [63:0] oracle_activations_12;
output   oracle_activations_12_ap_vld;
output  [63:0] oracle_activations_13;
output   oracle_activations_13_ap_vld;
output  [63:0] oracle_activations_14;
output   oracle_activations_14_ap_vld;
output  [63:0] oracle_activations_15;
output   oracle_activations_15_ap_vld;
output  [63:0] oracle_activations_16;
output   oracle_activations_16_ap_vld;
output  [63:0] oracle_activations_17;
output   oracle_activations_17_ap_vld;
output  [63:0] oracle_activations_18;
output   oracle_activations_18_ap_vld;
output  [63:0] oracle_activations_19;
output   oracle_activations_19_ap_vld;
output  [63:0] oracle_activations_20;
output   oracle_activations_20_ap_vld;
output  [63:0] oracle_activations_21;
output   oracle_activations_21_ap_vld;
output  [63:0] oracle_activations_22;
output   oracle_activations_22_ap_vld;
output  [63:0] oracle_activations_23;
output   oracle_activations_23_ap_vld;
output  [63:0] oracle_activations_24;
output   oracle_activations_24_ap_vld;
output  [63:0] oracle_activations_25;
output   oracle_activations_25_ap_vld;
output  [63:0] oracle_activations_26;
output   oracle_activations_26_ap_vld;
output  [63:0] oracle_activations_27;
output   oracle_activations_27_ap_vld;
output  [63:0] oracle_activations_28;
output   oracle_activations_28_ap_vld;
output  [63:0] oracle_activations_29;
output   oracle_activations_29_ap_vld;
output  [63:0] oracle_activations_30;
output   oracle_activations_30_ap_vld;
output  [63:0] oracle_activations_31;
output   oracle_activations_31_ap_vld;
output  [63:0] oracle_activations_32;
output   oracle_activations_32_ap_vld;
output  [63:0] oracle_activations_33;
output   oracle_activations_33_ap_vld;
output  [63:0] oracle_activations_34;
output   oracle_activations_34_ap_vld;
output  [63:0] oracle_activations_35;
output   oracle_activations_35_ap_vld;
output  [63:0] oracle_activations_36;
output   oracle_activations_36_ap_vld;
output  [63:0] oracle_activations_37;
output   oracle_activations_37_ap_vld;
output  [63:0] oracle_activations_38;
output   oracle_activations_38_ap_vld;
output  [63:0] oracle_activations_39;
output   oracle_activations_39_ap_vld;
output  [63:0] oracle_activations_40;
output   oracle_activations_40_ap_vld;
output  [63:0] oracle_activations_41;
output   oracle_activations_41_ap_vld;
output  [63:0] oracle_activations_42;
output   oracle_activations_42_ap_vld;
output  [63:0] oracle_activations_43;
output   oracle_activations_43_ap_vld;
output  [63:0] oracle_activations_44;
output   oracle_activations_44_ap_vld;
output  [63:0] oracle_activations_45;
output   oracle_activations_45_ap_vld;
output  [63:0] oracle_activations_46;
output   oracle_activations_46_ap_vld;
output  [63:0] oracle_activations_47;
output   oracle_activations_47_ap_vld;
output  [63:0] oracle_activations_48;
output   oracle_activations_48_ap_vld;
output  [63:0] oracle_activations_49;
output   oracle_activations_49_ap_vld;
output  [63:0] oracle_activations_50;
output   oracle_activations_50_ap_vld;
output  [63:0] oracle_activations_51;
output   oracle_activations_51_ap_vld;
output  [63:0] oracle_activations_52;
output   oracle_activations_52_ap_vld;
output  [63:0] oracle_activations_53;
output   oracle_activations_53_ap_vld;
output  [63:0] oracle_activations_54;
output   oracle_activations_54_ap_vld;
output  [63:0] oracle_activations_55;
output   oracle_activations_55_ap_vld;
output  [63:0] oracle_activations_56;
output   oracle_activations_56_ap_vld;
output  [63:0] oracle_activations_57;
output   oracle_activations_57_ap_vld;
output  [63:0] oracle_activations_58;
output   oracle_activations_58_ap_vld;
output  [63:0] oracle_activations_59;
output   oracle_activations_59_ap_vld;
output  [63:0] oracle_activations_60;
output   oracle_activations_60_ap_vld;
output  [63:0] oracle_activations_61;
output   oracle_activations_61_ap_vld;
output  [63:0] oracle_activations_62;
output   oracle_activations_62_ap_vld;
output  [63:0] oracle_activations_63;
output   oracle_activations_63_ap_vld;
input  [63:0] dactivations_0_val;
input  [63:0] dactivations_1_val;
input  [63:0] dactivations_2_val;
input  [63:0] dactivations_3_val;
input  [63:0] dactivations_4_val;
input  [63:0] dactivations_5_val;
input  [63:0] dactivations_6_val;
input  [63:0] dactivations_7_val;
input  [63:0] dactivations_8_val;
input  [63:0] dactivations_9_val;
input  [63:0] dactivations_10_val;
input  [63:0] dactivations_11_val;
input  [63:0] dactivations_12_val;
input  [63:0] dactivations_13_val;
input  [63:0] dactivations_14_val;
input  [63:0] dactivations_15_val;
input  [63:0] dactivations_16_val;
input  [63:0] dactivations_17_val;
input  [63:0] dactivations_18_val;
input  [63:0] dactivations_19_val;
input  [63:0] dactivations_20_val;
input  [63:0] dactivations_21_val;
input  [63:0] dactivations_22_val;
input  [63:0] dactivations_23_val;
input  [63:0] dactivations_24_val;
input  [63:0] dactivations_25_val;
input  [63:0] dactivations_26_val;
input  [63:0] dactivations_27_val;
input  [63:0] dactivations_28_val;
input  [63:0] dactivations_29_val;
input  [63:0] dactivations_30_val;
input  [63:0] dactivations_31_val;
input  [63:0] dactivations_32_val;
input  [63:0] dactivations_33_val;
input  [63:0] dactivations_34_val;
input  [63:0] dactivations_35_val;
input  [63:0] dactivations_36_val;
input  [63:0] dactivations_37_val;
input  [63:0] dactivations_38_val;
input  [63:0] dactivations_39_val;
input  [63:0] dactivations_40_val;
input  [63:0] dactivations_41_val;
input  [63:0] dactivations_42_val;
input  [63:0] dactivations_43_val;
input  [63:0] dactivations_44_val;
input  [63:0] dactivations_45_val;
input  [63:0] dactivations_46_val;
input  [63:0] dactivations_47_val;
input  [63:0] dactivations_48_val;
input  [63:0] dactivations_49_val;
input  [63:0] dactivations_50_val;
input  [63:0] dactivations_51_val;
input  [63:0] dactivations_52_val;
input  [63:0] dactivations_53_val;
input  [63:0] dactivations_54_val;
input  [63:0] dactivations_55_val;
input  [63:0] dactivations_56_val;
input  [63:0] dactivations_57_val;
input  [63:0] dactivations_58_val;
input  [63:0] dactivations_59_val;
input  [63:0] dactivations_60_val;
input  [63:0] dactivations_61_val;
input  [63:0] dactivations_62_val;
input  [63:0] dactivations_63_val;
output  [63:0] grp_fu_25005_p_din0;
output  [63:0] grp_fu_25005_p_din1;
input  [63:0] grp_fu_25005_p_dout0;
output   grp_fu_25005_p_ce;
output  [63:0] grp_fu_24749_p_din0;
output  [63:0] grp_fu_24749_p_din1;
output  [0:0] grp_fu_24749_p_opcode;
input  [63:0] grp_fu_24749_p_dout0;
output   grp_fu_24749_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg oracle_activations_0_ap_vld;
reg oracle_activations_1_ap_vld;
reg oracle_activations_2_ap_vld;
reg oracle_activations_3_ap_vld;
reg oracle_activations_4_ap_vld;
reg oracle_activations_5_ap_vld;
reg oracle_activations_6_ap_vld;
reg oracle_activations_7_ap_vld;
reg oracle_activations_8_ap_vld;
reg oracle_activations_9_ap_vld;
reg oracle_activations_10_ap_vld;
reg oracle_activations_11_ap_vld;
reg oracle_activations_12_ap_vld;
reg oracle_activations_13_ap_vld;
reg oracle_activations_14_ap_vld;
reg oracle_activations_15_ap_vld;
reg oracle_activations_16_ap_vld;
reg oracle_activations_17_ap_vld;
reg oracle_activations_18_ap_vld;
reg oracle_activations_19_ap_vld;
reg oracle_activations_20_ap_vld;
reg oracle_activations_21_ap_vld;
reg oracle_activations_22_ap_vld;
reg oracle_activations_23_ap_vld;
reg oracle_activations_24_ap_vld;
reg oracle_activations_25_ap_vld;
reg oracle_activations_26_ap_vld;
reg oracle_activations_27_ap_vld;
reg oracle_activations_28_ap_vld;
reg oracle_activations_29_ap_vld;
reg oracle_activations_30_ap_vld;
reg oracle_activations_31_ap_vld;
reg oracle_activations_32_ap_vld;
reg oracle_activations_33_ap_vld;
reg oracle_activations_34_ap_vld;
reg oracle_activations_35_ap_vld;
reg oracle_activations_36_ap_vld;
reg oracle_activations_37_ap_vld;
reg oracle_activations_38_ap_vld;
reg oracle_activations_39_ap_vld;
reg oracle_activations_40_ap_vld;
reg oracle_activations_41_ap_vld;
reg oracle_activations_42_ap_vld;
reg oracle_activations_43_ap_vld;
reg oracle_activations_44_ap_vld;
reg oracle_activations_45_ap_vld;
reg oracle_activations_46_ap_vld;
reg oracle_activations_47_ap_vld;
reg oracle_activations_48_ap_vld;
reg oracle_activations_49_ap_vld;
reg oracle_activations_50_ap_vld;
reg oracle_activations_51_ap_vld;
reg oracle_activations_52_ap_vld;
reg oracle_activations_53_ap_vld;
reg oracle_activations_54_ap_vld;
reg oracle_activations_55_ap_vld;
reg oracle_activations_56_ap_vld;
reg oracle_activations_57_ap_vld;
reg oracle_activations_58_ap_vld;
reg oracle_activations_59_ap_vld;
reg oracle_activations_60_ap_vld;
reg oracle_activations_61_ap_vld;
reg oracle_activations_62_ap_vld;
reg oracle_activations_63_ap_vld;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln102_fu_2951_p2;
reg   [6:0] add_ln102_reg_4213;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln102_fu_3025_p1;
reg   [5:0] trunc_ln102_reg_4218;
wire   [63:0] tmp_s_fu_3029_p131;
reg   [63:0] tmp_s_reg_4542;
wire   [63:0] empty_fu_3229_p1;
reg   [63:0] empty_reg_4547;
wire    ap_CS_fsm_state3;
wire   [63:0] empty_1143_fu_3234_p1;
reg   [63:0] empty_1143_reg_4552;
wire   [63:0] empty_1144_fu_3239_p1;
reg   [63:0] empty_1144_reg_4557;
wire   [63:0] empty_1145_fu_3244_p1;
reg   [63:0] empty_1145_reg_4562;
wire   [63:0] empty_1146_fu_3249_p1;
reg   [63:0] empty_1146_reg_4567;
wire   [63:0] empty_1147_fu_3254_p1;
reg   [63:0] empty_1147_reg_4572;
wire   [63:0] empty_1148_fu_3259_p1;
reg   [63:0] empty_1148_reg_4577;
wire   [63:0] empty_1149_fu_3264_p1;
reg   [63:0] empty_1149_reg_4582;
wire   [63:0] empty_1150_fu_3269_p1;
reg   [63:0] empty_1150_reg_4587;
wire   [63:0] empty_1151_fu_3274_p1;
reg   [63:0] empty_1151_reg_4592;
wire   [63:0] empty_1152_fu_3279_p1;
reg   [63:0] empty_1152_reg_4597;
wire   [63:0] empty_1153_fu_3284_p1;
reg   [63:0] empty_1153_reg_4602;
wire   [63:0] empty_1154_fu_3289_p1;
reg   [63:0] empty_1154_reg_4607;
wire   [63:0] empty_1155_fu_3294_p1;
reg   [63:0] empty_1155_reg_4612;
wire   [63:0] empty_1156_fu_3299_p1;
reg   [63:0] empty_1156_reg_4617;
wire   [63:0] empty_1157_fu_3304_p1;
reg   [63:0] empty_1157_reg_4622;
wire   [63:0] empty_1158_fu_3309_p1;
reg   [63:0] empty_1158_reg_4627;
wire   [63:0] empty_1159_fu_3314_p1;
reg   [63:0] empty_1159_reg_4632;
wire   [63:0] empty_1160_fu_3319_p1;
reg   [63:0] empty_1160_reg_4637;
wire   [63:0] empty_1161_fu_3324_p1;
reg   [63:0] empty_1161_reg_4642;
wire   [63:0] empty_1162_fu_3329_p1;
reg   [63:0] empty_1162_reg_4647;
wire   [63:0] empty_1163_fu_3334_p1;
reg   [63:0] empty_1163_reg_4652;
wire   [63:0] empty_1164_fu_3339_p1;
reg   [63:0] empty_1164_reg_4657;
wire   [63:0] empty_1165_fu_3344_p1;
reg   [63:0] empty_1165_reg_4662;
wire   [63:0] empty_1166_fu_3349_p1;
reg   [63:0] empty_1166_reg_4667;
wire   [63:0] empty_1167_fu_3354_p1;
reg   [63:0] empty_1167_reg_4672;
wire   [63:0] empty_1168_fu_3359_p1;
reg   [63:0] empty_1168_reg_4677;
wire   [63:0] empty_1169_fu_3364_p1;
reg   [63:0] empty_1169_reg_4682;
wire   [63:0] empty_1170_fu_3369_p1;
reg   [63:0] empty_1170_reg_4687;
wire   [63:0] empty_1171_fu_3374_p1;
reg   [63:0] empty_1171_reg_4692;
wire   [63:0] empty_1172_fu_3379_p1;
reg   [63:0] empty_1172_reg_4697;
wire   [63:0] empty_1173_fu_3384_p1;
reg   [63:0] empty_1173_reg_4702;
wire   [63:0] empty_1174_fu_3389_p1;
reg   [63:0] empty_1174_reg_4707;
wire   [63:0] empty_1175_fu_3394_p1;
reg   [63:0] empty_1175_reg_4712;
wire   [63:0] empty_1176_fu_3399_p1;
reg   [63:0] empty_1176_reg_4717;
wire   [63:0] empty_1177_fu_3404_p1;
reg   [63:0] empty_1177_reg_4722;
wire   [63:0] empty_1178_fu_3409_p1;
reg   [63:0] empty_1178_reg_4727;
wire   [63:0] empty_1179_fu_3414_p1;
reg   [63:0] empty_1179_reg_4732;
wire   [63:0] empty_1180_fu_3419_p1;
reg   [63:0] empty_1180_reg_4737;
wire   [63:0] empty_1181_fu_3424_p1;
reg   [63:0] empty_1181_reg_4742;
wire   [63:0] empty_1182_fu_3429_p1;
reg   [63:0] empty_1182_reg_4747;
wire   [63:0] empty_1183_fu_3434_p1;
reg   [63:0] empty_1183_reg_4752;
wire   [63:0] empty_1184_fu_3439_p1;
reg   [63:0] empty_1184_reg_4757;
wire   [63:0] empty_1185_fu_3444_p1;
reg   [63:0] empty_1185_reg_4762;
wire   [63:0] empty_1186_fu_3449_p1;
reg   [63:0] empty_1186_reg_4767;
wire   [63:0] empty_1187_fu_3454_p1;
reg   [63:0] empty_1187_reg_4772;
wire   [63:0] empty_1188_fu_3459_p1;
reg   [63:0] empty_1188_reg_4777;
wire   [63:0] empty_1189_fu_3464_p1;
reg   [63:0] empty_1189_reg_4782;
wire   [63:0] empty_1190_fu_3469_p1;
reg   [63:0] empty_1190_reg_4787;
wire   [63:0] empty_1191_fu_3474_p1;
reg   [63:0] empty_1191_reg_4792;
wire   [63:0] empty_1192_fu_3479_p1;
reg   [63:0] empty_1192_reg_4797;
wire   [63:0] empty_1193_fu_3484_p1;
reg   [63:0] empty_1193_reg_4802;
wire   [63:0] empty_1194_fu_3489_p1;
reg   [63:0] empty_1194_reg_4807;
wire   [63:0] empty_1195_fu_3494_p1;
reg   [63:0] empty_1195_reg_4812;
wire   [63:0] empty_1196_fu_3499_p1;
reg   [63:0] empty_1196_reg_4817;
wire   [63:0] empty_1197_fu_3504_p1;
reg   [63:0] empty_1197_reg_4822;
wire   [63:0] empty_1198_fu_3509_p1;
reg   [63:0] empty_1198_reg_4827;
wire   [63:0] empty_1199_fu_3514_p1;
reg   [63:0] empty_1199_reg_4832;
wire   [63:0] empty_1200_fu_3519_p1;
reg   [63:0] empty_1200_reg_4837;
wire   [63:0] empty_1201_fu_3524_p1;
reg   [63:0] empty_1201_reg_4842;
wire   [63:0] empty_1202_fu_3529_p1;
reg   [63:0] empty_1202_reg_4847;
wire   [63:0] empty_1203_fu_3534_p1;
reg   [63:0] empty_1203_reg_4852;
wire   [63:0] empty_1204_fu_3539_p1;
reg   [63:0] empty_1204_reg_4857;
wire   [63:0] empty_1205_fu_3544_p1;
reg   [63:0] empty_1205_reg_4862;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_ready;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_add113_out;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_add113_out_ap_vld;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln102_fu_2957_p1;
wire   [0:0] icmp_ln102_fu_2945_p2;
reg   [6:0] i_fu_680;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state10;
reg    ap_predicate_pred1379_state11;
reg    ap_predicate_pred1389_state11;
reg    ap_predicate_pred1394_state11;
reg    ap_predicate_pred1399_state11;
reg    ap_predicate_pred1404_state11;
reg    ap_predicate_pred1409_state11;
reg    ap_predicate_pred1414_state11;
reg    ap_predicate_pred1419_state11;
reg    ap_predicate_pred1424_state11;
reg    ap_predicate_pred1429_state11;
reg    ap_predicate_pred1434_state11;
reg    ap_predicate_pred1439_state11;
reg    ap_predicate_pred1444_state11;
reg    ap_predicate_pred1449_state11;
reg    ap_predicate_pred1454_state11;
reg    ap_predicate_pred1459_state11;
reg    ap_predicate_pred1464_state11;
reg    ap_predicate_pred1469_state11;
reg    ap_predicate_pred1474_state11;
reg    ap_predicate_pred1479_state11;
reg    ap_predicate_pred1484_state11;
reg    ap_predicate_pred1489_state11;
reg    ap_predicate_pred1494_state11;
reg    ap_predicate_pred1499_state11;
reg    ap_predicate_pred1504_state11;
reg    ap_predicate_pred1509_state11;
reg    ap_predicate_pred1514_state11;
reg    ap_predicate_pred1519_state11;
reg    ap_predicate_pred1524_state11;
reg    ap_predicate_pred1529_state11;
reg    ap_predicate_pred1534_state11;
reg    ap_predicate_pred1539_state11;
reg    ap_predicate_pred1544_state11;
reg    ap_predicate_pred1549_state11;
reg    ap_predicate_pred1554_state11;
reg    ap_predicate_pred1559_state11;
reg    ap_predicate_pred1564_state11;
reg    ap_predicate_pred1569_state11;
reg    ap_predicate_pred1574_state11;
reg    ap_predicate_pred1579_state11;
reg    ap_predicate_pred1584_state11;
reg    ap_predicate_pred1589_state11;
reg    ap_predicate_pred1594_state11;
reg    ap_predicate_pred1599_state11;
reg    ap_predicate_pred1604_state11;
reg    ap_predicate_pred1609_state11;
reg    ap_predicate_pred1614_state11;
reg    ap_predicate_pred1619_state11;
reg    ap_predicate_pred1624_state11;
reg    ap_predicate_pred1629_state11;
reg    ap_predicate_pred1634_state11;
reg    ap_predicate_pred1639_state11;
reg    ap_predicate_pred1644_state11;
reg    ap_predicate_pred1649_state11;
reg    ap_predicate_pred1654_state11;
reg    ap_predicate_pred1659_state11;
reg    ap_predicate_pred1664_state11;
reg    ap_predicate_pred1669_state11;
reg    ap_predicate_pred1674_state11;
reg    ap_predicate_pred1679_state11;
reg    ap_predicate_pred1684_state11;
reg    ap_predicate_pred1689_state11;
reg    ap_predicate_pred1694_state11;
reg    ap_predicate_pred1699_state11;
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
reg   [63:0] grp_fu_2869_p0;
reg   [63:0] grp_fu_2869_p1;
wire   [63:0] tmp_s_fu_3029_p129;
wire   [5:0] tmp_s_fu_3029_p130;
reg    grp_fu_2869_ce;
reg    grp_fu_4870_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire   [5:0] tmp_s_fu_3029_p1;
wire   [5:0] tmp_s_fu_3029_p3;
wire   [5:0] tmp_s_fu_3029_p5;
wire   [5:0] tmp_s_fu_3029_p7;
wire   [5:0] tmp_s_fu_3029_p9;
wire   [5:0] tmp_s_fu_3029_p11;
wire   [5:0] tmp_s_fu_3029_p13;
wire   [5:0] tmp_s_fu_3029_p15;
wire   [5:0] tmp_s_fu_3029_p17;
wire   [5:0] tmp_s_fu_3029_p19;
wire   [5:0] tmp_s_fu_3029_p21;
wire   [5:0] tmp_s_fu_3029_p23;
wire   [5:0] tmp_s_fu_3029_p25;
wire   [5:0] tmp_s_fu_3029_p27;
wire   [5:0] tmp_s_fu_3029_p29;
wire   [5:0] tmp_s_fu_3029_p31;
wire   [5:0] tmp_s_fu_3029_p33;
wire   [5:0] tmp_s_fu_3029_p35;
wire   [5:0] tmp_s_fu_3029_p37;
wire   [5:0] tmp_s_fu_3029_p39;
wire   [5:0] tmp_s_fu_3029_p41;
wire   [5:0] tmp_s_fu_3029_p43;
wire   [5:0] tmp_s_fu_3029_p45;
wire   [5:0] tmp_s_fu_3029_p47;
wire   [5:0] tmp_s_fu_3029_p49;
wire   [5:0] tmp_s_fu_3029_p51;
wire   [5:0] tmp_s_fu_3029_p53;
wire   [5:0] tmp_s_fu_3029_p55;
wire   [5:0] tmp_s_fu_3029_p57;
wire   [5:0] tmp_s_fu_3029_p59;
wire   [5:0] tmp_s_fu_3029_p61;
wire   [5:0] tmp_s_fu_3029_p63;
wire  signed [5:0] tmp_s_fu_3029_p65;
wire  signed [5:0] tmp_s_fu_3029_p67;
wire  signed [5:0] tmp_s_fu_3029_p69;
wire  signed [5:0] tmp_s_fu_3029_p71;
wire  signed [5:0] tmp_s_fu_3029_p73;
wire  signed [5:0] tmp_s_fu_3029_p75;
wire  signed [5:0] tmp_s_fu_3029_p77;
wire  signed [5:0] tmp_s_fu_3029_p79;
wire  signed [5:0] tmp_s_fu_3029_p81;
wire  signed [5:0] tmp_s_fu_3029_p83;
wire  signed [5:0] tmp_s_fu_3029_p85;
wire  signed [5:0] tmp_s_fu_3029_p87;
wire  signed [5:0] tmp_s_fu_3029_p89;
wire  signed [5:0] tmp_s_fu_3029_p91;
wire  signed [5:0] tmp_s_fu_3029_p93;
wire  signed [5:0] tmp_s_fu_3029_p95;
wire  signed [5:0] tmp_s_fu_3029_p97;
wire  signed [5:0] tmp_s_fu_3029_p99;
wire  signed [5:0] tmp_s_fu_3029_p101;
wire  signed [5:0] tmp_s_fu_3029_p103;
wire  signed [5:0] tmp_s_fu_3029_p105;
wire  signed [5:0] tmp_s_fu_3029_p107;
wire  signed [5:0] tmp_s_fu_3029_p109;
wire  signed [5:0] tmp_s_fu_3029_p111;
wire  signed [5:0] tmp_s_fu_3029_p113;
wire  signed [5:0] tmp_s_fu_3029_p115;
wire  signed [5:0] tmp_s_fu_3029_p117;
wire  signed [5:0] tmp_s_fu_3029_p119;
wire  signed [5:0] tmp_s_fu_3029_p121;
wire  signed [5:0] tmp_s_fu_3029_p123;
wire  signed [5:0] tmp_s_fu_3029_p125;
wire  signed [5:0] tmp_s_fu_3029_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg = 1'b0;
#0 i_fu_680 = 7'd0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_activations1_loop grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_ready),.output_differences_0_val(output_differences_0_val),.output_differences_16_val(output_differences_16_val),.output_differences_32_val(output_differences_32_val),.output_differences_48_val(output_differences_48_val),.empty_96(empty_1202_reg_4847),.empty_97(empty_1203_reg_4852),.empty_98(empty_1204_reg_4857),.empty_99(empty_1205_reg_4862),.output_differences_1_val(output_differences_1_val),.output_differences_17_val(output_differences_17_val),.output_differences_33_val(output_differences_33_val),.output_differences_49_val(output_differences_49_val),.empty_100(empty_reg_4547),.empty_101(empty_1143_reg_4552),.empty_102(empty_1144_reg_4557),.empty_103(empty_1145_reg_4562),.output_differences_2_val(output_differences_2_val),.output_differences_18_val(output_differences_18_val),.output_differences_34_val(output_differences_34_val),.output_differences_50_val(output_differences_50_val),.empty_104(empty_1146_reg_4567),.empty_105(empty_1147_reg_4572),.empty_106(empty_1148_reg_4577),.empty_107(empty_1149_reg_4582),.output_differences_3_val(output_differences_3_val),.output_differences_19_val(output_differences_19_val),.output_differences_35_val(output_differences_35_val),.output_differences_51_val(output_differences_51_val),.empty_108(empty_1150_reg_4587),.empty_109(empty_1151_reg_4592),.empty_110(empty_1152_reg_4597),.empty_111(empty_1153_reg_4602),.output_differences_4_val(output_differences_4_val),.output_differences_20_val(output_differences_20_val),.output_differences_36_val(output_differences_36_val),.output_differences_52_val(output_differences_52_val),.empty_112(empty_1154_reg_4607),.empty_113(empty_1155_reg_4612),.empty_114(empty_1156_reg_4617),.empty_115(empty_1157_reg_4622),.output_differences_5_val(output_differences_5_val),.output_differences_21_val(output_differences_21_val),.output_differences_37_val(output_differences_37_val),.output_differences_53_val(output_differences_53_val),.empty_116(empty_1158_reg_4627),.empty_117(empty_1159_reg_4632),.empty_118(empty_1160_reg_4637),.empty_119(empty_1161_reg_4642),.output_differences_6_val(output_differences_6_val),.output_differences_22_val(output_differences_22_val),.output_differences_38_val(output_differences_38_val),.output_differences_54_val(output_differences_54_val),.empty_120(empty_1162_reg_4647),.empty_121(empty_1163_reg_4652),.empty_122(empty_1164_reg_4657),.empty_123(empty_1165_reg_4662),.output_differences_7_val(output_differences_7_val),.output_differences_23_val(output_differences_23_val),.output_differences_39_val(output_differences_39_val),.output_differences_55_val(output_differences_55_val),.empty_124(empty_1166_reg_4667),.empty_125(empty_1167_reg_4672),.empty_126(empty_1168_reg_4677),.empty_127(empty_1169_reg_4682),.output_differences_8_val(output_differences_8_val),.output_differences_24_val(output_differences_24_val),.output_differences_40_val(output_differences_40_val),.output_differences_56_val(output_differences_56_val),.empty_128(empty_1170_reg_4687),.empty_129(empty_1171_reg_4692),.empty_130(empty_1172_reg_4697),.empty_131(empty_1173_reg_4702),.output_differences_9_val(output_differences_9_val),.output_differences_25_val(output_differences_25_val),.output_differences_41_val(output_differences_41_val),.output_differences_57_val(output_differences_57_val),.empty_132(empty_1174_reg_4707),.empty_133(empty_1175_reg_4712),.empty_134(empty_1176_reg_4717),.empty_135(empty_1177_reg_4722),.output_differences_10_val(output_differences_10_val),.output_differences_26_val(output_differences_26_val),.output_differences_42_val(output_differences_42_val),.output_differences_58_val(output_differences_58_val),.empty_136(empty_1178_reg_4727),.empty_137(empty_1179_reg_4732),.empty_138(empty_1180_reg_4737),.empty_139(empty_1181_reg_4742),.output_differences_11_val(output_differences_11_val),.output_differences_27_val(output_differences_27_val),.output_differences_43_val(output_differences_43_val),.output_differences_59_val(output_differences_59_val),.empty_140(empty_1182_reg_4747),.empty_141(empty_1183_reg_4752),.empty_142(empty_1184_reg_4757),.empty_143(empty_1185_reg_4762),.output_differences_12_val(output_differences_12_val),.output_differences_28_val(output_differences_28_val),.output_differences_44_val(output_differences_44_val),.output_differences_60_val(output_differences_60_val),.empty_144(empty_1186_reg_4767),.empty_145(empty_1187_reg_4772),.empty_146(empty_1188_reg_4777),.empty_147(empty_1189_reg_4782),.output_differences_13_val(output_differences_13_val),.output_differences_29_val(output_differences_29_val),.output_differences_45_val(output_differences_45_val),.output_differences_61_val(output_differences_61_val),.empty_148(empty_1190_reg_4787),.empty_149(empty_1191_reg_4792),.empty_150(empty_1192_reg_4797),.empty_151(empty_1193_reg_4802),.output_differences_14_val(output_differences_14_val),.output_differences_30_val(output_differences_30_val),.output_differences_46_val(output_differences_46_val),.output_differences_62_val(output_differences_62_val),.empty_152(empty_1194_reg_4807),.empty_153(empty_1195_reg_4812),.empty_154(empty_1196_reg_4817),.empty_155(empty_1197_reg_4822),.output_differences_15_val(output_differences_15_val),.output_differences_31_val(output_differences_31_val),.output_differences_47_val(output_differences_47_val),.output_differences_63_val(output_differences_63_val),.empty_156(empty_1198_reg_4827),.empty_157(empty_1199_reg_4832),.empty_158(empty_1200_reg_4837),.empty(empty_1201_reg_4842),.add113_out(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_add113_out),.add113_out_ap_vld(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_add113_out_ap_vld),.grp_fu_4870_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din0),.grp_fu_4870_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din1),.grp_fu_4870_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_opcode),.grp_fu_4870_p_dout0(grp_fu_24749_p_dout0),.grp_fu_4870_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_ce),.grp_fu_2869_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din0),.grp_fu_2869_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din1),.grp_fu_2869_p_dout0(grp_fu_25005_p_dout0),.grp_fu_2869_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U3463(.din0(dactivations_0_val),.din1(dactivations_1_val),.din2(dactivations_2_val),.din3(dactivations_3_val),.din4(dactivations_4_val),.din5(dactivations_5_val),.din6(dactivations_6_val),.din7(dactivations_7_val),.din8(dactivations_8_val),.din9(dactivations_9_val),.din10(dactivations_10_val),.din11(dactivations_11_val),.din12(dactivations_12_val),.din13(dactivations_13_val),.din14(dactivations_14_val),.din15(dactivations_15_val),.din16(dactivations_16_val),.din17(dactivations_17_val),.din18(dactivations_18_val),.din19(dactivations_19_val),.din20(dactivations_20_val),.din21(dactivations_21_val),.din22(dactivations_22_val),.din23(dactivations_23_val),.din24(dactivations_24_val),.din25(dactivations_25_val),.din26(dactivations_26_val),.din27(dactivations_27_val),.din28(dactivations_28_val),.din29(dactivations_29_val),.din30(dactivations_30_val),.din31(dactivations_31_val),.din32(dactivations_32_val),.din33(dactivations_33_val),.din34(dactivations_34_val),.din35(dactivations_35_val),.din36(dactivations_36_val),.din37(dactivations_37_val),.din38(dactivations_38_val),.din39(dactivations_39_val),.din40(dactivations_40_val),.din41(dactivations_41_val),.din42(dactivations_42_val),.din43(dactivations_43_val),.din44(dactivations_44_val),.din45(dactivations_45_val),.din46(dactivations_46_val),.din47(dactivations_47_val),.din48(dactivations_48_val),.din49(dactivations_49_val),.din50(dactivations_50_val),.din51(dactivations_51_val),.din52(dactivations_52_val),.din53(dactivations_53_val),.din54(dactivations_54_val),.din55(dactivations_55_val),.din56(dactivations_56_val),.din57(dactivations_57_val),.din58(dactivations_58_val),.din59(dactivations_59_val),.din60(dactivations_60_val),.din61(dactivations_61_val),.din62(dactivations_62_val),.din63(dactivations_63_val),.def(tmp_s_fu_3029_p129),.sel(tmp_s_fu_3029_p130),.dout(tmp_s_fu_3029_p131));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_680 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_fu_680 <= add_ln102_reg_4213;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln102_reg_4213 <= add_ln102_fu_2951_p2;
        tmp_s_reg_4542 <= tmp_s_fu_3029_p131;
        trunc_ln102_reg_4218 <= trunc_ln102_fu_3025_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_predicate_pred1379_state11 <= (trunc_ln102_reg_4218 == 6'd62);
        ap_predicate_pred1389_state11 <= (trunc_ln102_reg_4218 == 6'd61);
        ap_predicate_pred1394_state11 <= (trunc_ln102_reg_4218 == 6'd60);
        ap_predicate_pred1399_state11 <= (trunc_ln102_reg_4218 == 6'd59);
        ap_predicate_pred1404_state11 <= (trunc_ln102_reg_4218 == 6'd58);
        ap_predicate_pred1409_state11 <= (trunc_ln102_reg_4218 == 6'd57);
        ap_predicate_pred1414_state11 <= (trunc_ln102_reg_4218 == 6'd56);
        ap_predicate_pred1419_state11 <= (trunc_ln102_reg_4218 == 6'd55);
        ap_predicate_pred1424_state11 <= (trunc_ln102_reg_4218 == 6'd54);
        ap_predicate_pred1429_state11 <= (trunc_ln102_reg_4218 == 6'd53);
        ap_predicate_pred1434_state11 <= (trunc_ln102_reg_4218 == 6'd52);
        ap_predicate_pred1439_state11 <= (trunc_ln102_reg_4218 == 6'd51);
        ap_predicate_pred1444_state11 <= (trunc_ln102_reg_4218 == 6'd50);
        ap_predicate_pred1449_state11 <= (trunc_ln102_reg_4218 == 6'd49);
        ap_predicate_pred1454_state11 <= (trunc_ln102_reg_4218 == 6'd48);
        ap_predicate_pred1459_state11 <= (trunc_ln102_reg_4218 == 6'd47);
        ap_predicate_pred1464_state11 <= (trunc_ln102_reg_4218 == 6'd46);
        ap_predicate_pred1469_state11 <= (trunc_ln102_reg_4218 == 6'd45);
        ap_predicate_pred1474_state11 <= (trunc_ln102_reg_4218 == 6'd44);
        ap_predicate_pred1479_state11 <= (trunc_ln102_reg_4218 == 6'd43);
        ap_predicate_pred1484_state11 <= (trunc_ln102_reg_4218 == 6'd42);
        ap_predicate_pred1489_state11 <= (trunc_ln102_reg_4218 == 6'd41);
        ap_predicate_pred1494_state11 <= (trunc_ln102_reg_4218 == 6'd40);
        ap_predicate_pred1499_state11 <= (trunc_ln102_reg_4218 == 6'd39);
        ap_predicate_pred1504_state11 <= (trunc_ln102_reg_4218 == 6'd38);
        ap_predicate_pred1509_state11 <= (trunc_ln102_reg_4218 == 6'd37);
        ap_predicate_pred1514_state11 <= (trunc_ln102_reg_4218 == 6'd36);
        ap_predicate_pred1519_state11 <= (trunc_ln102_reg_4218 == 6'd35);
        ap_predicate_pred1524_state11 <= (trunc_ln102_reg_4218 == 6'd34);
        ap_predicate_pred1529_state11 <= (trunc_ln102_reg_4218 == 6'd33);
        ap_predicate_pred1534_state11 <= (trunc_ln102_reg_4218 == 6'd32);
        ap_predicate_pred1539_state11 <= (trunc_ln102_reg_4218 == 6'd31);
        ap_predicate_pred1544_state11 <= (trunc_ln102_reg_4218 == 6'd30);
        ap_predicate_pred1549_state11 <= (trunc_ln102_reg_4218 == 6'd29);
        ap_predicate_pred1554_state11 <= (trunc_ln102_reg_4218 == 6'd28);
        ap_predicate_pred1559_state11 <= (trunc_ln102_reg_4218 == 6'd27);
        ap_predicate_pred1564_state11 <= (trunc_ln102_reg_4218 == 6'd26);
        ap_predicate_pred1569_state11 <= (trunc_ln102_reg_4218 == 6'd25);
        ap_predicate_pred1574_state11 <= (trunc_ln102_reg_4218 == 6'd24);
        ap_predicate_pred1579_state11 <= (trunc_ln102_reg_4218 == 6'd23);
        ap_predicate_pred1584_state11 <= (trunc_ln102_reg_4218 == 6'd22);
        ap_predicate_pred1589_state11 <= (trunc_ln102_reg_4218 == 6'd21);
        ap_predicate_pred1594_state11 <= (trunc_ln102_reg_4218 == 6'd20);
        ap_predicate_pred1599_state11 <= (trunc_ln102_reg_4218 == 6'd19);
        ap_predicate_pred1604_state11 <= (trunc_ln102_reg_4218 == 6'd18);
        ap_predicate_pred1609_state11 <= (trunc_ln102_reg_4218 == 6'd17);
        ap_predicate_pred1614_state11 <= (trunc_ln102_reg_4218 == 6'd16);
        ap_predicate_pred1619_state11 <= (trunc_ln102_reg_4218 == 6'd15);
        ap_predicate_pred1624_state11 <= (trunc_ln102_reg_4218 == 6'd14);
        ap_predicate_pred1629_state11 <= (trunc_ln102_reg_4218 == 6'd13);
        ap_predicate_pred1634_state11 <= (trunc_ln102_reg_4218 == 6'd12);
        ap_predicate_pred1639_state11 <= (trunc_ln102_reg_4218 == 6'd11);
        ap_predicate_pred1644_state11 <= (trunc_ln102_reg_4218 == 6'd10);
        ap_predicate_pred1649_state11 <= (trunc_ln102_reg_4218 == 6'd9);
        ap_predicate_pred1654_state11 <= (trunc_ln102_reg_4218 == 6'd8);
        ap_predicate_pred1659_state11 <= (trunc_ln102_reg_4218 == 6'd7);
        ap_predicate_pred1664_state11 <= (trunc_ln102_reg_4218 == 6'd6);
        ap_predicate_pred1669_state11 <= (trunc_ln102_reg_4218 == 6'd5);
        ap_predicate_pred1674_state11 <= (trunc_ln102_reg_4218 == 6'd4);
        ap_predicate_pred1679_state11 <= (trunc_ln102_reg_4218 == 6'd3);
        ap_predicate_pred1684_state11 <= (trunc_ln102_reg_4218 == 6'd2);
        ap_predicate_pred1689_state11 <= (trunc_ln102_reg_4218 == 6'd1);
        ap_predicate_pred1694_state11 <= (trunc_ln102_reg_4218 == 6'd0);
        ap_predicate_pred1699_state11 <= (trunc_ln102_reg_4218 == 6'd63);
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_1143_reg_4552 <= empty_1143_fu_3234_p1;
        empty_1144_reg_4557 <= empty_1144_fu_3239_p1;
        empty_1145_reg_4562 <= empty_1145_fu_3244_p1;
        empty_1146_reg_4567 <= empty_1146_fu_3249_p1;
        empty_1147_reg_4572 <= empty_1147_fu_3254_p1;
        empty_1148_reg_4577 <= empty_1148_fu_3259_p1;
        empty_1149_reg_4582 <= empty_1149_fu_3264_p1;
        empty_1150_reg_4587 <= empty_1150_fu_3269_p1;
        empty_1151_reg_4592 <= empty_1151_fu_3274_p1;
        empty_1152_reg_4597 <= empty_1152_fu_3279_p1;
        empty_1153_reg_4602 <= empty_1153_fu_3284_p1;
        empty_1154_reg_4607 <= empty_1154_fu_3289_p1;
        empty_1155_reg_4612 <= empty_1155_fu_3294_p1;
        empty_1156_reg_4617 <= empty_1156_fu_3299_p1;
        empty_1157_reg_4622 <= empty_1157_fu_3304_p1;
        empty_1158_reg_4627 <= empty_1158_fu_3309_p1;
        empty_1159_reg_4632 <= empty_1159_fu_3314_p1;
        empty_1160_reg_4637 <= empty_1160_fu_3319_p1;
        empty_1161_reg_4642 <= empty_1161_fu_3324_p1;
        empty_1162_reg_4647 <= empty_1162_fu_3329_p1;
        empty_1163_reg_4652 <= empty_1163_fu_3334_p1;
        empty_1164_reg_4657 <= empty_1164_fu_3339_p1;
        empty_1165_reg_4662 <= empty_1165_fu_3344_p1;
        empty_1166_reg_4667 <= empty_1166_fu_3349_p1;
        empty_1167_reg_4672 <= empty_1167_fu_3354_p1;
        empty_1168_reg_4677 <= empty_1168_fu_3359_p1;
        empty_1169_reg_4682 <= empty_1169_fu_3364_p1;
        empty_1170_reg_4687 <= empty_1170_fu_3369_p1;
        empty_1171_reg_4692 <= empty_1171_fu_3374_p1;
        empty_1172_reg_4697 <= empty_1172_fu_3379_p1;
        empty_1173_reg_4702 <= empty_1173_fu_3384_p1;
        empty_1174_reg_4707 <= empty_1174_fu_3389_p1;
        empty_1175_reg_4712 <= empty_1175_fu_3394_p1;
        empty_1176_reg_4717 <= empty_1176_fu_3399_p1;
        empty_1177_reg_4722 <= empty_1177_fu_3404_p1;
        empty_1178_reg_4727 <= empty_1178_fu_3409_p1;
        empty_1179_reg_4732 <= empty_1179_fu_3414_p1;
        empty_1180_reg_4737 <= empty_1180_fu_3419_p1;
        empty_1181_reg_4742 <= empty_1181_fu_3424_p1;
        empty_1182_reg_4747 <= empty_1182_fu_3429_p1;
        empty_1183_reg_4752 <= empty_1183_fu_3434_p1;
        empty_1184_reg_4757 <= empty_1184_fu_3439_p1;
        empty_1185_reg_4762 <= empty_1185_fu_3444_p1;
        empty_1186_reg_4767 <= empty_1186_fu_3449_p1;
        empty_1187_reg_4772 <= empty_1187_fu_3454_p1;
        empty_1188_reg_4777 <= empty_1188_fu_3459_p1;
        empty_1189_reg_4782 <= empty_1189_fu_3464_p1;
        empty_1190_reg_4787 <= empty_1190_fu_3469_p1;
        empty_1191_reg_4792 <= empty_1191_fu_3474_p1;
        empty_1192_reg_4797 <= empty_1192_fu_3479_p1;
        empty_1193_reg_4802 <= empty_1193_fu_3484_p1;
        empty_1194_reg_4807 <= empty_1194_fu_3489_p1;
        empty_1195_reg_4812 <= empty_1195_fu_3494_p1;
        empty_1196_reg_4817 <= empty_1196_fu_3499_p1;
        empty_1197_reg_4822 <= empty_1197_fu_3504_p1;
        empty_1198_reg_4827 <= empty_1198_fu_3509_p1;
        empty_1199_reg_4832 <= empty_1199_fu_3514_p1;
        empty_1200_reg_4837 <= empty_1200_fu_3519_p1;
        empty_1201_reg_4842 <= empty_1201_fu_3524_p1;
        empty_1202_reg_4847 <= empty_1202_fu_3529_p1;
        empty_1203_reg_4852 <= empty_1203_fu_3534_p1;
        empty_1204_reg_4857 <= empty_1204_fu_3539_p1;
        empty_1205_reg_4862 <= empty_1205_fu_3544_p1;
        empty_reg_4547 <= empty_fu_3229_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln102_fu_2945_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln102_fu_2945_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2869_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_ce;
    end else begin
        grp_fu_2869_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2869_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2869_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_add113_out;
    end else begin
        grp_fu_2869_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2869_p1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_2869_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2869_p1 = tmp_s_reg_4542;
    end else begin
        grp_fu_2869_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_4870_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_ce;
    end else begin
        grp_fu_4870_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1694_state11 == 1'b1))) begin
        oracle_activations_0_ap_vld = 1'b1;
    end else begin
        oracle_activations_0_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1644_state11 == 1'b1))) begin
        oracle_activations_10_ap_vld = 1'b1;
    end else begin
        oracle_activations_10_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1639_state11 == 1'b1))) begin
        oracle_activations_11_ap_vld = 1'b1;
    end else begin
        oracle_activations_11_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1634_state11 == 1'b1))) begin
        oracle_activations_12_ap_vld = 1'b1;
    end else begin
        oracle_activations_12_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1629_state11 == 1'b1))) begin
        oracle_activations_13_ap_vld = 1'b1;
    end else begin
        oracle_activations_13_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1624_state11 == 1'b1))) begin
        oracle_activations_14_ap_vld = 1'b1;
    end else begin
        oracle_activations_14_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1619_state11 == 1'b1))) begin
        oracle_activations_15_ap_vld = 1'b1;
    end else begin
        oracle_activations_15_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1614_state11 == 1'b1))) begin
        oracle_activations_16_ap_vld = 1'b1;
    end else begin
        oracle_activations_16_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1609_state11 == 1'b1))) begin
        oracle_activations_17_ap_vld = 1'b1;
    end else begin
        oracle_activations_17_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1604_state11 == 1'b1))) begin
        oracle_activations_18_ap_vld = 1'b1;
    end else begin
        oracle_activations_18_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1599_state11 == 1'b1))) begin
        oracle_activations_19_ap_vld = 1'b1;
    end else begin
        oracle_activations_19_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1689_state11 == 1'b1))) begin
        oracle_activations_1_ap_vld = 1'b1;
    end else begin
        oracle_activations_1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1594_state11 == 1'b1))) begin
        oracle_activations_20_ap_vld = 1'b1;
    end else begin
        oracle_activations_20_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1589_state11 == 1'b1))) begin
        oracle_activations_21_ap_vld = 1'b1;
    end else begin
        oracle_activations_21_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1584_state11 == 1'b1))) begin
        oracle_activations_22_ap_vld = 1'b1;
    end else begin
        oracle_activations_22_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1579_state11 == 1'b1))) begin
        oracle_activations_23_ap_vld = 1'b1;
    end else begin
        oracle_activations_23_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1574_state11 == 1'b1))) begin
        oracle_activations_24_ap_vld = 1'b1;
    end else begin
        oracle_activations_24_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1569_state11 == 1'b1))) begin
        oracle_activations_25_ap_vld = 1'b1;
    end else begin
        oracle_activations_25_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1564_state11 == 1'b1))) begin
        oracle_activations_26_ap_vld = 1'b1;
    end else begin
        oracle_activations_26_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1559_state11 == 1'b1))) begin
        oracle_activations_27_ap_vld = 1'b1;
    end else begin
        oracle_activations_27_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1554_state11 == 1'b1))) begin
        oracle_activations_28_ap_vld = 1'b1;
    end else begin
        oracle_activations_28_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1549_state11 == 1'b1))) begin
        oracle_activations_29_ap_vld = 1'b1;
    end else begin
        oracle_activations_29_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1684_state11 == 1'b1))) begin
        oracle_activations_2_ap_vld = 1'b1;
    end else begin
        oracle_activations_2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1544_state11 == 1'b1))) begin
        oracle_activations_30_ap_vld = 1'b1;
    end else begin
        oracle_activations_30_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1539_state11 == 1'b1))) begin
        oracle_activations_31_ap_vld = 1'b1;
    end else begin
        oracle_activations_31_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1534_state11 == 1'b1))) begin
        oracle_activations_32_ap_vld = 1'b1;
    end else begin
        oracle_activations_32_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1529_state11 == 1'b1))) begin
        oracle_activations_33_ap_vld = 1'b1;
    end else begin
        oracle_activations_33_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1524_state11 == 1'b1))) begin
        oracle_activations_34_ap_vld = 1'b1;
    end else begin
        oracle_activations_34_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1519_state11 == 1'b1))) begin
        oracle_activations_35_ap_vld = 1'b1;
    end else begin
        oracle_activations_35_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1514_state11 == 1'b1))) begin
        oracle_activations_36_ap_vld = 1'b1;
    end else begin
        oracle_activations_36_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1509_state11 == 1'b1))) begin
        oracle_activations_37_ap_vld = 1'b1;
    end else begin
        oracle_activations_37_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1504_state11 == 1'b1))) begin
        oracle_activations_38_ap_vld = 1'b1;
    end else begin
        oracle_activations_38_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1499_state11 == 1'b1))) begin
        oracle_activations_39_ap_vld = 1'b1;
    end else begin
        oracle_activations_39_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1679_state11 == 1'b1))) begin
        oracle_activations_3_ap_vld = 1'b1;
    end else begin
        oracle_activations_3_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1494_state11 == 1'b1))) begin
        oracle_activations_40_ap_vld = 1'b1;
    end else begin
        oracle_activations_40_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1489_state11 == 1'b1))) begin
        oracle_activations_41_ap_vld = 1'b1;
    end else begin
        oracle_activations_41_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1484_state11 == 1'b1))) begin
        oracle_activations_42_ap_vld = 1'b1;
    end else begin
        oracle_activations_42_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1479_state11 == 1'b1))) begin
        oracle_activations_43_ap_vld = 1'b1;
    end else begin
        oracle_activations_43_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1474_state11 == 1'b1))) begin
        oracle_activations_44_ap_vld = 1'b1;
    end else begin
        oracle_activations_44_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1469_state11 == 1'b1))) begin
        oracle_activations_45_ap_vld = 1'b1;
    end else begin
        oracle_activations_45_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1464_state11 == 1'b1))) begin
        oracle_activations_46_ap_vld = 1'b1;
    end else begin
        oracle_activations_46_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1459_state11 == 1'b1))) begin
        oracle_activations_47_ap_vld = 1'b1;
    end else begin
        oracle_activations_47_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1454_state11 == 1'b1))) begin
        oracle_activations_48_ap_vld = 1'b1;
    end else begin
        oracle_activations_48_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1449_state11 == 1'b1))) begin
        oracle_activations_49_ap_vld = 1'b1;
    end else begin
        oracle_activations_49_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1674_state11 == 1'b1))) begin
        oracle_activations_4_ap_vld = 1'b1;
    end else begin
        oracle_activations_4_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1444_state11 == 1'b1))) begin
        oracle_activations_50_ap_vld = 1'b1;
    end else begin
        oracle_activations_50_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1439_state11 == 1'b1))) begin
        oracle_activations_51_ap_vld = 1'b1;
    end else begin
        oracle_activations_51_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1434_state11 == 1'b1))) begin
        oracle_activations_52_ap_vld = 1'b1;
    end else begin
        oracle_activations_52_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1429_state11 == 1'b1))) begin
        oracle_activations_53_ap_vld = 1'b1;
    end else begin
        oracle_activations_53_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1424_state11 == 1'b1))) begin
        oracle_activations_54_ap_vld = 1'b1;
    end else begin
        oracle_activations_54_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1419_state11 == 1'b1))) begin
        oracle_activations_55_ap_vld = 1'b1;
    end else begin
        oracle_activations_55_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1414_state11 == 1'b1))) begin
        oracle_activations_56_ap_vld = 1'b1;
    end else begin
        oracle_activations_56_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1409_state11 == 1'b1))) begin
        oracle_activations_57_ap_vld = 1'b1;
    end else begin
        oracle_activations_57_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1404_state11 == 1'b1))) begin
        oracle_activations_58_ap_vld = 1'b1;
    end else begin
        oracle_activations_58_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1399_state11 == 1'b1))) begin
        oracle_activations_59_ap_vld = 1'b1;
    end else begin
        oracle_activations_59_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1669_state11 == 1'b1))) begin
        oracle_activations_5_ap_vld = 1'b1;
    end else begin
        oracle_activations_5_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1394_state11 == 1'b1))) begin
        oracle_activations_60_ap_vld = 1'b1;
    end else begin
        oracle_activations_60_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1389_state11 == 1'b1))) begin
        oracle_activations_61_ap_vld = 1'b1;
    end else begin
        oracle_activations_61_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1379_state11 == 1'b1))) begin
        oracle_activations_62_ap_vld = 1'b1;
    end else begin
        oracle_activations_62_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1699_state11 == 1'b1))) begin
        oracle_activations_63_ap_vld = 1'b1;
    end else begin
        oracle_activations_63_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1664_state11 == 1'b1))) begin
        oracle_activations_6_ap_vld = 1'b1;
    end else begin
        oracle_activations_6_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1659_state11 == 1'b1))) begin
        oracle_activations_7_ap_vld = 1'b1;
    end else begin
        oracle_activations_7_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1654_state11 == 1'b1))) begin
        oracle_activations_8_ap_vld = 1'b1;
    end else begin
        oracle_activations_8_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_predicate_pred1649_state11 == 1'b1))) begin
        oracle_activations_9_ap_vld = 1'b1;
    end else begin
        oracle_activations_9_ap_vld = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln102_fu_2945_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_2951_p2 = (i_fu_680 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign empty_1143_fu_3234_p1 = weights2_17_q0;
assign empty_1144_fu_3239_p1 = weights2_33_q0;
assign empty_1145_fu_3244_p1 = weights2_49_q0;
assign empty_1146_fu_3249_p1 = weights2_2_q0;
assign empty_1147_fu_3254_p1 = weights2_18_q0;
assign empty_1148_fu_3259_p1 = weights2_34_q0;
assign empty_1149_fu_3264_p1 = weights2_50_q0;
assign empty_1150_fu_3269_p1 = weights2_3_q0;
assign empty_1151_fu_3274_p1 = weights2_19_q0;
assign empty_1152_fu_3279_p1 = weights2_35_q0;
assign empty_1153_fu_3284_p1 = weights2_51_q0;
assign empty_1154_fu_3289_p1 = weights2_4_q0;
assign empty_1155_fu_3294_p1 = weights2_20_q0;
assign empty_1156_fu_3299_p1 = weights2_36_q0;
assign empty_1157_fu_3304_p1 = weights2_52_q0;
assign empty_1158_fu_3309_p1 = weights2_5_q0;
assign empty_1159_fu_3314_p1 = weights2_21_q0;
assign empty_1160_fu_3319_p1 = weights2_37_q0;
assign empty_1161_fu_3324_p1 = weights2_53_q0;
assign empty_1162_fu_3329_p1 = weights2_6_q0;
assign empty_1163_fu_3334_p1 = weights2_22_q0;
assign empty_1164_fu_3339_p1 = weights2_38_q0;
assign empty_1165_fu_3344_p1 = weights2_54_q0;
assign empty_1166_fu_3349_p1 = weights2_7_q0;
assign empty_1167_fu_3354_p1 = weights2_23_q0;
assign empty_1168_fu_3359_p1 = weights2_39_q0;
assign empty_1169_fu_3364_p1 = weights2_55_q0;
assign empty_1170_fu_3369_p1 = weights2_8_q0;
assign empty_1171_fu_3374_p1 = weights2_24_q0;
assign empty_1172_fu_3379_p1 = weights2_40_q0;
assign empty_1173_fu_3384_p1 = weights2_56_q0;
assign empty_1174_fu_3389_p1 = weights2_9_q0;
assign empty_1175_fu_3394_p1 = weights2_25_q0;
assign empty_1176_fu_3399_p1 = weights2_41_q0;
assign empty_1177_fu_3404_p1 = weights2_57_q0;
assign empty_1178_fu_3409_p1 = weights2_10_q0;
assign empty_1179_fu_3414_p1 = weights2_26_q0;
assign empty_1180_fu_3419_p1 = weights2_42_q0;
assign empty_1181_fu_3424_p1 = weights2_58_q0;
assign empty_1182_fu_3429_p1 = weights2_11_q0;
assign empty_1183_fu_3434_p1 = weights2_27_q0;
assign empty_1184_fu_3439_p1 = weights2_43_q0;
assign empty_1185_fu_3444_p1 = weights2_59_q0;
assign empty_1186_fu_3449_p1 = weights2_12_q0;
assign empty_1187_fu_3454_p1 = weights2_28_q0;
assign empty_1188_fu_3459_p1 = weights2_44_q0;
assign empty_1189_fu_3464_p1 = weights2_60_q0;
assign empty_1190_fu_3469_p1 = weights2_13_q0;
assign empty_1191_fu_3474_p1 = weights2_29_q0;
assign empty_1192_fu_3479_p1 = weights2_45_q0;
assign empty_1193_fu_3484_p1 = weights2_61_q0;
assign empty_1194_fu_3489_p1 = weights2_14_q0;
assign empty_1195_fu_3494_p1 = weights2_30_q0;
assign empty_1196_fu_3499_p1 = weights2_46_q0;
assign empty_1197_fu_3504_p1 = weights2_62_q0;
assign empty_1198_fu_3509_p1 = weights2_15_q0;
assign empty_1199_fu_3514_p1 = weights2_31_q0;
assign empty_1200_fu_3519_p1 = weights2_47_q0;
assign empty_1201_fu_3524_p1 = weights2_63_q0;
assign empty_1202_fu_3529_p1 = weights2_0_q0;
assign empty_1203_fu_3534_p1 = weights2_16_q0;
assign empty_1204_fu_3539_p1 = weights2_32_q0;
assign empty_1205_fu_3544_p1 = weights2_48_q0;
assign empty_fu_3229_p1 = weights2_1_q0;
assign grp_fu_24749_p_ce = grp_fu_4870_ce;
assign grp_fu_24749_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din0;
assign grp_fu_24749_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_din1;
assign grp_fu_24749_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_grp_fu_4870_p_opcode;
assign grp_fu_25005_p_ce = grp_fu_2869_ce;
assign grp_fu_25005_p_din0 = grp_fu_2869_p0;
assign grp_fu_25005_p_din1 = grp_fu_2869_p1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_2736_ap_start_reg;
assign icmp_ln102_fu_2945_p2 = ((i_fu_680 == 7'd64) ? 1'b1 : 1'b0);
assign oracle_activations_0 = grp_fu_25005_p_dout0;
assign oracle_activations_1 = grp_fu_25005_p_dout0;
assign oracle_activations_10 = grp_fu_25005_p_dout0;
assign oracle_activations_11 = grp_fu_25005_p_dout0;
assign oracle_activations_12 = grp_fu_25005_p_dout0;
assign oracle_activations_13 = grp_fu_25005_p_dout0;
assign oracle_activations_14 = grp_fu_25005_p_dout0;
assign oracle_activations_15 = grp_fu_25005_p_dout0;
assign oracle_activations_16 = grp_fu_25005_p_dout0;
assign oracle_activations_17 = grp_fu_25005_p_dout0;
assign oracle_activations_18 = grp_fu_25005_p_dout0;
assign oracle_activations_19 = grp_fu_25005_p_dout0;
assign oracle_activations_2 = grp_fu_25005_p_dout0;
assign oracle_activations_20 = grp_fu_25005_p_dout0;
assign oracle_activations_21 = grp_fu_25005_p_dout0;
assign oracle_activations_22 = grp_fu_25005_p_dout0;
assign oracle_activations_23 = grp_fu_25005_p_dout0;
assign oracle_activations_24 = grp_fu_25005_p_dout0;
assign oracle_activations_25 = grp_fu_25005_p_dout0;
assign oracle_activations_26 = grp_fu_25005_p_dout0;
assign oracle_activations_27 = grp_fu_25005_p_dout0;
assign oracle_activations_28 = grp_fu_25005_p_dout0;
assign oracle_activations_29 = grp_fu_25005_p_dout0;
assign oracle_activations_3 = grp_fu_25005_p_dout0;
assign oracle_activations_30 = grp_fu_25005_p_dout0;
assign oracle_activations_31 = grp_fu_25005_p_dout0;
assign oracle_activations_32 = grp_fu_25005_p_dout0;
assign oracle_activations_33 = grp_fu_25005_p_dout0;
assign oracle_activations_34 = grp_fu_25005_p_dout0;
assign oracle_activations_35 = grp_fu_25005_p_dout0;
assign oracle_activations_36 = grp_fu_25005_p_dout0;
assign oracle_activations_37 = grp_fu_25005_p_dout0;
assign oracle_activations_38 = grp_fu_25005_p_dout0;
assign oracle_activations_39 = grp_fu_25005_p_dout0;
assign oracle_activations_4 = grp_fu_25005_p_dout0;
assign oracle_activations_40 = grp_fu_25005_p_dout0;
assign oracle_activations_41 = grp_fu_25005_p_dout0;
assign oracle_activations_42 = grp_fu_25005_p_dout0;
assign oracle_activations_43 = grp_fu_25005_p_dout0;
assign oracle_activations_44 = grp_fu_25005_p_dout0;
assign oracle_activations_45 = grp_fu_25005_p_dout0;
assign oracle_activations_46 = grp_fu_25005_p_dout0;
assign oracle_activations_47 = grp_fu_25005_p_dout0;
assign oracle_activations_48 = grp_fu_25005_p_dout0;
assign oracle_activations_49 = grp_fu_25005_p_dout0;
assign oracle_activations_5 = grp_fu_25005_p_dout0;
assign oracle_activations_50 = grp_fu_25005_p_dout0;
assign oracle_activations_51 = grp_fu_25005_p_dout0;
assign oracle_activations_52 = grp_fu_25005_p_dout0;
assign oracle_activations_53 = grp_fu_25005_p_dout0;
assign oracle_activations_54 = grp_fu_25005_p_dout0;
assign oracle_activations_55 = grp_fu_25005_p_dout0;
assign oracle_activations_56 = grp_fu_25005_p_dout0;
assign oracle_activations_57 = grp_fu_25005_p_dout0;
assign oracle_activations_58 = grp_fu_25005_p_dout0;
assign oracle_activations_59 = grp_fu_25005_p_dout0;
assign oracle_activations_6 = grp_fu_25005_p_dout0;
assign oracle_activations_60 = grp_fu_25005_p_dout0;
assign oracle_activations_61 = grp_fu_25005_p_dout0;
assign oracle_activations_62 = grp_fu_25005_p_dout0;
assign oracle_activations_63 = grp_fu_25005_p_dout0;
assign oracle_activations_7 = grp_fu_25005_p_dout0;
assign oracle_activations_8 = grp_fu_25005_p_dout0;
assign oracle_activations_9 = grp_fu_25005_p_dout0;
assign tmp_s_fu_3029_p129 = 'bx;
assign tmp_s_fu_3029_p130 = i_fu_680[5:0];
assign trunc_ln102_fu_3025_p1 = i_fu_680[5:0];
assign weights2_0_address0 = zext_ln102_fu_2957_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln102_fu_2957_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln102_fu_2957_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln102_fu_2957_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln102_fu_2957_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln102_fu_2957_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln102_fu_2957_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_16_address0 = zext_ln102_fu_2957_p1;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_17_address0 = zext_ln102_fu_2957_p1;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_18_address0 = zext_ln102_fu_2957_p1;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_19_address0 = zext_ln102_fu_2957_p1;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_1_address0 = zext_ln102_fu_2957_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_20_address0 = zext_ln102_fu_2957_p1;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_21_address0 = zext_ln102_fu_2957_p1;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_22_address0 = zext_ln102_fu_2957_p1;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_23_address0 = zext_ln102_fu_2957_p1;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_24_address0 = zext_ln102_fu_2957_p1;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_25_address0 = zext_ln102_fu_2957_p1;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_26_address0 = zext_ln102_fu_2957_p1;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_27_address0 = zext_ln102_fu_2957_p1;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_28_address0 = zext_ln102_fu_2957_p1;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_29_address0 = zext_ln102_fu_2957_p1;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_2_address0 = zext_ln102_fu_2957_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_30_address0 = zext_ln102_fu_2957_p1;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_31_address0 = zext_ln102_fu_2957_p1;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_32_address0 = zext_ln102_fu_2957_p1;
assign weights2_32_ce0 = weights2_32_ce0_local;
assign weights2_33_address0 = zext_ln102_fu_2957_p1;
assign weights2_33_ce0 = weights2_33_ce0_local;
assign weights2_34_address0 = zext_ln102_fu_2957_p1;
assign weights2_34_ce0 = weights2_34_ce0_local;
assign weights2_35_address0 = zext_ln102_fu_2957_p1;
assign weights2_35_ce0 = weights2_35_ce0_local;
assign weights2_36_address0 = zext_ln102_fu_2957_p1;
assign weights2_36_ce0 = weights2_36_ce0_local;
assign weights2_37_address0 = zext_ln102_fu_2957_p1;
assign weights2_37_ce0 = weights2_37_ce0_local;
assign weights2_38_address0 = zext_ln102_fu_2957_p1;
assign weights2_38_ce0 = weights2_38_ce0_local;
assign weights2_39_address0 = zext_ln102_fu_2957_p1;
assign weights2_39_ce0 = weights2_39_ce0_local;
assign weights2_3_address0 = zext_ln102_fu_2957_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_40_address0 = zext_ln102_fu_2957_p1;
assign weights2_40_ce0 = weights2_40_ce0_local;
assign weights2_41_address0 = zext_ln102_fu_2957_p1;
assign weights2_41_ce0 = weights2_41_ce0_local;
assign weights2_42_address0 = zext_ln102_fu_2957_p1;
assign weights2_42_ce0 = weights2_42_ce0_local;
assign weights2_43_address0 = zext_ln102_fu_2957_p1;
assign weights2_43_ce0 = weights2_43_ce0_local;
assign weights2_44_address0 = zext_ln102_fu_2957_p1;
assign weights2_44_ce0 = weights2_44_ce0_local;
assign weights2_45_address0 = zext_ln102_fu_2957_p1;
assign weights2_45_ce0 = weights2_45_ce0_local;
assign weights2_46_address0 = zext_ln102_fu_2957_p1;
assign weights2_46_ce0 = weights2_46_ce0_local;
assign weights2_47_address0 = zext_ln102_fu_2957_p1;
assign weights2_47_ce0 = weights2_47_ce0_local;
assign weights2_48_address0 = zext_ln102_fu_2957_p1;
assign weights2_48_ce0 = weights2_48_ce0_local;
assign weights2_49_address0 = zext_ln102_fu_2957_p1;
assign weights2_49_ce0 = weights2_49_ce0_local;
assign weights2_4_address0 = zext_ln102_fu_2957_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_50_address0 = zext_ln102_fu_2957_p1;
assign weights2_50_ce0 = weights2_50_ce0_local;
assign weights2_51_address0 = zext_ln102_fu_2957_p1;
assign weights2_51_ce0 = weights2_51_ce0_local;
assign weights2_52_address0 = zext_ln102_fu_2957_p1;
assign weights2_52_ce0 = weights2_52_ce0_local;
assign weights2_53_address0 = zext_ln102_fu_2957_p1;
assign weights2_53_ce0 = weights2_53_ce0_local;
assign weights2_54_address0 = zext_ln102_fu_2957_p1;
assign weights2_54_ce0 = weights2_54_ce0_local;
assign weights2_55_address0 = zext_ln102_fu_2957_p1;
assign weights2_55_ce0 = weights2_55_ce0_local;
assign weights2_56_address0 = zext_ln102_fu_2957_p1;
assign weights2_56_ce0 = weights2_56_ce0_local;
assign weights2_57_address0 = zext_ln102_fu_2957_p1;
assign weights2_57_ce0 = weights2_57_ce0_local;
assign weights2_58_address0 = zext_ln102_fu_2957_p1;
assign weights2_58_ce0 = weights2_58_ce0_local;
assign weights2_59_address0 = zext_ln102_fu_2957_p1;
assign weights2_59_ce0 = weights2_59_ce0_local;
assign weights2_5_address0 = zext_ln102_fu_2957_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_60_address0 = zext_ln102_fu_2957_p1;
assign weights2_60_ce0 = weights2_60_ce0_local;
assign weights2_61_address0 = zext_ln102_fu_2957_p1;
assign weights2_61_ce0 = weights2_61_ce0_local;
assign weights2_62_address0 = zext_ln102_fu_2957_p1;
assign weights2_62_ce0 = weights2_62_ce0_local;
assign weights2_63_address0 = zext_ln102_fu_2957_p1;
assign weights2_63_ce0 = weights2_63_ce0_local;
assign weights2_6_address0 = zext_ln102_fu_2957_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln102_fu_2957_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln102_fu_2957_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln102_fu_2957_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln102_fu_2957_p1 = i_fu_680;
endmodule 