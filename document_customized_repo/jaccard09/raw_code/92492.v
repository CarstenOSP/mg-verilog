module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_8_address0,buff_B0_8_ce0,buff_B0_8_q0,buff_B0_16_address0,buff_B0_16_ce0,buff_B0_16_q0,buff_B0_24_address0,buff_B0_24_ce0,buff_B0_24_q0,buff_B0_32_address0,buff_B0_32_ce0,buff_B0_32_q0,buff_B0_40_address0,buff_B0_40_ce0,buff_B0_40_q0,buff_B0_48_address0,buff_B0_48_ce0,buff_B0_48_q0,buff_B0_56_address0,buff_B0_56_ce0,buff_B0_56_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_9_address0,buff_B0_9_ce0,buff_B0_9_q0,buff_B0_17_address0,buff_B0_17_ce0,buff_B0_17_q0,buff_B0_25_address0,buff_B0_25_ce0,buff_B0_25_q0,buff_B0_33_address0,buff_B0_33_ce0,buff_B0_33_q0,buff_B0_41_address0,buff_B0_41_ce0,buff_B0_41_q0,buff_B0_49_address0,buff_B0_49_ce0,buff_B0_49_q0,buff_B0_57_address0,buff_B0_57_ce0,buff_B0_57_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_10_address0,buff_B0_10_ce0,buff_B0_10_q0,buff_B0_18_address0,buff_B0_18_ce0,buff_B0_18_q0,buff_B0_26_address0,buff_B0_26_ce0,buff_B0_26_q0,buff_B0_34_address0,buff_B0_34_ce0,buff_B0_34_q0,buff_B0_42_address0,buff_B0_42_ce0,buff_B0_42_q0,buff_B0_50_address0,buff_B0_50_ce0,buff_B0_50_q0,buff_B0_58_address0,buff_B0_58_ce0,buff_B0_58_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,buff_B0_11_address0,buff_B0_11_ce0,buff_B0_11_q0,buff_B0_19_address0,buff_B0_19_ce0,buff_B0_19_q0,buff_B0_27_address0,buff_B0_27_ce0,buff_B0_27_q0,buff_B0_35_address0,buff_B0_35_ce0,buff_B0_35_q0,buff_B0_43_address0,buff_B0_43_ce0,buff_B0_43_q0,buff_B0_51_address0,buff_B0_51_ce0,buff_B0_51_q0,buff_B0_59_address0,buff_B0_59_ce0,buff_B0_59_q0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_q0,buff_B0_12_address0,buff_B0_12_ce0,buff_B0_12_q0,buff_B0_20_address0,buff_B0_20_ce0,buff_B0_20_q0,buff_B0_28_address0,buff_B0_28_ce0,buff_B0_28_q0,buff_B0_36_address0,buff_B0_36_ce0,buff_B0_36_q0,buff_B0_44_address0,buff_B0_44_ce0,buff_B0_44_q0,buff_B0_52_address0,buff_B0_52_ce0,buff_B0_52_q0,buff_B0_60_address0,buff_B0_60_ce0,buff_B0_60_q0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_q0,buff_B0_13_address0,buff_B0_13_ce0,buff_B0_13_q0,buff_B0_21_address0,buff_B0_21_ce0,buff_B0_21_q0,buff_B0_29_address0,buff_B0_29_ce0,buff_B0_29_q0,buff_B0_37_address0,buff_B0_37_ce0,buff_B0_37_q0,buff_B0_45_address0,buff_B0_45_ce0,buff_B0_45_q0,buff_B0_53_address0,buff_B0_53_ce0,buff_B0_53_q0,buff_B0_61_address0,buff_B0_61_ce0,buff_B0_61_q0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_q0,buff_B0_14_address0,buff_B0_14_ce0,buff_B0_14_q0,buff_B0_22_address0,buff_B0_22_ce0,buff_B0_22_q0,buff_B0_30_address0,buff_B0_30_ce0,buff_B0_30_q0,buff_B0_38_address0,buff_B0_38_ce0,buff_B0_38_q0,buff_B0_46_address0,buff_B0_46_ce0,buff_B0_46_q0,buff_B0_54_address0,buff_B0_54_ce0,buff_B0_54_q0,buff_B0_62_address0,buff_B0_62_ce0,buff_B0_62_q0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_q0,buff_B0_15_address0,buff_B0_15_ce0,buff_B0_15_q0,buff_B0_23_address0,buff_B0_23_ce0,buff_B0_23_q0,buff_B0_31_address0,buff_B0_31_ce0,buff_B0_31_q0,buff_B0_39_address0,buff_B0_39_ce0,buff_B0_39_q0,buff_B0_47_address0,buff_B0_47_ce0,buff_B0_47_q0,buff_B0_55_address0,buff_B0_55_ce0,buff_B0_55_q0,buff_B0_63_address0,buff_B0_63_ce0,buff_B0_63_q0,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_1_address1,buff_A0_1_ce1,buff_A0_1_q1,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_2_address1,buff_A0_2_ce1,buff_A0_2_q1,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A0_3_address1,buff_A0_3_ce1,buff_A0_3_q1,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,grp_fu_1123_p_din0,grp_fu_1123_p_din1,grp_fu_1123_p_opcode,grp_fu_1123_p_dout0,grp_fu_1123_p_ce,grp_fu_1127_p_din0,grp_fu_1127_p_din1,grp_fu_1127_p_dout0,grp_fu_1127_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 57'd1;
parameter    ap_ST_fsm_pp0_stage1 = 57'd2;
parameter    ap_ST_fsm_pp0_stage2 = 57'd4;
parameter    ap_ST_fsm_pp0_stage3 = 57'd8;
parameter    ap_ST_fsm_pp0_stage4 = 57'd16;
parameter    ap_ST_fsm_pp0_stage5 = 57'd32;
parameter    ap_ST_fsm_pp0_stage6 = 57'd64;
parameter    ap_ST_fsm_pp0_stage7 = 57'd128;
parameter    ap_ST_fsm_pp0_stage8 = 57'd256;
parameter    ap_ST_fsm_pp0_stage9 = 57'd512;
parameter    ap_ST_fsm_pp0_stage10 = 57'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 57'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 57'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 57'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 57'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 57'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 57'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 57'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 57'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 57'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 57'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 57'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 57'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 57'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 57'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 57'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 57'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 57'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 57'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 57'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 57'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 57'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 57'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 57'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 57'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 57'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 57'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 57'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 57'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 57'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 57'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 57'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 57'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 57'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 57'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 57'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 57'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 57'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 57'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 57'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 57'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 57'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 57'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 57'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 57'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 57'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 57'd72057594037927936;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [5:0] buff_B0_8_address0;
output   buff_B0_8_ce0;
input  [31:0] buff_B0_8_q0;
output  [5:0] buff_B0_16_address0;
output   buff_B0_16_ce0;
input  [31:0] buff_B0_16_q0;
output  [5:0] buff_B0_24_address0;
output   buff_B0_24_ce0;
input  [31:0] buff_B0_24_q0;
output  [5:0] buff_B0_32_address0;
output   buff_B0_32_ce0;
input  [31:0] buff_B0_32_q0;
output  [5:0] buff_B0_40_address0;
output   buff_B0_40_ce0;
input  [31:0] buff_B0_40_q0;
output  [5:0] buff_B0_48_address0;
output   buff_B0_48_ce0;
input  [31:0] buff_B0_48_q0;
output  [5:0] buff_B0_56_address0;
output   buff_B0_56_ce0;
input  [31:0] buff_B0_56_q0;
output  [5:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [5:0] buff_B0_9_address0;
output   buff_B0_9_ce0;
input  [31:0] buff_B0_9_q0;
output  [5:0] buff_B0_17_address0;
output   buff_B0_17_ce0;
input  [31:0] buff_B0_17_q0;
output  [5:0] buff_B0_25_address0;
output   buff_B0_25_ce0;
input  [31:0] buff_B0_25_q0;
output  [5:0] buff_B0_33_address0;
output   buff_B0_33_ce0;
input  [31:0] buff_B0_33_q0;
output  [5:0] buff_B0_41_address0;
output   buff_B0_41_ce0;
input  [31:0] buff_B0_41_q0;
output  [5:0] buff_B0_49_address0;
output   buff_B0_49_ce0;
input  [31:0] buff_B0_49_q0;
output  [5:0] buff_B0_57_address0;
output   buff_B0_57_ce0;
input  [31:0] buff_B0_57_q0;
output  [5:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [5:0] buff_B0_10_address0;
output   buff_B0_10_ce0;
input  [31:0] buff_B0_10_q0;
output  [5:0] buff_B0_18_address0;
output   buff_B0_18_ce0;
input  [31:0] buff_B0_18_q0;
output  [5:0] buff_B0_26_address0;
output   buff_B0_26_ce0;
input  [31:0] buff_B0_26_q0;
output  [5:0] buff_B0_34_address0;
output   buff_B0_34_ce0;
input  [31:0] buff_B0_34_q0;
output  [5:0] buff_B0_42_address0;
output   buff_B0_42_ce0;
input  [31:0] buff_B0_42_q0;
output  [5:0] buff_B0_50_address0;
output   buff_B0_50_ce0;
input  [31:0] buff_B0_50_q0;
output  [5:0] buff_B0_58_address0;
output   buff_B0_58_ce0;
input  [31:0] buff_B0_58_q0;
output  [5:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
output  [5:0] buff_B0_11_address0;
output   buff_B0_11_ce0;
input  [31:0] buff_B0_11_q0;
output  [5:0] buff_B0_19_address0;
output   buff_B0_19_ce0;
input  [31:0] buff_B0_19_q0;
output  [5:0] buff_B0_27_address0;
output   buff_B0_27_ce0;
input  [31:0] buff_B0_27_q0;
output  [5:0] buff_B0_35_address0;
output   buff_B0_35_ce0;
input  [31:0] buff_B0_35_q0;
output  [5:0] buff_B0_43_address0;
output   buff_B0_43_ce0;
input  [31:0] buff_B0_43_q0;
output  [5:0] buff_B0_51_address0;
output   buff_B0_51_ce0;
input  [31:0] buff_B0_51_q0;
output  [5:0] buff_B0_59_address0;
output   buff_B0_59_ce0;
input  [31:0] buff_B0_59_q0;
output  [5:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
input  [31:0] buff_B0_4_q0;
output  [5:0] buff_B0_12_address0;
output   buff_B0_12_ce0;
input  [31:0] buff_B0_12_q0;
output  [5:0] buff_B0_20_address0;
output   buff_B0_20_ce0;
input  [31:0] buff_B0_20_q0;
output  [5:0] buff_B0_28_address0;
output   buff_B0_28_ce0;
input  [31:0] buff_B0_28_q0;
output  [5:0] buff_B0_36_address0;
output   buff_B0_36_ce0;
input  [31:0] buff_B0_36_q0;
output  [5:0] buff_B0_44_address0;
output   buff_B0_44_ce0;
input  [31:0] buff_B0_44_q0;
output  [5:0] buff_B0_52_address0;
output   buff_B0_52_ce0;
input  [31:0] buff_B0_52_q0;
output  [5:0] buff_B0_60_address0;
output   buff_B0_60_ce0;
input  [31:0] buff_B0_60_q0;
output  [5:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
input  [31:0] buff_B0_5_q0;
output  [5:0] buff_B0_13_address0;
output   buff_B0_13_ce0;
input  [31:0] buff_B0_13_q0;
output  [5:0] buff_B0_21_address0;
output   buff_B0_21_ce0;
input  [31:0] buff_B0_21_q0;
output  [5:0] buff_B0_29_address0;
output   buff_B0_29_ce0;
input  [31:0] buff_B0_29_q0;
output  [5:0] buff_B0_37_address0;
output   buff_B0_37_ce0;
input  [31:0] buff_B0_37_q0;
output  [5:0] buff_B0_45_address0;
output   buff_B0_45_ce0;
input  [31:0] buff_B0_45_q0;
output  [5:0] buff_B0_53_address0;
output   buff_B0_53_ce0;
input  [31:0] buff_B0_53_q0;
output  [5:0] buff_B0_61_address0;
output   buff_B0_61_ce0;
input  [31:0] buff_B0_61_q0;
output  [5:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
input  [31:0] buff_B0_6_q0;
output  [5:0] buff_B0_14_address0;
output   buff_B0_14_ce0;
input  [31:0] buff_B0_14_q0;
output  [5:0] buff_B0_22_address0;
output   buff_B0_22_ce0;
input  [31:0] buff_B0_22_q0;
output  [5:0] buff_B0_30_address0;
output   buff_B0_30_ce0;
input  [31:0] buff_B0_30_q0;
output  [5:0] buff_B0_38_address0;
output   buff_B0_38_ce0;
input  [31:0] buff_B0_38_q0;
output  [5:0] buff_B0_46_address0;
output   buff_B0_46_ce0;
input  [31:0] buff_B0_46_q0;
output  [5:0] buff_B0_54_address0;
output   buff_B0_54_ce0;
input  [31:0] buff_B0_54_q0;
output  [5:0] buff_B0_62_address0;
output   buff_B0_62_ce0;
input  [31:0] buff_B0_62_q0;
output  [5:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
input  [31:0] buff_B0_7_q0;
output  [5:0] buff_B0_15_address0;
output   buff_B0_15_ce0;
input  [31:0] buff_B0_15_q0;
output  [5:0] buff_B0_23_address0;
output   buff_B0_23_ce0;
input  [31:0] buff_B0_23_q0;
output  [5:0] buff_B0_31_address0;
output   buff_B0_31_ce0;
input  [31:0] buff_B0_31_q0;
output  [5:0] buff_B0_39_address0;
output   buff_B0_39_ce0;
input  [31:0] buff_B0_39_q0;
output  [5:0] buff_B0_47_address0;
output   buff_B0_47_ce0;
input  [31:0] buff_B0_47_q0;
output  [5:0] buff_B0_55_address0;
output   buff_B0_55_ce0;
input  [31:0] buff_B0_55_q0;
output  [5:0] buff_B0_63_address0;
output   buff_B0_63_ce0;
input  [31:0] buff_B0_63_q0;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [9:0] buff_A0_address1;
output   buff_A0_ce1;
input  [31:0] buff_A0_q1;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [9:0] buff_A0_1_address1;
output   buff_A0_1_ce1;
input  [31:0] buff_A0_1_q1;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [9:0] buff_A0_2_address1;
output   buff_A0_2_ce1;
input  [31:0] buff_A0_2_q1;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [9:0] buff_A0_3_address1;
output   buff_A0_3_ce1;
input  [31:0] buff_A0_3_q1;
input  [31:0] alpha;
output  [11:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [31:0] grp_fu_1123_p_din0;
output  [31:0] grp_fu_1123_p_din1;
output  [1:0] grp_fu_1123_p_opcode;
input  [31:0] grp_fu_1123_p_dout0;
output   grp_fu_1123_p_ce;
output  [31:0] grp_fu_1127_p_din0;
output  [31:0] grp_fu_1127_p_din1;
input  [31:0] grp_fu_1127_p_dout0;
output   grp_fu_1127_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [56:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln27_reg_1956;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_subdone;
reg   [31:0] reg_1205;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [31:0] reg_1211;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] reg_1217;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_1223;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [31:0] reg_1229;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [31:0] reg_1235;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [31:0] reg_1241;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [31:0] reg_1247;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
wire    ap_CS_fsm_pp0_stage53;
wire    ap_block_pp0_stage53_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_1284_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln5_fu_1317_p3;
reg   [6:0] select_ln5_reg_1960;
wire   [0:0] or_ln5_fu_1347_p2;
reg   [0:0] or_ln5_reg_1965;
wire   [5:0] trunc_ln28_fu_1361_p1;
reg   [5:0] trunc_ln28_reg_1970;
wire   [6:0] add_ln28_fu_1365_p2;
reg   [6:0] add_ln28_reg_1977;
wire   [6:0] k_mid2_fu_1371_p3;
reg   [6:0] k_mid2_reg_1982;
wire   [0:0] first_iter_1_fu_1413_p2;
reg   [0:0] first_iter_1_reg_1991;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [11:0] tmp1_addr_reg_1995;
reg   [11:0] tmp1_addr_reg_1995_pp0_iter1_reg;
wire   [5:0] trunc_ln30_fu_1508_p1;
reg   [5:0] trunc_ln30_reg_2320;
reg   [0:0] tmp_12_reg_2372;
reg   [0:0] tmp_12_reg_2372_pp0_iter1_reg;
reg   [31:0] arrayidx7813_promoted_reg_2376;
reg   [31:0] buff_A0_load_reg_2381;
wire   [31:0] tmp_fu_1584_p19;
reg   [31:0] tmp_reg_2386;
reg   [31:0] buff_A0_1_load_reg_2391;
wire   [31:0] tmp_1_fu_1623_p19;
reg   [31:0] tmp_1_reg_2396;
reg   [31:0] buff_A0_2_load_reg_2401;
wire   [31:0] tmp_2_fu_1662_p19;
reg   [31:0] tmp_2_reg_2406;
reg   [31:0] buff_A0_3_load_reg_2411;
wire   [31:0] tmp_3_fu_1701_p19;
reg   [31:0] tmp_3_reg_2416;
reg   [31:0] buff_A0_load_1_reg_2421;
wire   [31:0] tmp_4_fu_1740_p19;
reg   [31:0] tmp_4_reg_2426;
reg   [31:0] buff_A0_1_load_1_reg_2431;
wire   [31:0] tmp_5_fu_1779_p19;
reg   [31:0] tmp_5_reg_2436;
reg   [31:0] buff_A0_2_load_1_reg_2441;
wire   [31:0] tmp_6_fu_1818_p19;
reg   [31:0] tmp_6_reg_2446;
reg   [31:0] buff_A0_3_load_1_reg_2451;
wire   [31:0] tmp_7_fu_1857_p19;
reg   [31:0] tmp_7_reg_2456;
reg   [31:0] mul74_7_reg_2466;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast_fu_1503_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_1425_p1;
wire   [63:0] zext_ln31_fu_1527_p1;
wire   [63:0] zext_ln31_1_fu_1553_p1;
reg   [6:0] k_fu_222;
wire   [6:0] add_ln30_fu_1561_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_226;
wire   [6:0] select_ln28_fu_1408_p3;
reg   [10:0] indvar_flatten7_fu_230;
wire   [10:0] select_ln28_1_fu_1385_p3;
reg   [6:0] i_fu_234;
wire   [6:0] select_ln27_fu_1353_p3;
reg   [15:0] indvar_flatten21_fu_238;
wire   [15:0] add_ln27_1_fu_1290_p2;
reg   [31:0] empty_fu_242;
wire    ap_block_pp0_stage12;
reg    tmp1_ce0_local;
reg   [11:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage11;
reg    buff_B0_ce0_local;
reg    buff_B0_8_ce0_local;
reg    buff_B0_16_ce0_local;
reg    buff_B0_24_ce0_local;
reg    buff_B0_32_ce0_local;
reg    buff_B0_40_ce0_local;
reg    buff_B0_48_ce0_local;
reg    buff_B0_56_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_9_ce0_local;
reg    buff_B0_17_ce0_local;
reg    buff_B0_25_ce0_local;
reg    buff_B0_33_ce0_local;
reg    buff_B0_41_ce0_local;
reg    buff_B0_49_ce0_local;
reg    buff_B0_57_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_10_ce0_local;
reg    buff_B0_18_ce0_local;
reg    buff_B0_26_ce0_local;
reg    buff_B0_34_ce0_local;
reg    buff_B0_42_ce0_local;
reg    buff_B0_50_ce0_local;
reg    buff_B0_58_ce0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_11_ce0_local;
reg    buff_B0_19_ce0_local;
reg    buff_B0_27_ce0_local;
reg    buff_B0_35_ce0_local;
reg    buff_B0_43_ce0_local;
reg    buff_B0_51_ce0_local;
reg    buff_B0_59_ce0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_12_ce0_local;
reg    buff_B0_20_ce0_local;
reg    buff_B0_28_ce0_local;
reg    buff_B0_36_ce0_local;
reg    buff_B0_44_ce0_local;
reg    buff_B0_52_ce0_local;
reg    buff_B0_60_ce0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_13_ce0_local;
reg    buff_B0_21_ce0_local;
reg    buff_B0_29_ce0_local;
reg    buff_B0_37_ce0_local;
reg    buff_B0_45_ce0_local;
reg    buff_B0_53_ce0_local;
reg    buff_B0_61_ce0_local;
reg    buff_B0_6_ce0_local;
reg    buff_B0_14_ce0_local;
reg    buff_B0_22_ce0_local;
reg    buff_B0_30_ce0_local;
reg    buff_B0_38_ce0_local;
reg    buff_B0_46_ce0_local;
reg    buff_B0_54_ce0_local;
reg    buff_B0_62_ce0_local;
reg    buff_B0_7_ce0_local;
reg    buff_B0_15_ce0_local;
reg    buff_B0_23_ce0_local;
reg    buff_B0_31_ce0_local;
reg    buff_B0_39_ce0_local;
reg    buff_B0_47_ce0_local;
reg    buff_B0_55_ce0_local;
reg    buff_B0_63_ce0_local;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce1_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce1_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce1_local;
reg    buff_A0_3_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_1197_p0;
reg   [31:0] grp_fu_1197_p1;
wire    ap_block_pp0_stage19;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47;
wire    ap_CS_fsm_pp0_stage54;
wire    ap_block_pp0_stage54;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_1201_p0;
reg   [31:0] grp_fu_1201_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage18;
wire   [0:0] icmp_ln28_fu_1311_p2;
wire   [0:0] tmp_8_fu_1333_p3;
wire   [0:0] xor_ln30_fu_1341_p2;
wire   [6:0] add_ln27_fu_1305_p2;
wire   [6:0] select_ln5_1_fu_1325_p3;
wire   [10:0] add_ln28_1_fu_1379_p2;
wire   [11:0] tmp_s_fu_1418_p3;
wire   [11:0] select_ln28_cast_fu_1493_p1;
wire   [11:0] empty_11_fu_1497_p2;
wire   [3:0] lshr_ln5_1_fu_1511_p4;
wire   [9:0] tmp_9_fu_1520_p3;
wire   [2:0] tmp_10_fu_1535_p4;
wire   [9:0] tmp_11_fu_1544_p4;
wire   [31:0] tmp_fu_1584_p17;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_1_fu_1623_p17;
wire   [31:0] tmp_2_fu_1662_p17;
wire   [31:0] tmp_3_fu_1701_p17;
wire   [31:0] tmp_4_fu_1740_p17;
wire   [31:0] tmp_5_fu_1779_p17;
wire   [31:0] tmp_6_fu_1818_p17;
wire   [31:0] tmp_7_fu_1857_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [56:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage33_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage47_00001;
wire    ap_block_pp0_stage54_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_2063;
wire   [5:0] tmp_fu_1584_p1;
wire   [5:0] tmp_fu_1584_p3;
wire   [5:0] tmp_fu_1584_p5;
wire   [5:0] tmp_fu_1584_p7;
wire  signed [5:0] tmp_fu_1584_p9;
wire  signed [5:0] tmp_fu_1584_p11;
wire  signed [5:0] tmp_fu_1584_p13;
wire  signed [5:0] tmp_fu_1584_p15;
wire   [5:0] tmp_1_fu_1623_p1;
wire   [5:0] tmp_1_fu_1623_p3;
wire   [5:0] tmp_1_fu_1623_p5;
wire   [5:0] tmp_1_fu_1623_p7;
wire  signed [5:0] tmp_1_fu_1623_p9;
wire  signed [5:0] tmp_1_fu_1623_p11;
wire  signed [5:0] tmp_1_fu_1623_p13;
wire  signed [5:0] tmp_1_fu_1623_p15;
wire   [5:0] tmp_2_fu_1662_p1;
wire   [5:0] tmp_2_fu_1662_p3;
wire   [5:0] tmp_2_fu_1662_p5;
wire   [5:0] tmp_2_fu_1662_p7;
wire  signed [5:0] tmp_2_fu_1662_p9;
wire  signed [5:0] tmp_2_fu_1662_p11;
wire  signed [5:0] tmp_2_fu_1662_p13;
wire  signed [5:0] tmp_2_fu_1662_p15;
wire   [5:0] tmp_3_fu_1701_p1;
wire   [5:0] tmp_3_fu_1701_p3;
wire   [5:0] tmp_3_fu_1701_p5;
wire   [5:0] tmp_3_fu_1701_p7;
wire  signed [5:0] tmp_3_fu_1701_p9;
wire  signed [5:0] tmp_3_fu_1701_p11;
wire  signed [5:0] tmp_3_fu_1701_p13;
wire  signed [5:0] tmp_3_fu_1701_p15;
wire   [5:0] tmp_4_fu_1740_p1;
wire   [5:0] tmp_4_fu_1740_p3;
wire   [5:0] tmp_4_fu_1740_p5;
wire   [5:0] tmp_4_fu_1740_p7;
wire  signed [5:0] tmp_4_fu_1740_p9;
wire  signed [5:0] tmp_4_fu_1740_p11;
wire  signed [5:0] tmp_4_fu_1740_p13;
wire  signed [5:0] tmp_4_fu_1740_p15;
wire   [5:0] tmp_5_fu_1779_p1;
wire   [5:0] tmp_5_fu_1779_p3;
wire   [5:0] tmp_5_fu_1779_p5;
wire   [5:0] tmp_5_fu_1779_p7;
wire  signed [5:0] tmp_5_fu_1779_p9;
wire  signed [5:0] tmp_5_fu_1779_p11;
wire  signed [5:0] tmp_5_fu_1779_p13;
wire  signed [5:0] tmp_5_fu_1779_p15;
wire   [5:0] tmp_6_fu_1818_p1;
wire   [5:0] tmp_6_fu_1818_p3;
wire   [5:0] tmp_6_fu_1818_p5;
wire   [5:0] tmp_6_fu_1818_p7;
wire  signed [5:0] tmp_6_fu_1818_p9;
wire  signed [5:0] tmp_6_fu_1818_p11;
wire  signed [5:0] tmp_6_fu_1818_p13;
wire  signed [5:0] tmp_6_fu_1818_p15;
wire   [5:0] tmp_7_fu_1857_p1;
wire   [5:0] tmp_7_fu_1857_p3;
wire   [5:0] tmp_7_fu_1857_p5;
wire   [5:0] tmp_7_fu_1857_p7;
wire  signed [5:0] tmp_7_fu_1857_p9;
wire  signed [5:0] tmp_7_fu_1857_p11;
wire  signed [5:0] tmp_7_fu_1857_p13;
wire  signed [5:0] tmp_7_fu_1857_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 57'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_222 = 7'd0;
#0 j_fu_226 = 7'd0;
#0 indvar_flatten7_fu_230 = 11'd0;
#0 i_fu_234 = 7'd0;
#0 indvar_flatten21_fu_238 = 16'd0;
#0 empty_fu_242 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U142(.din0(buff_B0_q0),.din1(buff_B0_8_q0),.din2(buff_B0_16_q0),.din3(buff_B0_24_q0),.din4(buff_B0_32_q0),.din5(buff_B0_40_q0),.din6(buff_B0_48_q0),.din7(buff_B0_56_q0),.def(tmp_fu_1584_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_fu_1584_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U143(.din0(buff_B0_1_q0),.din1(buff_B0_9_q0),.din2(buff_B0_17_q0),.din3(buff_B0_25_q0),.din4(buff_B0_33_q0),.din5(buff_B0_41_q0),.din6(buff_B0_49_q0),.din7(buff_B0_57_q0),.def(tmp_1_fu_1623_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_1_fu_1623_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U144(.din0(buff_B0_2_q0),.din1(buff_B0_10_q0),.din2(buff_B0_18_q0),.din3(buff_B0_26_q0),.din4(buff_B0_34_q0),.din5(buff_B0_42_q0),.din6(buff_B0_50_q0),.din7(buff_B0_58_q0),.def(tmp_2_fu_1662_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_2_fu_1662_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U145(.din0(buff_B0_3_q0),.din1(buff_B0_11_q0),.din2(buff_B0_19_q0),.din3(buff_B0_27_q0),.din4(buff_B0_35_q0),.din5(buff_B0_43_q0),.din6(buff_B0_51_q0),.din7(buff_B0_59_q0),.def(tmp_3_fu_1701_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_3_fu_1701_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U146(.din0(buff_B0_4_q0),.din1(buff_B0_12_q0),.din2(buff_B0_20_q0),.din3(buff_B0_28_q0),.din4(buff_B0_36_q0),.din5(buff_B0_44_q0),.din6(buff_B0_52_q0),.din7(buff_B0_60_q0),.def(tmp_4_fu_1740_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_4_fu_1740_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U147(.din0(buff_B0_5_q0),.din1(buff_B0_13_q0),.din2(buff_B0_21_q0),.din3(buff_B0_29_q0),.din4(buff_B0_37_q0),.din5(buff_B0_45_q0),.din6(buff_B0_53_q0),.din7(buff_B0_61_q0),.def(tmp_5_fu_1779_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_5_fu_1779_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U148(.din0(buff_B0_6_q0),.din1(buff_B0_14_q0),.din2(buff_B0_22_q0),.din3(buff_B0_30_q0),.din4(buff_B0_38_q0),.din5(buff_B0_46_q0),.din6(buff_B0_54_q0),.din7(buff_B0_62_q0),.def(tmp_6_fu_1818_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_6_fu_1818_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U149(.din0(buff_B0_7_q0),.din1(buff_B0_15_q0),.din2(buff_B0_23_q0),.din3(buff_B0_31_q0),.din4(buff_B0_39_q0),.din5(buff_B0_47_q0),.din6(buff_B0_55_q0),.din7(buff_B0_63_q0),.def(tmp_7_fu_1857_p17),.sel(trunc_ln30_reg_2320),.dout(tmp_7_fu_1857_p19));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage56_subdone) & (1'b1 == ap_CS_fsm_pp0_stage56))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_2063)) begin
            empty_fu_242 <= arrayidx7813_promoted_reg_2376;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_242 <= reg_1247;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_234 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_234 <= select_ln27_fu_1353_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten21_fu_238 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_238 <= add_ln27_1_fu_1290_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten7_fu_230 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_230 <= select_ln28_1_fu_1385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_226 <= 7'd0;
    end else if (((icmp_ln27_reg_1956 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_226 <= select_ln28_fu_1408_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k_fu_222 <= 7'd0;
    end else if (((icmp_ln27_reg_1956 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_222 <= add_ln30_fu_1561_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln28_reg_1977 <= add_ln28_fu_1365_p2;
        icmp_ln27_reg_1956 <= icmp_ln27_fu_1284_p2;
        k_mid2_reg_1982 <= k_mid2_fu_1371_p3;
        or_ln5_reg_1965 <= or_ln5_fu_1347_p2;
        select_ln5_reg_1960 <= select_ln5_fu_1317_p3;
        trunc_ln28_reg_1970 <= trunc_ln28_fu_1361_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        arrayidx7813_promoted_reg_2376 <= tmp1_q0;
        buff_A0_1_load_1_reg_2431 <= buff_A0_1_q0;
        buff_A0_1_load_reg_2391 <= buff_A0_1_q1;
        buff_A0_2_load_1_reg_2441 <= buff_A0_2_q0;
        buff_A0_2_load_reg_2401 <= buff_A0_2_q1;
        buff_A0_3_load_1_reg_2451 <= buff_A0_3_q0;
        buff_A0_3_load_reg_2411 <= buff_A0_3_q1;
        buff_A0_load_1_reg_2421 <= buff_A0_q0;
        buff_A0_load_reg_2381 <= buff_A0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        first_iter_1_reg_1991 <= first_iter_1_fu_1413_p2;
        tmp1_addr_reg_1995 <= p_cast_fu_1503_p1;
        tmp1_addr_reg_1995_pp0_iter1_reg <= tmp1_addr_reg_1995;
        tmp_12_reg_2372 <= add_ln30_fu_1561_p2[32'd6];
        tmp_12_reg_2372_pp0_iter1_reg <= tmp_12_reg_2372;
        trunc_ln30_reg_2320 <= trunc_ln30_fu_1508_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul74_7_reg_2466 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1205 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1211 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1217 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1223 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_1229 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1235 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_1241 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage53_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage53)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_1247 <= grp_fu_1123_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_1_reg_2396 <= tmp_1_fu_1623_p19;
        tmp_2_reg_2406 <= tmp_2_fu_1662_p19;
        tmp_3_reg_2416 <= tmp_3_fu_1701_p19;
        tmp_4_reg_2426 <= tmp_4_fu_1740_p19;
        tmp_5_reg_2436 <= tmp_5_fu_1779_p19;
        tmp_6_reg_2446 <= tmp_6_fu_1818_p19;
        tmp_7_reg_2456 <= tmp_7_fu_1857_p19;
        tmp_reg_2386 <= tmp_fu_1584_p19;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1956 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage56_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce1_local = 1'b1;
    end else begin
        buff_A0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce1_local = 1'b1;
    end else begin
        buff_A0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce1_local = 1'b1;
    end else begin
        buff_A0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce1_local = 1'b1;
    end else begin
        buff_A0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_10_ce0_local = 1'b1;
    end else begin
        buff_B0_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_11_ce0_local = 1'b1;
    end else begin
        buff_B0_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_12_ce0_local = 1'b1;
    end else begin
        buff_B0_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_13_ce0_local = 1'b1;
    end else begin
        buff_B0_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_14_ce0_local = 1'b1;
    end else begin
        buff_B0_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_15_ce0_local = 1'b1;
    end else begin
        buff_B0_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_16_ce0_local = 1'b1;
    end else begin
        buff_B0_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_17_ce0_local = 1'b1;
    end else begin
        buff_B0_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_18_ce0_local = 1'b1;
    end else begin
        buff_B0_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_19_ce0_local = 1'b1;
    end else begin
        buff_B0_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_20_ce0_local = 1'b1;
    end else begin
        buff_B0_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_21_ce0_local = 1'b1;
    end else begin
        buff_B0_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_22_ce0_local = 1'b1;
    end else begin
        buff_B0_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_23_ce0_local = 1'b1;
    end else begin
        buff_B0_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_24_ce0_local = 1'b1;
    end else begin
        buff_B0_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_25_ce0_local = 1'b1;
    end else begin
        buff_B0_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_26_ce0_local = 1'b1;
    end else begin
        buff_B0_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_27_ce0_local = 1'b1;
    end else begin
        buff_B0_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_28_ce0_local = 1'b1;
    end else begin
        buff_B0_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_29_ce0_local = 1'b1;
    end else begin
        buff_B0_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_30_ce0_local = 1'b1;
    end else begin
        buff_B0_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_31_ce0_local = 1'b1;
    end else begin
        buff_B0_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_32_ce0_local = 1'b1;
    end else begin
        buff_B0_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_33_ce0_local = 1'b1;
    end else begin
        buff_B0_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_34_ce0_local = 1'b1;
    end else begin
        buff_B0_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_35_ce0_local = 1'b1;
    end else begin
        buff_B0_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_36_ce0_local = 1'b1;
    end else begin
        buff_B0_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_37_ce0_local = 1'b1;
    end else begin
        buff_B0_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_38_ce0_local = 1'b1;
    end else begin
        buff_B0_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_39_ce0_local = 1'b1;
    end else begin
        buff_B0_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_40_ce0_local = 1'b1;
    end else begin
        buff_B0_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_41_ce0_local = 1'b1;
    end else begin
        buff_B0_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_42_ce0_local = 1'b1;
    end else begin
        buff_B0_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_43_ce0_local = 1'b1;
    end else begin
        buff_B0_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_44_ce0_local = 1'b1;
    end else begin
        buff_B0_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_45_ce0_local = 1'b1;
    end else begin
        buff_B0_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_46_ce0_local = 1'b1;
    end else begin
        buff_B0_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_47_ce0_local = 1'b1;
    end else begin
        buff_B0_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_48_ce0_local = 1'b1;
    end else begin
        buff_B0_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_49_ce0_local = 1'b1;
    end else begin
        buff_B0_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_4_ce0_local = 1'b1;
    end else begin
        buff_B0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_50_ce0_local = 1'b1;
    end else begin
        buff_B0_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_51_ce0_local = 1'b1;
    end else begin
        buff_B0_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_52_ce0_local = 1'b1;
    end else begin
        buff_B0_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_53_ce0_local = 1'b1;
    end else begin
        buff_B0_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_54_ce0_local = 1'b1;
    end else begin
        buff_B0_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_55_ce0_local = 1'b1;
    end else begin
        buff_B0_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_56_ce0_local = 1'b1;
    end else begin
        buff_B0_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_57_ce0_local = 1'b1;
    end else begin
        buff_B0_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_58_ce0_local = 1'b1;
    end else begin
        buff_B0_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_59_ce0_local = 1'b1;
    end else begin
        buff_B0_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_5_ce0_local = 1'b1;
    end else begin
        buff_B0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_60_ce0_local = 1'b1;
    end else begin
        buff_B0_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_61_ce0_local = 1'b1;
    end else begin
        buff_B0_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_62_ce0_local = 1'b1;
    end else begin
        buff_B0_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_63_ce0_local = 1'b1;
    end else begin
        buff_B0_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_6_ce0_local = 1'b1;
    end else begin
        buff_B0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_7_ce0_local = 1'b1;
    end else begin
        buff_B0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_8_ce0_local = 1'b1;
    end else begin
        buff_B0_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_9_ce0_local = 1'b1;
    end else begin
        buff_B0_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1197_p0 = reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1197_p0 = empty_fu_242;
    end else begin
        grp_fu_1197_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1197_p1 = mul74_7_reg_2466;
    end else if (((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54))) begin
        grp_fu_1197_p1 = reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        grp_fu_1197_p1 = reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_1197_p1 = reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_1197_p1 = reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_1197_p1 = reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1197_p1 = reg_1211;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1197_p1 = reg_1205;
    end else begin
        grp_fu_1197_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1201_p0 = reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1201_p0 = reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1201_p0 = reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1201_p0 = buff_A0_3_load_1_reg_2451;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1201_p0 = buff_A0_2_load_1_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1201_p0 = buff_A0_1_load_1_reg_2431;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1201_p0 = buff_A0_load_1_reg_2421;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1201_p0 = reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1201_p0 = reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1201_p0 = reg_1211;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1201_p0 = reg_1205;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1201_p0 = buff_A0_3_load_reg_2411;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1201_p0 = buff_A0_2_load_reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1201_p0 = buff_A0_1_load_reg_2391;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1201_p0 = buff_A0_load_reg_2381;
    end else begin
        grp_fu_1201_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1201_p1 = tmp_7_reg_2456;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1201_p1 = tmp_6_reg_2446;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1201_p1 = tmp_5_reg_2436;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1201_p1 = tmp_4_reg_2426;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1201_p1 = tmp_3_reg_2416;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1201_p1 = tmp_2_reg_2406;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1201_p1 = tmp_1_reg_2396;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1201_p1 = tmp_reg_2386;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_1201_p1 = alpha;
    end else begin
        grp_fu_1201_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_address0_local = tmp1_addr_reg_1995_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = p_cast_fu_1503_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_12_reg_2372_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_1290_p2 = (indvar_flatten21_fu_238 + 16'd1);
assign add_ln27_fu_1305_p2 = (i_fu_234 + 7'd1);
assign add_ln28_1_fu_1379_p2 = (indvar_flatten7_fu_230 + 11'd1);
assign add_ln28_fu_1365_p2 = (select_ln5_fu_1317_p3 + 7'd1);
assign add_ln30_fu_1561_p2 = (k_mid2_reg_1982 + 7'd8);
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
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage53 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_pp0_stage54 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2063 = ((icmp_ln27_reg_1956 == 1'd0) & (first_iter_1_reg_1991 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_1_fu_1553_p1;
assign buff_A0_1_address1 = zext_ln31_fu_1527_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_ce1 = buff_A0_1_ce1_local;
assign buff_A0_2_address0 = zext_ln31_1_fu_1553_p1;
assign buff_A0_2_address1 = zext_ln31_fu_1527_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_2_ce1 = buff_A0_2_ce1_local;
assign buff_A0_3_address0 = zext_ln31_1_fu_1553_p1;
assign buff_A0_3_address1 = zext_ln31_fu_1527_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_3_ce1 = buff_A0_3_ce1_local;
assign buff_A0_address0 = zext_ln31_1_fu_1553_p1;
assign buff_A0_address1 = zext_ln31_fu_1527_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_B0_10_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_10_ce0 = buff_B0_10_ce0_local;
assign buff_B0_11_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_11_ce0 = buff_B0_11_ce0_local;
assign buff_B0_12_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_12_ce0 = buff_B0_12_ce0_local;
assign buff_B0_13_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_13_ce0 = buff_B0_13_ce0_local;
assign buff_B0_14_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_14_ce0 = buff_B0_14_ce0_local;
assign buff_B0_15_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_15_ce0 = buff_B0_15_ce0_local;
assign buff_B0_16_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_16_ce0 = buff_B0_16_ce0_local;
assign buff_B0_17_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_17_ce0 = buff_B0_17_ce0_local;
assign buff_B0_18_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_18_ce0 = buff_B0_18_ce0_local;
assign buff_B0_19_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_19_ce0 = buff_B0_19_ce0_local;
assign buff_B0_1_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_20_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_20_ce0 = buff_B0_20_ce0_local;
assign buff_B0_21_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_21_ce0 = buff_B0_21_ce0_local;
assign buff_B0_22_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_22_ce0 = buff_B0_22_ce0_local;
assign buff_B0_23_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_23_ce0 = buff_B0_23_ce0_local;
assign buff_B0_24_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_24_ce0 = buff_B0_24_ce0_local;
assign buff_B0_25_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_25_ce0 = buff_B0_25_ce0_local;
assign buff_B0_26_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_26_ce0 = buff_B0_26_ce0_local;
assign buff_B0_27_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_27_ce0 = buff_B0_27_ce0_local;
assign buff_B0_28_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_28_ce0 = buff_B0_28_ce0_local;
assign buff_B0_29_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_29_ce0 = buff_B0_29_ce0_local;
assign buff_B0_2_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_30_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_30_ce0 = buff_B0_30_ce0_local;
assign buff_B0_31_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_31_ce0 = buff_B0_31_ce0_local;
assign buff_B0_32_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_32_ce0 = buff_B0_32_ce0_local;
assign buff_B0_33_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_33_ce0 = buff_B0_33_ce0_local;
assign buff_B0_34_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_34_ce0 = buff_B0_34_ce0_local;
assign buff_B0_35_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_35_ce0 = buff_B0_35_ce0_local;
assign buff_B0_36_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_36_ce0 = buff_B0_36_ce0_local;
assign buff_B0_37_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_37_ce0 = buff_B0_37_ce0_local;
assign buff_B0_38_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_38_ce0 = buff_B0_38_ce0_local;
assign buff_B0_39_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_39_ce0 = buff_B0_39_ce0_local;
assign buff_B0_3_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_40_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_40_ce0 = buff_B0_40_ce0_local;
assign buff_B0_41_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_41_ce0 = buff_B0_41_ce0_local;
assign buff_B0_42_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_42_ce0 = buff_B0_42_ce0_local;
assign buff_B0_43_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_43_ce0 = buff_B0_43_ce0_local;
assign buff_B0_44_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_44_ce0 = buff_B0_44_ce0_local;
assign buff_B0_45_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_45_ce0 = buff_B0_45_ce0_local;
assign buff_B0_46_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_46_ce0 = buff_B0_46_ce0_local;
assign buff_B0_47_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_47_ce0 = buff_B0_47_ce0_local;
assign buff_B0_48_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_48_ce0 = buff_B0_48_ce0_local;
assign buff_B0_49_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_49_ce0 = buff_B0_49_ce0_local;
assign buff_B0_4_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_50_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_50_ce0 = buff_B0_50_ce0_local;
assign buff_B0_51_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_51_ce0 = buff_B0_51_ce0_local;
assign buff_B0_52_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_52_ce0 = buff_B0_52_ce0_local;
assign buff_B0_53_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_53_ce0 = buff_B0_53_ce0_local;
assign buff_B0_54_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_54_ce0 = buff_B0_54_ce0_local;
assign buff_B0_55_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_55_ce0 = buff_B0_55_ce0_local;
assign buff_B0_56_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_56_ce0 = buff_B0_56_ce0_local;
assign buff_B0_57_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_57_ce0 = buff_B0_57_ce0_local;
assign buff_B0_58_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_58_ce0 = buff_B0_58_ce0_local;
assign buff_B0_59_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_59_ce0 = buff_B0_59_ce0_local;
assign buff_B0_5_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_60_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_60_ce0 = buff_B0_60_ce0_local;
assign buff_B0_61_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_61_ce0 = buff_B0_61_ce0_local;
assign buff_B0_62_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_62_ce0 = buff_B0_62_ce0_local;
assign buff_B0_63_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_63_ce0 = buff_B0_63_ce0_local;
assign buff_B0_6_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_7_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_8_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_8_ce0 = buff_B0_8_ce0_local;
assign buff_B0_9_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_9_ce0 = buff_B0_9_ce0_local;
assign buff_B0_address0 = zext_ln28_fu_1425_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_11_fu_1497_p2 = (tmp_s_fu_1418_p3 + select_ln28_cast_fu_1493_p1);
assign first_iter_1_fu_1413_p2 = ((k_mid2_reg_1982 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1123_p_ce = 1'b1;
assign grp_fu_1123_p_din0 = grp_fu_1197_p0;
assign grp_fu_1123_p_din1 = grp_fu_1197_p1;
assign grp_fu_1123_p_opcode = 2'd0;
assign grp_fu_1127_p_ce = 1'b1;
assign grp_fu_1127_p_din0 = grp_fu_1201_p0;
assign grp_fu_1127_p_din1 = grp_fu_1201_p1;
assign icmp_ln27_fu_1284_p2 = ((indvar_flatten21_fu_238 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_1311_p2 = ((indvar_flatten7_fu_230 == 11'd512) ? 1'b1 : 1'b0);
assign k_mid2_fu_1371_p3 = ((or_ln5_fu_1347_p2[0:0] == 1'b1) ? select_ln5_1_fu_1325_p3 : 7'd0);
assign lshr_ln5_1_fu_1511_p4 = {{k_mid2_reg_1982[5:2]}};
assign or_ln5_fu_1347_p2 = (xor_ln30_fu_1341_p2 | icmp_ln28_fu_1311_p2);
assign p_cast_fu_1503_p1 = empty_11_fu_1497_p2;
assign select_ln27_fu_1353_p3 = ((icmp_ln28_fu_1311_p2[0:0] == 1'b1) ? add_ln27_fu_1305_p2 : i_fu_234);
assign select_ln28_1_fu_1385_p3 = ((icmp_ln28_fu_1311_p2[0:0] == 1'b1) ? 11'd1 : add_ln28_1_fu_1379_p2);
assign select_ln28_cast_fu_1493_p1 = select_ln28_fu_1408_p3;
assign select_ln28_fu_1408_p3 = ((or_ln5_reg_1965[0:0] == 1'b1) ? select_ln5_reg_1960 : add_ln28_reg_1977);
assign select_ln5_1_fu_1325_p3 = ((icmp_ln28_fu_1311_p2[0:0] == 1'b1) ? 7'd0 : k_fu_222);
assign select_ln5_fu_1317_p3 = ((icmp_ln28_fu_1311_p2[0:0] == 1'b1) ? 7'd0 : j_fu_226);
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_1247;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_10_fu_1535_p4 = {{k_mid2_reg_1982[5:3]}};
assign tmp_11_fu_1544_p4 = {{{trunc_ln28_reg_1970}, {tmp_10_fu_1535_p4}}, {1'd1}};
assign tmp_1_fu_1623_p17 = 'bx;
assign tmp_2_fu_1662_p17 = 'bx;
assign tmp_3_fu_1701_p17 = 'bx;
assign tmp_4_fu_1740_p17 = 'bx;
assign tmp_5_fu_1779_p17 = 'bx;
assign tmp_6_fu_1818_p17 = 'bx;
assign tmp_7_fu_1857_p17 = 'bx;
assign tmp_8_fu_1333_p3 = k_fu_222[32'd6];
assign tmp_9_fu_1520_p3 = {{trunc_ln28_reg_1970}, {lshr_ln5_1_fu_1511_p4}};
assign tmp_fu_1584_p17 = 'bx;
assign tmp_s_fu_1418_p3 = {{trunc_ln28_reg_1970}, {6'd0}};
assign trunc_ln28_fu_1361_p1 = select_ln27_fu_1353_p3[5:0];
assign trunc_ln30_fu_1508_p1 = k_mid2_reg_1982[5:0];
assign xor_ln30_fu_1341_p2 = (tmp_8_fu_1333_p3 ^ 1'd1);
assign zext_ln28_fu_1425_p1 = select_ln28_fu_1408_p3;
assign zext_ln31_1_fu_1553_p1 = tmp_11_fu_1544_p4;
assign zext_ln31_fu_1527_p1 = tmp_9_fu_1520_p3;
endmodule 