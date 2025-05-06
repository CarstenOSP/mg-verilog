
module backprop_update_weights_32_33_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,d_weights1_33_address0,d_weights1_33_ce0,d_weights1_33_q0,d_weights1_35_address0,d_weights1_35_ce0,d_weights1_35_q0,d_weights1_37_address0,d_weights1_37_ce0,d_weights1_37_q0,d_weights1_39_address0,d_weights1_39_ce0,d_weights1_39_q0,d_weights1_41_address0,d_weights1_41_ce0,d_weights1_41_q0,d_weights1_43_address0,d_weights1_43_ce0,d_weights1_43_q0,d_weights1_45_address0,d_weights1_45_ce0,d_weights1_45_q0,d_weights1_47_address0,d_weights1_47_ce0,d_weights1_47_q0,d_weights1_49_address0,d_weights1_49_ce0,d_weights1_49_q0,d_weights1_51_address0,d_weights1_51_ce0,d_weights1_51_q0,d_weights1_53_address0,d_weights1_53_ce0,d_weights1_53_q0,d_weights1_55_address0,d_weights1_55_ce0,d_weights1_55_q0,d_weights1_57_address0,d_weights1_57_ce0,d_weights1_57_q0,d_weights1_59_address0,d_weights1_59_ce0,d_weights1_59_q0,d_weights1_61_address0,d_weights1_61_ce0,d_weights1_61_q0,d_weights1_63_address0,d_weights1_63_ce0,d_weights1_63_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_32_address0,d_weights1_32_ce0,d_weights1_32_q0,d_weights1_34_address0,d_weights1_34_ce0,d_weights1_34_q0,d_weights1_36_address0,d_weights1_36_ce0,d_weights1_36_q0,d_weights1_38_address0,d_weights1_38_ce0,d_weights1_38_q0,d_weights1_40_address0,d_weights1_40_ce0,d_weights1_40_q0,d_weights1_42_address0,d_weights1_42_ce0,d_weights1_42_q0,d_weights1_44_address0,d_weights1_44_ce0,d_weights1_44_q0,d_weights1_46_address0,d_weights1_46_ce0,d_weights1_46_q0,d_weights1_48_address0,d_weights1_48_ce0,d_weights1_48_q0,d_weights1_50_address0,d_weights1_50_ce0,d_weights1_50_q0,d_weights1_52_address0,d_weights1_52_ce0,d_weights1_52_q0,d_weights1_54_address0,d_weights1_54_ce0,d_weights1_54_q0,d_weights1_56_address0,d_weights1_56_ce0,d_weights1_56_q0,d_weights1_58_address0,d_weights1_58_ce0,d_weights1_58_q0,d_weights1_60_address0,d_weights1_60_ce0,d_weights1_60_q0,d_weights1_62_address0,d_weights1_62_ce0,d_weights1_62_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_32_address0,weights1_32_ce0,weights1_32_we0,weights1_32_d0,weights1_32_q0,weights1_34_address0,weights1_34_ce0,weights1_34_we0,weights1_34_d0,weights1_34_q0,weights1_36_address0,weights1_36_ce0,weights1_36_we0,weights1_36_d0,weights1_36_q0,weights1_38_address0,weights1_38_ce0,weights1_38_we0,weights1_38_d0,weights1_38_q0,weights1_40_address0,weights1_40_ce0,weights1_40_we0,weights1_40_d0,weights1_40_q0,weights1_42_address0,weights1_42_ce0,weights1_42_we0,weights1_42_d0,weights1_42_q0,weights1_44_address0,weights1_44_ce0,weights1_44_we0,weights1_44_d0,weights1_44_q0,weights1_46_address0,weights1_46_ce0,weights1_46_we0,weights1_46_d0,weights1_46_q0,weights1_48_address0,weights1_48_ce0,weights1_48_we0,weights1_48_d0,weights1_48_q0,weights1_50_address0,weights1_50_ce0,weights1_50_we0,weights1_50_d0,weights1_50_q0,weights1_52_address0,weights1_52_ce0,weights1_52_we0,weights1_52_d0,weights1_52_q0,weights1_54_address0,weights1_54_ce0,weights1_54_we0,weights1_54_d0,weights1_54_q0,weights1_56_address0,weights1_56_ce0,weights1_56_we0,weights1_56_d0,weights1_56_q0,weights1_58_address0,weights1_58_ce0,weights1_58_we0,weights1_58_d0,weights1_58_q0,weights1_60_address0,weights1_60_ce0,weights1_60_we0,weights1_60_d0,weights1_60_q0,weights1_62_address0,weights1_62_ce0,weights1_62_we0,weights1_62_d0,weights1_62_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_33_address0,weights1_33_ce0,weights1_33_we0,weights1_33_d0,weights1_33_q0,weights1_35_address0,weights1_35_ce0,weights1_35_we0,weights1_35_d0,weights1_35_q0,weights1_37_address0,weights1_37_ce0,weights1_37_we0,weights1_37_d0,weights1_37_q0,weights1_39_address0,weights1_39_ce0,weights1_39_we0,weights1_39_d0,weights1_39_q0,weights1_41_address0,weights1_41_ce0,weights1_41_we0,weights1_41_d0,weights1_41_q0,weights1_43_address0,weights1_43_ce0,weights1_43_we0,weights1_43_d0,weights1_43_q0,weights1_45_address0,weights1_45_ce0,weights1_45_we0,weights1_45_d0,weights1_45_q0,weights1_47_address0,weights1_47_ce0,weights1_47_we0,weights1_47_d0,weights1_47_q0,weights1_49_address0,weights1_49_ce0,weights1_49_we0,weights1_49_d0,weights1_49_q0,weights1_51_address0,weights1_51_ce0,weights1_51_we0,weights1_51_d0,weights1_51_q0,weights1_53_address0,weights1_53_ce0,weights1_53_we0,weights1_53_d0,weights1_53_q0,weights1_55_address0,weights1_55_ce0,weights1_55_we0,weights1_55_d0,weights1_55_q0,weights1_57_address0,weights1_57_ce0,weights1_57_we0,weights1_57_d0,weights1_57_q0,weights1_59_address0,weights1_59_ce0,weights1_59_we0,weights1_59_d0,weights1_59_q0,weights1_61_address0,weights1_61_ce0,weights1_61_we0,weights1_61_d0,weights1_61_q0,weights1_63_address0,weights1_63_ce0,weights1_63_we0,weights1_63_d0,weights1_63_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_4915_p_din0,grp_fu_4915_p_din1,grp_fu_4915_p_opcode,grp_fu_4915_p_dout0,grp_fu_4915_p_ce,grp_fu_4919_p_din0,grp_fu_4919_p_din1,grp_fu_4919_p_dout0,grp_fu_4919_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [3:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [3:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [3:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [3:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [3:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [3:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [3:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [3:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [3:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [3:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [3:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [3:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [3:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [3:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [3:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [3:0] d_weights1_33_address0;
output   d_weights1_33_ce0;
input  [63:0] d_weights1_33_q0;
output  [3:0] d_weights1_35_address0;
output   d_weights1_35_ce0;
input  [63:0] d_weights1_35_q0;
output  [3:0] d_weights1_37_address0;
output   d_weights1_37_ce0;
input  [63:0] d_weights1_37_q0;
output  [3:0] d_weights1_39_address0;
output   d_weights1_39_ce0;
input  [63:0] d_weights1_39_q0;
output  [3:0] d_weights1_41_address0;
output   d_weights1_41_ce0;
input  [63:0] d_weights1_41_q0;
output  [3:0] d_weights1_43_address0;
output   d_weights1_43_ce0;
input  [63:0] d_weights1_43_q0;
output  [3:0] d_weights1_45_address0;
output   d_weights1_45_ce0;
input  [63:0] d_weights1_45_q0;
output  [3:0] d_weights1_47_address0;
output   d_weights1_47_ce0;
input  [63:0] d_weights1_47_q0;
output  [3:0] d_weights1_49_address0;
output   d_weights1_49_ce0;
input  [63:0] d_weights1_49_q0;
output  [3:0] d_weights1_51_address0;
output   d_weights1_51_ce0;
input  [63:0] d_weights1_51_q0;
output  [3:0] d_weights1_53_address0;
output   d_weights1_53_ce0;
input  [63:0] d_weights1_53_q0;
output  [3:0] d_weights1_55_address0;
output   d_weights1_55_ce0;
input  [63:0] d_weights1_55_q0;
output  [3:0] d_weights1_57_address0;
output   d_weights1_57_ce0;
input  [63:0] d_weights1_57_q0;
output  [3:0] d_weights1_59_address0;
output   d_weights1_59_ce0;
input  [63:0] d_weights1_59_q0;
output  [3:0] d_weights1_61_address0;
output   d_weights1_61_ce0;
input  [63:0] d_weights1_61_q0;
output  [3:0] d_weights1_63_address0;
output   d_weights1_63_ce0;
input  [63:0] d_weights1_63_q0;
output  [3:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [3:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [3:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [3:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [3:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [3:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [3:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [3:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [3:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [3:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [3:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [3:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [3:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [3:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [3:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [3:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [3:0] d_weights1_32_address0;
output   d_weights1_32_ce0;
input  [63:0] d_weights1_32_q0;
output  [3:0] d_weights1_34_address0;
output   d_weights1_34_ce0;
input  [63:0] d_weights1_34_q0;
output  [3:0] d_weights1_36_address0;
output   d_weights1_36_ce0;
input  [63:0] d_weights1_36_q0;
output  [3:0] d_weights1_38_address0;
output   d_weights1_38_ce0;
input  [63:0] d_weights1_38_q0;
output  [3:0] d_weights1_40_address0;
output   d_weights1_40_ce0;
input  [63:0] d_weights1_40_q0;
output  [3:0] d_weights1_42_address0;
output   d_weights1_42_ce0;
input  [63:0] d_weights1_42_q0;
output  [3:0] d_weights1_44_address0;
output   d_weights1_44_ce0;
input  [63:0] d_weights1_44_q0;
output  [3:0] d_weights1_46_address0;
output   d_weights1_46_ce0;
input  [63:0] d_weights1_46_q0;
output  [3:0] d_weights1_48_address0;
output   d_weights1_48_ce0;
input  [63:0] d_weights1_48_q0;
output  [3:0] d_weights1_50_address0;
output   d_weights1_50_ce0;
input  [63:0] d_weights1_50_q0;
output  [3:0] d_weights1_52_address0;
output   d_weights1_52_ce0;
input  [63:0] d_weights1_52_q0;
output  [3:0] d_weights1_54_address0;
output   d_weights1_54_ce0;
input  [63:0] d_weights1_54_q0;
output  [3:0] d_weights1_56_address0;
output   d_weights1_56_ce0;
input  [63:0] d_weights1_56_q0;
output  [3:0] d_weights1_58_address0;
output   d_weights1_58_ce0;
input  [63:0] d_weights1_58_q0;
output  [3:0] d_weights1_60_address0;
output   d_weights1_60_ce0;
input  [63:0] d_weights1_60_q0;
output  [3:0] d_weights1_62_address0;
output   d_weights1_62_ce0;
input  [63:0] d_weights1_62_q0;
output  [3:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [3:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [3:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [3:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [3:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [3:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [3:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [3:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [3:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [3:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [3:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [3:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [3:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [3:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [3:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [3:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [3:0] weights1_32_address0;
output   weights1_32_ce0;
output   weights1_32_we0;
output  [63:0] weights1_32_d0;
input  [63:0] weights1_32_q0;
output  [3:0] weights1_34_address0;
output   weights1_34_ce0;
output   weights1_34_we0;
output  [63:0] weights1_34_d0;
input  [63:0] weights1_34_q0;
output  [3:0] weights1_36_address0;
output   weights1_36_ce0;
output   weights1_36_we0;
output  [63:0] weights1_36_d0;
input  [63:0] weights1_36_q0;
output  [3:0] weights1_38_address0;
output   weights1_38_ce0;
output   weights1_38_we0;
output  [63:0] weights1_38_d0;
input  [63:0] weights1_38_q0;
output  [3:0] weights1_40_address0;
output   weights1_40_ce0;
output   weights1_40_we0;
output  [63:0] weights1_40_d0;
input  [63:0] weights1_40_q0;
output  [3:0] weights1_42_address0;
output   weights1_42_ce0;
output   weights1_42_we0;
output  [63:0] weights1_42_d0;
input  [63:0] weights1_42_q0;
output  [3:0] weights1_44_address0;
output   weights1_44_ce0;
output   weights1_44_we0;
output  [63:0] weights1_44_d0;
input  [63:0] weights1_44_q0;
output  [3:0] weights1_46_address0;
output   weights1_46_ce0;
output   weights1_46_we0;
output  [63:0] weights1_46_d0;
input  [63:0] weights1_46_q0;
output  [3:0] weights1_48_address0;
output   weights1_48_ce0;
output   weights1_48_we0;
output  [63:0] weights1_48_d0;
input  [63:0] weights1_48_q0;
output  [3:0] weights1_50_address0;
output   weights1_50_ce0;
output   weights1_50_we0;
output  [63:0] weights1_50_d0;
input  [63:0] weights1_50_q0;
output  [3:0] weights1_52_address0;
output   weights1_52_ce0;
output   weights1_52_we0;
output  [63:0] weights1_52_d0;
input  [63:0] weights1_52_q0;
output  [3:0] weights1_54_address0;
output   weights1_54_ce0;
output   weights1_54_we0;
output  [63:0] weights1_54_d0;
input  [63:0] weights1_54_q0;
output  [3:0] weights1_56_address0;
output   weights1_56_ce0;
output   weights1_56_we0;
output  [63:0] weights1_56_d0;
input  [63:0] weights1_56_q0;
output  [3:0] weights1_58_address0;
output   weights1_58_ce0;
output   weights1_58_we0;
output  [63:0] weights1_58_d0;
input  [63:0] weights1_58_q0;
output  [3:0] weights1_60_address0;
output   weights1_60_ce0;
output   weights1_60_we0;
output  [63:0] weights1_60_d0;
input  [63:0] weights1_60_q0;
output  [3:0] weights1_62_address0;
output   weights1_62_ce0;
output   weights1_62_we0;
output  [63:0] weights1_62_d0;
input  [63:0] weights1_62_q0;
output  [3:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [3:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [3:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [3:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [3:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [3:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [3:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [3:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [3:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [3:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [3:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [3:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [3:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [3:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [3:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [3:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [3:0] weights1_33_address0;
output   weights1_33_ce0;
output   weights1_33_we0;
output  [63:0] weights1_33_d0;
input  [63:0] weights1_33_q0;
output  [3:0] weights1_35_address0;
output   weights1_35_ce0;
output   weights1_35_we0;
output  [63:0] weights1_35_d0;
input  [63:0] weights1_35_q0;
output  [3:0] weights1_37_address0;
output   weights1_37_ce0;
output   weights1_37_we0;
output  [63:0] weights1_37_d0;
input  [63:0] weights1_37_q0;
output  [3:0] weights1_39_address0;
output   weights1_39_ce0;
output   weights1_39_we0;
output  [63:0] weights1_39_d0;
input  [63:0] weights1_39_q0;
output  [3:0] weights1_41_address0;
output   weights1_41_ce0;
output   weights1_41_we0;
output  [63:0] weights1_41_d0;
input  [63:0] weights1_41_q0;
output  [3:0] weights1_43_address0;
output   weights1_43_ce0;
output   weights1_43_we0;
output  [63:0] weights1_43_d0;
input  [63:0] weights1_43_q0;
output  [3:0] weights1_45_address0;
output   weights1_45_ce0;
output   weights1_45_we0;
output  [63:0] weights1_45_d0;
input  [63:0] weights1_45_q0;
output  [3:0] weights1_47_address0;
output   weights1_47_ce0;
output   weights1_47_we0;
output  [63:0] weights1_47_d0;
input  [63:0] weights1_47_q0;
output  [3:0] weights1_49_address0;
output   weights1_49_ce0;
output   weights1_49_we0;
output  [63:0] weights1_49_d0;
input  [63:0] weights1_49_q0;
output  [3:0] weights1_51_address0;
output   weights1_51_ce0;
output   weights1_51_we0;
output  [63:0] weights1_51_d0;
input  [63:0] weights1_51_q0;
output  [3:0] weights1_53_address0;
output   weights1_53_ce0;
output   weights1_53_we0;
output  [63:0] weights1_53_d0;
input  [63:0] weights1_53_q0;
output  [3:0] weights1_55_address0;
output   weights1_55_ce0;
output   weights1_55_we0;
output  [63:0] weights1_55_d0;
input  [63:0] weights1_55_q0;
output  [3:0] weights1_57_address0;
output   weights1_57_ce0;
output   weights1_57_we0;
output  [63:0] weights1_57_d0;
input  [63:0] weights1_57_q0;
output  [3:0] weights1_59_address0;
output   weights1_59_ce0;
output   weights1_59_we0;
output  [63:0] weights1_59_d0;
input  [63:0] weights1_59_q0;
output  [3:0] weights1_61_address0;
output   weights1_61_ce0;
output   weights1_61_we0;
output  [63:0] weights1_61_d0;
input  [63:0] weights1_61_q0;
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
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln126_reg_3203;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_2093_p2;
reg   [0:0] icmp_ln126_reg_3203_pp0_iter1_reg;
wire   [8:0] add_ln126_fu_2099_p2;
reg   [8:0] add_ln126_reg_3207;
wire   [6:0] select_ln121_fu_2119_p3;
reg   [6:0] select_ln121_reg_3212;
wire   [3:0] select_ln126_fu_2133_p3;
reg   [3:0] select_ln126_reg_3217;
reg   [3:0] weights1_0_addr_reg_3542;
reg   [3:0] weights1_0_addr_reg_3542_pp0_iter1_reg;
reg   [3:0] weights1_2_addr_reg_3547;
reg   [3:0] weights1_2_addr_reg_3547_pp0_iter1_reg;
reg   [3:0] weights1_4_addr_reg_3552;
reg   [3:0] weights1_4_addr_reg_3552_pp0_iter1_reg;
reg   [3:0] weights1_6_addr_reg_3557;
reg   [3:0] weights1_6_addr_reg_3557_pp0_iter1_reg;
reg   [3:0] weights1_8_addr_reg_3562;
reg   [3:0] weights1_8_addr_reg_3562_pp0_iter1_reg;
reg   [3:0] weights1_10_addr_reg_3567;
reg   [3:0] weights1_10_addr_reg_3567_pp0_iter1_reg;
reg   [3:0] weights1_12_addr_reg_3572;
reg   [3:0] weights1_12_addr_reg_3572_pp0_iter1_reg;
reg   [3:0] weights1_14_addr_reg_3577;
reg   [3:0] weights1_14_addr_reg_3577_pp0_iter1_reg;
reg   [3:0] weights1_16_addr_reg_3582;
reg   [3:0] weights1_16_addr_reg_3582_pp0_iter1_reg;
reg   [3:0] weights1_18_addr_reg_3587;
reg   [3:0] weights1_18_addr_reg_3587_pp0_iter1_reg;
reg   [3:0] weights1_20_addr_reg_3592;
reg   [3:0] weights1_20_addr_reg_3592_pp0_iter1_reg;
reg   [3:0] weights1_22_addr_reg_3597;
reg   [3:0] weights1_22_addr_reg_3597_pp0_iter1_reg;
reg   [3:0] weights1_24_addr_reg_3602;
reg   [3:0] weights1_24_addr_reg_3602_pp0_iter1_reg;
reg   [3:0] weights1_26_addr_reg_3607;
reg   [3:0] weights1_26_addr_reg_3607_pp0_iter1_reg;
reg   [3:0] weights1_28_addr_reg_3612;
reg   [3:0] weights1_28_addr_reg_3612_pp0_iter1_reg;
reg   [3:0] weights1_30_addr_reg_3617;
reg   [3:0] weights1_30_addr_reg_3617_pp0_iter1_reg;
reg   [3:0] weights1_32_addr_reg_3622;
reg   [3:0] weights1_32_addr_reg_3622_pp0_iter1_reg;
reg   [3:0] weights1_34_addr_reg_3627;
reg   [3:0] weights1_34_addr_reg_3627_pp0_iter1_reg;
reg   [3:0] weights1_36_addr_reg_3632;
reg   [3:0] weights1_36_addr_reg_3632_pp0_iter1_reg;
reg   [3:0] weights1_38_addr_reg_3637;
reg   [3:0] weights1_38_addr_reg_3637_pp0_iter1_reg;
reg   [3:0] weights1_40_addr_reg_3642;
reg   [3:0] weights1_40_addr_reg_3642_pp0_iter1_reg;
reg   [3:0] weights1_42_addr_reg_3647;
reg   [3:0] weights1_42_addr_reg_3647_pp0_iter1_reg;
reg   [3:0] weights1_44_addr_reg_3652;
reg   [3:0] weights1_44_addr_reg_3652_pp0_iter1_reg;
reg   [3:0] weights1_46_addr_reg_3657;
reg   [3:0] weights1_46_addr_reg_3657_pp0_iter1_reg;
reg   [3:0] weights1_48_addr_reg_3662;
reg   [3:0] weights1_48_addr_reg_3662_pp0_iter1_reg;
reg   [3:0] weights1_50_addr_reg_3667;
reg   [3:0] weights1_50_addr_reg_3667_pp0_iter1_reg;
reg   [3:0] weights1_52_addr_reg_3672;
reg   [3:0] weights1_52_addr_reg_3672_pp0_iter1_reg;
reg   [3:0] weights1_54_addr_reg_3677;
reg   [3:0] weights1_54_addr_reg_3677_pp0_iter1_reg;
reg   [3:0] weights1_56_addr_reg_3682;
reg   [3:0] weights1_56_addr_reg_3682_pp0_iter1_reg;
reg   [3:0] weights1_58_addr_reg_3687;
reg   [3:0] weights1_58_addr_reg_3687_pp0_iter1_reg;
reg   [3:0] weights1_60_addr_reg_3692;
reg   [3:0] weights1_60_addr_reg_3692_pp0_iter1_reg;
reg   [3:0] weights1_62_addr_reg_3697;
reg   [3:0] weights1_62_addr_reg_3697_pp0_iter1_reg;
reg   [3:0] weights1_1_addr_reg_3702;
reg   [3:0] weights1_1_addr_reg_3702_pp0_iter1_reg;
reg   [3:0] weights1_3_addr_reg_3707;
reg   [3:0] weights1_3_addr_reg_3707_pp0_iter1_reg;
reg   [3:0] weights1_5_addr_reg_3712;
reg   [3:0] weights1_5_addr_reg_3712_pp0_iter1_reg;
reg   [3:0] weights1_7_addr_reg_3717;
reg   [3:0] weights1_7_addr_reg_3717_pp0_iter1_reg;
reg   [3:0] weights1_9_addr_reg_3722;
reg   [3:0] weights1_9_addr_reg_3722_pp0_iter1_reg;
reg   [3:0] weights1_11_addr_reg_3727;
reg   [3:0] weights1_11_addr_reg_3727_pp0_iter1_reg;
reg   [3:0] weights1_13_addr_reg_3732;
reg   [3:0] weights1_13_addr_reg_3732_pp0_iter1_reg;
reg   [3:0] weights1_15_addr_reg_3737;
reg   [3:0] weights1_15_addr_reg_3737_pp0_iter1_reg;
reg   [3:0] weights1_17_addr_reg_3742;
reg   [3:0] weights1_17_addr_reg_3742_pp0_iter1_reg;
reg   [3:0] weights1_19_addr_reg_3747;
reg   [3:0] weights1_19_addr_reg_3747_pp0_iter1_reg;
reg   [3:0] weights1_21_addr_reg_3752;
reg   [3:0] weights1_21_addr_reg_3752_pp0_iter1_reg;
reg   [3:0] weights1_23_addr_reg_3757;
reg   [3:0] weights1_23_addr_reg_3757_pp0_iter1_reg;
reg   [3:0] weights1_25_addr_reg_3762;
reg   [3:0] weights1_25_addr_reg_3762_pp0_iter1_reg;
reg   [3:0] weights1_27_addr_reg_3767;
reg   [3:0] weights1_27_addr_reg_3767_pp0_iter1_reg;
reg   [3:0] weights1_29_addr_reg_3772;
reg   [3:0] weights1_29_addr_reg_3772_pp0_iter1_reg;
reg   [3:0] weights1_31_addr_reg_3777;
reg   [3:0] weights1_31_addr_reg_3777_pp0_iter1_reg;
reg   [3:0] weights1_33_addr_reg_3782;
reg   [3:0] weights1_33_addr_reg_3782_pp0_iter1_reg;
reg   [3:0] weights1_35_addr_reg_3787;
reg   [3:0] weights1_35_addr_reg_3787_pp0_iter1_reg;
reg   [3:0] weights1_37_addr_reg_3792;
reg   [3:0] weights1_37_addr_reg_3792_pp0_iter1_reg;
reg   [3:0] weights1_39_addr_reg_3797;
reg   [3:0] weights1_39_addr_reg_3797_pp0_iter1_reg;
reg   [3:0] weights1_41_addr_reg_3802;
reg   [3:0] weights1_41_addr_reg_3802_pp0_iter1_reg;
reg   [3:0] weights1_43_addr_reg_3807;
reg   [3:0] weights1_43_addr_reg_3807_pp0_iter1_reg;
reg   [3:0] weights1_45_addr_reg_3812;
reg   [3:0] weights1_45_addr_reg_3812_pp0_iter1_reg;
reg   [3:0] weights1_47_addr_reg_3817;
reg   [3:0] weights1_47_addr_reg_3817_pp0_iter1_reg;
reg   [3:0] weights1_49_addr_reg_3822;
reg   [3:0] weights1_49_addr_reg_3822_pp0_iter1_reg;
reg   [3:0] weights1_51_addr_reg_3827;
reg   [3:0] weights1_51_addr_reg_3827_pp0_iter1_reg;
reg   [3:0] weights1_53_addr_reg_3832;
reg   [3:0] weights1_53_addr_reg_3832_pp0_iter1_reg;
reg   [3:0] weights1_55_addr_reg_3837;
reg   [3:0] weights1_55_addr_reg_3837_pp0_iter1_reg;
reg   [3:0] weights1_57_addr_reg_3842;
reg   [3:0] weights1_57_addr_reg_3842_pp0_iter1_reg;
reg   [3:0] weights1_59_addr_reg_3847;
reg   [3:0] weights1_59_addr_reg_3847_pp0_iter1_reg;
reg   [3:0] weights1_61_addr_reg_3852;
reg   [3:0] weights1_61_addr_reg_3852_pp0_iter1_reg;
reg   [3:0] weights1_63_addr_reg_3857;
reg   [3:0] weights1_63_addr_reg_3857_pp0_iter1_reg;
wire   [5:0] trunc_ln127_fu_2273_p1;
reg   [5:0] trunc_ln127_reg_3862;
reg   [5:0] trunc_ln127_reg_3862_pp0_iter1_reg;
wire   [63:0] tmp_5_fu_2277_p67;
reg   [63:0] tmp_5_reg_3870;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_6_fu_2540_p67;
reg   [63:0] tmp_6_reg_3875;
wire   [63:0] tmp_7_fu_2675_p67;
reg   [63:0] tmp_7_reg_3880;
wire   [63:0] tmp_8_fu_2938_p67;
reg   [63:0] tmp_8_reg_3885;
reg   [63:0] mul4_reg_3890;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul4_1_reg_3895;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sub_reg_3900;
reg   [63:0] sub_1_reg_3907;
reg   [63:0] mul2_reg_3914;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] mul17_1_reg_3924;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] norm_3_reg_3929;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln126_fu_2141_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] norm_2_fu_374;
wire    ap_block_pp0_stage7;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage7;
reg    ap_idle_pp0_0to0;
reg   [6:0] j_fu_378;
wire   [6:0] add_ln127_fu_3073_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_382;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten_fu_386;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage7_01001;
reg    d_weights1_1_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_31_ce0_local;
reg    d_weights1_33_ce0_local;
reg    d_weights1_35_ce0_local;
reg    d_weights1_37_ce0_local;
reg    d_weights1_39_ce0_local;
reg    d_weights1_41_ce0_local;
reg    d_weights1_43_ce0_local;
reg    d_weights1_45_ce0_local;
reg    d_weights1_47_ce0_local;
reg    d_weights1_49_ce0_local;
reg    d_weights1_51_ce0_local;
reg    d_weights1_53_ce0_local;
reg    d_weights1_55_ce0_local;
reg    d_weights1_57_ce0_local;
reg    d_weights1_59_ce0_local;
reg    d_weights1_61_ce0_local;
reg    d_weights1_63_ce0_local;
reg    d_weights1_0_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_30_ce0_local;
reg    d_weights1_32_ce0_local;
reg    d_weights1_34_ce0_local;
reg    d_weights1_36_ce0_local;
reg    d_weights1_38_ce0_local;
reg    d_weights1_40_ce0_local;
reg    d_weights1_42_ce0_local;
reg    d_weights1_44_ce0_local;
reg    d_weights1_46_ce0_local;
reg    d_weights1_48_ce0_local;
reg    d_weights1_50_ce0_local;
reg    d_weights1_52_ce0_local;
reg    d_weights1_54_ce0_local;
reg    d_weights1_56_ce0_local;
reg    d_weights1_58_ce0_local;
reg    d_weights1_60_ce0_local;
reg    d_weights1_62_ce0_local;
reg    weights1_0_ce0_local;
reg   [3:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred1725_state18;
wire   [63:0] bitcast_ln128_64_fu_3091_p1;
wire    ap_block_pp0_stage1;
reg    weights1_2_ce0_local;
reg   [3:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred1741_state18;
reg    weights1_4_ce0_local;
reg   [3:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred1751_state18;
reg    weights1_6_ce0_local;
reg   [3:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred1761_state18;
reg    weights1_8_ce0_local;
reg   [3:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred1771_state18;
reg    weights1_10_ce0_local;
reg   [3:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1781_state18;
reg    weights1_12_ce0_local;
reg   [3:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1791_state18;
reg    weights1_14_ce0_local;
reg   [3:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1801_state18;
reg    weights1_16_ce0_local;
reg   [3:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1811_state18;
reg    weights1_18_ce0_local;
reg   [3:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1821_state18;
reg    weights1_20_ce0_local;
reg   [3:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1831_state18;
reg    weights1_22_ce0_local;
reg   [3:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1841_state18;
reg    weights1_24_ce0_local;
reg   [3:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1851_state18;
reg    weights1_26_ce0_local;
reg   [3:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1861_state18;
reg    weights1_28_ce0_local;
reg   [3:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1871_state18;
reg    weights1_30_ce0_local;
reg   [3:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred1881_state18;
reg    weights1_32_ce0_local;
reg   [3:0] weights1_32_address0_local;
reg    weights1_32_we0_local;
reg    ap_predicate_pred1891_state18;
reg    weights1_34_ce0_local;
reg   [3:0] weights1_34_address0_local;
reg    weights1_34_we0_local;
reg    ap_predicate_pred1901_state18;
reg    weights1_36_ce0_local;
reg   [3:0] weights1_36_address0_local;
reg    weights1_36_we0_local;
reg    ap_predicate_pred1911_state18;
reg    weights1_38_ce0_local;
reg   [3:0] weights1_38_address0_local;
reg    weights1_38_we0_local;
reg    ap_predicate_pred1921_state18;
reg    weights1_40_ce0_local;
reg   [3:0] weights1_40_address0_local;
reg    weights1_40_we0_local;
reg    ap_predicate_pred1931_state18;
reg    weights1_42_ce0_local;
reg   [3:0] weights1_42_address0_local;
reg    weights1_42_we0_local;
reg    ap_predicate_pred1941_state18;
reg    weights1_44_ce0_local;
reg   [3:0] weights1_44_address0_local;
reg    weights1_44_we0_local;
reg    ap_predicate_pred1951_state18;
reg    weights1_46_ce0_local;
reg   [3:0] weights1_46_address0_local;
reg    weights1_46_we0_local;
reg    ap_predicate_pred1961_state18;
reg    weights1_48_ce0_local;
reg   [3:0] weights1_48_address0_local;
reg    weights1_48_we0_local;
reg    ap_predicate_pred1971_state18;
reg    weights1_50_ce0_local;
reg   [3:0] weights1_50_address0_local;
reg    weights1_50_we0_local;
reg    ap_predicate_pred1981_state18;
reg    weights1_52_ce0_local;
reg   [3:0] weights1_52_address0_local;
reg    weights1_52_we0_local;
reg    ap_predicate_pred1991_state18;
reg    weights1_54_ce0_local;
reg   [3:0] weights1_54_address0_local;
reg    weights1_54_we0_local;
reg    ap_predicate_pred2001_state18;
reg    weights1_56_ce0_local;
reg   [3:0] weights1_56_address0_local;
reg    weights1_56_we0_local;
reg    ap_predicate_pred2011_state18;
reg    weights1_58_ce0_local;
reg   [3:0] weights1_58_address0_local;
reg    weights1_58_we0_local;
reg    ap_predicate_pred2021_state18;
reg    weights1_60_ce0_local;
reg   [3:0] weights1_60_address0_local;
reg    weights1_60_we0_local;
reg    ap_predicate_pred2031_state18;
reg    weights1_62_ce0_local;
reg   [3:0] weights1_62_address0_local;
reg    weights1_62_we0_local;
reg    ap_predicate_pred2100_state18;
reg    weights1_1_ce0_local;
reg   [3:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_predicate_pred2119_state19;
wire   [63:0] bitcast_ln128_65_fu_3126_p1;
wire    ap_block_pp0_stage2;
reg    weights1_3_ce0_local;
reg   [3:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    ap_predicate_pred2134_state19;
reg    weights1_5_ce0_local;
reg   [3:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred2143_state19;
reg    weights1_7_ce0_local;
reg   [3:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred2152_state19;
reg    weights1_9_ce0_local;
reg   [3:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred2161_state19;
reg    weights1_11_ce0_local;
reg   [3:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred2170_state19;
reg    weights1_13_ce0_local;
reg   [3:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred2179_state19;
reg    weights1_15_ce0_local;
reg   [3:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred2188_state19;
reg    weights1_17_ce0_local;
reg   [3:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred2197_state19;
reg    weights1_19_ce0_local;
reg   [3:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred2206_state19;
reg    weights1_21_ce0_local;
reg   [3:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred2215_state19;
reg    weights1_23_ce0_local;
reg   [3:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred2224_state19;
reg    weights1_25_ce0_local;
reg   [3:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred2233_state19;
reg    weights1_27_ce0_local;
reg   [3:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred2242_state19;
reg    weights1_29_ce0_local;
reg   [3:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred2251_state19;
reg    weights1_31_ce0_local;
reg   [3:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred2260_state19;
reg    weights1_33_ce0_local;
reg   [3:0] weights1_33_address0_local;
reg    weights1_33_we0_local;
reg    ap_predicate_pred2269_state19;
reg    weights1_35_ce0_local;
reg   [3:0] weights1_35_address0_local;
reg    weights1_35_we0_local;
reg    ap_predicate_pred2278_state19;
reg    weights1_37_ce0_local;
reg   [3:0] weights1_37_address0_local;
reg    weights1_37_we0_local;
reg    ap_predicate_pred2287_state19;
reg    weights1_39_ce0_local;
reg   [3:0] weights1_39_address0_local;
reg    weights1_39_we0_local;
reg    ap_predicate_pred2296_state19;
reg    weights1_41_ce0_local;
reg   [3:0] weights1_41_address0_local;
reg    weights1_41_we0_local;
reg    ap_predicate_pred2305_state19;
reg    weights1_43_ce0_local;
reg   [3:0] weights1_43_address0_local;
reg    weights1_43_we0_local;
reg    ap_predicate_pred2314_state19;
reg    weights1_45_ce0_local;
reg   [3:0] weights1_45_address0_local;
reg    weights1_45_we0_local;
reg    ap_predicate_pred2323_state19;
reg    weights1_47_ce0_local;
reg   [3:0] weights1_47_address0_local;
reg    weights1_47_we0_local;
reg    ap_predicate_pred2332_state19;
reg    weights1_49_ce0_local;
reg   [3:0] weights1_49_address0_local;
reg    weights1_49_we0_local;
reg    ap_predicate_pred2341_state19;
reg    weights1_51_ce0_local;
reg   [3:0] weights1_51_address0_local;
reg    weights1_51_we0_local;
reg    ap_predicate_pred2350_state19;
reg    weights1_53_ce0_local;
reg   [3:0] weights1_53_address0_local;
reg    weights1_53_we0_local;
reg    ap_predicate_pred2359_state19;
reg    weights1_55_ce0_local;
reg   [3:0] weights1_55_address0_local;
reg    weights1_55_we0_local;
reg    ap_predicate_pred2368_state19;
reg    weights1_57_ce0_local;
reg   [3:0] weights1_57_address0_local;
reg    weights1_57_we0_local;
reg    ap_predicate_pred2377_state19;
reg    weights1_59_ce0_local;
reg   [3:0] weights1_59_address0_local;
reg    weights1_59_we0_local;
reg    ap_predicate_pred2386_state19;
reg    weights1_61_ce0_local;
reg   [3:0] weights1_61_address0_local;
reg    weights1_61_we0_local;
reg    ap_predicate_pred2395_state19;
reg    weights1_63_ce0_local;
reg   [3:0] weights1_63_address0_local;
reg    weights1_63_we0_local;
reg    ap_predicate_pred2464_state19;
reg   [63:0] grp_fu_2061_p0;
reg   [63:0] grp_fu_2061_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
reg   [63:0] grp_fu_2065_p0;
reg   [63:0] grp_fu_2065_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_fu_2111_p3;
wire   [3:0] add_ln126_1_fu_2127_p2;
wire   [63:0] tmp_5_fu_2277_p65;
wire   [63:0] tmp_6_fu_2540_p2;
wire   [63:0] tmp_6_fu_2540_p4;
wire   [63:0] tmp_6_fu_2540_p6;
wire   [63:0] tmp_6_fu_2540_p8;
wire   [63:0] tmp_6_fu_2540_p10;
wire   [63:0] tmp_6_fu_2540_p12;
wire   [63:0] tmp_6_fu_2540_p14;
wire   [63:0] tmp_6_fu_2540_p16;
wire   [63:0] tmp_6_fu_2540_p18;
wire   [63:0] tmp_6_fu_2540_p20;
wire   [63:0] tmp_6_fu_2540_p22;
wire   [63:0] tmp_6_fu_2540_p24;
wire   [63:0] tmp_6_fu_2540_p26;
wire   [63:0] tmp_6_fu_2540_p28;
wire   [63:0] tmp_6_fu_2540_p30;
wire   [63:0] tmp_6_fu_2540_p32;
wire   [63:0] tmp_6_fu_2540_p34;
wire   [63:0] tmp_6_fu_2540_p36;
wire   [63:0] tmp_6_fu_2540_p38;
wire   [63:0] tmp_6_fu_2540_p40;
wire   [63:0] tmp_6_fu_2540_p42;
wire   [63:0] tmp_6_fu_2540_p44;
wire   [63:0] tmp_6_fu_2540_p46;
wire   [63:0] tmp_6_fu_2540_p48;
wire   [63:0] tmp_6_fu_2540_p50;
wire   [63:0] tmp_6_fu_2540_p52;
wire   [63:0] tmp_6_fu_2540_p54;
wire   [63:0] tmp_6_fu_2540_p56;
wire   [63:0] tmp_6_fu_2540_p58;
wire   [63:0] tmp_6_fu_2540_p60;
wire   [63:0] tmp_6_fu_2540_p62;
wire   [63:0] tmp_6_fu_2540_p64;
wire   [63:0] tmp_6_fu_2540_p65;
wire   [63:0] tmp_7_fu_2675_p65;
wire   [63:0] tmp_8_fu_2938_p2;
wire   [63:0] tmp_8_fu_2938_p4;
wire   [63:0] tmp_8_fu_2938_p6;
wire   [63:0] tmp_8_fu_2938_p8;
wire   [63:0] tmp_8_fu_2938_p10;
wire   [63:0] tmp_8_fu_2938_p12;
wire   [63:0] tmp_8_fu_2938_p14;
wire   [63:0] tmp_8_fu_2938_p16;
wire   [63:0] tmp_8_fu_2938_p18;
wire   [63:0] tmp_8_fu_2938_p20;
wire   [63:0] tmp_8_fu_2938_p22;
wire   [63:0] tmp_8_fu_2938_p24;
wire   [63:0] tmp_8_fu_2938_p26;
wire   [63:0] tmp_8_fu_2938_p28;
wire   [63:0] tmp_8_fu_2938_p30;
wire   [63:0] tmp_8_fu_2938_p32;
wire   [63:0] tmp_8_fu_2938_p34;
wire   [63:0] tmp_8_fu_2938_p36;
wire   [63:0] tmp_8_fu_2938_p38;
wire   [63:0] tmp_8_fu_2938_p40;
wire   [63:0] tmp_8_fu_2938_p42;
wire   [63:0] tmp_8_fu_2938_p44;
wire   [63:0] tmp_8_fu_2938_p46;
wire   [63:0] tmp_8_fu_2938_p48;
wire   [63:0] tmp_8_fu_2938_p50;
wire   [63:0] tmp_8_fu_2938_p52;
wire   [63:0] tmp_8_fu_2938_p54;
wire   [63:0] tmp_8_fu_2938_p56;
wire   [63:0] tmp_8_fu_2938_p58;
wire   [63:0] tmp_8_fu_2938_p60;
wire   [63:0] tmp_8_fu_2938_p62;
wire   [63:0] tmp_8_fu_2938_p64;
wire   [63:0] tmp_8_fu_2938_p65;
reg   [1:0] grp_fu_2061_opcode;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_5_fu_2277_p1;
wire   [5:0] tmp_5_fu_2277_p3;
wire   [5:0] tmp_5_fu_2277_p5;
wire   [5:0] tmp_5_fu_2277_p7;
wire   [5:0] tmp_5_fu_2277_p9;
wire   [5:0] tmp_5_fu_2277_p11;
wire   [5:0] tmp_5_fu_2277_p13;
wire   [5:0] tmp_5_fu_2277_p15;
wire   [5:0] tmp_5_fu_2277_p17;
wire   [5:0] tmp_5_fu_2277_p19;
wire   [5:0] tmp_5_fu_2277_p21;
wire   [5:0] tmp_5_fu_2277_p23;
wire   [5:0] tmp_5_fu_2277_p25;
wire   [5:0] tmp_5_fu_2277_p27;
wire   [5:0] tmp_5_fu_2277_p29;
wire   [5:0] tmp_5_fu_2277_p31;
wire  signed [5:0] tmp_5_fu_2277_p33;
wire  signed [5:0] tmp_5_fu_2277_p35;
wire  signed [5:0] tmp_5_fu_2277_p37;
wire  signed [5:0] tmp_5_fu_2277_p39;
wire  signed [5:0] tmp_5_fu_2277_p41;
wire  signed [5:0] tmp_5_fu_2277_p43;
wire  signed [5:0] tmp_5_fu_2277_p45;
wire  signed [5:0] tmp_5_fu_2277_p47;
wire  signed [5:0] tmp_5_fu_2277_p49;
wire  signed [5:0] tmp_5_fu_2277_p51;
wire  signed [5:0] tmp_5_fu_2277_p53;
wire  signed [5:0] tmp_5_fu_2277_p55;
wire  signed [5:0] tmp_5_fu_2277_p57;
wire  signed [5:0] tmp_5_fu_2277_p59;
wire  signed [5:0] tmp_5_fu_2277_p61;
wire  signed [5:0] tmp_5_fu_2277_p63;
wire   [5:0] tmp_6_fu_2540_p1;
wire   [5:0] tmp_6_fu_2540_p3;
wire   [5:0] tmp_6_fu_2540_p5;
wire   [5:0] tmp_6_fu_2540_p7;
wire   [5:0] tmp_6_fu_2540_p9;
wire   [5:0] tmp_6_fu_2540_p11;
wire   [5:0] tmp_6_fu_2540_p13;
wire   [5:0] tmp_6_fu_2540_p15;
wire   [5:0] tmp_6_fu_2540_p17;
wire   [5:0] tmp_6_fu_2540_p19;
wire   [5:0] tmp_6_fu_2540_p21;
wire   [5:0] tmp_6_fu_2540_p23;
wire   [5:0] tmp_6_fu_2540_p25;
wire   [5:0] tmp_6_fu_2540_p27;
wire   [5:0] tmp_6_fu_2540_p29;
wire   [5:0] tmp_6_fu_2540_p31;
wire  signed [5:0] tmp_6_fu_2540_p33;
wire  signed [5:0] tmp_6_fu_2540_p35;
wire  signed [5:0] tmp_6_fu_2540_p37;
wire  signed [5:0] tmp_6_fu_2540_p39;
wire  signed [5:0] tmp_6_fu_2540_p41;
wire  signed [5:0] tmp_6_fu_2540_p43;
wire  signed [5:0] tmp_6_fu_2540_p45;
wire  signed [5:0] tmp_6_fu_2540_p47;
wire  signed [5:0] tmp_6_fu_2540_p49;
wire  signed [5:0] tmp_6_fu_2540_p51;
wire  signed [5:0] tmp_6_fu_2540_p53;
wire  signed [5:0] tmp_6_fu_2540_p55;
wire  signed [5:0] tmp_6_fu_2540_p57;
wire  signed [5:0] tmp_6_fu_2540_p59;
wire  signed [5:0] tmp_6_fu_2540_p61;
wire  signed [5:0] tmp_6_fu_2540_p63;
wire   [5:0] tmp_7_fu_2675_p1;
wire   [5:0] tmp_7_fu_2675_p3;
wire   [5:0] tmp_7_fu_2675_p5;
wire   [5:0] tmp_7_fu_2675_p7;
wire   [5:0] tmp_7_fu_2675_p9;
wire   [5:0] tmp_7_fu_2675_p11;
wire   [5:0] tmp_7_fu_2675_p13;
wire   [5:0] tmp_7_fu_2675_p15;
wire   [5:0] tmp_7_fu_2675_p17;
wire   [5:0] tmp_7_fu_2675_p19;
wire   [5:0] tmp_7_fu_2675_p21;
wire   [5:0] tmp_7_fu_2675_p23;
wire   [5:0] tmp_7_fu_2675_p25;
wire   [5:0] tmp_7_fu_2675_p27;
wire   [5:0] tmp_7_fu_2675_p29;
wire   [5:0] tmp_7_fu_2675_p31;
wire  signed [5:0] tmp_7_fu_2675_p33;
wire  signed [5:0] tmp_7_fu_2675_p35;
wire  signed [5:0] tmp_7_fu_2675_p37;
wire  signed [5:0] tmp_7_fu_2675_p39;
wire  signed [5:0] tmp_7_fu_2675_p41;
wire  signed [5:0] tmp_7_fu_2675_p43;
wire  signed [5:0] tmp_7_fu_2675_p45;
wire  signed [5:0] tmp_7_fu_2675_p47;
wire  signed [5:0] tmp_7_fu_2675_p49;
wire  signed [5:0] tmp_7_fu_2675_p51;
wire  signed [5:0] tmp_7_fu_2675_p53;
wire  signed [5:0] tmp_7_fu_2675_p55;
wire  signed [5:0] tmp_7_fu_2675_p57;
wire  signed [5:0] tmp_7_fu_2675_p59;
wire  signed [5:0] tmp_7_fu_2675_p61;
wire  signed [5:0] tmp_7_fu_2675_p63;
wire   [5:0] tmp_8_fu_2938_p1;
wire   [5:0] tmp_8_fu_2938_p3;
wire   [5:0] tmp_8_fu_2938_p5;
wire   [5:0] tmp_8_fu_2938_p7;
wire   [5:0] tmp_8_fu_2938_p9;
wire   [5:0] tmp_8_fu_2938_p11;
wire   [5:0] tmp_8_fu_2938_p13;
wire   [5:0] tmp_8_fu_2938_p15;
wire   [5:0] tmp_8_fu_2938_p17;
wire   [5:0] tmp_8_fu_2938_p19;
wire   [5:0] tmp_8_fu_2938_p21;
wire   [5:0] tmp_8_fu_2938_p23;
wire   [5:0] tmp_8_fu_2938_p25;
wire   [5:0] tmp_8_fu_2938_p27;
wire   [5:0] tmp_8_fu_2938_p29;
wire   [5:0] tmp_8_fu_2938_p31;
wire  signed [5:0] tmp_8_fu_2938_p33;
wire  signed [5:0] tmp_8_fu_2938_p35;
wire  signed [5:0] tmp_8_fu_2938_p37;
wire  signed [5:0] tmp_8_fu_2938_p39;
wire  signed [5:0] tmp_8_fu_2938_p41;
wire  signed [5:0] tmp_8_fu_2938_p43;
wire  signed [5:0] tmp_8_fu_2938_p45;
wire  signed [5:0] tmp_8_fu_2938_p47;
wire  signed [5:0] tmp_8_fu_2938_p49;
wire  signed [5:0] tmp_8_fu_2938_p51;
wire  signed [5:0] tmp_8_fu_2938_p53;
wire  signed [5:0] tmp_8_fu_2938_p55;
wire  signed [5:0] tmp_8_fu_2938_p57;
wire  signed [5:0] tmp_8_fu_2938_p59;
wire  signed [5:0] tmp_8_fu_2938_p61;
wire  signed [5:0] tmp_8_fu_2938_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_374 = 64'd0;
#0 j_fu_378 = 7'd0;
#0 i_fu_382 = 4'd0;
#0 indvar_flatten_fu_386 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U3895(.din0(d_weights1_0_q0),.din1(d_weights1_2_q0),.din2(d_weights1_4_q0),.din3(d_weights1_6_q0),.din4(d_weights1_8_q0),.din5(d_weights1_10_q0),.din6(d_weights1_12_q0),.din7(d_weights1_14_q0),.din8(d_weights1_16_q0),.din9(d_weights1_18_q0),.din10(d_weights1_20_q0),.din11(d_weights1_22_q0),.din12(d_weights1_24_q0),.din13(d_weights1_26_q0),.din14(d_weights1_28_q0),.din15(d_weights1_30_q0),.din16(d_weights1_32_q0),.din17(d_weights1_34_q0),.din18(d_weights1_36_q0),.din19(d_weights1_38_q0),.din20(d_weights1_40_q0),.din21(d_weights1_42_q0),.din22(d_weights1_44_q0),.din23(d_weights1_46_q0),.din24(d_weights1_48_q0),.din25(d_weights1_50_q0),.din26(d_weights1_52_q0),.din27(d_weights1_54_q0),.din28(d_weights1_56_q0),.din29(d_weights1_58_q0),.din30(d_weights1_60_q0),.din31(d_weights1_62_q0),.def(tmp_5_fu_2277_p65),.sel(trunc_ln127_reg_3862),.dout(tmp_5_fu_2277_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U3896(.din0(tmp_6_fu_2540_p2),.din1(tmp_6_fu_2540_p4),.din2(tmp_6_fu_2540_p6),.din3(tmp_6_fu_2540_p8),.din4(tmp_6_fu_2540_p10),.din5(tmp_6_fu_2540_p12),.din6(tmp_6_fu_2540_p14),.din7(tmp_6_fu_2540_p16),.din8(tmp_6_fu_2540_p18),.din9(tmp_6_fu_2540_p20),.din10(tmp_6_fu_2540_p22),.din11(tmp_6_fu_2540_p24),.din12(tmp_6_fu_2540_p26),.din13(tmp_6_fu_2540_p28),.din14(tmp_6_fu_2540_p30),.din15(tmp_6_fu_2540_p32),.din16(tmp_6_fu_2540_p34),.din17(tmp_6_fu_2540_p36),.din18(tmp_6_fu_2540_p38),.din19(tmp_6_fu_2540_p40),.din20(tmp_6_fu_2540_p42),.din21(tmp_6_fu_2540_p44),.din22(tmp_6_fu_2540_p46),.din23(tmp_6_fu_2540_p48),.din24(tmp_6_fu_2540_p50),.din25(tmp_6_fu_2540_p52),.din26(tmp_6_fu_2540_p54),.din27(tmp_6_fu_2540_p56),.din28(tmp_6_fu_2540_p58),.din29(tmp_6_fu_2540_p60),.din30(tmp_6_fu_2540_p62),.din31(tmp_6_fu_2540_p64),.def(tmp_6_fu_2540_p65),.sel(trunc_ln127_reg_3862),.dout(tmp_6_fu_2540_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U3897(.din0(d_weights1_1_q0),.din1(d_weights1_3_q0),.din2(d_weights1_5_q0),.din3(d_weights1_7_q0),.din4(d_weights1_9_q0),.din5(d_weights1_11_q0),.din6(d_weights1_13_q0),.din7(d_weights1_15_q0),.din8(d_weights1_17_q0),.din9(d_weights1_19_q0),.din10(d_weights1_21_q0),.din11(d_weights1_23_q0),.din12(d_weights1_25_q0),.din13(d_weights1_27_q0),.din14(d_weights1_29_q0),.din15(d_weights1_31_q0),.din16(d_weights1_33_q0),.din17(d_weights1_35_q0),.din18(d_weights1_37_q0),.din19(d_weights1_39_q0),.din20(d_weights1_41_q0),.din21(d_weights1_43_q0),.din22(d_weights1_45_q0),.din23(d_weights1_47_q0),.din24(d_weights1_49_q0),.din25(d_weights1_51_q0),.din26(d_weights1_53_q0),.din27(d_weights1_55_q0),.din28(d_weights1_57_q0),.din29(d_weights1_59_q0),.din30(d_weights1_61_q0),.din31(d_weights1_63_q0),.def(tmp_7_fu_2675_p65),.sel(trunc_ln127_reg_3862),.dout(tmp_7_fu_2675_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U3898(.din0(tmp_8_fu_2938_p2),.din1(tmp_8_fu_2938_p4),.din2(tmp_8_fu_2938_p6),.din3(tmp_8_fu_2938_p8),.din4(tmp_8_fu_2938_p10),.din5(tmp_8_fu_2938_p12),.din6(tmp_8_fu_2938_p14),.din7(tmp_8_fu_2938_p16),.din8(tmp_8_fu_2938_p18),.din9(tmp_8_fu_2938_p20),.din10(tmp_8_fu_2938_p22),.din11(tmp_8_fu_2938_p24),.din12(tmp_8_fu_2938_p26),.din13(tmp_8_fu_2938_p28),.din14(tmp_8_fu_2938_p30),.din15(tmp_8_fu_2938_p32),.din16(tmp_8_fu_2938_p34),.din17(tmp_8_fu_2938_p36),.din18(tmp_8_fu_2938_p38),.din19(tmp_8_fu_2938_p40),.din20(tmp_8_fu_2938_p42),.din21(tmp_8_fu_2938_p44),.din22(tmp_8_fu_2938_p46),.din23(tmp_8_fu_2938_p48),.din24(tmp_8_fu_2938_p50),.din25(tmp_8_fu_2938_p52),.din26(tmp_8_fu_2938_p54),.din27(tmp_8_fu_2938_p56),.din28(tmp_8_fu_2938_p58),.din29(tmp_8_fu_2938_p60),.din30(tmp_8_fu_2938_p62),.din31(tmp_8_fu_2938_p64),.def(tmp_8_fu_2938_p65),.sel(trunc_ln127_reg_3862),.dout(tmp_8_fu_2938_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_382 <= 4'd0;
    end else if (((icmp_ln126_reg_3203 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_382 <= select_ln126_reg_3217;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten_fu_386 <= 9'd0;
    end else if (((icmp_ln126_reg_3203 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_386 <= add_ln126_reg_3207;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_378 <= 7'd0;
    end else if (((icmp_ln126_reg_3203 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_378 <= add_ln127_fu_3073_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_2_fu_374 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        norm_2_fu_374 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_reg_3207 <= add_ln126_fu_2099_p2;
        ap_predicate_pred1725_state18 <= (trunc_ln127_reg_3862 == 6'd0);
        ap_predicate_pred1741_state18 <= (trunc_ln127_reg_3862 == 6'd2);
        ap_predicate_pred1751_state18 <= (trunc_ln127_reg_3862 == 6'd4);
        ap_predicate_pred1761_state18 <= (trunc_ln127_reg_3862 == 6'd6);
        ap_predicate_pred1771_state18 <= (trunc_ln127_reg_3862 == 6'd8);
        ap_predicate_pred1781_state18 <= (trunc_ln127_reg_3862 == 6'd10);
        ap_predicate_pred1791_state18 <= (trunc_ln127_reg_3862 == 6'd12);
        ap_predicate_pred1801_state18 <= (trunc_ln127_reg_3862 == 6'd14);
        ap_predicate_pred1811_state18 <= (trunc_ln127_reg_3862 == 6'd16);
        ap_predicate_pred1821_state18 <= (trunc_ln127_reg_3862 == 6'd18);
        ap_predicate_pred1831_state18 <= (trunc_ln127_reg_3862 == 6'd20);
        ap_predicate_pred1841_state18 <= (trunc_ln127_reg_3862 == 6'd22);
        ap_predicate_pred1851_state18 <= (trunc_ln127_reg_3862 == 6'd24);
        ap_predicate_pred1861_state18 <= (trunc_ln127_reg_3862 == 6'd26);
        ap_predicate_pred1871_state18 <= (trunc_ln127_reg_3862 == 6'd28);
        ap_predicate_pred1881_state18 <= (trunc_ln127_reg_3862 == 6'd30);
        ap_predicate_pred1891_state18 <= (trunc_ln127_reg_3862 == 6'd32);
        ap_predicate_pred1901_state18 <= (trunc_ln127_reg_3862 == 6'd34);
        ap_predicate_pred1911_state18 <= (trunc_ln127_reg_3862 == 6'd36);
        ap_predicate_pred1921_state18 <= (trunc_ln127_reg_3862 == 6'd38);
        ap_predicate_pred1931_state18 <= (trunc_ln127_reg_3862 == 6'd40);
        ap_predicate_pred1941_state18 <= (trunc_ln127_reg_3862 == 6'd42);
        ap_predicate_pred1951_state18 <= (trunc_ln127_reg_3862 == 6'd44);
        ap_predicate_pred1961_state18 <= (trunc_ln127_reg_3862 == 6'd46);
        ap_predicate_pred1971_state18 <= (trunc_ln127_reg_3862 == 6'd48);
        ap_predicate_pred1981_state18 <= (trunc_ln127_reg_3862 == 6'd50);
        ap_predicate_pred1991_state18 <= (trunc_ln127_reg_3862 == 6'd52);
        ap_predicate_pred2001_state18 <= (trunc_ln127_reg_3862 == 6'd54);
        ap_predicate_pred2011_state18 <= (trunc_ln127_reg_3862 == 6'd56);
        ap_predicate_pred2021_state18 <= (trunc_ln127_reg_3862 == 6'd58);
        ap_predicate_pred2031_state18 <= (trunc_ln127_reg_3862 == 6'd60);
ap_predicate_pred2100_state18 <= (~(trunc_ln127_reg_3862 == 6'd60) & ~(trunc_ln127_reg_3862 == 6'd58) & ~(trunc_ln127_reg_3862 == 6'd56) & ~(trunc_ln127_reg_3862 == 6'd54) & ~(trunc_ln127_reg_3862 == 6'd52) & ~(trunc_ln127_reg_3862 == 6'd50) & ~(trunc_ln127_reg_3862 == 6'd48) & ~(trunc_ln127_reg_3862 == 6'd46) & ~(trunc_ln127_reg_3862 == 6'd44) & ~(trunc_ln127_reg_3862 == 6'd42) & ~(trunc_ln127_reg_3862 == 6'd40) & ~(trunc_ln127_reg_3862 == 6'd38) & ~(trunc_ln127_reg_3862 == 6'd36) & ~(trunc_ln127_reg_3862 == 6'd34) & ~(trunc_ln127_reg_3862 == 6'd32) & ~(trunc_ln127_reg_3862 == 6'd30) & ~(trunc_ln127_reg_3862 == 6'd28) & ~(trunc_ln127_reg_3862 == 6'd26) & ~(trunc_ln127_reg_3862 == 6'd24) & ~(trunc_ln127_reg_3862 == 6'd22) & ~(trunc_ln127_reg_3862 == 6'd20) & ~(trunc_ln127_reg_3862 == 6'd18) & ~(trunc_ln127_reg_3862 == 6'd16) & ~(trunc_ln127_reg_3862 == 6'd14) & ~(trunc_ln127_reg_3862 == 6'd12) & ~(trunc_ln127_reg_3862 == 6'd10) & ~(trunc_ln127_reg_3862 == 6'd8) & ~(trunc_ln127_reg_3862 == 6'd6) & ~(trunc_ln127_reg_3862 == 6'd4) & ~(trunc_ln127_reg_3862== 6'd2) & ~(trunc_ln127_reg_3862 == 6'd0));
        icmp_ln126_reg_3203 <= icmp_ln126_fu_2093_p2;
        icmp_ln126_reg_3203_pp0_iter1_reg <= icmp_ln126_reg_3203;
        select_ln121_reg_3212 <= select_ln121_fu_2119_p3;
        select_ln126_reg_3217 <= select_ln126_fu_2133_p3;
        trunc_ln127_reg_3862 <= trunc_ln127_fu_2273_p1;
        trunc_ln127_reg_3862_pp0_iter1_reg <= trunc_ln127_reg_3862;
        weights1_0_addr_reg_3542 <= zext_ln126_fu_2141_p1;
        weights1_0_addr_reg_3542_pp0_iter1_reg <= weights1_0_addr_reg_3542;
        weights1_10_addr_reg_3567 <= zext_ln126_fu_2141_p1;
        weights1_10_addr_reg_3567_pp0_iter1_reg <= weights1_10_addr_reg_3567;
        weights1_11_addr_reg_3727 <= zext_ln126_fu_2141_p1;
        weights1_11_addr_reg_3727_pp0_iter1_reg <= weights1_11_addr_reg_3727;
        weights1_12_addr_reg_3572 <= zext_ln126_fu_2141_p1;
        weights1_12_addr_reg_3572_pp0_iter1_reg <= weights1_12_addr_reg_3572;
        weights1_13_addr_reg_3732 <= zext_ln126_fu_2141_p1;
        weights1_13_addr_reg_3732_pp0_iter1_reg <= weights1_13_addr_reg_3732;
        weights1_14_addr_reg_3577 <= zext_ln126_fu_2141_p1;
        weights1_14_addr_reg_3577_pp0_iter1_reg <= weights1_14_addr_reg_3577;
        weights1_15_addr_reg_3737 <= zext_ln126_fu_2141_p1;
        weights1_15_addr_reg_3737_pp0_iter1_reg <= weights1_15_addr_reg_3737;
        weights1_16_addr_reg_3582 <= zext_ln126_fu_2141_p1;
        weights1_16_addr_reg_3582_pp0_iter1_reg <= weights1_16_addr_reg_3582;
        weights1_17_addr_reg_3742 <= zext_ln126_fu_2141_p1;
        weights1_17_addr_reg_3742_pp0_iter1_reg <= weights1_17_addr_reg_3742;
        weights1_18_addr_reg_3587 <= zext_ln126_fu_2141_p1;
        weights1_18_addr_reg_3587_pp0_iter1_reg <= weights1_18_addr_reg_3587;
        weights1_19_addr_reg_3747 <= zext_ln126_fu_2141_p1;
        weights1_19_addr_reg_3747_pp0_iter1_reg <= weights1_19_addr_reg_3747;
        weights1_1_addr_reg_3702 <= zext_ln126_fu_2141_p1;
        weights1_1_addr_reg_3702_pp0_iter1_reg <= weights1_1_addr_reg_3702;
        weights1_20_addr_reg_3592 <= zext_ln126_fu_2141_p1;
        weights1_20_addr_reg_3592_pp0_iter1_reg <= weights1_20_addr_reg_3592;
        weights1_21_addr_reg_3752 <= zext_ln126_fu_2141_p1;
        weights1_21_addr_reg_3752_pp0_iter1_reg <= weights1_21_addr_reg_3752;
        weights1_22_addr_reg_3597 <= zext_ln126_fu_2141_p1;
        weights1_22_addr_reg_3597_pp0_iter1_reg <= weights1_22_addr_reg_3597;
        weights1_23_addr_reg_3757 <= zext_ln126_fu_2141_p1;
        weights1_23_addr_reg_3757_pp0_iter1_reg <= weights1_23_addr_reg_3757;
        weights1_24_addr_reg_3602 <= zext_ln126_fu_2141_p1;
        weights1_24_addr_reg_3602_pp0_iter1_reg <= weights1_24_addr_reg_3602;
        weights1_25_addr_reg_3762 <= zext_ln126_fu_2141_p1;
        weights1_25_addr_reg_3762_pp0_iter1_reg <= weights1_25_addr_reg_3762;
        weights1_26_addr_reg_3607 <= zext_ln126_fu_2141_p1;
        weights1_26_addr_reg_3607_pp0_iter1_reg <= weights1_26_addr_reg_3607;
        weights1_27_addr_reg_3767 <= zext_ln126_fu_2141_p1;
        weights1_27_addr_reg_3767_pp0_iter1_reg <= weights1_27_addr_reg_3767;
        weights1_28_addr_reg_3612 <= zext_ln126_fu_2141_p1;
        weights1_28_addr_reg_3612_pp0_iter1_reg <= weights1_28_addr_reg_3612;
        weights1_29_addr_reg_3772 <= zext_ln126_fu_2141_p1;
        weights1_29_addr_reg_3772_pp0_iter1_reg <= weights1_29_addr_reg_3772;
        weights1_2_addr_reg_3547 <= zext_ln126_fu_2141_p1;
        weights1_2_addr_reg_3547_pp0_iter1_reg <= weights1_2_addr_reg_3547;
        weights1_30_addr_reg_3617 <= zext_ln126_fu_2141_p1;
        weights1_30_addr_reg_3617_pp0_iter1_reg <= weights1_30_addr_reg_3617;
        weights1_31_addr_reg_3777 <= zext_ln126_fu_2141_p1;
        weights1_31_addr_reg_3777_pp0_iter1_reg <= weights1_31_addr_reg_3777;
        weights1_32_addr_reg_3622 <= zext_ln126_fu_2141_p1;
        weights1_32_addr_reg_3622_pp0_iter1_reg <= weights1_32_addr_reg_3622;
        weights1_33_addr_reg_3782 <= zext_ln126_fu_2141_p1;
        weights1_33_addr_reg_3782_pp0_iter1_reg <= weights1_33_addr_reg_3782;
        weights1_34_addr_reg_3627 <= zext_ln126_fu_2141_p1;
        weights1_34_addr_reg_3627_pp0_iter1_reg <= weights1_34_addr_reg_3627;
        weights1_35_addr_reg_3787 <= zext_ln126_fu_2141_p1;
        weights1_35_addr_reg_3787_pp0_iter1_reg <= weights1_35_addr_reg_3787;
        weights1_36_addr_reg_3632 <= zext_ln126_fu_2141_p1;
        weights1_36_addr_reg_3632_pp0_iter1_reg <= weights1_36_addr_reg_3632;
        weights1_37_addr_reg_3792 <= zext_ln126_fu_2141_p1;
        weights1_37_addr_reg_3792_pp0_iter1_reg <= weights1_37_addr_reg_3792;
        weights1_38_addr_reg_3637 <= zext_ln126_fu_2141_p1;
        weights1_38_addr_reg_3637_pp0_iter1_reg <= weights1_38_addr_reg_3637;
        weights1_39_addr_reg_3797 <= zext_ln126_fu_2141_p1;
        weights1_39_addr_reg_3797_pp0_iter1_reg <= weights1_39_addr_reg_3797;
        weights1_3_addr_reg_3707 <= zext_ln126_fu_2141_p1;
        weights1_3_addr_reg_3707_pp0_iter1_reg <= weights1_3_addr_reg_3707;
        weights1_40_addr_reg_3642 <= zext_ln126_fu_2141_p1;
        weights1_40_addr_reg_3642_pp0_iter1_reg <= weights1_40_addr_reg_3642;
        weights1_41_addr_reg_3802 <= zext_ln126_fu_2141_p1;
        weights1_41_addr_reg_3802_pp0_iter1_reg <= weights1_41_addr_reg_3802;
        weights1_42_addr_reg_3647 <= zext_ln126_fu_2141_p1;
        weights1_42_addr_reg_3647_pp0_iter1_reg <= weights1_42_addr_reg_3647;
        weights1_43_addr_reg_3807 <= zext_ln126_fu_2141_p1;
        weights1_43_addr_reg_3807_pp0_iter1_reg <= weights1_43_addr_reg_3807;
        weights1_44_addr_reg_3652 <= zext_ln126_fu_2141_p1;
        weights1_44_addr_reg_3652_pp0_iter1_reg <= weights1_44_addr_reg_3652;
        weights1_45_addr_reg_3812 <= zext_ln126_fu_2141_p1;
        weights1_45_addr_reg_3812_pp0_iter1_reg <= weights1_45_addr_reg_3812;
        weights1_46_addr_reg_3657 <= zext_ln126_fu_2141_p1;
        weights1_46_addr_reg_3657_pp0_iter1_reg <= weights1_46_addr_reg_3657;
        weights1_47_addr_reg_3817 <= zext_ln126_fu_2141_p1;
        weights1_47_addr_reg_3817_pp0_iter1_reg <= weights1_47_addr_reg_3817;
        weights1_48_addr_reg_3662 <= zext_ln126_fu_2141_p1;
        weights1_48_addr_reg_3662_pp0_iter1_reg <= weights1_48_addr_reg_3662;
        weights1_49_addr_reg_3822 <= zext_ln126_fu_2141_p1;
        weights1_49_addr_reg_3822_pp0_iter1_reg <= weights1_49_addr_reg_3822;
        weights1_4_addr_reg_3552 <= zext_ln126_fu_2141_p1;
        weights1_4_addr_reg_3552_pp0_iter1_reg <= weights1_4_addr_reg_3552;
        weights1_50_addr_reg_3667 <= zext_ln126_fu_2141_p1;
        weights1_50_addr_reg_3667_pp0_iter1_reg <= weights1_50_addr_reg_3667;
        weights1_51_addr_reg_3827 <= zext_ln126_fu_2141_p1;
        weights1_51_addr_reg_3827_pp0_iter1_reg <= weights1_51_addr_reg_3827;
        weights1_52_addr_reg_3672 <= zext_ln126_fu_2141_p1;
        weights1_52_addr_reg_3672_pp0_iter1_reg <= weights1_52_addr_reg_3672;
        weights1_53_addr_reg_3832 <= zext_ln126_fu_2141_p1;
        weights1_53_addr_reg_3832_pp0_iter1_reg <= weights1_53_addr_reg_3832;
        weights1_54_addr_reg_3677 <= zext_ln126_fu_2141_p1;
        weights1_54_addr_reg_3677_pp0_iter1_reg <= weights1_54_addr_reg_3677;
        weights1_55_addr_reg_3837 <= zext_ln126_fu_2141_p1;
        weights1_55_addr_reg_3837_pp0_iter1_reg <= weights1_55_addr_reg_3837;
        weights1_56_addr_reg_3682 <= zext_ln126_fu_2141_p1;
        weights1_56_addr_reg_3682_pp0_iter1_reg <= weights1_56_addr_reg_3682;
        weights1_57_addr_reg_3842 <= zext_ln126_fu_2141_p1;
        weights1_57_addr_reg_3842_pp0_iter1_reg <= weights1_57_addr_reg_3842;
        weights1_58_addr_reg_3687 <= zext_ln126_fu_2141_p1;
        weights1_58_addr_reg_3687_pp0_iter1_reg <= weights1_58_addr_reg_3687;
        weights1_59_addr_reg_3847 <= zext_ln126_fu_2141_p1;
        weights1_59_addr_reg_3847_pp0_iter1_reg <= weights1_59_addr_reg_3847;
        weights1_5_addr_reg_3712 <= zext_ln126_fu_2141_p1;
        weights1_5_addr_reg_3712_pp0_iter1_reg <= weights1_5_addr_reg_3712;
        weights1_60_addr_reg_3692 <= zext_ln126_fu_2141_p1;
        weights1_60_addr_reg_3692_pp0_iter1_reg <= weights1_60_addr_reg_3692;
        weights1_61_addr_reg_3852 <= zext_ln126_fu_2141_p1;
        weights1_61_addr_reg_3852_pp0_iter1_reg <= weights1_61_addr_reg_3852;
        weights1_62_addr_reg_3697 <= zext_ln126_fu_2141_p1;
        weights1_62_addr_reg_3697_pp0_iter1_reg <= weights1_62_addr_reg_3697;
        weights1_63_addr_reg_3857 <= zext_ln126_fu_2141_p1;
        weights1_63_addr_reg_3857_pp0_iter1_reg <= weights1_63_addr_reg_3857;
        weights1_6_addr_reg_3557 <= zext_ln126_fu_2141_p1;
        weights1_6_addr_reg_3557_pp0_iter1_reg <= weights1_6_addr_reg_3557;
        weights1_7_addr_reg_3717 <= zext_ln126_fu_2141_p1;
        weights1_7_addr_reg_3717_pp0_iter1_reg <= weights1_7_addr_reg_3717;
        weights1_8_addr_reg_3562 <= zext_ln126_fu_2141_p1;
        weights1_8_addr_reg_3562_pp0_iter1_reg <= weights1_8_addr_reg_3562;
        weights1_9_addr_reg_3722 <= zext_ln126_fu_2141_p1;
        weights1_9_addr_reg_3722_pp0_iter1_reg <= weights1_9_addr_reg_3722;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred2119_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd0);
        ap_predicate_pred2134_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd2);
        ap_predicate_pred2143_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd4);
        ap_predicate_pred2152_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd6);
        ap_predicate_pred2161_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd8);
        ap_predicate_pred2170_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd10);
        ap_predicate_pred2179_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd12);
        ap_predicate_pred2188_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd14);
        ap_predicate_pred2197_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd16);
        ap_predicate_pred2206_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd18);
        ap_predicate_pred2215_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd20);
        ap_predicate_pred2224_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd22);
        ap_predicate_pred2233_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd24);
        ap_predicate_pred2242_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd26);
        ap_predicate_pred2251_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd28);
        ap_predicate_pred2260_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd30);
        ap_predicate_pred2269_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd32);
        ap_predicate_pred2278_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd34);
        ap_predicate_pred2287_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd36);
        ap_predicate_pred2296_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd38);
        ap_predicate_pred2305_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd40);
        ap_predicate_pred2314_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd42);
        ap_predicate_pred2323_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd44);
        ap_predicate_pred2332_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd46);
        ap_predicate_pred2341_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd48);
        ap_predicate_pred2350_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd50);
        ap_predicate_pred2359_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd52);
        ap_predicate_pred2368_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd54);
        ap_predicate_pred2377_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd56);
        ap_predicate_pred2386_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd58);
        ap_predicate_pred2395_state19 <= (trunc_ln127_reg_3862_pp0_iter1_reg == 6'd60);
ap_predicate_pred2464_state19 <= (~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd60) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd58) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd56) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd54) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd52) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd50) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd48) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd46) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd44) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd42) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd40) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd38) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd36) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd34) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd32) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd30) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd28) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd26) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd24) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd22) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd20)& ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd18) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd16) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd14) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd12) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd10) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd8) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd6) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd4) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd2) & ~(trunc_ln127_reg_3862_pp0_iter1_reg == 6'd0));
        tmp_5_reg_3870 <= tmp_5_fu_2277_p67;
        tmp_6_reg_3875 <= tmp_6_fu_2540_p67;
        tmp_7_reg_3880 <= tmp_7_fu_2675_p67;
        tmp_8_reg_3885 <= tmp_8_fu_2938_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul17_1_reg_3924 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul2_reg_3914 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul4_1_reg_3895 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul4_reg_3890 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        norm_3_reg_3929 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub_1_reg_3907 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_reg_3900 <= grp_fu_4915_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3203 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3203_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_382;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_386;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_378;
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
    if ((((icmp_ln126_reg_3203 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln126_reg_3203 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_2061_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_2061_opcode = 2'd0;
    end else begin
        grp_fu_2061_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_2061_p0 = norm_3_reg_3929;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_2061_p0 = norm_2_fu_374;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_2061_p0 = tmp_8_reg_3885;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2061_p0 = tmp_6_reg_3875;
    end else begin
        grp_fu_2061_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_2061_p1 = mul17_1_reg_3924;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_2061_p1 = mul2_reg_3914;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_2061_p1 = mul4_1_reg_3895;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2061_p1 = mul4_reg_3890;
    end else begin
        grp_fu_2061_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2065_p0 = sub_1_reg_3907;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_2065_p0 = sub_reg_3900;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2065_p0 = tmp_7_reg_3880;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2065_p0 = tmp_5_reg_3870;
    end else begin
        grp_fu_2065_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2065_p1 = sub_1_reg_3907;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_2065_p1 = sub_reg_3900;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_2065_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2065_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3203_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = weights1_0_addr_reg_3542_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1725_state18 == 1'b1))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_10_address0_local = weights1_10_addr_reg_3567_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_10_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_10_ce0_local = 1'b1;
    end else begin
        weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1781_state18 == 1'b1))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_11_address0_local = weights1_11_addr_reg_3727_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_11_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_11_ce0_local = 1'b1;
    end else begin
        weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2170_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_12_address0_local = weights1_12_addr_reg_3572_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_12_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1791_state18 == 1'b1))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_13_address0_local = weights1_13_addr_reg_3732_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_13_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2179_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_14_address0_local = weights1_14_addr_reg_3577_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_14_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1801_state18 == 1'b1))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_15_address0_local = weights1_15_addr_reg_3737_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_15_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2188_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_16_address0_local = weights1_16_addr_reg_3582_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_16_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_16_ce0_local = 1'b1;
    end else begin
        weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1811_state18 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_17_address0_local = weights1_17_addr_reg_3742_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_17_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_17_ce0_local = 1'b1;
    end else begin
        weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2197_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_18_address0_local = weights1_18_addr_reg_3587_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_18_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_18_ce0_local = 1'b1;
    end else begin
        weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1821_state18 == 1'b1))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_19_address0_local = weights1_19_addr_reg_3747_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_19_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_19_ce0_local = 1'b1;
    end else begin
        weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2206_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = weights1_1_addr_reg_3702_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2119_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_20_address0_local = weights1_20_addr_reg_3592_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_20_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1831_state18 == 1'b1))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_21_address0_local = weights1_21_addr_reg_3752_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_21_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2215_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_22_address0_local = weights1_22_addr_reg_3597_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_22_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1841_state18 == 1'b1))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_23_address0_local = weights1_23_addr_reg_3757_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_23_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2224_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_24_address0_local = weights1_24_addr_reg_3602_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_24_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_24_ce0_local = 1'b1;
    end else begin
        weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1851_state18 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_25_address0_local = weights1_25_addr_reg_3762_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_25_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_25_ce0_local = 1'b1;
    end else begin
        weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2233_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_26_address0_local = weights1_26_addr_reg_3607_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_26_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_26_ce0_local = 1'b1;
    end else begin
        weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1861_state18 == 1'b1))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_27_address0_local = weights1_27_addr_reg_3767_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_27_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_27_ce0_local = 1'b1;
    end else begin
        weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2242_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_28_address0_local = weights1_28_addr_reg_3612_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_28_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1871_state18 == 1'b1))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_29_address0_local = weights1_29_addr_reg_3772_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_29_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2251_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_29_we0_local = 1'b1;
    end else begin
        weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = weights1_2_addr_reg_3547_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_2_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1741_state18 == 1'b1))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_30_address0_local = weights1_30_addr_reg_3617_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_30_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1881_state18 == 1'b1))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_31_address0_local = weights1_31_addr_reg_3777_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_31_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2260_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_32_address0_local = weights1_32_addr_reg_3622_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_32_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_32_ce0_local = 1'b1;
    end else begin
        weights1_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1891_state18 == 1'b1))) begin
        weights1_32_we0_local = 1'b1;
    end else begin
        weights1_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_33_address0_local = weights1_33_addr_reg_3782_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_33_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_33_ce0_local = 1'b1;
    end else begin
        weights1_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2269_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_33_we0_local = 1'b1;
    end else begin
        weights1_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_34_address0_local = weights1_34_addr_reg_3627_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_34_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_34_ce0_local = 1'b1;
    end else begin
        weights1_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1901_state18 == 1'b1))) begin
        weights1_34_we0_local = 1'b1;
    end else begin
        weights1_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_35_address0_local = weights1_35_addr_reg_3787_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_35_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_35_ce0_local = 1'b1;
    end else begin
        weights1_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2278_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_35_we0_local = 1'b1;
    end else begin
        weights1_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_36_address0_local = weights1_36_addr_reg_3632_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_36_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_36_ce0_local = 1'b1;
    end else begin
        weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1911_state18 == 1'b1))) begin
        weights1_36_we0_local = 1'b1;
    end else begin
        weights1_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_37_address0_local = weights1_37_addr_reg_3792_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_37_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_37_ce0_local = 1'b1;
    end else begin
        weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2287_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_37_we0_local = 1'b1;
    end else begin
        weights1_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_38_address0_local = weights1_38_addr_reg_3637_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_38_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_38_ce0_local = 1'b1;
    end else begin
        weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1921_state18 == 1'b1))) begin
        weights1_38_we0_local = 1'b1;
    end else begin
        weights1_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_39_address0_local = weights1_39_addr_reg_3797_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_39_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_39_ce0_local = 1'b1;
    end else begin
        weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2296_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_39_we0_local = 1'b1;
    end else begin
        weights1_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_3_address0_local = weights1_3_addr_reg_3707_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_3_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2134_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_40_address0_local = weights1_40_addr_reg_3642_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_40_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_40_ce0_local = 1'b1;
    end else begin
        weights1_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1931_state18 == 1'b1))) begin
        weights1_40_we0_local = 1'b1;
    end else begin
        weights1_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_41_address0_local = weights1_41_addr_reg_3802_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_41_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_41_ce0_local = 1'b1;
    end else begin
        weights1_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2305_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_41_we0_local = 1'b1;
    end else begin
        weights1_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_42_address0_local = weights1_42_addr_reg_3647_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_42_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_42_ce0_local = 1'b1;
    end else begin
        weights1_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1941_state18 == 1'b1))) begin
        weights1_42_we0_local = 1'b1;
    end else begin
        weights1_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_43_address0_local = weights1_43_addr_reg_3807_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_43_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_43_ce0_local = 1'b1;
    end else begin
        weights1_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2314_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_43_we0_local = 1'b1;
    end else begin
        weights1_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_44_address0_local = weights1_44_addr_reg_3652_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_44_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_44_ce0_local = 1'b1;
    end else begin
        weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1951_state18 == 1'b1))) begin
        weights1_44_we0_local = 1'b1;
    end else begin
        weights1_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_45_address0_local = weights1_45_addr_reg_3812_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_45_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_45_ce0_local = 1'b1;
    end else begin
        weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2323_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_45_we0_local = 1'b1;
    end else begin
        weights1_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_46_address0_local = weights1_46_addr_reg_3657_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_46_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_46_ce0_local = 1'b1;
    end else begin
        weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1961_state18 == 1'b1))) begin
        weights1_46_we0_local = 1'b1;
    end else begin
        weights1_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_47_address0_local = weights1_47_addr_reg_3817_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_47_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_47_ce0_local = 1'b1;
    end else begin
        weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2332_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_47_we0_local = 1'b1;
    end else begin
        weights1_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_48_address0_local = weights1_48_addr_reg_3662_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_48_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_48_ce0_local = 1'b1;
    end else begin
        weights1_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1971_state18 == 1'b1))) begin
        weights1_48_we0_local = 1'b1;
    end else begin
        weights1_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_49_address0_local = weights1_49_addr_reg_3822_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_49_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_49_ce0_local = 1'b1;
    end else begin
        weights1_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2341_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_49_we0_local = 1'b1;
    end else begin
        weights1_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_4_address0_local = weights1_4_addr_reg_3552_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_4_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1751_state18 == 1'b1))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_50_address0_local = weights1_50_addr_reg_3667_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_50_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_50_ce0_local = 1'b1;
    end else begin
        weights1_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1981_state18 == 1'b1))) begin
        weights1_50_we0_local = 1'b1;
    end else begin
        weights1_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_51_address0_local = weights1_51_addr_reg_3827_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_51_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_51_ce0_local = 1'b1;
    end else begin
        weights1_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2350_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_51_we0_local = 1'b1;
    end else begin
        weights1_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_52_address0_local = weights1_52_addr_reg_3672_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_52_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_52_ce0_local = 1'b1;
    end else begin
        weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1991_state18 == 1'b1))) begin
        weights1_52_we0_local = 1'b1;
    end else begin
        weights1_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_53_address0_local = weights1_53_addr_reg_3832_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_53_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_53_ce0_local = 1'b1;
    end else begin
        weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2359_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_53_we0_local = 1'b1;
    end else begin
        weights1_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_54_address0_local = weights1_54_addr_reg_3677_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_54_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_54_ce0_local = 1'b1;
    end else begin
        weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2001_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_54_we0_local = 1'b1;
    end else begin
        weights1_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_55_address0_local = weights1_55_addr_reg_3837_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_55_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_55_ce0_local = 1'b1;
    end else begin
        weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2368_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_55_we0_local = 1'b1;
    end else begin
        weights1_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_56_address0_local = weights1_56_addr_reg_3682_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_56_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_56_ce0_local = 1'b1;
    end else begin
        weights1_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2011_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_56_we0_local = 1'b1;
    end else begin
        weights1_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_57_address0_local = weights1_57_addr_reg_3842_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_57_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_57_ce0_local = 1'b1;
    end else begin
        weights1_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2377_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_57_we0_local = 1'b1;
    end else begin
        weights1_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_58_address0_local = weights1_58_addr_reg_3687_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_58_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_58_ce0_local = 1'b1;
    end else begin
        weights1_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2021_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_58_we0_local = 1'b1;
    end else begin
        weights1_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_59_address0_local = weights1_59_addr_reg_3847_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_59_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_59_ce0_local = 1'b1;
    end else begin
        weights1_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2386_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_59_we0_local = 1'b1;
    end else begin
        weights1_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_5_address0_local = weights1_5_addr_reg_3712_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_5_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2143_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_60_address0_local = weights1_60_addr_reg_3692_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_60_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_60_ce0_local = 1'b1;
    end else begin
        weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2031_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_60_we0_local = 1'b1;
    end else begin
        weights1_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_61_address0_local = weights1_61_addr_reg_3852_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_61_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_61_ce0_local = 1'b1;
    end else begin
        weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2395_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_61_we0_local = 1'b1;
    end else begin
        weights1_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_62_address0_local = weights1_62_addr_reg_3697_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_62_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_62_ce0_local = 1'b1;
    end else begin
        weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2100_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_62_we0_local = 1'b1;
    end else begin
        weights1_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_63_address0_local = weights1_63_addr_reg_3857_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_63_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_63_ce0_local = 1'b1;
    end else begin
        weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2464_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_63_we0_local = 1'b1;
    end else begin
        weights1_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_6_address0_local = weights1_6_addr_reg_3557_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_6_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1761_state18 == 1'b1))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_7_address0_local = weights1_7_addr_reg_3717_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_7_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2152_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_8_address0_local = weights1_8_addr_reg_3562_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_8_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_8_ce0_local = 1'b1;
    end else begin
        weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1771_state18 == 1'b1))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_9_address0_local = weights1_9_addr_reg_3722_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_9_address0_local = zext_ln126_fu_2141_p1;
    end else begin
        weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_9_ce0_local = 1'b1;
    end else begin
        weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred2161_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_9_we0_local = 1'b1;
    end else begin
        weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln126_1_fu_2127_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_2099_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln127_fu_3073_p2 = (select_ln121_reg_3212 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_64_fu_3091_p1 = sub_reg_3900;
assign bitcast_ln128_65_fu_3126_p1 = sub_1_reg_3907;
assign d_weights1_0_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_32_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_32_ce0 = d_weights1_32_ce0_local;
assign d_weights1_33_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_33_ce0 = d_weights1_33_ce0_local;
assign d_weights1_34_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_34_ce0 = d_weights1_34_ce0_local;
assign d_weights1_35_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_35_ce0 = d_weights1_35_ce0_local;
assign d_weights1_36_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_36_ce0 = d_weights1_36_ce0_local;
assign d_weights1_37_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_37_ce0 = d_weights1_37_ce0_local;
assign d_weights1_38_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_38_ce0 = d_weights1_38_ce0_local;
assign d_weights1_39_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_39_ce0 = d_weights1_39_ce0_local;
assign d_weights1_3_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_40_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_40_ce0 = d_weights1_40_ce0_local;
assign d_weights1_41_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_41_ce0 = d_weights1_41_ce0_local;
assign d_weights1_42_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_42_ce0 = d_weights1_42_ce0_local;
assign d_weights1_43_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_43_ce0 = d_weights1_43_ce0_local;
assign d_weights1_44_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_44_ce0 = d_weights1_44_ce0_local;
assign d_weights1_45_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_45_ce0 = d_weights1_45_ce0_local;
assign d_weights1_46_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_46_ce0 = d_weights1_46_ce0_local;
assign d_weights1_47_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_47_ce0 = d_weights1_47_ce0_local;
assign d_weights1_48_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_48_ce0 = d_weights1_48_ce0_local;
assign d_weights1_49_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_49_ce0 = d_weights1_49_ce0_local;
assign d_weights1_4_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_50_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_50_ce0 = d_weights1_50_ce0_local;
assign d_weights1_51_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_51_ce0 = d_weights1_51_ce0_local;
assign d_weights1_52_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_52_ce0 = d_weights1_52_ce0_local;
assign d_weights1_53_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_53_ce0 = d_weights1_53_ce0_local;
assign d_weights1_54_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_54_ce0 = d_weights1_54_ce0_local;
assign d_weights1_55_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_55_ce0 = d_weights1_55_ce0_local;
assign d_weights1_56_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_56_ce0 = d_weights1_56_ce0_local;
assign d_weights1_57_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_57_ce0 = d_weights1_57_ce0_local;
assign d_weights1_58_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_58_ce0 = d_weights1_58_ce0_local;
assign d_weights1_59_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_59_ce0 = d_weights1_59_ce0_local;
assign d_weights1_5_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_60_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_60_ce0 = d_weights1_60_ce0_local;
assign d_weights1_61_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_61_ce0 = d_weights1_61_ce0_local;
assign d_weights1_62_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_62_ce0 = d_weights1_62_ce0_local;
assign d_weights1_63_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_63_ce0 = d_weights1_63_ce0_local;
assign d_weights1_6_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln126_fu_2141_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_4915_p_ce = 1'b1;
assign grp_fu_4915_p_din0 = grp_fu_2061_p0;
assign grp_fu_4915_p_din1 = grp_fu_2061_p1;
assign grp_fu_4915_p_opcode = grp_fu_2061_opcode;
assign grp_fu_4919_p_ce = 1'b1;
assign grp_fu_4919_p_din0 = grp_fu_2065_p0;
assign grp_fu_4919_p_din1 = grp_fu_2065_p1;
assign icmp_ln126_fu_2093_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd416) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_374;
assign select_ln121_fu_2119_p3 = ((tmp_fu_2111_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln126_fu_2133_p3 = ((tmp_fu_2111_p3[0:0] == 1'b1) ? add_ln126_1_fu_2127_p2 : ap_sig_allocacmp_i_load);
assign tmp_5_fu_2277_p65 = 'bx;
assign tmp_6_fu_2540_p10 = weights1_8_q0;
assign tmp_6_fu_2540_p12 = weights1_10_q0;
assign tmp_6_fu_2540_p14 = weights1_12_q0;
assign tmp_6_fu_2540_p16 = weights1_14_q0;
assign tmp_6_fu_2540_p18 = weights1_16_q0;
assign tmp_6_fu_2540_p2 = weights1_0_q0;
assign tmp_6_fu_2540_p20 = weights1_18_q0;
assign tmp_6_fu_2540_p22 = weights1_20_q0;
assign tmp_6_fu_2540_p24 = weights1_22_q0;
assign tmp_6_fu_2540_p26 = weights1_24_q0;
assign tmp_6_fu_2540_p28 = weights1_26_q0;
assign tmp_6_fu_2540_p30 = weights1_28_q0;
assign tmp_6_fu_2540_p32 = weights1_30_q0;
assign tmp_6_fu_2540_p34 = weights1_32_q0;
assign tmp_6_fu_2540_p36 = weights1_34_q0;
assign tmp_6_fu_2540_p38 = weights1_36_q0;
assign tmp_6_fu_2540_p4 = weights1_2_q0;
assign tmp_6_fu_2540_p40 = weights1_38_q0;
assign tmp_6_fu_2540_p42 = weights1_40_q0;
assign tmp_6_fu_2540_p44 = weights1_42_q0;
assign tmp_6_fu_2540_p46 = weights1_44_q0;
assign tmp_6_fu_2540_p48 = weights1_46_q0;
assign tmp_6_fu_2540_p50 = weights1_48_q0;
assign tmp_6_fu_2540_p52 = weights1_50_q0;
assign tmp_6_fu_2540_p54 = weights1_52_q0;
assign tmp_6_fu_2540_p56 = weights1_54_q0;
assign tmp_6_fu_2540_p58 = weights1_56_q0;
assign tmp_6_fu_2540_p6 = weights1_4_q0;
assign tmp_6_fu_2540_p60 = weights1_58_q0;
assign tmp_6_fu_2540_p62 = weights1_60_q0;
assign tmp_6_fu_2540_p64 = weights1_62_q0;
assign tmp_6_fu_2540_p65 = 'bx;
assign tmp_6_fu_2540_p8 = weights1_6_q0;
assign tmp_7_fu_2675_p65 = 'bx;
assign tmp_8_fu_2938_p10 = weights1_9_q0;
assign tmp_8_fu_2938_p12 = weights1_11_q0;
assign tmp_8_fu_2938_p14 = weights1_13_q0;
assign tmp_8_fu_2938_p16 = weights1_15_q0;
assign tmp_8_fu_2938_p18 = weights1_17_q0;
assign tmp_8_fu_2938_p2 = weights1_1_q0;
assign tmp_8_fu_2938_p20 = weights1_19_q0;
assign tmp_8_fu_2938_p22 = weights1_21_q0;
assign tmp_8_fu_2938_p24 = weights1_23_q0;
assign tmp_8_fu_2938_p26 = weights1_25_q0;
assign tmp_8_fu_2938_p28 = weights1_27_q0;
assign tmp_8_fu_2938_p30 = weights1_29_q0;
assign tmp_8_fu_2938_p32 = weights1_31_q0;
assign tmp_8_fu_2938_p34 = weights1_33_q0;
assign tmp_8_fu_2938_p36 = weights1_35_q0;
assign tmp_8_fu_2938_p38 = weights1_37_q0;
assign tmp_8_fu_2938_p4 = weights1_3_q0;
assign tmp_8_fu_2938_p40 = weights1_39_q0;
assign tmp_8_fu_2938_p42 = weights1_41_q0;
assign tmp_8_fu_2938_p44 = weights1_43_q0;
assign tmp_8_fu_2938_p46 = weights1_45_q0;
assign tmp_8_fu_2938_p48 = weights1_47_q0;
assign tmp_8_fu_2938_p50 = weights1_49_q0;
assign tmp_8_fu_2938_p52 = weights1_51_q0;
assign tmp_8_fu_2938_p54 = weights1_53_q0;
assign tmp_8_fu_2938_p56 = weights1_55_q0;
assign tmp_8_fu_2938_p58 = weights1_57_q0;
assign tmp_8_fu_2938_p6 = weights1_5_q0;
assign tmp_8_fu_2938_p60 = weights1_59_q0;
assign tmp_8_fu_2938_p62 = weights1_61_q0;
assign tmp_8_fu_2938_p64 = weights1_63_q0;
assign tmp_8_fu_2938_p65 = 'bx;
assign tmp_8_fu_2938_p8 = weights1_7_q0;
assign tmp_fu_2111_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln127_fu_2273_p1 = select_ln121_fu_2119_p3[5:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_32_address0 = weights1_32_address0_local;
assign weights1_32_ce0 = weights1_32_ce0_local;
assign weights1_32_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_32_we0 = weights1_32_we0_local;
assign weights1_33_address0 = weights1_33_address0_local;
assign weights1_33_ce0 = weights1_33_ce0_local;
assign weights1_33_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_33_we0 = weights1_33_we0_local;
assign weights1_34_address0 = weights1_34_address0_local;
assign weights1_34_ce0 = weights1_34_ce0_local;
assign weights1_34_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_34_we0 = weights1_34_we0_local;
assign weights1_35_address0 = weights1_35_address0_local;
assign weights1_35_ce0 = weights1_35_ce0_local;
assign weights1_35_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_35_we0 = weights1_35_we0_local;
assign weights1_36_address0 = weights1_36_address0_local;
assign weights1_36_ce0 = weights1_36_ce0_local;
assign weights1_36_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_36_we0 = weights1_36_we0_local;
assign weights1_37_address0 = weights1_37_address0_local;
assign weights1_37_ce0 = weights1_37_ce0_local;
assign weights1_37_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_37_we0 = weights1_37_we0_local;
assign weights1_38_address0 = weights1_38_address0_local;
assign weights1_38_ce0 = weights1_38_ce0_local;
assign weights1_38_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_38_we0 = weights1_38_we0_local;
assign weights1_39_address0 = weights1_39_address0_local;
assign weights1_39_ce0 = weights1_39_ce0_local;
assign weights1_39_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_39_we0 = weights1_39_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_40_address0 = weights1_40_address0_local;
assign weights1_40_ce0 = weights1_40_ce0_local;
assign weights1_40_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_40_we0 = weights1_40_we0_local;
assign weights1_41_address0 = weights1_41_address0_local;
assign weights1_41_ce0 = weights1_41_ce0_local;
assign weights1_41_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_41_we0 = weights1_41_we0_local;
assign weights1_42_address0 = weights1_42_address0_local;
assign weights1_42_ce0 = weights1_42_ce0_local;
assign weights1_42_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_42_we0 = weights1_42_we0_local;
assign weights1_43_address0 = weights1_43_address0_local;
assign weights1_43_ce0 = weights1_43_ce0_local;
assign weights1_43_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_43_we0 = weights1_43_we0_local;
assign weights1_44_address0 = weights1_44_address0_local;
assign weights1_44_ce0 = weights1_44_ce0_local;
assign weights1_44_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_44_we0 = weights1_44_we0_local;
assign weights1_45_address0 = weights1_45_address0_local;
assign weights1_45_ce0 = weights1_45_ce0_local;
assign weights1_45_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_45_we0 = weights1_45_we0_local;
assign weights1_46_address0 = weights1_46_address0_local;
assign weights1_46_ce0 = weights1_46_ce0_local;
assign weights1_46_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_46_we0 = weights1_46_we0_local;
assign weights1_47_address0 = weights1_47_address0_local;
assign weights1_47_ce0 = weights1_47_ce0_local;
assign weights1_47_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_47_we0 = weights1_47_we0_local;
assign weights1_48_address0 = weights1_48_address0_local;
assign weights1_48_ce0 = weights1_48_ce0_local;
assign weights1_48_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_48_we0 = weights1_48_we0_local;
assign weights1_49_address0 = weights1_49_address0_local;
assign weights1_49_ce0 = weights1_49_ce0_local;
assign weights1_49_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_49_we0 = weights1_49_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_50_address0 = weights1_50_address0_local;
assign weights1_50_ce0 = weights1_50_ce0_local;
assign weights1_50_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_50_we0 = weights1_50_we0_local;
assign weights1_51_address0 = weights1_51_address0_local;
assign weights1_51_ce0 = weights1_51_ce0_local;
assign weights1_51_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_51_we0 = weights1_51_we0_local;
assign weights1_52_address0 = weights1_52_address0_local;
assign weights1_52_ce0 = weights1_52_ce0_local;
assign weights1_52_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_52_we0 = weights1_52_we0_local;
assign weights1_53_address0 = weights1_53_address0_local;
assign weights1_53_ce0 = weights1_53_ce0_local;
assign weights1_53_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_53_we0 = weights1_53_we0_local;
assign weights1_54_address0 = weights1_54_address0_local;
assign weights1_54_ce0 = weights1_54_ce0_local;
assign weights1_54_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_54_we0 = weights1_54_we0_local;
assign weights1_55_address0 = weights1_55_address0_local;
assign weights1_55_ce0 = weights1_55_ce0_local;
assign weights1_55_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_55_we0 = weights1_55_we0_local;
assign weights1_56_address0 = weights1_56_address0_local;
assign weights1_56_ce0 = weights1_56_ce0_local;
assign weights1_56_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_56_we0 = weights1_56_we0_local;
assign weights1_57_address0 = weights1_57_address0_local;
assign weights1_57_ce0 = weights1_57_ce0_local;
assign weights1_57_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_57_we0 = weights1_57_we0_local;
assign weights1_58_address0 = weights1_58_address0_local;
assign weights1_58_ce0 = weights1_58_ce0_local;
assign weights1_58_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_58_we0 = weights1_58_we0_local;
assign weights1_59_address0 = weights1_59_address0_local;
assign weights1_59_ce0 = weights1_59_ce0_local;
assign weights1_59_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_59_we0 = weights1_59_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_60_address0 = weights1_60_address0_local;
assign weights1_60_ce0 = weights1_60_ce0_local;
assign weights1_60_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_60_we0 = weights1_60_we0_local;
assign weights1_61_address0 = weights1_61_address0_local;
assign weights1_61_ce0 = weights1_61_ce0_local;
assign weights1_61_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_61_we0 = weights1_61_we0_local;
assign weights1_62_address0 = weights1_62_address0_local;
assign weights1_62_ce0 = weights1_62_ce0_local;
assign weights1_62_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_62_we0 = weights1_62_we0_local;
assign weights1_63_address0 = weights1_63_address0_local;
assign weights1_63_ce0 = weights1_63_ce0_local;
assign weights1_63_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_63_we0 = weights1_63_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_64_fu_3091_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_65_fu_3126_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln126_fu_2141_p1 = select_ln126_fu_2133_p3;
endmodule 
