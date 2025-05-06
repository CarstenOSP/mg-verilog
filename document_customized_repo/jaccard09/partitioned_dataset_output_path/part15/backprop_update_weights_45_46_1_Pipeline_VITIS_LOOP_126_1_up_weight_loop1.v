
module backprop_update_weights_45_46_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_33_address0,d_weights1_33_ce0,d_weights1_33_q0,d_weights1_41_address0,d_weights1_41_ce0,d_weights1_41_q0,d_weights1_49_address0,d_weights1_49_ce0,d_weights1_49_q0,d_weights1_57_address0,d_weights1_57_ce0,d_weights1_57_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_34_address0,d_weights1_34_ce0,d_weights1_34_q0,d_weights1_42_address0,d_weights1_42_ce0,d_weights1_42_q0,d_weights1_50_address0,d_weights1_50_ce0,d_weights1_50_q0,d_weights1_58_address0,d_weights1_58_ce0,d_weights1_58_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_35_address0,d_weights1_35_ce0,d_weights1_35_q0,d_weights1_43_address0,d_weights1_43_ce0,d_weights1_43_q0,d_weights1_51_address0,d_weights1_51_ce0,d_weights1_51_q0,d_weights1_59_address0,d_weights1_59_ce0,d_weights1_59_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_36_address0,d_weights1_36_ce0,d_weights1_36_q0,d_weights1_44_address0,d_weights1_44_ce0,d_weights1_44_q0,d_weights1_52_address0,d_weights1_52_ce0,d_weights1_52_q0,d_weights1_60_address0,d_weights1_60_ce0,d_weights1_60_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_37_address0,d_weights1_37_ce0,d_weights1_37_q0,d_weights1_45_address0,d_weights1_45_ce0,d_weights1_45_q0,d_weights1_53_address0,d_weights1_53_ce0,d_weights1_53_q0,d_weights1_61_address0,d_weights1_61_ce0,d_weights1_61_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_38_address0,d_weights1_38_ce0,d_weights1_38_q0,d_weights1_46_address0,d_weights1_46_ce0,d_weights1_46_q0,d_weights1_54_address0,d_weights1_54_ce0,d_weights1_54_q0,d_weights1_62_address0,d_weights1_62_ce0,d_weights1_62_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,d_weights1_39_address0,d_weights1_39_ce0,d_weights1_39_q0,d_weights1_47_address0,d_weights1_47_ce0,d_weights1_47_q0,d_weights1_55_address0,d_weights1_55_ce0,d_weights1_55_q0,d_weights1_63_address0,d_weights1_63_ce0,d_weights1_63_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_32_address0,d_weights1_32_ce0,d_weights1_32_q0,d_weights1_40_address0,d_weights1_40_ce0,d_weights1_40_q0,d_weights1_48_address0,d_weights1_48_ce0,d_weights1_48_q0,d_weights1_56_address0,d_weights1_56_ce0,d_weights1_56_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_32_address0,weights1_32_ce0,weights1_32_we0,weights1_32_d0,weights1_32_q0,weights1_40_address0,weights1_40_ce0,weights1_40_we0,weights1_40_d0,weights1_40_q0,weights1_48_address0,weights1_48_ce0,weights1_48_we0,weights1_48_d0,weights1_48_q0,weights1_56_address0,weights1_56_ce0,weights1_56_we0,weights1_56_d0,weights1_56_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_33_address0,weights1_33_ce0,weights1_33_we0,weights1_33_d0,weights1_33_q0,weights1_41_address0,weights1_41_ce0,weights1_41_we0,weights1_41_d0,weights1_41_q0,weights1_49_address0,weights1_49_ce0,weights1_49_we0,weights1_49_d0,weights1_49_q0,weights1_57_address0,weights1_57_ce0,weights1_57_we0,weights1_57_d0,weights1_57_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_34_address0,weights1_34_ce0,weights1_34_we0,weights1_34_d0,weights1_34_q0,weights1_42_address0,weights1_42_ce0,weights1_42_we0,weights1_42_d0,weights1_42_q0,weights1_50_address0,weights1_50_ce0,weights1_50_we0,weights1_50_d0,weights1_50_q0,weights1_58_address0,weights1_58_ce0,weights1_58_we0,weights1_58_d0,weights1_58_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_35_address0,weights1_35_ce0,weights1_35_we0,weights1_35_d0,weights1_35_q0,weights1_43_address0,weights1_43_ce0,weights1_43_we0,weights1_43_d0,weights1_43_q0,weights1_51_address0,weights1_51_ce0,weights1_51_we0,weights1_51_d0,weights1_51_q0,weights1_59_address0,weights1_59_ce0,weights1_59_we0,weights1_59_d0,weights1_59_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_36_address0,weights1_36_ce0,weights1_36_we0,weights1_36_d0,weights1_36_q0,weights1_44_address0,weights1_44_ce0,weights1_44_we0,weights1_44_d0,weights1_44_q0,weights1_52_address0,weights1_52_ce0,weights1_52_we0,weights1_52_d0,weights1_52_q0,weights1_60_address0,weights1_60_ce0,weights1_60_we0,weights1_60_d0,weights1_60_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_37_address0,weights1_37_ce0,weights1_37_we0,weights1_37_d0,weights1_37_q0,weights1_45_address0,weights1_45_ce0,weights1_45_we0,weights1_45_d0,weights1_45_q0,weights1_53_address0,weights1_53_ce0,weights1_53_we0,weights1_53_d0,weights1_53_q0,weights1_61_address0,weights1_61_ce0,weights1_61_we0,weights1_61_d0,weights1_61_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_38_address0,weights1_38_ce0,weights1_38_we0,weights1_38_d0,weights1_38_q0,weights1_46_address0,weights1_46_ce0,weights1_46_we0,weights1_46_d0,weights1_46_q0,weights1_54_address0,weights1_54_ce0,weights1_54_we0,weights1_54_d0,weights1_54_q0,weights1_62_address0,weights1_62_ce0,weights1_62_we0,weights1_62_d0,weights1_62_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_39_address0,weights1_39_ce0,weights1_39_we0,weights1_39_d0,weights1_39_q0,weights1_47_address0,weights1_47_ce0,weights1_47_we0,weights1_47_d0,weights1_47_q0,weights1_55_address0,weights1_55_ce0,weights1_55_we0,weights1_55_d0,weights1_55_q0,weights1_63_address0,weights1_63_ce0,weights1_63_we0,weights1_63_d0,weights1_63_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_4927_p_din0,grp_fu_4927_p_din1,grp_fu_4927_p_opcode,grp_fu_4927_p_dout0,grp_fu_4927_p_ce,grp_fu_4931_p_din0,grp_fu_4931_p_din1,grp_fu_4931_p_opcode,grp_fu_4931_p_dout0,grp_fu_4931_p_ce,grp_fu_4935_p_din0,grp_fu_4935_p_din1,grp_fu_4935_p_dout0,grp_fu_4935_p_ce);  
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
output  [3:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [3:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [3:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [3:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [3:0] d_weights1_33_address0;
output   d_weights1_33_ce0;
input  [63:0] d_weights1_33_q0;
output  [3:0] d_weights1_41_address0;
output   d_weights1_41_ce0;
input  [63:0] d_weights1_41_q0;
output  [3:0] d_weights1_49_address0;
output   d_weights1_49_ce0;
input  [63:0] d_weights1_49_q0;
output  [3:0] d_weights1_57_address0;
output   d_weights1_57_ce0;
input  [63:0] d_weights1_57_q0;
output  [3:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [3:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [3:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [3:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [3:0] d_weights1_34_address0;
output   d_weights1_34_ce0;
input  [63:0] d_weights1_34_q0;
output  [3:0] d_weights1_42_address0;
output   d_weights1_42_ce0;
input  [63:0] d_weights1_42_q0;
output  [3:0] d_weights1_50_address0;
output   d_weights1_50_ce0;
input  [63:0] d_weights1_50_q0;
output  [3:0] d_weights1_58_address0;
output   d_weights1_58_ce0;
input  [63:0] d_weights1_58_q0;
output  [3:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [3:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [3:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [3:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [3:0] d_weights1_35_address0;
output   d_weights1_35_ce0;
input  [63:0] d_weights1_35_q0;
output  [3:0] d_weights1_43_address0;
output   d_weights1_43_ce0;
input  [63:0] d_weights1_43_q0;
output  [3:0] d_weights1_51_address0;
output   d_weights1_51_ce0;
input  [63:0] d_weights1_51_q0;
output  [3:0] d_weights1_59_address0;
output   d_weights1_59_ce0;
input  [63:0] d_weights1_59_q0;
output  [3:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [3:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [3:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [3:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [3:0] d_weights1_36_address0;
output   d_weights1_36_ce0;
input  [63:0] d_weights1_36_q0;
output  [3:0] d_weights1_44_address0;
output   d_weights1_44_ce0;
input  [63:0] d_weights1_44_q0;
output  [3:0] d_weights1_52_address0;
output   d_weights1_52_ce0;
input  [63:0] d_weights1_52_q0;
output  [3:0] d_weights1_60_address0;
output   d_weights1_60_ce0;
input  [63:0] d_weights1_60_q0;
output  [3:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [3:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [3:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [3:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [3:0] d_weights1_37_address0;
output   d_weights1_37_ce0;
input  [63:0] d_weights1_37_q0;
output  [3:0] d_weights1_45_address0;
output   d_weights1_45_ce0;
input  [63:0] d_weights1_45_q0;
output  [3:0] d_weights1_53_address0;
output   d_weights1_53_ce0;
input  [63:0] d_weights1_53_q0;
output  [3:0] d_weights1_61_address0;
output   d_weights1_61_ce0;
input  [63:0] d_weights1_61_q0;
output  [3:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [3:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [3:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [3:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [3:0] d_weights1_38_address0;
output   d_weights1_38_ce0;
input  [63:0] d_weights1_38_q0;
output  [3:0] d_weights1_46_address0;
output   d_weights1_46_ce0;
input  [63:0] d_weights1_46_q0;
output  [3:0] d_weights1_54_address0;
output   d_weights1_54_ce0;
input  [63:0] d_weights1_54_q0;
output  [3:0] d_weights1_62_address0;
output   d_weights1_62_ce0;
input  [63:0] d_weights1_62_q0;
output  [3:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [3:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [3:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [3:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [3:0] d_weights1_39_address0;
output   d_weights1_39_ce0;
input  [63:0] d_weights1_39_q0;
output  [3:0] d_weights1_47_address0;
output   d_weights1_47_ce0;
input  [63:0] d_weights1_47_q0;
output  [3:0] d_weights1_55_address0;
output   d_weights1_55_ce0;
input  [63:0] d_weights1_55_q0;
output  [3:0] d_weights1_63_address0;
output   d_weights1_63_ce0;
input  [63:0] d_weights1_63_q0;
output  [3:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [3:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [3:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [3:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [3:0] d_weights1_32_address0;
output   d_weights1_32_ce0;
input  [63:0] d_weights1_32_q0;
output  [3:0] d_weights1_40_address0;
output   d_weights1_40_ce0;
input  [63:0] d_weights1_40_q0;
output  [3:0] d_weights1_48_address0;
output   d_weights1_48_ce0;
input  [63:0] d_weights1_48_q0;
output  [3:0] d_weights1_56_address0;
output   d_weights1_56_ce0;
input  [63:0] d_weights1_56_q0;
output  [3:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [3:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [3:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [3:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [3:0] weights1_32_address0;
output   weights1_32_ce0;
output   weights1_32_we0;
output  [63:0] weights1_32_d0;
input  [63:0] weights1_32_q0;
output  [3:0] weights1_40_address0;
output   weights1_40_ce0;
output   weights1_40_we0;
output  [63:0] weights1_40_d0;
input  [63:0] weights1_40_q0;
output  [3:0] weights1_48_address0;
output   weights1_48_ce0;
output   weights1_48_we0;
output  [63:0] weights1_48_d0;
input  [63:0] weights1_48_q0;
output  [3:0] weights1_56_address0;
output   weights1_56_ce0;
output   weights1_56_we0;
output  [63:0] weights1_56_d0;
input  [63:0] weights1_56_q0;
output  [3:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [3:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [3:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [3:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [3:0] weights1_33_address0;
output   weights1_33_ce0;
output   weights1_33_we0;
output  [63:0] weights1_33_d0;
input  [63:0] weights1_33_q0;
output  [3:0] weights1_41_address0;
output   weights1_41_ce0;
output   weights1_41_we0;
output  [63:0] weights1_41_d0;
input  [63:0] weights1_41_q0;
output  [3:0] weights1_49_address0;
output   weights1_49_ce0;
output   weights1_49_we0;
output  [63:0] weights1_49_d0;
input  [63:0] weights1_49_q0;
output  [3:0] weights1_57_address0;
output   weights1_57_ce0;
output   weights1_57_we0;
output  [63:0] weights1_57_d0;
input  [63:0] weights1_57_q0;
output  [3:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [3:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [3:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [3:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [3:0] weights1_34_address0;
output   weights1_34_ce0;
output   weights1_34_we0;
output  [63:0] weights1_34_d0;
input  [63:0] weights1_34_q0;
output  [3:0] weights1_42_address0;
output   weights1_42_ce0;
output   weights1_42_we0;
output  [63:0] weights1_42_d0;
input  [63:0] weights1_42_q0;
output  [3:0] weights1_50_address0;
output   weights1_50_ce0;
output   weights1_50_we0;
output  [63:0] weights1_50_d0;
input  [63:0] weights1_50_q0;
output  [3:0] weights1_58_address0;
output   weights1_58_ce0;
output   weights1_58_we0;
output  [63:0] weights1_58_d0;
input  [63:0] weights1_58_q0;
output  [3:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [3:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [3:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [3:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [3:0] weights1_35_address0;
output   weights1_35_ce0;
output   weights1_35_we0;
output  [63:0] weights1_35_d0;
input  [63:0] weights1_35_q0;
output  [3:0] weights1_43_address0;
output   weights1_43_ce0;
output   weights1_43_we0;
output  [63:0] weights1_43_d0;
input  [63:0] weights1_43_q0;
output  [3:0] weights1_51_address0;
output   weights1_51_ce0;
output   weights1_51_we0;
output  [63:0] weights1_51_d0;
input  [63:0] weights1_51_q0;
output  [3:0] weights1_59_address0;
output   weights1_59_ce0;
output   weights1_59_we0;
output  [63:0] weights1_59_d0;
input  [63:0] weights1_59_q0;
output  [3:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [3:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [3:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [3:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [3:0] weights1_36_address0;
output   weights1_36_ce0;
output   weights1_36_we0;
output  [63:0] weights1_36_d0;
input  [63:0] weights1_36_q0;
output  [3:0] weights1_44_address0;
output   weights1_44_ce0;
output   weights1_44_we0;
output  [63:0] weights1_44_d0;
input  [63:0] weights1_44_q0;
output  [3:0] weights1_52_address0;
output   weights1_52_ce0;
output   weights1_52_we0;
output  [63:0] weights1_52_d0;
input  [63:0] weights1_52_q0;
output  [3:0] weights1_60_address0;
output   weights1_60_ce0;
output   weights1_60_we0;
output  [63:0] weights1_60_d0;
input  [63:0] weights1_60_q0;
output  [3:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [3:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [3:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [3:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [3:0] weights1_37_address0;
output   weights1_37_ce0;
output   weights1_37_we0;
output  [63:0] weights1_37_d0;
input  [63:0] weights1_37_q0;
output  [3:0] weights1_45_address0;
output   weights1_45_ce0;
output   weights1_45_we0;
output  [63:0] weights1_45_d0;
input  [63:0] weights1_45_q0;
output  [3:0] weights1_53_address0;
output   weights1_53_ce0;
output   weights1_53_we0;
output  [63:0] weights1_53_d0;
input  [63:0] weights1_53_q0;
output  [3:0] weights1_61_address0;
output   weights1_61_ce0;
output   weights1_61_we0;
output  [63:0] weights1_61_d0;
input  [63:0] weights1_61_q0;
output  [3:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [3:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [3:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [3:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [3:0] weights1_38_address0;
output   weights1_38_ce0;
output   weights1_38_we0;
output  [63:0] weights1_38_d0;
input  [63:0] weights1_38_q0;
output  [3:0] weights1_46_address0;
output   weights1_46_ce0;
output   weights1_46_we0;
output  [63:0] weights1_46_d0;
input  [63:0] weights1_46_q0;
output  [3:0] weights1_54_address0;
output   weights1_54_ce0;
output   weights1_54_we0;
output  [63:0] weights1_54_d0;
input  [63:0] weights1_54_q0;
output  [3:0] weights1_62_address0;
output   weights1_62_ce0;
output   weights1_62_we0;
output  [63:0] weights1_62_d0;
input  [63:0] weights1_62_q0;
output  [3:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [3:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [3:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [3:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [3:0] weights1_39_address0;
output   weights1_39_ce0;
output   weights1_39_we0;
output  [63:0] weights1_39_d0;
input  [63:0] weights1_39_q0;
output  [3:0] weights1_47_address0;
output   weights1_47_ce0;
output   weights1_47_we0;
output  [63:0] weights1_47_d0;
input  [63:0] weights1_47_q0;
output  [3:0] weights1_55_address0;
output   weights1_55_ce0;
output   weights1_55_we0;
output  [63:0] weights1_55_d0;
input  [63:0] weights1_55_q0;
output  [3:0] weights1_63_address0;
output   weights1_63_ce0;
output   weights1_63_we0;
output  [63:0] weights1_63_d0;
input  [63:0] weights1_63_q0;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_4927_p_din0;
output  [63:0] grp_fu_4927_p_din1;
output  [1:0] grp_fu_4927_p_opcode;
input  [63:0] grp_fu_4927_p_dout0;
output   grp_fu_4927_p_ce;
output  [63:0] grp_fu_4931_p_din0;
output  [63:0] grp_fu_4931_p_din1;
output  [1:0] grp_fu_4931_p_opcode;
input  [63:0] grp_fu_4931_p_dout0;
output   grp_fu_4931_p_ce;
output  [63:0] grp_fu_4935_p_din0;
output  [63:0] grp_fu_4935_p_din1;
input  [63:0] grp_fu_4935_p_dout0;
output   grp_fu_4935_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] icmp_ln126_reg_3303;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_2024;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_2029;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_2034;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_2039;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_2044;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_2049;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_2054;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_2059;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55_11001;
wire    ap_block_pp0_stage63_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_2089_p2;
wire   [6:0] add_ln126_fu_2095_p2;
reg   [6:0] add_ln126_reg_3307;
wire   [6:0] select_ln121_fu_2115_p3;
reg   [6:0] select_ln121_reg_3312;
wire   [3:0] select_ln126_fu_2129_p3;
reg   [3:0] select_ln126_reg_3317;
reg   [3:0] weights1_0_addr_reg_3642;
reg   [3:0] weights1_8_addr_reg_3647;
reg   [3:0] weights1_16_addr_reg_3652;
reg   [3:0] weights1_24_addr_reg_3657;
reg   [3:0] weights1_32_addr_reg_3662;
reg   [3:0] weights1_40_addr_reg_3667;
reg   [3:0] weights1_48_addr_reg_3672;
reg   [3:0] weights1_56_addr_reg_3677;
reg   [3:0] weights1_1_addr_reg_3682;
reg   [3:0] weights1_9_addr_reg_3687;
reg   [3:0] weights1_17_addr_reg_3692;
reg   [3:0] weights1_25_addr_reg_3697;
reg   [3:0] weights1_33_addr_reg_3702;
reg   [3:0] weights1_41_addr_reg_3707;
reg   [3:0] weights1_49_addr_reg_3712;
reg   [3:0] weights1_57_addr_reg_3717;
reg   [3:0] weights1_2_addr_reg_3722;
reg   [3:0] weights1_10_addr_reg_3727;
reg   [3:0] weights1_18_addr_reg_3732;
reg   [3:0] weights1_26_addr_reg_3737;
reg   [3:0] weights1_34_addr_reg_3742;
reg   [3:0] weights1_42_addr_reg_3747;
reg   [3:0] weights1_50_addr_reg_3752;
reg   [3:0] weights1_58_addr_reg_3757;
reg   [3:0] weights1_3_addr_reg_3762;
reg   [3:0] weights1_11_addr_reg_3767;
reg   [3:0] weights1_19_addr_reg_3772;
reg   [3:0] weights1_27_addr_reg_3777;
reg   [3:0] weights1_35_addr_reg_3782;
reg   [3:0] weights1_43_addr_reg_3787;
reg   [3:0] weights1_51_addr_reg_3792;
reg   [3:0] weights1_59_addr_reg_3797;
reg   [3:0] weights1_4_addr_reg_3802;
reg   [3:0] weights1_12_addr_reg_3807;
reg   [3:0] weights1_20_addr_reg_3812;
reg   [3:0] weights1_28_addr_reg_3817;
reg   [3:0] weights1_36_addr_reg_3822;
reg   [3:0] weights1_44_addr_reg_3827;
reg   [3:0] weights1_52_addr_reg_3832;
reg   [3:0] weights1_60_addr_reg_3837;
reg   [3:0] weights1_5_addr_reg_3842;
reg   [3:0] weights1_13_addr_reg_3847;
reg   [3:0] weights1_21_addr_reg_3852;
reg   [3:0] weights1_29_addr_reg_3857;
reg   [3:0] weights1_37_addr_reg_3862;
reg   [3:0] weights1_45_addr_reg_3867;
reg   [3:0] weights1_53_addr_reg_3872;
reg   [3:0] weights1_61_addr_reg_3877;
reg   [3:0] weights1_6_addr_reg_3882;
reg   [3:0] weights1_14_addr_reg_3887;
reg   [3:0] weights1_22_addr_reg_3892;
reg   [3:0] weights1_30_addr_reg_3897;
reg   [3:0] weights1_38_addr_reg_3902;
reg   [3:0] weights1_46_addr_reg_3907;
reg   [3:0] weights1_54_addr_reg_3912;
reg   [3:0] weights1_62_addr_reg_3917;
reg   [3:0] weights1_7_addr_reg_3922;
reg   [3:0] weights1_15_addr_reg_3927;
reg   [3:0] weights1_23_addr_reg_3932;
reg   [3:0] weights1_31_addr_reg_3937;
reg   [3:0] weights1_39_addr_reg_3942;
reg   [3:0] weights1_47_addr_reg_3947;
reg   [3:0] weights1_55_addr_reg_3952;
reg   [3:0] weights1_63_addr_reg_3957;
wire   [5:0] trunc_ln127_fu_2269_p1;
reg   [5:0] trunc_ln127_reg_3962;
wire   [63:0] tmp_15_fu_2273_p19;
reg   [63:0] tmp_15_reg_3982;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_16_fu_2344_p19;
reg   [63:0] tmp_16_reg_3987;
wire   [63:0] tmp_17_fu_2383_p19;
reg   [63:0] tmp_17_reg_3992;
wire   [63:0] tmp_18_fu_2454_p19;
reg   [63:0] tmp_18_reg_3997;
wire   [63:0] tmp_19_fu_2493_p19;
reg   [63:0] tmp_19_reg_4002;
wire   [63:0] tmp_20_fu_2564_p19;
reg   [63:0] tmp_20_reg_4007;
wire   [63:0] tmp_21_fu_2603_p19;
reg   [63:0] tmp_21_reg_4012;
wire   [63:0] tmp_22_fu_2674_p19;
reg   [63:0] tmp_22_reg_4017;
wire   [63:0] tmp_23_fu_2713_p19;
reg   [63:0] tmp_23_reg_4022;
wire   [63:0] tmp_24_fu_2784_p19;
reg   [63:0] tmp_24_reg_4027;
wire   [63:0] tmp_25_fu_2823_p19;
reg   [63:0] tmp_25_reg_4032;
wire   [63:0] tmp_26_fu_2894_p19;
reg   [63:0] tmp_26_reg_4037;
wire   [63:0] tmp_27_fu_2933_p19;
reg   [63:0] tmp_27_reg_4042;
wire   [63:0] tmp_28_fu_3004_p19;
reg   [63:0] tmp_28_reg_4047;
wire   [63:0] tmp_29_fu_3043_p19;
reg   [63:0] tmp_29_reg_4052;
wire   [63:0] tmp_30_fu_3114_p19;
reg   [63:0] tmp_30_reg_4057;
reg   [63:0] mul4_6_reg_4062;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] sub_1_reg_4067;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub_2_reg_4074;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub_3_reg_4081;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub_4_reg_4088;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub_5_reg_4095;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] sub_6_reg_4102;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] mul17_7_reg_4114;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] norm_9_reg_4119;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln126_fu_2137_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] norm_2_fu_324;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] j_fu_328;
wire   [6:0] add_ln127_fu_3153_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_332;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten_fu_336;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage23_01001;
reg    d_weights1_1_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_33_ce0_local;
reg    d_weights1_41_ce0_local;
reg    d_weights1_49_ce0_local;
reg    d_weights1_57_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_34_ce0_local;
reg    d_weights1_42_ce0_local;
reg    d_weights1_50_ce0_local;
reg    d_weights1_58_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_35_ce0_local;
reg    d_weights1_43_ce0_local;
reg    d_weights1_51_ce0_local;
reg    d_weights1_59_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_36_ce0_local;
reg    d_weights1_44_ce0_local;
reg    d_weights1_52_ce0_local;
reg    d_weights1_60_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_37_ce0_local;
reg    d_weights1_45_ce0_local;
reg    d_weights1_53_ce0_local;
reg    d_weights1_61_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_30_ce0_local;
reg    d_weights1_38_ce0_local;
reg    d_weights1_46_ce0_local;
reg    d_weights1_54_ce0_local;
reg    d_weights1_62_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_31_ce0_local;
reg    d_weights1_39_ce0_local;
reg    d_weights1_47_ce0_local;
reg    d_weights1_55_ce0_local;
reg    d_weights1_63_ce0_local;
reg    d_weights1_0_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_32_ce0_local;
reg    d_weights1_40_ce0_local;
reg    d_weights1_48_ce0_local;
reg    d_weights1_56_ce0_local;
reg    weights1_0_ce0_local;
reg   [3:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred1914_state18;
wire   [63:0] bitcast_ln128_64_fu_3171_p1;
wire    ap_block_pp0_stage17;
reg    weights1_8_ce0_local;
reg   [3:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred1932_state18;
reg    weights1_16_ce0_local;
reg   [3:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1943_state18;
reg    weights1_24_ce0_local;
reg   [3:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1954_state18;
reg    weights1_32_ce0_local;
reg   [3:0] weights1_32_address0_local;
reg    weights1_32_we0_local;
reg    ap_predicate_pred1965_state18;
reg    weights1_40_ce0_local;
reg   [3:0] weights1_40_address0_local;
reg    weights1_40_we0_local;
reg    ap_predicate_pred1976_state18;
reg    weights1_48_ce0_local;
reg   [3:0] weights1_48_address0_local;
reg    weights1_48_we0_local;
reg    ap_predicate_pred1987_state18;
reg    weights1_56_ce0_local;
reg   [3:0] weights1_56_address0_local;
reg    weights1_56_we0_local;
reg    ap_predicate_pred2009_state18;
reg    weights1_1_ce0_local;
reg   [3:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg    ap_predicate_pred1914_state19;
wire   [63:0] bitcast_ln128_65_fu_3183_p1;
wire    ap_block_pp0_stage18;
reg    weights1_9_ce0_local;
reg   [3:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred1932_state19;
reg    weights1_17_ce0_local;
reg   [3:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred1943_state19;
reg    weights1_25_ce0_local;
reg   [3:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred1954_state19;
reg    weights1_33_ce0_local;
reg   [3:0] weights1_33_address0_local;
reg    weights1_33_we0_local;
reg    ap_predicate_pred1965_state19;
reg    weights1_41_ce0_local;
reg   [3:0] weights1_41_address0_local;
reg    weights1_41_we0_local;
reg    ap_predicate_pred1976_state19;
reg    weights1_49_ce0_local;
reg   [3:0] weights1_49_address0_local;
reg    weights1_49_we0_local;
reg    ap_predicate_pred1987_state19;
reg    weights1_57_ce0_local;
reg   [3:0] weights1_57_address0_local;
reg    weights1_57_we0_local;
reg    ap_predicate_pred2009_state19;
reg    weights1_2_ce0_local;
reg   [3:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred1914_state20;
wire   [63:0] bitcast_ln128_66_fu_3194_p1;
wire    ap_block_pp0_stage19;
reg    weights1_10_ce0_local;
reg   [3:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1932_state20;
reg    weights1_18_ce0_local;
reg   [3:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1943_state20;
reg    weights1_26_ce0_local;
reg   [3:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1954_state20;
reg    weights1_34_ce0_local;
reg   [3:0] weights1_34_address0_local;
reg    weights1_34_we0_local;
reg    ap_predicate_pred1965_state20;
reg    weights1_42_ce0_local;
reg   [3:0] weights1_42_address0_local;
reg    weights1_42_we0_local;
reg    ap_predicate_pred1976_state20;
reg    weights1_50_ce0_local;
reg   [3:0] weights1_50_address0_local;
reg    weights1_50_we0_local;
reg    ap_predicate_pred1987_state20;
reg    weights1_58_ce0_local;
reg   [3:0] weights1_58_address0_local;
reg    weights1_58_we0_local;
reg    ap_predicate_pred2009_state20;
reg    weights1_3_ce0_local;
reg   [3:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    ap_predicate_pred1914_state21;
wire   [63:0] bitcast_ln128_67_fu_3205_p1;
wire    ap_block_pp0_stage20;
reg    weights1_11_ce0_local;
reg   [3:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred1932_state21;
reg    weights1_19_ce0_local;
reg   [3:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred1943_state21;
reg    weights1_27_ce0_local;
reg   [3:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred1954_state21;
reg    weights1_35_ce0_local;
reg   [3:0] weights1_35_address0_local;
reg    weights1_35_we0_local;
reg    ap_predicate_pred1965_state21;
reg    weights1_43_ce0_local;
reg   [3:0] weights1_43_address0_local;
reg    weights1_43_we0_local;
reg    ap_predicate_pred1976_state21;
reg    weights1_51_ce0_local;
reg   [3:0] weights1_51_address0_local;
reg    weights1_51_we0_local;
reg    ap_predicate_pred1987_state21;
reg    weights1_59_ce0_local;
reg   [3:0] weights1_59_address0_local;
reg    weights1_59_we0_local;
reg    ap_predicate_pred2009_state21;
reg    weights1_4_ce0_local;
reg   [3:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred1914_state22;
wire   [63:0] bitcast_ln128_68_fu_3216_p1;
wire    ap_block_pp0_stage21;
reg    weights1_12_ce0_local;
reg   [3:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1932_state22;
reg    weights1_20_ce0_local;
reg   [3:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1943_state22;
reg    weights1_28_ce0_local;
reg   [3:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1954_state22;
reg    weights1_36_ce0_local;
reg   [3:0] weights1_36_address0_local;
reg    weights1_36_we0_local;
reg    ap_predicate_pred1965_state22;
reg    weights1_44_ce0_local;
reg   [3:0] weights1_44_address0_local;
reg    weights1_44_we0_local;
reg    ap_predicate_pred1976_state22;
reg    weights1_52_ce0_local;
reg   [3:0] weights1_52_address0_local;
reg    weights1_52_we0_local;
reg    ap_predicate_pred1987_state22;
reg    weights1_60_ce0_local;
reg   [3:0] weights1_60_address0_local;
reg    weights1_60_we0_local;
reg    ap_predicate_pred2009_state22;
reg    weights1_5_ce0_local;
reg   [3:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred1914_state23;
wire   [63:0] bitcast_ln128_69_fu_3227_p1;
wire    ap_block_pp0_stage22;
reg    weights1_13_ce0_local;
reg   [3:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred1932_state23;
reg    weights1_21_ce0_local;
reg   [3:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred1943_state23;
reg    weights1_29_ce0_local;
reg   [3:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred1954_state23;
reg    weights1_37_ce0_local;
reg   [3:0] weights1_37_address0_local;
reg    weights1_37_we0_local;
reg    ap_predicate_pred1965_state23;
reg    weights1_45_ce0_local;
reg   [3:0] weights1_45_address0_local;
reg    weights1_45_we0_local;
reg    ap_predicate_pred1976_state23;
reg    weights1_53_ce0_local;
reg   [3:0] weights1_53_address0_local;
reg    weights1_53_we0_local;
reg    ap_predicate_pred1987_state23;
reg    weights1_61_ce0_local;
reg   [3:0] weights1_61_address0_local;
reg    weights1_61_we0_local;
reg    ap_predicate_pred2009_state23;
reg    weights1_6_ce0_local;
reg   [3:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred1914_state24;
wire   [63:0] bitcast_ln128_70_fu_3238_p1;
reg    weights1_14_ce0_local;
reg   [3:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1932_state24;
reg    weights1_22_ce0_local;
reg   [3:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1943_state24;
reg    weights1_30_ce0_local;
reg   [3:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred1954_state24;
reg    weights1_38_ce0_local;
reg   [3:0] weights1_38_address0_local;
reg    weights1_38_we0_local;
reg    ap_predicate_pred1965_state24;
reg    weights1_46_ce0_local;
reg   [3:0] weights1_46_address0_local;
reg    weights1_46_we0_local;
reg    ap_predicate_pred1976_state24;
reg    weights1_54_ce0_local;
reg   [3:0] weights1_54_address0_local;
reg    weights1_54_we0_local;
reg    ap_predicate_pred1987_state24;
reg    weights1_62_ce0_local;
reg   [3:0] weights1_62_address0_local;
reg    weights1_62_we0_local;
reg    ap_predicate_pred2009_state24;
reg    weights1_7_ce0_local;
reg   [3:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred1914_state25;
wire   [63:0] bitcast_ln128_71_fu_3253_p1;
reg    weights1_15_ce0_local;
reg   [3:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred1932_state25;
reg    weights1_23_ce0_local;
reg   [3:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred1943_state25;
reg    weights1_31_ce0_local;
reg   [3:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred1954_state25;
reg    weights1_39_ce0_local;
reg   [3:0] weights1_39_address0_local;
reg    weights1_39_we0_local;
reg    ap_predicate_pred1965_state25;
reg    weights1_47_ce0_local;
reg   [3:0] weights1_47_address0_local;
reg    weights1_47_we0_local;
reg    ap_predicate_pred1976_state25;
reg    weights1_55_ce0_local;
reg   [3:0] weights1_55_address0_local;
reg    weights1_55_we0_local;
reg    ap_predicate_pred1987_state25;
reg    weights1_63_ce0_local;
reg   [3:0] weights1_63_address0_local;
reg    weights1_63_we0_local;
reg    ap_predicate_pred2009_state25;
reg   [63:0] grp_fu_2011_p0;
reg   [63:0] grp_fu_2011_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_2019_p0;
reg   [63:0] grp_fu_2019_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [0:0] tmp_fu_2107_p3;
wire   [3:0] add_ln126_1_fu_2123_p2;
wire   [63:0] tmp_15_fu_2273_p17;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_16_fu_2344_p2;
wire   [63:0] tmp_16_fu_2344_p4;
wire   [63:0] tmp_16_fu_2344_p6;
wire   [63:0] tmp_16_fu_2344_p8;
wire   [63:0] tmp_16_fu_2344_p10;
wire   [63:0] tmp_16_fu_2344_p12;
wire   [63:0] tmp_16_fu_2344_p14;
wire   [63:0] tmp_16_fu_2344_p16;
wire   [63:0] tmp_16_fu_2344_p17;
wire   [63:0] tmp_17_fu_2383_p17;
wire   [63:0] tmp_18_fu_2454_p2;
wire   [63:0] tmp_18_fu_2454_p4;
wire   [63:0] tmp_18_fu_2454_p6;
wire   [63:0] tmp_18_fu_2454_p8;
wire   [63:0] tmp_18_fu_2454_p10;
wire   [63:0] tmp_18_fu_2454_p12;
wire   [63:0] tmp_18_fu_2454_p14;
wire   [63:0] tmp_18_fu_2454_p16;
wire   [63:0] tmp_18_fu_2454_p17;
wire   [63:0] tmp_19_fu_2493_p17;
wire   [63:0] tmp_20_fu_2564_p2;
wire   [63:0] tmp_20_fu_2564_p4;
wire   [63:0] tmp_20_fu_2564_p6;
wire   [63:0] tmp_20_fu_2564_p8;
wire   [63:0] tmp_20_fu_2564_p10;
wire   [63:0] tmp_20_fu_2564_p12;
wire   [63:0] tmp_20_fu_2564_p14;
wire   [63:0] tmp_20_fu_2564_p16;
wire   [63:0] tmp_20_fu_2564_p17;
wire   [63:0] tmp_21_fu_2603_p17;
wire   [63:0] tmp_22_fu_2674_p2;
wire   [63:0] tmp_22_fu_2674_p4;
wire   [63:0] tmp_22_fu_2674_p6;
wire   [63:0] tmp_22_fu_2674_p8;
wire   [63:0] tmp_22_fu_2674_p10;
wire   [63:0] tmp_22_fu_2674_p12;
wire   [63:0] tmp_22_fu_2674_p14;
wire   [63:0] tmp_22_fu_2674_p16;
wire   [63:0] tmp_22_fu_2674_p17;
wire   [63:0] tmp_23_fu_2713_p17;
wire   [63:0] tmp_24_fu_2784_p2;
wire   [63:0] tmp_24_fu_2784_p4;
wire   [63:0] tmp_24_fu_2784_p6;
wire   [63:0] tmp_24_fu_2784_p8;
wire   [63:0] tmp_24_fu_2784_p10;
wire   [63:0] tmp_24_fu_2784_p12;
wire   [63:0] tmp_24_fu_2784_p14;
wire   [63:0] tmp_24_fu_2784_p16;
wire   [63:0] tmp_24_fu_2784_p17;
wire   [63:0] tmp_25_fu_2823_p17;
wire   [63:0] tmp_26_fu_2894_p2;
wire   [63:0] tmp_26_fu_2894_p4;
wire   [63:0] tmp_26_fu_2894_p6;
wire   [63:0] tmp_26_fu_2894_p8;
wire   [63:0] tmp_26_fu_2894_p10;
wire   [63:0] tmp_26_fu_2894_p12;
wire   [63:0] tmp_26_fu_2894_p14;
wire   [63:0] tmp_26_fu_2894_p16;
wire   [63:0] tmp_26_fu_2894_p17;
wire   [63:0] tmp_27_fu_2933_p17;
wire   [63:0] tmp_28_fu_3004_p2;
wire   [63:0] tmp_28_fu_3004_p4;
wire   [63:0] tmp_28_fu_3004_p6;
wire   [63:0] tmp_28_fu_3004_p8;
wire   [63:0] tmp_28_fu_3004_p10;
wire   [63:0] tmp_28_fu_3004_p12;
wire   [63:0] tmp_28_fu_3004_p14;
wire   [63:0] tmp_28_fu_3004_p16;
wire   [63:0] tmp_28_fu_3004_p17;
wire   [63:0] tmp_29_fu_3043_p17;
wire   [63:0] tmp_30_fu_3114_p2;
wire   [63:0] tmp_30_fu_3114_p4;
wire   [63:0] tmp_30_fu_3114_p6;
wire   [63:0] tmp_30_fu_3114_p8;
wire   [63:0] tmp_30_fu_3114_p10;
wire   [63:0] tmp_30_fu_3114_p12;
wire   [63:0] tmp_30_fu_3114_p14;
wire   [63:0] tmp_30_fu_3114_p16;
wire   [63:0] tmp_30_fu_3114_p17;
reg   [1:0] grp_fu_2011_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage48_00001;
wire    ap_block_pp0_stage56_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage16_00001;
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
wire    ap_block_pp0_stage22_subdone;
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
wire   [5:0] tmp_15_fu_2273_p1;
wire   [5:0] tmp_15_fu_2273_p3;
wire   [5:0] tmp_15_fu_2273_p5;
wire   [5:0] tmp_15_fu_2273_p7;
wire  signed [5:0] tmp_15_fu_2273_p9;
wire  signed [5:0] tmp_15_fu_2273_p11;
wire  signed [5:0] tmp_15_fu_2273_p13;
wire  signed [5:0] tmp_15_fu_2273_p15;
wire   [5:0] tmp_16_fu_2344_p1;
wire   [5:0] tmp_16_fu_2344_p3;
wire   [5:0] tmp_16_fu_2344_p5;
wire   [5:0] tmp_16_fu_2344_p7;
wire  signed [5:0] tmp_16_fu_2344_p9;
wire  signed [5:0] tmp_16_fu_2344_p11;
wire  signed [5:0] tmp_16_fu_2344_p13;
wire  signed [5:0] tmp_16_fu_2344_p15;
wire   [5:0] tmp_17_fu_2383_p1;
wire   [5:0] tmp_17_fu_2383_p3;
wire   [5:0] tmp_17_fu_2383_p5;
wire   [5:0] tmp_17_fu_2383_p7;
wire  signed [5:0] tmp_17_fu_2383_p9;
wire  signed [5:0] tmp_17_fu_2383_p11;
wire  signed [5:0] tmp_17_fu_2383_p13;
wire  signed [5:0] tmp_17_fu_2383_p15;
wire   [5:0] tmp_18_fu_2454_p1;
wire   [5:0] tmp_18_fu_2454_p3;
wire   [5:0] tmp_18_fu_2454_p5;
wire   [5:0] tmp_18_fu_2454_p7;
wire  signed [5:0] tmp_18_fu_2454_p9;
wire  signed [5:0] tmp_18_fu_2454_p11;
wire  signed [5:0] tmp_18_fu_2454_p13;
wire  signed [5:0] tmp_18_fu_2454_p15;
wire   [5:0] tmp_19_fu_2493_p1;
wire   [5:0] tmp_19_fu_2493_p3;
wire   [5:0] tmp_19_fu_2493_p5;
wire   [5:0] tmp_19_fu_2493_p7;
wire  signed [5:0] tmp_19_fu_2493_p9;
wire  signed [5:0] tmp_19_fu_2493_p11;
wire  signed [5:0] tmp_19_fu_2493_p13;
wire  signed [5:0] tmp_19_fu_2493_p15;
wire   [5:0] tmp_20_fu_2564_p1;
wire   [5:0] tmp_20_fu_2564_p3;
wire   [5:0] tmp_20_fu_2564_p5;
wire   [5:0] tmp_20_fu_2564_p7;
wire  signed [5:0] tmp_20_fu_2564_p9;
wire  signed [5:0] tmp_20_fu_2564_p11;
wire  signed [5:0] tmp_20_fu_2564_p13;
wire  signed [5:0] tmp_20_fu_2564_p15;
wire   [5:0] tmp_21_fu_2603_p1;
wire   [5:0] tmp_21_fu_2603_p3;
wire   [5:0] tmp_21_fu_2603_p5;
wire   [5:0] tmp_21_fu_2603_p7;
wire  signed [5:0] tmp_21_fu_2603_p9;
wire  signed [5:0] tmp_21_fu_2603_p11;
wire  signed [5:0] tmp_21_fu_2603_p13;
wire  signed [5:0] tmp_21_fu_2603_p15;
wire   [5:0] tmp_22_fu_2674_p1;
wire   [5:0] tmp_22_fu_2674_p3;
wire   [5:0] tmp_22_fu_2674_p5;
wire   [5:0] tmp_22_fu_2674_p7;
wire  signed [5:0] tmp_22_fu_2674_p9;
wire  signed [5:0] tmp_22_fu_2674_p11;
wire  signed [5:0] tmp_22_fu_2674_p13;
wire  signed [5:0] tmp_22_fu_2674_p15;
wire   [5:0] tmp_23_fu_2713_p1;
wire   [5:0] tmp_23_fu_2713_p3;
wire   [5:0] tmp_23_fu_2713_p5;
wire   [5:0] tmp_23_fu_2713_p7;
wire  signed [5:0] tmp_23_fu_2713_p9;
wire  signed [5:0] tmp_23_fu_2713_p11;
wire  signed [5:0] tmp_23_fu_2713_p13;
wire  signed [5:0] tmp_23_fu_2713_p15;
wire   [5:0] tmp_24_fu_2784_p1;
wire   [5:0] tmp_24_fu_2784_p3;
wire   [5:0] tmp_24_fu_2784_p5;
wire   [5:0] tmp_24_fu_2784_p7;
wire  signed [5:0] tmp_24_fu_2784_p9;
wire  signed [5:0] tmp_24_fu_2784_p11;
wire  signed [5:0] tmp_24_fu_2784_p13;
wire  signed [5:0] tmp_24_fu_2784_p15;
wire   [5:0] tmp_25_fu_2823_p1;
wire   [5:0] tmp_25_fu_2823_p3;
wire   [5:0] tmp_25_fu_2823_p5;
wire   [5:0] tmp_25_fu_2823_p7;
wire  signed [5:0] tmp_25_fu_2823_p9;
wire  signed [5:0] tmp_25_fu_2823_p11;
wire  signed [5:0] tmp_25_fu_2823_p13;
wire  signed [5:0] tmp_25_fu_2823_p15;
wire   [5:0] tmp_26_fu_2894_p1;
wire   [5:0] tmp_26_fu_2894_p3;
wire   [5:0] tmp_26_fu_2894_p5;
wire   [5:0] tmp_26_fu_2894_p7;
wire  signed [5:0] tmp_26_fu_2894_p9;
wire  signed [5:0] tmp_26_fu_2894_p11;
wire  signed [5:0] tmp_26_fu_2894_p13;
wire  signed [5:0] tmp_26_fu_2894_p15;
wire   [5:0] tmp_27_fu_2933_p1;
wire   [5:0] tmp_27_fu_2933_p3;
wire   [5:0] tmp_27_fu_2933_p5;
wire   [5:0] tmp_27_fu_2933_p7;
wire  signed [5:0] tmp_27_fu_2933_p9;
wire  signed [5:0] tmp_27_fu_2933_p11;
wire  signed [5:0] tmp_27_fu_2933_p13;
wire  signed [5:0] tmp_27_fu_2933_p15;
wire   [5:0] tmp_28_fu_3004_p1;
wire   [5:0] tmp_28_fu_3004_p3;
wire   [5:0] tmp_28_fu_3004_p5;
wire   [5:0] tmp_28_fu_3004_p7;
wire  signed [5:0] tmp_28_fu_3004_p9;
wire  signed [5:0] tmp_28_fu_3004_p11;
wire  signed [5:0] tmp_28_fu_3004_p13;
wire  signed [5:0] tmp_28_fu_3004_p15;
wire   [5:0] tmp_29_fu_3043_p1;
wire   [5:0] tmp_29_fu_3043_p3;
wire   [5:0] tmp_29_fu_3043_p5;
wire   [5:0] tmp_29_fu_3043_p7;
wire  signed [5:0] tmp_29_fu_3043_p9;
wire  signed [5:0] tmp_29_fu_3043_p11;
wire  signed [5:0] tmp_29_fu_3043_p13;
wire  signed [5:0] tmp_29_fu_3043_p15;
wire   [5:0] tmp_30_fu_3114_p1;
wire   [5:0] tmp_30_fu_3114_p3;
wire   [5:0] tmp_30_fu_3114_p5;
wire   [5:0] tmp_30_fu_3114_p7;
wire  signed [5:0] tmp_30_fu_3114_p9;
wire  signed [5:0] tmp_30_fu_3114_p11;
wire  signed [5:0] tmp_30_fu_3114_p13;
wire  signed [5:0] tmp_30_fu_3114_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_324 = 64'd0;
#0 j_fu_328 = 7'd0;
#0 i_fu_332 = 4'd0;
#0 indvar_flatten_fu_336 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3379(.din0(d_weights1_0_q0),.din1(d_weights1_8_q0),.din2(d_weights1_16_q0),.din3(d_weights1_24_q0),.din4(d_weights1_32_q0),.din5(d_weights1_40_q0),.din6(d_weights1_48_q0),.din7(d_weights1_56_q0),.def(tmp_15_fu_2273_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_15_fu_2273_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3380(.din0(tmp_16_fu_2344_p2),.din1(tmp_16_fu_2344_p4),.din2(tmp_16_fu_2344_p6),.din3(tmp_16_fu_2344_p8),.din4(tmp_16_fu_2344_p10),.din5(tmp_16_fu_2344_p12),.din6(tmp_16_fu_2344_p14),.din7(tmp_16_fu_2344_p16),.def(tmp_16_fu_2344_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_16_fu_2344_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3381(.din0(d_weights1_1_q0),.din1(d_weights1_9_q0),.din2(d_weights1_17_q0),.din3(d_weights1_25_q0),.din4(d_weights1_33_q0),.din5(d_weights1_41_q0),.din6(d_weights1_49_q0),.din7(d_weights1_57_q0),.def(tmp_17_fu_2383_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_17_fu_2383_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3382(.din0(tmp_18_fu_2454_p2),.din1(tmp_18_fu_2454_p4),.din2(tmp_18_fu_2454_p6),.din3(tmp_18_fu_2454_p8),.din4(tmp_18_fu_2454_p10),.din5(tmp_18_fu_2454_p12),.din6(tmp_18_fu_2454_p14),.din7(tmp_18_fu_2454_p16),.def(tmp_18_fu_2454_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_18_fu_2454_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3383(.din0(d_weights1_2_q0),.din1(d_weights1_10_q0),.din2(d_weights1_18_q0),.din3(d_weights1_26_q0),.din4(d_weights1_34_q0),.din5(d_weights1_42_q0),.din6(d_weights1_50_q0),.din7(d_weights1_58_q0),.def(tmp_19_fu_2493_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_19_fu_2493_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3384(.din0(tmp_20_fu_2564_p2),.din1(tmp_20_fu_2564_p4),.din2(tmp_20_fu_2564_p6),.din3(tmp_20_fu_2564_p8),.din4(tmp_20_fu_2564_p10),.din5(tmp_20_fu_2564_p12),.din6(tmp_20_fu_2564_p14),.din7(tmp_20_fu_2564_p16),.def(tmp_20_fu_2564_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_20_fu_2564_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3385(.din0(d_weights1_3_q0),.din1(d_weights1_11_q0),.din2(d_weights1_19_q0),.din3(d_weights1_27_q0),.din4(d_weights1_35_q0),.din5(d_weights1_43_q0),.din6(d_weights1_51_q0),.din7(d_weights1_59_q0),.def(tmp_21_fu_2603_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_21_fu_2603_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3386(.din0(tmp_22_fu_2674_p2),.din1(tmp_22_fu_2674_p4),.din2(tmp_22_fu_2674_p6),.din3(tmp_22_fu_2674_p8),.din4(tmp_22_fu_2674_p10),.din5(tmp_22_fu_2674_p12),.din6(tmp_22_fu_2674_p14),.din7(tmp_22_fu_2674_p16),.def(tmp_22_fu_2674_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_22_fu_2674_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3387(.din0(d_weights1_4_q0),.din1(d_weights1_12_q0),.din2(d_weights1_20_q0),.din3(d_weights1_28_q0),.din4(d_weights1_36_q0),.din5(d_weights1_44_q0),.din6(d_weights1_52_q0),.din7(d_weights1_60_q0),.def(tmp_23_fu_2713_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_23_fu_2713_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3388(.din0(tmp_24_fu_2784_p2),.din1(tmp_24_fu_2784_p4),.din2(tmp_24_fu_2784_p6),.din3(tmp_24_fu_2784_p8),.din4(tmp_24_fu_2784_p10),.din5(tmp_24_fu_2784_p12),.din6(tmp_24_fu_2784_p14),.din7(tmp_24_fu_2784_p16),.def(tmp_24_fu_2784_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_24_fu_2784_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3389(.din0(d_weights1_5_q0),.din1(d_weights1_13_q0),.din2(d_weights1_21_q0),.din3(d_weights1_29_q0),.din4(d_weights1_37_q0),.din5(d_weights1_45_q0),.din6(d_weights1_53_q0),.din7(d_weights1_61_q0),.def(tmp_25_fu_2823_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_25_fu_2823_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3390(.din0(tmp_26_fu_2894_p2),.din1(tmp_26_fu_2894_p4),.din2(tmp_26_fu_2894_p6),.din3(tmp_26_fu_2894_p8),.din4(tmp_26_fu_2894_p10),.din5(tmp_26_fu_2894_p12),.din6(tmp_26_fu_2894_p14),.din7(tmp_26_fu_2894_p16),.def(tmp_26_fu_2894_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_26_fu_2894_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3391(.din0(d_weights1_6_q0),.din1(d_weights1_14_q0),.din2(d_weights1_22_q0),.din3(d_weights1_30_q0),.din4(d_weights1_38_q0),.din5(d_weights1_46_q0),.din6(d_weights1_54_q0),.din7(d_weights1_62_q0),.def(tmp_27_fu_2933_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_27_fu_2933_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3392(.din0(tmp_28_fu_3004_p2),.din1(tmp_28_fu_3004_p4),.din2(tmp_28_fu_3004_p6),.din3(tmp_28_fu_3004_p8),.din4(tmp_28_fu_3004_p10),.din5(tmp_28_fu_3004_p12),.din6(tmp_28_fu_3004_p14),.din7(tmp_28_fu_3004_p16),.def(tmp_28_fu_3004_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_28_fu_3004_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3393(.din0(d_weights1_7_q0),.din1(d_weights1_15_q0),.din2(d_weights1_23_q0),.din3(d_weights1_31_q0),.din4(d_weights1_39_q0),.din5(d_weights1_47_q0),.din6(d_weights1_55_q0),.din7(d_weights1_63_q0),.def(tmp_29_fu_3043_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_29_fu_3043_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U3394(.din0(tmp_30_fu_3114_p2),.din1(tmp_30_fu_3114_p4),.din2(tmp_30_fu_3114_p6),.din3(tmp_30_fu_3114_p8),.din4(tmp_30_fu_3114_p10),.din5(tmp_30_fu_3114_p12),.din6(tmp_30_fu_3114_p14),.din7(tmp_30_fu_3114_p16),.def(tmp_30_fu_3114_p17),.sel(trunc_ln127_reg_3962),.dout(tmp_30_fu_3114_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_332 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln126_reg_3303 == 1'd0))) begin
        i_fu_332 <= select_ln126_reg_3317;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten_fu_336 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln126_reg_3303 == 1'd0))) begin
        indvar_flatten_fu_336 <= add_ln126_reg_3307;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_328 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln126_reg_3303 == 1'd0))) begin
        j_fu_328 <= add_ln127_fu_3153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_2_fu_324 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_2_fu_324 <= grp_fu_4931_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_reg_3307 <= add_ln126_fu_2095_p2;
        icmp_ln126_reg_3303 <= icmp_ln126_fu_2089_p2;
        select_ln121_reg_3312 <= select_ln121_fu_2115_p3;
        select_ln126_reg_3317 <= select_ln126_fu_2129_p3;
        trunc_ln127_reg_3962 <= trunc_ln127_fu_2269_p1;
        weights1_0_addr_reg_3642 <= zext_ln126_fu_2137_p1;
        weights1_10_addr_reg_3727 <= zext_ln126_fu_2137_p1;
        weights1_11_addr_reg_3767 <= zext_ln126_fu_2137_p1;
        weights1_12_addr_reg_3807 <= zext_ln126_fu_2137_p1;
        weights1_13_addr_reg_3847 <= zext_ln126_fu_2137_p1;
        weights1_14_addr_reg_3887 <= zext_ln126_fu_2137_p1;
        weights1_15_addr_reg_3927 <= zext_ln126_fu_2137_p1;
        weights1_16_addr_reg_3652 <= zext_ln126_fu_2137_p1;
        weights1_17_addr_reg_3692 <= zext_ln126_fu_2137_p1;
        weights1_18_addr_reg_3732 <= zext_ln126_fu_2137_p1;
        weights1_19_addr_reg_3772 <= zext_ln126_fu_2137_p1;
        weights1_1_addr_reg_3682 <= zext_ln126_fu_2137_p1;
        weights1_20_addr_reg_3812 <= zext_ln126_fu_2137_p1;
        weights1_21_addr_reg_3852 <= zext_ln126_fu_2137_p1;
        weights1_22_addr_reg_3892 <= zext_ln126_fu_2137_p1;
        weights1_23_addr_reg_3932 <= zext_ln126_fu_2137_p1;
        weights1_24_addr_reg_3657 <= zext_ln126_fu_2137_p1;
        weights1_25_addr_reg_3697 <= zext_ln126_fu_2137_p1;
        weights1_26_addr_reg_3737 <= zext_ln126_fu_2137_p1;
        weights1_27_addr_reg_3777 <= zext_ln126_fu_2137_p1;
        weights1_28_addr_reg_3817 <= zext_ln126_fu_2137_p1;
        weights1_29_addr_reg_3857 <= zext_ln126_fu_2137_p1;
        weights1_2_addr_reg_3722 <= zext_ln126_fu_2137_p1;
        weights1_30_addr_reg_3897 <= zext_ln126_fu_2137_p1;
        weights1_31_addr_reg_3937 <= zext_ln126_fu_2137_p1;
        weights1_32_addr_reg_3662 <= zext_ln126_fu_2137_p1;
        weights1_33_addr_reg_3702 <= zext_ln126_fu_2137_p1;
        weights1_34_addr_reg_3742 <= zext_ln126_fu_2137_p1;
        weights1_35_addr_reg_3782 <= zext_ln126_fu_2137_p1;
        weights1_36_addr_reg_3822 <= zext_ln126_fu_2137_p1;
        weights1_37_addr_reg_3862 <= zext_ln126_fu_2137_p1;
        weights1_38_addr_reg_3902 <= zext_ln126_fu_2137_p1;
        weights1_39_addr_reg_3942 <= zext_ln126_fu_2137_p1;
        weights1_3_addr_reg_3762 <= zext_ln126_fu_2137_p1;
        weights1_40_addr_reg_3667 <= zext_ln126_fu_2137_p1;
        weights1_41_addr_reg_3707 <= zext_ln126_fu_2137_p1;
        weights1_42_addr_reg_3747 <= zext_ln126_fu_2137_p1;
        weights1_43_addr_reg_3787 <= zext_ln126_fu_2137_p1;
        weights1_44_addr_reg_3827 <= zext_ln126_fu_2137_p1;
        weights1_45_addr_reg_3867 <= zext_ln126_fu_2137_p1;
        weights1_46_addr_reg_3907 <= zext_ln126_fu_2137_p1;
        weights1_47_addr_reg_3947 <= zext_ln126_fu_2137_p1;
        weights1_48_addr_reg_3672 <= zext_ln126_fu_2137_p1;
        weights1_49_addr_reg_3712 <= zext_ln126_fu_2137_p1;
        weights1_4_addr_reg_3802 <= zext_ln126_fu_2137_p1;
        weights1_50_addr_reg_3752 <= zext_ln126_fu_2137_p1;
        weights1_51_addr_reg_3792 <= zext_ln126_fu_2137_p1;
        weights1_52_addr_reg_3832 <= zext_ln126_fu_2137_p1;
        weights1_53_addr_reg_3872 <= zext_ln126_fu_2137_p1;
        weights1_54_addr_reg_3912 <= zext_ln126_fu_2137_p1;
        weights1_55_addr_reg_3952 <= zext_ln126_fu_2137_p1;
        weights1_56_addr_reg_3677 <= zext_ln126_fu_2137_p1;
        weights1_57_addr_reg_3717 <= zext_ln126_fu_2137_p1;
        weights1_58_addr_reg_3757 <= zext_ln126_fu_2137_p1;
        weights1_59_addr_reg_3797 <= zext_ln126_fu_2137_p1;
        weights1_5_addr_reg_3842 <= zext_ln126_fu_2137_p1;
        weights1_60_addr_reg_3837 <= zext_ln126_fu_2137_p1;
        weights1_61_addr_reg_3877 <= zext_ln126_fu_2137_p1;
        weights1_62_addr_reg_3917 <= zext_ln126_fu_2137_p1;
        weights1_63_addr_reg_3957 <= zext_ln126_fu_2137_p1;
        weights1_6_addr_reg_3882 <= zext_ln126_fu_2137_p1;
        weights1_7_addr_reg_3922 <= zext_ln126_fu_2137_p1;
        weights1_8_addr_reg_3647 <= zext_ln126_fu_2137_p1;
        weights1_9_addr_reg_3687 <= zext_ln126_fu_2137_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred1914_state18 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state18 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state18 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state18 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state18 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state18 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state18 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state18 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1914_state19 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state19 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state19 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state19 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state19 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state19 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state19 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state19 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1914_state20 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state20 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state20 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state20 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state20 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state20 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state20 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state20 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1914_state21 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state21 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state21 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state21 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state21 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state21 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state21 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state21 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_predicate_pred1914_state22 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state22 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state22 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state22 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state22 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state22 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state22 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state22 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_predicate_pred1914_state23 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state23 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state23 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state23 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state23 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state23 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state23 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state23 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_predicate_pred1914_state24 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state24 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state24 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state24 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state24 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state24 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state24 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state24 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_predicate_pred1914_state25 <= ((trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1932_state25 <= ((trunc_ln127_reg_3962 == 6'd8) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1943_state25 <= ((trunc_ln127_reg_3962 == 6'd16) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1954_state25 <= ((trunc_ln127_reg_3962 == 6'd24) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1965_state25 <= ((trunc_ln127_reg_3962 == 6'd32) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1976_state25 <= ((trunc_ln127_reg_3962 == 6'd40) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred1987_state25 <= ((trunc_ln127_reg_3962 == 6'd48) & (icmp_ln126_reg_3303 == 1'd0));
        ap_predicate_pred2009_state25 <= (~(trunc_ln127_reg_3962 == 6'd48) & ~(trunc_ln127_reg_3962 == 6'd40) & ~(trunc_ln127_reg_3962 == 6'd32) & ~(trunc_ln127_reg_3962 == 6'd24) & ~(trunc_ln127_reg_3962 == 6'd16) & ~(trunc_ln127_reg_3962 == 6'd8) & ~(trunc_ln127_reg_3962 == 6'd0) & (icmp_ln126_reg_3303 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        mul17_7_reg_4114 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul4_6_reg_4062 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        norm_9_reg_4119 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_2024 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_2029 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_2034 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_2039 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_2044 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_2049 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_2054 <= grp_fu_4935_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63)) | ((1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_2059 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub_1_reg_4067 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub_2_reg_4074 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub_3_reg_4081 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub_4_reg_4088 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        sub_5_reg_4095 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        sub_6_reg_4102 <= grp_fu_4927_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_15_reg_3982 <= tmp_15_fu_2273_p19;
        tmp_16_reg_3987 <= tmp_16_fu_2344_p19;
        tmp_17_reg_3992 <= tmp_17_fu_2383_p19;
        tmp_18_reg_3997 <= tmp_18_fu_2454_p19;
        tmp_19_reg_4002 <= tmp_19_fu_2493_p19;
        tmp_20_reg_4007 <= tmp_20_fu_2564_p19;
        tmp_21_reg_4012 <= tmp_21_fu_2603_p19;
        tmp_22_reg_4017 <= tmp_22_fu_2674_p19;
        tmp_23_reg_4022 <= tmp_23_fu_2713_p19;
        tmp_24_reg_4027 <= tmp_24_fu_2784_p19;
        tmp_25_reg_4032 <= tmp_25_fu_2823_p19;
        tmp_26_reg_4037 <= tmp_26_fu_2894_p19;
        tmp_27_reg_4042 <= tmp_27_fu_2933_p19;
        tmp_28_reg_4047 <= tmp_28_fu_3004_p19;
        tmp_29_reg_4052 <= tmp_29_fu_3043_p19;
        tmp_30_reg_4057 <= tmp_30_fu_3114_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (icmp_ln126_reg_3303 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_332;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_336;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_328;
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
if ((((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage9_00001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln126_reg_3303 == 1'd0)))) begin
        grp_fu_2011_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage56_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage40_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (icmp_ln126_reg_3303 == 1'd0)) | ((1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24) & (icmp_ln126_reg_3303 == 1'd0)))) begin
        grp_fu_2011_opcode = 2'd0;
    end else begin
        grp_fu_2011_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2011_p0 = reg_2059;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_2011_p0 = norm_2_fu_324;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_2011_p0 = tmp_30_reg_4057;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_2011_p0 = tmp_28_reg_4047;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_2011_p0 = tmp_26_reg_4037;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_2011_p0 = tmp_24_reg_4027;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_2011_p0 = tmp_22_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_2011_p0 = tmp_20_reg_4007;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_2011_p0 = tmp_18_reg_3997;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2011_p0 = tmp_16_reg_3987;
    end else begin
        grp_fu_2011_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_2011_p1 = reg_2054;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_2011_p1 = mul4_6_reg_4062;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2011_p1 = reg_2049;
    end else if ((((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_2011_p1 = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_2011_p1 = reg_2039;
    end else if ((((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_2011_p1 = reg_2034;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_2011_p1 = reg_2029;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2011_p1 = reg_2024;
    end else begin
        grp_fu_2011_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_2019_p0 = sub_6_reg_4102;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_2019_p0 = sub_5_reg_4095;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_2019_p0 = sub_4_reg_4088;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_2019_p0 = sub_3_reg_4081;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_2019_p0 = sub_2_reg_4074;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_2019_p0 = sub_1_reg_4067;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2019_p0 = reg_2059;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2019_p0 = tmp_29_reg_4052;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_2019_p0 = tmp_27_reg_4042;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_2019_p0 = tmp_25_reg_4032;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_2019_p0 = tmp_23_reg_4022;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_2019_p0 = tmp_21_reg_4012;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2019_p0 = tmp_19_reg_4002;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2019_p0 = tmp_17_reg_3992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_2019_p0 = tmp_15_reg_3982;
    end else begin
        grp_fu_2019_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_2019_p1 = sub_6_reg_4102;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_2019_p1 = sub_5_reg_4095;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_2019_p1 = sub_4_reg_4088;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_2019_p1 = sub_3_reg_4081;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_2019_p1 = sub_2_reg_4074;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_2019_p1 = sub_1_reg_4067;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2019_p1 = reg_2059;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_2019_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2019_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1) & (icmp_ln126_reg_3303 == 1'd1))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_0_address0_local = weights1_0_addr_reg_3642;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_0_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1914_state18 == 1'b1))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_10_address0_local = weights1_10_addr_reg_3727;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_10_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_11_address0_local = weights1_11_addr_reg_3767;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_11_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_12_address0_local = weights1_12_addr_reg_3807;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_12_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_12_address0_local = 'bx;
        end
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_13_address0_local = weights1_13_addr_reg_3847;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_13_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_13_address0_local = 'bx;
        end
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_14_address0_local = weights1_14_addr_reg_3887;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_14_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_14_address0_local = 'bx;
        end
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_15_address0_local = weights1_15_addr_reg_3927;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_15_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_15_address0_local = 'bx;
        end
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_16_address0_local = weights1_16_addr_reg_3652;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_16_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1943_state18 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_17_address0_local = weights1_17_addr_reg_3692;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_17_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_18_address0_local = weights1_18_addr_reg_3732;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_18_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_19_address0_local = weights1_19_addr_reg_3772;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_19_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_1_address0_local = weights1_1_addr_reg_3682;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_1_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_20_address0_local = weights1_20_addr_reg_3812;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_20_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_20_address0_local = 'bx;
        end
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_21_address0_local = weights1_21_addr_reg_3852;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_21_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_21_address0_local = 'bx;
        end
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_22_address0_local = weights1_22_addr_reg_3892;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_22_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_22_address0_local = 'bx;
        end
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_23_address0_local = weights1_23_addr_reg_3932;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_23_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_23_address0_local = 'bx;
        end
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1943_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_24_address0_local = weights1_24_addr_reg_3657;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_24_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1954_state18 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_25_address0_local = weights1_25_addr_reg_3697;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_25_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_26_address0_local = weights1_26_addr_reg_3737;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_26_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_27_address0_local = weights1_27_addr_reg_3777;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_27_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_28_address0_local = weights1_28_addr_reg_3817;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_28_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_28_address0_local = 'bx;
        end
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_29_address0_local = weights1_29_addr_reg_3857;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_29_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_29_address0_local = 'bx;
        end
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
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
            weights1_2_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_30_address0_local = weights1_30_addr_reg_3897;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_30_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_30_address0_local = 'bx;
        end
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_31_address0_local = weights1_31_addr_reg_3937;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_31_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_31_address0_local = 'bx;
        end
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1954_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_32_address0_local = weights1_32_addr_reg_3662;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_32_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1965_state18 == 1'b1))) begin
        weights1_32_we0_local = 1'b1;
    end else begin
        weights1_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_33_address0_local = weights1_33_addr_reg_3702;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_33_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_33_we0_local = 1'b1;
    end else begin
        weights1_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_34_address0_local = weights1_34_addr_reg_3742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_34_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_34_we0_local = 1'b1;
    end else begin
        weights1_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_35_address0_local = weights1_35_addr_reg_3782;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_35_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_35_we0_local = 1'b1;
    end else begin
        weights1_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_36_address0_local = weights1_36_addr_reg_3822;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_36_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_36_address0_local = 'bx;
        end
    end else begin
        weights1_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_36_ce0_local = 1'b1;
    end else begin
        weights1_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_36_we0_local = 1'b1;
    end else begin
        weights1_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_37_address0_local = weights1_37_addr_reg_3862;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_37_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_37_address0_local = 'bx;
        end
    end else begin
        weights1_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_37_ce0_local = 1'b1;
    end else begin
        weights1_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_37_we0_local = 1'b1;
    end else begin
        weights1_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_38_address0_local = weights1_38_addr_reg_3902;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_38_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_38_address0_local = 'bx;
        end
    end else begin
        weights1_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_38_ce0_local = 1'b1;
    end else begin
        weights1_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_38_we0_local = 1'b1;
    end else begin
        weights1_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_39_address0_local = weights1_39_addr_reg_3942;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_39_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_39_address0_local = 'bx;
        end
    end else begin
        weights1_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_39_ce0_local = 1'b1;
    end else begin
        weights1_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1965_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_39_we0_local = 1'b1;
    end else begin
        weights1_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_3_address0_local = weights1_3_addr_reg_3762;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_3_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_40_address0_local = weights1_40_addr_reg_3667;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_40_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1976_state18 == 1'b1))) begin
        weights1_40_we0_local = 1'b1;
    end else begin
        weights1_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_41_address0_local = weights1_41_addr_reg_3707;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_41_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_41_we0_local = 1'b1;
    end else begin
        weights1_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_42_address0_local = weights1_42_addr_reg_3747;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_42_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_42_we0_local = 1'b1;
    end else begin
        weights1_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_43_address0_local = weights1_43_addr_reg_3787;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_43_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_43_we0_local = 1'b1;
    end else begin
        weights1_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_44_address0_local = weights1_44_addr_reg_3827;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_44_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_44_address0_local = 'bx;
        end
    end else begin
        weights1_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_44_ce0_local = 1'b1;
    end else begin
        weights1_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_44_we0_local = 1'b1;
    end else begin
        weights1_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_45_address0_local = weights1_45_addr_reg_3867;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_45_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_45_address0_local = 'bx;
        end
    end else begin
        weights1_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_45_ce0_local = 1'b1;
    end else begin
        weights1_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_45_we0_local = 1'b1;
    end else begin
        weights1_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_46_address0_local = weights1_46_addr_reg_3907;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_46_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_46_address0_local = 'bx;
        end
    end else begin
        weights1_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_46_ce0_local = 1'b1;
    end else begin
        weights1_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_46_we0_local = 1'b1;
    end else begin
        weights1_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_47_address0_local = weights1_47_addr_reg_3947;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_47_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_47_address0_local = 'bx;
        end
    end else begin
        weights1_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_47_ce0_local = 1'b1;
    end else begin
        weights1_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1976_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_47_we0_local = 1'b1;
    end else begin
        weights1_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_48_address0_local = weights1_48_addr_reg_3672;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_48_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1987_state18 == 1'b1))) begin
        weights1_48_we0_local = 1'b1;
    end else begin
        weights1_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_49_address0_local = weights1_49_addr_reg_3712;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_49_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_49_we0_local = 1'b1;
    end else begin
        weights1_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_4_address0_local = weights1_4_addr_reg_3802;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_4_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_4_address0_local = 'bx;
        end
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_50_address0_local = weights1_50_addr_reg_3752;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_50_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_50_we0_local = 1'b1;
    end else begin
        weights1_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_51_address0_local = weights1_51_addr_reg_3792;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_51_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_51_we0_local = 1'b1;
    end else begin
        weights1_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_52_address0_local = weights1_52_addr_reg_3832;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_52_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_52_address0_local = 'bx;
        end
    end else begin
        weights1_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_52_ce0_local = 1'b1;
    end else begin
        weights1_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_52_we0_local = 1'b1;
    end else begin
        weights1_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_53_address0_local = weights1_53_addr_reg_3872;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_53_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_53_address0_local = 'bx;
        end
    end else begin
        weights1_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_53_ce0_local = 1'b1;
    end else begin
        weights1_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_53_we0_local = 1'b1;
    end else begin
        weights1_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_54_address0_local = weights1_54_addr_reg_3912;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_54_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_54_address0_local = 'bx;
        end
    end else begin
        weights1_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_54_ce0_local = 1'b1;
    end else begin
        weights1_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_54_we0_local = 1'b1;
    end else begin
        weights1_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_55_address0_local = weights1_55_addr_reg_3952;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_55_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_55_address0_local = 'bx;
        end
    end else begin
        weights1_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_55_ce0_local = 1'b1;
    end else begin
        weights1_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1987_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_55_we0_local = 1'b1;
    end else begin
        weights1_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_56_address0_local = weights1_56_addr_reg_3677;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_56_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_56_we0_local = 1'b1;
    end else begin
        weights1_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_57_address0_local = weights1_57_addr_reg_3717;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_57_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_57_we0_local = 1'b1;
    end else begin
        weights1_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights1_58_address0_local = weights1_58_addr_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_58_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_58_we0_local = 1'b1;
    end else begin
        weights1_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights1_59_address0_local = weights1_59_addr_reg_3797;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_59_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_59_we0_local = 1'b1;
    end else begin
        weights1_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_5_address0_local = weights1_5_addr_reg_3842;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_5_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_5_address0_local = 'bx;
        end
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights1_60_address0_local = weights1_60_addr_reg_3837;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_60_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_60_address0_local = 'bx;
        end
    end else begin
        weights1_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_60_ce0_local = 1'b1;
    end else begin
        weights1_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_60_we0_local = 1'b1;
    end else begin
        weights1_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights1_61_address0_local = weights1_61_addr_reg_3877;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_61_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_61_address0_local = 'bx;
        end
    end else begin
        weights1_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights1_61_ce0_local = 1'b1;
    end else begin
        weights1_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_61_we0_local = 1'b1;
    end else begin
        weights1_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_62_address0_local = weights1_62_addr_reg_3917;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_62_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_62_address0_local = 'bx;
        end
    end else begin
        weights1_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_62_ce0_local = 1'b1;
    end else begin
        weights1_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_62_we0_local = 1'b1;
    end else begin
        weights1_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_63_address0_local = weights1_63_addr_reg_3957;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_63_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_63_address0_local = 'bx;
        end
    end else begin
        weights1_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_63_ce0_local = 1'b1;
    end else begin
        weights1_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2009_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_63_we0_local = 1'b1;
    end else begin
        weights1_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights1_6_address0_local = weights1_6_addr_reg_3882;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_6_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_6_address0_local = 'bx;
        end
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights1_7_address0_local = weights1_7_addr_reg_3922;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_7_address0_local = zext_ln126_fu_2137_p1;
        end else begin
            weights1_7_address0_local = 'bx;
        end
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1914_state25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights1_8_address0_local = weights1_8_addr_reg_3647;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_8_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1932_state18 == 1'b1))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights1_9_address0_local = weights1_9_addr_reg_3687;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_9_address0_local = zext_ln126_fu_2137_p1;
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
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1932_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
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
assign add_ln126_1_fu_2123_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_2095_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln127_fu_3153_p2 = (select_ln121_reg_3312 + 7'd8);
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
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
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
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
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
assign bitcast_ln128_64_fu_3171_p1 = reg_2059;
assign bitcast_ln128_65_fu_3183_p1 = sub_1_reg_4067;
assign bitcast_ln128_66_fu_3194_p1 = sub_2_reg_4074;
assign bitcast_ln128_67_fu_3205_p1 = sub_3_reg_4081;
assign bitcast_ln128_68_fu_3216_p1 = sub_4_reg_4088;
assign bitcast_ln128_69_fu_3227_p1 = sub_5_reg_4095;
assign bitcast_ln128_70_fu_3238_p1 = sub_6_reg_4102;
assign bitcast_ln128_71_fu_3253_p1 = reg_2059;
assign d_weights1_0_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_32_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_32_ce0 = d_weights1_32_ce0_local;
assign d_weights1_33_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_33_ce0 = d_weights1_33_ce0_local;
assign d_weights1_34_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_34_ce0 = d_weights1_34_ce0_local;
assign d_weights1_35_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_35_ce0 = d_weights1_35_ce0_local;
assign d_weights1_36_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_36_ce0 = d_weights1_36_ce0_local;
assign d_weights1_37_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_37_ce0 = d_weights1_37_ce0_local;
assign d_weights1_38_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_38_ce0 = d_weights1_38_ce0_local;
assign d_weights1_39_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_39_ce0 = d_weights1_39_ce0_local;
assign d_weights1_3_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_40_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_40_ce0 = d_weights1_40_ce0_local;
assign d_weights1_41_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_41_ce0 = d_weights1_41_ce0_local;
assign d_weights1_42_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_42_ce0 = d_weights1_42_ce0_local;
assign d_weights1_43_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_43_ce0 = d_weights1_43_ce0_local;
assign d_weights1_44_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_44_ce0 = d_weights1_44_ce0_local;
assign d_weights1_45_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_45_ce0 = d_weights1_45_ce0_local;
assign d_weights1_46_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_46_ce0 = d_weights1_46_ce0_local;
assign d_weights1_47_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_47_ce0 = d_weights1_47_ce0_local;
assign d_weights1_48_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_48_ce0 = d_weights1_48_ce0_local;
assign d_weights1_49_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_49_ce0 = d_weights1_49_ce0_local;
assign d_weights1_4_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_50_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_50_ce0 = d_weights1_50_ce0_local;
assign d_weights1_51_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_51_ce0 = d_weights1_51_ce0_local;
assign d_weights1_52_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_52_ce0 = d_weights1_52_ce0_local;
assign d_weights1_53_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_53_ce0 = d_weights1_53_ce0_local;
assign d_weights1_54_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_54_ce0 = d_weights1_54_ce0_local;
assign d_weights1_55_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_55_ce0 = d_weights1_55_ce0_local;
assign d_weights1_56_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_56_ce0 = d_weights1_56_ce0_local;
assign d_weights1_57_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_57_ce0 = d_weights1_57_ce0_local;
assign d_weights1_58_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_58_ce0 = d_weights1_58_ce0_local;
assign d_weights1_59_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_59_ce0 = d_weights1_59_ce0_local;
assign d_weights1_5_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_60_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_60_ce0 = d_weights1_60_ce0_local;
assign d_weights1_61_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_61_ce0 = d_weights1_61_ce0_local;
assign d_weights1_62_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_62_ce0 = d_weights1_62_ce0_local;
assign d_weights1_63_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_63_ce0 = d_weights1_63_ce0_local;
assign d_weights1_6_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln126_fu_2137_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_4927_p_ce = 1'b1;
assign grp_fu_4927_p_din0 = grp_fu_2011_p0;
assign grp_fu_4927_p_din1 = grp_fu_2011_p1;
assign grp_fu_4927_p_opcode = grp_fu_2011_opcode;
assign grp_fu_4931_p_ce = 1'b1;
assign grp_fu_4931_p_din0 = norm_9_reg_4119;
assign grp_fu_4931_p_din1 = mul17_7_reg_4114;
assign grp_fu_4931_p_opcode = 2'd0;
assign grp_fu_4935_p_ce = 1'b1;
assign grp_fu_4935_p_din0 = grp_fu_2019_p0;
assign grp_fu_4935_p_din1 = grp_fu_2019_p1;
assign icmp_ln126_fu_2089_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd104) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_324;
assign select_ln121_fu_2115_p3 = ((tmp_fu_2107_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln126_fu_2129_p3 = ((tmp_fu_2107_p3[0:0] == 1'b1) ? add_ln126_1_fu_2123_p2 : ap_sig_allocacmp_i_load);
assign tmp_15_fu_2273_p17 = 'bx;
assign tmp_16_fu_2344_p10 = weights1_32_q0;
assign tmp_16_fu_2344_p12 = weights1_40_q0;
assign tmp_16_fu_2344_p14 = weights1_48_q0;
assign tmp_16_fu_2344_p16 = weights1_56_q0;
assign tmp_16_fu_2344_p17 = 'bx;
assign tmp_16_fu_2344_p2 = weights1_0_q0;
assign tmp_16_fu_2344_p4 = weights1_8_q0;
assign tmp_16_fu_2344_p6 = weights1_16_q0;
assign tmp_16_fu_2344_p8 = weights1_24_q0;
assign tmp_17_fu_2383_p17 = 'bx;
assign tmp_18_fu_2454_p10 = weights1_33_q0;
assign tmp_18_fu_2454_p12 = weights1_41_q0;
assign tmp_18_fu_2454_p14 = weights1_49_q0;
assign tmp_18_fu_2454_p16 = weights1_57_q0;
assign tmp_18_fu_2454_p17 = 'bx;
assign tmp_18_fu_2454_p2 = weights1_1_q0;
assign tmp_18_fu_2454_p4 = weights1_9_q0;
assign tmp_18_fu_2454_p6 = weights1_17_q0;
assign tmp_18_fu_2454_p8 = weights1_25_q0;
assign tmp_19_fu_2493_p17 = 'bx;
assign tmp_20_fu_2564_p10 = weights1_34_q0;
assign tmp_20_fu_2564_p12 = weights1_42_q0;
assign tmp_20_fu_2564_p14 = weights1_50_q0;
assign tmp_20_fu_2564_p16 = weights1_58_q0;
assign tmp_20_fu_2564_p17 = 'bx;
assign tmp_20_fu_2564_p2 = weights1_2_q0;
assign tmp_20_fu_2564_p4 = weights1_10_q0;
assign tmp_20_fu_2564_p6 = weights1_18_q0;
assign tmp_20_fu_2564_p8 = weights1_26_q0;
assign tmp_21_fu_2603_p17 = 'bx;
assign tmp_22_fu_2674_p10 = weights1_35_q0;
assign tmp_22_fu_2674_p12 = weights1_43_q0;
assign tmp_22_fu_2674_p14 = weights1_51_q0;
assign tmp_22_fu_2674_p16 = weights1_59_q0;
assign tmp_22_fu_2674_p17 = 'bx;
assign tmp_22_fu_2674_p2 = weights1_3_q0;
assign tmp_22_fu_2674_p4 = weights1_11_q0;
assign tmp_22_fu_2674_p6 = weights1_19_q0;
assign tmp_22_fu_2674_p8 = weights1_27_q0;
assign tmp_23_fu_2713_p17 = 'bx;
assign tmp_24_fu_2784_p10 = weights1_36_q0;
assign tmp_24_fu_2784_p12 = weights1_44_q0;
assign tmp_24_fu_2784_p14 = weights1_52_q0;
assign tmp_24_fu_2784_p16 = weights1_60_q0;
assign tmp_24_fu_2784_p17 = 'bx;
assign tmp_24_fu_2784_p2 = weights1_4_q0;
assign tmp_24_fu_2784_p4 = weights1_12_q0;
assign tmp_24_fu_2784_p6 = weights1_20_q0;
assign tmp_24_fu_2784_p8 = weights1_28_q0;
assign tmp_25_fu_2823_p17 = 'bx;
assign tmp_26_fu_2894_p10 = weights1_37_q0;
assign tmp_26_fu_2894_p12 = weights1_45_q0;
assign tmp_26_fu_2894_p14 = weights1_53_q0;
assign tmp_26_fu_2894_p16 = weights1_61_q0;
assign tmp_26_fu_2894_p17 = 'bx;
assign tmp_26_fu_2894_p2 = weights1_5_q0;
assign tmp_26_fu_2894_p4 = weights1_13_q0;
assign tmp_26_fu_2894_p6 = weights1_21_q0;
assign tmp_26_fu_2894_p8 = weights1_29_q0;
assign tmp_27_fu_2933_p17 = 'bx;
assign tmp_28_fu_3004_p10 = weights1_38_q0;
assign tmp_28_fu_3004_p12 = weights1_46_q0;
assign tmp_28_fu_3004_p14 = weights1_54_q0;
assign tmp_28_fu_3004_p16 = weights1_62_q0;
assign tmp_28_fu_3004_p17 = 'bx;
assign tmp_28_fu_3004_p2 = weights1_6_q0;
assign tmp_28_fu_3004_p4 = weights1_14_q0;
assign tmp_28_fu_3004_p6 = weights1_22_q0;
assign tmp_28_fu_3004_p8 = weights1_30_q0;
assign tmp_29_fu_3043_p17 = 'bx;
assign tmp_30_fu_3114_p10 = weights1_39_q0;
assign tmp_30_fu_3114_p12 = weights1_47_q0;
assign tmp_30_fu_3114_p14 = weights1_55_q0;
assign tmp_30_fu_3114_p16 = weights1_63_q0;
assign tmp_30_fu_3114_p17 = 'bx;
assign tmp_30_fu_3114_p2 = weights1_7_q0;
assign tmp_30_fu_3114_p4 = weights1_15_q0;
assign tmp_30_fu_3114_p6 = weights1_23_q0;
assign tmp_30_fu_3114_p8 = weights1_31_q0;
assign tmp_fu_2107_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln127_fu_2269_p1 = select_ln121_fu_2115_p3[5:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_32_address0 = weights1_32_address0_local;
assign weights1_32_ce0 = weights1_32_ce0_local;
assign weights1_32_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_32_we0 = weights1_32_we0_local;
assign weights1_33_address0 = weights1_33_address0_local;
assign weights1_33_ce0 = weights1_33_ce0_local;
assign weights1_33_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_33_we0 = weights1_33_we0_local;
assign weights1_34_address0 = weights1_34_address0_local;
assign weights1_34_ce0 = weights1_34_ce0_local;
assign weights1_34_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_34_we0 = weights1_34_we0_local;
assign weights1_35_address0 = weights1_35_address0_local;
assign weights1_35_ce0 = weights1_35_ce0_local;
assign weights1_35_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_35_we0 = weights1_35_we0_local;
assign weights1_36_address0 = weights1_36_address0_local;
assign weights1_36_ce0 = weights1_36_ce0_local;
assign weights1_36_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_36_we0 = weights1_36_we0_local;
assign weights1_37_address0 = weights1_37_address0_local;
assign weights1_37_ce0 = weights1_37_ce0_local;
assign weights1_37_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_37_we0 = weights1_37_we0_local;
assign weights1_38_address0 = weights1_38_address0_local;
assign weights1_38_ce0 = weights1_38_ce0_local;
assign weights1_38_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_38_we0 = weights1_38_we0_local;
assign weights1_39_address0 = weights1_39_address0_local;
assign weights1_39_ce0 = weights1_39_ce0_local;
assign weights1_39_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_39_we0 = weights1_39_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_40_address0 = weights1_40_address0_local;
assign weights1_40_ce0 = weights1_40_ce0_local;
assign weights1_40_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_40_we0 = weights1_40_we0_local;
assign weights1_41_address0 = weights1_41_address0_local;
assign weights1_41_ce0 = weights1_41_ce0_local;
assign weights1_41_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_41_we0 = weights1_41_we0_local;
assign weights1_42_address0 = weights1_42_address0_local;
assign weights1_42_ce0 = weights1_42_ce0_local;
assign weights1_42_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_42_we0 = weights1_42_we0_local;
assign weights1_43_address0 = weights1_43_address0_local;
assign weights1_43_ce0 = weights1_43_ce0_local;
assign weights1_43_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_43_we0 = weights1_43_we0_local;
assign weights1_44_address0 = weights1_44_address0_local;
assign weights1_44_ce0 = weights1_44_ce0_local;
assign weights1_44_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_44_we0 = weights1_44_we0_local;
assign weights1_45_address0 = weights1_45_address0_local;
assign weights1_45_ce0 = weights1_45_ce0_local;
assign weights1_45_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_45_we0 = weights1_45_we0_local;
assign weights1_46_address0 = weights1_46_address0_local;
assign weights1_46_ce0 = weights1_46_ce0_local;
assign weights1_46_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_46_we0 = weights1_46_we0_local;
assign weights1_47_address0 = weights1_47_address0_local;
assign weights1_47_ce0 = weights1_47_ce0_local;
assign weights1_47_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_47_we0 = weights1_47_we0_local;
assign weights1_48_address0 = weights1_48_address0_local;
assign weights1_48_ce0 = weights1_48_ce0_local;
assign weights1_48_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_48_we0 = weights1_48_we0_local;
assign weights1_49_address0 = weights1_49_address0_local;
assign weights1_49_ce0 = weights1_49_ce0_local;
assign weights1_49_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_49_we0 = weights1_49_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_50_address0 = weights1_50_address0_local;
assign weights1_50_ce0 = weights1_50_ce0_local;
assign weights1_50_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_50_we0 = weights1_50_we0_local;
assign weights1_51_address0 = weights1_51_address0_local;
assign weights1_51_ce0 = weights1_51_ce0_local;
assign weights1_51_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_51_we0 = weights1_51_we0_local;
assign weights1_52_address0 = weights1_52_address0_local;
assign weights1_52_ce0 = weights1_52_ce0_local;
assign weights1_52_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_52_we0 = weights1_52_we0_local;
assign weights1_53_address0 = weights1_53_address0_local;
assign weights1_53_ce0 = weights1_53_ce0_local;
assign weights1_53_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_53_we0 = weights1_53_we0_local;
assign weights1_54_address0 = weights1_54_address0_local;
assign weights1_54_ce0 = weights1_54_ce0_local;
assign weights1_54_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_54_we0 = weights1_54_we0_local;
assign weights1_55_address0 = weights1_55_address0_local;
assign weights1_55_ce0 = weights1_55_ce0_local;
assign weights1_55_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_55_we0 = weights1_55_we0_local;
assign weights1_56_address0 = weights1_56_address0_local;
assign weights1_56_ce0 = weights1_56_ce0_local;
assign weights1_56_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_56_we0 = weights1_56_we0_local;
assign weights1_57_address0 = weights1_57_address0_local;
assign weights1_57_ce0 = weights1_57_ce0_local;
assign weights1_57_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_57_we0 = weights1_57_we0_local;
assign weights1_58_address0 = weights1_58_address0_local;
assign weights1_58_ce0 = weights1_58_ce0_local;
assign weights1_58_d0 = bitcast_ln128_66_fu_3194_p1;
assign weights1_58_we0 = weights1_58_we0_local;
assign weights1_59_address0 = weights1_59_address0_local;
assign weights1_59_ce0 = weights1_59_ce0_local;
assign weights1_59_d0 = bitcast_ln128_67_fu_3205_p1;
assign weights1_59_we0 = weights1_59_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_60_address0 = weights1_60_address0_local;
assign weights1_60_ce0 = weights1_60_ce0_local;
assign weights1_60_d0 = bitcast_ln128_68_fu_3216_p1;
assign weights1_60_we0 = weights1_60_we0_local;
assign weights1_61_address0 = weights1_61_address0_local;
assign weights1_61_ce0 = weights1_61_ce0_local;
assign weights1_61_d0 = bitcast_ln128_69_fu_3227_p1;
assign weights1_61_we0 = weights1_61_we0_local;
assign weights1_62_address0 = weights1_62_address0_local;
assign weights1_62_ce0 = weights1_62_ce0_local;
assign weights1_62_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_62_we0 = weights1_62_we0_local;
assign weights1_63_address0 = weights1_63_address0_local;
assign weights1_63_ce0 = weights1_63_ce0_local;
assign weights1_63_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_63_we0 = weights1_63_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_70_fu_3238_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_71_fu_3253_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_64_fu_3171_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_65_fu_3183_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln126_fu_2137_p1 = select_ln126_fu_2129_p3;
endmodule 
