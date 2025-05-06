
module backprop_update_weights_37_38_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_33_address0,d_weights1_33_ce0,d_weights1_33_q0,d_weights1_37_address0,d_weights1_37_ce0,d_weights1_37_q0,d_weights1_41_address0,d_weights1_41_ce0,d_weights1_41_q0,d_weights1_45_address0,d_weights1_45_ce0,d_weights1_45_q0,d_weights1_49_address0,d_weights1_49_ce0,d_weights1_49_q0,d_weights1_53_address0,d_weights1_53_ce0,d_weights1_53_q0,d_weights1_57_address0,d_weights1_57_ce0,d_weights1_57_q0,d_weights1_61_address0,d_weights1_61_ce0,d_weights1_61_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_34_address0,d_weights1_34_ce0,d_weights1_34_q0,d_weights1_38_address0,d_weights1_38_ce0,d_weights1_38_q0,d_weights1_42_address0,d_weights1_42_ce0,d_weights1_42_q0,d_weights1_46_address0,d_weights1_46_ce0,d_weights1_46_q0,d_weights1_50_address0,d_weights1_50_ce0,d_weights1_50_q0,d_weights1_54_address0,d_weights1_54_ce0,d_weights1_54_q0,d_weights1_58_address0,d_weights1_58_ce0,d_weights1_58_q0,d_weights1_62_address0,d_weights1_62_ce0,d_weights1_62_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,d_weights1_35_address0,d_weights1_35_ce0,d_weights1_35_q0,d_weights1_39_address0,d_weights1_39_ce0,d_weights1_39_q0,d_weights1_43_address0,d_weights1_43_ce0,d_weights1_43_q0,d_weights1_47_address0,d_weights1_47_ce0,d_weights1_47_q0,d_weights1_51_address0,d_weights1_51_ce0,d_weights1_51_q0,d_weights1_55_address0,d_weights1_55_ce0,d_weights1_55_q0,d_weights1_59_address0,d_weights1_59_ce0,d_weights1_59_q0,d_weights1_63_address0,d_weights1_63_ce0,d_weights1_63_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_32_address0,d_weights1_32_ce0,d_weights1_32_q0,d_weights1_36_address0,d_weights1_36_ce0,d_weights1_36_q0,d_weights1_40_address0,d_weights1_40_ce0,d_weights1_40_q0,d_weights1_44_address0,d_weights1_44_ce0,d_weights1_44_q0,d_weights1_48_address0,d_weights1_48_ce0,d_weights1_48_q0,d_weights1_52_address0,d_weights1_52_ce0,d_weights1_52_q0,d_weights1_56_address0,d_weights1_56_ce0,d_weights1_56_q0,d_weights1_60_address0,d_weights1_60_ce0,d_weights1_60_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_32_address0,weights1_32_ce0,weights1_32_we0,weights1_32_d0,weights1_32_q0,weights1_36_address0,weights1_36_ce0,weights1_36_we0,weights1_36_d0,weights1_36_q0,weights1_40_address0,weights1_40_ce0,weights1_40_we0,weights1_40_d0,weights1_40_q0,weights1_44_address0,weights1_44_ce0,weights1_44_we0,weights1_44_d0,weights1_44_q0,weights1_48_address0,weights1_48_ce0,weights1_48_we0,weights1_48_d0,weights1_48_q0,weights1_52_address0,weights1_52_ce0,weights1_52_we0,weights1_52_d0,weights1_52_q0,weights1_56_address0,weights1_56_ce0,weights1_56_we0,weights1_56_d0,weights1_56_q0,weights1_60_address0,weights1_60_ce0,weights1_60_we0,weights1_60_d0,weights1_60_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_33_address0,weights1_33_ce0,weights1_33_we0,weights1_33_d0,weights1_33_q0,weights1_37_address0,weights1_37_ce0,weights1_37_we0,weights1_37_d0,weights1_37_q0,weights1_41_address0,weights1_41_ce0,weights1_41_we0,weights1_41_d0,weights1_41_q0,weights1_45_address0,weights1_45_ce0,weights1_45_we0,weights1_45_d0,weights1_45_q0,weights1_49_address0,weights1_49_ce0,weights1_49_we0,weights1_49_d0,weights1_49_q0,weights1_53_address0,weights1_53_ce0,weights1_53_we0,weights1_53_d0,weights1_53_q0,weights1_57_address0,weights1_57_ce0,weights1_57_we0,weights1_57_d0,weights1_57_q0,weights1_61_address0,weights1_61_ce0,weights1_61_we0,weights1_61_d0,weights1_61_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_34_address0,weights1_34_ce0,weights1_34_we0,weights1_34_d0,weights1_34_q0,weights1_38_address0,weights1_38_ce0,weights1_38_we0,weights1_38_d0,weights1_38_q0,weights1_42_address0,weights1_42_ce0,weights1_42_we0,weights1_42_d0,weights1_42_q0,weights1_46_address0,weights1_46_ce0,weights1_46_we0,weights1_46_d0,weights1_46_q0,weights1_50_address0,weights1_50_ce0,weights1_50_we0,weights1_50_d0,weights1_50_q0,weights1_54_address0,weights1_54_ce0,weights1_54_we0,weights1_54_d0,weights1_54_q0,weights1_58_address0,weights1_58_ce0,weights1_58_we0,weights1_58_d0,weights1_58_q0,weights1_62_address0,weights1_62_ce0,weights1_62_we0,weights1_62_d0,weights1_62_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_35_address0,weights1_35_ce0,weights1_35_we0,weights1_35_d0,weights1_35_q0,weights1_39_address0,weights1_39_ce0,weights1_39_we0,weights1_39_d0,weights1_39_q0,weights1_43_address0,weights1_43_ce0,weights1_43_we0,weights1_43_d0,weights1_43_q0,weights1_47_address0,weights1_47_ce0,weights1_47_we0,weights1_47_d0,weights1_47_q0,weights1_51_address0,weights1_51_ce0,weights1_51_we0,weights1_51_d0,weights1_51_q0,weights1_55_address0,weights1_55_ce0,weights1_55_we0,weights1_55_d0,weights1_55_q0,weights1_59_address0,weights1_59_ce0,weights1_59_we0,weights1_59_d0,weights1_59_q0,weights1_63_address0,weights1_63_ce0,weights1_63_we0,weights1_63_d0,weights1_63_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_4915_p_din0,grp_fu_4915_p_din1,grp_fu_4915_p_opcode,grp_fu_4915_p_dout0,grp_fu_4915_p_ce,grp_fu_4919_p_din0,grp_fu_4919_p_din1,grp_fu_4919_p_dout0,grp_fu_4919_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [3:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [3:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [3:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [3:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [3:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [3:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [3:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [3:0] d_weights1_33_address0;
output   d_weights1_33_ce0;
input  [63:0] d_weights1_33_q0;
output  [3:0] d_weights1_37_address0;
output   d_weights1_37_ce0;
input  [63:0] d_weights1_37_q0;
output  [3:0] d_weights1_41_address0;
output   d_weights1_41_ce0;
input  [63:0] d_weights1_41_q0;
output  [3:0] d_weights1_45_address0;
output   d_weights1_45_ce0;
input  [63:0] d_weights1_45_q0;
output  [3:0] d_weights1_49_address0;
output   d_weights1_49_ce0;
input  [63:0] d_weights1_49_q0;
output  [3:0] d_weights1_53_address0;
output   d_weights1_53_ce0;
input  [63:0] d_weights1_53_q0;
output  [3:0] d_weights1_57_address0;
output   d_weights1_57_ce0;
input  [63:0] d_weights1_57_q0;
output  [3:0] d_weights1_61_address0;
output   d_weights1_61_ce0;
input  [63:0] d_weights1_61_q0;
output  [3:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [3:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [3:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [3:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [3:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [3:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [3:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [3:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [3:0] d_weights1_34_address0;
output   d_weights1_34_ce0;
input  [63:0] d_weights1_34_q0;
output  [3:0] d_weights1_38_address0;
output   d_weights1_38_ce0;
input  [63:0] d_weights1_38_q0;
output  [3:0] d_weights1_42_address0;
output   d_weights1_42_ce0;
input  [63:0] d_weights1_42_q0;
output  [3:0] d_weights1_46_address0;
output   d_weights1_46_ce0;
input  [63:0] d_weights1_46_q0;
output  [3:0] d_weights1_50_address0;
output   d_weights1_50_ce0;
input  [63:0] d_weights1_50_q0;
output  [3:0] d_weights1_54_address0;
output   d_weights1_54_ce0;
input  [63:0] d_weights1_54_q0;
output  [3:0] d_weights1_58_address0;
output   d_weights1_58_ce0;
input  [63:0] d_weights1_58_q0;
output  [3:0] d_weights1_62_address0;
output   d_weights1_62_ce0;
input  [63:0] d_weights1_62_q0;
output  [3:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [3:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [3:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [3:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [3:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [3:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [3:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [3:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [3:0] d_weights1_35_address0;
output   d_weights1_35_ce0;
input  [63:0] d_weights1_35_q0;
output  [3:0] d_weights1_39_address0;
output   d_weights1_39_ce0;
input  [63:0] d_weights1_39_q0;
output  [3:0] d_weights1_43_address0;
output   d_weights1_43_ce0;
input  [63:0] d_weights1_43_q0;
output  [3:0] d_weights1_47_address0;
output   d_weights1_47_ce0;
input  [63:0] d_weights1_47_q0;
output  [3:0] d_weights1_51_address0;
output   d_weights1_51_ce0;
input  [63:0] d_weights1_51_q0;
output  [3:0] d_weights1_55_address0;
output   d_weights1_55_ce0;
input  [63:0] d_weights1_55_q0;
output  [3:0] d_weights1_59_address0;
output   d_weights1_59_ce0;
input  [63:0] d_weights1_59_q0;
output  [3:0] d_weights1_63_address0;
output   d_weights1_63_ce0;
input  [63:0] d_weights1_63_q0;
output  [3:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [3:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [3:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [3:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [3:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [3:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [3:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [3:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [3:0] d_weights1_32_address0;
output   d_weights1_32_ce0;
input  [63:0] d_weights1_32_q0;
output  [3:0] d_weights1_36_address0;
output   d_weights1_36_ce0;
input  [63:0] d_weights1_36_q0;
output  [3:0] d_weights1_40_address0;
output   d_weights1_40_ce0;
input  [63:0] d_weights1_40_q0;
output  [3:0] d_weights1_44_address0;
output   d_weights1_44_ce0;
input  [63:0] d_weights1_44_q0;
output  [3:0] d_weights1_48_address0;
output   d_weights1_48_ce0;
input  [63:0] d_weights1_48_q0;
output  [3:0] d_weights1_52_address0;
output   d_weights1_52_ce0;
input  [63:0] d_weights1_52_q0;
output  [3:0] d_weights1_56_address0;
output   d_weights1_56_ce0;
input  [63:0] d_weights1_56_q0;
output  [3:0] d_weights1_60_address0;
output   d_weights1_60_ce0;
input  [63:0] d_weights1_60_q0;
output  [3:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [3:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [3:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [3:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [3:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [3:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [3:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [3:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [3:0] weights1_32_address0;
output   weights1_32_ce0;
output   weights1_32_we0;
output  [63:0] weights1_32_d0;
input  [63:0] weights1_32_q0;
output  [3:0] weights1_36_address0;
output   weights1_36_ce0;
output   weights1_36_we0;
output  [63:0] weights1_36_d0;
input  [63:0] weights1_36_q0;
output  [3:0] weights1_40_address0;
output   weights1_40_ce0;
output   weights1_40_we0;
output  [63:0] weights1_40_d0;
input  [63:0] weights1_40_q0;
output  [3:0] weights1_44_address0;
output   weights1_44_ce0;
output   weights1_44_we0;
output  [63:0] weights1_44_d0;
input  [63:0] weights1_44_q0;
output  [3:0] weights1_48_address0;
output   weights1_48_ce0;
output   weights1_48_we0;
output  [63:0] weights1_48_d0;
input  [63:0] weights1_48_q0;
output  [3:0] weights1_52_address0;
output   weights1_52_ce0;
output   weights1_52_we0;
output  [63:0] weights1_52_d0;
input  [63:0] weights1_52_q0;
output  [3:0] weights1_56_address0;
output   weights1_56_ce0;
output   weights1_56_we0;
output  [63:0] weights1_56_d0;
input  [63:0] weights1_56_q0;
output  [3:0] weights1_60_address0;
output   weights1_60_ce0;
output   weights1_60_we0;
output  [63:0] weights1_60_d0;
input  [63:0] weights1_60_q0;
output  [3:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [3:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [3:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [3:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [3:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [3:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [3:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [3:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [3:0] weights1_33_address0;
output   weights1_33_ce0;
output   weights1_33_we0;
output  [63:0] weights1_33_d0;
input  [63:0] weights1_33_q0;
output  [3:0] weights1_37_address0;
output   weights1_37_ce0;
output   weights1_37_we0;
output  [63:0] weights1_37_d0;
input  [63:0] weights1_37_q0;
output  [3:0] weights1_41_address0;
output   weights1_41_ce0;
output   weights1_41_we0;
output  [63:0] weights1_41_d0;
input  [63:0] weights1_41_q0;
output  [3:0] weights1_45_address0;
output   weights1_45_ce0;
output   weights1_45_we0;
output  [63:0] weights1_45_d0;
input  [63:0] weights1_45_q0;
output  [3:0] weights1_49_address0;
output   weights1_49_ce0;
output   weights1_49_we0;
output  [63:0] weights1_49_d0;
input  [63:0] weights1_49_q0;
output  [3:0] weights1_53_address0;
output   weights1_53_ce0;
output   weights1_53_we0;
output  [63:0] weights1_53_d0;
input  [63:0] weights1_53_q0;
output  [3:0] weights1_57_address0;
output   weights1_57_ce0;
output   weights1_57_we0;
output  [63:0] weights1_57_d0;
input  [63:0] weights1_57_q0;
output  [3:0] weights1_61_address0;
output   weights1_61_ce0;
output   weights1_61_we0;
output  [63:0] weights1_61_d0;
input  [63:0] weights1_61_q0;
output  [3:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [3:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [3:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [3:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [3:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [3:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [3:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [3:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [3:0] weights1_34_address0;
output   weights1_34_ce0;
output   weights1_34_we0;
output  [63:0] weights1_34_d0;
input  [63:0] weights1_34_q0;
output  [3:0] weights1_38_address0;
output   weights1_38_ce0;
output   weights1_38_we0;
output  [63:0] weights1_38_d0;
input  [63:0] weights1_38_q0;
output  [3:0] weights1_42_address0;
output   weights1_42_ce0;
output   weights1_42_we0;
output  [63:0] weights1_42_d0;
input  [63:0] weights1_42_q0;
output  [3:0] weights1_46_address0;
output   weights1_46_ce0;
output   weights1_46_we0;
output  [63:0] weights1_46_d0;
input  [63:0] weights1_46_q0;
output  [3:0] weights1_50_address0;
output   weights1_50_ce0;
output   weights1_50_we0;
output  [63:0] weights1_50_d0;
input  [63:0] weights1_50_q0;
output  [3:0] weights1_54_address0;
output   weights1_54_ce0;
output   weights1_54_we0;
output  [63:0] weights1_54_d0;
input  [63:0] weights1_54_q0;
output  [3:0] weights1_58_address0;
output   weights1_58_ce0;
output   weights1_58_we0;
output  [63:0] weights1_58_d0;
input  [63:0] weights1_58_q0;
output  [3:0] weights1_62_address0;
output   weights1_62_ce0;
output   weights1_62_we0;
output  [63:0] weights1_62_d0;
input  [63:0] weights1_62_q0;
output  [3:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [3:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [3:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [3:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [3:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [3:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [3:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [3:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [3:0] weights1_35_address0;
output   weights1_35_ce0;
output   weights1_35_we0;
output  [63:0] weights1_35_d0;
input  [63:0] weights1_35_q0;
output  [3:0] weights1_39_address0;
output   weights1_39_ce0;
output   weights1_39_we0;
output  [63:0] weights1_39_d0;
input  [63:0] weights1_39_q0;
output  [3:0] weights1_43_address0;
output   weights1_43_ce0;
output   weights1_43_we0;
output  [63:0] weights1_43_d0;
input  [63:0] weights1_43_q0;
output  [3:0] weights1_47_address0;
output   weights1_47_ce0;
output   weights1_47_we0;
output  [63:0] weights1_47_d0;
input  [63:0] weights1_47_q0;
output  [3:0] weights1_51_address0;
output   weights1_51_ce0;
output   weights1_51_we0;
output  [63:0] weights1_51_d0;
input  [63:0] weights1_51_q0;
output  [3:0] weights1_55_address0;
output   weights1_55_ce0;
output   weights1_55_we0;
output  [63:0] weights1_55_d0;
input  [63:0] weights1_55_q0;
output  [3:0] weights1_59_address0;
output   weights1_59_ce0;
output   weights1_59_we0;
output  [63:0] weights1_59_d0;
input  [63:0] weights1_59_q0;
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
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] icmp_ln126_reg_3223;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_2038;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_2043;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_2048;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_2078_p2;
wire   [7:0] add_ln126_fu_2084_p2;
reg   [7:0] add_ln126_reg_3227;
wire   [6:0] select_ln121_fu_2104_p3;
reg   [6:0] select_ln121_reg_3232;
wire   [3:0] select_ln126_fu_2118_p3;
reg   [3:0] select_ln126_reg_3237;
reg   [3:0] weights1_0_addr_reg_3562;
reg   [3:0] weights1_4_addr_reg_3567;
reg   [3:0] weights1_8_addr_reg_3572;
reg   [3:0] weights1_12_addr_reg_3577;
reg   [3:0] weights1_16_addr_reg_3582;
reg   [3:0] weights1_20_addr_reg_3587;
reg   [3:0] weights1_24_addr_reg_3592;
reg   [3:0] weights1_28_addr_reg_3597;
reg   [3:0] weights1_32_addr_reg_3602;
reg   [3:0] weights1_36_addr_reg_3607;
reg   [3:0] weights1_40_addr_reg_3612;
reg   [3:0] weights1_44_addr_reg_3617;
reg   [3:0] weights1_48_addr_reg_3622;
reg   [3:0] weights1_52_addr_reg_3627;
reg   [3:0] weights1_56_addr_reg_3632;
reg   [3:0] weights1_60_addr_reg_3637;
reg   [3:0] weights1_1_addr_reg_3642;
reg   [3:0] weights1_5_addr_reg_3647;
reg   [3:0] weights1_9_addr_reg_3652;
reg   [3:0] weights1_13_addr_reg_3657;
reg   [3:0] weights1_17_addr_reg_3662;
reg   [3:0] weights1_21_addr_reg_3667;
reg   [3:0] weights1_25_addr_reg_3672;
reg   [3:0] weights1_29_addr_reg_3677;
reg   [3:0] weights1_33_addr_reg_3682;
reg   [3:0] weights1_37_addr_reg_3687;
reg   [3:0] weights1_41_addr_reg_3692;
reg   [3:0] weights1_45_addr_reg_3697;
reg   [3:0] weights1_49_addr_reg_3702;
reg   [3:0] weights1_53_addr_reg_3707;
reg   [3:0] weights1_57_addr_reg_3712;
reg   [3:0] weights1_61_addr_reg_3717;
reg   [3:0] weights1_2_addr_reg_3722;
reg   [3:0] weights1_6_addr_reg_3727;
reg   [3:0] weights1_10_addr_reg_3732;
reg   [3:0] weights1_14_addr_reg_3737;
reg   [3:0] weights1_18_addr_reg_3742;
reg   [3:0] weights1_22_addr_reg_3747;
reg   [3:0] weights1_26_addr_reg_3752;
reg   [3:0] weights1_30_addr_reg_3757;
reg   [3:0] weights1_34_addr_reg_3762;
reg   [3:0] weights1_38_addr_reg_3767;
reg   [3:0] weights1_42_addr_reg_3772;
reg   [3:0] weights1_46_addr_reg_3777;
reg   [3:0] weights1_50_addr_reg_3782;
reg   [3:0] weights1_54_addr_reg_3787;
reg   [3:0] weights1_58_addr_reg_3792;
reg   [3:0] weights1_62_addr_reg_3797;
reg   [3:0] weights1_3_addr_reg_3802;
reg   [3:0] weights1_7_addr_reg_3807;
reg   [3:0] weights1_11_addr_reg_3812;
reg   [3:0] weights1_15_addr_reg_3817;
reg   [3:0] weights1_19_addr_reg_3822;
reg   [3:0] weights1_23_addr_reg_3827;
reg   [3:0] weights1_27_addr_reg_3832;
reg   [3:0] weights1_31_addr_reg_3837;
reg   [3:0] weights1_35_addr_reg_3842;
reg   [3:0] weights1_39_addr_reg_3847;
reg   [3:0] weights1_43_addr_reg_3852;
reg   [3:0] weights1_47_addr_reg_3857;
reg   [3:0] weights1_51_addr_reg_3862;
reg   [3:0] weights1_55_addr_reg_3867;
reg   [3:0] weights1_59_addr_reg_3872;
reg   [3:0] weights1_63_addr_reg_3877;
wire   [5:0] trunc_ln127_fu_2258_p1;
reg   [5:0] trunc_ln127_reg_3882;
wire   [63:0] tmp_9_fu_2262_p35;
reg   [63:0] tmp_9_reg_3894;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_s_fu_2397_p35;
reg   [63:0] tmp_s_reg_3899;
wire   [63:0] tmp_8_fu_2468_p35;
reg   [63:0] tmp_8_reg_3904;
wire   [63:0] tmp_10_fu_2603_p35;
reg   [63:0] tmp_10_reg_3909;
wire   [63:0] tmp_11_fu_2674_p35;
reg   [63:0] tmp_11_reg_3914;
wire   [63:0] tmp_12_fu_2809_p35;
reg   [63:0] tmp_12_reg_3919;
wire   [63:0] tmp_13_fu_2880_p35;
reg   [63:0] tmp_13_reg_3924;
wire   [63:0] tmp_14_fu_3015_p35;
reg   [63:0] tmp_14_reg_3929;
reg   [63:0] mul4_2_reg_3934;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul4_3_reg_3939;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] sub_1_reg_3944;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub_2_reg_3951;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub_3_reg_3958;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] mul17_2_reg_3970;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] mul17_3_reg_3975;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] norm_5_reg_3980;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln126_fu_2126_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] norm_2_fu_342;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] j_fu_346;
wire   [6:0] add_ln127_fu_3086_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_350;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten_fu_354;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage23_01001;
reg    d_weights1_1_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_33_ce0_local;
reg    d_weights1_37_ce0_local;
reg    d_weights1_41_ce0_local;
reg    d_weights1_45_ce0_local;
reg    d_weights1_49_ce0_local;
reg    d_weights1_53_ce0_local;
reg    d_weights1_57_ce0_local;
reg    d_weights1_61_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_30_ce0_local;
reg    d_weights1_34_ce0_local;
reg    d_weights1_38_ce0_local;
reg    d_weights1_42_ce0_local;
reg    d_weights1_46_ce0_local;
reg    d_weights1_50_ce0_local;
reg    d_weights1_54_ce0_local;
reg    d_weights1_58_ce0_local;
reg    d_weights1_62_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_31_ce0_local;
reg    d_weights1_35_ce0_local;
reg    d_weights1_39_ce0_local;
reg    d_weights1_43_ce0_local;
reg    d_weights1_47_ce0_local;
reg    d_weights1_51_ce0_local;
reg    d_weights1_55_ce0_local;
reg    d_weights1_59_ce0_local;
reg    d_weights1_63_ce0_local;
reg    d_weights1_0_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_32_ce0_local;
reg    d_weights1_36_ce0_local;
reg    d_weights1_40_ce0_local;
reg    d_weights1_44_ce0_local;
reg    d_weights1_48_ce0_local;
reg    d_weights1_52_ce0_local;
reg    d_weights1_56_ce0_local;
reg    d_weights1_60_ce0_local;
reg    weights1_0_ce0_local;
reg   [3:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred1708_state18;
wire   [63:0] bitcast_ln128_64_fu_3104_p1;
wire    ap_block_pp0_stage17;
reg    weights1_4_ce0_local;
reg   [3:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred1726_state18;
reg    weights1_8_ce0_local;
reg   [3:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred1737_state18;
reg    weights1_12_ce0_local;
reg   [3:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1748_state18;
reg    weights1_16_ce0_local;
reg   [3:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1759_state18;
reg    weights1_20_ce0_local;
reg   [3:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1770_state18;
reg    weights1_24_ce0_local;
reg   [3:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1781_state18;
reg    weights1_28_ce0_local;
reg   [3:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1792_state18;
reg    weights1_32_ce0_local;
reg   [3:0] weights1_32_address0_local;
reg    weights1_32_we0_local;
reg    ap_predicate_pred1803_state18;
reg    weights1_36_ce0_local;
reg   [3:0] weights1_36_address0_local;
reg    weights1_36_we0_local;
reg    ap_predicate_pred1814_state18;
reg    weights1_40_ce0_local;
reg   [3:0] weights1_40_address0_local;
reg    weights1_40_we0_local;
reg    ap_predicate_pred1825_state18;
reg    weights1_44_ce0_local;
reg   [3:0] weights1_44_address0_local;
reg    weights1_44_we0_local;
reg    ap_predicate_pred1836_state18;
reg    weights1_48_ce0_local;
reg   [3:0] weights1_48_address0_local;
reg    weights1_48_we0_local;
reg    ap_predicate_pred1847_state18;
reg    weights1_52_ce0_local;
reg   [3:0] weights1_52_address0_local;
reg    weights1_52_we0_local;
reg    ap_predicate_pred1858_state18;
reg    weights1_56_ce0_local;
reg   [3:0] weights1_56_address0_local;
reg    weights1_56_we0_local;
reg    ap_predicate_pred1869_state18;
reg    weights1_60_ce0_local;
reg   [3:0] weights1_60_address0_local;
reg    weights1_60_we0_local;
reg    ap_predicate_pred1907_state18;
reg    weights1_1_ce0_local;
reg   [3:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg    ap_predicate_pred1708_state19;
wire   [63:0] bitcast_ln128_65_fu_3124_p1;
wire    ap_block_pp0_stage18;
reg    weights1_5_ce0_local;
reg   [3:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred1726_state19;
reg    weights1_9_ce0_local;
reg   [3:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred1737_state19;
reg    weights1_13_ce0_local;
reg   [3:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred1748_state19;
reg    weights1_17_ce0_local;
reg   [3:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred1759_state19;
reg    weights1_21_ce0_local;
reg   [3:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred1770_state19;
reg    weights1_25_ce0_local;
reg   [3:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred1781_state19;
reg    weights1_29_ce0_local;
reg   [3:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred1792_state19;
reg    weights1_33_ce0_local;
reg   [3:0] weights1_33_address0_local;
reg    weights1_33_we0_local;
reg    ap_predicate_pred1803_state19;
reg    weights1_37_ce0_local;
reg   [3:0] weights1_37_address0_local;
reg    weights1_37_we0_local;
reg    ap_predicate_pred1814_state19;
reg    weights1_41_ce0_local;
reg   [3:0] weights1_41_address0_local;
reg    weights1_41_we0_local;
reg    ap_predicate_pred1825_state19;
reg    weights1_45_ce0_local;
reg   [3:0] weights1_45_address0_local;
reg    weights1_45_we0_local;
reg    ap_predicate_pred1836_state19;
reg    weights1_49_ce0_local;
reg   [3:0] weights1_49_address0_local;
reg    weights1_49_we0_local;
reg    ap_predicate_pred1847_state19;
reg    weights1_53_ce0_local;
reg   [3:0] weights1_53_address0_local;
reg    weights1_53_we0_local;
reg    ap_predicate_pred1858_state19;
reg    weights1_57_ce0_local;
reg   [3:0] weights1_57_address0_local;
reg    weights1_57_we0_local;
reg    ap_predicate_pred1869_state19;
reg    weights1_61_ce0_local;
reg   [3:0] weights1_61_address0_local;
reg    weights1_61_we0_local;
reg    ap_predicate_pred1907_state19;
reg    weights1_2_ce0_local;
reg   [3:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred1708_state20;
wire   [63:0] bitcast_ln128_66_fu_3143_p1;
wire    ap_block_pp0_stage19;
reg    weights1_6_ce0_local;
reg   [3:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred1726_state20;
reg    weights1_10_ce0_local;
reg   [3:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1737_state20;
reg    weights1_14_ce0_local;
reg   [3:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1748_state20;
reg    weights1_18_ce0_local;
reg   [3:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1759_state20;
reg    weights1_22_ce0_local;
reg   [3:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1770_state20;
reg    weights1_26_ce0_local;
reg   [3:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1781_state20;
reg    weights1_30_ce0_local;
reg   [3:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred1792_state20;
reg    weights1_34_ce0_local;
reg   [3:0] weights1_34_address0_local;
reg    weights1_34_we0_local;
reg    ap_predicate_pred1803_state20;
reg    weights1_38_ce0_local;
reg   [3:0] weights1_38_address0_local;
reg    weights1_38_we0_local;
reg    ap_predicate_pred1814_state20;
reg    weights1_42_ce0_local;
reg   [3:0] weights1_42_address0_local;
reg    weights1_42_we0_local;
reg    ap_predicate_pred1825_state20;
reg    weights1_46_ce0_local;
reg   [3:0] weights1_46_address0_local;
reg    weights1_46_we0_local;
reg    ap_predicate_pred1836_state20;
reg    weights1_50_ce0_local;
reg   [3:0] weights1_50_address0_local;
reg    weights1_50_we0_local;
reg    ap_predicate_pred1847_state20;
reg    weights1_54_ce0_local;
reg   [3:0] weights1_54_address0_local;
reg    weights1_54_we0_local;
reg    ap_predicate_pred1858_state20;
reg    weights1_58_ce0_local;
reg   [3:0] weights1_58_address0_local;
reg    weights1_58_we0_local;
reg    ap_predicate_pred1869_state20;
reg    weights1_62_ce0_local;
reg   [3:0] weights1_62_address0_local;
reg    weights1_62_we0_local;
reg    ap_predicate_pred1907_state20;
reg    weights1_3_ce0_local;
reg   [3:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg    ap_predicate_pred1708_state21;
wire   [63:0] bitcast_ln128_67_fu_3162_p1;
wire    ap_block_pp0_stage20;
reg    weights1_7_ce0_local;
reg   [3:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred1726_state21;
reg    weights1_11_ce0_local;
reg   [3:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred1737_state21;
reg    weights1_15_ce0_local;
reg   [3:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred1748_state21;
reg    weights1_19_ce0_local;
reg   [3:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred1759_state21;
reg    weights1_23_ce0_local;
reg   [3:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred1770_state21;
reg    weights1_27_ce0_local;
reg   [3:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred1781_state21;
reg    weights1_31_ce0_local;
reg   [3:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred1792_state21;
reg    weights1_35_ce0_local;
reg   [3:0] weights1_35_address0_local;
reg    weights1_35_we0_local;
reg    ap_predicate_pred1803_state21;
reg    weights1_39_ce0_local;
reg   [3:0] weights1_39_address0_local;
reg    weights1_39_we0_local;
reg    ap_predicate_pred1814_state21;
reg    weights1_43_ce0_local;
reg   [3:0] weights1_43_address0_local;
reg    weights1_43_we0_local;
reg    ap_predicate_pred1825_state21;
reg    weights1_47_ce0_local;
reg   [3:0] weights1_47_address0_local;
reg    weights1_47_we0_local;
reg    ap_predicate_pred1836_state21;
reg    weights1_51_ce0_local;
reg   [3:0] weights1_51_address0_local;
reg    weights1_51_we0_local;
reg    ap_predicate_pred1847_state21;
reg    weights1_55_ce0_local;
reg   [3:0] weights1_55_address0_local;
reg    weights1_55_we0_local;
reg    ap_predicate_pred1858_state21;
reg    weights1_59_ce0_local;
reg   [3:0] weights1_59_address0_local;
reg    weights1_59_we0_local;
reg    ap_predicate_pred1869_state21;
reg    weights1_63_ce0_local;
reg   [3:0] weights1_63_address0_local;
reg    weights1_63_we0_local;
reg    ap_predicate_pred1907_state21;
reg   [63:0] grp_fu_2029_p0;
reg   [63:0] grp_fu_2029_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_2033_p0;
reg   [63:0] grp_fu_2033_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_fu_2096_p3;
wire   [3:0] add_ln126_1_fu_2112_p2;
wire   [63:0] tmp_9_fu_2262_p33;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_s_fu_2397_p2;
wire   [63:0] tmp_s_fu_2397_p4;
wire   [63:0] tmp_s_fu_2397_p6;
wire   [63:0] tmp_s_fu_2397_p8;
wire   [63:0] tmp_s_fu_2397_p10;
wire   [63:0] tmp_s_fu_2397_p12;
wire   [63:0] tmp_s_fu_2397_p14;
wire   [63:0] tmp_s_fu_2397_p16;
wire   [63:0] tmp_s_fu_2397_p18;
wire   [63:0] tmp_s_fu_2397_p20;
wire   [63:0] tmp_s_fu_2397_p22;
wire   [63:0] tmp_s_fu_2397_p24;
wire   [63:0] tmp_s_fu_2397_p26;
wire   [63:0] tmp_s_fu_2397_p28;
wire   [63:0] tmp_s_fu_2397_p30;
wire   [63:0] tmp_s_fu_2397_p32;
wire   [63:0] tmp_s_fu_2397_p33;
wire   [63:0] tmp_8_fu_2468_p33;
wire   [63:0] tmp_10_fu_2603_p2;
wire   [63:0] tmp_10_fu_2603_p4;
wire   [63:0] tmp_10_fu_2603_p6;
wire   [63:0] tmp_10_fu_2603_p8;
wire   [63:0] tmp_10_fu_2603_p10;
wire   [63:0] tmp_10_fu_2603_p12;
wire   [63:0] tmp_10_fu_2603_p14;
wire   [63:0] tmp_10_fu_2603_p16;
wire   [63:0] tmp_10_fu_2603_p18;
wire   [63:0] tmp_10_fu_2603_p20;
wire   [63:0] tmp_10_fu_2603_p22;
wire   [63:0] tmp_10_fu_2603_p24;
wire   [63:0] tmp_10_fu_2603_p26;
wire   [63:0] tmp_10_fu_2603_p28;
wire   [63:0] tmp_10_fu_2603_p30;
wire   [63:0] tmp_10_fu_2603_p32;
wire   [63:0] tmp_10_fu_2603_p33;
wire   [63:0] tmp_11_fu_2674_p33;
wire   [63:0] tmp_12_fu_2809_p2;
wire   [63:0] tmp_12_fu_2809_p4;
wire   [63:0] tmp_12_fu_2809_p6;
wire   [63:0] tmp_12_fu_2809_p8;
wire   [63:0] tmp_12_fu_2809_p10;
wire   [63:0] tmp_12_fu_2809_p12;
wire   [63:0] tmp_12_fu_2809_p14;
wire   [63:0] tmp_12_fu_2809_p16;
wire   [63:0] tmp_12_fu_2809_p18;
wire   [63:0] tmp_12_fu_2809_p20;
wire   [63:0] tmp_12_fu_2809_p22;
wire   [63:0] tmp_12_fu_2809_p24;
wire   [63:0] tmp_12_fu_2809_p26;
wire   [63:0] tmp_12_fu_2809_p28;
wire   [63:0] tmp_12_fu_2809_p30;
wire   [63:0] tmp_12_fu_2809_p32;
wire   [63:0] tmp_12_fu_2809_p33;
wire   [63:0] tmp_13_fu_2880_p33;
wire   [63:0] tmp_14_fu_3015_p2;
wire   [63:0] tmp_14_fu_3015_p4;
wire   [63:0] tmp_14_fu_3015_p6;
wire   [63:0] tmp_14_fu_3015_p8;
wire   [63:0] tmp_14_fu_3015_p10;
wire   [63:0] tmp_14_fu_3015_p12;
wire   [63:0] tmp_14_fu_3015_p14;
wire   [63:0] tmp_14_fu_3015_p16;
wire   [63:0] tmp_14_fu_3015_p18;
wire   [63:0] tmp_14_fu_3015_p20;
wire   [63:0] tmp_14_fu_3015_p22;
wire   [63:0] tmp_14_fu_3015_p24;
wire   [63:0] tmp_14_fu_3015_p26;
wire   [63:0] tmp_14_fu_3015_p28;
wire   [63:0] tmp_14_fu_3015_p30;
wire   [63:0] tmp_14_fu_3015_p32;
wire   [63:0] tmp_14_fu_3015_p33;
reg   [1:0] grp_fu_2029_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_9_fu_2262_p1;
wire   [5:0] tmp_9_fu_2262_p3;
wire   [5:0] tmp_9_fu_2262_p5;
wire   [5:0] tmp_9_fu_2262_p7;
wire   [5:0] tmp_9_fu_2262_p9;
wire   [5:0] tmp_9_fu_2262_p11;
wire   [5:0] tmp_9_fu_2262_p13;
wire   [5:0] tmp_9_fu_2262_p15;
wire  signed [5:0] tmp_9_fu_2262_p17;
wire  signed [5:0] tmp_9_fu_2262_p19;
wire  signed [5:0] tmp_9_fu_2262_p21;
wire  signed [5:0] tmp_9_fu_2262_p23;
wire  signed [5:0] tmp_9_fu_2262_p25;
wire  signed [5:0] tmp_9_fu_2262_p27;
wire  signed [5:0] tmp_9_fu_2262_p29;
wire  signed [5:0] tmp_9_fu_2262_p31;
wire   [5:0] tmp_s_fu_2397_p1;
wire   [5:0] tmp_s_fu_2397_p3;
wire   [5:0] tmp_s_fu_2397_p5;
wire   [5:0] tmp_s_fu_2397_p7;
wire   [5:0] tmp_s_fu_2397_p9;
wire   [5:0] tmp_s_fu_2397_p11;
wire   [5:0] tmp_s_fu_2397_p13;
wire   [5:0] tmp_s_fu_2397_p15;
wire  signed [5:0] tmp_s_fu_2397_p17;
wire  signed [5:0] tmp_s_fu_2397_p19;
wire  signed [5:0] tmp_s_fu_2397_p21;
wire  signed [5:0] tmp_s_fu_2397_p23;
wire  signed [5:0] tmp_s_fu_2397_p25;
wire  signed [5:0] tmp_s_fu_2397_p27;
wire  signed [5:0] tmp_s_fu_2397_p29;
wire  signed [5:0] tmp_s_fu_2397_p31;
wire   [5:0] tmp_8_fu_2468_p1;
wire   [5:0] tmp_8_fu_2468_p3;
wire   [5:0] tmp_8_fu_2468_p5;
wire   [5:0] tmp_8_fu_2468_p7;
wire   [5:0] tmp_8_fu_2468_p9;
wire   [5:0] tmp_8_fu_2468_p11;
wire   [5:0] tmp_8_fu_2468_p13;
wire   [5:0] tmp_8_fu_2468_p15;
wire  signed [5:0] tmp_8_fu_2468_p17;
wire  signed [5:0] tmp_8_fu_2468_p19;
wire  signed [5:0] tmp_8_fu_2468_p21;
wire  signed [5:0] tmp_8_fu_2468_p23;
wire  signed [5:0] tmp_8_fu_2468_p25;
wire  signed [5:0] tmp_8_fu_2468_p27;
wire  signed [5:0] tmp_8_fu_2468_p29;
wire  signed [5:0] tmp_8_fu_2468_p31;
wire   [5:0] tmp_10_fu_2603_p1;
wire   [5:0] tmp_10_fu_2603_p3;
wire   [5:0] tmp_10_fu_2603_p5;
wire   [5:0] tmp_10_fu_2603_p7;
wire   [5:0] tmp_10_fu_2603_p9;
wire   [5:0] tmp_10_fu_2603_p11;
wire   [5:0] tmp_10_fu_2603_p13;
wire   [5:0] tmp_10_fu_2603_p15;
wire  signed [5:0] tmp_10_fu_2603_p17;
wire  signed [5:0] tmp_10_fu_2603_p19;
wire  signed [5:0] tmp_10_fu_2603_p21;
wire  signed [5:0] tmp_10_fu_2603_p23;
wire  signed [5:0] tmp_10_fu_2603_p25;
wire  signed [5:0] tmp_10_fu_2603_p27;
wire  signed [5:0] tmp_10_fu_2603_p29;
wire  signed [5:0] tmp_10_fu_2603_p31;
wire   [5:0] tmp_11_fu_2674_p1;
wire   [5:0] tmp_11_fu_2674_p3;
wire   [5:0] tmp_11_fu_2674_p5;
wire   [5:0] tmp_11_fu_2674_p7;
wire   [5:0] tmp_11_fu_2674_p9;
wire   [5:0] tmp_11_fu_2674_p11;
wire   [5:0] tmp_11_fu_2674_p13;
wire   [5:0] tmp_11_fu_2674_p15;
wire  signed [5:0] tmp_11_fu_2674_p17;
wire  signed [5:0] tmp_11_fu_2674_p19;
wire  signed [5:0] tmp_11_fu_2674_p21;
wire  signed [5:0] tmp_11_fu_2674_p23;
wire  signed [5:0] tmp_11_fu_2674_p25;
wire  signed [5:0] tmp_11_fu_2674_p27;
wire  signed [5:0] tmp_11_fu_2674_p29;
wire  signed [5:0] tmp_11_fu_2674_p31;
wire   [5:0] tmp_12_fu_2809_p1;
wire   [5:0] tmp_12_fu_2809_p3;
wire   [5:0] tmp_12_fu_2809_p5;
wire   [5:0] tmp_12_fu_2809_p7;
wire   [5:0] tmp_12_fu_2809_p9;
wire   [5:0] tmp_12_fu_2809_p11;
wire   [5:0] tmp_12_fu_2809_p13;
wire   [5:0] tmp_12_fu_2809_p15;
wire  signed [5:0] tmp_12_fu_2809_p17;
wire  signed [5:0] tmp_12_fu_2809_p19;
wire  signed [5:0] tmp_12_fu_2809_p21;
wire  signed [5:0] tmp_12_fu_2809_p23;
wire  signed [5:0] tmp_12_fu_2809_p25;
wire  signed [5:0] tmp_12_fu_2809_p27;
wire  signed [5:0] tmp_12_fu_2809_p29;
wire  signed [5:0] tmp_12_fu_2809_p31;
wire   [5:0] tmp_13_fu_2880_p1;
wire   [5:0] tmp_13_fu_2880_p3;
wire   [5:0] tmp_13_fu_2880_p5;
wire   [5:0] tmp_13_fu_2880_p7;
wire   [5:0] tmp_13_fu_2880_p9;
wire   [5:0] tmp_13_fu_2880_p11;
wire   [5:0] tmp_13_fu_2880_p13;
wire   [5:0] tmp_13_fu_2880_p15;
wire  signed [5:0] tmp_13_fu_2880_p17;
wire  signed [5:0] tmp_13_fu_2880_p19;
wire  signed [5:0] tmp_13_fu_2880_p21;
wire  signed [5:0] tmp_13_fu_2880_p23;
wire  signed [5:0] tmp_13_fu_2880_p25;
wire  signed [5:0] tmp_13_fu_2880_p27;
wire  signed [5:0] tmp_13_fu_2880_p29;
wire  signed [5:0] tmp_13_fu_2880_p31;
wire   [5:0] tmp_14_fu_3015_p1;
wire   [5:0] tmp_14_fu_3015_p3;
wire   [5:0] tmp_14_fu_3015_p5;
wire   [5:0] tmp_14_fu_3015_p7;
wire   [5:0] tmp_14_fu_3015_p9;
wire   [5:0] tmp_14_fu_3015_p11;
wire   [5:0] tmp_14_fu_3015_p13;
wire   [5:0] tmp_14_fu_3015_p15;
wire  signed [5:0] tmp_14_fu_3015_p17;
wire  signed [5:0] tmp_14_fu_3015_p19;
wire  signed [5:0] tmp_14_fu_3015_p21;
wire  signed [5:0] tmp_14_fu_3015_p23;
wire  signed [5:0] tmp_14_fu_3015_p25;
wire  signed [5:0] tmp_14_fu_3015_p27;
wire  signed [5:0] tmp_14_fu_3015_p29;
wire  signed [5:0] tmp_14_fu_3015_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_342 = 64'd0;
#0 j_fu_346 = 7'd0;
#0 i_fu_350 = 4'd0;
#0 indvar_flatten_fu_354 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3279(.din0(d_weights1_0_q0),.din1(d_weights1_4_q0),.din2(d_weights1_8_q0),.din3(d_weights1_12_q0),.din4(d_weights1_16_q0),.din5(d_weights1_20_q0),.din6(d_weights1_24_q0),.din7(d_weights1_28_q0),.din8(d_weights1_32_q0),.din9(d_weights1_36_q0),.din10(d_weights1_40_q0),.din11(d_weights1_44_q0),.din12(d_weights1_48_q0),.din13(d_weights1_52_q0),.din14(d_weights1_56_q0),.din15(d_weights1_60_q0),.def(tmp_9_fu_2262_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_9_fu_2262_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3280(.din0(tmp_s_fu_2397_p2),.din1(tmp_s_fu_2397_p4),.din2(tmp_s_fu_2397_p6),.din3(tmp_s_fu_2397_p8),.din4(tmp_s_fu_2397_p10),.din5(tmp_s_fu_2397_p12),.din6(tmp_s_fu_2397_p14),.din7(tmp_s_fu_2397_p16),.din8(tmp_s_fu_2397_p18),.din9(tmp_s_fu_2397_p20),.din10(tmp_s_fu_2397_p22),.din11(tmp_s_fu_2397_p24),.din12(tmp_s_fu_2397_p26),.din13(tmp_s_fu_2397_p28),.din14(tmp_s_fu_2397_p30),.din15(tmp_s_fu_2397_p32),.def(tmp_s_fu_2397_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_s_fu_2397_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3281(.din0(d_weights1_1_q0),.din1(d_weights1_5_q0),.din2(d_weights1_9_q0),.din3(d_weights1_13_q0),.din4(d_weights1_17_q0),.din5(d_weights1_21_q0),.din6(d_weights1_25_q0),.din7(d_weights1_29_q0),.din8(d_weights1_33_q0),.din9(d_weights1_37_q0),.din10(d_weights1_41_q0),.din11(d_weights1_45_q0),.din12(d_weights1_49_q0),.din13(d_weights1_53_q0),.din14(d_weights1_57_q0),.din15(d_weights1_61_q0),.def(tmp_8_fu_2468_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_8_fu_2468_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3282(.din0(tmp_10_fu_2603_p2),.din1(tmp_10_fu_2603_p4),.din2(tmp_10_fu_2603_p6),.din3(tmp_10_fu_2603_p8),.din4(tmp_10_fu_2603_p10),.din5(tmp_10_fu_2603_p12),.din6(tmp_10_fu_2603_p14),.din7(tmp_10_fu_2603_p16),.din8(tmp_10_fu_2603_p18),.din9(tmp_10_fu_2603_p20),.din10(tmp_10_fu_2603_p22),.din11(tmp_10_fu_2603_p24),.din12(tmp_10_fu_2603_p26),.din13(tmp_10_fu_2603_p28),.din14(tmp_10_fu_2603_p30),.din15(tmp_10_fu_2603_p32),.def(tmp_10_fu_2603_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_10_fu_2603_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3283(.din0(d_weights1_2_q0),.din1(d_weights1_6_q0),.din2(d_weights1_10_q0),.din3(d_weights1_14_q0),.din4(d_weights1_18_q0),.din5(d_weights1_22_q0),.din6(d_weights1_26_q0),.din7(d_weights1_30_q0),.din8(d_weights1_34_q0),.din9(d_weights1_38_q0),.din10(d_weights1_42_q0),.din11(d_weights1_46_q0),.din12(d_weights1_50_q0),.din13(d_weights1_54_q0),.din14(d_weights1_58_q0),.din15(d_weights1_62_q0),.def(tmp_11_fu_2674_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_11_fu_2674_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3284(.din0(tmp_12_fu_2809_p2),.din1(tmp_12_fu_2809_p4),.din2(tmp_12_fu_2809_p6),.din3(tmp_12_fu_2809_p8),.din4(tmp_12_fu_2809_p10),.din5(tmp_12_fu_2809_p12),.din6(tmp_12_fu_2809_p14),.din7(tmp_12_fu_2809_p16),.din8(tmp_12_fu_2809_p18),.din9(tmp_12_fu_2809_p20),.din10(tmp_12_fu_2809_p22),.din11(tmp_12_fu_2809_p24),.din12(tmp_12_fu_2809_p26),.din13(tmp_12_fu_2809_p28),.din14(tmp_12_fu_2809_p30),.din15(tmp_12_fu_2809_p32),.def(tmp_12_fu_2809_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_12_fu_2809_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3285(.din0(d_weights1_3_q0),.din1(d_weights1_7_q0),.din2(d_weights1_11_q0),.din3(d_weights1_15_q0),.din4(d_weights1_19_q0),.din5(d_weights1_23_q0),.din6(d_weights1_27_q0),.din7(d_weights1_31_q0),.din8(d_weights1_35_q0),.din9(d_weights1_39_q0),.din10(d_weights1_43_q0),.din11(d_weights1_47_q0),.din12(d_weights1_51_q0),.din13(d_weights1_55_q0),.din14(d_weights1_59_q0),.din15(d_weights1_63_q0),.def(tmp_13_fu_2880_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_13_fu_2880_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3286(.din0(tmp_14_fu_3015_p2),.din1(tmp_14_fu_3015_p4),.din2(tmp_14_fu_3015_p6),.din3(tmp_14_fu_3015_p8),.din4(tmp_14_fu_3015_p10),.din5(tmp_14_fu_3015_p12),.din6(tmp_14_fu_3015_p14),.din7(tmp_14_fu_3015_p16),.din8(tmp_14_fu_3015_p18),.din9(tmp_14_fu_3015_p20),.din10(tmp_14_fu_3015_p22),.din11(tmp_14_fu_3015_p24),.din12(tmp_14_fu_3015_p26),.din13(tmp_14_fu_3015_p28),.din14(tmp_14_fu_3015_p30),.din15(tmp_14_fu_3015_p32),.def(tmp_14_fu_3015_p33),.sel(trunc_ln127_reg_3882),.dout(tmp_14_fu_3015_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_350 <= 4'd0;
    end else if (((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_350 <= select_ln126_reg_3237;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten_fu_354 <= 8'd0;
    end else if (((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_354 <= add_ln126_reg_3227;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_346 <= 7'd0;
    end else if (((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_346 <= add_ln127_fu_3086_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_2_fu_342 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_2_fu_342 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_reg_3227 <= add_ln126_fu_2084_p2;
        icmp_ln126_reg_3223 <= icmp_ln126_fu_2078_p2;
        select_ln121_reg_3232 <= select_ln121_fu_2104_p3;
        select_ln126_reg_3237 <= select_ln126_fu_2118_p3;
        trunc_ln127_reg_3882 <= trunc_ln127_fu_2258_p1;
        weights1_0_addr_reg_3562 <= zext_ln126_fu_2126_p1;
        weights1_10_addr_reg_3732 <= zext_ln126_fu_2126_p1;
        weights1_11_addr_reg_3812 <= zext_ln126_fu_2126_p1;
        weights1_12_addr_reg_3577 <= zext_ln126_fu_2126_p1;
        weights1_13_addr_reg_3657 <= zext_ln126_fu_2126_p1;
        weights1_14_addr_reg_3737 <= zext_ln126_fu_2126_p1;
        weights1_15_addr_reg_3817 <= zext_ln126_fu_2126_p1;
        weights1_16_addr_reg_3582 <= zext_ln126_fu_2126_p1;
        weights1_17_addr_reg_3662 <= zext_ln126_fu_2126_p1;
        weights1_18_addr_reg_3742 <= zext_ln126_fu_2126_p1;
        weights1_19_addr_reg_3822 <= zext_ln126_fu_2126_p1;
        weights1_1_addr_reg_3642 <= zext_ln126_fu_2126_p1;
        weights1_20_addr_reg_3587 <= zext_ln126_fu_2126_p1;
        weights1_21_addr_reg_3667 <= zext_ln126_fu_2126_p1;
        weights1_22_addr_reg_3747 <= zext_ln126_fu_2126_p1;
        weights1_23_addr_reg_3827 <= zext_ln126_fu_2126_p1;
        weights1_24_addr_reg_3592 <= zext_ln126_fu_2126_p1;
        weights1_25_addr_reg_3672 <= zext_ln126_fu_2126_p1;
        weights1_26_addr_reg_3752 <= zext_ln126_fu_2126_p1;
        weights1_27_addr_reg_3832 <= zext_ln126_fu_2126_p1;
        weights1_28_addr_reg_3597 <= zext_ln126_fu_2126_p1;
        weights1_29_addr_reg_3677 <= zext_ln126_fu_2126_p1;
        weights1_2_addr_reg_3722 <= zext_ln126_fu_2126_p1;
        weights1_30_addr_reg_3757 <= zext_ln126_fu_2126_p1;
        weights1_31_addr_reg_3837 <= zext_ln126_fu_2126_p1;
        weights1_32_addr_reg_3602 <= zext_ln126_fu_2126_p1;
        weights1_33_addr_reg_3682 <= zext_ln126_fu_2126_p1;
        weights1_34_addr_reg_3762 <= zext_ln126_fu_2126_p1;
        weights1_35_addr_reg_3842 <= zext_ln126_fu_2126_p1;
        weights1_36_addr_reg_3607 <= zext_ln126_fu_2126_p1;
        weights1_37_addr_reg_3687 <= zext_ln126_fu_2126_p1;
        weights1_38_addr_reg_3767 <= zext_ln126_fu_2126_p1;
        weights1_39_addr_reg_3847 <= zext_ln126_fu_2126_p1;
        weights1_3_addr_reg_3802 <= zext_ln126_fu_2126_p1;
        weights1_40_addr_reg_3612 <= zext_ln126_fu_2126_p1;
        weights1_41_addr_reg_3692 <= zext_ln126_fu_2126_p1;
        weights1_42_addr_reg_3772 <= zext_ln126_fu_2126_p1;
        weights1_43_addr_reg_3852 <= zext_ln126_fu_2126_p1;
        weights1_44_addr_reg_3617 <= zext_ln126_fu_2126_p1;
        weights1_45_addr_reg_3697 <= zext_ln126_fu_2126_p1;
        weights1_46_addr_reg_3777 <= zext_ln126_fu_2126_p1;
        weights1_47_addr_reg_3857 <= zext_ln126_fu_2126_p1;
        weights1_48_addr_reg_3622 <= zext_ln126_fu_2126_p1;
        weights1_49_addr_reg_3702 <= zext_ln126_fu_2126_p1;
        weights1_4_addr_reg_3567 <= zext_ln126_fu_2126_p1;
        weights1_50_addr_reg_3782 <= zext_ln126_fu_2126_p1;
        weights1_51_addr_reg_3862 <= zext_ln126_fu_2126_p1;
        weights1_52_addr_reg_3627 <= zext_ln126_fu_2126_p1;
        weights1_53_addr_reg_3707 <= zext_ln126_fu_2126_p1;
        weights1_54_addr_reg_3787 <= zext_ln126_fu_2126_p1;
        weights1_55_addr_reg_3867 <= zext_ln126_fu_2126_p1;
        weights1_56_addr_reg_3632 <= zext_ln126_fu_2126_p1;
        weights1_57_addr_reg_3712 <= zext_ln126_fu_2126_p1;
        weights1_58_addr_reg_3792 <= zext_ln126_fu_2126_p1;
        weights1_59_addr_reg_3872 <= zext_ln126_fu_2126_p1;
        weights1_5_addr_reg_3647 <= zext_ln126_fu_2126_p1;
        weights1_60_addr_reg_3637 <= zext_ln126_fu_2126_p1;
        weights1_61_addr_reg_3717 <= zext_ln126_fu_2126_p1;
        weights1_62_addr_reg_3797 <= zext_ln126_fu_2126_p1;
        weights1_63_addr_reg_3877 <= zext_ln126_fu_2126_p1;
        weights1_6_addr_reg_3727 <= zext_ln126_fu_2126_p1;
        weights1_7_addr_reg_3807 <= zext_ln126_fu_2126_p1;
        weights1_8_addr_reg_3572 <= zext_ln126_fu_2126_p1;
        weights1_9_addr_reg_3652 <= zext_ln126_fu_2126_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred1708_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd0));
        ap_predicate_pred1726_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd4));
        ap_predicate_pred1737_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd8));
        ap_predicate_pred1748_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd12));
        ap_predicate_pred1759_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd16));
        ap_predicate_pred1770_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd20));
        ap_predicate_pred1781_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd24));
        ap_predicate_pred1792_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd28));
        ap_predicate_pred1803_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd32));
        ap_predicate_pred1814_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd36));
        ap_predicate_pred1825_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd40));
        ap_predicate_pred1836_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd44));
        ap_predicate_pred1847_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd48));
        ap_predicate_pred1858_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd52));
        ap_predicate_pred1869_state18 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd56));
        ap_predicate_pred1907_state18 <= (~(trunc_ln127_reg_3882 == 6'd56) & ~(trunc_ln127_reg_3882 == 6'd52) & ~(trunc_ln127_reg_3882 == 6'd48) & ~(trunc_ln127_reg_3882 == 6'd44) & ~(trunc_ln127_reg_3882 == 6'd40) & ~(trunc_ln127_reg_3882 == 6'd36) & ~(trunc_ln127_reg_3882 == 6'd32) & ~(trunc_ln127_reg_3882 == 6'd28) & ~(trunc_ln127_reg_3882 == 6'd24) & ~(trunc_ln127_reg_3882 == 6'd20) & ~(trunc_ln127_reg_3882 == 6'd16) & ~(trunc_ln127_reg_3882 == 6'd12) & ~(trunc_ln127_reg_3882 == 6'd8) & ~(trunc_ln127_reg_3882 == 6'd4) & ~(trunc_ln127_reg_3882 == 6'd0) & (icmp_ln126_reg_3223 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1708_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd0));
        ap_predicate_pred1726_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd4));
        ap_predicate_pred1737_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd8));
        ap_predicate_pred1748_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd12));
        ap_predicate_pred1759_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd16));
        ap_predicate_pred1770_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd20));
        ap_predicate_pred1781_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd24));
        ap_predicate_pred1792_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd28));
        ap_predicate_pred1803_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd32));
        ap_predicate_pred1814_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd36));
        ap_predicate_pred1825_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd40));
        ap_predicate_pred1836_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd44));
        ap_predicate_pred1847_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd48));
        ap_predicate_pred1858_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd52));
        ap_predicate_pred1869_state19 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd56));
        ap_predicate_pred1907_state19 <= (~(trunc_ln127_reg_3882 == 6'd56) & ~(trunc_ln127_reg_3882 == 6'd52) & ~(trunc_ln127_reg_3882 == 6'd48) & ~(trunc_ln127_reg_3882 == 6'd44) & ~(trunc_ln127_reg_3882 == 6'd40) & ~(trunc_ln127_reg_3882 == 6'd36) & ~(trunc_ln127_reg_3882 == 6'd32) & ~(trunc_ln127_reg_3882 == 6'd28) & ~(trunc_ln127_reg_3882 == 6'd24) & ~(trunc_ln127_reg_3882 == 6'd20) & ~(trunc_ln127_reg_3882 == 6'd16) & ~(trunc_ln127_reg_3882 == 6'd12) & ~(trunc_ln127_reg_3882 == 6'd8) & ~(trunc_ln127_reg_3882 == 6'd4) & ~(trunc_ln127_reg_3882 == 6'd0) & (icmp_ln126_reg_3223 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1708_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd0));
        ap_predicate_pred1726_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd4));
        ap_predicate_pred1737_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd8));
        ap_predicate_pred1748_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd12));
        ap_predicate_pred1759_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd16));
        ap_predicate_pred1770_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd20));
        ap_predicate_pred1781_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd24));
        ap_predicate_pred1792_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd28));
        ap_predicate_pred1803_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd32));
        ap_predicate_pred1814_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd36));
        ap_predicate_pred1825_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd40));
        ap_predicate_pred1836_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd44));
        ap_predicate_pred1847_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd48));
        ap_predicate_pred1858_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd52));
        ap_predicate_pred1869_state20 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd56));
        ap_predicate_pred1907_state20 <= (~(trunc_ln127_reg_3882 == 6'd56) & ~(trunc_ln127_reg_3882 == 6'd52) & ~(trunc_ln127_reg_3882 == 6'd48) & ~(trunc_ln127_reg_3882 == 6'd44) & ~(trunc_ln127_reg_3882 == 6'd40) & ~(trunc_ln127_reg_3882 == 6'd36) & ~(trunc_ln127_reg_3882 == 6'd32) & ~(trunc_ln127_reg_3882 == 6'd28) & ~(trunc_ln127_reg_3882 == 6'd24) & ~(trunc_ln127_reg_3882 == 6'd20) & ~(trunc_ln127_reg_3882 == 6'd16) & ~(trunc_ln127_reg_3882 == 6'd12) & ~(trunc_ln127_reg_3882 == 6'd8) & ~(trunc_ln127_reg_3882 == 6'd4) & ~(trunc_ln127_reg_3882 == 6'd0) & (icmp_ln126_reg_3223 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1708_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd0));
        ap_predicate_pred1726_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd4));
        ap_predicate_pred1737_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd8));
        ap_predicate_pred1748_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd12));
        ap_predicate_pred1759_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd16));
        ap_predicate_pred1770_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd20));
        ap_predicate_pred1781_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd24));
        ap_predicate_pred1792_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd28));
        ap_predicate_pred1803_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd32));
        ap_predicate_pred1814_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd36));
        ap_predicate_pred1825_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd40));
        ap_predicate_pred1836_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd44));
        ap_predicate_pred1847_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd48));
        ap_predicate_pred1858_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd52));
        ap_predicate_pred1869_state21 <= ((icmp_ln126_reg_3223 == 1'd0) & (trunc_ln127_reg_3882 == 6'd56));
        ap_predicate_pred1907_state21 <= (~(trunc_ln127_reg_3882 == 6'd56) & ~(trunc_ln127_reg_3882 == 6'd52) & ~(trunc_ln127_reg_3882 == 6'd48) & ~(trunc_ln127_reg_3882 == 6'd44) & ~(trunc_ln127_reg_3882 == 6'd40) & ~(trunc_ln127_reg_3882 == 6'd36) & ~(trunc_ln127_reg_3882 == 6'd32) & ~(trunc_ln127_reg_3882 == 6'd28) & ~(trunc_ln127_reg_3882 == 6'd24) & ~(trunc_ln127_reg_3882 == 6'd20) & ~(trunc_ln127_reg_3882 == 6'd16) & ~(trunc_ln127_reg_3882 == 6'd12) & ~(trunc_ln127_reg_3882 == 6'd8) & ~(trunc_ln127_reg_3882 == 6'd4) & ~(trunc_ln127_reg_3882 == 6'd0) & (icmp_ln126_reg_3223 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul17_2_reg_3970 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul17_3_reg_3975 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul4_2_reg_3934 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul4_3_reg_3939 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        norm_5_reg_3980 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_2038 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_2043 <= grp_fu_4919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_2048 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub_1_reg_3944 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub_2_reg_3951 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub_3_reg_3958 <= grp_fu_4915_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_3909 <= tmp_10_fu_2603_p35;
        tmp_11_reg_3914 <= tmp_11_fu_2674_p35;
        tmp_12_reg_3919 <= tmp_12_fu_2809_p35;
        tmp_13_reg_3924 <= tmp_13_fu_2880_p35;
        tmp_14_reg_3929 <= tmp_14_fu_3015_p35;
        tmp_8_reg_3904 <= tmp_8_fu_2468_p35;
        tmp_9_reg_3894 <= tmp_9_fu_2262_p35;
        tmp_s_reg_3899 <= tmp_s_fu_2397_p35;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_3223 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_350;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_354;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_346;
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
    if ((((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_2029_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln126_reg_3223 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2029_opcode = 2'd0;
    end else begin
        grp_fu_2029_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_2029_p0 = norm_5_reg_3980;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2029_p0 = reg_2048;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_2029_p0 = norm_2_fu_342;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_2029_p0 = tmp_14_reg_3929;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_2029_p0 = tmp_12_reg_3919;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_2029_p0 = tmp_10_reg_3909;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2029_p0 = tmp_s_reg_3899;
    end else begin
        grp_fu_2029_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_2029_p1 = mul17_3_reg_3975;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_2029_p1 = mul17_2_reg_3970;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_2029_p1 = mul4_3_reg_3939;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_2029_p1 = mul4_2_reg_3934;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2029_p1 = reg_2043;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2029_p1 = reg_2038;
    end else begin
        grp_fu_2029_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_2033_p0 = sub_3_reg_3958;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_2033_p0 = sub_2_reg_3951;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_2033_p0 = sub_1_reg_3944;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_2033_p0 = reg_2048;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_2033_p0 = tmp_13_reg_3924;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2033_p0 = tmp_11_reg_3914;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2033_p0 = tmp_8_reg_3904;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2033_p0 = tmp_9_reg_3894;
        end else begin
            grp_fu_2033_p0 = 'bx;
        end
    end else begin
        grp_fu_2033_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_2033_p1 = sub_3_reg_3958;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_2033_p1 = sub_2_reg_3951;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_2033_p1 = sub_1_reg_3944;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_2033_p1 = reg_2048;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_2033_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2033_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln126_reg_3223 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_0_address0_local = weights1_0_addr_reg_3562;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_0_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_0_address0_local = 'bx;
        end
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1708_state18 == 1'b1))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_10_address0_local = weights1_10_addr_reg_3732;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_10_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_10_address0_local = 'bx;
        end
    end else begin
        weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_10_ce0_local = 1'b1;
    end else begin
        weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1737_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_11_address0_local = weights1_11_addr_reg_3812;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_11_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_11_address0_local = 'bx;
        end
    end else begin
        weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_11_ce0_local = 1'b1;
    end else begin
        weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1737_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_12_address0_local = weights1_12_addr_reg_3577;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_12_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_12_address0_local = 'bx;
        end
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1748_state18 == 1'b1))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_13_address0_local = weights1_13_addr_reg_3657;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_13_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_13_address0_local = 'bx;
        end
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1748_state19 == 1'b1))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_14_address0_local = weights1_14_addr_reg_3737;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_14_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_14_address0_local = 'bx;
        end
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1748_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_15_address0_local = weights1_15_addr_reg_3817;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_15_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_15_address0_local = 'bx;
        end
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1748_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_16_address0_local = weights1_16_addr_reg_3582;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_16_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_16_address0_local = 'bx;
        end
    end else begin
        weights1_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_16_ce0_local = 1'b1;
    end else begin
        weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1759_state18 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_17_address0_local = weights1_17_addr_reg_3662;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_17_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_17_address0_local = 'bx;
        end
    end else begin
        weights1_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_17_ce0_local = 1'b1;
    end else begin
        weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1759_state19 == 1'b1))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_18_address0_local = weights1_18_addr_reg_3742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_18_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_18_address0_local = 'bx;
        end
    end else begin
        weights1_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_18_ce0_local = 1'b1;
    end else begin
        weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1759_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_19_address0_local = weights1_19_addr_reg_3822;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_19_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_19_address0_local = 'bx;
        end
    end else begin
        weights1_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_19_ce0_local = 1'b1;
    end else begin
        weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1759_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_1_address0_local = weights1_1_addr_reg_3642;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_1_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_1_address0_local = 'bx;
        end
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1708_state19 == 1'b1))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_20_address0_local = weights1_20_addr_reg_3587;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_20_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_20_address0_local = 'bx;
        end
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1770_state18 == 1'b1))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_21_address0_local = weights1_21_addr_reg_3667;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_21_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_21_address0_local = 'bx;
        end
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1770_state19 == 1'b1))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_22_address0_local = weights1_22_addr_reg_3747;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_22_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_22_address0_local = 'bx;
        end
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1770_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_23_address0_local = weights1_23_addr_reg_3827;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_23_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_23_address0_local = 'bx;
        end
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1770_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_24_address0_local = weights1_24_addr_reg_3592;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_24_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_24_address0_local = 'bx;
        end
    end else begin
        weights1_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_24_ce0_local = 1'b1;
    end else begin
        weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1781_state18 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_25_address0_local = weights1_25_addr_reg_3672;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_25_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_25_address0_local = 'bx;
        end
    end else begin
        weights1_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_25_ce0_local = 1'b1;
    end else begin
        weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1781_state19 == 1'b1))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_26_address0_local = weights1_26_addr_reg_3752;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_26_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_26_address0_local = 'bx;
        end
    end else begin
        weights1_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_26_ce0_local = 1'b1;
    end else begin
        weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1781_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_27_address0_local = weights1_27_addr_reg_3832;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_27_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_27_address0_local = 'bx;
        end
    end else begin
        weights1_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_27_ce0_local = 1'b1;
    end else begin
        weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1781_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_28_address0_local = weights1_28_addr_reg_3597;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_28_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_28_address0_local = 'bx;
        end
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1792_state18 == 1'b1))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_29_address0_local = weights1_29_addr_reg_3677;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_29_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_29_address0_local = 'bx;
        end
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1792_state19 == 1'b1))) begin
        weights1_29_we0_local = 1'b1;
    end else begin
        weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_2_address0_local = weights1_2_addr_reg_3722;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_2_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_2_address0_local = 'bx;
        end
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1708_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_30_address0_local = weights1_30_addr_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_30_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_30_address0_local = 'bx;
        end
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1792_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_31_address0_local = weights1_31_addr_reg_3837;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_31_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_31_address0_local = 'bx;
        end
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1792_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_32_address0_local = weights1_32_addr_reg_3602;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_32_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_32_address0_local = 'bx;
        end
    end else begin
        weights1_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_32_ce0_local = 1'b1;
    end else begin
        weights1_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1803_state18 == 1'b1))) begin
        weights1_32_we0_local = 1'b1;
    end else begin
        weights1_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_33_address0_local = weights1_33_addr_reg_3682;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_33_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_33_address0_local = 'bx;
        end
    end else begin
        weights1_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_33_ce0_local = 1'b1;
    end else begin
        weights1_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1803_state19 == 1'b1))) begin
        weights1_33_we0_local = 1'b1;
    end else begin
        weights1_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_34_address0_local = weights1_34_addr_reg_3762;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_34_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_34_address0_local = 'bx;
        end
    end else begin
        weights1_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_34_ce0_local = 1'b1;
    end else begin
        weights1_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1803_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_34_we0_local = 1'b1;
    end else begin
        weights1_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_35_address0_local = weights1_35_addr_reg_3842;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_35_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_35_address0_local = 'bx;
        end
    end else begin
        weights1_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_35_ce0_local = 1'b1;
    end else begin
        weights1_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1803_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_35_we0_local = 1'b1;
    end else begin
        weights1_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_36_address0_local = weights1_36_addr_reg_3607;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_36_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_36_address0_local = 'bx;
        end
    end else begin
        weights1_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_36_ce0_local = 1'b1;
    end else begin
        weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1814_state18 == 1'b1))) begin
        weights1_36_we0_local = 1'b1;
    end else begin
        weights1_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_37_address0_local = weights1_37_addr_reg_3687;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_37_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_37_address0_local = 'bx;
        end
    end else begin
        weights1_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_37_ce0_local = 1'b1;
    end else begin
        weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1814_state19 == 1'b1))) begin
        weights1_37_we0_local = 1'b1;
    end else begin
        weights1_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_38_address0_local = weights1_38_addr_reg_3767;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_38_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_38_address0_local = 'bx;
        end
    end else begin
        weights1_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_38_ce0_local = 1'b1;
    end else begin
        weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1814_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_38_we0_local = 1'b1;
    end else begin
        weights1_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_39_address0_local = weights1_39_addr_reg_3847;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_39_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_39_address0_local = 'bx;
        end
    end else begin
        weights1_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_39_ce0_local = 1'b1;
    end else begin
        weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1814_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_39_we0_local = 1'b1;
    end else begin
        weights1_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_3_address0_local = weights1_3_addr_reg_3802;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_3_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_3_address0_local = 'bx;
        end
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1708_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_40_address0_local = weights1_40_addr_reg_3612;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_40_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_40_address0_local = 'bx;
        end
    end else begin
        weights1_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_40_ce0_local = 1'b1;
    end else begin
        weights1_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1825_state18 == 1'b1))) begin
        weights1_40_we0_local = 1'b1;
    end else begin
        weights1_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_41_address0_local = weights1_41_addr_reg_3692;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_41_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_41_address0_local = 'bx;
        end
    end else begin
        weights1_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_41_ce0_local = 1'b1;
    end else begin
        weights1_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1825_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_41_we0_local = 1'b1;
    end else begin
        weights1_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_42_address0_local = weights1_42_addr_reg_3772;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_42_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_42_address0_local = 'bx;
        end
    end else begin
        weights1_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_42_ce0_local = 1'b1;
    end else begin
        weights1_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1825_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_42_we0_local = 1'b1;
    end else begin
        weights1_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_43_address0_local = weights1_43_addr_reg_3852;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_43_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_43_address0_local = 'bx;
        end
    end else begin
        weights1_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_43_ce0_local = 1'b1;
    end else begin
        weights1_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1825_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_43_we0_local = 1'b1;
    end else begin
        weights1_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_44_address0_local = weights1_44_addr_reg_3617;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_44_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_44_address0_local = 'bx;
        end
    end else begin
        weights1_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_44_ce0_local = 1'b1;
    end else begin
        weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1836_state18 == 1'b1))) begin
        weights1_44_we0_local = 1'b1;
    end else begin
        weights1_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_45_address0_local = weights1_45_addr_reg_3697;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_45_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_45_address0_local = 'bx;
        end
    end else begin
        weights1_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_45_ce0_local = 1'b1;
    end else begin
        weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_45_we0_local = 1'b1;
    end else begin
        weights1_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_46_address0_local = weights1_46_addr_reg_3777;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_46_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_46_address0_local = 'bx;
        end
    end else begin
        weights1_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_46_ce0_local = 1'b1;
    end else begin
        weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_46_we0_local = 1'b1;
    end else begin
        weights1_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_47_address0_local = weights1_47_addr_reg_3857;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_47_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_47_address0_local = 'bx;
        end
    end else begin
        weights1_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_47_ce0_local = 1'b1;
    end else begin
        weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_47_we0_local = 1'b1;
    end else begin
        weights1_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_48_address0_local = weights1_48_addr_reg_3622;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_48_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_48_address0_local = 'bx;
        end
    end else begin
        weights1_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_48_ce0_local = 1'b1;
    end else begin
        weights1_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1847_state18 == 1'b1))) begin
        weights1_48_we0_local = 1'b1;
    end else begin
        weights1_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_49_address0_local = weights1_49_addr_reg_3702;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_49_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_49_address0_local = 'bx;
        end
    end else begin
        weights1_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_49_ce0_local = 1'b1;
    end else begin
        weights1_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1847_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_49_we0_local = 1'b1;
    end else begin
        weights1_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_4_address0_local = weights1_4_addr_reg_3567;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_4_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_4_address0_local = 'bx;
        end
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1726_state18 == 1'b1))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_50_address0_local = weights1_50_addr_reg_3782;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_50_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_50_address0_local = 'bx;
        end
    end else begin
        weights1_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_50_ce0_local = 1'b1;
    end else begin
        weights1_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1847_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_50_we0_local = 1'b1;
    end else begin
        weights1_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_51_address0_local = weights1_51_addr_reg_3862;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_51_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_51_address0_local = 'bx;
        end
    end else begin
        weights1_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_51_ce0_local = 1'b1;
    end else begin
        weights1_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1847_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_51_we0_local = 1'b1;
    end else begin
        weights1_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_52_address0_local = weights1_52_addr_reg_3627;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_52_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_52_address0_local = 'bx;
        end
    end else begin
        weights1_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_52_ce0_local = 1'b1;
    end else begin
        weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1858_state18 == 1'b1))) begin
        weights1_52_we0_local = 1'b1;
    end else begin
        weights1_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_53_address0_local = weights1_53_addr_reg_3707;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_53_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_53_address0_local = 'bx;
        end
    end else begin
        weights1_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_53_ce0_local = 1'b1;
    end else begin
        weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1858_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_53_we0_local = 1'b1;
    end else begin
        weights1_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_54_address0_local = weights1_54_addr_reg_3787;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_54_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_54_address0_local = 'bx;
        end
    end else begin
        weights1_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_54_ce0_local = 1'b1;
    end else begin
        weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1858_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_54_we0_local = 1'b1;
    end else begin
        weights1_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_55_address0_local = weights1_55_addr_reg_3867;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_55_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_55_address0_local = 'bx;
        end
    end else begin
        weights1_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_55_ce0_local = 1'b1;
    end else begin
        weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1858_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_55_we0_local = 1'b1;
    end else begin
        weights1_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_56_address0_local = weights1_56_addr_reg_3632;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_56_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_56_address0_local = 'bx;
        end
    end else begin
        weights1_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_56_ce0_local = 1'b1;
    end else begin
        weights1_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1869_state18 == 1'b1))) begin
        weights1_56_we0_local = 1'b1;
    end else begin
        weights1_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_57_address0_local = weights1_57_addr_reg_3712;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_57_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_57_address0_local = 'bx;
        end
    end else begin
        weights1_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_57_ce0_local = 1'b1;
    end else begin
        weights1_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1869_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_57_we0_local = 1'b1;
    end else begin
        weights1_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_58_address0_local = weights1_58_addr_reg_3792;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_58_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_58_address0_local = 'bx;
        end
    end else begin
        weights1_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_58_ce0_local = 1'b1;
    end else begin
        weights1_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1869_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_58_we0_local = 1'b1;
    end else begin
        weights1_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_59_address0_local = weights1_59_addr_reg_3872;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_59_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_59_address0_local = 'bx;
        end
    end else begin
        weights1_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_59_ce0_local = 1'b1;
    end else begin
        weights1_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1869_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_59_we0_local = 1'b1;
    end else begin
        weights1_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_5_address0_local = weights1_5_addr_reg_3647;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_5_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_5_address0_local = 'bx;
        end
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1726_state19 == 1'b1))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_60_address0_local = weights1_60_addr_reg_3637;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_60_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_60_address0_local = 'bx;
        end
    end else begin
        weights1_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_60_ce0_local = 1'b1;
    end else begin
        weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1907_state18 == 1'b1))) begin
        weights1_60_we0_local = 1'b1;
    end else begin
        weights1_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_61_address0_local = weights1_61_addr_reg_3717;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_61_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_61_address0_local = 'bx;
        end
    end else begin
        weights1_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_61_ce0_local = 1'b1;
    end else begin
        weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1907_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_61_we0_local = 1'b1;
    end else begin
        weights1_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_62_address0_local = weights1_62_addr_reg_3797;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_62_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_62_address0_local = 'bx;
        end
    end else begin
        weights1_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_62_ce0_local = 1'b1;
    end else begin
        weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1907_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_62_we0_local = 1'b1;
    end else begin
        weights1_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_63_address0_local = weights1_63_addr_reg_3877;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_63_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_63_address0_local = 'bx;
        end
    end else begin
        weights1_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_63_ce0_local = 1'b1;
    end else begin
        weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1907_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_63_we0_local = 1'b1;
    end else begin
        weights1_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_6_address0_local = weights1_6_addr_reg_3727;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_6_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_6_address0_local = 'bx;
        end
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1726_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_7_address0_local = weights1_7_addr_reg_3807;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_7_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_7_address0_local = 'bx;
        end
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1726_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_8_address0_local = weights1_8_addr_reg_3572;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_8_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_8_address0_local = 'bx;
        end
    end else begin
        weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_8_ce0_local = 1'b1;
    end else begin
        weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1737_state18 == 1'b1))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_9_address0_local = weights1_9_addr_reg_3652;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_9_address0_local = zext_ln126_fu_2126_p1;
        end else begin
            weights1_9_address0_local = 'bx;
        end
    end else begin
        weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_9_ce0_local = 1'b1;
    end else begin
        weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1737_state19 == 1'b1))) begin
        weights1_9_we0_local = 1'b1;
    end else begin
        weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln126_1_fu_2112_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_2084_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln127_fu_3086_p2 = (select_ln121_reg_3232 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_64_fu_3104_p1 = reg_2048;
assign bitcast_ln128_65_fu_3124_p1 = sub_1_reg_3944;
assign bitcast_ln128_66_fu_3143_p1 = sub_2_reg_3951;
assign bitcast_ln128_67_fu_3162_p1 = sub_3_reg_3958;
assign d_weights1_0_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_32_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_32_ce0 = d_weights1_32_ce0_local;
assign d_weights1_33_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_33_ce0 = d_weights1_33_ce0_local;
assign d_weights1_34_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_34_ce0 = d_weights1_34_ce0_local;
assign d_weights1_35_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_35_ce0 = d_weights1_35_ce0_local;
assign d_weights1_36_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_36_ce0 = d_weights1_36_ce0_local;
assign d_weights1_37_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_37_ce0 = d_weights1_37_ce0_local;
assign d_weights1_38_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_38_ce0 = d_weights1_38_ce0_local;
assign d_weights1_39_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_39_ce0 = d_weights1_39_ce0_local;
assign d_weights1_3_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_40_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_40_ce0 = d_weights1_40_ce0_local;
assign d_weights1_41_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_41_ce0 = d_weights1_41_ce0_local;
assign d_weights1_42_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_42_ce0 = d_weights1_42_ce0_local;
assign d_weights1_43_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_43_ce0 = d_weights1_43_ce0_local;
assign d_weights1_44_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_44_ce0 = d_weights1_44_ce0_local;
assign d_weights1_45_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_45_ce0 = d_weights1_45_ce0_local;
assign d_weights1_46_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_46_ce0 = d_weights1_46_ce0_local;
assign d_weights1_47_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_47_ce0 = d_weights1_47_ce0_local;
assign d_weights1_48_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_48_ce0 = d_weights1_48_ce0_local;
assign d_weights1_49_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_49_ce0 = d_weights1_49_ce0_local;
assign d_weights1_4_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_50_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_50_ce0 = d_weights1_50_ce0_local;
assign d_weights1_51_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_51_ce0 = d_weights1_51_ce0_local;
assign d_weights1_52_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_52_ce0 = d_weights1_52_ce0_local;
assign d_weights1_53_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_53_ce0 = d_weights1_53_ce0_local;
assign d_weights1_54_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_54_ce0 = d_weights1_54_ce0_local;
assign d_weights1_55_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_55_ce0 = d_weights1_55_ce0_local;
assign d_weights1_56_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_56_ce0 = d_weights1_56_ce0_local;
assign d_weights1_57_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_57_ce0 = d_weights1_57_ce0_local;
assign d_weights1_58_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_58_ce0 = d_weights1_58_ce0_local;
assign d_weights1_59_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_59_ce0 = d_weights1_59_ce0_local;
assign d_weights1_5_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_60_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_60_ce0 = d_weights1_60_ce0_local;
assign d_weights1_61_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_61_ce0 = d_weights1_61_ce0_local;
assign d_weights1_62_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_62_ce0 = d_weights1_62_ce0_local;
assign d_weights1_63_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_63_ce0 = d_weights1_63_ce0_local;
assign d_weights1_6_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln126_fu_2126_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_4915_p_ce = 1'b1;
assign grp_fu_4915_p_din0 = grp_fu_2029_p0;
assign grp_fu_4915_p_din1 = grp_fu_2029_p1;
assign grp_fu_4915_p_opcode = grp_fu_2029_opcode;
assign grp_fu_4919_p_ce = 1'b1;
assign grp_fu_4919_p_din0 = grp_fu_2033_p0;
assign grp_fu_4919_p_din1 = grp_fu_2033_p1;
assign icmp_ln126_fu_2078_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd208) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_342;
assign select_ln121_fu_2104_p3 = ((tmp_fu_2096_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln126_fu_2118_p3 = ((tmp_fu_2096_p3[0:0] == 1'b1) ? add_ln126_1_fu_2112_p2 : ap_sig_allocacmp_i_load);
assign tmp_10_fu_2603_p10 = weights1_17_q0;
assign tmp_10_fu_2603_p12 = weights1_21_q0;
assign tmp_10_fu_2603_p14 = weights1_25_q0;
assign tmp_10_fu_2603_p16 = weights1_29_q0;
assign tmp_10_fu_2603_p18 = weights1_33_q0;
assign tmp_10_fu_2603_p2 = weights1_1_q0;
assign tmp_10_fu_2603_p20 = weights1_37_q0;
assign tmp_10_fu_2603_p22 = weights1_41_q0;
assign tmp_10_fu_2603_p24 = weights1_45_q0;
assign tmp_10_fu_2603_p26 = weights1_49_q0;
assign tmp_10_fu_2603_p28 = weights1_53_q0;
assign tmp_10_fu_2603_p30 = weights1_57_q0;
assign tmp_10_fu_2603_p32 = weights1_61_q0;
assign tmp_10_fu_2603_p33 = 'bx;
assign tmp_10_fu_2603_p4 = weights1_5_q0;
assign tmp_10_fu_2603_p6 = weights1_9_q0;
assign tmp_10_fu_2603_p8 = weights1_13_q0;
assign tmp_11_fu_2674_p33 = 'bx;
assign tmp_12_fu_2809_p10 = weights1_18_q0;
assign tmp_12_fu_2809_p12 = weights1_22_q0;
assign tmp_12_fu_2809_p14 = weights1_26_q0;
assign tmp_12_fu_2809_p16 = weights1_30_q0;
assign tmp_12_fu_2809_p18 = weights1_34_q0;
assign tmp_12_fu_2809_p2 = weights1_2_q0;
assign tmp_12_fu_2809_p20 = weights1_38_q0;
assign tmp_12_fu_2809_p22 = weights1_42_q0;
assign tmp_12_fu_2809_p24 = weights1_46_q0;
assign tmp_12_fu_2809_p26 = weights1_50_q0;
assign tmp_12_fu_2809_p28 = weights1_54_q0;
assign tmp_12_fu_2809_p30 = weights1_58_q0;
assign tmp_12_fu_2809_p32 = weights1_62_q0;
assign tmp_12_fu_2809_p33 = 'bx;
assign tmp_12_fu_2809_p4 = weights1_6_q0;
assign tmp_12_fu_2809_p6 = weights1_10_q0;
assign tmp_12_fu_2809_p8 = weights1_14_q0;
assign tmp_13_fu_2880_p33 = 'bx;
assign tmp_14_fu_3015_p10 = weights1_19_q0;
assign tmp_14_fu_3015_p12 = weights1_23_q0;
assign tmp_14_fu_3015_p14 = weights1_27_q0;
assign tmp_14_fu_3015_p16 = weights1_31_q0;
assign tmp_14_fu_3015_p18 = weights1_35_q0;
assign tmp_14_fu_3015_p2 = weights1_3_q0;
assign tmp_14_fu_3015_p20 = weights1_39_q0;
assign tmp_14_fu_3015_p22 = weights1_43_q0;
assign tmp_14_fu_3015_p24 = weights1_47_q0;
assign tmp_14_fu_3015_p26 = weights1_51_q0;
assign tmp_14_fu_3015_p28 = weights1_55_q0;
assign tmp_14_fu_3015_p30 = weights1_59_q0;
assign tmp_14_fu_3015_p32 = weights1_63_q0;
assign tmp_14_fu_3015_p33 = 'bx;
assign tmp_14_fu_3015_p4 = weights1_7_q0;
assign tmp_14_fu_3015_p6 = weights1_11_q0;
assign tmp_14_fu_3015_p8 = weights1_15_q0;
assign tmp_8_fu_2468_p33 = 'bx;
assign tmp_9_fu_2262_p33 = 'bx;
assign tmp_fu_2096_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_2397_p10 = weights1_16_q0;
assign tmp_s_fu_2397_p12 = weights1_20_q0;
assign tmp_s_fu_2397_p14 = weights1_24_q0;
assign tmp_s_fu_2397_p16 = weights1_28_q0;
assign tmp_s_fu_2397_p18 = weights1_32_q0;
assign tmp_s_fu_2397_p2 = weights1_0_q0;
assign tmp_s_fu_2397_p20 = weights1_36_q0;
assign tmp_s_fu_2397_p22 = weights1_40_q0;
assign tmp_s_fu_2397_p24 = weights1_44_q0;
assign tmp_s_fu_2397_p26 = weights1_48_q0;
assign tmp_s_fu_2397_p28 = weights1_52_q0;
assign tmp_s_fu_2397_p30 = weights1_56_q0;
assign tmp_s_fu_2397_p32 = weights1_60_q0;
assign tmp_s_fu_2397_p33 = 'bx;
assign tmp_s_fu_2397_p4 = weights1_4_q0;
assign tmp_s_fu_2397_p6 = weights1_8_q0;
assign tmp_s_fu_2397_p8 = weights1_12_q0;
assign trunc_ln127_fu_2258_p1 = select_ln121_fu_2104_p3[5:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_32_address0 = weights1_32_address0_local;
assign weights1_32_ce0 = weights1_32_ce0_local;
assign weights1_32_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_32_we0 = weights1_32_we0_local;
assign weights1_33_address0 = weights1_33_address0_local;
assign weights1_33_ce0 = weights1_33_ce0_local;
assign weights1_33_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_33_we0 = weights1_33_we0_local;
assign weights1_34_address0 = weights1_34_address0_local;
assign weights1_34_ce0 = weights1_34_ce0_local;
assign weights1_34_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_34_we0 = weights1_34_we0_local;
assign weights1_35_address0 = weights1_35_address0_local;
assign weights1_35_ce0 = weights1_35_ce0_local;
assign weights1_35_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_35_we0 = weights1_35_we0_local;
assign weights1_36_address0 = weights1_36_address0_local;
assign weights1_36_ce0 = weights1_36_ce0_local;
assign weights1_36_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_36_we0 = weights1_36_we0_local;
assign weights1_37_address0 = weights1_37_address0_local;
assign weights1_37_ce0 = weights1_37_ce0_local;
assign weights1_37_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_37_we0 = weights1_37_we0_local;
assign weights1_38_address0 = weights1_38_address0_local;
assign weights1_38_ce0 = weights1_38_ce0_local;
assign weights1_38_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_38_we0 = weights1_38_we0_local;
assign weights1_39_address0 = weights1_39_address0_local;
assign weights1_39_ce0 = weights1_39_ce0_local;
assign weights1_39_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_39_we0 = weights1_39_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_40_address0 = weights1_40_address0_local;
assign weights1_40_ce0 = weights1_40_ce0_local;
assign weights1_40_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_40_we0 = weights1_40_we0_local;
assign weights1_41_address0 = weights1_41_address0_local;
assign weights1_41_ce0 = weights1_41_ce0_local;
assign weights1_41_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_41_we0 = weights1_41_we0_local;
assign weights1_42_address0 = weights1_42_address0_local;
assign weights1_42_ce0 = weights1_42_ce0_local;
assign weights1_42_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_42_we0 = weights1_42_we0_local;
assign weights1_43_address0 = weights1_43_address0_local;
assign weights1_43_ce0 = weights1_43_ce0_local;
assign weights1_43_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_43_we0 = weights1_43_we0_local;
assign weights1_44_address0 = weights1_44_address0_local;
assign weights1_44_ce0 = weights1_44_ce0_local;
assign weights1_44_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_44_we0 = weights1_44_we0_local;
assign weights1_45_address0 = weights1_45_address0_local;
assign weights1_45_ce0 = weights1_45_ce0_local;
assign weights1_45_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_45_we0 = weights1_45_we0_local;
assign weights1_46_address0 = weights1_46_address0_local;
assign weights1_46_ce0 = weights1_46_ce0_local;
assign weights1_46_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_46_we0 = weights1_46_we0_local;
assign weights1_47_address0 = weights1_47_address0_local;
assign weights1_47_ce0 = weights1_47_ce0_local;
assign weights1_47_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_47_we0 = weights1_47_we0_local;
assign weights1_48_address0 = weights1_48_address0_local;
assign weights1_48_ce0 = weights1_48_ce0_local;
assign weights1_48_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_48_we0 = weights1_48_we0_local;
assign weights1_49_address0 = weights1_49_address0_local;
assign weights1_49_ce0 = weights1_49_ce0_local;
assign weights1_49_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_49_we0 = weights1_49_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_50_address0 = weights1_50_address0_local;
assign weights1_50_ce0 = weights1_50_ce0_local;
assign weights1_50_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_50_we0 = weights1_50_we0_local;
assign weights1_51_address0 = weights1_51_address0_local;
assign weights1_51_ce0 = weights1_51_ce0_local;
assign weights1_51_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_51_we0 = weights1_51_we0_local;
assign weights1_52_address0 = weights1_52_address0_local;
assign weights1_52_ce0 = weights1_52_ce0_local;
assign weights1_52_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_52_we0 = weights1_52_we0_local;
assign weights1_53_address0 = weights1_53_address0_local;
assign weights1_53_ce0 = weights1_53_ce0_local;
assign weights1_53_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_53_we0 = weights1_53_we0_local;
assign weights1_54_address0 = weights1_54_address0_local;
assign weights1_54_ce0 = weights1_54_ce0_local;
assign weights1_54_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_54_we0 = weights1_54_we0_local;
assign weights1_55_address0 = weights1_55_address0_local;
assign weights1_55_ce0 = weights1_55_ce0_local;
assign weights1_55_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_55_we0 = weights1_55_we0_local;
assign weights1_56_address0 = weights1_56_address0_local;
assign weights1_56_ce0 = weights1_56_ce0_local;
assign weights1_56_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_56_we0 = weights1_56_we0_local;
assign weights1_57_address0 = weights1_57_address0_local;
assign weights1_57_ce0 = weights1_57_ce0_local;
assign weights1_57_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_57_we0 = weights1_57_we0_local;
assign weights1_58_address0 = weights1_58_address0_local;
assign weights1_58_ce0 = weights1_58_ce0_local;
assign weights1_58_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_58_we0 = weights1_58_we0_local;
assign weights1_59_address0 = weights1_59_address0_local;
assign weights1_59_ce0 = weights1_59_ce0_local;
assign weights1_59_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_59_we0 = weights1_59_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_60_address0 = weights1_60_address0_local;
assign weights1_60_ce0 = weights1_60_ce0_local;
assign weights1_60_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_60_we0 = weights1_60_we0_local;
assign weights1_61_address0 = weights1_61_address0_local;
assign weights1_61_ce0 = weights1_61_ce0_local;
assign weights1_61_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_61_we0 = weights1_61_we0_local;
assign weights1_62_address0 = weights1_62_address0_local;
assign weights1_62_ce0 = weights1_62_ce0_local;
assign weights1_62_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_62_we0 = weights1_62_we0_local;
assign weights1_63_address0 = weights1_63_address0_local;
assign weights1_63_ce0 = weights1_63_ce0_local;
assign weights1_63_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_63_we0 = weights1_63_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_66_fu_3143_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_67_fu_3162_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_64_fu_3104_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_65_fu_3124_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln126_fu_2126_p1 = select_ln126_fu_2118_p3;
endmodule 
