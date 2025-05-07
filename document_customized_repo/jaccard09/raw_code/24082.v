module backprop_update_weights_32_33_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_0_i,biases1_0_o,biases1_0_o_ap_vld,biases1_1_i,biases1_1_o,biases1_1_o_ap_vld,biases1_63_i,biases1_63_o,biases1_63_o_ap_vld,biases1_62_i,biases1_62_o,biases1_62_o_ap_vld,biases1_61_i,biases1_61_o,biases1_61_o_ap_vld,biases1_60_i,biases1_60_o,biases1_60_o_ap_vld,biases1_59_i,biases1_59_o,biases1_59_o_ap_vld,biases1_58_i,biases1_58_o,biases1_58_o_ap_vld,biases1_57_i,biases1_57_o,biases1_57_o_ap_vld,biases1_56_i,biases1_56_o,biases1_56_o_ap_vld,biases1_55_i,biases1_55_o,biases1_55_o_ap_vld,biases1_54_i,biases1_54_o,biases1_54_o_ap_vld,biases1_53_i,biases1_53_o,biases1_53_o_ap_vld,biases1_52_i,biases1_52_o,biases1_52_o_ap_vld,biases1_51_i,biases1_51_o,biases1_51_o_ap_vld,biases1_50_i,biases1_50_o,biases1_50_o_ap_vld,biases1_49_i,biases1_49_o,biases1_49_o_ap_vld,biases1_48_i,biases1_48_o,biases1_48_o_ap_vld,biases1_47_i,biases1_47_o,biases1_47_o_ap_vld,biases1_46_i,biases1_46_o,biases1_46_o_ap_vld,biases1_45_i,biases1_45_o,biases1_45_o_ap_vld,biases1_44_i,biases1_44_o,biases1_44_o_ap_vld,biases1_43_i,biases1_43_o,biases1_43_o_ap_vld,biases1_42_i,biases1_42_o,biases1_42_o_ap_vld,biases1_41_i,biases1_41_o,biases1_41_o_ap_vld,biases1_40_i,biases1_40_o,biases1_40_o_ap_vld,biases1_39_i,biases1_39_o,biases1_39_o_ap_vld,biases1_38_i,biases1_38_o,biases1_38_o_ap_vld,biases1_37_i,biases1_37_o,biases1_37_o_ap_vld,biases1_36_i,biases1_36_o,biases1_36_o_ap_vld,biases1_35_i,biases1_35_o,biases1_35_o_ap_vld,biases1_34_i,biases1_34_o,biases1_34_o_ap_vld,biases1_33_i,biases1_33_o,biases1_33_o_ap_vld,biases1_32_i,biases1_32_o,biases1_32_o_ap_vld,biases1_31_i,biases1_31_o,biases1_31_o_ap_vld,biases1_30_i,biases1_30_o,biases1_30_o_ap_vld,biases1_29_i,biases1_29_o,biases1_29_o_ap_vld,biases1_28_i,biases1_28_o,biases1_28_o_ap_vld,biases1_27_i,biases1_27_o,biases1_27_o_ap_vld,biases1_26_i,biases1_26_o,biases1_26_o_ap_vld,biases1_25_i,biases1_25_o,biases1_25_o_ap_vld,biases1_24_i,biases1_24_o,biases1_24_o_ap_vld,biases1_23_i,biases1_23_o,biases1_23_o_ap_vld,biases1_22_i,biases1_22_o,biases1_22_o_ap_vld,biases1_21_i,biases1_21_o,biases1_21_o_ap_vld,biases1_20_i,biases1_20_o,biases1_20_o_ap_vld,biases1_19_i,biases1_19_o,biases1_19_o_ap_vld,biases1_18_i,biases1_18_o,biases1_18_o_ap_vld,biases1_17_i,biases1_17_o,biases1_17_o_ap_vld,biases1_16_i,biases1_16_o,biases1_16_o_ap_vld,biases1_15_i,biases1_15_o,biases1_15_o_ap_vld,biases1_14_i,biases1_14_o,biases1_14_o_ap_vld,biases1_13_i,biases1_13_o,biases1_13_o_ap_vld,biases1_12_i,biases1_12_o,biases1_12_o_ap_vld,biases1_11_i,biases1_11_o,biases1_11_o_ap_vld,biases1_10_i,biases1_10_o,biases1_10_o_ap_vld,biases1_9_i,biases1_9_o,biases1_9_o_ap_vld,biases1_8_i,biases1_8_o,biases1_8_o_ap_vld,biases1_7_i,biases1_7_o,biases1_7_o_ap_vld,biases1_6_i,biases1_6_o,biases1_6_o_ap_vld,biases1_5_i,biases1_5_o,biases1_5_o_ap_vld,biases1_4_i,biases1_4_o,biases1_4_o_ap_vld,biases1_3_i,biases1_3_o,biases1_3_o_ap_vld,biases1_2_i,biases1_2_o,biases1_2_o_ap_vld,d_biases1_0_val,d_biases1_2_val,d_biases1_4_val,d_biases1_6_val,d_biases1_8_val,d_biases1_10_val,d_biases1_12_val,d_biases1_14_val,d_biases1_16_val,d_biases1_18_val,d_biases1_20_val,d_biases1_22_val,d_biases1_24_val,d_biases1_26_val,d_biases1_28_val,d_biases1_30_val,d_biases1_32_val,d_biases1_34_val,d_biases1_36_val,d_biases1_38_val,d_biases1_40_val,d_biases1_42_val,d_biases1_44_val,d_biases1_46_val,d_biases1_48_val,d_biases1_50_val,d_biases1_52_val,d_biases1_54_val,d_biases1_56_val,d_biases1_58_val,d_biases1_60_val,d_biases1_62_val,d_biases1_1_val,d_biases1_3_val,d_biases1_5_val,d_biases1_7_val,d_biases1_9_val,d_biases1_11_val,d_biases1_13_val,d_biases1_15_val,d_biases1_17_val,d_biases1_19_val,d_biases1_21_val,d_biases1_23_val,d_biases1_25_val,d_biases1_27_val,d_biases1_29_val,d_biases1_31_val,d_biases1_33_val,d_biases1_35_val,d_biases1_37_val,d_biases1_39_val,d_biases1_41_val,d_biases1_43_val,d_biases1_45_val,d_biases1_47_val,d_biases1_49_val,d_biases1_51_val,d_biases1_53_val,d_biases1_55_val,d_biases1_57_val,d_biases1_59_val,d_biases1_61_val,d_biases1_63_val,bias_norm_out,bias_norm_out_ap_vld,grp_fu_4923_p_din0,grp_fu_4923_p_din1,grp_fu_4923_p_opcode,grp_fu_4923_p_dout0,grp_fu_4923_p_ce,grp_fu_4927_p_din0,grp_fu_4927_p_din1,grp_fu_4927_p_dout0,grp_fu_4927_p_ce); 
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
input  [63:0] biases1_0_i;
output  [63:0] biases1_0_o;
output   biases1_0_o_ap_vld;
input  [63:0] biases1_1_i;
output  [63:0] biases1_1_o;
output   biases1_1_o_ap_vld;
input  [63:0] biases1_63_i;
output  [63:0] biases1_63_o;
output   biases1_63_o_ap_vld;
input  [63:0] biases1_62_i;
output  [63:0] biases1_62_o;
output   biases1_62_o_ap_vld;
input  [63:0] biases1_61_i;
output  [63:0] biases1_61_o;
output   biases1_61_o_ap_vld;
input  [63:0] biases1_60_i;
output  [63:0] biases1_60_o;
output   biases1_60_o_ap_vld;
input  [63:0] biases1_59_i;
output  [63:0] biases1_59_o;
output   biases1_59_o_ap_vld;
input  [63:0] biases1_58_i;
output  [63:0] biases1_58_o;
output   biases1_58_o_ap_vld;
input  [63:0] biases1_57_i;
output  [63:0] biases1_57_o;
output   biases1_57_o_ap_vld;
input  [63:0] biases1_56_i;
output  [63:0] biases1_56_o;
output   biases1_56_o_ap_vld;
input  [63:0] biases1_55_i;
output  [63:0] biases1_55_o;
output   biases1_55_o_ap_vld;
input  [63:0] biases1_54_i;
output  [63:0] biases1_54_o;
output   biases1_54_o_ap_vld;
input  [63:0] biases1_53_i;
output  [63:0] biases1_53_o;
output   biases1_53_o_ap_vld;
input  [63:0] biases1_52_i;
output  [63:0] biases1_52_o;
output   biases1_52_o_ap_vld;
input  [63:0] biases1_51_i;
output  [63:0] biases1_51_o;
output   biases1_51_o_ap_vld;
input  [63:0] biases1_50_i;
output  [63:0] biases1_50_o;
output   biases1_50_o_ap_vld;
input  [63:0] biases1_49_i;
output  [63:0] biases1_49_o;
output   biases1_49_o_ap_vld;
input  [63:0] biases1_48_i;
output  [63:0] biases1_48_o;
output   biases1_48_o_ap_vld;
input  [63:0] biases1_47_i;
output  [63:0] biases1_47_o;
output   biases1_47_o_ap_vld;
input  [63:0] biases1_46_i;
output  [63:0] biases1_46_o;
output   biases1_46_o_ap_vld;
input  [63:0] biases1_45_i;
output  [63:0] biases1_45_o;
output   biases1_45_o_ap_vld;
input  [63:0] biases1_44_i;
output  [63:0] biases1_44_o;
output   biases1_44_o_ap_vld;
input  [63:0] biases1_43_i;
output  [63:0] biases1_43_o;
output   biases1_43_o_ap_vld;
input  [63:0] biases1_42_i;
output  [63:0] biases1_42_o;
output   biases1_42_o_ap_vld;
input  [63:0] biases1_41_i;
output  [63:0] biases1_41_o;
output   biases1_41_o_ap_vld;
input  [63:0] biases1_40_i;
output  [63:0] biases1_40_o;
output   biases1_40_o_ap_vld;
input  [63:0] biases1_39_i;
output  [63:0] biases1_39_o;
output   biases1_39_o_ap_vld;
input  [63:0] biases1_38_i;
output  [63:0] biases1_38_o;
output   biases1_38_o_ap_vld;
input  [63:0] biases1_37_i;
output  [63:0] biases1_37_o;
output   biases1_37_o_ap_vld;
input  [63:0] biases1_36_i;
output  [63:0] biases1_36_o;
output   biases1_36_o_ap_vld;
input  [63:0] biases1_35_i;
output  [63:0] biases1_35_o;
output   biases1_35_o_ap_vld;
input  [63:0] biases1_34_i;
output  [63:0] biases1_34_o;
output   biases1_34_o_ap_vld;
input  [63:0] biases1_33_i;
output  [63:0] biases1_33_o;
output   biases1_33_o_ap_vld;
input  [63:0] biases1_32_i;
output  [63:0] biases1_32_o;
output   biases1_32_o_ap_vld;
input  [63:0] biases1_31_i;
output  [63:0] biases1_31_o;
output   biases1_31_o_ap_vld;
input  [63:0] biases1_30_i;
output  [63:0] biases1_30_o;
output   biases1_30_o_ap_vld;
input  [63:0] biases1_29_i;
output  [63:0] biases1_29_o;
output   biases1_29_o_ap_vld;
input  [63:0] biases1_28_i;
output  [63:0] biases1_28_o;
output   biases1_28_o_ap_vld;
input  [63:0] biases1_27_i;
output  [63:0] biases1_27_o;
output   biases1_27_o_ap_vld;
input  [63:0] biases1_26_i;
output  [63:0] biases1_26_o;
output   biases1_26_o_ap_vld;
input  [63:0] biases1_25_i;
output  [63:0] biases1_25_o;
output   biases1_25_o_ap_vld;
input  [63:0] biases1_24_i;
output  [63:0] biases1_24_o;
output   biases1_24_o_ap_vld;
input  [63:0] biases1_23_i;
output  [63:0] biases1_23_o;
output   biases1_23_o_ap_vld;
input  [63:0] biases1_22_i;
output  [63:0] biases1_22_o;
output   biases1_22_o_ap_vld;
input  [63:0] biases1_21_i;
output  [63:0] biases1_21_o;
output   biases1_21_o_ap_vld;
input  [63:0] biases1_20_i;
output  [63:0] biases1_20_o;
output   biases1_20_o_ap_vld;
input  [63:0] biases1_19_i;
output  [63:0] biases1_19_o;
output   biases1_19_o_ap_vld;
input  [63:0] biases1_18_i;
output  [63:0] biases1_18_o;
output   biases1_18_o_ap_vld;
input  [63:0] biases1_17_i;
output  [63:0] biases1_17_o;
output   biases1_17_o_ap_vld;
input  [63:0] biases1_16_i;
output  [63:0] biases1_16_o;
output   biases1_16_o_ap_vld;
input  [63:0] biases1_15_i;
output  [63:0] biases1_15_o;
output   biases1_15_o_ap_vld;
input  [63:0] biases1_14_i;
output  [63:0] biases1_14_o;
output   biases1_14_o_ap_vld;
input  [63:0] biases1_13_i;
output  [63:0] biases1_13_o;
output   biases1_13_o_ap_vld;
input  [63:0] biases1_12_i;
output  [63:0] biases1_12_o;
output   biases1_12_o_ap_vld;
input  [63:0] biases1_11_i;
output  [63:0] biases1_11_o;
output   biases1_11_o_ap_vld;
input  [63:0] biases1_10_i;
output  [63:0] biases1_10_o;
output   biases1_10_o_ap_vld;
input  [63:0] biases1_9_i;
output  [63:0] biases1_9_o;
output   biases1_9_o_ap_vld;
input  [63:0] biases1_8_i;
output  [63:0] biases1_8_o;
output   biases1_8_o_ap_vld;
input  [63:0] biases1_7_i;
output  [63:0] biases1_7_o;
output   biases1_7_o_ap_vld;
input  [63:0] biases1_6_i;
output  [63:0] biases1_6_o;
output   biases1_6_o_ap_vld;
input  [63:0] biases1_5_i;
output  [63:0] biases1_5_o;
output   biases1_5_o_ap_vld;
input  [63:0] biases1_4_i;
output  [63:0] biases1_4_o;
output   biases1_4_o_ap_vld;
input  [63:0] biases1_3_i;
output  [63:0] biases1_3_o;
output   biases1_3_o_ap_vld;
input  [63:0] biases1_2_i;
output  [63:0] biases1_2_o;
output   biases1_2_o_ap_vld;
input  [63:0] d_biases1_0_val;
input  [63:0] d_biases1_2_val;
input  [63:0] d_biases1_4_val;
input  [63:0] d_biases1_6_val;
input  [63:0] d_biases1_8_val;
input  [63:0] d_biases1_10_val;
input  [63:0] d_biases1_12_val;
input  [63:0] d_biases1_14_val;
input  [63:0] d_biases1_16_val;
input  [63:0] d_biases1_18_val;
input  [63:0] d_biases1_20_val;
input  [63:0] d_biases1_22_val;
input  [63:0] d_biases1_24_val;
input  [63:0] d_biases1_26_val;
input  [63:0] d_biases1_28_val;
input  [63:0] d_biases1_30_val;
input  [63:0] d_biases1_32_val;
input  [63:0] d_biases1_34_val;
input  [63:0] d_biases1_36_val;
input  [63:0] d_biases1_38_val;
input  [63:0] d_biases1_40_val;
input  [63:0] d_biases1_42_val;
input  [63:0] d_biases1_44_val;
input  [63:0] d_biases1_46_val;
input  [63:0] d_biases1_48_val;
input  [63:0] d_biases1_50_val;
input  [63:0] d_biases1_52_val;
input  [63:0] d_biases1_54_val;
input  [63:0] d_biases1_56_val;
input  [63:0] d_biases1_58_val;
input  [63:0] d_biases1_60_val;
input  [63:0] d_biases1_62_val;
input  [63:0] d_biases1_1_val;
input  [63:0] d_biases1_3_val;
input  [63:0] d_biases1_5_val;
input  [63:0] d_biases1_7_val;
input  [63:0] d_biases1_9_val;
input  [63:0] d_biases1_11_val;
input  [63:0] d_biases1_13_val;
input  [63:0] d_biases1_15_val;
input  [63:0] d_biases1_17_val;
input  [63:0] d_biases1_19_val;
input  [63:0] d_biases1_21_val;
input  [63:0] d_biases1_23_val;
input  [63:0] d_biases1_25_val;
input  [63:0] d_biases1_27_val;
input  [63:0] d_biases1_29_val;
input  [63:0] d_biases1_31_val;
input  [63:0] d_biases1_33_val;
input  [63:0] d_biases1_35_val;
input  [63:0] d_biases1_37_val;
input  [63:0] d_biases1_39_val;
input  [63:0] d_biases1_41_val;
input  [63:0] d_biases1_43_val;
input  [63:0] d_biases1_45_val;
input  [63:0] d_biases1_47_val;
input  [63:0] d_biases1_49_val;
input  [63:0] d_biases1_51_val;
input  [63:0] d_biases1_53_val;
input  [63:0] d_biases1_55_val;
input  [63:0] d_biases1_57_val;
input  [63:0] d_biases1_59_val;
input  [63:0] d_biases1_61_val;
input  [63:0] d_biases1_63_val;
output  [63:0] bias_norm_out;
output   bias_norm_out_ap_vld;
output  [63:0] grp_fu_4923_p_din0;
output  [63:0] grp_fu_4923_p_din1;
output  [1:0] grp_fu_4923_p_opcode;
input  [63:0] grp_fu_4923_p_dout0;
output   grp_fu_4923_p_ce;
output  [63:0] grp_fu_4927_p_din0;
output  [63:0] grp_fu_4927_p_din1;
input  [63:0] grp_fu_4927_p_dout0;
output   grp_fu_4927_p_ce;
reg ap_idle;
reg[63:0] biases1_0_o;
reg biases1_0_o_ap_vld;
reg[63:0] biases1_1_o;
reg biases1_1_o_ap_vld;
reg[63:0] biases1_63_o;
reg biases1_63_o_ap_vld;
reg[63:0] biases1_62_o;
reg biases1_62_o_ap_vld;
reg[63:0] biases1_61_o;
reg biases1_61_o_ap_vld;
reg[63:0] biases1_60_o;
reg biases1_60_o_ap_vld;
reg[63:0] biases1_59_o;
reg biases1_59_o_ap_vld;
reg[63:0] biases1_58_o;
reg biases1_58_o_ap_vld;
reg[63:0] biases1_57_o;
reg biases1_57_o_ap_vld;
reg[63:0] biases1_56_o;
reg biases1_56_o_ap_vld;
reg[63:0] biases1_55_o;
reg biases1_55_o_ap_vld;
reg[63:0] biases1_54_o;
reg biases1_54_o_ap_vld;
reg[63:0] biases1_53_o;
reg biases1_53_o_ap_vld;
reg[63:0] biases1_52_o;
reg biases1_52_o_ap_vld;
reg[63:0] biases1_51_o;
reg biases1_51_o_ap_vld;
reg[63:0] biases1_50_o;
reg biases1_50_o_ap_vld;
reg[63:0] biases1_49_o;
reg biases1_49_o_ap_vld;
reg[63:0] biases1_48_o;
reg biases1_48_o_ap_vld;
reg[63:0] biases1_47_o;
reg biases1_47_o_ap_vld;
reg[63:0] biases1_46_o;
reg biases1_46_o_ap_vld;
reg[63:0] biases1_45_o;
reg biases1_45_o_ap_vld;
reg[63:0] biases1_44_o;
reg biases1_44_o_ap_vld;
reg[63:0] biases1_43_o;
reg biases1_43_o_ap_vld;
reg[63:0] biases1_42_o;
reg biases1_42_o_ap_vld;
reg[63:0] biases1_41_o;
reg biases1_41_o_ap_vld;
reg[63:0] biases1_40_o;
reg biases1_40_o_ap_vld;
reg[63:0] biases1_39_o;
reg biases1_39_o_ap_vld;
reg[63:0] biases1_38_o;
reg biases1_38_o_ap_vld;
reg[63:0] biases1_37_o;
reg biases1_37_o_ap_vld;
reg[63:0] biases1_36_o;
reg biases1_36_o_ap_vld;
reg[63:0] biases1_35_o;
reg biases1_35_o_ap_vld;
reg[63:0] biases1_34_o;
reg biases1_34_o_ap_vld;
reg[63:0] biases1_33_o;
reg biases1_33_o_ap_vld;
reg[63:0] biases1_32_o;
reg biases1_32_o_ap_vld;
reg[63:0] biases1_31_o;
reg biases1_31_o_ap_vld;
reg[63:0] biases1_30_o;
reg biases1_30_o_ap_vld;
reg[63:0] biases1_29_o;
reg biases1_29_o_ap_vld;
reg[63:0] biases1_28_o;
reg biases1_28_o_ap_vld;
reg[63:0] biases1_27_o;
reg biases1_27_o_ap_vld;
reg[63:0] biases1_26_o;
reg biases1_26_o_ap_vld;
reg[63:0] biases1_25_o;
reg biases1_25_o_ap_vld;
reg[63:0] biases1_24_o;
reg biases1_24_o_ap_vld;
reg[63:0] biases1_23_o;
reg biases1_23_o_ap_vld;
reg[63:0] biases1_22_o;
reg biases1_22_o_ap_vld;
reg[63:0] biases1_21_o;
reg biases1_21_o_ap_vld;
reg[63:0] biases1_20_o;
reg biases1_20_o_ap_vld;
reg[63:0] biases1_19_o;
reg biases1_19_o_ap_vld;
reg[63:0] biases1_18_o;
reg biases1_18_o_ap_vld;
reg[63:0] biases1_17_o;
reg biases1_17_o_ap_vld;
reg[63:0] biases1_16_o;
reg biases1_16_o_ap_vld;
reg[63:0] biases1_15_o;
reg biases1_15_o_ap_vld;
reg[63:0] biases1_14_o;
reg biases1_14_o_ap_vld;
reg[63:0] biases1_13_o;
reg biases1_13_o_ap_vld;
reg[63:0] biases1_12_o;
reg biases1_12_o_ap_vld;
reg[63:0] biases1_11_o;
reg biases1_11_o_ap_vld;
reg[63:0] biases1_10_o;
reg biases1_10_o_ap_vld;
reg[63:0] biases1_9_o;
reg biases1_9_o_ap_vld;
reg[63:0] biases1_8_o;
reg biases1_8_o_ap_vld;
reg[63:0] biases1_7_o;
reg biases1_7_o_ap_vld;
reg[63:0] biases1_6_o;
reg biases1_6_o_ap_vld;
reg[63:0] biases1_5_o;
reg biases1_5_o_ap_vld;
reg[63:0] biases1_4_o;
reg biases1_4_o_ap_vld;
reg[63:0] biases1_3_o;
reg biases1_3_o_ap_vld;
reg[63:0] biases1_2_o;
reg biases1_2_o_ap_vld;
reg bias_norm_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_4_reg_2542;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_reg_2537;
reg   [0:0] tmp_4_reg_2542_pp0_iter1_reg;
wire   [5:0] trunc_ln132_fu_1625_p1;
reg   [5:0] trunc_ln132_reg_2546;
wire   [63:0] tmp_fu_1629_p67;
reg   [63:0] tmp_reg_2552;
wire   [63:0] tmp_2_fu_1765_p67;
reg   [63:0] tmp_2_reg_2557;
reg   [63:0] mul_reg_2562;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_1_fu_2039_p67;
reg   [63:0] tmp_1_reg_2567;
reg   [63:0] mul27_1_reg_2572;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] tmp_3_fu_2302_p67;
reg   [63:0] tmp_3_reg_2577;
reg   [63:0] sub1_reg_2582;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] sub30_1_reg_2588;
reg   [63:0] mul1_reg_2594;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] mul35_1_reg_2604;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] bias_norm_1_reg_2609;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
reg   [63:0] bias_norm_fu_364;
wire    ap_block_pp0_stage6;
wire    ap_loop_init;
wire    ap_block_pp0_stage7;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [6:0] i_1_fu_368;
wire   [6:0] add_ln132_fu_1901_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire   [63:0] bitcast_ln133_64_fu_2437_p1;
wire    ap_block_pp0_stage15_01001;
reg    ap_predicate_pred622_state16;
reg    ap_predicate_pred630_state16;
reg    ap_predicate_pred637_state16;
reg    ap_predicate_pred644_state16;
reg    ap_predicate_pred651_state16;
reg    ap_predicate_pred658_state16;
reg    ap_predicate_pred665_state16;
reg    ap_predicate_pred672_state16;
reg    ap_predicate_pred679_state16;
reg    ap_predicate_pred686_state16;
reg    ap_predicate_pred693_state16;
reg    ap_predicate_pred700_state16;
reg    ap_predicate_pred707_state16;
reg    ap_predicate_pred714_state16;
reg    ap_predicate_pred721_state16;
reg    ap_predicate_pred728_state16;
reg    ap_predicate_pred735_state16;
reg    ap_predicate_pred742_state16;
reg    ap_predicate_pred749_state16;
reg    ap_predicate_pred756_state16;
reg    ap_predicate_pred763_state16;
reg    ap_predicate_pred770_state16;
reg    ap_predicate_pred777_state16;
reg    ap_predicate_pred784_state16;
reg    ap_predicate_pred791_state16;
reg    ap_predicate_pred798_state16;
reg    ap_predicate_pred805_state16;
reg    ap_predicate_pred812_state16;
reg    ap_predicate_pred819_state16;
reg    ap_predicate_pred826_state16;
reg    ap_predicate_pred833_state16;
reg    ap_predicate_pred899_state16;
wire   [63:0] bitcast_ln133_65_fu_2473_p1;
wire    ap_block_pp0_stage0_01001;
reg    ap_predicate_pred621_state17;
reg    ap_predicate_pred629_state17;
reg    ap_predicate_pred636_state17;
reg    ap_predicate_pred643_state17;
reg    ap_predicate_pred650_state17;
reg    ap_predicate_pred657_state17;
reg    ap_predicate_pred664_state17;
reg    ap_predicate_pred671_state17;
reg    ap_predicate_pred678_state17;
reg    ap_predicate_pred685_state17;
reg    ap_predicate_pred692_state17;
reg    ap_predicate_pred699_state17;
reg    ap_predicate_pred706_state17;
reg    ap_predicate_pred713_state17;
reg    ap_predicate_pred720_state17;
reg    ap_predicate_pred727_state17;
reg    ap_predicate_pred734_state17;
reg    ap_predicate_pred741_state17;
reg    ap_predicate_pred748_state17;
reg    ap_predicate_pred755_state17;
reg    ap_predicate_pred762_state17;
reg    ap_predicate_pred769_state17;
reg    ap_predicate_pred776_state17;
reg    ap_predicate_pred783_state17;
reg    ap_predicate_pred790_state17;
reg    ap_predicate_pred797_state17;
reg    ap_predicate_pred804_state17;
reg    ap_predicate_pred811_state17;
reg    ap_predicate_pred818_state17;
reg    ap_predicate_pred825_state17;
reg    ap_predicate_pred832_state17;
reg    ap_predicate_pred1062_state17;
wire    ap_block_pp0_stage6_01001;
reg   [63:0] grp_fu_1595_p0;
reg   [63:0] grp_fu_1595_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_1599_p0;
reg   [63:0] grp_fu_1599_p1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [63:0] tmp_fu_1629_p65;
wire   [63:0] tmp_2_fu_1765_p65;
wire   [63:0] tmp_1_fu_2039_p2;
wire   [63:0] tmp_1_fu_2039_p4;
wire   [63:0] tmp_1_fu_2039_p6;
wire   [63:0] tmp_1_fu_2039_p8;
wire   [63:0] tmp_1_fu_2039_p10;
wire   [63:0] tmp_1_fu_2039_p12;
wire   [63:0] tmp_1_fu_2039_p14;
wire   [63:0] tmp_1_fu_2039_p16;
wire   [63:0] tmp_1_fu_2039_p18;
wire   [63:0] tmp_1_fu_2039_p20;
wire   [63:0] tmp_1_fu_2039_p22;
wire   [63:0] tmp_1_fu_2039_p24;
wire   [63:0] tmp_1_fu_2039_p26;
wire   [63:0] tmp_1_fu_2039_p28;
wire   [63:0] tmp_1_fu_2039_p30;
wire   [63:0] tmp_1_fu_2039_p32;
wire   [63:0] tmp_1_fu_2039_p34;
wire   [63:0] tmp_1_fu_2039_p36;
wire   [63:0] tmp_1_fu_2039_p38;
wire   [63:0] tmp_1_fu_2039_p40;
wire   [63:0] tmp_1_fu_2039_p42;
wire   [63:0] tmp_1_fu_2039_p44;
wire   [63:0] tmp_1_fu_2039_p46;
wire   [63:0] tmp_1_fu_2039_p48;
wire   [63:0] tmp_1_fu_2039_p50;
wire   [63:0] tmp_1_fu_2039_p52;
wire   [63:0] tmp_1_fu_2039_p54;
wire   [63:0] tmp_1_fu_2039_p56;
wire   [63:0] tmp_1_fu_2039_p58;
wire   [63:0] tmp_1_fu_2039_p60;
wire   [63:0] tmp_1_fu_2039_p62;
wire   [63:0] tmp_1_fu_2039_p64;
wire   [63:0] tmp_1_fu_2039_p65;
wire   [63:0] tmp_3_fu_2302_p2;
wire   [63:0] tmp_3_fu_2302_p4;
wire   [63:0] tmp_3_fu_2302_p6;
wire   [63:0] tmp_3_fu_2302_p8;
wire   [63:0] tmp_3_fu_2302_p10;
wire   [63:0] tmp_3_fu_2302_p12;
wire   [63:0] tmp_3_fu_2302_p14;
wire   [63:0] tmp_3_fu_2302_p16;
wire   [63:0] tmp_3_fu_2302_p18;
wire   [63:0] tmp_3_fu_2302_p20;
wire   [63:0] tmp_3_fu_2302_p22;
wire   [63:0] tmp_3_fu_2302_p24;
wire   [63:0] tmp_3_fu_2302_p26;
wire   [63:0] tmp_3_fu_2302_p28;
wire   [63:0] tmp_3_fu_2302_p30;
wire   [63:0] tmp_3_fu_2302_p32;
wire   [63:0] tmp_3_fu_2302_p34;
wire   [63:0] tmp_3_fu_2302_p36;
wire   [63:0] tmp_3_fu_2302_p38;
wire   [63:0] tmp_3_fu_2302_p40;
wire   [63:0] tmp_3_fu_2302_p42;
wire   [63:0] tmp_3_fu_2302_p44;
wire   [63:0] tmp_3_fu_2302_p46;
wire   [63:0] tmp_3_fu_2302_p48;
wire   [63:0] tmp_3_fu_2302_p50;
wire   [63:0] tmp_3_fu_2302_p52;
wire   [63:0] tmp_3_fu_2302_p54;
wire   [63:0] tmp_3_fu_2302_p56;
wire   [63:0] tmp_3_fu_2302_p58;
wire   [63:0] tmp_3_fu_2302_p60;
wire   [63:0] tmp_3_fu_2302_p62;
wire   [63:0] tmp_3_fu_2302_p64;
wire   [63:0] tmp_3_fu_2302_p65;
reg   [1:0] grp_fu_1595_opcode;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
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
wire    ap_block_pp0_stage7_subdone;
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
wire   [5:0] tmp_fu_1629_p1;
wire   [5:0] tmp_fu_1629_p3;
wire   [5:0] tmp_fu_1629_p5;
wire   [5:0] tmp_fu_1629_p7;
wire   [5:0] tmp_fu_1629_p9;
wire   [5:0] tmp_fu_1629_p11;
wire   [5:0] tmp_fu_1629_p13;
wire   [5:0] tmp_fu_1629_p15;
wire   [5:0] tmp_fu_1629_p17;
wire   [5:0] tmp_fu_1629_p19;
wire   [5:0] tmp_fu_1629_p21;
wire   [5:0] tmp_fu_1629_p23;
wire   [5:0] tmp_fu_1629_p25;
wire   [5:0] tmp_fu_1629_p27;
wire   [5:0] tmp_fu_1629_p29;
wire   [5:0] tmp_fu_1629_p31;
wire  signed [5:0] tmp_fu_1629_p33;
wire  signed [5:0] tmp_fu_1629_p35;
wire  signed [5:0] tmp_fu_1629_p37;
wire  signed [5:0] tmp_fu_1629_p39;
wire  signed [5:0] tmp_fu_1629_p41;
wire  signed [5:0] tmp_fu_1629_p43;
wire  signed [5:0] tmp_fu_1629_p45;
wire  signed [5:0] tmp_fu_1629_p47;
wire  signed [5:0] tmp_fu_1629_p49;
wire  signed [5:0] tmp_fu_1629_p51;
wire  signed [5:0] tmp_fu_1629_p53;
wire  signed [5:0] tmp_fu_1629_p55;
wire  signed [5:0] tmp_fu_1629_p57;
wire  signed [5:0] tmp_fu_1629_p59;
wire  signed [5:0] tmp_fu_1629_p61;
wire  signed [5:0] tmp_fu_1629_p63;
wire   [5:0] tmp_2_fu_1765_p1;
wire   [5:0] tmp_2_fu_1765_p3;
wire   [5:0] tmp_2_fu_1765_p5;
wire   [5:0] tmp_2_fu_1765_p7;
wire   [5:0] tmp_2_fu_1765_p9;
wire   [5:0] tmp_2_fu_1765_p11;
wire   [5:0] tmp_2_fu_1765_p13;
wire   [5:0] tmp_2_fu_1765_p15;
wire   [5:0] tmp_2_fu_1765_p17;
wire   [5:0] tmp_2_fu_1765_p19;
wire   [5:0] tmp_2_fu_1765_p21;
wire   [5:0] tmp_2_fu_1765_p23;
wire   [5:0] tmp_2_fu_1765_p25;
wire   [5:0] tmp_2_fu_1765_p27;
wire   [5:0] tmp_2_fu_1765_p29;
wire   [5:0] tmp_2_fu_1765_p31;
wire  signed [5:0] tmp_2_fu_1765_p33;
wire  signed [5:0] tmp_2_fu_1765_p35;
wire  signed [5:0] tmp_2_fu_1765_p37;
wire  signed [5:0] tmp_2_fu_1765_p39;
wire  signed [5:0] tmp_2_fu_1765_p41;
wire  signed [5:0] tmp_2_fu_1765_p43;
wire  signed [5:0] tmp_2_fu_1765_p45;
wire  signed [5:0] tmp_2_fu_1765_p47;
wire  signed [5:0] tmp_2_fu_1765_p49;
wire  signed [5:0] tmp_2_fu_1765_p51;
wire  signed [5:0] tmp_2_fu_1765_p53;
wire  signed [5:0] tmp_2_fu_1765_p55;
wire  signed [5:0] tmp_2_fu_1765_p57;
wire  signed [5:0] tmp_2_fu_1765_p59;
wire  signed [5:0] tmp_2_fu_1765_p61;
wire  signed [5:0] tmp_2_fu_1765_p63;
wire   [5:0] tmp_1_fu_2039_p1;
wire   [5:0] tmp_1_fu_2039_p3;
wire   [5:0] tmp_1_fu_2039_p5;
wire   [5:0] tmp_1_fu_2039_p7;
wire   [5:0] tmp_1_fu_2039_p9;
wire   [5:0] tmp_1_fu_2039_p11;
wire   [5:0] tmp_1_fu_2039_p13;
wire   [5:0] tmp_1_fu_2039_p15;
wire   [5:0] tmp_1_fu_2039_p17;
wire   [5:0] tmp_1_fu_2039_p19;
wire   [5:0] tmp_1_fu_2039_p21;
wire   [5:0] tmp_1_fu_2039_p23;
wire   [5:0] tmp_1_fu_2039_p25;
wire   [5:0] tmp_1_fu_2039_p27;
wire   [5:0] tmp_1_fu_2039_p29;
wire   [5:0] tmp_1_fu_2039_p31;
wire  signed [5:0] tmp_1_fu_2039_p33;
wire  signed [5:0] tmp_1_fu_2039_p35;
wire  signed [5:0] tmp_1_fu_2039_p37;
wire  signed [5:0] tmp_1_fu_2039_p39;
wire  signed [5:0] tmp_1_fu_2039_p41;
wire  signed [5:0] tmp_1_fu_2039_p43;
wire  signed [5:0] tmp_1_fu_2039_p45;
wire  signed [5:0] tmp_1_fu_2039_p47;
wire  signed [5:0] tmp_1_fu_2039_p49;
wire  signed [5:0] tmp_1_fu_2039_p51;
wire  signed [5:0] tmp_1_fu_2039_p53;
wire  signed [5:0] tmp_1_fu_2039_p55;
wire  signed [5:0] tmp_1_fu_2039_p57;
wire  signed [5:0] tmp_1_fu_2039_p59;
wire  signed [5:0] tmp_1_fu_2039_p61;
wire  signed [5:0] tmp_1_fu_2039_p63;
wire   [5:0] tmp_3_fu_2302_p1;
wire   [5:0] tmp_3_fu_2302_p3;
wire   [5:0] tmp_3_fu_2302_p5;
wire   [5:0] tmp_3_fu_2302_p7;
wire   [5:0] tmp_3_fu_2302_p9;
wire   [5:0] tmp_3_fu_2302_p11;
wire   [5:0] tmp_3_fu_2302_p13;
wire   [5:0] tmp_3_fu_2302_p15;
wire   [5:0] tmp_3_fu_2302_p17;
wire   [5:0] tmp_3_fu_2302_p19;
wire   [5:0] tmp_3_fu_2302_p21;
wire   [5:0] tmp_3_fu_2302_p23;
wire   [5:0] tmp_3_fu_2302_p25;
wire   [5:0] tmp_3_fu_2302_p27;
wire   [5:0] tmp_3_fu_2302_p29;
wire   [5:0] tmp_3_fu_2302_p31;
wire  signed [5:0] tmp_3_fu_2302_p33;
wire  signed [5:0] tmp_3_fu_2302_p35;
wire  signed [5:0] tmp_3_fu_2302_p37;
wire  signed [5:0] tmp_3_fu_2302_p39;
wire  signed [5:0] tmp_3_fu_2302_p41;
wire  signed [5:0] tmp_3_fu_2302_p43;
wire  signed [5:0] tmp_3_fu_2302_p45;
wire  signed [5:0] tmp_3_fu_2302_p47;
wire  signed [5:0] tmp_3_fu_2302_p49;
wire  signed [5:0] tmp_3_fu_2302_p51;
wire  signed [5:0] tmp_3_fu_2302_p53;
wire  signed [5:0] tmp_3_fu_2302_p55;
wire  signed [5:0] tmp_3_fu_2302_p57;
wire  signed [5:0] tmp_3_fu_2302_p59;
wire  signed [5:0] tmp_3_fu_2302_p61;
wire  signed [5:0] tmp_3_fu_2302_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_364 = 64'd0;
#0 i_1_fu_368 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U4031(.din0(d_biases1_0_val),.din1(d_biases1_2_val),.din2(d_biases1_4_val),.din3(d_biases1_6_val),.din4(d_biases1_8_val),.din5(d_biases1_10_val),.din6(d_biases1_12_val),.din7(d_biases1_14_val),.din8(d_biases1_16_val),.din9(d_biases1_18_val),.din10(d_biases1_20_val),.din11(d_biases1_22_val),.din12(d_biases1_24_val),.din13(d_biases1_26_val),.din14(d_biases1_28_val),.din15(d_biases1_30_val),.din16(d_biases1_32_val),.din17(d_biases1_34_val),.din18(d_biases1_36_val),.din19(d_biases1_38_val),.din20(d_biases1_40_val),.din21(d_biases1_42_val),.din22(d_biases1_44_val),.din23(d_biases1_46_val),.din24(d_biases1_48_val),.din25(d_biases1_50_val),.din26(d_biases1_52_val),.din27(d_biases1_54_val),.din28(d_biases1_56_val),.din29(d_biases1_58_val),.din30(d_biases1_60_val),.din31(d_biases1_62_val),.def(tmp_fu_1629_p65),.sel(trunc_ln132_fu_1625_p1),.dout(tmp_fu_1629_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U4032(.din0(d_biases1_1_val),.din1(d_biases1_3_val),.din2(d_biases1_5_val),.din3(d_biases1_7_val),.din4(d_biases1_9_val),.din5(d_biases1_11_val),.din6(d_biases1_13_val),.din7(d_biases1_15_val),.din8(d_biases1_17_val),.din9(d_biases1_19_val),.din10(d_biases1_21_val),.din11(d_biases1_23_val),.din12(d_biases1_25_val),.din13(d_biases1_27_val),.din14(d_biases1_29_val),.din15(d_biases1_31_val),.din16(d_biases1_33_val),.din17(d_biases1_35_val),.din18(d_biases1_37_val),.din19(d_biases1_39_val),.din20(d_biases1_41_val),.din21(d_biases1_43_val),.din22(d_biases1_45_val),.din23(d_biases1_47_val),.din24(d_biases1_49_val),.din25(d_biases1_51_val),.din26(d_biases1_53_val),.din27(d_biases1_55_val),.din28(d_biases1_57_val),.din29(d_biases1_59_val),.din30(d_biases1_61_val),.din31(d_biases1_63_val),.def(tmp_2_fu_1765_p65),.sel(trunc_ln132_fu_1625_p1),.dout(tmp_2_fu_1765_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U4033(.din0(tmp_1_fu_2039_p2),.din1(tmp_1_fu_2039_p4),.din2(tmp_1_fu_2039_p6),.din3(tmp_1_fu_2039_p8),.din4(tmp_1_fu_2039_p10),.din5(tmp_1_fu_2039_p12),.din6(tmp_1_fu_2039_p14),.din7(tmp_1_fu_2039_p16),.din8(tmp_1_fu_2039_p18),.din9(tmp_1_fu_2039_p20),.din10(tmp_1_fu_2039_p22),.din11(tmp_1_fu_2039_p24),.din12(tmp_1_fu_2039_p26),.din13(tmp_1_fu_2039_p28),.din14(tmp_1_fu_2039_p30),.din15(tmp_1_fu_2039_p32),.din16(tmp_1_fu_2039_p34),.din17(tmp_1_fu_2039_p36),.din18(tmp_1_fu_2039_p38),.din19(tmp_1_fu_2039_p40),.din20(tmp_1_fu_2039_p42),.din21(tmp_1_fu_2039_p44),.din22(tmp_1_fu_2039_p46),.din23(tmp_1_fu_2039_p48),.din24(tmp_1_fu_2039_p50),.din25(tmp_1_fu_2039_p52),.din26(tmp_1_fu_2039_p54),.din27(tmp_1_fu_2039_p56),.din28(tmp_1_fu_2039_p58),.din29(tmp_1_fu_2039_p60),.din30(tmp_1_fu_2039_p62),.din31(tmp_1_fu_2039_p64),.def(tmp_1_fu_2039_p65),.sel(trunc_ln132_reg_2546),.dout(tmp_1_fu_2039_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U4034(.din0(tmp_3_fu_2302_p2),.din1(tmp_3_fu_2302_p4),.din2(tmp_3_fu_2302_p6),.din3(tmp_3_fu_2302_p8),.din4(tmp_3_fu_2302_p10),.din5(tmp_3_fu_2302_p12),.din6(tmp_3_fu_2302_p14),.din7(tmp_3_fu_2302_p16),.din8(tmp_3_fu_2302_p18),.din9(tmp_3_fu_2302_p20),.din10(tmp_3_fu_2302_p22),.din11(tmp_3_fu_2302_p24),.din12(tmp_3_fu_2302_p26),.din13(tmp_3_fu_2302_p28),.din14(tmp_3_fu_2302_p30),.din15(tmp_3_fu_2302_p32),.din16(tmp_3_fu_2302_p34),.din17(tmp_3_fu_2302_p36),.din18(tmp_3_fu_2302_p38),.din19(tmp_3_fu_2302_p40),.din20(tmp_3_fu_2302_p42),.din21(tmp_3_fu_2302_p44),.din22(tmp_3_fu_2302_p46),.din23(tmp_3_fu_2302_p48),.din24(tmp_3_fu_2302_p50),.din25(tmp_3_fu_2302_p52),.din26(tmp_3_fu_2302_p54),.din27(tmp_3_fu_2302_p56),.din28(tmp_3_fu_2302_p58),.din29(tmp_3_fu_2302_p60),.din30(tmp_3_fu_2302_p62),.din31(tmp_3_fu_2302_p64),.def(tmp_3_fu_2302_p65),.sel(trunc_ln132_reg_2546),.dout(tmp_3_fu_2302_p67));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_364 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bias_norm_fu_364 <= grp_fu_4923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_368 <= 7'd0;
    end else if (((tmp_4_reg_2542 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_368 <= add_ln132_fu_1901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
ap_predicate_pred1062_state17 <= (~(trunc_ln132_reg_2546 == 6'd0) & ~(trunc_ln132_reg_2546 == 6'd2) & ~(trunc_ln132_reg_2546 == 6'd4) & ~(trunc_ln132_reg_2546 == 6'd6) & ~(trunc_ln132_reg_2546 == 6'd8) & ~(trunc_ln132_reg_2546 == 6'd10) & ~(trunc_ln132_reg_2546 == 6'd12) & ~(trunc_ln132_reg_2546 == 6'd14) & ~(trunc_ln132_reg_2546 == 6'd16) & ~(trunc_ln132_reg_2546 == 6'd18) & ~(trunc_ln132_reg_2546 == 6'd20) & ~(trunc_ln132_reg_2546 == 6'd22) & ~(trunc_ln132_reg_2546 == 6'd24) & ~(trunc_ln132_reg_2546 == 6'd26) & ~(trunc_ln132_reg_2546 == 6'd28) & ~(trunc_ln132_reg_2546 == 6'd30) & ~(trunc_ln132_reg_2546 == 6'd32) & ~(trunc_ln132_reg_2546 == 6'd34) & ~(trunc_ln132_reg_2546 == 6'd36) & ~(trunc_ln132_reg_2546 == 6'd38) & ~(trunc_ln132_reg_2546 == 6'd40) & ~(trunc_ln132_reg_2546 == 6'd42) & ~(trunc_ln132_reg_2546 == 6'd44) & ~(trunc_ln132_reg_2546 == 6'd46) & ~(trunc_ln132_reg_2546 == 6'd48) & ~(trunc_ln132_reg_2546 == 6'd50) & ~(trunc_ln132_reg_2546 == 6'd52) & ~(trunc_ln132_reg_2546 == 6'd54) & ~(trunc_ln132_reg_2546 == 6'd56) & ~(trunc_ln132_reg_2546== 6'd58) & ~(trunc_ln132_reg_2546 == 6'd60));
        ap_predicate_pred621_state17 <= (trunc_ln132_reg_2546 == 6'd60);
        ap_predicate_pred629_state17 <= (trunc_ln132_reg_2546 == 6'd58);
        ap_predicate_pred636_state17 <= (trunc_ln132_reg_2546 == 6'd56);
        ap_predicate_pred643_state17 <= (trunc_ln132_reg_2546 == 6'd54);
        ap_predicate_pred650_state17 <= (trunc_ln132_reg_2546 == 6'd52);
        ap_predicate_pred657_state17 <= (trunc_ln132_reg_2546 == 6'd50);
        ap_predicate_pred664_state17 <= (trunc_ln132_reg_2546 == 6'd48);
        ap_predicate_pred671_state17 <= (trunc_ln132_reg_2546 == 6'd46);
        ap_predicate_pred678_state17 <= (trunc_ln132_reg_2546 == 6'd44);
        ap_predicate_pred685_state17 <= (trunc_ln132_reg_2546 == 6'd42);
        ap_predicate_pred692_state17 <= (trunc_ln132_reg_2546 == 6'd40);
        ap_predicate_pred699_state17 <= (trunc_ln132_reg_2546 == 6'd38);
        ap_predicate_pred706_state17 <= (trunc_ln132_reg_2546 == 6'd36);
        ap_predicate_pred713_state17 <= (trunc_ln132_reg_2546 == 6'd34);
        ap_predicate_pred720_state17 <= (trunc_ln132_reg_2546 == 6'd32);
        ap_predicate_pred727_state17 <= (trunc_ln132_reg_2546 == 6'd30);
        ap_predicate_pred734_state17 <= (trunc_ln132_reg_2546 == 6'd28);
        ap_predicate_pred741_state17 <= (trunc_ln132_reg_2546 == 6'd26);
        ap_predicate_pred748_state17 <= (trunc_ln132_reg_2546 == 6'd24);
        ap_predicate_pred755_state17 <= (trunc_ln132_reg_2546 == 6'd22);
        ap_predicate_pred762_state17 <= (trunc_ln132_reg_2546 == 6'd20);
        ap_predicate_pred769_state17 <= (trunc_ln132_reg_2546 == 6'd18);
        ap_predicate_pred776_state17 <= (trunc_ln132_reg_2546 == 6'd16);
        ap_predicate_pred783_state17 <= (trunc_ln132_reg_2546 == 6'd14);
        ap_predicate_pred790_state17 <= (trunc_ln132_reg_2546 == 6'd12);
        ap_predicate_pred797_state17 <= (trunc_ln132_reg_2546 == 6'd10);
        ap_predicate_pred804_state17 <= (trunc_ln132_reg_2546 == 6'd8);
        ap_predicate_pred811_state17 <= (trunc_ln132_reg_2546 == 6'd6);
        ap_predicate_pred818_state17 <= (trunc_ln132_reg_2546 == 6'd4);
        ap_predicate_pred825_state17 <= (trunc_ln132_reg_2546 == 6'd2);
        ap_predicate_pred832_state17 <= (trunc_ln132_reg_2546 == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_predicate_pred622_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd60));
        ap_predicate_pred630_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd58));
        ap_predicate_pred637_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd56));
        ap_predicate_pred644_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd54));
        ap_predicate_pred651_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd52));
        ap_predicate_pred658_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd50));
        ap_predicate_pred665_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd48));
        ap_predicate_pred672_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd46));
        ap_predicate_pred679_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd44));
        ap_predicate_pred686_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd42));
        ap_predicate_pred693_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd40));
        ap_predicate_pred700_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd38));
        ap_predicate_pred707_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd36));
        ap_predicate_pred714_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd34));
        ap_predicate_pred721_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd32));
        ap_predicate_pred728_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd30));
        ap_predicate_pred735_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd28));
        ap_predicate_pred742_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd26));
        ap_predicate_pred749_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd24));
        ap_predicate_pred756_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd22));
        ap_predicate_pred763_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd20));
        ap_predicate_pred770_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd18));
        ap_predicate_pred777_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd16));
        ap_predicate_pred784_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd14));
        ap_predicate_pred791_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd12));
        ap_predicate_pred798_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd10));
        ap_predicate_pred805_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd8));
        ap_predicate_pred812_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd6));
        ap_predicate_pred819_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd4));
        ap_predicate_pred826_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd2));
        ap_predicate_pred833_state16 <= ((tmp_4_reg_2542 == 1'd0) & (trunc_ln132_reg_2546 == 6'd0));
ap_predicate_pred899_state16 <= (~(trunc_ln132_reg_2546 == 6'd0) & ~(trunc_ln132_reg_2546 == 6'd2) & ~(trunc_ln132_reg_2546 == 6'd4) & ~(trunc_ln132_reg_2546 == 6'd6) & ~(trunc_ln132_reg_2546 == 6'd8) & ~(trunc_ln132_reg_2546 == 6'd10) & ~(trunc_ln132_reg_2546 == 6'd12) & ~(trunc_ln132_reg_2546 == 6'd14) & ~(trunc_ln132_reg_2546 == 6'd16) & ~(trunc_ln132_reg_2546 == 6'd18) & ~(trunc_ln132_reg_2546 == 6'd20) & ~(trunc_ln132_reg_2546 == 6'd22) & ~(trunc_ln132_reg_2546 == 6'd24) & ~(trunc_ln132_reg_2546 == 6'd26) & ~(trunc_ln132_reg_2546 == 6'd28) & ~(trunc_ln132_reg_2546 == 6'd30) & ~(trunc_ln132_reg_2546 == 6'd32) & ~(trunc_ln132_reg_2546 == 6'd34) & ~(trunc_ln132_reg_2546 == 6'd36) & ~(trunc_ln132_reg_2546 == 6'd38) & ~(trunc_ln132_reg_2546 == 6'd40) & ~(trunc_ln132_reg_2546 == 6'd42) & ~(trunc_ln132_reg_2546 == 6'd44) & ~(trunc_ln132_reg_2546 == 6'd46) & ~(trunc_ln132_reg_2546 == 6'd48) & ~(trunc_ln132_reg_2546 == 6'd50) & ~(trunc_ln132_reg_2546 == 6'd52) & ~(trunc_ln132_reg_2546 == 6'd54) & ~(trunc_ln132_reg_2546 == 6'd56) & ~(trunc_ln132_reg_2546== 6'd58) & ~(trunc_ln132_reg_2546 == 6'd60) & (tmp_4_reg_2542 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bias_norm_1_reg_2609 <= grp_fu_4923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_2537 <= ap_sig_allocacmp_i;
        tmp_2_reg_2557 <= tmp_2_fu_1765_p67;
        tmp_4_reg_2542 <= ap_sig_allocacmp_i[32'd6];
        tmp_4_reg_2542_pp0_iter1_reg <= tmp_4_reg_2542;
        tmp_reg_2552 <= tmp_fu_1629_p67;
        trunc_ln132_reg_2546 <= trunc_ln132_fu_1625_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_2594 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul27_1_reg_2572 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul35_1_reg_2604 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_2562 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        sub1_reg_2582 <= grp_fu_4923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub30_1_reg_2588 <= grp_fu_4923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_1_reg_2567 <= tmp_1_fu_2039_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_3_reg_2577 <= tmp_3_fu_2302_p67;
    end
end
always @ (*) begin
    if (((tmp_4_reg_2542 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_4_reg_2542_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_368;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_4_reg_2542_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bias_norm_out_ap_vld = 1'b1;
    end else begin
        bias_norm_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred833_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_0_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_0_o = biases1_0_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred833_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_0_o_ap_vld = 1'b1;
    end else begin
        biases1_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred798_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_10_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_10_o = biases1_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred798_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_10_o_ap_vld = 1'b1;
    end else begin
        biases1_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred797_state17 == 1'b1))) begin
        biases1_11_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_11_o = biases1_11_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred797_state17 == 1'b1))) begin
        biases1_11_o_ap_vld = 1'b1;
    end else begin
        biases1_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred791_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_12_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_12_o = biases1_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred791_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_12_o_ap_vld = 1'b1;
    end else begin
        biases1_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred790_state17 == 1'b1))) begin
        biases1_13_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_13_o = biases1_13_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred790_state17 == 1'b1))) begin
        biases1_13_o_ap_vld = 1'b1;
    end else begin
        biases1_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred784_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_14_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_14_o = biases1_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred784_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_14_o_ap_vld = 1'b1;
    end else begin
        biases1_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred783_state17 == 1'b1))) begin
        biases1_15_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_15_o = biases1_15_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred783_state17 == 1'b1))) begin
        biases1_15_o_ap_vld = 1'b1;
    end else begin
        biases1_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_16_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_16_o = biases1_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_16_o_ap_vld = 1'b1;
    end else begin
        biases1_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred776_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_17_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_17_o = biases1_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred776_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_17_o_ap_vld = 1'b1;
    end else begin
        biases1_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred770_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_18_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_18_o = biases1_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred770_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_18_o_ap_vld = 1'b1;
    end else begin
        biases1_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred769_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_19_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_19_o = biases1_19_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred769_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_19_o_ap_vld = 1'b1;
    end else begin
        biases1_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred832_state17 == 1'b1))) begin
        biases1_1_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_1_o = biases1_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred832_state17 == 1'b1))) begin
        biases1_1_o_ap_vld = 1'b1;
    end else begin
        biases1_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred763_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_20_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_20_o = biases1_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred763_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_20_o_ap_vld = 1'b1;
    end else begin
        biases1_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_21_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_21_o = biases1_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_21_o_ap_vld = 1'b1;
    end else begin
        biases1_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred756_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_22_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_22_o = biases1_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred756_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_22_o_ap_vld = 1'b1;
    end else begin
        biases1_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred755_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_23_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_23_o = biases1_23_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred755_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_23_o_ap_vld = 1'b1;
    end else begin
        biases1_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred749_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_24_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_24_o = biases1_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred749_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_24_o_ap_vld = 1'b1;
    end else begin
        biases1_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred748_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_25_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_25_o = biases1_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred748_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_25_o_ap_vld = 1'b1;
    end else begin
        biases1_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred742_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_26_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_26_o = biases1_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred742_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_26_o_ap_vld = 1'b1;
    end else begin
        biases1_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_27_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_27_o = biases1_27_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_27_o_ap_vld = 1'b1;
    end else begin
        biases1_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_28_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_28_o = biases1_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_28_o_ap_vld = 1'b1;
    end else begin
        biases1_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred734_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_29_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_29_o = biases1_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred734_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_29_o_ap_vld = 1'b1;
    end else begin
        biases1_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred826_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_2_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_2_o = biases1_2_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred826_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_2_o_ap_vld = 1'b1;
    end else begin
        biases1_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred728_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_30_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_30_o = biases1_30_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred728_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_30_o_ap_vld = 1'b1;
    end else begin
        biases1_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred727_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_31_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_31_o = biases1_31_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred727_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_31_o_ap_vld = 1'b1;
    end else begin
        biases1_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred721_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_32_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_32_o = biases1_32_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred721_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_32_o_ap_vld = 1'b1;
    end else begin
        biases1_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred720_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_33_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_33_o = biases1_33_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred720_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_33_o_ap_vld = 1'b1;
    end else begin
        biases1_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred714_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_34_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_34_o = biases1_34_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred714_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_34_o_ap_vld = 1'b1;
    end else begin
        biases1_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred713_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_35_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_35_o = biases1_35_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred713_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_35_o_ap_vld = 1'b1;
    end else begin
        biases1_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred707_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_36_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_36_o = biases1_36_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred707_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_36_o_ap_vld = 1'b1;
    end else begin
        biases1_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_37_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_37_o = biases1_37_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_37_o_ap_vld = 1'b1;
    end else begin
        biases1_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred700_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_38_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_38_o = biases1_38_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred700_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_38_o_ap_vld = 1'b1;
    end else begin
        biases1_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_39_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_39_o = biases1_39_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_39_o_ap_vld = 1'b1;
    end else begin
        biases1_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred825_state17 == 1'b1))) begin
        biases1_3_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_3_o = biases1_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred825_state17 == 1'b1))) begin
        biases1_3_o_ap_vld = 1'b1;
    end else begin
        biases1_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_40_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_40_o = biases1_40_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_40_o_ap_vld = 1'b1;
    end else begin
        biases1_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_41_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_41_o = biases1_41_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_41_o_ap_vld = 1'b1;
    end else begin
        biases1_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred686_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_42_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_42_o = biases1_42_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred686_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_42_o_ap_vld = 1'b1;
    end else begin
        biases1_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred685_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_43_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_43_o = biases1_43_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred685_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_43_o_ap_vld = 1'b1;
    end else begin
        biases1_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred679_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_44_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_44_o = biases1_44_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred679_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_44_o_ap_vld = 1'b1;
    end else begin
        biases1_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred678_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_45_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_45_o = biases1_45_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred678_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_45_o_ap_vld = 1'b1;
    end else begin
        biases1_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred672_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_46_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_46_o = biases1_46_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred672_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_46_o_ap_vld = 1'b1;
    end else begin
        biases1_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_47_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_47_o = biases1_47_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_47_o_ap_vld = 1'b1;
    end else begin
        biases1_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred665_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_48_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_48_o = biases1_48_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred665_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_48_o_ap_vld = 1'b1;
    end else begin
        biases1_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred664_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_49_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_49_o = biases1_49_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred664_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_49_o_ap_vld = 1'b1;
    end else begin
        biases1_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_4_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_4_o = biases1_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_4_o_ap_vld = 1'b1;
    end else begin
        biases1_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred658_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_50_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_50_o = biases1_50_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred658_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_50_o_ap_vld = 1'b1;
    end else begin
        biases1_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_51_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_51_o = biases1_51_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_51_o_ap_vld = 1'b1;
    end else begin
        biases1_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_52_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_52_o = biases1_52_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_52_o_ap_vld = 1'b1;
    end else begin
        biases1_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred650_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_53_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_53_o = biases1_53_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred650_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_53_o_ap_vld = 1'b1;
    end else begin
        biases1_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred644_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_54_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_54_o = biases1_54_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred644_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_54_o_ap_vld = 1'b1;
    end else begin
        biases1_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred643_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_55_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_55_o = biases1_55_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred643_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_55_o_ap_vld = 1'b1;
    end else begin
        biases1_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred637_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_56_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_56_o = biases1_56_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred637_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_56_o_ap_vld = 1'b1;
    end else begin
        biases1_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred636_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_57_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_57_o = biases1_57_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred636_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_57_o_ap_vld = 1'b1;
    end else begin
        biases1_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred630_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_58_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_58_o = biases1_58_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred630_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_58_o_ap_vld = 1'b1;
    end else begin
        biases1_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred629_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_59_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_59_o = biases1_59_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred629_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_59_o_ap_vld = 1'b1;
    end else begin
        biases1_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred818_state17 == 1'b1))) begin
        biases1_5_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_5_o = biases1_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred818_state17 == 1'b1))) begin
        biases1_5_o_ap_vld = 1'b1;
    end else begin
        biases1_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred622_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_60_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_60_o = biases1_60_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred622_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_60_o_ap_vld = 1'b1;
    end else begin
        biases1_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_61_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_61_o = biases1_61_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_61_o_ap_vld = 1'b1;
    end else begin
        biases1_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred899_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_62_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_62_o = biases1_62_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred899_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_62_o_ap_vld = 1'b1;
    end else begin
        biases1_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state17 == 1'b1))) begin
        biases1_63_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_63_o = biases1_63_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state17 == 1'b1))) begin
        biases1_63_o_ap_vld = 1'b1;
    end else begin
        biases1_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred812_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_6_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_6_o = biases1_6_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred812_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_6_o_ap_vld = 1'b1;
    end else begin
        biases1_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred811_state17 == 1'b1))) begin
        biases1_7_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_7_o = biases1_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred811_state17 == 1'b1))) begin
        biases1_7_o_ap_vld = 1'b1;
    end else begin
        biases1_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred805_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_8_o = bitcast_ln133_64_fu_2437_p1;
    end else begin
        biases1_8_o = biases1_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred805_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_8_o_ap_vld = 1'b1;
    end else begin
        biases1_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred804_state17 == 1'b1))) begin
        biases1_9_o = bitcast_ln133_65_fu_2473_p1;
    end else begin
        biases1_9_o = biases1_9_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred804_state17 == 1'b1))) begin
        biases1_9_o_ap_vld = 1'b1;
    end else begin
        biases1_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_4_reg_2542 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_4_reg_2542 == 1'd0) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1595_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1595_opcode = 2'd0;
    end else begin
        grp_fu_1595_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1595_p0 = bias_norm_1_reg_2609;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1595_p0 = bias_norm_fu_364;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1595_p0 = tmp_3_reg_2577;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1595_p0 = tmp_1_reg_2567;
    end else begin
        grp_fu_1595_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1595_p1 = mul35_1_reg_2604;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1595_p1 = mul1_reg_2594;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1595_p1 = mul27_1_reg_2572;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1595_p1 = mul_reg_2562;
    end else begin
        grp_fu_1595_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1599_p0 = sub30_1_reg_2588;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1599_p0 = sub1_reg_2582;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1599_p0 = tmp_2_reg_2557;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1599_p0 = tmp_reg_2552;
    end else begin
        grp_fu_1599_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1599_p1 = sub30_1_reg_2588;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1599_p1 = sub1_reg_2582;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1599_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1599_p1 = 'bx;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign add_ln132_fu_1901_p2 = (i_reg_2537 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
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
assign bias_norm_out = bias_norm_fu_364;
assign bitcast_ln133_64_fu_2437_p1 = grp_fu_4923_p_dout0;
assign bitcast_ln133_65_fu_2473_p1 = grp_fu_4923_p_dout0;
assign grp_fu_4923_p_ce = 1'b1;
assign grp_fu_4923_p_din0 = grp_fu_1595_p0;
assign grp_fu_4923_p_din1 = grp_fu_1595_p1;
assign grp_fu_4923_p_opcode = grp_fu_1595_opcode;
assign grp_fu_4927_p_ce = 1'b1;
assign grp_fu_4927_p_din0 = grp_fu_1599_p0;
assign grp_fu_4927_p_din1 = grp_fu_1599_p1;
assign tmp_1_fu_2039_p10 = biases1_8_i;
assign tmp_1_fu_2039_p12 = biases1_10_i;
assign tmp_1_fu_2039_p14 = biases1_12_i;
assign tmp_1_fu_2039_p16 = biases1_14_i;
assign tmp_1_fu_2039_p18 = biases1_16_i;
assign tmp_1_fu_2039_p2 = biases1_0_i;
assign tmp_1_fu_2039_p20 = biases1_18_i;
assign tmp_1_fu_2039_p22 = biases1_20_i;
assign tmp_1_fu_2039_p24 = biases1_22_i;
assign tmp_1_fu_2039_p26 = biases1_24_i;
assign tmp_1_fu_2039_p28 = biases1_26_i;
assign tmp_1_fu_2039_p30 = biases1_28_i;
assign tmp_1_fu_2039_p32 = biases1_30_i;
assign tmp_1_fu_2039_p34 = biases1_32_i;
assign tmp_1_fu_2039_p36 = biases1_34_i;
assign tmp_1_fu_2039_p38 = biases1_36_i;
assign tmp_1_fu_2039_p4 = biases1_2_i;
assign tmp_1_fu_2039_p40 = biases1_38_i;
assign tmp_1_fu_2039_p42 = biases1_40_i;
assign tmp_1_fu_2039_p44 = biases1_42_i;
assign tmp_1_fu_2039_p46 = biases1_44_i;
assign tmp_1_fu_2039_p48 = biases1_46_i;
assign tmp_1_fu_2039_p50 = biases1_48_i;
assign tmp_1_fu_2039_p52 = biases1_50_i;
assign tmp_1_fu_2039_p54 = biases1_52_i;
assign tmp_1_fu_2039_p56 = biases1_54_i;
assign tmp_1_fu_2039_p58 = biases1_56_i;
assign tmp_1_fu_2039_p6 = biases1_4_i;
assign tmp_1_fu_2039_p60 = biases1_58_i;
assign tmp_1_fu_2039_p62 = biases1_60_i;
assign tmp_1_fu_2039_p64 = biases1_62_i;
assign tmp_1_fu_2039_p65 = 'bx;
assign tmp_1_fu_2039_p8 = biases1_6_i;
assign tmp_2_fu_1765_p65 = 'bx;
assign tmp_3_fu_2302_p10 = biases1_9_i;
assign tmp_3_fu_2302_p12 = biases1_11_i;
assign tmp_3_fu_2302_p14 = biases1_13_i;
assign tmp_3_fu_2302_p16 = biases1_15_i;
assign tmp_3_fu_2302_p18 = biases1_17_i;
assign tmp_3_fu_2302_p2 = biases1_1_i;
assign tmp_3_fu_2302_p20 = biases1_19_i;
assign tmp_3_fu_2302_p22 = biases1_21_i;
assign tmp_3_fu_2302_p24 = biases1_23_i;
assign tmp_3_fu_2302_p26 = biases1_25_i;
assign tmp_3_fu_2302_p28 = biases1_27_i;
assign tmp_3_fu_2302_p30 = biases1_29_i;
assign tmp_3_fu_2302_p32 = biases1_31_i;
assign tmp_3_fu_2302_p34 = biases1_33_i;
assign tmp_3_fu_2302_p36 = biases1_35_i;
assign tmp_3_fu_2302_p38 = biases1_37_i;
assign tmp_3_fu_2302_p4 = biases1_3_i;
assign tmp_3_fu_2302_p40 = biases1_39_i;
assign tmp_3_fu_2302_p42 = biases1_41_i;
assign tmp_3_fu_2302_p44 = biases1_43_i;
assign tmp_3_fu_2302_p46 = biases1_45_i;
assign tmp_3_fu_2302_p48 = biases1_47_i;
assign tmp_3_fu_2302_p50 = biases1_49_i;
assign tmp_3_fu_2302_p52 = biases1_51_i;
assign tmp_3_fu_2302_p54 = biases1_53_i;
assign tmp_3_fu_2302_p56 = biases1_55_i;
assign tmp_3_fu_2302_p58 = biases1_57_i;
assign tmp_3_fu_2302_p6 = biases1_5_i;
assign tmp_3_fu_2302_p60 = biases1_59_i;
assign tmp_3_fu_2302_p62 = biases1_61_i;
assign tmp_3_fu_2302_p64 = biases1_63_i;
assign tmp_3_fu_2302_p65 = 'bx;
assign tmp_3_fu_2302_p8 = biases1_7_i;
assign tmp_fu_1629_p65 = 'bx;
assign trunc_ln132_fu_1625_p1 = ap_sig_allocacmp_i[5:0];
endmodule 