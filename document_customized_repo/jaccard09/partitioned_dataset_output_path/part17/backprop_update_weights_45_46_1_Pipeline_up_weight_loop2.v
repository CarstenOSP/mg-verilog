
module backprop_update_weights_45_46_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_0_i,biases1_0_o,biases1_0_o_ap_vld,biases1_1_i,biases1_1_o,biases1_1_o_ap_vld,biases1_2_i,biases1_2_o,biases1_2_o_ap_vld,biases1_3_i,biases1_3_o,biases1_3_o_ap_vld,biases1_4_i,biases1_4_o,biases1_4_o_ap_vld,biases1_5_i,biases1_5_o,biases1_5_o_ap_vld,biases1_6_i,biases1_6_o,biases1_6_o_ap_vld,biases1_7_i,biases1_7_o,biases1_7_o_ap_vld,biases1_63_i,biases1_63_o,biases1_63_o_ap_vld,biases1_62_i,biases1_62_o,biases1_62_o_ap_vld,biases1_61_i,biases1_61_o,biases1_61_o_ap_vld,biases1_60_i,biases1_60_o,biases1_60_o_ap_vld,biases1_59_i,biases1_59_o,biases1_59_o_ap_vld,biases1_58_i,biases1_58_o,biases1_58_o_ap_vld,biases1_57_i,biases1_57_o,biases1_57_o_ap_vld,biases1_56_i,biases1_56_o,biases1_56_o_ap_vld,biases1_55_i,biases1_55_o,biases1_55_o_ap_vld,biases1_54_i,biases1_54_o,biases1_54_o_ap_vld,biases1_53_i,biases1_53_o,biases1_53_o_ap_vld,biases1_52_i,biases1_52_o,biases1_52_o_ap_vld,biases1_51_i,biases1_51_o,biases1_51_o_ap_vld,biases1_50_i,biases1_50_o,biases1_50_o_ap_vld,biases1_49_i,biases1_49_o,biases1_49_o_ap_vld,biases1_48_i,biases1_48_o,biases1_48_o_ap_vld,biases1_47_i,biases1_47_o,biases1_47_o_ap_vld,biases1_46_i,biases1_46_o,biases1_46_o_ap_vld,biases1_45_i,biases1_45_o,biases1_45_o_ap_vld,biases1_44_i,biases1_44_o,biases1_44_o_ap_vld,biases1_43_i,biases1_43_o,biases1_43_o_ap_vld,biases1_42_i,biases1_42_o,biases1_42_o_ap_vld,biases1_41_i,biases1_41_o,biases1_41_o_ap_vld,biases1_40_i,biases1_40_o,biases1_40_o_ap_vld,biases1_39_i,biases1_39_o,biases1_39_o_ap_vld,biases1_38_i,biases1_38_o,biases1_38_o_ap_vld,biases1_37_i,biases1_37_o,biases1_37_o_ap_vld,biases1_36_i,biases1_36_o,biases1_36_o_ap_vld,biases1_35_i,biases1_35_o,biases1_35_o_ap_vld,biases1_34_i,biases1_34_o,biases1_34_o_ap_vld,biases1_33_i,biases1_33_o,biases1_33_o_ap_vld,biases1_32_i,biases1_32_o,biases1_32_o_ap_vld,biases1_31_i,biases1_31_o,biases1_31_o_ap_vld,biases1_30_i,biases1_30_o,biases1_30_o_ap_vld,biases1_29_i,biases1_29_o,biases1_29_o_ap_vld,biases1_28_i,biases1_28_o,biases1_28_o_ap_vld,biases1_27_i,biases1_27_o,biases1_27_o_ap_vld,biases1_26_i,biases1_26_o,biases1_26_o_ap_vld,biases1_25_i,biases1_25_o,biases1_25_o_ap_vld,biases1_24_i,biases1_24_o,biases1_24_o_ap_vld,biases1_23_i,biases1_23_o,biases1_23_o_ap_vld,biases1_22_i,biases1_22_o,biases1_22_o_ap_vld,biases1_21_i,biases1_21_o,biases1_21_o_ap_vld,biases1_20_i,biases1_20_o,biases1_20_o_ap_vld,biases1_19_i,biases1_19_o,biases1_19_o_ap_vld,biases1_18_i,biases1_18_o,biases1_18_o_ap_vld,biases1_17_i,biases1_17_o,biases1_17_o_ap_vld,biases1_16_i,biases1_16_o,biases1_16_o_ap_vld,biases1_15_i,biases1_15_o,biases1_15_o_ap_vld,biases1_14_i,biases1_14_o,biases1_14_o_ap_vld,biases1_13_i,biases1_13_o,biases1_13_o_ap_vld,biases1_12_i,biases1_12_o,biases1_12_o_ap_vld,biases1_11_i,biases1_11_o,biases1_11_o_ap_vld,biases1_10_i,biases1_10_o,biases1_10_o_ap_vld,biases1_9_i,biases1_9_o,biases1_9_o_ap_vld,biases1_8_i,biases1_8_o,biases1_8_o_ap_vld,d_biases1_0_val,d_biases1_8_val,d_biases1_16_val,d_biases1_24_val,d_biases1_32_val,d_biases1_40_val,d_biases1_48_val,d_biases1_56_val,d_biases1_1_val,d_biases1_9_val,d_biases1_17_val,d_biases1_25_val,d_biases1_33_val,d_biases1_41_val,d_biases1_49_val,d_biases1_57_val,d_biases1_2_val,d_biases1_10_val,d_biases1_18_val,d_biases1_26_val,d_biases1_34_val,d_biases1_42_val,d_biases1_50_val,d_biases1_58_val,d_biases1_3_val,d_biases1_11_val,d_biases1_19_val,d_biases1_27_val,d_biases1_35_val,d_biases1_43_val,d_biases1_51_val,d_biases1_59_val,d_biases1_4_val,d_biases1_12_val,d_biases1_20_val,d_biases1_28_val,d_biases1_36_val,d_biases1_44_val,d_biases1_52_val,d_biases1_60_val,d_biases1_5_val,d_biases1_13_val,d_biases1_21_val,d_biases1_29_val,d_biases1_37_val,d_biases1_45_val,d_biases1_53_val,d_biases1_61_val,d_biases1_6_val,d_biases1_14_val,d_biases1_22_val,d_biases1_30_val,d_biases1_38_val,d_biases1_46_val,d_biases1_54_val,d_biases1_62_val,d_biases1_7_val,d_biases1_15_val,d_biases1_23_val,d_biases1_31_val,d_biases1_39_val,d_biases1_47_val,d_biases1_55_val,d_biases1_63_val,bias_norm_out,bias_norm_out_ap_vld,grp_fu_4939_p_din0,grp_fu_4939_p_din1,grp_fu_4939_p_opcode,grp_fu_4939_p_dout0,grp_fu_4939_p_ce,grp_fu_4943_p_din0,grp_fu_4943_p_din1,grp_fu_4943_p_opcode,grp_fu_4943_p_dout0,grp_fu_4943_p_ce,grp_fu_4947_p_din0,grp_fu_4947_p_din1,grp_fu_4947_p_dout0,grp_fu_4947_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 64'd1;
parameter    ap_ST_fsm_pp0_stage1 = 64'd2;
parameter    ap_ST_fsm_pp0_stage2 = 64'd4;
parameter    ap_ST_fsm_pp0_stage3 = 64'd8;
parameter    ap_ST_fsm_pp0_stage4 = 64'd16;
parameter    ap_ST_fsm_pp0_stage5 = 64'd32;
parameter    ap_ST_fsm_pp0_stage6 = 64'd64;
parameter    ap_ST_fsm_pp0_stage7 = 64'd128;
parameter    ap_ST_fsm_pp0_stage8 = 64'd256;
parameter    ap_ST_fsm_pp0_stage9 = 64'd512;
parameter    ap_ST_fsm_pp0_stage10 = 64'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 64'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 64'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 64'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 64'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 64'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 64'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 64'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 64'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 64'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 64'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 64'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 64'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 64'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 64'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 64'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 64'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 64'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 64'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 64'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 64'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 64'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 64'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 64'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 64'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 64'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 64'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 64'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 64'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 64'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 64'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 64'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 64'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 64'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 64'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 64'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 64'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 64'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 64'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 64'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 64'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 64'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 64'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 64'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 64'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 64'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 64'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 64'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 64'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 64'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 64'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 64'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 64'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 64'd9223372036854775808;
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
input  [63:0] biases1_2_i;
output  [63:0] biases1_2_o;
output   biases1_2_o_ap_vld;
input  [63:0] biases1_3_i;
output  [63:0] biases1_3_o;
output   biases1_3_o_ap_vld;
input  [63:0] biases1_4_i;
output  [63:0] biases1_4_o;
output   biases1_4_o_ap_vld;
input  [63:0] biases1_5_i;
output  [63:0] biases1_5_o;
output   biases1_5_o_ap_vld;
input  [63:0] biases1_6_i;
output  [63:0] biases1_6_o;
output   biases1_6_o_ap_vld;
input  [63:0] biases1_7_i;
output  [63:0] biases1_7_o;
output   biases1_7_o_ap_vld;
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
input  [63:0] d_biases1_0_val;
input  [63:0] d_biases1_8_val;
input  [63:0] d_biases1_16_val;
input  [63:0] d_biases1_24_val;
input  [63:0] d_biases1_32_val;
input  [63:0] d_biases1_40_val;
input  [63:0] d_biases1_48_val;
input  [63:0] d_biases1_56_val;
input  [63:0] d_biases1_1_val;
input  [63:0] d_biases1_9_val;
input  [63:0] d_biases1_17_val;
input  [63:0] d_biases1_25_val;
input  [63:0] d_biases1_33_val;
input  [63:0] d_biases1_41_val;
input  [63:0] d_biases1_49_val;
input  [63:0] d_biases1_57_val;
input  [63:0] d_biases1_2_val;
input  [63:0] d_biases1_10_val;
input  [63:0] d_biases1_18_val;
input  [63:0] d_biases1_26_val;
input  [63:0] d_biases1_34_val;
input  [63:0] d_biases1_42_val;
input  [63:0] d_biases1_50_val;
input  [63:0] d_biases1_58_val;
input  [63:0] d_biases1_3_val;
input  [63:0] d_biases1_11_val;
input  [63:0] d_biases1_19_val;
input  [63:0] d_biases1_27_val;
input  [63:0] d_biases1_35_val;
input  [63:0] d_biases1_43_val;
input  [63:0] d_biases1_51_val;
input  [63:0] d_biases1_59_val;
input  [63:0] d_biases1_4_val;
input  [63:0] d_biases1_12_val;
input  [63:0] d_biases1_20_val;
input  [63:0] d_biases1_28_val;
input  [63:0] d_biases1_36_val;
input  [63:0] d_biases1_44_val;
input  [63:0] d_biases1_52_val;
input  [63:0] d_biases1_60_val;
input  [63:0] d_biases1_5_val;
input  [63:0] d_biases1_13_val;
input  [63:0] d_biases1_21_val;
input  [63:0] d_biases1_29_val;
input  [63:0] d_biases1_37_val;
input  [63:0] d_biases1_45_val;
input  [63:0] d_biases1_53_val;
input  [63:0] d_biases1_61_val;
input  [63:0] d_biases1_6_val;
input  [63:0] d_biases1_14_val;
input  [63:0] d_biases1_22_val;
input  [63:0] d_biases1_30_val;
input  [63:0] d_biases1_38_val;
input  [63:0] d_biases1_46_val;
input  [63:0] d_biases1_54_val;
input  [63:0] d_biases1_62_val;
input  [63:0] d_biases1_7_val;
input  [63:0] d_biases1_15_val;
input  [63:0] d_biases1_23_val;
input  [63:0] d_biases1_31_val;
input  [63:0] d_biases1_39_val;
input  [63:0] d_biases1_47_val;
input  [63:0] d_biases1_55_val;
input  [63:0] d_biases1_63_val;
output  [63:0] bias_norm_out;
output   bias_norm_out_ap_vld;
output  [63:0] grp_fu_4939_p_din0;
output  [63:0] grp_fu_4939_p_din1;
output  [1:0] grp_fu_4939_p_opcode;
input  [63:0] grp_fu_4939_p_dout0;
output   grp_fu_4939_p_ce;
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
reg[63:0] biases1_0_o;
reg biases1_0_o_ap_vld;
reg[63:0] biases1_1_o;
reg biases1_1_o_ap_vld;
reg[63:0] biases1_2_o;
reg biases1_2_o_ap_vld;
reg[63:0] biases1_3_o;
reg biases1_3_o_ap_vld;
reg[63:0] biases1_4_o;
reg biases1_4_o_ap_vld;
reg[63:0] biases1_5_o;
reg biases1_5_o_ap_vld;
reg[63:0] biases1_6_o;
reg biases1_6_o_ap_vld;
reg[63:0] biases1_7_o;
reg biases1_7_o_ap_vld;
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
reg bias_norm_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_subdone;
reg   [0:0] tmp_15_reg_2654;
reg    ap_condition_exit_pp0_iter0_stage22;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_1560;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_1565;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1570;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1575;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_1580;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_1585;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_1590;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_1595;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
wire    ap_CS_fsm_pp0_stage54;
wire    ap_block_pp0_stage54_11001;
wire    ap_CS_fsm_pp0_stage62;
wire    ap_block_pp0_stage62_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_reg_2649;
wire   [5:0] trunc_ln132_fu_1623_p1;
reg   [5:0] trunc_ln132_reg_2658;
wire   [63:0] tmp_fu_1627_p19;
reg   [63:0] tmp_reg_2670;
wire   [63:0] tmp_2_fu_1667_p19;
reg   [63:0] tmp_2_reg_2675;
wire   [63:0] tmp_3_fu_1707_p19;
reg   [63:0] tmp_3_reg_2680;
wire   [63:0] tmp_4_fu_1747_p19;
reg   [63:0] tmp_4_reg_2685;
wire   [63:0] tmp_5_fu_1787_p19;
reg   [63:0] tmp_5_reg_2690;
wire   [63:0] tmp_6_fu_1827_p19;
reg   [63:0] tmp_6_reg_2695;
wire   [63:0] tmp_7_fu_1867_p19;
reg   [63:0] tmp_7_reg_2700;
wire   [63:0] tmp_8_fu_1907_p19;
reg   [63:0] tmp_8_reg_2705;
wire   [63:0] tmp_1_fu_1989_p19;
reg   [63:0] tmp_1_reg_2710;
wire   [63:0] tmp_9_fu_2060_p19;
reg   [63:0] tmp_9_reg_2715;
wire   [63:0] tmp_s_fu_2131_p19;
reg   [63:0] tmp_s_reg_2720;
wire   [63:0] tmp_10_fu_2202_p19;
reg   [63:0] tmp_10_reg_2725;
wire   [63:0] tmp_11_fu_2273_p19;
reg   [63:0] tmp_11_reg_2730;
wire   [63:0] tmp_12_fu_2344_p19;
reg   [63:0] tmp_12_reg_2735;
reg   [63:0] mul27_6_reg_2740;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] tmp_13_fu_2415_p19;
reg   [63:0] tmp_13_reg_2745;
wire   [63:0] tmp_14_fu_2486_p19;
reg   [63:0] tmp_14_reg_2750;
reg   [63:0] sub30_1_reg_2755;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] sub30_2_reg_2761;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub30_3_reg_2767;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub30_4_reg_2773;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub30_5_reg_2779;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub30_6_reg_2785;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] mul35_7_reg_2796;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] bias_norm_7_reg_2801;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] bias_norm_fu_316;
wire    ap_block_pp0_stage22;
wire    ap_loop_init;
wire    ap_block_pp0_stage23;
reg   [6:0] i_1_fu_320;
wire   [6:0] add_ln132_fu_1947_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire   [63:0] bitcast_ln133_64_fu_2525_p1;
wire    ap_block_pp0_stage15_01001;
reg    ap_predicate_pred951_state16;
reg    ap_predicate_pred958_state16;
reg    ap_predicate_pred965_state16;
reg    ap_predicate_pred972_state16;
reg    ap_predicate_pred979_state16;
reg    ap_predicate_pred986_state16;
reg    ap_predicate_pred993_state16;
reg    ap_predicate_pred1011_state16;
wire   [63:0] bitcast_ln133_65_fu_2537_p1;
wire    ap_block_pp0_stage16_01001;
reg    ap_predicate_pred951_state17;
reg    ap_predicate_pred958_state17;
reg    ap_predicate_pred965_state17;
reg    ap_predicate_pred972_state17;
reg    ap_predicate_pred979_state17;
reg    ap_predicate_pred986_state17;
reg    ap_predicate_pred993_state17;
reg    ap_predicate_pred1011_state17;
wire   [63:0] bitcast_ln133_66_fu_2549_p1;
wire    ap_block_pp0_stage17_01001;
reg    ap_predicate_pred951_state18;
reg    ap_predicate_pred958_state18;
reg    ap_predicate_pred965_state18;
reg    ap_predicate_pred972_state18;
reg    ap_predicate_pred979_state18;
reg    ap_predicate_pred986_state18;
reg    ap_predicate_pred993_state18;
reg    ap_predicate_pred1011_state18;
wire   [63:0] bitcast_ln133_67_fu_2561_p1;
wire    ap_block_pp0_stage18_01001;
reg    ap_predicate_pred951_state19;
reg    ap_predicate_pred958_state19;
reg    ap_predicate_pred965_state19;
reg    ap_predicate_pred972_state19;
reg    ap_predicate_pred979_state19;
reg    ap_predicate_pred986_state19;
reg    ap_predicate_pred993_state19;
reg    ap_predicate_pred1011_state19;
wire   [63:0] bitcast_ln133_68_fu_2573_p1;
wire    ap_block_pp0_stage19_01001;
reg    ap_predicate_pred951_state20;
reg    ap_predicate_pred958_state20;
reg    ap_predicate_pred965_state20;
reg    ap_predicate_pred972_state20;
reg    ap_predicate_pred979_state20;
reg    ap_predicate_pred986_state20;
reg    ap_predicate_pred993_state20;
reg    ap_predicate_pred1011_state20;
wire   [63:0] bitcast_ln133_69_fu_2585_p1;
wire    ap_block_pp0_stage20_01001;
reg    ap_predicate_pred951_state21;
reg    ap_predicate_pred958_state21;
reg    ap_predicate_pred965_state21;
reg    ap_predicate_pred972_state21;
reg    ap_predicate_pred979_state21;
reg    ap_predicate_pred986_state21;
reg    ap_predicate_pred993_state21;
reg    ap_predicate_pred1011_state21;
wire   [63:0] bitcast_ln133_70_fu_2597_p1;
wire    ap_block_pp0_stage21_01001;
reg    ap_predicate_pred951_state22;
reg    ap_predicate_pred958_state22;
reg    ap_predicate_pred965_state22;
reg    ap_predicate_pred972_state22;
reg    ap_predicate_pred979_state22;
reg    ap_predicate_pred986_state22;
reg    ap_predicate_pred993_state22;
reg    ap_predicate_pred1011_state22;
wire   [63:0] bitcast_ln133_71_fu_2609_p1;
wire    ap_block_pp0_stage22_01001;
reg    ap_predicate_pred951_state23;
reg    ap_predicate_pred958_state23;
reg    ap_predicate_pred965_state23;
reg    ap_predicate_pred972_state23;
reg    ap_predicate_pred979_state23;
reg    ap_predicate_pred986_state23;
reg    ap_predicate_pred993_state23;
reg    ap_predicate_pred1011_state23;
reg   [63:0] grp_fu_1547_p0;
reg   [63:0] grp_fu_1547_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55;
wire    ap_block_pp0_stage63;
wire    ap_block_pp0_stage7;
reg   [63:0] grp_fu_1555_p0;
reg   [63:0] grp_fu_1555_p1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage21;
wire   [63:0] tmp_fu_1627_p17;
wire   [63:0] tmp_2_fu_1667_p17;
wire   [63:0] tmp_3_fu_1707_p17;
wire   [63:0] tmp_4_fu_1747_p17;
wire   [63:0] tmp_5_fu_1787_p17;
wire   [63:0] tmp_6_fu_1827_p17;
wire   [63:0] tmp_7_fu_1867_p17;
wire   [63:0] tmp_8_fu_1907_p17;
wire   [63:0] tmp_1_fu_1989_p2;
wire   [63:0] tmp_1_fu_1989_p4;
wire   [63:0] tmp_1_fu_1989_p6;
wire   [63:0] tmp_1_fu_1989_p8;
wire   [63:0] tmp_1_fu_1989_p10;
wire   [63:0] tmp_1_fu_1989_p12;
wire   [63:0] tmp_1_fu_1989_p14;
wire   [63:0] tmp_1_fu_1989_p16;
wire   [63:0] tmp_1_fu_1989_p17;
wire   [63:0] tmp_9_fu_2060_p2;
wire   [63:0] tmp_9_fu_2060_p4;
wire   [63:0] tmp_9_fu_2060_p6;
wire   [63:0] tmp_9_fu_2060_p8;
wire   [63:0] tmp_9_fu_2060_p10;
wire   [63:0] tmp_9_fu_2060_p12;
wire   [63:0] tmp_9_fu_2060_p14;
wire   [63:0] tmp_9_fu_2060_p16;
wire   [63:0] tmp_9_fu_2060_p17;
wire   [63:0] tmp_s_fu_2131_p2;
wire   [63:0] tmp_s_fu_2131_p4;
wire   [63:0] tmp_s_fu_2131_p6;
wire   [63:0] tmp_s_fu_2131_p8;
wire   [63:0] tmp_s_fu_2131_p10;
wire   [63:0] tmp_s_fu_2131_p12;
wire   [63:0] tmp_s_fu_2131_p14;
wire   [63:0] tmp_s_fu_2131_p16;
wire   [63:0] tmp_s_fu_2131_p17;
wire   [63:0] tmp_10_fu_2202_p2;
wire   [63:0] tmp_10_fu_2202_p4;
wire   [63:0] tmp_10_fu_2202_p6;
wire   [63:0] tmp_10_fu_2202_p8;
wire   [63:0] tmp_10_fu_2202_p10;
wire   [63:0] tmp_10_fu_2202_p12;
wire   [63:0] tmp_10_fu_2202_p14;
wire   [63:0] tmp_10_fu_2202_p16;
wire   [63:0] tmp_10_fu_2202_p17;
wire   [63:0] tmp_11_fu_2273_p2;
wire   [63:0] tmp_11_fu_2273_p4;
wire   [63:0] tmp_11_fu_2273_p6;
wire   [63:0] tmp_11_fu_2273_p8;
wire   [63:0] tmp_11_fu_2273_p10;
wire   [63:0] tmp_11_fu_2273_p12;
wire   [63:0] tmp_11_fu_2273_p14;
wire   [63:0] tmp_11_fu_2273_p16;
wire   [63:0] tmp_11_fu_2273_p17;
wire   [63:0] tmp_12_fu_2344_p2;
wire   [63:0] tmp_12_fu_2344_p4;
wire   [63:0] tmp_12_fu_2344_p6;
wire   [63:0] tmp_12_fu_2344_p8;
wire   [63:0] tmp_12_fu_2344_p10;
wire   [63:0] tmp_12_fu_2344_p12;
wire   [63:0] tmp_12_fu_2344_p14;
wire   [63:0] tmp_12_fu_2344_p16;
wire   [63:0] tmp_12_fu_2344_p17;
wire   [63:0] tmp_13_fu_2415_p2;
wire   [63:0] tmp_13_fu_2415_p4;
wire   [63:0] tmp_13_fu_2415_p6;
wire   [63:0] tmp_13_fu_2415_p8;
wire   [63:0] tmp_13_fu_2415_p10;
wire   [63:0] tmp_13_fu_2415_p12;
wire   [63:0] tmp_13_fu_2415_p14;
wire   [63:0] tmp_13_fu_2415_p16;
wire   [63:0] tmp_13_fu_2415_p17;
wire   [63:0] tmp_14_fu_2486_p2;
wire   [63:0] tmp_14_fu_2486_p4;
wire   [63:0] tmp_14_fu_2486_p6;
wire   [63:0] tmp_14_fu_2486_p8;
wire   [63:0] tmp_14_fu_2486_p10;
wire   [63:0] tmp_14_fu_2486_p12;
wire   [63:0] tmp_14_fu_2486_p14;
wire   [63:0] tmp_14_fu_2486_p16;
wire   [63:0] tmp_14_fu_2486_p17;
reg   [1:0] grp_fu_1547_opcode;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage39_00001;
wire    ap_block_pp0_stage47_00001;
wire    ap_block_pp0_stage55_00001;
wire    ap_block_pp0_stage63_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [63:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_fu_1627_p1;
wire   [5:0] tmp_fu_1627_p3;
wire   [5:0] tmp_fu_1627_p5;
wire   [5:0] tmp_fu_1627_p7;
wire  signed [5:0] tmp_fu_1627_p9;
wire  signed [5:0] tmp_fu_1627_p11;
wire  signed [5:0] tmp_fu_1627_p13;
wire  signed [5:0] tmp_fu_1627_p15;
wire   [5:0] tmp_2_fu_1667_p1;
wire   [5:0] tmp_2_fu_1667_p3;
wire   [5:0] tmp_2_fu_1667_p5;
wire   [5:0] tmp_2_fu_1667_p7;
wire  signed [5:0] tmp_2_fu_1667_p9;
wire  signed [5:0] tmp_2_fu_1667_p11;
wire  signed [5:0] tmp_2_fu_1667_p13;
wire  signed [5:0] tmp_2_fu_1667_p15;
wire   [5:0] tmp_3_fu_1707_p1;
wire   [5:0] tmp_3_fu_1707_p3;
wire   [5:0] tmp_3_fu_1707_p5;
wire   [5:0] tmp_3_fu_1707_p7;
wire  signed [5:0] tmp_3_fu_1707_p9;
wire  signed [5:0] tmp_3_fu_1707_p11;
wire  signed [5:0] tmp_3_fu_1707_p13;
wire  signed [5:0] tmp_3_fu_1707_p15;
wire   [5:0] tmp_4_fu_1747_p1;
wire   [5:0] tmp_4_fu_1747_p3;
wire   [5:0] tmp_4_fu_1747_p5;
wire   [5:0] tmp_4_fu_1747_p7;
wire  signed [5:0] tmp_4_fu_1747_p9;
wire  signed [5:0] tmp_4_fu_1747_p11;
wire  signed [5:0] tmp_4_fu_1747_p13;
wire  signed [5:0] tmp_4_fu_1747_p15;
wire   [5:0] tmp_5_fu_1787_p1;
wire   [5:0] tmp_5_fu_1787_p3;
wire   [5:0] tmp_5_fu_1787_p5;
wire   [5:0] tmp_5_fu_1787_p7;
wire  signed [5:0] tmp_5_fu_1787_p9;
wire  signed [5:0] tmp_5_fu_1787_p11;
wire  signed [5:0] tmp_5_fu_1787_p13;
wire  signed [5:0] tmp_5_fu_1787_p15;
wire   [5:0] tmp_6_fu_1827_p1;
wire   [5:0] tmp_6_fu_1827_p3;
wire   [5:0] tmp_6_fu_1827_p5;
wire   [5:0] tmp_6_fu_1827_p7;
wire  signed [5:0] tmp_6_fu_1827_p9;
wire  signed [5:0] tmp_6_fu_1827_p11;
wire  signed [5:0] tmp_6_fu_1827_p13;
wire  signed [5:0] tmp_6_fu_1827_p15;
wire   [5:0] tmp_7_fu_1867_p1;
wire   [5:0] tmp_7_fu_1867_p3;
wire   [5:0] tmp_7_fu_1867_p5;
wire   [5:0] tmp_7_fu_1867_p7;
wire  signed [5:0] tmp_7_fu_1867_p9;
wire  signed [5:0] tmp_7_fu_1867_p11;
wire  signed [5:0] tmp_7_fu_1867_p13;
wire  signed [5:0] tmp_7_fu_1867_p15;
wire   [5:0] tmp_8_fu_1907_p1;
wire   [5:0] tmp_8_fu_1907_p3;
wire   [5:0] tmp_8_fu_1907_p5;
wire   [5:0] tmp_8_fu_1907_p7;
wire  signed [5:0] tmp_8_fu_1907_p9;
wire  signed [5:0] tmp_8_fu_1907_p11;
wire  signed [5:0] tmp_8_fu_1907_p13;
wire  signed [5:0] tmp_8_fu_1907_p15;
wire   [5:0] tmp_1_fu_1989_p1;
wire   [5:0] tmp_1_fu_1989_p3;
wire   [5:0] tmp_1_fu_1989_p5;
wire   [5:0] tmp_1_fu_1989_p7;
wire  signed [5:0] tmp_1_fu_1989_p9;
wire  signed [5:0] tmp_1_fu_1989_p11;
wire  signed [5:0] tmp_1_fu_1989_p13;
wire  signed [5:0] tmp_1_fu_1989_p15;
wire   [5:0] tmp_9_fu_2060_p1;
wire   [5:0] tmp_9_fu_2060_p3;
wire   [5:0] tmp_9_fu_2060_p5;
wire   [5:0] tmp_9_fu_2060_p7;
wire  signed [5:0] tmp_9_fu_2060_p9;
wire  signed [5:0] tmp_9_fu_2060_p11;
wire  signed [5:0] tmp_9_fu_2060_p13;
wire  signed [5:0] tmp_9_fu_2060_p15;
wire   [5:0] tmp_s_fu_2131_p1;
wire   [5:0] tmp_s_fu_2131_p3;
wire   [5:0] tmp_s_fu_2131_p5;
wire   [5:0] tmp_s_fu_2131_p7;
wire  signed [5:0] tmp_s_fu_2131_p9;
wire  signed [5:0] tmp_s_fu_2131_p11;
wire  signed [5:0] tmp_s_fu_2131_p13;
wire  signed [5:0] tmp_s_fu_2131_p15;
wire   [5:0] tmp_10_fu_2202_p1;
wire   [5:0] tmp_10_fu_2202_p3;
wire   [5:0] tmp_10_fu_2202_p5;
wire   [5:0] tmp_10_fu_2202_p7;
wire  signed [5:0] tmp_10_fu_2202_p9;
wire  signed [5:0] tmp_10_fu_2202_p11;
wire  signed [5:0] tmp_10_fu_2202_p13;
wire  signed [5:0] tmp_10_fu_2202_p15;
wire   [5:0] tmp_11_fu_2273_p1;
wire   [5:0] tmp_11_fu_2273_p3;
wire   [5:0] tmp_11_fu_2273_p5;
wire   [5:0] tmp_11_fu_2273_p7;
wire  signed [5:0] tmp_11_fu_2273_p9;
wire  signed [5:0] tmp_11_fu_2273_p11;
wire  signed [5:0] tmp_11_fu_2273_p13;
wire  signed [5:0] tmp_11_fu_2273_p15;
wire   [5:0] tmp_12_fu_2344_p1;
wire   [5:0] tmp_12_fu_2344_p3;
wire   [5:0] tmp_12_fu_2344_p5;
wire   [5:0] tmp_12_fu_2344_p7;
wire  signed [5:0] tmp_12_fu_2344_p9;
wire  signed [5:0] tmp_12_fu_2344_p11;
wire  signed [5:0] tmp_12_fu_2344_p13;
wire  signed [5:0] tmp_12_fu_2344_p15;
wire   [5:0] tmp_13_fu_2415_p1;
wire   [5:0] tmp_13_fu_2415_p3;
wire   [5:0] tmp_13_fu_2415_p5;
wire   [5:0] tmp_13_fu_2415_p7;
wire  signed [5:0] tmp_13_fu_2415_p9;
wire  signed [5:0] tmp_13_fu_2415_p11;
wire  signed [5:0] tmp_13_fu_2415_p13;
wire  signed [5:0] tmp_13_fu_2415_p15;
wire   [5:0] tmp_14_fu_2486_p1;
wire   [5:0] tmp_14_fu_2486_p3;
wire   [5:0] tmp_14_fu_2486_p5;
wire   [5:0] tmp_14_fu_2486_p7;
wire  signed [5:0] tmp_14_fu_2486_p9;
wire  signed [5:0] tmp_14_fu_2486_p11;
wire  signed [5:0] tmp_14_fu_2486_p13;
wire  signed [5:0] tmp_14_fu_2486_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_316 = 64'd0;
#0 i_1_fu_320 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3527(.din0(d_biases1_0_val),.din1(d_biases1_8_val),.din2(d_biases1_16_val),.din3(d_biases1_24_val),.din4(d_biases1_32_val),.din5(d_biases1_40_val),.din6(d_biases1_48_val),.din7(d_biases1_56_val),.def(tmp_fu_1627_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_fu_1627_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3528(.din0(d_biases1_1_val),.din1(d_biases1_9_val),.din2(d_biases1_17_val),.din3(d_biases1_25_val),.din4(d_biases1_33_val),.din5(d_biases1_41_val),.din6(d_biases1_49_val),.din7(d_biases1_57_val),.def(tmp_2_fu_1667_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_2_fu_1667_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3529(.din0(d_biases1_2_val),.din1(d_biases1_10_val),.din2(d_biases1_18_val),.din3(d_biases1_26_val),.din4(d_biases1_34_val),.din5(d_biases1_42_val),.din6(d_biases1_50_val),.din7(d_biases1_58_val),.def(tmp_3_fu_1707_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_3_fu_1707_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3530(.din0(d_biases1_3_val),.din1(d_biases1_11_val),.din2(d_biases1_19_val),.din3(d_biases1_27_val),.din4(d_biases1_35_val),.din5(d_biases1_43_val),.din6(d_biases1_51_val),.din7(d_biases1_59_val),.def(tmp_4_fu_1747_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_4_fu_1747_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3531(.din0(d_biases1_4_val),.din1(d_biases1_12_val),.din2(d_biases1_20_val),.din3(d_biases1_28_val),.din4(d_biases1_36_val),.din5(d_biases1_44_val),.din6(d_biases1_52_val),.din7(d_biases1_60_val),.def(tmp_5_fu_1787_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_5_fu_1787_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3532(.din0(d_biases1_5_val),.din1(d_biases1_13_val),.din2(d_biases1_21_val),.din3(d_biases1_29_val),.din4(d_biases1_37_val),.din5(d_biases1_45_val),.din6(d_biases1_53_val),.din7(d_biases1_61_val),.def(tmp_6_fu_1827_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_6_fu_1827_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3533(.din0(d_biases1_6_val),.din1(d_biases1_14_val),.din2(d_biases1_22_val),.din3(d_biases1_30_val),.din4(d_biases1_38_val),.din5(d_biases1_46_val),.din6(d_biases1_54_val),.din7(d_biases1_62_val),.def(tmp_7_fu_1867_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_7_fu_1867_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3534(.din0(d_biases1_7_val),.din1(d_biases1_15_val),.din2(d_biases1_23_val),.din3(d_biases1_31_val),.din4(d_biases1_39_val),.din5(d_biases1_47_val),.din6(d_biases1_55_val),.din7(d_biases1_63_val),.def(tmp_8_fu_1907_p17),.sel(trunc_ln132_fu_1623_p1),.dout(tmp_8_fu_1907_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3535(.din0(tmp_1_fu_1989_p2),.din1(tmp_1_fu_1989_p4),.din2(tmp_1_fu_1989_p6),.din3(tmp_1_fu_1989_p8),.din4(tmp_1_fu_1989_p10),.din5(tmp_1_fu_1989_p12),.din6(tmp_1_fu_1989_p14),.din7(tmp_1_fu_1989_p16),.def(tmp_1_fu_1989_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_1_fu_1989_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3536(.din0(tmp_9_fu_2060_p2),.din1(tmp_9_fu_2060_p4),.din2(tmp_9_fu_2060_p6),.din3(tmp_9_fu_2060_p8),.din4(tmp_9_fu_2060_p10),.din5(tmp_9_fu_2060_p12),.din6(tmp_9_fu_2060_p14),.din7(tmp_9_fu_2060_p16),.def(tmp_9_fu_2060_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_9_fu_2060_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3537(.din0(tmp_s_fu_2131_p2),.din1(tmp_s_fu_2131_p4),.din2(tmp_s_fu_2131_p6),.din3(tmp_s_fu_2131_p8),.din4(tmp_s_fu_2131_p10),.din5(tmp_s_fu_2131_p12),.din6(tmp_s_fu_2131_p14),.din7(tmp_s_fu_2131_p16),.def(tmp_s_fu_2131_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_s_fu_2131_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3538(.din0(tmp_10_fu_2202_p2),.din1(tmp_10_fu_2202_p4),.din2(tmp_10_fu_2202_p6),.din3(tmp_10_fu_2202_p8),.din4(tmp_10_fu_2202_p10),.din5(tmp_10_fu_2202_p12),.din6(tmp_10_fu_2202_p14),.din7(tmp_10_fu_2202_p16),.def(tmp_10_fu_2202_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_10_fu_2202_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3539(.din0(tmp_11_fu_2273_p2),.din1(tmp_11_fu_2273_p4),.din2(tmp_11_fu_2273_p6),.din3(tmp_11_fu_2273_p8),.din4(tmp_11_fu_2273_p10),.din5(tmp_11_fu_2273_p12),.din6(tmp_11_fu_2273_p14),.din7(tmp_11_fu_2273_p16),.def(tmp_11_fu_2273_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_11_fu_2273_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3540(.din0(tmp_12_fu_2344_p2),.din1(tmp_12_fu_2344_p4),.din2(tmp_12_fu_2344_p6),.din3(tmp_12_fu_2344_p8),.din4(tmp_12_fu_2344_p10),.din5(tmp_12_fu_2344_p12),.din6(tmp_12_fu_2344_p14),.din7(tmp_12_fu_2344_p16),.def(tmp_12_fu_2344_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_12_fu_2344_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3541(.din0(tmp_13_fu_2415_p2),.din1(tmp_13_fu_2415_p4),.din2(tmp_13_fu_2415_p6),.din3(tmp_13_fu_2415_p8),.din4(tmp_13_fu_2415_p10),.din5(tmp_13_fu_2415_p12),.din6(tmp_13_fu_2415_p14),.din7(tmp_13_fu_2415_p16),.def(tmp_13_fu_2415_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_13_fu_2415_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3542(.din0(tmp_14_fu_2486_p2),.din1(tmp_14_fu_2486_p4),.din2(tmp_14_fu_2486_p6),.din3(tmp_14_fu_2486_p8),.din4(tmp_14_fu_2486_p10),.din5(tmp_14_fu_2486_p12),.din6(tmp_14_fu_2486_p14),.din7(tmp_14_fu_2486_p16),.def(tmp_14_fu_2486_p17),.sel(trunc_ln132_reg_2658),.dout(tmp_14_fu_2486_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_316 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        bias_norm_fu_316 <= grp_fu_4943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_320 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_15_reg_2654 == 1'd0))) begin
        i_1_fu_320 <= add_ln132_fu_1947_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_predicate_pred1011_state16 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state16 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state16 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state16 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state16 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state16 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state16 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state16 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
        tmp_14_reg_2750 <= tmp_14_fu_2486_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_predicate_pred1011_state17 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state17 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state17 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state17 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state17 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state17 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state17 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state17 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred1011_state18 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state18 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state18 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state18 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state18 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state18 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state18 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state18 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1011_state19 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state19 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state19 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state19 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state19 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state19 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state19 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state19 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1011_state20 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state20 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state20 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state20 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state20 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state20 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state20 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state20 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1011_state21 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state21 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state21 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state21 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state21 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state21 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state21 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state21 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_predicate_pred1011_state22 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state22 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state22 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state22 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state22 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state22 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state22 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state22 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_predicate_pred1011_state23 <= (~(trunc_ln132_reg_2658 == 6'd0) & ~(trunc_ln132_reg_2658 == 6'd8) & ~(trunc_ln132_reg_2658 == 6'd16) & ~(trunc_ln132_reg_2658 == 6'd24) & ~(trunc_ln132_reg_2658 == 6'd32) & ~(trunc_ln132_reg_2658 == 6'd40) & ~(trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred951_state23 <= ((trunc_ln132_reg_2658 == 6'd48) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred958_state23 <= ((trunc_ln132_reg_2658 == 6'd40) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred965_state23 <= ((trunc_ln132_reg_2658 == 6'd32) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred972_state23 <= ((trunc_ln132_reg_2658 == 6'd24) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred979_state23 <= ((trunc_ln132_reg_2658 == 6'd16) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred986_state23 <= ((trunc_ln132_reg_2658 == 6'd8) & (tmp_15_reg_2654 == 1'd0));
        ap_predicate_pred993_state23 <= ((trunc_ln132_reg_2658 == 6'd0) & (tmp_15_reg_2654 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bias_norm_7_reg_2801 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_2649 <= ap_sig_allocacmp_i;
        tmp_15_reg_2654 <= ap_sig_allocacmp_i[32'd6];
        tmp_2_reg_2675 <= tmp_2_fu_1667_p19;
        tmp_3_reg_2680 <= tmp_3_fu_1707_p19;
        tmp_4_reg_2685 <= tmp_4_fu_1747_p19;
        tmp_5_reg_2690 <= tmp_5_fu_1787_p19;
        tmp_6_reg_2695 <= tmp_6_fu_1827_p19;
        tmp_7_reg_2700 <= tmp_7_fu_1867_p19;
        tmp_8_reg_2705 <= tmp_8_fu_1907_p19;
        tmp_reg_2670 <= tmp_fu_1627_p19;
        trunc_ln132_reg_2658 <= trunc_ln132_fu_1623_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul27_6_reg_2740 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        mul35_7_reg_2796 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1560 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1565 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1570 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1575 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_1580 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_1585 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_1590 <= grp_fu_4947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage62_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62)) | ((1'b0 == ap_block_pp0_stage54_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_1595 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sub30_1_reg_2755 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub30_2_reg_2761 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub30_3_reg_2767 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub30_4_reg_2773 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub30_5_reg_2779 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        sub30_6_reg_2785 <= grp_fu_4939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_10_reg_2725 <= tmp_10_fu_2202_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp_11_reg_2730 <= tmp_11_fu_2273_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        tmp_12_reg_2735 <= tmp_12_fu_2344_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        tmp_13_reg_2745 <= tmp_13_fu_2415_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_1_reg_2710 <= tmp_1_fu_1989_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_9_reg_2715 <= tmp_9_fu_2060_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_s_reg_2720 <= tmp_s_fu_2131_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (tmp_15_reg_2654 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_320;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1) & (tmp_15_reg_2654 == 1'd1))) begin
        bias_norm_out_ap_vld = 1'b1;
    end else begin
        bias_norm_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred993_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_0_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_0_o = biases1_0_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred993_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_0_o_ap_vld = 1'b1;
    end else begin
        biases1_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred986_state18 == 1'b1))) begin
        biases1_10_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_10_o = biases1_10_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred986_state18 == 1'b1))) begin
        biases1_10_o_ap_vld = 1'b1;
    end else begin
        biases1_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred986_state19 == 1'b1))) begin
        biases1_11_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_11_o = biases1_11_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred986_state19 == 1'b1))) begin
        biases1_11_o_ap_vld = 1'b1;
    end else begin
        biases1_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred986_state20 == 1'b1))) begin
        biases1_12_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_12_o = biases1_12_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred986_state20 == 1'b1))) begin
        biases1_12_o_ap_vld = 1'b1;
    end else begin
        biases1_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred986_state21 == 1'b1))) begin
        biases1_13_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_13_o = biases1_13_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred986_state21 == 1'b1))) begin
        biases1_13_o_ap_vld = 1'b1;
    end else begin
        biases1_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred986_state22 == 1'b1))) begin
        biases1_14_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_14_o = biases1_14_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred986_state22 == 1'b1))) begin
        biases1_14_o_ap_vld = 1'b1;
    end else begin
        biases1_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred986_state23 == 1'b1))) begin
        biases1_15_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_15_o = biases1_15_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred986_state23 == 1'b1))) begin
        biases1_15_o_ap_vld = 1'b1;
    end else begin
        biases1_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred979_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_16_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_16_o = biases1_16_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred979_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_16_o_ap_vld = 1'b1;
    end else begin
        biases1_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred979_state17 == 1'b1))) begin
        biases1_17_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_17_o = biases1_17_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred979_state17 == 1'b1))) begin
        biases1_17_o_ap_vld = 1'b1;
    end else begin
        biases1_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred979_state18 == 1'b1))) begin
        biases1_18_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_18_o = biases1_18_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred979_state18 == 1'b1))) begin
        biases1_18_o_ap_vld = 1'b1;
    end else begin
        biases1_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred979_state19 == 1'b1))) begin
        biases1_19_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_19_o = biases1_19_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred979_state19 == 1'b1))) begin
        biases1_19_o_ap_vld = 1'b1;
    end else begin
        biases1_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred993_state17 == 1'b1))) begin
        biases1_1_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_1_o = biases1_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred993_state17 == 1'b1))) begin
        biases1_1_o_ap_vld = 1'b1;
    end else begin
        biases1_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred979_state20 == 1'b1))) begin
        biases1_20_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_20_o = biases1_20_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred979_state20 == 1'b1))) begin
        biases1_20_o_ap_vld = 1'b1;
    end else begin
        biases1_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred979_state21 == 1'b1))) begin
        biases1_21_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_21_o = biases1_21_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred979_state21 == 1'b1))) begin
        biases1_21_o_ap_vld = 1'b1;
    end else begin
        biases1_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred979_state22 == 1'b1))) begin
        biases1_22_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_22_o = biases1_22_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred979_state22 == 1'b1))) begin
        biases1_22_o_ap_vld = 1'b1;
    end else begin
        biases1_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred979_state23 == 1'b1))) begin
        biases1_23_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_23_o = biases1_23_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred979_state23 == 1'b1))) begin
        biases1_23_o_ap_vld = 1'b1;
    end else begin
        biases1_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred972_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_24_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_24_o = biases1_24_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred972_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_24_o_ap_vld = 1'b1;
    end else begin
        biases1_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred972_state17 == 1'b1))) begin
        biases1_25_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_25_o = biases1_25_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred972_state17 == 1'b1))) begin
        biases1_25_o_ap_vld = 1'b1;
    end else begin
        biases1_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred972_state18 == 1'b1))) begin
        biases1_26_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_26_o = biases1_26_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred972_state18 == 1'b1))) begin
        biases1_26_o_ap_vld = 1'b1;
    end else begin
        biases1_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred972_state19 == 1'b1))) begin
        biases1_27_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_27_o = biases1_27_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred972_state19 == 1'b1))) begin
        biases1_27_o_ap_vld = 1'b1;
    end else begin
        biases1_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred972_state20 == 1'b1))) begin
        biases1_28_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_28_o = biases1_28_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred972_state20 == 1'b1))) begin
        biases1_28_o_ap_vld = 1'b1;
    end else begin
        biases1_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred972_state21 == 1'b1))) begin
        biases1_29_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_29_o = biases1_29_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred972_state21 == 1'b1))) begin
        biases1_29_o_ap_vld = 1'b1;
    end else begin
        biases1_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred993_state18 == 1'b1))) begin
        biases1_2_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_2_o = biases1_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred993_state18 == 1'b1))) begin
        biases1_2_o_ap_vld = 1'b1;
    end else begin
        biases1_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred972_state22 == 1'b1))) begin
        biases1_30_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_30_o = biases1_30_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred972_state22 == 1'b1))) begin
        biases1_30_o_ap_vld = 1'b1;
    end else begin
        biases1_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred972_state23 == 1'b1))) begin
        biases1_31_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_31_o = biases1_31_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred972_state23 == 1'b1))) begin
        biases1_31_o_ap_vld = 1'b1;
    end else begin
        biases1_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred965_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_32_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_32_o = biases1_32_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred965_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_32_o_ap_vld = 1'b1;
    end else begin
        biases1_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred965_state17 == 1'b1))) begin
        biases1_33_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_33_o = biases1_33_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred965_state17 == 1'b1))) begin
        biases1_33_o_ap_vld = 1'b1;
    end else begin
        biases1_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred965_state18 == 1'b1))) begin
        biases1_34_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_34_o = biases1_34_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred965_state18 == 1'b1))) begin
        biases1_34_o_ap_vld = 1'b1;
    end else begin
        biases1_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred965_state19 == 1'b1))) begin
        biases1_35_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_35_o = biases1_35_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred965_state19 == 1'b1))) begin
        biases1_35_o_ap_vld = 1'b1;
    end else begin
        biases1_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred965_state20 == 1'b1))) begin
        biases1_36_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_36_o = biases1_36_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred965_state20 == 1'b1))) begin
        biases1_36_o_ap_vld = 1'b1;
    end else begin
        biases1_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred965_state21 == 1'b1))) begin
        biases1_37_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_37_o = biases1_37_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred965_state21 == 1'b1))) begin
        biases1_37_o_ap_vld = 1'b1;
    end else begin
        biases1_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred965_state22 == 1'b1))) begin
        biases1_38_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_38_o = biases1_38_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred965_state22 == 1'b1))) begin
        biases1_38_o_ap_vld = 1'b1;
    end else begin
        biases1_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred965_state23 == 1'b1))) begin
        biases1_39_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_39_o = biases1_39_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred965_state23 == 1'b1))) begin
        biases1_39_o_ap_vld = 1'b1;
    end else begin
        biases1_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred993_state19 == 1'b1))) begin
        biases1_3_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_3_o = biases1_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred993_state19 == 1'b1))) begin
        biases1_3_o_ap_vld = 1'b1;
    end else begin
        biases1_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred958_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_40_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_40_o = biases1_40_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred958_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_40_o_ap_vld = 1'b1;
    end else begin
        biases1_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred958_state17 == 1'b1))) begin
        biases1_41_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_41_o = biases1_41_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred958_state17 == 1'b1))) begin
        biases1_41_o_ap_vld = 1'b1;
    end else begin
        biases1_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred958_state18 == 1'b1))) begin
        biases1_42_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_42_o = biases1_42_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred958_state18 == 1'b1))) begin
        biases1_42_o_ap_vld = 1'b1;
    end else begin
        biases1_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred958_state19 == 1'b1))) begin
        biases1_43_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_43_o = biases1_43_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred958_state19 == 1'b1))) begin
        biases1_43_o_ap_vld = 1'b1;
    end else begin
        biases1_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred958_state20 == 1'b1))) begin
        biases1_44_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_44_o = biases1_44_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred958_state20 == 1'b1))) begin
        biases1_44_o_ap_vld = 1'b1;
    end else begin
        biases1_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred958_state21 == 1'b1))) begin
        biases1_45_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_45_o = biases1_45_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred958_state21 == 1'b1))) begin
        biases1_45_o_ap_vld = 1'b1;
    end else begin
        biases1_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred958_state22 == 1'b1))) begin
        biases1_46_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_46_o = biases1_46_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred958_state22 == 1'b1))) begin
        biases1_46_o_ap_vld = 1'b1;
    end else begin
        biases1_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred958_state23 == 1'b1))) begin
        biases1_47_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_47_o = biases1_47_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred958_state23 == 1'b1))) begin
        biases1_47_o_ap_vld = 1'b1;
    end else begin
        biases1_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred951_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_48_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_48_o = biases1_48_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred951_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_48_o_ap_vld = 1'b1;
    end else begin
        biases1_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred951_state17 == 1'b1))) begin
        biases1_49_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_49_o = biases1_49_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred951_state17 == 1'b1))) begin
        biases1_49_o_ap_vld = 1'b1;
    end else begin
        biases1_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred993_state20 == 1'b1))) begin
        biases1_4_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_4_o = biases1_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred993_state20 == 1'b1))) begin
        biases1_4_o_ap_vld = 1'b1;
    end else begin
        biases1_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred951_state18 == 1'b1))) begin
        biases1_50_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_50_o = biases1_50_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred951_state18 == 1'b1))) begin
        biases1_50_o_ap_vld = 1'b1;
    end else begin
        biases1_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred951_state19 == 1'b1))) begin
        biases1_51_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_51_o = biases1_51_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred951_state19 == 1'b1))) begin
        biases1_51_o_ap_vld = 1'b1;
    end else begin
        biases1_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred951_state20 == 1'b1))) begin
        biases1_52_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_52_o = biases1_52_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred951_state20 == 1'b1))) begin
        biases1_52_o_ap_vld = 1'b1;
    end else begin
        biases1_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred951_state21 == 1'b1))) begin
        biases1_53_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_53_o = biases1_53_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred951_state21 == 1'b1))) begin
        biases1_53_o_ap_vld = 1'b1;
    end else begin
        biases1_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred951_state22 == 1'b1))) begin
        biases1_54_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_54_o = biases1_54_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred951_state22 == 1'b1))) begin
        biases1_54_o_ap_vld = 1'b1;
    end else begin
        biases1_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred951_state23 == 1'b1))) begin
        biases1_55_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_55_o = biases1_55_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred951_state23 == 1'b1))) begin
        biases1_55_o_ap_vld = 1'b1;
    end else begin
        biases1_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1011_state16 == 1'b1))) begin
        biases1_56_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_56_o = biases1_56_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1011_state16 == 1'b1))) begin
        biases1_56_o_ap_vld = 1'b1;
    end else begin
        biases1_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred1011_state17 == 1'b1))) begin
        biases1_57_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_57_o = biases1_57_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred1011_state17 == 1'b1))) begin
        biases1_57_o_ap_vld = 1'b1;
    end else begin
        biases1_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1011_state18 == 1'b1))) begin
        biases1_58_o = bitcast_ln133_66_fu_2549_p1;
    end else begin
        biases1_58_o = biases1_58_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1011_state18 == 1'b1))) begin
        biases1_58_o_ap_vld = 1'b1;
    end else begin
        biases1_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1011_state19 == 1'b1))) begin
        biases1_59_o = bitcast_ln133_67_fu_2561_p1;
    end else begin
        biases1_59_o = biases1_59_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1011_state19 == 1'b1))) begin
        biases1_59_o_ap_vld = 1'b1;
    end else begin
        biases1_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred993_state21 == 1'b1))) begin
        biases1_5_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_5_o = biases1_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred993_state21 == 1'b1))) begin
        biases1_5_o_ap_vld = 1'b1;
    end else begin
        biases1_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1011_state20 == 1'b1))) begin
        biases1_60_o = bitcast_ln133_68_fu_2573_p1;
    end else begin
        biases1_60_o = biases1_60_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1011_state20 == 1'b1))) begin
        biases1_60_o_ap_vld = 1'b1;
    end else begin
        biases1_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1011_state21 == 1'b1))) begin
        biases1_61_o = bitcast_ln133_69_fu_2585_p1;
    end else begin
        biases1_61_o = biases1_61_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1011_state21 == 1'b1))) begin
        biases1_61_o_ap_vld = 1'b1;
    end else begin
        biases1_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1011_state22 == 1'b1))) begin
        biases1_62_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_62_o = biases1_62_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1011_state22 == 1'b1))) begin
        biases1_62_o_ap_vld = 1'b1;
    end else begin
        biases1_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1011_state23 == 1'b1))) begin
        biases1_63_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_63_o = biases1_63_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1011_state23 == 1'b1))) begin
        biases1_63_o_ap_vld = 1'b1;
    end else begin
        biases1_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred993_state22 == 1'b1))) begin
        biases1_6_o = bitcast_ln133_70_fu_2597_p1;
    end else begin
        biases1_6_o = biases1_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred993_state22 == 1'b1))) begin
        biases1_6_o_ap_vld = 1'b1;
    end else begin
        biases1_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred993_state23 == 1'b1))) begin
        biases1_7_o = bitcast_ln133_71_fu_2609_p1;
    end else begin
        biases1_7_o = biases1_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred993_state23 == 1'b1))) begin
        biases1_7_o_ap_vld = 1'b1;
    end else begin
        biases1_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_01001) & (ap_predicate_pred986_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_8_o = bitcast_ln133_64_fu_2525_p1;
    end else begin
        biases1_8_o = biases1_8_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_predicate_pred986_state16 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        biases1_8_o_ap_vld = 1'b1;
    end else begin
        biases1_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred986_state17 == 1'b1))) begin
        biases1_9_o = bitcast_ln133_65_fu_2537_p1;
    end else begin
        biases1_9_o = biases1_9_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (ap_predicate_pred986_state17 == 1'b1))) begin
        biases1_9_o_ap_vld = 1'b1;
    end else begin
        biases1_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_15_reg_2654 == 1'd0)))) begin
        grp_fu_1547_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage63_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage55_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage39_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_15_reg_2654 == 1'd0)) | ((1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_15_reg_2654 == 1'd0)))) begin
        grp_fu_1547_opcode = 2'd0;
    end else begin
        grp_fu_1547_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63)) | ((1'b0 == ap_block_pp0_stage55) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        grp_fu_1547_p0 = reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1547_p0 = bias_norm_fu_316;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1547_p0 = tmp_14_reg_2750;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1547_p0 = tmp_13_reg_2745;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1547_p0 = tmp_12_reg_2735;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1547_p0 = tmp_11_reg_2730;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1547_p0 = tmp_10_reg_2725;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1547_p0 = tmp_s_reg_2720;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1547_p0 = tmp_9_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1547_p0 = tmp_1_reg_2710;
    end else begin
        grp_fu_1547_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_1547_p1 = reg_1590;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1547_p1 = mul27_6_reg_2740;
    end else if ((((1'b0 == ap_block_pp0_stage63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_1547_p1 = reg_1585;
    end else if ((((1'b0 == ap_block_pp0_stage55) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_1547_p1 = reg_1580;
    end else if ((((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1547_p1 = reg_1575;
    end else if ((((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1547_p1 = reg_1570;
    end else if ((((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1547_p1 = reg_1565;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1547_p1 = reg_1560;
    end else begin
        grp_fu_1547_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1555_p0 = sub30_6_reg_2785;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1555_p0 = sub30_5_reg_2779;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1555_p0 = sub30_4_reg_2773;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1555_p0 = sub30_3_reg_2767;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1555_p0 = sub30_2_reg_2761;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1555_p0 = sub30_1_reg_2755;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_1555_p0 = reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1555_p0 = tmp_8_reg_2705;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1555_p0 = tmp_7_reg_2700;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1555_p0 = tmp_6_reg_2695;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1555_p0 = tmp_5_reg_2690;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1555_p0 = tmp_4_reg_2685;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1555_p0 = tmp_3_reg_2680;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1555_p0 = tmp_2_reg_2675;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1555_p0 = tmp_reg_2670;
    end else begin
        grp_fu_1555_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1555_p1 = sub30_6_reg_2785;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1555_p1 = sub30_5_reg_2779;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1555_p1 = sub30_4_reg_2773;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1555_p1 = sub30_3_reg_2767;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1555_p1 = sub30_2_reg_2761;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1555_p1 = sub30_1_reg_2755;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_1555_p1 = reg_1595;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1555_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1555_p1 = 'bx;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        ap_ST_fsm_pp0_stage60 : begin
            if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end
        end
        ap_ST_fsm_pp0_stage61 : begin
            if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end
        end
        ap_ST_fsm_pp0_stage62 : begin
            if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end
        end
        ap_ST_fsm_pp0_stage63 : begin
            if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln132_fu_1947_p2 = (i_reg_2649 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage54 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage62 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
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
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage19_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
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
assign bias_norm_out = bias_norm_fu_316;
assign bitcast_ln133_64_fu_2525_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_65_fu_2537_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_66_fu_2549_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_67_fu_2561_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_68_fu_2573_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_69_fu_2585_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_70_fu_2597_p1 = grp_fu_4939_p_dout0;
assign bitcast_ln133_71_fu_2609_p1 = grp_fu_4939_p_dout0;
assign grp_fu_4939_p_ce = 1'b1;
assign grp_fu_4939_p_din0 = grp_fu_1547_p0;
assign grp_fu_4939_p_din1 = grp_fu_1547_p1;
assign grp_fu_4939_p_opcode = grp_fu_1547_opcode;
assign grp_fu_4943_p_ce = 1'b1;
assign grp_fu_4943_p_din0 = bias_norm_7_reg_2801;
assign grp_fu_4943_p_din1 = mul35_7_reg_2796;
assign grp_fu_4943_p_opcode = 2'd0;
assign grp_fu_4947_p_ce = 1'b1;
assign grp_fu_4947_p_din0 = grp_fu_1555_p0;
assign grp_fu_4947_p_din1 = grp_fu_1555_p1;
assign tmp_10_fu_2202_p10 = biases1_35_i;
assign tmp_10_fu_2202_p12 = biases1_43_i;
assign tmp_10_fu_2202_p14 = biases1_51_i;
assign tmp_10_fu_2202_p16 = biases1_59_i;
assign tmp_10_fu_2202_p17 = 'bx;
assign tmp_10_fu_2202_p2 = biases1_3_i;
assign tmp_10_fu_2202_p4 = biases1_11_i;
assign tmp_10_fu_2202_p6 = biases1_19_i;
assign tmp_10_fu_2202_p8 = biases1_27_i;
assign tmp_11_fu_2273_p10 = biases1_36_i;
assign tmp_11_fu_2273_p12 = biases1_44_i;
assign tmp_11_fu_2273_p14 = biases1_52_i;
assign tmp_11_fu_2273_p16 = biases1_60_i;
assign tmp_11_fu_2273_p17 = 'bx;
assign tmp_11_fu_2273_p2 = biases1_4_i;
assign tmp_11_fu_2273_p4 = biases1_12_i;
assign tmp_11_fu_2273_p6 = biases1_20_i;
assign tmp_11_fu_2273_p8 = biases1_28_i;
assign tmp_12_fu_2344_p10 = biases1_37_i;
assign tmp_12_fu_2344_p12 = biases1_45_i;
assign tmp_12_fu_2344_p14 = biases1_53_i;
assign tmp_12_fu_2344_p16 = biases1_61_i;
assign tmp_12_fu_2344_p17 = 'bx;
assign tmp_12_fu_2344_p2 = biases1_5_i;
assign tmp_12_fu_2344_p4 = biases1_13_i;
assign tmp_12_fu_2344_p6 = biases1_21_i;
assign tmp_12_fu_2344_p8 = biases1_29_i;
assign tmp_13_fu_2415_p10 = biases1_38_i;
assign tmp_13_fu_2415_p12 = biases1_46_i;
assign tmp_13_fu_2415_p14 = biases1_54_i;
assign tmp_13_fu_2415_p16 = biases1_62_i;
assign tmp_13_fu_2415_p17 = 'bx;
assign tmp_13_fu_2415_p2 = biases1_6_i;
assign tmp_13_fu_2415_p4 = biases1_14_i;
assign tmp_13_fu_2415_p6 = biases1_22_i;
assign tmp_13_fu_2415_p8 = biases1_30_i;
assign tmp_14_fu_2486_p10 = biases1_39_i;
assign tmp_14_fu_2486_p12 = biases1_47_i;
assign tmp_14_fu_2486_p14 = biases1_55_i;
assign tmp_14_fu_2486_p16 = biases1_63_i;
assign tmp_14_fu_2486_p17 = 'bx;
assign tmp_14_fu_2486_p2 = biases1_7_i;
assign tmp_14_fu_2486_p4 = biases1_15_i;
assign tmp_14_fu_2486_p6 = biases1_23_i;
assign tmp_14_fu_2486_p8 = biases1_31_i;
assign tmp_1_fu_1989_p10 = biases1_32_i;
assign tmp_1_fu_1989_p12 = biases1_40_i;
assign tmp_1_fu_1989_p14 = biases1_48_i;
assign tmp_1_fu_1989_p16 = biases1_56_i;
assign tmp_1_fu_1989_p17 = 'bx;
assign tmp_1_fu_1989_p2 = biases1_0_i;
assign tmp_1_fu_1989_p4 = biases1_8_i;
assign tmp_1_fu_1989_p6 = biases1_16_i;
assign tmp_1_fu_1989_p8 = biases1_24_i;
assign tmp_2_fu_1667_p17 = 'bx;
assign tmp_3_fu_1707_p17 = 'bx;
assign tmp_4_fu_1747_p17 = 'bx;
assign tmp_5_fu_1787_p17 = 'bx;
assign tmp_6_fu_1827_p17 = 'bx;
assign tmp_7_fu_1867_p17 = 'bx;
assign tmp_8_fu_1907_p17 = 'bx;
assign tmp_9_fu_2060_p10 = biases1_33_i;
assign tmp_9_fu_2060_p12 = biases1_41_i;
assign tmp_9_fu_2060_p14 = biases1_49_i;
assign tmp_9_fu_2060_p16 = biases1_57_i;
assign tmp_9_fu_2060_p17 = 'bx;
assign tmp_9_fu_2060_p2 = biases1_1_i;
assign tmp_9_fu_2060_p4 = biases1_9_i;
assign tmp_9_fu_2060_p6 = biases1_17_i;
assign tmp_9_fu_2060_p8 = biases1_25_i;
assign tmp_fu_1627_p17 = 'bx;
assign tmp_s_fu_2131_p10 = biases1_34_i;
assign tmp_s_fu_2131_p12 = biases1_42_i;
assign tmp_s_fu_2131_p14 = biases1_50_i;
assign tmp_s_fu_2131_p16 = biases1_58_i;
assign tmp_s_fu_2131_p17 = 'bx;
assign tmp_s_fu_2131_p2 = biases1_2_i;
assign tmp_s_fu_2131_p4 = biases1_10_i;
assign tmp_s_fu_2131_p6 = biases1_18_i;
assign tmp_s_fu_2131_p8 = biases1_26_i;
assign trunc_ln132_fu_1623_p1 = ap_sig_allocacmp_i[5:0];
endmodule 
