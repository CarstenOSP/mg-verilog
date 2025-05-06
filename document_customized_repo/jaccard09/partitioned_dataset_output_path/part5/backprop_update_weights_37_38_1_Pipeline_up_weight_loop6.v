
module backprop_update_weights_37_38_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_i,biases2_0_o,biases2_0_o_ap_vld,biases2_1_i,biases2_1_o,biases2_1_o_ap_vld,biases2_2_i,biases2_2_o,biases2_2_o_ap_vld,biases2_3_i,biases2_3_o,biases2_3_o_ap_vld,biases2_63_i,biases2_63_o,biases2_63_o_ap_vld,biases2_62_i,biases2_62_o,biases2_62_o_ap_vld,biases2_61_i,biases2_61_o,biases2_61_o_ap_vld,biases2_60_i,biases2_60_o,biases2_60_o_ap_vld,biases2_59_i,biases2_59_o,biases2_59_o_ap_vld,biases2_58_i,biases2_58_o,biases2_58_o_ap_vld,biases2_57_i,biases2_57_o,biases2_57_o_ap_vld,biases2_56_i,biases2_56_o,biases2_56_o_ap_vld,biases2_55_i,biases2_55_o,biases2_55_o_ap_vld,biases2_54_i,biases2_54_o,biases2_54_o_ap_vld,biases2_53_i,biases2_53_o,biases2_53_o_ap_vld,biases2_52_i,biases2_52_o,biases2_52_o_ap_vld,biases2_51_i,biases2_51_o,biases2_51_o_ap_vld,biases2_50_i,biases2_50_o,biases2_50_o_ap_vld,biases2_49_i,biases2_49_o,biases2_49_o_ap_vld,biases2_48_i,biases2_48_o,biases2_48_o_ap_vld,biases2_47_i,biases2_47_o,biases2_47_o_ap_vld,biases2_46_i,biases2_46_o,biases2_46_o_ap_vld,biases2_45_i,biases2_45_o,biases2_45_o_ap_vld,biases2_44_i,biases2_44_o,biases2_44_o_ap_vld,biases2_43_i,biases2_43_o,biases2_43_o_ap_vld,biases2_42_i,biases2_42_o,biases2_42_o_ap_vld,biases2_41_i,biases2_41_o,biases2_41_o_ap_vld,biases2_40_i,biases2_40_o,biases2_40_o_ap_vld,biases2_39_i,biases2_39_o,biases2_39_o_ap_vld,biases2_38_i,biases2_38_o,biases2_38_o_ap_vld,biases2_37_i,biases2_37_o,biases2_37_o_ap_vld,biases2_36_i,biases2_36_o,biases2_36_o_ap_vld,biases2_35_i,biases2_35_o,biases2_35_o_ap_vld,biases2_34_i,biases2_34_o,biases2_34_o_ap_vld,biases2_33_i,biases2_33_o,biases2_33_o_ap_vld,biases2_32_i,biases2_32_o,biases2_32_o_ap_vld,biases2_31_i,biases2_31_o,biases2_31_o_ap_vld,biases2_30_i,biases2_30_o,biases2_30_o_ap_vld,biases2_29_i,biases2_29_o,biases2_29_o_ap_vld,biases2_28_i,biases2_28_o,biases2_28_o_ap_vld,biases2_27_i,biases2_27_o,biases2_27_o_ap_vld,biases2_26_i,biases2_26_o,biases2_26_o_ap_vld,biases2_25_i,biases2_25_o,biases2_25_o_ap_vld,biases2_24_i,biases2_24_o,biases2_24_o_ap_vld,biases2_23_i,biases2_23_o,biases2_23_o_ap_vld,biases2_22_i,biases2_22_o,biases2_22_o_ap_vld,biases2_21_i,biases2_21_o,biases2_21_o_ap_vld,biases2_20_i,biases2_20_o,biases2_20_o_ap_vld,biases2_19_i,biases2_19_o,biases2_19_o_ap_vld,biases2_18_i,biases2_18_o,biases2_18_o_ap_vld,biases2_17_i,biases2_17_o,biases2_17_o_ap_vld,biases2_16_i,biases2_16_o,biases2_16_o_ap_vld,biases2_15_i,biases2_15_o,biases2_15_o_ap_vld,biases2_14_i,biases2_14_o,biases2_14_o_ap_vld,biases2_13_i,biases2_13_o,biases2_13_o_ap_vld,biases2_12_i,biases2_12_o,biases2_12_o_ap_vld,biases2_11_i,biases2_11_o,biases2_11_o_ap_vld,biases2_10_i,biases2_10_o,biases2_10_o_ap_vld,biases2_9_i,biases2_9_o,biases2_9_o_ap_vld,biases2_8_i,biases2_8_o,biases2_8_o_ap_vld,biases2_7_i,biases2_7_o,biases2_7_o_ap_vld,biases2_6_i,biases2_6_o,biases2_6_o_ap_vld,biases2_5_i,biases2_5_o,biases2_5_o_ap_vld,biases2_4_i,biases2_4_o,biases2_4_o_ap_vld,d_biases2_0_val,d_biases2_4_val,d_biases2_8_val,d_biases2_12_val,d_biases2_16_val,d_biases2_20_val,d_biases2_24_val,d_biases2_28_val,d_biases2_32_val,d_biases2_36_val,d_biases2_40_val,d_biases2_44_val,d_biases2_48_val,d_biases2_52_val,d_biases2_56_val,d_biases2_60_val,d_biases2_1_val,d_biases2_5_val,d_biases2_9_val,d_biases2_13_val,d_biases2_17_val,d_biases2_21_val,d_biases2_25_val,d_biases2_29_val,d_biases2_33_val,d_biases2_37_val,d_biases2_41_val,d_biases2_45_val,d_biases2_49_val,d_biases2_53_val,d_biases2_57_val,d_biases2_61_val,d_biases2_2_val,d_biases2_6_val,d_biases2_10_val,d_biases2_14_val,d_biases2_18_val,d_biases2_22_val,d_biases2_26_val,d_biases2_30_val,d_biases2_34_val,d_biases2_38_val,d_biases2_42_val,d_biases2_46_val,d_biases2_50_val,d_biases2_54_val,d_biases2_58_val,d_biases2_62_val,d_biases2_3_val,d_biases2_7_val,d_biases2_11_val,d_biases2_15_val,d_biases2_19_val,d_biases2_23_val,d_biases2_27_val,d_biases2_31_val,d_biases2_35_val,d_biases2_39_val,d_biases2_43_val,d_biases2_47_val,d_biases2_51_val,d_biases2_55_val,d_biases2_59_val,d_biases2_63_val,bias_norm_6_out,bias_norm_6_out_ap_vld,grp_fu_4943_p_din0,grp_fu_4943_p_din1,grp_fu_4943_p_opcode,grp_fu_4943_p_dout0,grp_fu_4943_p_ce,grp_fu_4947_p_din0,grp_fu_4947_p_din1,grp_fu_4947_p_dout0,grp_fu_4947_p_ce);  
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
input  [63:0] biases2_0_i;
output  [63:0] biases2_0_o;
output   biases2_0_o_ap_vld;
input  [63:0] biases2_1_i;
output  [63:0] biases2_1_o;
output   biases2_1_o_ap_vld;
input  [63:0] biases2_2_i;
output  [63:0] biases2_2_o;
output   biases2_2_o_ap_vld;
input  [63:0] biases2_3_i;
output  [63:0] biases2_3_o;
output   biases2_3_o_ap_vld;
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
input  [63:0] d_biases2_0_val;
input  [63:0] d_biases2_4_val;
input  [63:0] d_biases2_8_val;
input  [63:0] d_biases2_12_val;
input  [63:0] d_biases2_16_val;
input  [63:0] d_biases2_20_val;
input  [63:0] d_biases2_24_val;
input  [63:0] d_biases2_28_val;
input  [63:0] d_biases2_32_val;
input  [63:0] d_biases2_36_val;
input  [63:0] d_biases2_40_val;
input  [63:0] d_biases2_44_val;
input  [63:0] d_biases2_48_val;
input  [63:0] d_biases2_52_val;
input  [63:0] d_biases2_56_val;
input  [63:0] d_biases2_60_val;
input  [63:0] d_biases2_1_val;
input  [63:0] d_biases2_5_val;
input  [63:0] d_biases2_9_val;
input  [63:0] d_biases2_13_val;
input  [63:0] d_biases2_17_val;
input  [63:0] d_biases2_21_val;
input  [63:0] d_biases2_25_val;
input  [63:0] d_biases2_29_val;
input  [63:0] d_biases2_33_val;
input  [63:0] d_biases2_37_val;
input  [63:0] d_biases2_41_val;
input  [63:0] d_biases2_45_val;
input  [63:0] d_biases2_49_val;
input  [63:0] d_biases2_53_val;
input  [63:0] d_biases2_57_val;
input  [63:0] d_biases2_61_val;
input  [63:0] d_biases2_2_val;
input  [63:0] d_biases2_6_val;
input  [63:0] d_biases2_10_val;
input  [63:0] d_biases2_14_val;
input  [63:0] d_biases2_18_val;
input  [63:0] d_biases2_22_val;
input  [63:0] d_biases2_26_val;
input  [63:0] d_biases2_30_val;
input  [63:0] d_biases2_34_val;
input  [63:0] d_biases2_38_val;
input  [63:0] d_biases2_42_val;
input  [63:0] d_biases2_46_val;
input  [63:0] d_biases2_50_val;
input  [63:0] d_biases2_54_val;
input  [63:0] d_biases2_58_val;
input  [63:0] d_biases2_62_val;
input  [63:0] d_biases2_3_val;
input  [63:0] d_biases2_7_val;
input  [63:0] d_biases2_11_val;
input  [63:0] d_biases2_15_val;
input  [63:0] d_biases2_19_val;
input  [63:0] d_biases2_23_val;
input  [63:0] d_biases2_27_val;
input  [63:0] d_biases2_31_val;
input  [63:0] d_biases2_35_val;
input  [63:0] d_biases2_39_val;
input  [63:0] d_biases2_43_val;
input  [63:0] d_biases2_47_val;
input  [63:0] d_biases2_51_val;
input  [63:0] d_biases2_55_val;
input  [63:0] d_biases2_59_val;
input  [63:0] d_biases2_63_val;
output  [63:0] bias_norm_6_out;
output   bias_norm_6_out_ap_vld;
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
reg[63:0] biases2_1_o;
reg biases2_1_o_ap_vld;
reg[63:0] biases2_2_o;
reg biases2_2_o_ap_vld;
reg[63:0] biases2_3_o;
reg biases2_3_o_ap_vld;
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
reg bias_norm_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_subdone;
reg   [0:0] tmp_reg_2565;
reg    ap_condition_exit_pp0_iter0_stage22;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_1572;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_1577;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1582;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_2560;
wire   [5:0] trunc_ln158_fu_1610_p1;
reg   [5:0] trunc_ln158_reg_2569;
wire   [63:0] tmp_23_fu_1614_p35;
reg   [63:0] tmp_23_reg_2577;
wire   [63:0] tmp_25_fu_1686_p35;
reg   [63:0] tmp_25_reg_2582;
wire   [63:0] tmp_26_fu_1758_p35;
reg   [63:0] tmp_26_reg_2587;
wire   [63:0] tmp_27_fu_1830_p35;
reg   [63:0] tmp_27_reg_2592;
wire   [63:0] tmp_24_fu_1976_p35;
reg   [63:0] tmp_24_reg_2597;
wire   [63:0] tmp_28_fu_2111_p35;
reg   [63:0] tmp_28_reg_2602;
reg   [63:0] mul108_2_reg_2607;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] tmp_s_fu_2246_p35;
reg   [63:0] tmp_s_reg_2612;
reg   [63:0] mul108_3_reg_2617;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] tmp_29_fu_2381_p35;
reg   [63:0] tmp_29_reg_2622;
reg   [63:0] sub111_1_reg_2627;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] sub111_2_reg_2633;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub111_3_reg_2639;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] mul116_2_reg_2650;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] mul116_3_reg_2655;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] bias_norm_3_reg_2660;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] bias_norm_fu_332;
wire    ap_block_pp0_stage22;
wire    ap_loop_init;
wire    ap_block_pp0_stage23;
reg   [6:0] i_fu_336;
wire   [6:0] add_ln158_fu_1902_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] ap_sig_allocacmp_i_3;
wire    ap_block_pp0_stage0;
wire   [63:0] bitcast_ln159_64_fu_2452_p1;
wire    ap_block_pp0_stage15_01001;
reg    ap_predicate_pred736_state16;
reg    ap_predicate_pred744_state16;
reg    ap_predicate_pred751_state16;
reg    ap_predicate_pred758_state16;
reg    ap_predicate_pred765_state16;
reg    ap_predicate_pred772_state16;
reg    ap_predicate_pred779_state16;
reg    ap_predicate_pred786_state16;
reg    ap_predicate_pred793_state16;
reg    ap_predicate_pred800_state16;
reg    ap_predicate_pred807_state16;
reg    ap_predicate_pred814_state16;
reg    ap_predicate_pred821_state16;
reg    ap_predicate_pred828_state16;
reg    ap_predicate_pred835_state16;
reg    ap_predicate_pred869_state16;
wire   [63:0] bitcast_ln159_65_fu_2472_p1;
wire    ap_block_pp0_stage16_01001;
reg    ap_predicate_pred736_state17;
reg    ap_predicate_pred744_state17;
reg    ap_predicate_pred751_state17;
reg    ap_predicate_pred758_state17;
reg    ap_predicate_pred765_state17;
reg    ap_predicate_pred772_state17;
reg    ap_predicate_pred779_state17;
reg    ap_predicate_pred786_state17;
reg    ap_predicate_pred793_state17;
reg    ap_predicate_pred800_state17;
reg    ap_predicate_pred807_state17;
reg    ap_predicate_pred814_state17;
reg    ap_predicate_pred821_state17;
reg    ap_predicate_pred828_state17;
reg    ap_predicate_pred835_state17;
reg    ap_predicate_pred869_state17;
wire   [63:0] bitcast_ln159_66_fu_2492_p1;
wire    ap_block_pp0_stage17_01001;
reg    ap_predicate_pred736_state18;
reg    ap_predicate_pred744_state18;
reg    ap_predicate_pred751_state18;
reg    ap_predicate_pred758_state18;
reg    ap_predicate_pred765_state18;
reg    ap_predicate_pred772_state18;
reg    ap_predicate_pred779_state18;
reg    ap_predicate_pred786_state18;
reg    ap_predicate_pred793_state18;
reg    ap_predicate_pred800_state18;
reg    ap_predicate_pred807_state18;
reg    ap_predicate_pred814_state18;
reg    ap_predicate_pred821_state18;
reg    ap_predicate_pred828_state18;
reg    ap_predicate_pred835_state18;
reg    ap_predicate_pred869_state18;
wire   [63:0] bitcast_ln159_67_fu_2512_p1;
wire    ap_block_pp0_stage18_01001;
reg    ap_predicate_pred736_state19;
reg    ap_predicate_pred744_state19;
reg    ap_predicate_pred751_state19;
reg    ap_predicate_pred758_state19;
reg    ap_predicate_pred765_state19;
reg    ap_predicate_pred772_state19;
reg    ap_predicate_pred779_state19;
reg    ap_predicate_pred786_state19;
reg    ap_predicate_pred793_state19;
reg    ap_predicate_pred800_state19;
reg    ap_predicate_pred807_state19;
reg    ap_predicate_pred814_state19;
reg    ap_predicate_pred821_state19;
reg    ap_predicate_pred828_state19;
reg    ap_predicate_pred835_state19;
reg    ap_predicate_pred869_state19;
wire    ap_block_pp0_stage22_01001;
reg   [63:0] grp_fu_1563_p0;
reg   [63:0] grp_fu_1563_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_1567_p0;
reg   [63:0] grp_fu_1567_p1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19;
wire   [63:0] tmp_23_fu_1614_p33;
wire   [63:0] tmp_25_fu_1686_p33;
wire   [63:0] tmp_26_fu_1758_p33;
wire   [63:0] tmp_27_fu_1830_p33;
wire   [63:0] tmp_24_fu_1976_p2;
wire   [63:0] tmp_24_fu_1976_p4;
wire   [63:0] tmp_24_fu_1976_p6;
wire   [63:0] tmp_24_fu_1976_p8;
wire   [63:0] tmp_24_fu_1976_p10;
wire   [63:0] tmp_24_fu_1976_p12;
wire   [63:0] tmp_24_fu_1976_p14;
wire   [63:0] tmp_24_fu_1976_p16;
wire   [63:0] tmp_24_fu_1976_p18;
wire   [63:0] tmp_24_fu_1976_p20;
wire   [63:0] tmp_24_fu_1976_p22;
wire   [63:0] tmp_24_fu_1976_p24;
wire   [63:0] tmp_24_fu_1976_p26;
wire   [63:0] tmp_24_fu_1976_p28;
wire   [63:0] tmp_24_fu_1976_p30;
wire   [63:0] tmp_24_fu_1976_p32;
wire   [63:0] tmp_24_fu_1976_p33;
wire   [63:0] tmp_28_fu_2111_p2;
wire   [63:0] tmp_28_fu_2111_p4;
wire   [63:0] tmp_28_fu_2111_p6;
wire   [63:0] tmp_28_fu_2111_p8;
wire   [63:0] tmp_28_fu_2111_p10;
wire   [63:0] tmp_28_fu_2111_p12;
wire   [63:0] tmp_28_fu_2111_p14;
wire   [63:0] tmp_28_fu_2111_p16;
wire   [63:0] tmp_28_fu_2111_p18;
wire   [63:0] tmp_28_fu_2111_p20;
wire   [63:0] tmp_28_fu_2111_p22;
wire   [63:0] tmp_28_fu_2111_p24;
wire   [63:0] tmp_28_fu_2111_p26;
wire   [63:0] tmp_28_fu_2111_p28;
wire   [63:0] tmp_28_fu_2111_p30;
wire   [63:0] tmp_28_fu_2111_p32;
wire   [63:0] tmp_28_fu_2111_p33;
wire   [63:0] tmp_s_fu_2246_p2;
wire   [63:0] tmp_s_fu_2246_p4;
wire   [63:0] tmp_s_fu_2246_p6;
wire   [63:0] tmp_s_fu_2246_p8;
wire   [63:0] tmp_s_fu_2246_p10;
wire   [63:0] tmp_s_fu_2246_p12;
wire   [63:0] tmp_s_fu_2246_p14;
wire   [63:0] tmp_s_fu_2246_p16;
wire   [63:0] tmp_s_fu_2246_p18;
wire   [63:0] tmp_s_fu_2246_p20;
wire   [63:0] tmp_s_fu_2246_p22;
wire   [63:0] tmp_s_fu_2246_p24;
wire   [63:0] tmp_s_fu_2246_p26;
wire   [63:0] tmp_s_fu_2246_p28;
wire   [63:0] tmp_s_fu_2246_p30;
wire   [63:0] tmp_s_fu_2246_p32;
wire   [63:0] tmp_s_fu_2246_p33;
wire   [63:0] tmp_29_fu_2381_p2;
wire   [63:0] tmp_29_fu_2381_p4;
wire   [63:0] tmp_29_fu_2381_p6;
wire   [63:0] tmp_29_fu_2381_p8;
wire   [63:0] tmp_29_fu_2381_p10;
wire   [63:0] tmp_29_fu_2381_p12;
wire   [63:0] tmp_29_fu_2381_p14;
wire   [63:0] tmp_29_fu_2381_p16;
wire   [63:0] tmp_29_fu_2381_p18;
wire   [63:0] tmp_29_fu_2381_p20;
wire   [63:0] tmp_29_fu_2381_p22;
wire   [63:0] tmp_29_fu_2381_p24;
wire   [63:0] tmp_29_fu_2381_p26;
wire   [63:0] tmp_29_fu_2381_p28;
wire   [63:0] tmp_29_fu_2381_p30;
wire   [63:0] tmp_29_fu_2381_p32;
wire   [63:0] tmp_29_fu_2381_p33;
reg   [1:0] grp_fu_1563_opcode;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
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
wire    ap_block_pp0_stage23_subdone;
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
wire   [5:0] tmp_23_fu_1614_p1;
wire   [5:0] tmp_23_fu_1614_p3;
wire   [5:0] tmp_23_fu_1614_p5;
wire   [5:0] tmp_23_fu_1614_p7;
wire   [5:0] tmp_23_fu_1614_p9;
wire   [5:0] tmp_23_fu_1614_p11;
wire   [5:0] tmp_23_fu_1614_p13;
wire   [5:0] tmp_23_fu_1614_p15;
wire  signed [5:0] tmp_23_fu_1614_p17;
wire  signed [5:0] tmp_23_fu_1614_p19;
wire  signed [5:0] tmp_23_fu_1614_p21;
wire  signed [5:0] tmp_23_fu_1614_p23;
wire  signed [5:0] tmp_23_fu_1614_p25;
wire  signed [5:0] tmp_23_fu_1614_p27;
wire  signed [5:0] tmp_23_fu_1614_p29;
wire  signed [5:0] tmp_23_fu_1614_p31;
wire   [5:0] tmp_25_fu_1686_p1;
wire   [5:0] tmp_25_fu_1686_p3;
wire   [5:0] tmp_25_fu_1686_p5;
wire   [5:0] tmp_25_fu_1686_p7;
wire   [5:0] tmp_25_fu_1686_p9;
wire   [5:0] tmp_25_fu_1686_p11;
wire   [5:0] tmp_25_fu_1686_p13;
wire   [5:0] tmp_25_fu_1686_p15;
wire  signed [5:0] tmp_25_fu_1686_p17;
wire  signed [5:0] tmp_25_fu_1686_p19;
wire  signed [5:0] tmp_25_fu_1686_p21;
wire  signed [5:0] tmp_25_fu_1686_p23;
wire  signed [5:0] tmp_25_fu_1686_p25;
wire  signed [5:0] tmp_25_fu_1686_p27;
wire  signed [5:0] tmp_25_fu_1686_p29;
wire  signed [5:0] tmp_25_fu_1686_p31;
wire   [5:0] tmp_26_fu_1758_p1;
wire   [5:0] tmp_26_fu_1758_p3;
wire   [5:0] tmp_26_fu_1758_p5;
wire   [5:0] tmp_26_fu_1758_p7;
wire   [5:0] tmp_26_fu_1758_p9;
wire   [5:0] tmp_26_fu_1758_p11;
wire   [5:0] tmp_26_fu_1758_p13;
wire   [5:0] tmp_26_fu_1758_p15;
wire  signed [5:0] tmp_26_fu_1758_p17;
wire  signed [5:0] tmp_26_fu_1758_p19;
wire  signed [5:0] tmp_26_fu_1758_p21;
wire  signed [5:0] tmp_26_fu_1758_p23;
wire  signed [5:0] tmp_26_fu_1758_p25;
wire  signed [5:0] tmp_26_fu_1758_p27;
wire  signed [5:0] tmp_26_fu_1758_p29;
wire  signed [5:0] tmp_26_fu_1758_p31;
wire   [5:0] tmp_27_fu_1830_p1;
wire   [5:0] tmp_27_fu_1830_p3;
wire   [5:0] tmp_27_fu_1830_p5;
wire   [5:0] tmp_27_fu_1830_p7;
wire   [5:0] tmp_27_fu_1830_p9;
wire   [5:0] tmp_27_fu_1830_p11;
wire   [5:0] tmp_27_fu_1830_p13;
wire   [5:0] tmp_27_fu_1830_p15;
wire  signed [5:0] tmp_27_fu_1830_p17;
wire  signed [5:0] tmp_27_fu_1830_p19;
wire  signed [5:0] tmp_27_fu_1830_p21;
wire  signed [5:0] tmp_27_fu_1830_p23;
wire  signed [5:0] tmp_27_fu_1830_p25;
wire  signed [5:0] tmp_27_fu_1830_p27;
wire  signed [5:0] tmp_27_fu_1830_p29;
wire  signed [5:0] tmp_27_fu_1830_p31;
wire   [5:0] tmp_24_fu_1976_p1;
wire   [5:0] tmp_24_fu_1976_p3;
wire   [5:0] tmp_24_fu_1976_p5;
wire   [5:0] tmp_24_fu_1976_p7;
wire   [5:0] tmp_24_fu_1976_p9;
wire   [5:0] tmp_24_fu_1976_p11;
wire   [5:0] tmp_24_fu_1976_p13;
wire   [5:0] tmp_24_fu_1976_p15;
wire  signed [5:0] tmp_24_fu_1976_p17;
wire  signed [5:0] tmp_24_fu_1976_p19;
wire  signed [5:0] tmp_24_fu_1976_p21;
wire  signed [5:0] tmp_24_fu_1976_p23;
wire  signed [5:0] tmp_24_fu_1976_p25;
wire  signed [5:0] tmp_24_fu_1976_p27;
wire  signed [5:0] tmp_24_fu_1976_p29;
wire  signed [5:0] tmp_24_fu_1976_p31;
wire   [5:0] tmp_28_fu_2111_p1;
wire   [5:0] tmp_28_fu_2111_p3;
wire   [5:0] tmp_28_fu_2111_p5;
wire   [5:0] tmp_28_fu_2111_p7;
wire   [5:0] tmp_28_fu_2111_p9;
wire   [5:0] tmp_28_fu_2111_p11;
wire   [5:0] tmp_28_fu_2111_p13;
wire   [5:0] tmp_28_fu_2111_p15;
wire  signed [5:0] tmp_28_fu_2111_p17;
wire  signed [5:0] tmp_28_fu_2111_p19;
wire  signed [5:0] tmp_28_fu_2111_p21;
wire  signed [5:0] tmp_28_fu_2111_p23;
wire  signed [5:0] tmp_28_fu_2111_p25;
wire  signed [5:0] tmp_28_fu_2111_p27;
wire  signed [5:0] tmp_28_fu_2111_p29;
wire  signed [5:0] tmp_28_fu_2111_p31;
wire   [5:0] tmp_s_fu_2246_p1;
wire   [5:0] tmp_s_fu_2246_p3;
wire   [5:0] tmp_s_fu_2246_p5;
wire   [5:0] tmp_s_fu_2246_p7;
wire   [5:0] tmp_s_fu_2246_p9;
wire   [5:0] tmp_s_fu_2246_p11;
wire   [5:0] tmp_s_fu_2246_p13;
wire   [5:0] tmp_s_fu_2246_p15;
wire  signed [5:0] tmp_s_fu_2246_p17;
wire  signed [5:0] tmp_s_fu_2246_p19;
wire  signed [5:0] tmp_s_fu_2246_p21;
wire  signed [5:0] tmp_s_fu_2246_p23;
wire  signed [5:0] tmp_s_fu_2246_p25;
wire  signed [5:0] tmp_s_fu_2246_p27;
wire  signed [5:0] tmp_s_fu_2246_p29;
wire  signed [5:0] tmp_s_fu_2246_p31;
wire   [5:0] tmp_29_fu_2381_p1;
wire   [5:0] tmp_29_fu_2381_p3;
wire   [5:0] tmp_29_fu_2381_p5;
wire   [5:0] tmp_29_fu_2381_p7;
wire   [5:0] tmp_29_fu_2381_p9;
wire   [5:0] tmp_29_fu_2381_p11;
wire   [5:0] tmp_29_fu_2381_p13;
wire   [5:0] tmp_29_fu_2381_p15;
wire  signed [5:0] tmp_29_fu_2381_p17;
wire  signed [5:0] tmp_29_fu_2381_p19;
wire  signed [5:0] tmp_29_fu_2381_p21;
wire  signed [5:0] tmp_29_fu_2381_p23;
wire  signed [5:0] tmp_29_fu_2381_p25;
wire  signed [5:0] tmp_29_fu_2381_p27;
wire  signed [5:0] tmp_29_fu_2381_p29;
wire  signed [5:0] tmp_29_fu_2381_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_332 = 64'd0;
#0 i_fu_336 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3842(.din0(d_biases2_0_val),.din1(d_biases2_4_val),.din2(d_biases2_8_val),.din3(d_biases2_12_val),.din4(d_biases2_16_val),.din5(d_biases2_20_val),.din6(d_biases2_24_val),.din7(d_biases2_28_val),.din8(d_biases2_32_val),.din9(d_biases2_36_val),.din10(d_biases2_40_val),.din11(d_biases2_44_val),.din12(d_biases2_48_val),.din13(d_biases2_52_val),.din14(d_biases2_56_val),.din15(d_biases2_60_val),.def(tmp_23_fu_1614_p33),.sel(trunc_ln158_fu_1610_p1),.dout(tmp_23_fu_1614_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3843(.din0(d_biases2_1_val),.din1(d_biases2_5_val),.din2(d_biases2_9_val),.din3(d_biases2_13_val),.din4(d_biases2_17_val),.din5(d_biases2_21_val),.din6(d_biases2_25_val),.din7(d_biases2_29_val),.din8(d_biases2_33_val),.din9(d_biases2_37_val),.din10(d_biases2_41_val),.din11(d_biases2_45_val),.din12(d_biases2_49_val),.din13(d_biases2_53_val),.din14(d_biases2_57_val),.din15(d_biases2_61_val),.def(tmp_25_fu_1686_p33),.sel(trunc_ln158_fu_1610_p1),.dout(tmp_25_fu_1686_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3844(.din0(d_biases2_2_val),.din1(d_biases2_6_val),.din2(d_biases2_10_val),.din3(d_biases2_14_val),.din4(d_biases2_18_val),.din5(d_biases2_22_val),.din6(d_biases2_26_val),.din7(d_biases2_30_val),.din8(d_biases2_34_val),.din9(d_biases2_38_val),.din10(d_biases2_42_val),.din11(d_biases2_46_val),.din12(d_biases2_50_val),.din13(d_biases2_54_val),.din14(d_biases2_58_val),.din15(d_biases2_62_val),.def(tmp_26_fu_1758_p33),.sel(trunc_ln158_fu_1610_p1),.dout(tmp_26_fu_1758_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3845(.din0(d_biases2_3_val),.din1(d_biases2_7_val),.din2(d_biases2_11_val),.din3(d_biases2_15_val),.din4(d_biases2_19_val),.din5(d_biases2_23_val),.din6(d_biases2_27_val),.din7(d_biases2_31_val),.din8(d_biases2_35_val),.din9(d_biases2_39_val),.din10(d_biases2_43_val),.din11(d_biases2_47_val),.din12(d_biases2_51_val),.din13(d_biases2_55_val),.din14(d_biases2_59_val),.din15(d_biases2_63_val),.def(tmp_27_fu_1830_p33),.sel(trunc_ln158_fu_1610_p1),.dout(tmp_27_fu_1830_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3846(.din0(tmp_24_fu_1976_p2),.din1(tmp_24_fu_1976_p4),.din2(tmp_24_fu_1976_p6),.din3(tmp_24_fu_1976_p8),.din4(tmp_24_fu_1976_p10),.din5(tmp_24_fu_1976_p12),.din6(tmp_24_fu_1976_p14),.din7(tmp_24_fu_1976_p16),.din8(tmp_24_fu_1976_p18),.din9(tmp_24_fu_1976_p20),.din10(tmp_24_fu_1976_p22),.din11(tmp_24_fu_1976_p24),.din12(tmp_24_fu_1976_p26),.din13(tmp_24_fu_1976_p28),.din14(tmp_24_fu_1976_p30),.din15(tmp_24_fu_1976_p32),.def(tmp_24_fu_1976_p33),.sel(trunc_ln158_reg_2569),.dout(tmp_24_fu_1976_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3847(.din0(tmp_28_fu_2111_p2),.din1(tmp_28_fu_2111_p4),.din2(tmp_28_fu_2111_p6),.din3(tmp_28_fu_2111_p8),.din4(tmp_28_fu_2111_p10),.din5(tmp_28_fu_2111_p12),.din6(tmp_28_fu_2111_p14),.din7(tmp_28_fu_2111_p16),.din8(tmp_28_fu_2111_p18),.din9(tmp_28_fu_2111_p20),.din10(tmp_28_fu_2111_p22),.din11(tmp_28_fu_2111_p24),.din12(tmp_28_fu_2111_p26),.din13(tmp_28_fu_2111_p28),.din14(tmp_28_fu_2111_p30),.din15(tmp_28_fu_2111_p32),.def(tmp_28_fu_2111_p33),.sel(trunc_ln158_reg_2569),.dout(tmp_28_fu_2111_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3848(.din0(tmp_s_fu_2246_p2),.din1(tmp_s_fu_2246_p4),.din2(tmp_s_fu_2246_p6),.din3(tmp_s_fu_2246_p8),.din4(tmp_s_fu_2246_p10),.din5(tmp_s_fu_2246_p12),.din6(tmp_s_fu_2246_p14),.din7(tmp_s_fu_2246_p16),.din8(tmp_s_fu_2246_p18),.din9(tmp_s_fu_2246_p20),.din10(tmp_s_fu_2246_p22),.din11(tmp_s_fu_2246_p24),.din12(tmp_s_fu_2246_p26),.din13(tmp_s_fu_2246_p28),.din14(tmp_s_fu_2246_p30),.din15(tmp_s_fu_2246_p32),.def(tmp_s_fu_2246_p33),.sel(trunc_ln158_reg_2569),.dout(tmp_s_fu_2246_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_x_U3849(.din0(tmp_29_fu_2381_p2),.din1(tmp_29_fu_2381_p4),.din2(tmp_29_fu_2381_p6),.din3(tmp_29_fu_2381_p8),.din4(tmp_29_fu_2381_p10),.din5(tmp_29_fu_2381_p12),.din6(tmp_29_fu_2381_p14),.din7(tmp_29_fu_2381_p16),.din8(tmp_29_fu_2381_p18),.din9(tmp_29_fu_2381_p20),.din10(tmp_29_fu_2381_p22),.din11(tmp_29_fu_2381_p24),.din12(tmp_29_fu_2381_p26),.din13(tmp_29_fu_2381_p28),.din14(tmp_29_fu_2381_p30),.din15(tmp_29_fu_2381_p32),.def(tmp_29_fu_2381_p33),.sel(trunc_ln158_reg_2569),.dout(tmp_29_fu_2381_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage22),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage22)) begin
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
        if (((1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_332 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        bias_norm_fu_332 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_336 <= 7'd0;
    end else if (((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_336 <= add_ln158_fu_1902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_predicate_pred736_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd56));
        ap_predicate_pred744_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd52));
        ap_predicate_pred751_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd48));
        ap_predicate_pred758_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd44));
        ap_predicate_pred765_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd40));
        ap_predicate_pred772_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd36));
        ap_predicate_pred779_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd32));
        ap_predicate_pred786_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd28));
        ap_predicate_pred793_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd24));
        ap_predicate_pred800_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd20));
        ap_predicate_pred807_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd16));
        ap_predicate_pred814_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd12));
        ap_predicate_pred821_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd8));
        ap_predicate_pred828_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd4));
        ap_predicate_pred835_state16 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd0));
        ap_predicate_pred869_state16 <= (~(trunc_ln158_reg_2569 == 6'd0) & ~(trunc_ln158_reg_2569 == 6'd4) & ~(trunc_ln158_reg_2569 == 6'd8) & ~(trunc_ln158_reg_2569 == 6'd12) & ~(trunc_ln158_reg_2569 == 6'd16) & ~(trunc_ln158_reg_2569 == 6'd20) & ~(trunc_ln158_reg_2569 == 6'd24) & ~(trunc_ln158_reg_2569 == 6'd28) & ~(trunc_ln158_reg_2569 == 6'd32) & ~(trunc_ln158_reg_2569 == 6'd36) & ~(trunc_ln158_reg_2569 == 6'd40) & ~(trunc_ln158_reg_2569 == 6'd44) & ~(trunc_ln158_reg_2569 == 6'd48) & ~(trunc_ln158_reg_2569 == 6'd52) & ~(trunc_ln158_reg_2569 == 6'd56) & (tmp_reg_2565 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_predicate_pred736_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd56));
        ap_predicate_pred744_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd52));
        ap_predicate_pred751_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd48));
        ap_predicate_pred758_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd44));
        ap_predicate_pred765_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd40));
        ap_predicate_pred772_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd36));
        ap_predicate_pred779_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd32));
        ap_predicate_pred786_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd28));
        ap_predicate_pred793_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd24));
        ap_predicate_pred800_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd20));
        ap_predicate_pred807_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd16));
        ap_predicate_pred814_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd12));
        ap_predicate_pred821_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd8));
        ap_predicate_pred828_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd4));
        ap_predicate_pred835_state17 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd0));
        ap_predicate_pred869_state17 <= (~(trunc_ln158_reg_2569 == 6'd0) & ~(trunc_ln158_reg_2569 == 6'd4) & ~(trunc_ln158_reg_2569 == 6'd8) & ~(trunc_ln158_reg_2569 == 6'd12) & ~(trunc_ln158_reg_2569 == 6'd16) & ~(trunc_ln158_reg_2569 == 6'd20) & ~(trunc_ln158_reg_2569 == 6'd24) & ~(trunc_ln158_reg_2569 == 6'd28) & ~(trunc_ln158_reg_2569 == 6'd32) & ~(trunc_ln158_reg_2569 == 6'd36) & ~(trunc_ln158_reg_2569 == 6'd40) & ~(trunc_ln158_reg_2569 == 6'd44) & ~(trunc_ln158_reg_2569 == 6'd48) & ~(trunc_ln158_reg_2569 == 6'd52) & ~(trunc_ln158_reg_2569 == 6'd56) & (tmp_reg_2565 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred736_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd56));
        ap_predicate_pred744_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd52));
        ap_predicate_pred751_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd48));
        ap_predicate_pred758_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd44));
        ap_predicate_pred765_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd40));
        ap_predicate_pred772_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd36));
        ap_predicate_pred779_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd32));
        ap_predicate_pred786_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd28));
        ap_predicate_pred793_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd24));
        ap_predicate_pred800_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd20));
        ap_predicate_pred807_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd16));
        ap_predicate_pred814_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd12));
        ap_predicate_pred821_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd8));
        ap_predicate_pred828_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd4));
        ap_predicate_pred835_state18 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd0));
        ap_predicate_pred869_state18 <= (~(trunc_ln158_reg_2569 == 6'd0) & ~(trunc_ln158_reg_2569 == 6'd4) & ~(trunc_ln158_reg_2569 == 6'd8) & ~(trunc_ln158_reg_2569 == 6'd12) & ~(trunc_ln158_reg_2569 == 6'd16) & ~(trunc_ln158_reg_2569 == 6'd20) & ~(trunc_ln158_reg_2569 == 6'd24) & ~(trunc_ln158_reg_2569 == 6'd28) & ~(trunc_ln158_reg_2569 == 6'd32) & ~(trunc_ln158_reg_2569 == 6'd36) & ~(trunc_ln158_reg_2569 == 6'd40) & ~(trunc_ln158_reg_2569 == 6'd44) & ~(trunc_ln158_reg_2569 == 6'd48) & ~(trunc_ln158_reg_2569 == 6'd52) & ~(trunc_ln158_reg_2569 == 6'd56) & (tmp_reg_2565 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred736_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd56));
        ap_predicate_pred744_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd52));
        ap_predicate_pred751_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd48));
        ap_predicate_pred758_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd44));
        ap_predicate_pred765_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd40));
        ap_predicate_pred772_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd36));
        ap_predicate_pred779_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd32));
        ap_predicate_pred786_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd28));
        ap_predicate_pred793_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd24));
        ap_predicate_pred800_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd20));
        ap_predicate_pred807_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd16));
        ap_predicate_pred814_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd12));
        ap_predicate_pred821_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd8));
        ap_predicate_pred828_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd4));
        ap_predicate_pred835_state19 <= ((tmp_reg_2565 == 1'd0) & (trunc_ln158_reg_2569 == 6'd0));
        ap_predicate_pred869_state19 <= (~(trunc_ln158_reg_2569 == 6'd0) & ~(trunc_ln158_reg_2569 == 6'd4) & ~(trunc_ln158_reg_2569 == 6'd8) & ~(trunc_ln158_reg_2569 == 6'd12) & ~(trunc_ln158_reg_2569 == 6'd16) & ~(trunc_ln158_reg_2569 == 6'd20) & ~(trunc_ln158_reg_2569 == 6'd24) & ~(trunc_ln158_reg_2569 == 6'd28) & ~(trunc_ln158_reg_2569 == 6'd32) & ~(trunc_ln158_reg_2569 == 6'd36) & ~(trunc_ln158_reg_2569 == 6'd40) & ~(trunc_ln158_reg_2569 == 6'd44) & ~(trunc_ln158_reg_2569 == 6'd48) & ~(trunc_ln158_reg_2569 == 6'd52) & ~(trunc_ln158_reg_2569 == 6'd56) & (tmp_reg_2565 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bias_norm_3_reg_2660 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_2560 <= ap_sig_allocacmp_i_3;
        tmp_23_reg_2577 <= tmp_23_fu_1614_p35;
        tmp_25_reg_2582 <= tmp_25_fu_1686_p35;
        tmp_26_reg_2587 <= tmp_26_fu_1758_p35;
        tmp_27_reg_2592 <= tmp_27_fu_1830_p35;
        tmp_reg_2565 <= ap_sig_allocacmp_i_3[32'd6];
        trunc_ln158_reg_2569 <= trunc_ln158_fu_1610_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul108_2_reg_2607 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul108_3_reg_2617 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul116_2_reg_2650 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul116_3_reg_2655 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1572 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1577 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_1582 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sub111_1_reg_2627 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub111_2_reg_2633 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub111_3_reg_2639 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_24_reg_2597 <= tmp_24_fu_1976_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_28_reg_2602 <= tmp_28_fu_2111_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_29_reg_2622 <= tmp_29_fu_2381_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_s_reg_2612 <= tmp_s_fu_2246_p35;
    end
end
always @ (*) begin
    if (((tmp_reg_2565 == 1'd1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_336;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_2565 == 1'd1) & (1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        bias_norm_6_out_ap_vld = 1'b1;
    end else begin
        bias_norm_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred835_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_0_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_0_o = biases2_0_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred835_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_0_o_ap_vld = 1'b1;
    end else begin
        biases2_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_10_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_10_o = biases2_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_10_o_ap_vld = 1'b1;
    end else begin
        biases2_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred821_state19 == 1'b1))) begin
        biases2_11_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_11_o = biases2_11_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred821_state19 == 1'b1))) begin
        biases2_11_o_ap_vld = 1'b1;
    end else begin
        biases2_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_12_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_12_o = biases2_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_12_o_ap_vld = 1'b1;
    end else begin
        biases2_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_13_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_13_o = biases2_13_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_13_o_ap_vld = 1'b1;
    end else begin
        biases2_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_14_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_14_o = biases2_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred814_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_14_o_ap_vld = 1'b1;
    end else begin
        biases2_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred814_state19 == 1'b1))) begin
        biases2_15_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_15_o = biases2_15_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred814_state19 == 1'b1))) begin
        biases2_15_o_ap_vld = 1'b1;
    end else begin
        biases2_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_16_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_16_o = biases2_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_16_o_ap_vld = 1'b1;
    end else begin
        biases2_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_17_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_17_o = biases2_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_17_o_ap_vld = 1'b1;
    end else begin
        biases2_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_18_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_18_o = biases2_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_18_o_ap_vld = 1'b1;
    end else begin
        biases2_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred807_state19 == 1'b1))) begin
        biases2_19_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_19_o = biases2_19_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred807_state19 == 1'b1))) begin
        biases2_19_o_ap_vld = 1'b1;
    end else begin
        biases2_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred835_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_1_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_1_o = biases2_1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred835_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_1_o_ap_vld = 1'b1;
    end else begin
        biases2_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_20_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_20_o = biases2_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_20_o_ap_vld = 1'b1;
    end else begin
        biases2_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_21_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_21_o = biases2_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_21_o_ap_vld = 1'b1;
    end else begin
        biases2_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_22_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_22_o = biases2_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred800_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_22_o_ap_vld = 1'b1;
    end else begin
        biases2_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred800_state19 == 1'b1))) begin
        biases2_23_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_23_o = biases2_23_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred800_state19 == 1'b1))) begin
        biases2_23_o_ap_vld = 1'b1;
    end else begin
        biases2_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_24_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_24_o = biases2_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_24_o_ap_vld = 1'b1;
    end else begin
        biases2_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_25_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_25_o = biases2_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_25_o_ap_vld = 1'b1;
    end else begin
        biases2_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_26_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_26_o = biases2_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred793_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_26_o_ap_vld = 1'b1;
    end else begin
        biases2_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred793_state19 == 1'b1))) begin
        biases2_27_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_27_o = biases2_27_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred793_state19 == 1'b1))) begin
        biases2_27_o_ap_vld = 1'b1;
    end else begin
        biases2_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_28_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_28_o = biases2_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_28_o_ap_vld = 1'b1;
    end else begin
        biases2_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_29_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_29_o = biases2_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_29_o_ap_vld = 1'b1;
    end else begin
        biases2_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred835_state18 == 1'b1))) begin
        biases2_2_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_2_o = biases2_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred835_state18 == 1'b1))) begin
        biases2_2_o_ap_vld = 1'b1;
    end else begin
        biases2_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_30_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_30_o = biases2_30_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred786_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_30_o_ap_vld = 1'b1;
    end else begin
        biases2_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred786_state19 == 1'b1))) begin
        biases2_31_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_31_o = biases2_31_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred786_state19 == 1'b1))) begin
        biases2_31_o_ap_vld = 1'b1;
    end else begin
        biases2_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_32_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_32_o = biases2_32_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_32_o_ap_vld = 1'b1;
    end else begin
        biases2_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_33_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_33_o = biases2_33_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_33_o_ap_vld = 1'b1;
    end else begin
        biases2_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_34_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_34_o = biases2_34_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred779_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_34_o_ap_vld = 1'b1;
    end else begin
        biases2_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred779_state19 == 1'b1))) begin
        biases2_35_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_35_o = biases2_35_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred779_state19 == 1'b1))) begin
        biases2_35_o_ap_vld = 1'b1;
    end else begin
        biases2_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_36_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_36_o = biases2_36_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_36_o_ap_vld = 1'b1;
    end else begin
        biases2_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_37_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_37_o = biases2_37_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_37_o_ap_vld = 1'b1;
    end else begin
        biases2_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_38_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_38_o = biases2_38_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred772_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_38_o_ap_vld = 1'b1;
    end else begin
        biases2_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred772_state19 == 1'b1))) begin
        biases2_39_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_39_o = biases2_39_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred772_state19 == 1'b1))) begin
        biases2_39_o_ap_vld = 1'b1;
    end else begin
        biases2_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred835_state19 == 1'b1))) begin
        biases2_3_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_3_o = biases2_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred835_state19 == 1'b1))) begin
        biases2_3_o_ap_vld = 1'b1;
    end else begin
        biases2_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_40_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_40_o = biases2_40_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_40_o_ap_vld = 1'b1;
    end else begin
        biases2_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_41_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_41_o = biases2_41_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_41_o_ap_vld = 1'b1;
    end else begin
        biases2_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_42_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_42_o = biases2_42_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_42_o_ap_vld = 1'b1;
    end else begin
        biases2_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred765_state19 == 1'b1))) begin
        biases2_43_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_43_o = biases2_43_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred765_state19 == 1'b1))) begin
        biases2_43_o_ap_vld = 1'b1;
    end else begin
        biases2_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_44_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_44_o = biases2_44_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_44_o_ap_vld = 1'b1;
    end else begin
        biases2_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_45_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_45_o = biases2_45_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_45_o_ap_vld = 1'b1;
    end else begin
        biases2_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_46_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_46_o = biases2_46_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred758_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_46_o_ap_vld = 1'b1;
    end else begin
        biases2_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred758_state19 == 1'b1))) begin
        biases2_47_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_47_o = biases2_47_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred758_state19 == 1'b1))) begin
        biases2_47_o_ap_vld = 1'b1;
    end else begin
        biases2_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_48_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_48_o = biases2_48_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_48_o_ap_vld = 1'b1;
    end else begin
        biases2_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_49_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_49_o = biases2_49_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_49_o_ap_vld = 1'b1;
    end else begin
        biases2_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred828_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_4_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_4_o = biases2_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred828_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_4_o_ap_vld = 1'b1;
    end else begin
        biases2_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_50_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_50_o = biases2_50_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred751_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_50_o_ap_vld = 1'b1;
    end else begin
        biases2_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred751_state19 == 1'b1))) begin
        biases2_51_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_51_o = biases2_51_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred751_state19 == 1'b1))) begin
        biases2_51_o_ap_vld = 1'b1;
    end else begin
        biases2_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_52_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_52_o = biases2_52_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_52_o_ap_vld = 1'b1;
    end else begin
        biases2_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_53_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_53_o = biases2_53_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_53_o_ap_vld = 1'b1;
    end else begin
        biases2_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_54_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_54_o = biases2_54_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred744_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_54_o_ap_vld = 1'b1;
    end else begin
        biases2_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred744_state19 == 1'b1))) begin
        biases2_55_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_55_o = biases2_55_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred744_state19 == 1'b1))) begin
        biases2_55_o_ap_vld = 1'b1;
    end else begin
        biases2_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_56_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_56_o = biases2_56_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_56_o_ap_vld = 1'b1;
    end else begin
        biases2_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_57_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_57_o = biases2_57_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_57_o_ap_vld = 1'b1;
    end else begin
        biases2_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_58_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_58_o = biases2_58_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred736_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_58_o_ap_vld = 1'b1;
    end else begin
        biases2_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred736_state19 == 1'b1))) begin
        biases2_59_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_59_o = biases2_59_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred736_state19 == 1'b1))) begin
        biases2_59_o_ap_vld = 1'b1;
    end else begin
        biases2_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred828_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_5_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_5_o = biases2_5_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred828_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_5_o_ap_vld = 1'b1;
    end else begin
        biases2_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred869_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_60_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_60_o = biases2_60_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred869_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_60_o_ap_vld = 1'b1;
    end else begin
        biases2_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred869_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_61_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_61_o = biases2_61_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred869_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_61_o_ap_vld = 1'b1;
    end else begin
        biases2_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred869_state18 == 1'b1))) begin
        biases2_62_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_62_o = biases2_62_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred869_state18 == 1'b1))) begin
        biases2_62_o_ap_vld = 1'b1;
    end else begin
        biases2_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred869_state19 == 1'b1))) begin
        biases2_63_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_63_o = biases2_63_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred869_state19 == 1'b1))) begin
        biases2_63_o_ap_vld = 1'b1;
    end else begin
        biases2_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred828_state18 == 1'b1))) begin
        biases2_6_o = bitcast_ln159_66_fu_2492_p1;
    end else begin
        biases2_6_o = biases2_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred828_state18 == 1'b1))) begin
        biases2_6_o_ap_vld = 1'b1;
    end else begin
        biases2_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred828_state19 == 1'b1))) begin
        biases2_7_o = bitcast_ln159_67_fu_2512_p1;
    end else begin
        biases2_7_o = biases2_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred828_state19 == 1'b1))) begin
        biases2_7_o_ap_vld = 1'b1;
    end else begin
        biases2_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_8_o = bitcast_ln159_64_fu_2452_p1;
    end else begin
        biases2_8_o = biases2_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases2_8_o_ap_vld = 1'b1;
    end else begin
        biases2_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_9_o = bitcast_ln159_65_fu_2472_p1;
    end else begin
        biases2_9_o = biases2_9_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred821_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        biases2_9_o_ap_vld = 1'b1;
    end else begin
        biases2_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1563_opcode = 2'd1;
    end else if ((((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_2565 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1563_opcode = 2'd0;
    end else begin
        grp_fu_1563_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1563_p0 = bias_norm_3_reg_2660;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        grp_fu_1563_p0 = reg_1582;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1563_p0 = bias_norm_fu_332;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1563_p0 = tmp_29_reg_2622;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1563_p0 = tmp_s_reg_2612;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1563_p0 = tmp_28_reg_2602;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1563_p0 = tmp_24_reg_2597;
    end else begin
        grp_fu_1563_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1563_p1 = mul116_3_reg_2655;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1563_p1 = mul116_2_reg_2650;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1563_p1 = mul108_3_reg_2617;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1563_p1 = mul108_2_reg_2607;
    end else if ((((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1563_p1 = reg_1577;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1563_p1 = reg_1572;
    end else begin
        grp_fu_1563_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1567_p0 = sub111_3_reg_2639;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_1567_p0 = sub111_2_reg_2633;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_1567_p0 = sub111_1_reg_2627;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_1567_p0 = reg_1582;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1567_p0 = tmp_27_reg_2592;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1567_p0 = tmp_26_reg_2587;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1567_p0 = tmp_25_reg_2582;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1567_p0 = tmp_23_reg_2577;
        end else begin
            grp_fu_1567_p0 = 'bx;
        end
    end else begin
        grp_fu_1567_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1567_p1 = sub111_3_reg_2639;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1567_p1 = sub111_2_reg_2633;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1567_p1 = sub111_1_reg_2627;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1567_p1 = reg_1582;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1567_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1567_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage22)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
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
assign add_ln158_fu_1902_p2 = (i_3_reg_2560 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage22;
assign ap_ready = ap_ready_sig;
assign bias_norm_6_out = bias_norm_fu_332;
assign bitcast_ln159_64_fu_2452_p1 = grp_fu_4943_p_dout0;
assign bitcast_ln159_65_fu_2472_p1 = grp_fu_4943_p_dout0;
assign bitcast_ln159_66_fu_2492_p1 = grp_fu_4943_p_dout0;
assign bitcast_ln159_67_fu_2512_p1 = grp_fu_4943_p_dout0;
assign grp_fu_4943_p_ce = 1'b1;
assign grp_fu_4943_p_din0 = grp_fu_1563_p0;
assign grp_fu_4943_p_din1 = grp_fu_1563_p1;
assign grp_fu_4943_p_opcode = grp_fu_1563_opcode;
assign grp_fu_4947_p_ce = 1'b1;
assign grp_fu_4947_p_din0 = grp_fu_1567_p0;
assign grp_fu_4947_p_din1 = grp_fu_1567_p1;
assign tmp_23_fu_1614_p33 = 'bx;
assign tmp_24_fu_1976_p10 = biases2_16_i;
assign tmp_24_fu_1976_p12 = biases2_20_i;
assign tmp_24_fu_1976_p14 = biases2_24_i;
assign tmp_24_fu_1976_p16 = biases2_28_i;
assign tmp_24_fu_1976_p18 = biases2_32_i;
assign tmp_24_fu_1976_p2 = biases2_0_i;
assign tmp_24_fu_1976_p20 = biases2_36_i;
assign tmp_24_fu_1976_p22 = biases2_40_i;
assign tmp_24_fu_1976_p24 = biases2_44_i;
assign tmp_24_fu_1976_p26 = biases2_48_i;
assign tmp_24_fu_1976_p28 = biases2_52_i;
assign tmp_24_fu_1976_p30 = biases2_56_i;
assign tmp_24_fu_1976_p32 = biases2_60_i;
assign tmp_24_fu_1976_p33 = 'bx;
assign tmp_24_fu_1976_p4 = biases2_4_i;
assign tmp_24_fu_1976_p6 = biases2_8_i;
assign tmp_24_fu_1976_p8 = biases2_12_i;
assign tmp_25_fu_1686_p33 = 'bx;
assign tmp_26_fu_1758_p33 = 'bx;
assign tmp_27_fu_1830_p33 = 'bx;
assign tmp_28_fu_2111_p10 = biases2_17_i;
assign tmp_28_fu_2111_p12 = biases2_21_i;
assign tmp_28_fu_2111_p14 = biases2_25_i;
assign tmp_28_fu_2111_p16 = biases2_29_i;
assign tmp_28_fu_2111_p18 = biases2_33_i;
assign tmp_28_fu_2111_p2 = biases2_1_i;
assign tmp_28_fu_2111_p20 = biases2_37_i;
assign tmp_28_fu_2111_p22 = biases2_41_i;
assign tmp_28_fu_2111_p24 = biases2_45_i;
assign tmp_28_fu_2111_p26 = biases2_49_i;
assign tmp_28_fu_2111_p28 = biases2_53_i;
assign tmp_28_fu_2111_p30 = biases2_57_i;
assign tmp_28_fu_2111_p32 = biases2_61_i;
assign tmp_28_fu_2111_p33 = 'bx;
assign tmp_28_fu_2111_p4 = biases2_5_i;
assign tmp_28_fu_2111_p6 = biases2_9_i;
assign tmp_28_fu_2111_p8 = biases2_13_i;
assign tmp_29_fu_2381_p10 = biases2_19_i;
assign tmp_29_fu_2381_p12 = biases2_23_i;
assign tmp_29_fu_2381_p14 = biases2_27_i;
assign tmp_29_fu_2381_p16 = biases2_31_i;
assign tmp_29_fu_2381_p18 = biases2_35_i;
assign tmp_29_fu_2381_p2 = biases2_3_i;
assign tmp_29_fu_2381_p20 = biases2_39_i;
assign tmp_29_fu_2381_p22 = biases2_43_i;
assign tmp_29_fu_2381_p24 = biases2_47_i;
assign tmp_29_fu_2381_p26 = biases2_51_i;
assign tmp_29_fu_2381_p28 = biases2_55_i;
assign tmp_29_fu_2381_p30 = biases2_59_i;
assign tmp_29_fu_2381_p32 = biases2_63_i;
assign tmp_29_fu_2381_p33 = 'bx;
assign tmp_29_fu_2381_p4 = biases2_7_i;
assign tmp_29_fu_2381_p6 = biases2_11_i;
assign tmp_29_fu_2381_p8 = biases2_15_i;
assign tmp_s_fu_2246_p10 = biases2_18_i;
assign tmp_s_fu_2246_p12 = biases2_22_i;
assign tmp_s_fu_2246_p14 = biases2_26_i;
assign tmp_s_fu_2246_p16 = biases2_30_i;
assign tmp_s_fu_2246_p18 = biases2_34_i;
assign tmp_s_fu_2246_p2 = biases2_2_i;
assign tmp_s_fu_2246_p20 = biases2_38_i;
assign tmp_s_fu_2246_p22 = biases2_42_i;
assign tmp_s_fu_2246_p24 = biases2_46_i;
assign tmp_s_fu_2246_p26 = biases2_50_i;
assign tmp_s_fu_2246_p28 = biases2_54_i;
assign tmp_s_fu_2246_p30 = biases2_58_i;
assign tmp_s_fu_2246_p32 = biases2_62_i;
assign tmp_s_fu_2246_p33 = 'bx;
assign tmp_s_fu_2246_p4 = biases2_6_i;
assign tmp_s_fu_2246_p6 = biases2_10_i;
assign tmp_s_fu_2246_p8 = biases2_14_i;
assign trunc_ln158_fu_1610_p1 = ap_sig_allocacmp_i_3[5:0];
endmodule 
