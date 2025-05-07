module backprop_update_weights_32_33_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_31_address0,weights3_31_ce0,weights3_31_we0,weights3_31_d0,weights3_31_q0,weights3_31_address1,weights3_31_ce1,weights3_31_we1,weights3_31_d1,weights3_31_q1,weights3_30_address0,weights3_30_ce0,weights3_30_we0,weights3_30_d0,weights3_30_q0,weights3_30_address1,weights3_30_ce1,weights3_30_we1,weights3_30_d1,weights3_30_q1,weights3_29_address0,weights3_29_ce0,weights3_29_we0,weights3_29_d0,weights3_29_q0,weights3_29_address1,weights3_29_ce1,weights3_29_we1,weights3_29_d1,weights3_29_q1,weights3_28_address0,weights3_28_ce0,weights3_28_we0,weights3_28_d0,weights3_28_q0,weights3_28_address1,weights3_28_ce1,weights3_28_we1,weights3_28_d1,weights3_28_q1,weights3_27_address0,weights3_27_ce0,weights3_27_we0,weights3_27_d0,weights3_27_q0,weights3_27_address1,weights3_27_ce1,weights3_27_we1,weights3_27_d1,weights3_27_q1,weights3_26_address0,weights3_26_ce0,weights3_26_we0,weights3_26_d0,weights3_26_q0,weights3_26_address1,weights3_26_ce1,weights3_26_we1,weights3_26_d1,weights3_26_q1,weights3_25_address0,weights3_25_ce0,weights3_25_we0,weights3_25_d0,weights3_25_q0,weights3_25_address1,weights3_25_ce1,weights3_25_we1,weights3_25_d1,weights3_25_q1,weights3_24_address0,weights3_24_ce0,weights3_24_we0,weights3_24_d0,weights3_24_q0,weights3_24_address1,weights3_24_ce1,weights3_24_we1,weights3_24_d1,weights3_24_q1,weights3_23_address0,weights3_23_ce0,weights3_23_we0,weights3_23_d0,weights3_23_q0,weights3_23_address1,weights3_23_ce1,weights3_23_we1,weights3_23_d1,weights3_23_q1,weights3_22_address0,weights3_22_ce0,weights3_22_we0,weights3_22_d0,weights3_22_q0,weights3_22_address1,weights3_22_ce1,weights3_22_we1,weights3_22_d1,weights3_22_q1,weights3_21_address0,weights3_21_ce0,weights3_21_we0,weights3_21_d0,weights3_21_q0,weights3_21_address1,weights3_21_ce1,weights3_21_we1,weights3_21_d1,weights3_21_q1,weights3_20_address0,weights3_20_ce0,weights3_20_we0,weights3_20_d0,weights3_20_q0,weights3_20_address1,weights3_20_ce1,weights3_20_we1,weights3_20_d1,weights3_20_q1,weights3_19_address0,weights3_19_ce0,weights3_19_we0,weights3_19_d0,weights3_19_q0,weights3_19_address1,weights3_19_ce1,weights3_19_we1,weights3_19_d1,weights3_19_q1,weights3_18_address0,weights3_18_ce0,weights3_18_we0,weights3_18_d0,weights3_18_q0,weights3_18_address1,weights3_18_ce1,weights3_18_we1,weights3_18_d1,weights3_18_q1,weights3_17_address0,weights3_17_ce0,weights3_17_we0,weights3_17_d0,weights3_17_q0,weights3_17_address1,weights3_17_ce1,weights3_17_we1,weights3_17_d1,weights3_17_q1,weights3_16_address0,weights3_16_ce0,weights3_16_we0,weights3_16_d0,weights3_16_q0,weights3_16_address1,weights3_16_ce1,weights3_16_we1,weights3_16_d1,weights3_16_q1,weights3_15_address0,weights3_15_ce0,weights3_15_we0,weights3_15_d0,weights3_15_q0,weights3_15_address1,weights3_15_ce1,weights3_15_we1,weights3_15_d1,weights3_15_q1,weights3_14_address0,weights3_14_ce0,weights3_14_we0,weights3_14_d0,weights3_14_q0,weights3_14_address1,weights3_14_ce1,weights3_14_we1,weights3_14_d1,weights3_14_q1,weights3_13_address0,weights3_13_ce0,weights3_13_we0,weights3_13_d0,weights3_13_q0,weights3_13_address1,weights3_13_ce1,weights3_13_we1,weights3_13_d1,weights3_13_q1,weights3_12_address0,weights3_12_ce0,weights3_12_we0,weights3_12_d0,weights3_12_q0,weights3_12_address1,weights3_12_ce1,weights3_12_we1,weights3_12_d1,weights3_12_q1,weights3_11_address0,weights3_11_ce0,weights3_11_we0,weights3_11_d0,weights3_11_q0,weights3_11_address1,weights3_11_ce1,weights3_11_we1,weights3_11_d1,weights3_11_q1,weights3_10_address0,weights3_10_ce0,weights3_10_we0,weights3_10_d0,weights3_10_q0,weights3_10_address1,weights3_10_ce1,weights3_10_we1,weights3_10_d1,weights3_10_q1,weights3_9_address0,weights3_9_ce0,weights3_9_we0,weights3_9_d0,weights3_9_q0,weights3_9_address1,weights3_9_ce1,weights3_9_we1,weights3_9_d1,weights3_9_q1,weights3_8_address0,weights3_8_ce0,weights3_8_we0,weights3_8_d0,weights3_8_q0,weights3_8_address1,weights3_8_ce1,weights3_8_we1,weights3_8_d1,weights3_8_q1,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_we1,weights3_7_d1,weights3_7_q1,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_we1,weights3_6_d1,weights3_6_q1,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_we1,weights3_5_d1,weights3_5_q1,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_we1,weights3_4_d1,weights3_4_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_0_address1,d_weights3_0_ce1,d_weights3_0_q1,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_2_address1,d_weights3_2_ce1,d_weights3_2_q1,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_4_address1,d_weights3_4_ce1,d_weights3_4_q1,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_6_address1,d_weights3_6_ce1,d_weights3_6_q1,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_8_address1,d_weights3_8_ce1,d_weights3_8_q1,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_10_address1,d_weights3_10_ce1,d_weights3_10_q1,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_12_address1,d_weights3_12_ce1,d_weights3_12_q1,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_14_address1,d_weights3_14_ce1,d_weights3_14_q1,d_weights3_16_address0,d_weights3_16_ce0,d_weights3_16_q0,d_weights3_16_address1,d_weights3_16_ce1,d_weights3_16_q1,d_weights3_18_address0,d_weights3_18_ce0,d_weights3_18_q0,d_weights3_18_address1,d_weights3_18_ce1,d_weights3_18_q1,d_weights3_20_address0,d_weights3_20_ce0,d_weights3_20_q0,d_weights3_20_address1,d_weights3_20_ce1,d_weights3_20_q1,d_weights3_22_address0,d_weights3_22_ce0,d_weights3_22_q0,d_weights3_22_address1,d_weights3_22_ce1,d_weights3_22_q1,d_weights3_24_address0,d_weights3_24_ce0,d_weights3_24_q0,d_weights3_24_address1,d_weights3_24_ce1,d_weights3_24_q1,d_weights3_26_address0,d_weights3_26_ce0,d_weights3_26_q0,d_weights3_26_address1,d_weights3_26_ce1,d_weights3_26_q1,d_weights3_28_address0,d_weights3_28_ce0,d_weights3_28_q0,d_weights3_28_address1,d_weights3_28_ce1,d_weights3_28_q1,d_weights3_30_address0,d_weights3_30_ce0,d_weights3_30_q0,d_weights3_30_address1,d_weights3_30_ce1,d_weights3_30_q1,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_1_address1,d_weights3_1_ce1,d_weights3_1_q1,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_3_address1,d_weights3_3_ce1,d_weights3_3_q1,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_5_address1,d_weights3_5_ce1,d_weights3_5_q1,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_7_address1,d_weights3_7_ce1,d_weights3_7_q1,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_9_address1,d_weights3_9_ce1,d_weights3_9_q1,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_11_address1,d_weights3_11_ce1,d_weights3_11_q1,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_13_address1,d_weights3_13_ce1,d_weights3_13_q1,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,d_weights3_15_address1,d_weights3_15_ce1,d_weights3_15_q1,d_weights3_17_address0,d_weights3_17_ce0,d_weights3_17_q0,d_weights3_17_address1,d_weights3_17_ce1,d_weights3_17_q1,d_weights3_19_address0,d_weights3_19_ce0,d_weights3_19_q0,d_weights3_19_address1,d_weights3_19_ce1,d_weights3_19_q1,d_weights3_21_address0,d_weights3_21_ce0,d_weights3_21_q0,d_weights3_21_address1,d_weights3_21_ce1,d_weights3_21_q1,d_weights3_23_address0,d_weights3_23_ce0,d_weights3_23_q0,d_weights3_23_address1,d_weights3_23_ce1,d_weights3_23_q1,d_weights3_25_address0,d_weights3_25_ce0,d_weights3_25_q0,d_weights3_25_address1,d_weights3_25_ce1,d_weights3_25_q1,d_weights3_27_address0,d_weights3_27_ce0,d_weights3_27_q0,d_weights3_27_address1,d_weights3_27_ce1,d_weights3_27_q1,d_weights3_29_address0,d_weights3_29_ce0,d_weights3_29_q0,d_weights3_29_address1,d_weights3_29_ce1,d_weights3_29_q1,d_weights3_31_address0,d_weights3_31_ce0,d_weights3_31_q0,d_weights3_31_address1,d_weights3_31_ce1,d_weights3_31_q1,norm_8_out,norm_8_out_ap_vld,grp_fu_1955_p_din0,grp_fu_1955_p_din1,grp_fu_1955_p_opcode,grp_fu_1955_p_dout0,grp_fu_1955_p_ce,grp_fu_1959_p_din0,grp_fu_1959_p_din1,grp_fu_1959_p_dout0,grp_fu_1959_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 48'd1;
parameter    ap_ST_fsm_pp0_stage1 = 48'd2;
parameter    ap_ST_fsm_pp0_stage2 = 48'd4;
parameter    ap_ST_fsm_pp0_stage3 = 48'd8;
parameter    ap_ST_fsm_pp0_stage4 = 48'd16;
parameter    ap_ST_fsm_pp0_stage5 = 48'd32;
parameter    ap_ST_fsm_pp0_stage6 = 48'd64;
parameter    ap_ST_fsm_pp0_stage7 = 48'd128;
parameter    ap_ST_fsm_pp0_stage8 = 48'd256;
parameter    ap_ST_fsm_pp0_stage9 = 48'd512;
parameter    ap_ST_fsm_pp0_stage10 = 48'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 48'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 48'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 48'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 48'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 48'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 48'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 48'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 48'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 48'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 48'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 48'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 48'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 48'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 48'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 48'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 48'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 48'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 48'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 48'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 48'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 48'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 48'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 48'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 48'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 48'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 48'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 48'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 48'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 48'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 48'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 48'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 48'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 48'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 48'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 48'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 48'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] weights3_31_address0;
output   weights3_31_ce0;
output   weights3_31_we0;
output  [63:0] weights3_31_d0;
input  [63:0] weights3_31_q0;
output  [2:0] weights3_31_address1;
output   weights3_31_ce1;
output   weights3_31_we1;
output  [63:0] weights3_31_d1;
input  [63:0] weights3_31_q1;
output  [2:0] weights3_30_address0;
output   weights3_30_ce0;
output   weights3_30_we0;
output  [63:0] weights3_30_d0;
input  [63:0] weights3_30_q0;
output  [2:0] weights3_30_address1;
output   weights3_30_ce1;
output   weights3_30_we1;
output  [63:0] weights3_30_d1;
input  [63:0] weights3_30_q1;
output  [2:0] weights3_29_address0;
output   weights3_29_ce0;
output   weights3_29_we0;
output  [63:0] weights3_29_d0;
input  [63:0] weights3_29_q0;
output  [2:0] weights3_29_address1;
output   weights3_29_ce1;
output   weights3_29_we1;
output  [63:0] weights3_29_d1;
input  [63:0] weights3_29_q1;
output  [2:0] weights3_28_address0;
output   weights3_28_ce0;
output   weights3_28_we0;
output  [63:0] weights3_28_d0;
input  [63:0] weights3_28_q0;
output  [2:0] weights3_28_address1;
output   weights3_28_ce1;
output   weights3_28_we1;
output  [63:0] weights3_28_d1;
input  [63:0] weights3_28_q1;
output  [2:0] weights3_27_address0;
output   weights3_27_ce0;
output   weights3_27_we0;
output  [63:0] weights3_27_d0;
input  [63:0] weights3_27_q0;
output  [2:0] weights3_27_address1;
output   weights3_27_ce1;
output   weights3_27_we1;
output  [63:0] weights3_27_d1;
input  [63:0] weights3_27_q1;
output  [2:0] weights3_26_address0;
output   weights3_26_ce0;
output   weights3_26_we0;
output  [63:0] weights3_26_d0;
input  [63:0] weights3_26_q0;
output  [2:0] weights3_26_address1;
output   weights3_26_ce1;
output   weights3_26_we1;
output  [63:0] weights3_26_d1;
input  [63:0] weights3_26_q1;
output  [2:0] weights3_25_address0;
output   weights3_25_ce0;
output   weights3_25_we0;
output  [63:0] weights3_25_d0;
input  [63:0] weights3_25_q0;
output  [2:0] weights3_25_address1;
output   weights3_25_ce1;
output   weights3_25_we1;
output  [63:0] weights3_25_d1;
input  [63:0] weights3_25_q1;
output  [2:0] weights3_24_address0;
output   weights3_24_ce0;
output   weights3_24_we0;
output  [63:0] weights3_24_d0;
input  [63:0] weights3_24_q0;
output  [2:0] weights3_24_address1;
output   weights3_24_ce1;
output   weights3_24_we1;
output  [63:0] weights3_24_d1;
input  [63:0] weights3_24_q1;
output  [2:0] weights3_23_address0;
output   weights3_23_ce0;
output   weights3_23_we0;
output  [63:0] weights3_23_d0;
input  [63:0] weights3_23_q0;
output  [2:0] weights3_23_address1;
output   weights3_23_ce1;
output   weights3_23_we1;
output  [63:0] weights3_23_d1;
input  [63:0] weights3_23_q1;
output  [2:0] weights3_22_address0;
output   weights3_22_ce0;
output   weights3_22_we0;
output  [63:0] weights3_22_d0;
input  [63:0] weights3_22_q0;
output  [2:0] weights3_22_address1;
output   weights3_22_ce1;
output   weights3_22_we1;
output  [63:0] weights3_22_d1;
input  [63:0] weights3_22_q1;
output  [2:0] weights3_21_address0;
output   weights3_21_ce0;
output   weights3_21_we0;
output  [63:0] weights3_21_d0;
input  [63:0] weights3_21_q0;
output  [2:0] weights3_21_address1;
output   weights3_21_ce1;
output   weights3_21_we1;
output  [63:0] weights3_21_d1;
input  [63:0] weights3_21_q1;
output  [2:0] weights3_20_address0;
output   weights3_20_ce0;
output   weights3_20_we0;
output  [63:0] weights3_20_d0;
input  [63:0] weights3_20_q0;
output  [2:0] weights3_20_address1;
output   weights3_20_ce1;
output   weights3_20_we1;
output  [63:0] weights3_20_d1;
input  [63:0] weights3_20_q1;
output  [2:0] weights3_19_address0;
output   weights3_19_ce0;
output   weights3_19_we0;
output  [63:0] weights3_19_d0;
input  [63:0] weights3_19_q0;
output  [2:0] weights3_19_address1;
output   weights3_19_ce1;
output   weights3_19_we1;
output  [63:0] weights3_19_d1;
input  [63:0] weights3_19_q1;
output  [2:0] weights3_18_address0;
output   weights3_18_ce0;
output   weights3_18_we0;
output  [63:0] weights3_18_d0;
input  [63:0] weights3_18_q0;
output  [2:0] weights3_18_address1;
output   weights3_18_ce1;
output   weights3_18_we1;
output  [63:0] weights3_18_d1;
input  [63:0] weights3_18_q1;
output  [2:0] weights3_17_address0;
output   weights3_17_ce0;
output   weights3_17_we0;
output  [63:0] weights3_17_d0;
input  [63:0] weights3_17_q0;
output  [2:0] weights3_17_address1;
output   weights3_17_ce1;
output   weights3_17_we1;
output  [63:0] weights3_17_d1;
input  [63:0] weights3_17_q1;
output  [2:0] weights3_16_address0;
output   weights3_16_ce0;
output   weights3_16_we0;
output  [63:0] weights3_16_d0;
input  [63:0] weights3_16_q0;
output  [2:0] weights3_16_address1;
output   weights3_16_ce1;
output   weights3_16_we1;
output  [63:0] weights3_16_d1;
input  [63:0] weights3_16_q1;
output  [2:0] weights3_15_address0;
output   weights3_15_ce0;
output   weights3_15_we0;
output  [63:0] weights3_15_d0;
input  [63:0] weights3_15_q0;
output  [2:0] weights3_15_address1;
output   weights3_15_ce1;
output   weights3_15_we1;
output  [63:0] weights3_15_d1;
input  [63:0] weights3_15_q1;
output  [2:0] weights3_14_address0;
output   weights3_14_ce0;
output   weights3_14_we0;
output  [63:0] weights3_14_d0;
input  [63:0] weights3_14_q0;
output  [2:0] weights3_14_address1;
output   weights3_14_ce1;
output   weights3_14_we1;
output  [63:0] weights3_14_d1;
input  [63:0] weights3_14_q1;
output  [2:0] weights3_13_address0;
output   weights3_13_ce0;
output   weights3_13_we0;
output  [63:0] weights3_13_d0;
input  [63:0] weights3_13_q0;
output  [2:0] weights3_13_address1;
output   weights3_13_ce1;
output   weights3_13_we1;
output  [63:0] weights3_13_d1;
input  [63:0] weights3_13_q1;
output  [2:0] weights3_12_address0;
output   weights3_12_ce0;
output   weights3_12_we0;
output  [63:0] weights3_12_d0;
input  [63:0] weights3_12_q0;
output  [2:0] weights3_12_address1;
output   weights3_12_ce1;
output   weights3_12_we1;
output  [63:0] weights3_12_d1;
input  [63:0] weights3_12_q1;
output  [2:0] weights3_11_address0;
output   weights3_11_ce0;
output   weights3_11_we0;
output  [63:0] weights3_11_d0;
input  [63:0] weights3_11_q0;
output  [2:0] weights3_11_address1;
output   weights3_11_ce1;
output   weights3_11_we1;
output  [63:0] weights3_11_d1;
input  [63:0] weights3_11_q1;
output  [2:0] weights3_10_address0;
output   weights3_10_ce0;
output   weights3_10_we0;
output  [63:0] weights3_10_d0;
input  [63:0] weights3_10_q0;
output  [2:0] weights3_10_address1;
output   weights3_10_ce1;
output   weights3_10_we1;
output  [63:0] weights3_10_d1;
input  [63:0] weights3_10_q1;
output  [2:0] weights3_9_address0;
output   weights3_9_ce0;
output   weights3_9_we0;
output  [63:0] weights3_9_d0;
input  [63:0] weights3_9_q0;
output  [2:0] weights3_9_address1;
output   weights3_9_ce1;
output   weights3_9_we1;
output  [63:0] weights3_9_d1;
input  [63:0] weights3_9_q1;
output  [2:0] weights3_8_address0;
output   weights3_8_ce0;
output   weights3_8_we0;
output  [63:0] weights3_8_d0;
input  [63:0] weights3_8_q0;
output  [2:0] weights3_8_address1;
output   weights3_8_ce1;
output   weights3_8_we1;
output  [63:0] weights3_8_d1;
input  [63:0] weights3_8_q1;
output  [2:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [2:0] weights3_7_address1;
output   weights3_7_ce1;
output   weights3_7_we1;
output  [63:0] weights3_7_d1;
input  [63:0] weights3_7_q1;
output  [2:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [2:0] weights3_6_address1;
output   weights3_6_ce1;
output   weights3_6_we1;
output  [63:0] weights3_6_d1;
input  [63:0] weights3_6_q1;
output  [2:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [2:0] weights3_5_address1;
output   weights3_5_ce1;
output   weights3_5_we1;
output  [63:0] weights3_5_d1;
input  [63:0] weights3_5_q1;
output  [2:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [2:0] weights3_4_address1;
output   weights3_4_ce1;
output   weights3_4_we1;
output  [63:0] weights3_4_d1;
input  [63:0] weights3_4_q1;
output  [2:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [2:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [2:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [2:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [2:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [2:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [2:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [2:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
output  [2:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [2:0] d_weights3_0_address1;
output   d_weights3_0_ce1;
input  [63:0] d_weights3_0_q1;
output  [2:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [2:0] d_weights3_2_address1;
output   d_weights3_2_ce1;
input  [63:0] d_weights3_2_q1;
output  [2:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [2:0] d_weights3_4_address1;
output   d_weights3_4_ce1;
input  [63:0] d_weights3_4_q1;
output  [2:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [2:0] d_weights3_6_address1;
output   d_weights3_6_ce1;
input  [63:0] d_weights3_6_q1;
output  [2:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [2:0] d_weights3_8_address1;
output   d_weights3_8_ce1;
input  [63:0] d_weights3_8_q1;
output  [2:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [2:0] d_weights3_10_address1;
output   d_weights3_10_ce1;
input  [63:0] d_weights3_10_q1;
output  [2:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [2:0] d_weights3_12_address1;
output   d_weights3_12_ce1;
input  [63:0] d_weights3_12_q1;
output  [2:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [2:0] d_weights3_14_address1;
output   d_weights3_14_ce1;
input  [63:0] d_weights3_14_q1;
output  [2:0] d_weights3_16_address0;
output   d_weights3_16_ce0;
input  [63:0] d_weights3_16_q0;
output  [2:0] d_weights3_16_address1;
output   d_weights3_16_ce1;
input  [63:0] d_weights3_16_q1;
output  [2:0] d_weights3_18_address0;
output   d_weights3_18_ce0;
input  [63:0] d_weights3_18_q0;
output  [2:0] d_weights3_18_address1;
output   d_weights3_18_ce1;
input  [63:0] d_weights3_18_q1;
output  [2:0] d_weights3_20_address0;
output   d_weights3_20_ce0;
input  [63:0] d_weights3_20_q0;
output  [2:0] d_weights3_20_address1;
output   d_weights3_20_ce1;
input  [63:0] d_weights3_20_q1;
output  [2:0] d_weights3_22_address0;
output   d_weights3_22_ce0;
input  [63:0] d_weights3_22_q0;
output  [2:0] d_weights3_22_address1;
output   d_weights3_22_ce1;
input  [63:0] d_weights3_22_q1;
output  [2:0] d_weights3_24_address0;
output   d_weights3_24_ce0;
input  [63:0] d_weights3_24_q0;
output  [2:0] d_weights3_24_address1;
output   d_weights3_24_ce1;
input  [63:0] d_weights3_24_q1;
output  [2:0] d_weights3_26_address0;
output   d_weights3_26_ce0;
input  [63:0] d_weights3_26_q0;
output  [2:0] d_weights3_26_address1;
output   d_weights3_26_ce1;
input  [63:0] d_weights3_26_q1;
output  [2:0] d_weights3_28_address0;
output   d_weights3_28_ce0;
input  [63:0] d_weights3_28_q0;
output  [2:0] d_weights3_28_address1;
output   d_weights3_28_ce1;
input  [63:0] d_weights3_28_q1;
output  [2:0] d_weights3_30_address0;
output   d_weights3_30_ce0;
input  [63:0] d_weights3_30_q0;
output  [2:0] d_weights3_30_address1;
output   d_weights3_30_ce1;
input  [63:0] d_weights3_30_q1;
output  [2:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [2:0] d_weights3_1_address1;
output   d_weights3_1_ce1;
input  [63:0] d_weights3_1_q1;
output  [2:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [2:0] d_weights3_3_address1;
output   d_weights3_3_ce1;
input  [63:0] d_weights3_3_q1;
output  [2:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [2:0] d_weights3_5_address1;
output   d_weights3_5_ce1;
input  [63:0] d_weights3_5_q1;
output  [2:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [2:0] d_weights3_7_address1;
output   d_weights3_7_ce1;
input  [63:0] d_weights3_7_q1;
output  [2:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [2:0] d_weights3_9_address1;
output   d_weights3_9_ce1;
input  [63:0] d_weights3_9_q1;
output  [2:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [2:0] d_weights3_11_address1;
output   d_weights3_11_ce1;
input  [63:0] d_weights3_11_q1;
output  [2:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [2:0] d_weights3_13_address1;
output   d_weights3_13_ce1;
input  [63:0] d_weights3_13_q1;
output  [2:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [2:0] d_weights3_15_address1;
output   d_weights3_15_ce1;
input  [63:0] d_weights3_15_q1;
output  [2:0] d_weights3_17_address0;
output   d_weights3_17_ce0;
input  [63:0] d_weights3_17_q0;
output  [2:0] d_weights3_17_address1;
output   d_weights3_17_ce1;
input  [63:0] d_weights3_17_q1;
output  [2:0] d_weights3_19_address0;
output   d_weights3_19_ce0;
input  [63:0] d_weights3_19_q0;
output  [2:0] d_weights3_19_address1;
output   d_weights3_19_ce1;
input  [63:0] d_weights3_19_q1;
output  [2:0] d_weights3_21_address0;
output   d_weights3_21_ce0;
input  [63:0] d_weights3_21_q0;
output  [2:0] d_weights3_21_address1;
output   d_weights3_21_ce1;
input  [63:0] d_weights3_21_q1;
output  [2:0] d_weights3_23_address0;
output   d_weights3_23_ce0;
input  [63:0] d_weights3_23_q0;
output  [2:0] d_weights3_23_address1;
output   d_weights3_23_ce1;
input  [63:0] d_weights3_23_q1;
output  [2:0] d_weights3_25_address0;
output   d_weights3_25_ce0;
input  [63:0] d_weights3_25_q0;
output  [2:0] d_weights3_25_address1;
output   d_weights3_25_ce1;
input  [63:0] d_weights3_25_q1;
output  [2:0] d_weights3_27_address0;
output   d_weights3_27_ce0;
input  [63:0] d_weights3_27_q0;
output  [2:0] d_weights3_27_address1;
output   d_weights3_27_ce1;
input  [63:0] d_weights3_27_q1;
output  [2:0] d_weights3_29_address0;
output   d_weights3_29_ce0;
input  [63:0] d_weights3_29_q0;
output  [2:0] d_weights3_29_address1;
output   d_weights3_29_ce1;
input  [63:0] d_weights3_29_q1;
output  [2:0] d_weights3_31_address0;
output   d_weights3_31_ce0;
input  [63:0] d_weights3_31_q0;
output  [2:0] d_weights3_31_address1;
output   d_weights3_31_ce1;
input  [63:0] d_weights3_31_q1;
output  [63:0] norm_8_out;
output   norm_8_out_ap_vld;
output  [63:0] grp_fu_1955_p_din0;
output  [63:0] grp_fu_1955_p_din1;
output  [1:0] grp_fu_1955_p_opcode;
input  [63:0] grp_fu_1955_p_dout0;
output   grp_fu_1955_p_ce;
output  [63:0] grp_fu_1959_p_din0;
output  [63:0] grp_fu_1959_p_din1;
input  [63:0] grp_fu_1959_p_dout0;
output   grp_fu_1959_p_ce;
reg ap_idle;
reg norm_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_4112;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_subdone;
reg   [63:0] reg_2358;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_2363;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_2368;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_2373;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_2378;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_4106;
wire   [7:0] sub_ln122_fu_2422_p2;
reg   [7:0] sub_ln122_reg_4116;
reg   [2:0] weights3_0_addr_reg_4204;
reg   [2:0] weights3_2_addr_reg_4210;
reg   [2:0] weights3_4_addr_reg_4216;
reg   [2:0] weights3_6_addr_reg_4222;
reg   [2:0] weights3_8_addr_reg_4228;
reg   [2:0] weights3_10_addr_reg_4234;
reg   [2:0] weights3_12_addr_reg_4240;
reg   [2:0] weights3_14_addr_reg_4246;
reg   [2:0] weights3_16_addr_reg_4252;
reg   [2:0] weights3_18_addr_reg_4258;
reg   [2:0] weights3_20_addr_reg_4264;
reg   [2:0] weights3_22_addr_reg_4270;
reg   [2:0] weights3_24_addr_reg_4276;
reg   [2:0] weights3_26_addr_reg_4282;
reg   [2:0] weights3_28_addr_reg_4288;
reg   [2:0] weights3_30_addr_reg_4294;
reg   [2:0] weights3_1_addr_reg_4380;
reg   [2:0] weights3_3_addr_reg_4386;
reg   [2:0] weights3_5_addr_reg_4392;
reg   [2:0] weights3_7_addr_reg_4398;
reg   [2:0] weights3_9_addr_reg_4404;
reg   [2:0] weights3_11_addr_reg_4410;
reg   [2:0] weights3_13_addr_reg_4416;
reg   [2:0] weights3_15_addr_reg_4422;
reg   [2:0] weights3_17_addr_reg_4428;
reg   [2:0] weights3_19_addr_reg_4434;
reg   [2:0] weights3_21_addr_reg_4440;
reg   [2:0] weights3_23_addr_reg_4446;
reg   [2:0] weights3_25_addr_reg_4452;
reg   [2:0] weights3_27_addr_reg_4458;
reg   [2:0] weights3_29_addr_reg_4464;
reg   [2:0] weights3_31_addr_reg_4470;
wire   [4:0] trunc_ln178_fu_2506_p1;
reg   [4:0] trunc_ln178_reg_4476;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_s_fu_2509_p35;
reg   [63:0] tmp_s_reg_4488;
wire   [63:0] tmp_1_fu_2645_p35;
reg   [63:0] tmp_1_reg_4493;
wire   [63:0] tmp_2_fu_2921_p35;
reg   [63:0] tmp_2_reg_4818;
wire   [63:0] tmp_7_fu_3057_p35;
reg   [63:0] tmp_7_reg_4823;
reg   [2:0] weights3_0_addr_1_reg_4828;
reg   [2:0] weights3_2_addr_1_reg_4834;
reg   [2:0] weights3_4_addr_1_reg_4840;
reg   [2:0] weights3_6_addr_1_reg_4846;
reg   [2:0] weights3_8_addr_1_reg_4852;
reg   [2:0] weights3_10_addr_1_reg_4858;
reg   [2:0] weights3_12_addr_1_reg_4864;
reg   [2:0] weights3_14_addr_1_reg_4870;
reg   [2:0] weights3_16_addr_1_reg_4876;
reg   [2:0] weights3_18_addr_1_reg_4882;
reg   [2:0] weights3_20_addr_1_reg_4888;
reg   [2:0] weights3_22_addr_1_reg_4894;
reg   [2:0] weights3_24_addr_1_reg_4900;
reg   [2:0] weights3_26_addr_1_reg_4906;
reg   [2:0] weights3_28_addr_1_reg_4912;
reg   [2:0] weights3_30_addr_1_reg_4918;
reg   [2:0] weights3_1_addr_1_reg_4924;
reg   [2:0] weights3_3_addr_1_reg_4930;
reg   [2:0] weights3_5_addr_1_reg_4936;
reg   [2:0] weights3_7_addr_1_reg_4942;
reg   [2:0] weights3_9_addr_1_reg_4948;
reg   [2:0] weights3_11_addr_1_reg_4954;
reg   [2:0] weights3_13_addr_1_reg_4960;
reg   [2:0] weights3_15_addr_1_reg_4966;
reg   [2:0] weights3_17_addr_1_reg_4972;
reg   [2:0] weights3_19_addr_1_reg_4978;
reg   [2:0] weights3_21_addr_1_reg_4984;
reg   [2:0] weights3_23_addr_1_reg_4990;
reg   [2:0] weights3_25_addr_1_reg_4996;
reg   [2:0] weights3_27_addr_1_reg_5002;
reg   [2:0] weights3_29_addr_1_reg_5008;
reg   [2:0] weights3_31_addr_1_reg_5014;
reg   [2:0] weights3_0_addr_2_reg_5020;
reg   [2:0] weights3_2_addr_2_reg_5026;
reg   [2:0] weights3_4_addr_2_reg_5032;
reg   [2:0] weights3_6_addr_2_reg_5038;
reg   [2:0] weights3_8_addr_2_reg_5044;
reg   [2:0] weights3_10_addr_2_reg_5050;
reg   [2:0] weights3_12_addr_2_reg_5056;
reg   [2:0] weights3_14_addr_2_reg_5062;
reg   [2:0] weights3_16_addr_2_reg_5068;
reg   [2:0] weights3_18_addr_2_reg_5074;
reg   [2:0] weights3_20_addr_2_reg_5080;
reg   [2:0] weights3_22_addr_2_reg_5086;
reg   [2:0] weights3_24_addr_2_reg_5092;
reg   [2:0] weights3_26_addr_2_reg_5098;
reg   [2:0] weights3_28_addr_2_reg_5104;
reg   [2:0] weights3_30_addr_2_reg_5110;
reg   [2:0] weights3_1_addr_2_reg_5116;
reg   [2:0] weights3_3_addr_2_reg_5122;
reg   [2:0] weights3_5_addr_2_reg_5128;
reg   [2:0] weights3_7_addr_2_reg_5134;
reg   [2:0] weights3_9_addr_2_reg_5140;
reg   [2:0] weights3_11_addr_2_reg_5146;
reg   [2:0] weights3_13_addr_2_reg_5152;
reg   [2:0] weights3_15_addr_2_reg_5158;
reg   [2:0] weights3_17_addr_2_reg_5164;
reg   [2:0] weights3_19_addr_2_reg_5170;
reg   [2:0] weights3_21_addr_2_reg_5176;
reg   [2:0] weights3_23_addr_2_reg_5182;
reg   [2:0] weights3_25_addr_2_reg_5188;
reg   [2:0] weights3_27_addr_2_reg_5194;
reg   [2:0] weights3_29_addr_2_reg_5200;
reg   [2:0] weights3_31_addr_2_reg_5206;
wire   [63:0] tmp_3_fu_3129_p35;
reg   [63:0] tmp_3_reg_5212;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_4_fu_3200_p35;
reg   [63:0] tmp_4_reg_5217;
wire   [63:0] tmp_5_fu_3271_p35;
reg   [63:0] tmp_5_reg_5222;
wire   [63:0] tmp_6_fu_3342_p35;
reg   [63:0] tmp_6_reg_5227;
wire   [63:0] tmp_8_fu_3477_p35;
reg   [63:0] tmp_8_reg_5232;
wire   [63:0] tmp_9_fu_3612_p35;
reg   [63:0] tmp_9_reg_5237;
wire   [63:0] tmp_10_fu_3747_p35;
reg   [63:0] tmp_10_reg_5242;
wire   [63:0] tmp_11_fu_3882_p35;
reg   [63:0] tmp_11_reg_5247;
reg   [63:0] mul163_1_1_reg_5252;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul163_1_2_reg_5257;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] sub168_s_reg_5262;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub168_2_reg_5269;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub168_1_reg_5276;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub168_1_1_reg_5283;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub168_1_2_reg_5290;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] mul177_1_1_reg_5302;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] mul177_1_2_reg_5307;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] norm_5_reg_5312;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln122_1_fu_2438_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_fu_2732_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_1_fu_2783_p1;
wire   [63:0] zext_ln180_2_fu_2834_p1;
wire   [63:0] zext_ln180_3_fu_2885_p1;
reg   [63:0] norm_fu_222;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_fu_226;
wire   [6:0] add_ln178_fu_4072_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage23_01001;
reg    d_weights3_0_ce0_local;
reg   [2:0] d_weights3_0_address0_local;
reg    d_weights3_0_ce1_local;
reg    d_weights3_2_ce0_local;
reg   [2:0] d_weights3_2_address0_local;
reg    d_weights3_2_ce1_local;
reg    d_weights3_4_ce0_local;
reg   [2:0] d_weights3_4_address0_local;
reg    d_weights3_4_ce1_local;
reg    d_weights3_6_ce0_local;
reg   [2:0] d_weights3_6_address0_local;
reg    d_weights3_6_ce1_local;
reg    d_weights3_8_ce0_local;
reg   [2:0] d_weights3_8_address0_local;
reg    d_weights3_8_ce1_local;
reg    d_weights3_10_ce0_local;
reg   [2:0] d_weights3_10_address0_local;
reg    d_weights3_10_ce1_local;
reg    d_weights3_12_ce0_local;
reg   [2:0] d_weights3_12_address0_local;
reg    d_weights3_12_ce1_local;
reg    d_weights3_14_ce0_local;
reg   [2:0] d_weights3_14_address0_local;
reg    d_weights3_14_ce1_local;
reg    d_weights3_16_ce0_local;
reg   [2:0] d_weights3_16_address0_local;
reg    d_weights3_16_ce1_local;
reg    d_weights3_18_ce0_local;
reg   [2:0] d_weights3_18_address0_local;
reg    d_weights3_18_ce1_local;
reg    d_weights3_20_ce0_local;
reg   [2:0] d_weights3_20_address0_local;
reg    d_weights3_20_ce1_local;
reg    d_weights3_22_ce0_local;
reg   [2:0] d_weights3_22_address0_local;
reg    d_weights3_22_ce1_local;
reg    d_weights3_24_ce0_local;
reg   [2:0] d_weights3_24_address0_local;
reg    d_weights3_24_ce1_local;
reg    d_weights3_26_ce0_local;
reg   [2:0] d_weights3_26_address0_local;
reg    d_weights3_26_ce1_local;
reg    d_weights3_28_ce0_local;
reg   [2:0] d_weights3_28_address0_local;
reg    d_weights3_28_ce1_local;
reg    d_weights3_30_ce0_local;
reg   [2:0] d_weights3_30_address0_local;
reg    d_weights3_30_ce1_local;
reg    weights3_0_ce0_local;
reg   [2:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg   [2:0] weights3_0_address1_local;
reg    weights3_0_we1_local;
reg    ap_predicate_pred1671_state18;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln180_96_fu_3953_p1;
wire    ap_block_pp0_stage17;
reg    weights3_0_we0_local;
reg    ap_predicate_pred1686_state20;
wire   [63:0] bitcast_ln180_98_fu_3992_p1;
wire    ap_block_pp0_stage19;
reg    ap_predicate_pred1700_state22;
wire   [63:0] bitcast_ln180_100_fu_4030_p1;
wire    ap_block_pp0_stage21;
reg    weights3_2_ce0_local;
reg   [2:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg   [2:0] weights3_2_address1_local;
reg    weights3_2_we1_local;
reg    ap_predicate_pred1721_state18;
reg   [63:0] weights3_2_d1_local;
reg    weights3_2_we0_local;
reg    ap_predicate_pred1671_state20;
reg    ap_predicate_pred1686_state22;
reg    weights3_4_ce0_local;
reg   [2:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg   [2:0] weights3_4_address1_local;
reg    weights3_4_we1_local;
reg    ap_predicate_pred1744_state18;
reg   [63:0] weights3_4_d1_local;
reg    weights3_4_we0_local;
reg    ap_predicate_pred1721_state20;
reg    ap_predicate_pred1671_state22;
reg    weights3_6_ce0_local;
reg   [2:0] weights3_6_address0_local;
reg    weights3_6_ce1_local;
reg   [2:0] weights3_6_address1_local;
reg    weights3_6_we1_local;
reg    ap_predicate_pred1767_state18;
reg   [63:0] weights3_6_d1_local;
reg    weights3_6_we0_local;
reg    ap_predicate_pred1744_state20;
reg    ap_predicate_pred1721_state22;
reg    weights3_8_ce0_local;
reg   [2:0] weights3_8_address0_local;
reg    weights3_8_ce1_local;
reg   [2:0] weights3_8_address1_local;
reg    weights3_8_we1_local;
reg    ap_predicate_pred1790_state18;
reg   [63:0] weights3_8_d1_local;
reg    weights3_8_we0_local;
reg    ap_predicate_pred1767_state20;
reg    ap_predicate_pred1744_state22;
reg    weights3_10_ce0_local;
reg   [2:0] weights3_10_address0_local;
reg    weights3_10_ce1_local;
reg   [2:0] weights3_10_address1_local;
reg    weights3_10_we1_local;
reg    ap_predicate_pred1813_state18;
reg   [63:0] weights3_10_d1_local;
reg    weights3_10_we0_local;
reg    ap_predicate_pred1790_state20;
reg    ap_predicate_pred1767_state22;
reg    weights3_12_ce0_local;
reg   [2:0] weights3_12_address0_local;
reg    weights3_12_ce1_local;
reg   [2:0] weights3_12_address1_local;
reg    weights3_12_we1_local;
reg    ap_predicate_pred1836_state18;
reg   [63:0] weights3_12_d1_local;
reg    weights3_12_we0_local;
reg    ap_predicate_pred1813_state20;
reg    ap_predicate_pred1790_state22;
reg    weights3_14_ce0_local;
reg   [2:0] weights3_14_address0_local;
reg    weights3_14_ce1_local;
reg   [2:0] weights3_14_address1_local;
reg    weights3_14_we1_local;
reg    ap_predicate_pred1859_state18;
reg   [63:0] weights3_14_d1_local;
reg    weights3_14_we0_local;
reg    ap_predicate_pred1836_state20;
reg    ap_predicate_pred1813_state22;
reg    weights3_16_ce0_local;
reg   [2:0] weights3_16_address0_local;
reg    weights3_16_ce1_local;
reg   [2:0] weights3_16_address1_local;
reg    weights3_16_we1_local;
reg    ap_predicate_pred1882_state18;
reg   [63:0] weights3_16_d1_local;
reg    weights3_16_we0_local;
reg    ap_predicate_pred1859_state20;
reg    ap_predicate_pred1836_state22;
reg    weights3_18_ce0_local;
reg   [2:0] weights3_18_address0_local;
reg    weights3_18_ce1_local;
reg   [2:0] weights3_18_address1_local;
reg    weights3_18_we1_local;
reg    ap_predicate_pred1905_state18;
reg   [63:0] weights3_18_d1_local;
reg    weights3_18_we0_local;
reg    ap_predicate_pred1882_state20;
reg    ap_predicate_pred1859_state22;
reg    weights3_20_ce0_local;
reg   [2:0] weights3_20_address0_local;
reg    weights3_20_ce1_local;
reg   [2:0] weights3_20_address1_local;
reg    weights3_20_we1_local;
reg    ap_predicate_pred1928_state18;
reg   [63:0] weights3_20_d1_local;
reg    weights3_20_we0_local;
reg    ap_predicate_pred1905_state20;
reg    ap_predicate_pred1882_state22;
reg    weights3_22_ce0_local;
reg   [2:0] weights3_22_address0_local;
reg    weights3_22_ce1_local;
reg   [2:0] weights3_22_address1_local;
reg    weights3_22_we1_local;
reg    ap_predicate_pred1951_state18;
reg   [63:0] weights3_22_d1_local;
reg    weights3_22_we0_local;
reg    ap_predicate_pred1928_state20;
reg    ap_predicate_pred1905_state22;
reg    weights3_24_ce0_local;
reg   [2:0] weights3_24_address0_local;
reg    weights3_24_ce1_local;
reg   [2:0] weights3_24_address1_local;
reg    weights3_24_we1_local;
reg    ap_predicate_pred1974_state18;
reg   [63:0] weights3_24_d1_local;
reg    weights3_24_we0_local;
reg    ap_predicate_pred1951_state20;
reg    ap_predicate_pred1928_state22;
reg    weights3_26_ce0_local;
reg   [2:0] weights3_26_address0_local;
reg    weights3_26_ce1_local;
reg   [2:0] weights3_26_address1_local;
reg    weights3_26_we1_local;
reg    ap_predicate_pred2024_state18;
reg   [63:0] weights3_26_d1_local;
reg    weights3_26_we0_local;
reg    ap_predicate_pred1974_state20;
reg    ap_predicate_pred1951_state22;
reg    weights3_28_ce0_local;
reg   [2:0] weights3_28_address0_local;
reg    weights3_28_ce1_local;
reg   [2:0] weights3_28_address1_local;
reg    weights3_28_we1_local;
reg    ap_predicate_pred1700_state18;
reg   [63:0] weights3_28_d1_local;
reg    weights3_28_we0_local;
reg    ap_predicate_pred2024_state20;
reg    ap_predicate_pred1974_state22;
reg    weights3_30_ce0_local;
reg   [2:0] weights3_30_address0_local;
reg    weights3_30_ce1_local;
reg   [2:0] weights3_30_address1_local;
reg    weights3_30_we1_local;
reg    ap_predicate_pred1686_state18;
reg   [63:0] weights3_30_d1_local;
reg    weights3_30_we0_local;
reg    ap_predicate_pred1700_state20;
reg    ap_predicate_pred2024_state22;
reg    d_weights3_1_ce0_local;
reg   [2:0] d_weights3_1_address0_local;
reg    d_weights3_1_ce1_local;
reg    d_weights3_3_ce0_local;
reg   [2:0] d_weights3_3_address0_local;
reg    d_weights3_3_ce1_local;
reg    d_weights3_5_ce0_local;
reg   [2:0] d_weights3_5_address0_local;
reg    d_weights3_5_ce1_local;
reg    d_weights3_7_ce0_local;
reg   [2:0] d_weights3_7_address0_local;
reg    d_weights3_7_ce1_local;
reg    d_weights3_9_ce0_local;
reg   [2:0] d_weights3_9_address0_local;
reg    d_weights3_9_ce1_local;
reg    d_weights3_11_ce0_local;
reg   [2:0] d_weights3_11_address0_local;
reg    d_weights3_11_ce1_local;
reg    d_weights3_13_ce0_local;
reg   [2:0] d_weights3_13_address0_local;
reg    d_weights3_13_ce1_local;
reg    d_weights3_15_ce0_local;
reg   [2:0] d_weights3_15_address0_local;
reg    d_weights3_15_ce1_local;
reg    d_weights3_17_ce0_local;
reg   [2:0] d_weights3_17_address0_local;
reg    d_weights3_17_ce1_local;
reg    d_weights3_19_ce0_local;
reg   [2:0] d_weights3_19_address0_local;
reg    d_weights3_19_ce1_local;
reg    d_weights3_21_ce0_local;
reg   [2:0] d_weights3_21_address0_local;
reg    d_weights3_21_ce1_local;
reg    d_weights3_23_ce0_local;
reg   [2:0] d_weights3_23_address0_local;
reg    d_weights3_23_ce1_local;
reg    d_weights3_25_ce0_local;
reg   [2:0] d_weights3_25_address0_local;
reg    d_weights3_25_ce1_local;
reg    d_weights3_27_ce0_local;
reg   [2:0] d_weights3_27_address0_local;
reg    d_weights3_27_ce1_local;
reg    d_weights3_29_ce0_local;
reg   [2:0] d_weights3_29_address0_local;
reg    d_weights3_29_ce1_local;
reg    d_weights3_31_ce0_local;
reg   [2:0] d_weights3_31_address0_local;
reg    d_weights3_31_ce1_local;
reg    weights3_1_ce0_local;
reg   [2:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg   [2:0] weights3_1_address1_local;
reg    weights3_1_we1_local;
reg    ap_predicate_pred1671_state19;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln180_97_fu_3973_p1;
wire    ap_block_pp0_stage18;
reg    weights3_1_we0_local;
reg    ap_predicate_pred1686_state21;
wire   [63:0] bitcast_ln180_99_fu_4011_p1;
wire    ap_block_pp0_stage20;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg    ap_predicate_pred1700_state23;
wire   [63:0] bitcast_ln180_101_fu_4049_p1;
wire    ap_block_pp0_stage22;
reg    weights3_3_ce0_local;
reg   [2:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg   [2:0] weights3_3_address1_local;
reg    weights3_3_we1_local;
reg    ap_predicate_pred1721_state19;
reg   [63:0] weights3_3_d1_local;
reg    weights3_3_we0_local;
reg    ap_predicate_pred1671_state21;
reg    ap_predicate_pred1686_state23;
reg    weights3_5_ce0_local;
reg   [2:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg   [2:0] weights3_5_address1_local;
reg    weights3_5_we1_local;
reg    ap_predicate_pred1744_state19;
reg   [63:0] weights3_5_d1_local;
reg    weights3_5_we0_local;
reg    ap_predicate_pred1721_state21;
reg    ap_predicate_pred1671_state23;
reg    weights3_7_ce0_local;
reg   [2:0] weights3_7_address0_local;
reg    weights3_7_ce1_local;
reg   [2:0] weights3_7_address1_local;
reg    weights3_7_we1_local;
reg    ap_predicate_pred1767_state19;
reg   [63:0] weights3_7_d1_local;
reg    weights3_7_we0_local;
reg    ap_predicate_pred1744_state21;
reg    ap_predicate_pred1721_state23;
reg    weights3_9_ce0_local;
reg   [2:0] weights3_9_address0_local;
reg    weights3_9_ce1_local;
reg   [2:0] weights3_9_address1_local;
reg    weights3_9_we1_local;
reg    ap_predicate_pred1790_state19;
reg   [63:0] weights3_9_d1_local;
reg    weights3_9_we0_local;
reg    ap_predicate_pred1767_state21;
reg    ap_predicate_pred1744_state23;
reg    weights3_11_ce0_local;
reg   [2:0] weights3_11_address0_local;
reg    weights3_11_ce1_local;
reg   [2:0] weights3_11_address1_local;
reg    weights3_11_we1_local;
reg    ap_predicate_pred1813_state19;
reg   [63:0] weights3_11_d1_local;
reg    weights3_11_we0_local;
reg    ap_predicate_pred1790_state21;
reg    ap_predicate_pred1767_state23;
reg    weights3_13_ce0_local;
reg   [2:0] weights3_13_address0_local;
reg    weights3_13_ce1_local;
reg   [2:0] weights3_13_address1_local;
reg    weights3_13_we1_local;
reg    ap_predicate_pred1836_state19;
reg   [63:0] weights3_13_d1_local;
reg    weights3_13_we0_local;
reg    ap_predicate_pred1813_state21;
reg    ap_predicate_pred1790_state23;
reg    weights3_15_ce0_local;
reg   [2:0] weights3_15_address0_local;
reg    weights3_15_ce1_local;
reg   [2:0] weights3_15_address1_local;
reg    weights3_15_we1_local;
reg    ap_predicate_pred1859_state19;
reg   [63:0] weights3_15_d1_local;
reg    weights3_15_we0_local;
reg    ap_predicate_pred1836_state21;
reg    ap_predicate_pred1813_state23;
reg    weights3_17_ce0_local;
reg   [2:0] weights3_17_address0_local;
reg    weights3_17_ce1_local;
reg   [2:0] weights3_17_address1_local;
reg    weights3_17_we1_local;
reg    ap_predicate_pred1882_state19;
reg   [63:0] weights3_17_d1_local;
reg    weights3_17_we0_local;
reg    ap_predicate_pred1859_state21;
reg    ap_predicate_pred1836_state23;
reg    weights3_19_ce0_local;
reg   [2:0] weights3_19_address0_local;
reg    weights3_19_ce1_local;
reg   [2:0] weights3_19_address1_local;
reg    weights3_19_we1_local;
reg    ap_predicate_pred1905_state19;
reg   [63:0] weights3_19_d1_local;
reg    weights3_19_we0_local;
reg    ap_predicate_pred1882_state21;
reg    ap_predicate_pred1859_state23;
reg    weights3_21_ce0_local;
reg   [2:0] weights3_21_address0_local;
reg    weights3_21_ce1_local;
reg   [2:0] weights3_21_address1_local;
reg    weights3_21_we1_local;
reg    ap_predicate_pred1928_state19;
reg   [63:0] weights3_21_d1_local;
reg    weights3_21_we0_local;
reg    ap_predicate_pred1905_state21;
reg    ap_predicate_pred1882_state23;
reg    weights3_23_ce0_local;
reg   [2:0] weights3_23_address0_local;
reg    weights3_23_ce1_local;
reg   [2:0] weights3_23_address1_local;
reg    weights3_23_we1_local;
reg    ap_predicate_pred1951_state19;
reg   [63:0] weights3_23_d1_local;
reg    weights3_23_we0_local;
reg    ap_predicate_pred1928_state21;
reg    ap_predicate_pred1905_state23;
reg    weights3_25_ce0_local;
reg   [2:0] weights3_25_address0_local;
reg    weights3_25_ce1_local;
reg   [2:0] weights3_25_address1_local;
reg    weights3_25_we1_local;
reg    ap_predicate_pred1974_state19;
reg   [63:0] weights3_25_d1_local;
reg    weights3_25_we0_local;
reg    ap_predicate_pred1951_state21;
reg    ap_predicate_pred1928_state23;
reg    weights3_27_ce0_local;
reg   [2:0] weights3_27_address0_local;
reg    weights3_27_ce1_local;
reg   [2:0] weights3_27_address1_local;
reg    weights3_27_we1_local;
reg    ap_predicate_pred2024_state19;
reg   [63:0] weights3_27_d1_local;
reg    weights3_27_we0_local;
reg    ap_predicate_pred1974_state21;
reg    ap_predicate_pred1951_state23;
reg    weights3_29_ce0_local;
reg   [2:0] weights3_29_address0_local;
reg    weights3_29_ce1_local;
reg   [2:0] weights3_29_address1_local;
reg    weights3_29_we1_local;
reg    ap_predicate_pred1700_state19;
reg   [63:0] weights3_29_d1_local;
reg    weights3_29_we0_local;
reg    ap_predicate_pred2024_state21;
reg    ap_predicate_pred1974_state23;
reg    weights3_31_ce0_local;
reg   [2:0] weights3_31_address0_local;
reg    weights3_31_ce1_local;
reg   [2:0] weights3_31_address1_local;
reg    weights3_31_we1_local;
reg    ap_predicate_pred1686_state19;
reg   [63:0] weights3_31_d1_local;
reg    weights3_31_we0_local;
reg    ap_predicate_pred1700_state21;
reg    ap_predicate_pred2024_state23;
reg   [63:0] grp_fu_2349_p0;
reg   [63:0] grp_fu_2349_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_2353_p0;
reg   [63:0] grp_fu_2353_p1;
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
wire   [5:0] trunc_ln122_fu_2410_p1;
wire   [7:0] p_shl_fu_2414_p3;
wire   [7:0] zext_ln122_fu_2406_p1;
wire   [2:0] lshr_ln3_fu_2428_p4;
wire   [63:0] tmp_s_fu_2509_p33;
wire   [63:0] tmp_1_fu_2645_p2;
wire   [63:0] tmp_1_fu_2645_p4;
wire   [63:0] tmp_1_fu_2645_p6;
wire   [63:0] tmp_1_fu_2645_p8;
wire   [63:0] tmp_1_fu_2645_p10;
wire   [63:0] tmp_1_fu_2645_p12;
wire   [63:0] tmp_1_fu_2645_p14;
wire   [63:0] tmp_1_fu_2645_p16;
wire   [63:0] tmp_1_fu_2645_p18;
wire   [63:0] tmp_1_fu_2645_p20;
wire   [63:0] tmp_1_fu_2645_p22;
wire   [63:0] tmp_1_fu_2645_p24;
wire   [63:0] tmp_1_fu_2645_p26;
wire   [63:0] tmp_1_fu_2645_p28;
wire   [63:0] tmp_1_fu_2645_p30;
wire   [63:0] tmp_1_fu_2645_p32;
wire   [63:0] tmp_1_fu_2645_p33;
wire   [7:0] add_ln180_fu_2717_p2;
wire   [2:0] lshr_ln4_fu_2722_p4;
wire   [7:0] empty_fu_2768_p2;
wire   [2:0] lshr_ln122_1_fu_2773_p4;
wire   [7:0] add_ln180_1_fu_2819_p2;
wire   [2:0] lshr_ln180_1_fu_2824_p4;
wire   [7:0] add_ln180_2_fu_2870_p2;
wire   [2:0] lshr_ln180_2_fu_2875_p4;
wire   [63:0] tmp_2_fu_2921_p33;
wire   [63:0] tmp_7_fu_3057_p2;
wire   [63:0] tmp_7_fu_3057_p4;
wire   [63:0] tmp_7_fu_3057_p6;
wire   [63:0] tmp_7_fu_3057_p8;
wire   [63:0] tmp_7_fu_3057_p10;
wire   [63:0] tmp_7_fu_3057_p12;
wire   [63:0] tmp_7_fu_3057_p14;
wire   [63:0] tmp_7_fu_3057_p16;
wire   [63:0] tmp_7_fu_3057_p18;
wire   [63:0] tmp_7_fu_3057_p20;
wire   [63:0] tmp_7_fu_3057_p22;
wire   [63:0] tmp_7_fu_3057_p24;
wire   [63:0] tmp_7_fu_3057_p26;
wire   [63:0] tmp_7_fu_3057_p28;
wire   [63:0] tmp_7_fu_3057_p30;
wire   [63:0] tmp_7_fu_3057_p32;
wire   [63:0] tmp_7_fu_3057_p33;
wire   [63:0] tmp_3_fu_3129_p33;
wire   [63:0] tmp_4_fu_3200_p33;
wire   [63:0] tmp_5_fu_3271_p33;
wire   [63:0] tmp_6_fu_3342_p33;
wire   [63:0] tmp_8_fu_3477_p2;
wire   [63:0] tmp_8_fu_3477_p4;
wire   [63:0] tmp_8_fu_3477_p6;
wire   [63:0] tmp_8_fu_3477_p8;
wire   [63:0] tmp_8_fu_3477_p10;
wire   [63:0] tmp_8_fu_3477_p12;
wire   [63:0] tmp_8_fu_3477_p14;
wire   [63:0] tmp_8_fu_3477_p16;
wire   [63:0] tmp_8_fu_3477_p18;
wire   [63:0] tmp_8_fu_3477_p20;
wire   [63:0] tmp_8_fu_3477_p22;
wire   [63:0] tmp_8_fu_3477_p24;
wire   [63:0] tmp_8_fu_3477_p26;
wire   [63:0] tmp_8_fu_3477_p28;
wire   [63:0] tmp_8_fu_3477_p30;
wire   [63:0] tmp_8_fu_3477_p32;
wire   [63:0] tmp_8_fu_3477_p33;
wire   [63:0] tmp_9_fu_3612_p2;
wire   [63:0] tmp_9_fu_3612_p4;
wire   [63:0] tmp_9_fu_3612_p6;
wire   [63:0] tmp_9_fu_3612_p8;
wire   [63:0] tmp_9_fu_3612_p10;
wire   [63:0] tmp_9_fu_3612_p12;
wire   [63:0] tmp_9_fu_3612_p14;
wire   [63:0] tmp_9_fu_3612_p16;
wire   [63:0] tmp_9_fu_3612_p18;
wire   [63:0] tmp_9_fu_3612_p20;
wire   [63:0] tmp_9_fu_3612_p22;
wire   [63:0] tmp_9_fu_3612_p24;
wire   [63:0] tmp_9_fu_3612_p26;
wire   [63:0] tmp_9_fu_3612_p28;
wire   [63:0] tmp_9_fu_3612_p30;
wire   [63:0] tmp_9_fu_3612_p32;
wire   [63:0] tmp_9_fu_3612_p33;
wire   [63:0] tmp_10_fu_3747_p2;
wire   [63:0] tmp_10_fu_3747_p4;
wire   [63:0] tmp_10_fu_3747_p6;
wire   [63:0] tmp_10_fu_3747_p8;
wire   [63:0] tmp_10_fu_3747_p10;
wire   [63:0] tmp_10_fu_3747_p12;
wire   [63:0] tmp_10_fu_3747_p14;
wire   [63:0] tmp_10_fu_3747_p16;
wire   [63:0] tmp_10_fu_3747_p18;
wire   [63:0] tmp_10_fu_3747_p20;
wire   [63:0] tmp_10_fu_3747_p22;
wire   [63:0] tmp_10_fu_3747_p24;
wire   [63:0] tmp_10_fu_3747_p26;
wire   [63:0] tmp_10_fu_3747_p28;
wire   [63:0] tmp_10_fu_3747_p30;
wire   [63:0] tmp_10_fu_3747_p32;
wire   [63:0] tmp_10_fu_3747_p33;
wire   [63:0] tmp_11_fu_3882_p2;
wire   [63:0] tmp_11_fu_3882_p4;
wire   [63:0] tmp_11_fu_3882_p6;
wire   [63:0] tmp_11_fu_3882_p8;
wire   [63:0] tmp_11_fu_3882_p10;
wire   [63:0] tmp_11_fu_3882_p12;
wire   [63:0] tmp_11_fu_3882_p14;
wire   [63:0] tmp_11_fu_3882_p16;
wire   [63:0] tmp_11_fu_3882_p18;
wire   [63:0] tmp_11_fu_3882_p20;
wire   [63:0] tmp_11_fu_3882_p22;
wire   [63:0] tmp_11_fu_3882_p24;
wire   [63:0] tmp_11_fu_3882_p26;
wire   [63:0] tmp_11_fu_3882_p28;
wire   [63:0] tmp_11_fu_3882_p30;
wire   [63:0] tmp_11_fu_3882_p32;
wire   [63:0] tmp_11_fu_3882_p33;
wire    ap_block_pp0_stage47;
reg   [1:0] grp_fu_2349_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [47:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_2509_p1;
wire  signed [4:0] tmp_s_fu_2509_p3;
wire   [4:0] tmp_s_fu_2509_p5;
wire   [4:0] tmp_s_fu_2509_p7;
wire  signed [4:0] tmp_s_fu_2509_p9;
wire   [4:0] tmp_s_fu_2509_p11;
wire   [4:0] tmp_s_fu_2509_p13;
wire  signed [4:0] tmp_s_fu_2509_p15;
wire  signed [4:0] tmp_s_fu_2509_p17;
wire   [4:0] tmp_s_fu_2509_p19;
wire  signed [4:0] tmp_s_fu_2509_p21;
wire  signed [4:0] tmp_s_fu_2509_p23;
wire   [4:0] tmp_s_fu_2509_p25;
wire  signed [4:0] tmp_s_fu_2509_p27;
wire  signed [4:0] tmp_s_fu_2509_p29;
wire   [4:0] tmp_s_fu_2509_p31;
wire   [4:0] tmp_1_fu_2645_p1;
wire  signed [4:0] tmp_1_fu_2645_p3;
wire   [4:0] tmp_1_fu_2645_p5;
wire   [4:0] tmp_1_fu_2645_p7;
wire  signed [4:0] tmp_1_fu_2645_p9;
wire   [4:0] tmp_1_fu_2645_p11;
wire   [4:0] tmp_1_fu_2645_p13;
wire  signed [4:0] tmp_1_fu_2645_p15;
wire  signed [4:0] tmp_1_fu_2645_p17;
wire   [4:0] tmp_1_fu_2645_p19;
wire  signed [4:0] tmp_1_fu_2645_p21;
wire  signed [4:0] tmp_1_fu_2645_p23;
wire   [4:0] tmp_1_fu_2645_p25;
wire  signed [4:0] tmp_1_fu_2645_p27;
wire  signed [4:0] tmp_1_fu_2645_p29;
wire   [4:0] tmp_1_fu_2645_p31;
wire   [4:0] tmp_2_fu_2921_p1;
wire  signed [4:0] tmp_2_fu_2921_p3;
wire   [4:0] tmp_2_fu_2921_p5;
wire   [4:0] tmp_2_fu_2921_p7;
wire  signed [4:0] tmp_2_fu_2921_p9;
wire   [4:0] tmp_2_fu_2921_p11;
wire   [4:0] tmp_2_fu_2921_p13;
wire  signed [4:0] tmp_2_fu_2921_p15;
wire  signed [4:0] tmp_2_fu_2921_p17;
wire   [4:0] tmp_2_fu_2921_p19;
wire  signed [4:0] tmp_2_fu_2921_p21;
wire  signed [4:0] tmp_2_fu_2921_p23;
wire   [4:0] tmp_2_fu_2921_p25;
wire  signed [4:0] tmp_2_fu_2921_p27;
wire  signed [4:0] tmp_2_fu_2921_p29;
wire   [4:0] tmp_2_fu_2921_p31;
wire   [4:0] tmp_7_fu_3057_p1;
wire  signed [4:0] tmp_7_fu_3057_p3;
wire   [4:0] tmp_7_fu_3057_p5;
wire   [4:0] tmp_7_fu_3057_p7;
wire  signed [4:0] tmp_7_fu_3057_p9;
wire   [4:0] tmp_7_fu_3057_p11;
wire   [4:0] tmp_7_fu_3057_p13;
wire  signed [4:0] tmp_7_fu_3057_p15;
wire  signed [4:0] tmp_7_fu_3057_p17;
wire   [4:0] tmp_7_fu_3057_p19;
wire  signed [4:0] tmp_7_fu_3057_p21;
wire  signed [4:0] tmp_7_fu_3057_p23;
wire   [4:0] tmp_7_fu_3057_p25;
wire  signed [4:0] tmp_7_fu_3057_p27;
wire  signed [4:0] tmp_7_fu_3057_p29;
wire   [4:0] tmp_7_fu_3057_p31;
wire   [4:0] tmp_3_fu_3129_p1;
wire   [4:0] tmp_3_fu_3129_p3;
wire  signed [4:0] tmp_3_fu_3129_p5;
wire   [4:0] tmp_3_fu_3129_p7;
wire   [4:0] tmp_3_fu_3129_p9;
wire  signed [4:0] tmp_3_fu_3129_p11;
wire   [4:0] tmp_3_fu_3129_p13;
wire   [4:0] tmp_3_fu_3129_p15;
wire  signed [4:0] tmp_3_fu_3129_p17;
wire  signed [4:0] tmp_3_fu_3129_p19;
wire   [4:0] tmp_3_fu_3129_p21;
wire  signed [4:0] tmp_3_fu_3129_p23;
wire  signed [4:0] tmp_3_fu_3129_p25;
wire   [4:0] tmp_3_fu_3129_p27;
wire  signed [4:0] tmp_3_fu_3129_p29;
wire  signed [4:0] tmp_3_fu_3129_p31;
wire   [4:0] tmp_4_fu_3200_p1;
wire   [4:0] tmp_4_fu_3200_p3;
wire  signed [4:0] tmp_4_fu_3200_p5;
wire   [4:0] tmp_4_fu_3200_p7;
wire   [4:0] tmp_4_fu_3200_p9;
wire  signed [4:0] tmp_4_fu_3200_p11;
wire   [4:0] tmp_4_fu_3200_p13;
wire   [4:0] tmp_4_fu_3200_p15;
wire  signed [4:0] tmp_4_fu_3200_p17;
wire  signed [4:0] tmp_4_fu_3200_p19;
wire   [4:0] tmp_4_fu_3200_p21;
wire  signed [4:0] tmp_4_fu_3200_p23;
wire  signed [4:0] tmp_4_fu_3200_p25;
wire   [4:0] tmp_4_fu_3200_p27;
wire  signed [4:0] tmp_4_fu_3200_p29;
wire  signed [4:0] tmp_4_fu_3200_p31;
wire  signed [4:0] tmp_5_fu_3271_p1;
wire   [4:0] tmp_5_fu_3271_p3;
wire   [4:0] tmp_5_fu_3271_p5;
wire  signed [4:0] tmp_5_fu_3271_p7;
wire   [4:0] tmp_5_fu_3271_p9;
wire   [4:0] tmp_5_fu_3271_p11;
wire  signed [4:0] tmp_5_fu_3271_p13;
wire   [4:0] tmp_5_fu_3271_p15;
wire   [4:0] tmp_5_fu_3271_p17;
wire  signed [4:0] tmp_5_fu_3271_p19;
wire  signed [4:0] tmp_5_fu_3271_p21;
wire   [4:0] tmp_5_fu_3271_p23;
wire  signed [4:0] tmp_5_fu_3271_p25;
wire  signed [4:0] tmp_5_fu_3271_p27;
wire   [4:0] tmp_5_fu_3271_p29;
wire  signed [4:0] tmp_5_fu_3271_p31;
wire  signed [4:0] tmp_6_fu_3342_p1;
wire   [4:0] tmp_6_fu_3342_p3;
wire   [4:0] tmp_6_fu_3342_p5;
wire  signed [4:0] tmp_6_fu_3342_p7;
wire   [4:0] tmp_6_fu_3342_p9;
wire   [4:0] tmp_6_fu_3342_p11;
wire  signed [4:0] tmp_6_fu_3342_p13;
wire   [4:0] tmp_6_fu_3342_p15;
wire   [4:0] tmp_6_fu_3342_p17;
wire  signed [4:0] tmp_6_fu_3342_p19;
wire  signed [4:0] tmp_6_fu_3342_p21;
wire   [4:0] tmp_6_fu_3342_p23;
wire  signed [4:0] tmp_6_fu_3342_p25;
wire  signed [4:0] tmp_6_fu_3342_p27;
wire   [4:0] tmp_6_fu_3342_p29;
wire  signed [4:0] tmp_6_fu_3342_p31;
wire   [4:0] tmp_8_fu_3477_p1;
wire   [4:0] tmp_8_fu_3477_p3;
wire  signed [4:0] tmp_8_fu_3477_p5;
wire   [4:0] tmp_8_fu_3477_p7;
wire   [4:0] tmp_8_fu_3477_p9;
wire  signed [4:0] tmp_8_fu_3477_p11;
wire   [4:0] tmp_8_fu_3477_p13;
wire   [4:0] tmp_8_fu_3477_p15;
wire  signed [4:0] tmp_8_fu_3477_p17;
wire  signed [4:0] tmp_8_fu_3477_p19;
wire   [4:0] tmp_8_fu_3477_p21;
wire  signed [4:0] tmp_8_fu_3477_p23;
wire  signed [4:0] tmp_8_fu_3477_p25;
wire   [4:0] tmp_8_fu_3477_p27;
wire  signed [4:0] tmp_8_fu_3477_p29;
wire  signed [4:0] tmp_8_fu_3477_p31;
wire   [4:0] tmp_9_fu_3612_p1;
wire   [4:0] tmp_9_fu_3612_p3;
wire  signed [4:0] tmp_9_fu_3612_p5;
wire   [4:0] tmp_9_fu_3612_p7;
wire   [4:0] tmp_9_fu_3612_p9;
wire  signed [4:0] tmp_9_fu_3612_p11;
wire   [4:0] tmp_9_fu_3612_p13;
wire   [4:0] tmp_9_fu_3612_p15;
wire  signed [4:0] tmp_9_fu_3612_p17;
wire  signed [4:0] tmp_9_fu_3612_p19;
wire   [4:0] tmp_9_fu_3612_p21;
wire  signed [4:0] tmp_9_fu_3612_p23;
wire  signed [4:0] tmp_9_fu_3612_p25;
wire   [4:0] tmp_9_fu_3612_p27;
wire  signed [4:0] tmp_9_fu_3612_p29;
wire  signed [4:0] tmp_9_fu_3612_p31;
wire  signed [4:0] tmp_10_fu_3747_p1;
wire   [4:0] tmp_10_fu_3747_p3;
wire   [4:0] tmp_10_fu_3747_p5;
wire  signed [4:0] tmp_10_fu_3747_p7;
wire   [4:0] tmp_10_fu_3747_p9;
wire   [4:0] tmp_10_fu_3747_p11;
wire  signed [4:0] tmp_10_fu_3747_p13;
wire   [4:0] tmp_10_fu_3747_p15;
wire   [4:0] tmp_10_fu_3747_p17;
wire  signed [4:0] tmp_10_fu_3747_p19;
wire  signed [4:0] tmp_10_fu_3747_p21;
wire   [4:0] tmp_10_fu_3747_p23;
wire  signed [4:0] tmp_10_fu_3747_p25;
wire  signed [4:0] tmp_10_fu_3747_p27;
wire   [4:0] tmp_10_fu_3747_p29;
wire  signed [4:0] tmp_10_fu_3747_p31;
wire  signed [4:0] tmp_11_fu_3882_p1;
wire   [4:0] tmp_11_fu_3882_p3;
wire   [4:0] tmp_11_fu_3882_p5;
wire  signed [4:0] tmp_11_fu_3882_p7;
wire   [4:0] tmp_11_fu_3882_p9;
wire   [4:0] tmp_11_fu_3882_p11;
wire  signed [4:0] tmp_11_fu_3882_p13;
wire   [4:0] tmp_11_fu_3882_p15;
wire   [4:0] tmp_11_fu_3882_p17;
wire  signed [4:0] tmp_11_fu_3882_p19;
wire  signed [4:0] tmp_11_fu_3882_p21;
wire   [4:0] tmp_11_fu_3882_p23;
wire  signed [4:0] tmp_11_fu_3882_p25;
wire  signed [4:0] tmp_11_fu_3882_p27;
wire   [4:0] tmp_11_fu_3882_p29;
wire  signed [4:0] tmp_11_fu_3882_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_222 = 64'd0;
#0 i_fu_226 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h16 ),.din1_WIDTH( 64 ),.CASE2( 5'hC ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h18 ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h1A ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h6 ),.din9_WIDTH( 64 ),.CASE10( 5'h1C ),.din10_WIDTH( 64 ),.CASE11( 5'h12 ),.din11_WIDTH( 64 ),.CASE12( 5'h8 ),.din12_WIDTH( 64 ),.CASE13( 5'h1E ),.din13_WIDTH( 64 ),.CASE14( 5'h14 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2504(.din0(d_weights3_0_q0),.din1(d_weights3_2_q0),.din2(d_weights3_4_q0),.din3(d_weights3_6_q0),.din4(d_weights3_8_q0),.din5(d_weights3_10_q0),.din6(d_weights3_12_q0),.din7(d_weights3_14_q0),.din8(d_weights3_16_q0),.din9(d_weights3_18_q0),.din10(d_weights3_20_q0),.din11(d_weights3_22_q0),.din12(d_weights3_24_q0),.din13(d_weights3_26_q0),.din14(d_weights3_28_q0),.din15(d_weights3_30_q0),.def(tmp_s_fu_2509_p33),.sel(trunc_ln178_fu_2506_p1),.dout(tmp_s_fu_2509_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h16 ),.din1_WIDTH( 64 ),.CASE2( 5'hC ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h18 ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h1A ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h6 ),.din9_WIDTH( 64 ),.CASE10( 5'h1C ),.din10_WIDTH( 64 ),.CASE11( 5'h12 ),.din11_WIDTH( 64 ),.CASE12( 5'h8 ),.din12_WIDTH( 64 ),.CASE13( 5'h1E ),.din13_WIDTH( 64 ),.CASE14( 5'h14 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2505(.din0(tmp_1_fu_2645_p2),.din1(tmp_1_fu_2645_p4),.din2(tmp_1_fu_2645_p6),.din3(tmp_1_fu_2645_p8),.din4(tmp_1_fu_2645_p10),.din5(tmp_1_fu_2645_p12),.din6(tmp_1_fu_2645_p14),.din7(tmp_1_fu_2645_p16),.din8(tmp_1_fu_2645_p18),.din9(tmp_1_fu_2645_p20),.din10(tmp_1_fu_2645_p22),.din11(tmp_1_fu_2645_p24),.din12(tmp_1_fu_2645_p26),.din13(tmp_1_fu_2645_p28),.din14(tmp_1_fu_2645_p30),.din15(tmp_1_fu_2645_p32),.def(tmp_1_fu_2645_p33),.sel(trunc_ln178_fu_2506_p1),.dout(tmp_1_fu_2645_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h16 ),.din1_WIDTH( 64 ),.CASE2( 5'hC ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h18 ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h1A ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h6 ),.din9_WIDTH( 64 ),.CASE10( 5'h1C ),.din10_WIDTH( 64 ),.CASE11( 5'h12 ),.din11_WIDTH( 64 ),.CASE12( 5'h8 ),.din12_WIDTH( 64 ),.CASE13( 5'h1E ),.din13_WIDTH( 64 ),.CASE14( 5'h14 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2506(.din0(d_weights3_1_q0),.din1(d_weights3_3_q0),.din2(d_weights3_5_q0),.din3(d_weights3_7_q0),.din4(d_weights3_9_q0),.din5(d_weights3_11_q0),.din6(d_weights3_13_q0),.din7(d_weights3_15_q0),.din8(d_weights3_17_q0),.din9(d_weights3_19_q0),.din10(d_weights3_21_q0),.din11(d_weights3_23_q0),.din12(d_weights3_25_q0),.din13(d_weights3_27_q0),.din14(d_weights3_29_q0),.din15(d_weights3_31_q0),.def(tmp_2_fu_2921_p33),.sel(trunc_ln178_fu_2506_p1),.dout(tmp_2_fu_2921_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h16 ),.din1_WIDTH( 64 ),.CASE2( 5'hC ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h18 ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h1A ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h6 ),.din9_WIDTH( 64 ),.CASE10( 5'h1C ),.din10_WIDTH( 64 ),.CASE11( 5'h12 ),.din11_WIDTH( 64 ),.CASE12( 5'h8 ),.din12_WIDTH( 64 ),.CASE13( 5'h1E ),.din13_WIDTH( 64 ),.CASE14( 5'h14 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2507(.din0(tmp_7_fu_3057_p2),.din1(tmp_7_fu_3057_p4),.din2(tmp_7_fu_3057_p6),.din3(tmp_7_fu_3057_p8),.din4(tmp_7_fu_3057_p10),.din5(tmp_7_fu_3057_p12),.din6(tmp_7_fu_3057_p14),.din7(tmp_7_fu_3057_p16),.din8(tmp_7_fu_3057_p18),.din9(tmp_7_fu_3057_p20),.din10(tmp_7_fu_3057_p22),.din11(tmp_7_fu_3057_p24),.din12(tmp_7_fu_3057_p26),.din13(tmp_7_fu_3057_p28),.din14(tmp_7_fu_3057_p30),.din15(tmp_7_fu_3057_p32),.def(tmp_7_fu_3057_p33),.sel(trunc_ln178_fu_2506_p1),.dout(tmp_7_fu_3057_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hA ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h16 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h18 ),.din5_WIDTH( 64 ),.CASE6( 5'hE ),.din6_WIDTH( 64 ),.CASE7( 5'h4 ),.din7_WIDTH( 64 ),.CASE8( 5'h1A ),.din8_WIDTH( 64 ),.CASE9( 5'h10 ),.din9_WIDTH( 64 ),.CASE10( 5'h6 ),.din10_WIDTH( 64 ),.CASE11( 5'h1C ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h1E ),.din14_WIDTH( 64 ),.CASE15( 5'h14 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2508(.din0(d_weights3_0_q1),.din1(d_weights3_2_q1),.din2(d_weights3_4_q1),.din3(d_weights3_6_q1),.din4(d_weights3_8_q1),.din5(d_weights3_10_q1),.din6(d_weights3_12_q1),.din7(d_weights3_14_q1),.din8(d_weights3_16_q1),.din9(d_weights3_18_q1),.din10(d_weights3_20_q1),.din11(d_weights3_22_q1),.din12(d_weights3_24_q1),.din13(d_weights3_26_q1),.din14(d_weights3_28_q1),.din15(d_weights3_30_q1),.def(tmp_3_fu_3129_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_3_fu_3129_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hA ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h16 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h18 ),.din5_WIDTH( 64 ),.CASE6( 5'hE ),.din6_WIDTH( 64 ),.CASE7( 5'h4 ),.din7_WIDTH( 64 ),.CASE8( 5'h1A ),.din8_WIDTH( 64 ),.CASE9( 5'h10 ),.din9_WIDTH( 64 ),.CASE10( 5'h6 ),.din10_WIDTH( 64 ),.CASE11( 5'h1C ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h1E ),.din14_WIDTH( 64 ),.CASE15( 5'h14 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2509(.din0(d_weights3_1_q1),.din1(d_weights3_3_q1),.din2(d_weights3_5_q1),.din3(d_weights3_7_q1),.din4(d_weights3_9_q1),.din5(d_weights3_11_q1),.din6(d_weights3_13_q1),.din7(d_weights3_15_q1),.din8(d_weights3_17_q1),.din9(d_weights3_19_q1),.din10(d_weights3_21_q1),.din11(d_weights3_23_q1),.din12(d_weights3_25_q1),.din13(d_weights3_27_q1),.din14(d_weights3_29_q1),.din15(d_weights3_31_q1),.def(tmp_4_fu_3200_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_4_fu_3200_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h16 ),.din3_WIDTH( 64 ),.CASE4( 5'hC ),.din4_WIDTH( 64 ),.CASE5( 5'h2 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h4 ),.din8_WIDTH( 64 ),.CASE9( 5'h1A ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h1C ),.din12_WIDTH( 64 ),.CASE13( 5'h12 ),.din13_WIDTH( 64 ),.CASE14( 5'h8 ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2510(.din0(d_weights3_0_q0),.din1(d_weights3_2_q0),.din2(d_weights3_4_q0),.din3(d_weights3_6_q0),.din4(d_weights3_8_q0),.din5(d_weights3_10_q0),.din6(d_weights3_12_q0),.din7(d_weights3_14_q0),.din8(d_weights3_16_q0),.din9(d_weights3_18_q0),.din10(d_weights3_20_q0),.din11(d_weights3_22_q0),.din12(d_weights3_24_q0),.din13(d_weights3_26_q0),.din14(d_weights3_28_q0),.din15(d_weights3_30_q0),.def(tmp_5_fu_3271_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_5_fu_3271_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h16 ),.din3_WIDTH( 64 ),.CASE4( 5'hC ),.din4_WIDTH( 64 ),.CASE5( 5'h2 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h4 ),.din8_WIDTH( 64 ),.CASE9( 5'h1A ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h1C ),.din12_WIDTH( 64 ),.CASE13( 5'h12 ),.din13_WIDTH( 64 ),.CASE14( 5'h8 ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2511(.din0(d_weights3_1_q0),.din1(d_weights3_3_q0),.din2(d_weights3_5_q0),.din3(d_weights3_7_q0),.din4(d_weights3_9_q0),.din5(d_weights3_11_q0),.din6(d_weights3_13_q0),.din7(d_weights3_15_q0),.din8(d_weights3_17_q0),.din9(d_weights3_19_q0),.din10(d_weights3_21_q0),.din11(d_weights3_23_q0),.din12(d_weights3_25_q0),.din13(d_weights3_27_q0),.din14(d_weights3_29_q0),.din15(d_weights3_31_q0),.def(tmp_6_fu_3342_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_6_fu_3342_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hA ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h16 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h18 ),.din5_WIDTH( 64 ),.CASE6( 5'hE ),.din6_WIDTH( 64 ),.CASE7( 5'h4 ),.din7_WIDTH( 64 ),.CASE8( 5'h1A ),.din8_WIDTH( 64 ),.CASE9( 5'h10 ),.din9_WIDTH( 64 ),.CASE10( 5'h6 ),.din10_WIDTH( 64 ),.CASE11( 5'h1C ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h1E ),.din14_WIDTH( 64 ),.CASE15( 5'h14 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2512(.din0(tmp_8_fu_3477_p2),.din1(tmp_8_fu_3477_p4),.din2(tmp_8_fu_3477_p6),.din3(tmp_8_fu_3477_p8),.din4(tmp_8_fu_3477_p10),.din5(tmp_8_fu_3477_p12),.din6(tmp_8_fu_3477_p14),.din7(tmp_8_fu_3477_p16),.din8(tmp_8_fu_3477_p18),.din9(tmp_8_fu_3477_p20),.din10(tmp_8_fu_3477_p22),.din11(tmp_8_fu_3477_p24),.din12(tmp_8_fu_3477_p26),.din13(tmp_8_fu_3477_p28),.din14(tmp_8_fu_3477_p30),.din15(tmp_8_fu_3477_p32),.def(tmp_8_fu_3477_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_8_fu_3477_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hA ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h16 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h18 ),.din5_WIDTH( 64 ),.CASE6( 5'hE ),.din6_WIDTH( 64 ),.CASE7( 5'h4 ),.din7_WIDTH( 64 ),.CASE8( 5'h1A ),.din8_WIDTH( 64 ),.CASE9( 5'h10 ),.din9_WIDTH( 64 ),.CASE10( 5'h6 ),.din10_WIDTH( 64 ),.CASE11( 5'h1C ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h1E ),.din14_WIDTH( 64 ),.CASE15( 5'h14 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2513(.din0(tmp_9_fu_3612_p2),.din1(tmp_9_fu_3612_p4),.din2(tmp_9_fu_3612_p6),.din3(tmp_9_fu_3612_p8),.din4(tmp_9_fu_3612_p10),.din5(tmp_9_fu_3612_p12),.din6(tmp_9_fu_3612_p14),.din7(tmp_9_fu_3612_p16),.din8(tmp_9_fu_3612_p18),.din9(tmp_9_fu_3612_p20),.din10(tmp_9_fu_3612_p22),.din11(tmp_9_fu_3612_p24),.din12(tmp_9_fu_3612_p26),.din13(tmp_9_fu_3612_p28),.din14(tmp_9_fu_3612_p30),.din15(tmp_9_fu_3612_p32),.def(tmp_9_fu_3612_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_9_fu_3612_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h16 ),.din3_WIDTH( 64 ),.CASE4( 5'hC ),.din4_WIDTH( 64 ),.CASE5( 5'h2 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h4 ),.din8_WIDTH( 64 ),.CASE9( 5'h1A ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h1C ),.din12_WIDTH( 64 ),.CASE13( 5'h12 ),.din13_WIDTH( 64 ),.CASE14( 5'h8 ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2514(.din0(tmp_10_fu_3747_p2),.din1(tmp_10_fu_3747_p4),.din2(tmp_10_fu_3747_p6),.din3(tmp_10_fu_3747_p8),.din4(tmp_10_fu_3747_p10),.din5(tmp_10_fu_3747_p12),.din6(tmp_10_fu_3747_p14),.din7(tmp_10_fu_3747_p16),.din8(tmp_10_fu_3747_p18),.din9(tmp_10_fu_3747_p20),.din10(tmp_10_fu_3747_p22),.din11(tmp_10_fu_3747_p24),.din12(tmp_10_fu_3747_p26),.din13(tmp_10_fu_3747_p28),.din14(tmp_10_fu_3747_p30),.din15(tmp_10_fu_3747_p32),.def(tmp_10_fu_3747_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_10_fu_3747_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h16 ),.din3_WIDTH( 64 ),.CASE4( 5'hC ),.din4_WIDTH( 64 ),.CASE5( 5'h2 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h4 ),.din8_WIDTH( 64 ),.CASE9( 5'h1A ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h1C ),.din12_WIDTH( 64 ),.CASE13( 5'h12 ),.din13_WIDTH( 64 ),.CASE14( 5'h8 ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U2515(.din0(tmp_11_fu_3882_p2),.din1(tmp_11_fu_3882_p4),.din2(tmp_11_fu_3882_p6),.din3(tmp_11_fu_3882_p8),.din4(tmp_11_fu_3882_p10),.din5(tmp_11_fu_3882_p12),.din6(tmp_11_fu_3882_p14),.din7(tmp_11_fu_3882_p16),.din8(tmp_11_fu_3882_p18),.din9(tmp_11_fu_3882_p20),.din10(tmp_11_fu_3882_p22),.din11(tmp_11_fu_3882_p24),.din12(tmp_11_fu_3882_p26),.din13(tmp_11_fu_3882_p28),.din14(tmp_11_fu_3882_p30),.din15(tmp_11_fu_3882_p32),.def(tmp_11_fu_3882_p33),.sel(trunc_ln178_reg_4476),.dout(tmp_11_fu_3882_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_226 <= 7'd0;
    end else if (((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        i_fu_226 <= add_ln178_fu_4072_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        norm_fu_222 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_fu_222 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred1671_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state18 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state18 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1671_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state19 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state19 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1671_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state20 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state20 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1671_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state21 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state21 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_predicate_pred1671_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state22 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state22 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_predicate_pred1671_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd0));
        ap_predicate_pred1686_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd10));
        ap_predicate_pred1700_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd20));
        ap_predicate_pred1721_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd22));
        ap_predicate_pred1744_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd12));
        ap_predicate_pred1767_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd2));
        ap_predicate_pred1790_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd24));
        ap_predicate_pred1813_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd14));
        ap_predicate_pred1836_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd4));
        ap_predicate_pred1859_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd26));
        ap_predicate_pred1882_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd16));
        ap_predicate_pred1905_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd6));
        ap_predicate_pred1928_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd28));
        ap_predicate_pred1951_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd18));
        ap_predicate_pred1974_state23 <= ((tmp_reg_4112 == 1'd0) & (trunc_ln178_reg_4476 == 5'd8));
        ap_predicate_pred2024_state23 <= (~(trunc_ln178_reg_4476 == 5'd8) & ~(trunc_ln178_reg_4476 == 5'd18) & ~(trunc_ln178_reg_4476 == 5'd28) & ~(trunc_ln178_reg_4476 == 5'd6) & ~(trunc_ln178_reg_4476 == 5'd16) & ~(trunc_ln178_reg_4476 == 5'd26) & ~(trunc_ln178_reg_4476 == 5'd4) & ~(trunc_ln178_reg_4476 == 5'd14) & ~(trunc_ln178_reg_4476 == 5'd24) & ~(trunc_ln178_reg_4476 == 5'd2) & ~(trunc_ln178_reg_4476 == 5'd12) & ~(trunc_ln178_reg_4476 == 5'd22) & ~(trunc_ln178_reg_4476 == 5'd20) & ~(trunc_ln178_reg_4476 == 5'd10) & ~(trunc_ln178_reg_4476 == 5'd0) & (tmp_reg_4112 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_4106 <= ap_sig_allocacmp_i_1;
        sub_ln122_reg_4116 <= sub_ln122_fu_2422_p2;
        tmp_reg_4112 <= ap_sig_allocacmp_i_1[32'd6];
        weights3_0_addr_reg_4204 <= zext_ln122_1_fu_2438_p1;
        weights3_10_addr_reg_4234 <= zext_ln122_1_fu_2438_p1;
        weights3_11_addr_reg_4410 <= zext_ln122_1_fu_2438_p1;
        weights3_12_addr_reg_4240 <= zext_ln122_1_fu_2438_p1;
        weights3_13_addr_reg_4416 <= zext_ln122_1_fu_2438_p1;
        weights3_14_addr_reg_4246 <= zext_ln122_1_fu_2438_p1;
        weights3_15_addr_reg_4422 <= zext_ln122_1_fu_2438_p1;
        weights3_16_addr_reg_4252 <= zext_ln122_1_fu_2438_p1;
        weights3_17_addr_reg_4428 <= zext_ln122_1_fu_2438_p1;
        weights3_18_addr_reg_4258 <= zext_ln122_1_fu_2438_p1;
        weights3_19_addr_reg_4434 <= zext_ln122_1_fu_2438_p1;
        weights3_1_addr_reg_4380 <= zext_ln122_1_fu_2438_p1;
        weights3_20_addr_reg_4264 <= zext_ln122_1_fu_2438_p1;
        weights3_21_addr_reg_4440 <= zext_ln122_1_fu_2438_p1;
        weights3_22_addr_reg_4270 <= zext_ln122_1_fu_2438_p1;
        weights3_23_addr_reg_4446 <= zext_ln122_1_fu_2438_p1;
        weights3_24_addr_reg_4276 <= zext_ln122_1_fu_2438_p1;
        weights3_25_addr_reg_4452 <= zext_ln122_1_fu_2438_p1;
        weights3_26_addr_reg_4282 <= zext_ln122_1_fu_2438_p1;
        weights3_27_addr_reg_4458 <= zext_ln122_1_fu_2438_p1;
        weights3_28_addr_reg_4288 <= zext_ln122_1_fu_2438_p1;
        weights3_29_addr_reg_4464 <= zext_ln122_1_fu_2438_p1;
        weights3_2_addr_reg_4210 <= zext_ln122_1_fu_2438_p1;
        weights3_30_addr_reg_4294 <= zext_ln122_1_fu_2438_p1;
        weights3_31_addr_reg_4470 <= zext_ln122_1_fu_2438_p1;
        weights3_3_addr_reg_4386 <= zext_ln122_1_fu_2438_p1;
        weights3_4_addr_reg_4216 <= zext_ln122_1_fu_2438_p1;
        weights3_5_addr_reg_4392 <= zext_ln122_1_fu_2438_p1;
        weights3_6_addr_reg_4222 <= zext_ln122_1_fu_2438_p1;
        weights3_7_addr_reg_4398 <= zext_ln122_1_fu_2438_p1;
        weights3_8_addr_reg_4228 <= zext_ln122_1_fu_2438_p1;
        weights3_9_addr_reg_4404 <= zext_ln122_1_fu_2438_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul163_1_1_reg_5252 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul163_1_2_reg_5257 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul177_1_1_reg_5302 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        mul177_1_2_reg_5307 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        norm_5_reg_5312 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_2358 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_2363 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_2368 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_2373 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_2378 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub168_1_1_reg_5283 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        sub168_1_2_reg_5290 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub168_1_reg_5276 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub168_2_reg_5269 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub168_s_reg_5262 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_10_reg_5242 <= tmp_10_fu_3747_p35;
        tmp_11_reg_5247 <= tmp_11_fu_3882_p35;
        tmp_3_reg_5212 <= tmp_3_fu_3129_p35;
        tmp_4_reg_5217 <= tmp_4_fu_3200_p35;
        tmp_5_reg_5222 <= tmp_5_fu_3271_p35;
        tmp_6_reg_5227 <= tmp_6_fu_3342_p35;
        tmp_8_reg_5232 <= tmp_8_fu_3477_p35;
        tmp_9_reg_5237 <= tmp_9_fu_3612_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_4493 <= tmp_1_fu_2645_p35;
        tmp_2_reg_4818 <= tmp_2_fu_2921_p35;
        tmp_7_reg_4823 <= tmp_7_fu_3057_p35;
        tmp_s_reg_4488 <= tmp_s_fu_2509_p35;
        trunc_ln178_reg_4476 <= trunc_ln178_fu_2506_p1;
        weights3_0_addr_1_reg_4828 <= zext_ln180_fu_2732_p1;
        weights3_0_addr_2_reg_5020 <= zext_ln180_2_fu_2834_p1;
        weights3_10_addr_1_reg_4858 <= zext_ln180_fu_2732_p1;
        weights3_10_addr_2_reg_5050 <= zext_ln180_2_fu_2834_p1;
        weights3_11_addr_1_reg_4954 <= zext_ln180_1_fu_2783_p1;
        weights3_11_addr_2_reg_5146 <= zext_ln180_3_fu_2885_p1;
        weights3_12_addr_1_reg_4864 <= zext_ln180_fu_2732_p1;
        weights3_12_addr_2_reg_5056 <= zext_ln180_2_fu_2834_p1;
        weights3_13_addr_1_reg_4960 <= zext_ln180_1_fu_2783_p1;
        weights3_13_addr_2_reg_5152 <= zext_ln180_3_fu_2885_p1;
        weights3_14_addr_1_reg_4870 <= zext_ln180_fu_2732_p1;
        weights3_14_addr_2_reg_5062 <= zext_ln180_2_fu_2834_p1;
        weights3_15_addr_1_reg_4966 <= zext_ln180_1_fu_2783_p1;
        weights3_15_addr_2_reg_5158 <= zext_ln180_3_fu_2885_p1;
        weights3_16_addr_1_reg_4876 <= zext_ln180_fu_2732_p1;
        weights3_16_addr_2_reg_5068 <= zext_ln180_2_fu_2834_p1;
        weights3_17_addr_1_reg_4972 <= zext_ln180_1_fu_2783_p1;
        weights3_17_addr_2_reg_5164 <= zext_ln180_3_fu_2885_p1;
        weights3_18_addr_1_reg_4882 <= zext_ln180_fu_2732_p1;
        weights3_18_addr_2_reg_5074 <= zext_ln180_2_fu_2834_p1;
        weights3_19_addr_1_reg_4978 <= zext_ln180_1_fu_2783_p1;
        weights3_19_addr_2_reg_5170 <= zext_ln180_3_fu_2885_p1;
        weights3_1_addr_1_reg_4924 <= zext_ln180_1_fu_2783_p1;
        weights3_1_addr_2_reg_5116 <= zext_ln180_3_fu_2885_p1;
        weights3_20_addr_1_reg_4888 <= zext_ln180_fu_2732_p1;
        weights3_20_addr_2_reg_5080 <= zext_ln180_2_fu_2834_p1;
        weights3_21_addr_1_reg_4984 <= zext_ln180_1_fu_2783_p1;
        weights3_21_addr_2_reg_5176 <= zext_ln180_3_fu_2885_p1;
        weights3_22_addr_1_reg_4894 <= zext_ln180_fu_2732_p1;
        weights3_22_addr_2_reg_5086 <= zext_ln180_2_fu_2834_p1;
        weights3_23_addr_1_reg_4990 <= zext_ln180_1_fu_2783_p1;
        weights3_23_addr_2_reg_5182 <= zext_ln180_3_fu_2885_p1;
        weights3_24_addr_1_reg_4900 <= zext_ln180_fu_2732_p1;
        weights3_24_addr_2_reg_5092 <= zext_ln180_2_fu_2834_p1;
        weights3_25_addr_1_reg_4996 <= zext_ln180_1_fu_2783_p1;
        weights3_25_addr_2_reg_5188 <= zext_ln180_3_fu_2885_p1;
        weights3_26_addr_1_reg_4906 <= zext_ln180_fu_2732_p1;
        weights3_26_addr_2_reg_5098 <= zext_ln180_2_fu_2834_p1;
        weights3_27_addr_1_reg_5002 <= zext_ln180_1_fu_2783_p1;
        weights3_27_addr_2_reg_5194 <= zext_ln180_3_fu_2885_p1;
        weights3_28_addr_1_reg_4912 <= zext_ln180_fu_2732_p1;
        weights3_28_addr_2_reg_5104 <= zext_ln180_2_fu_2834_p1;
        weights3_29_addr_1_reg_5008 <= zext_ln180_1_fu_2783_p1;
        weights3_29_addr_2_reg_5200 <= zext_ln180_3_fu_2885_p1;
        weights3_2_addr_1_reg_4834 <= zext_ln180_fu_2732_p1;
        weights3_2_addr_2_reg_5026 <= zext_ln180_2_fu_2834_p1;
        weights3_30_addr_1_reg_4918 <= zext_ln180_fu_2732_p1;
        weights3_30_addr_2_reg_5110 <= zext_ln180_2_fu_2834_p1;
        weights3_31_addr_1_reg_5014 <= zext_ln180_1_fu_2783_p1;
        weights3_31_addr_2_reg_5206 <= zext_ln180_3_fu_2885_p1;
        weights3_3_addr_1_reg_4930 <= zext_ln180_1_fu_2783_p1;
        weights3_3_addr_2_reg_5122 <= zext_ln180_3_fu_2885_p1;
        weights3_4_addr_1_reg_4840 <= zext_ln180_fu_2732_p1;
        weights3_4_addr_2_reg_5032 <= zext_ln180_2_fu_2834_p1;
        weights3_5_addr_1_reg_4936 <= zext_ln180_1_fu_2783_p1;
        weights3_5_addr_2_reg_5128 <= zext_ln180_3_fu_2885_p1;
        weights3_6_addr_1_reg_4846 <= zext_ln180_fu_2732_p1;
        weights3_6_addr_2_reg_5038 <= zext_ln180_2_fu_2834_p1;
        weights3_7_addr_1_reg_4942 <= zext_ln180_1_fu_2783_p1;
        weights3_7_addr_2_reg_5134 <= zext_ln180_3_fu_2885_p1;
        weights3_8_addr_1_reg_4852 <= zext_ln180_fu_2732_p1;
        weights3_8_addr_2_reg_5044 <= zext_ln180_2_fu_2834_p1;
        weights3_9_addr_1_reg_4948 <= zext_ln180_1_fu_2783_p1;
        weights3_9_addr_2_reg_5140 <= zext_ln180_3_fu_2885_p1;
    end
end
always @ (*) begin
    if (((tmp_reg_4112 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_226;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_0_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_0_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_0_address0_local = 'bx;
        end
    end else begin
        d_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_0_ce1_local = 1'b1;
    end else begin
        d_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_10_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_10_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_10_address0_local = 'bx;
        end
    end else begin
        d_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_10_ce0_local = 1'b1;
    end else begin
        d_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_10_ce1_local = 1'b1;
    end else begin
        d_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_11_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_11_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_11_address0_local = 'bx;
        end
    end else begin
        d_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_11_ce0_local = 1'b1;
    end else begin
        d_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_11_ce1_local = 1'b1;
    end else begin
        d_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_12_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_12_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_12_address0_local = 'bx;
        end
    end else begin
        d_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_12_ce0_local = 1'b1;
    end else begin
        d_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_12_ce1_local = 1'b1;
    end else begin
        d_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_13_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_13_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_13_address0_local = 'bx;
        end
    end else begin
        d_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_13_ce0_local = 1'b1;
    end else begin
        d_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_13_ce1_local = 1'b1;
    end else begin
        d_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_14_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_14_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_14_address0_local = 'bx;
        end
    end else begin
        d_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_14_ce0_local = 1'b1;
    end else begin
        d_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_14_ce1_local = 1'b1;
    end else begin
        d_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_15_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_15_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_15_address0_local = 'bx;
        end
    end else begin
        d_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_15_ce0_local = 1'b1;
    end else begin
        d_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_15_ce1_local = 1'b1;
    end else begin
        d_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_16_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_16_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_16_address0_local = 'bx;
        end
    end else begin
        d_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_16_ce0_local = 1'b1;
    end else begin
        d_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_16_ce1_local = 1'b1;
    end else begin
        d_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_17_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_17_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_17_address0_local = 'bx;
        end
    end else begin
        d_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_17_ce0_local = 1'b1;
    end else begin
        d_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_17_ce1_local = 1'b1;
    end else begin
        d_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_18_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_18_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_18_address0_local = 'bx;
        end
    end else begin
        d_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_18_ce0_local = 1'b1;
    end else begin
        d_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_18_ce1_local = 1'b1;
    end else begin
        d_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_19_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_19_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_19_address0_local = 'bx;
        end
    end else begin
        d_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_19_ce0_local = 1'b1;
    end else begin
        d_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_19_ce1_local = 1'b1;
    end else begin
        d_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_1_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_1_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_1_address0_local = 'bx;
        end
    end else begin
        d_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_1_ce1_local = 1'b1;
    end else begin
        d_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_20_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_20_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_20_address0_local = 'bx;
        end
    end else begin
        d_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_20_ce0_local = 1'b1;
    end else begin
        d_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_20_ce1_local = 1'b1;
    end else begin
        d_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_21_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_21_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_21_address0_local = 'bx;
        end
    end else begin
        d_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_21_ce0_local = 1'b1;
    end else begin
        d_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_21_ce1_local = 1'b1;
    end else begin
        d_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_22_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_22_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_22_address0_local = 'bx;
        end
    end else begin
        d_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_22_ce0_local = 1'b1;
    end else begin
        d_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_22_ce1_local = 1'b1;
    end else begin
        d_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_23_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_23_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_23_address0_local = 'bx;
        end
    end else begin
        d_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_23_ce0_local = 1'b1;
    end else begin
        d_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_23_ce1_local = 1'b1;
    end else begin
        d_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_24_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_24_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_24_address0_local = 'bx;
        end
    end else begin
        d_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_24_ce0_local = 1'b1;
    end else begin
        d_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_24_ce1_local = 1'b1;
    end else begin
        d_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_25_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_25_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_25_address0_local = 'bx;
        end
    end else begin
        d_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_25_ce0_local = 1'b1;
    end else begin
        d_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_25_ce1_local = 1'b1;
    end else begin
        d_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_26_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_26_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_26_address0_local = 'bx;
        end
    end else begin
        d_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_26_ce0_local = 1'b1;
    end else begin
        d_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_26_ce1_local = 1'b1;
    end else begin
        d_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_27_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_27_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_27_address0_local = 'bx;
        end
    end else begin
        d_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_27_ce0_local = 1'b1;
    end else begin
        d_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_27_ce1_local = 1'b1;
    end else begin
        d_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_28_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_28_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_28_address0_local = 'bx;
        end
    end else begin
        d_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_28_ce0_local = 1'b1;
    end else begin
        d_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_28_ce1_local = 1'b1;
    end else begin
        d_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_29_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_29_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_29_address0_local = 'bx;
        end
    end else begin
        d_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_29_ce0_local = 1'b1;
    end else begin
        d_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_29_ce1_local = 1'b1;
    end else begin
        d_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_2_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_2_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_2_address0_local = 'bx;
        end
    end else begin
        d_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_2_ce1_local = 1'b1;
    end else begin
        d_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_30_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_30_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_30_address0_local = 'bx;
        end
    end else begin
        d_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_30_ce0_local = 1'b1;
    end else begin
        d_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_30_ce1_local = 1'b1;
    end else begin
        d_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_31_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_31_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_31_address0_local = 'bx;
        end
    end else begin
        d_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_31_ce0_local = 1'b1;
    end else begin
        d_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_31_ce1_local = 1'b1;
    end else begin
        d_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_3_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_3_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_3_address0_local = 'bx;
        end
    end else begin
        d_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_3_ce1_local = 1'b1;
    end else begin
        d_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_4_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_4_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_4_address0_local = 'bx;
        end
    end else begin
        d_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_4_ce1_local = 1'b1;
    end else begin
        d_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_5_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_5_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_5_address0_local = 'bx;
        end
    end else begin
        d_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_5_ce1_local = 1'b1;
    end else begin
        d_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_6_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_6_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_6_address0_local = 'bx;
        end
    end else begin
        d_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_6_ce1_local = 1'b1;
    end else begin
        d_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_7_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_7_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_7_address0_local = 'bx;
        end
    end else begin
        d_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_7_ce1_local = 1'b1;
    end else begin
        d_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_8_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_8_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_8_address0_local = 'bx;
        end
    end else begin
        d_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_8_ce0_local = 1'b1;
    end else begin
        d_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_8_ce1_local = 1'b1;
    end else begin
        d_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_9_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_9_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            d_weights3_9_address0_local = 'bx;
        end
    end else begin
        d_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights3_9_ce0_local = 1'b1;
    end else begin
        d_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_9_ce1_local = 1'b1;
    end else begin
        d_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_2349_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage40_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage32_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((tmp_reg_4112 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2349_opcode = 2'd0;
    end else begin
        grp_fu_2349_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_2349_p0 = norm_5_reg_5312;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2349_p0 = reg_2378;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_2349_p0 = norm_fu_222;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_2349_p0 = tmp_11_reg_5247;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_2349_p0 = tmp_10_reg_5242;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_2349_p0 = tmp_9_reg_5237;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_2349_p0 = tmp_8_reg_5232;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_2349_p0 = tmp_7_reg_4823;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_2349_p0 = tmp_1_reg_4493;
    end else begin
        grp_fu_2349_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_2349_p1 = mul177_1_2_reg_5307;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_2349_p1 = mul177_1_1_reg_5302;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_2349_p1 = mul163_1_2_reg_5257;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_2349_p1 = mul163_1_1_reg_5252;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_2349_p1 = reg_2373;
    end else if ((((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_2349_p1 = reg_2368;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_2349_p1 = reg_2363;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_2349_p1 = reg_2358;
    end else begin
        grp_fu_2349_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_2353_p0 = sub168_1_2_reg_5290;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_2353_p0 = sub168_1_1_reg_5283;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_2353_p0 = sub168_1_reg_5276;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_2353_p0 = sub168_2_reg_5269;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_2353_p0 = sub168_s_reg_5262;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_2353_p0 = reg_2378;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_2353_p0 = tmp_6_reg_5227;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_2353_p0 = tmp_5_reg_5222;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_2353_p0 = tmp_4_reg_5217;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2353_p0 = tmp_3_reg_5212;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2353_p0 = tmp_2_reg_4818;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2353_p0 = tmp_s_reg_4488;
        end else begin
            grp_fu_2353_p0 = 'bx;
        end
    end else begin
        grp_fu_2353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_2353_p1 = sub168_1_2_reg_5290;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_2353_p1 = sub168_1_1_reg_5283;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_2353_p1 = sub168_1_reg_5276;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_2353_p1 = sub168_2_reg_5269;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_2353_p1 = sub168_s_reg_5262;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_2353_p1 = reg_2378;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_2353_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2353_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4112 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_8_out_ap_vld = 1'b1;
    end else begin
        norm_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_0_address0_local = weights3_0_addr_1_reg_4828;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_0_address1_local = weights3_0_addr_2_reg_5020;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_0_address1_local = weights3_0_addr_reg_4204;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_0_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_0_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1686_state20 == 1'b1))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1700_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1671_state18 == 1'b1)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_10_address0_local = weights3_10_addr_1_reg_4858;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_10_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_10_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_10_address0_local = 'bx;
        end
    end else begin
        weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_10_address1_local = weights3_10_addr_2_reg_5050;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_10_address1_local = weights3_10_addr_reg_4234;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_10_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_10_address1_local = 'bx;
        end
    end else begin
        weights3_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_10_ce1_local = 1'b1;
    end else begin
        weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_10_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_10_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_10_d1_local = 'bx;
        end
    end else begin
        weights3_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1790_state20 == 1'b1))) begin
        weights3_10_we0_local = 1'b1;
    end else begin
        weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1767_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1813_state18 == 1'b1)))) begin
        weights3_10_we1_local = 1'b1;
    end else begin
        weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_11_address0_local = weights3_11_addr_1_reg_4954;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_11_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_11_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_11_address0_local = 'bx;
        end
    end else begin
        weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_11_address1_local = weights3_11_addr_2_reg_5146;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_11_address1_local = weights3_11_addr_reg_4410;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_11_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_11_address1_local = 'bx;
        end
    end else begin
        weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_11_ce1_local = 1'b1;
    end else begin
        weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_11_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_11_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_11_d1_local = 'bx;
        end
    end else begin
        weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1790_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_11_we0_local = 1'b1;
    end else begin
        weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1767_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1813_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_11_we1_local = 1'b1;
    end else begin
        weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_12_address0_local = weights3_12_addr_1_reg_4864;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_12_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_12_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_12_address0_local = 'bx;
        end
    end else begin
        weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_12_address1_local = weights3_12_addr_2_reg_5056;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_12_address1_local = weights3_12_addr_reg_4240;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_12_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_12_address1_local = 'bx;
        end
    end else begin
        weights3_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_12_ce1_local = 1'b1;
    end else begin
        weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_12_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_12_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_12_d1_local = 'bx;
        end
    end else begin
        weights3_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1813_state20 == 1'b1))) begin
        weights3_12_we0_local = 1'b1;
    end else begin
        weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1790_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1836_state18 == 1'b1)))) begin
        weights3_12_we1_local = 1'b1;
    end else begin
        weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_13_address0_local = weights3_13_addr_1_reg_4960;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_13_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_13_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_13_address0_local = 'bx;
        end
    end else begin
        weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_13_address1_local = weights3_13_addr_2_reg_5152;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_13_address1_local = weights3_13_addr_reg_4416;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_13_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_13_address1_local = 'bx;
        end
    end else begin
        weights3_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_13_ce1_local = 1'b1;
    end else begin
        weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_13_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_13_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_13_d1_local = 'bx;
        end
    end else begin
        weights3_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1813_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_13_we0_local = 1'b1;
    end else begin
        weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1790_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_13_we1_local = 1'b1;
    end else begin
        weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_14_address0_local = weights3_14_addr_1_reg_4870;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_14_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_14_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_14_address0_local = 'bx;
        end
    end else begin
        weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_14_address1_local = weights3_14_addr_2_reg_5062;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_14_address1_local = weights3_14_addr_reg_4246;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_14_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_14_address1_local = 'bx;
        end
    end else begin
        weights3_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_14_ce1_local = 1'b1;
    end else begin
        weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_14_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_14_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_14_d1_local = 'bx;
        end
    end else begin
        weights3_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1836_state20 == 1'b1))) begin
        weights3_14_we0_local = 1'b1;
    end else begin
        weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1813_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1859_state18 == 1'b1)))) begin
        weights3_14_we1_local = 1'b1;
    end else begin
        weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_15_address0_local = weights3_15_addr_1_reg_4966;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_15_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_15_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_15_address0_local = 'bx;
        end
    end else begin
        weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_15_address1_local = weights3_15_addr_2_reg_5158;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_15_address1_local = weights3_15_addr_reg_4422;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_15_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_15_address1_local = 'bx;
        end
    end else begin
        weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_15_ce1_local = 1'b1;
    end else begin
        weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_15_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_15_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_15_d1_local = 'bx;
        end
    end else begin
        weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_15_we0_local = 1'b1;
    end else begin
        weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1813_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1859_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_15_we1_local = 1'b1;
    end else begin
        weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_16_address0_local = weights3_16_addr_1_reg_4876;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_16_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_16_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_16_address0_local = 'bx;
        end
    end else begin
        weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_16_address1_local = weights3_16_addr_2_reg_5068;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_16_address1_local = weights3_16_addr_reg_4252;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_16_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_16_address1_local = 'bx;
        end
    end else begin
        weights3_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_16_ce0_local = 1'b1;
    end else begin
        weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_16_ce1_local = 1'b1;
    end else begin
        weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_16_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_16_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_16_d1_local = 'bx;
        end
    end else begin
        weights3_16_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1859_state20 == 1'b1))) begin
        weights3_16_we0_local = 1'b1;
    end else begin
        weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1836_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1882_state18 == 1'b1)))) begin
        weights3_16_we1_local = 1'b1;
    end else begin
        weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_17_address0_local = weights3_17_addr_1_reg_4972;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_17_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_17_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_17_address0_local = 'bx;
        end
    end else begin
        weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_17_address1_local = weights3_17_addr_2_reg_5164;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_17_address1_local = weights3_17_addr_reg_4428;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_17_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_17_address1_local = 'bx;
        end
    end else begin
        weights3_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_17_ce0_local = 1'b1;
    end else begin
        weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_17_ce1_local = 1'b1;
    end else begin
        weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_17_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_17_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_17_d1_local = 'bx;
        end
    end else begin
        weights3_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1859_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_17_we0_local = 1'b1;
    end else begin
        weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1836_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1882_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_17_we1_local = 1'b1;
    end else begin
        weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_18_address0_local = weights3_18_addr_1_reg_4882;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_18_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_18_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_18_address0_local = 'bx;
        end
    end else begin
        weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_18_address1_local = weights3_18_addr_2_reg_5074;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_18_address1_local = weights3_18_addr_reg_4258;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_18_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_18_address1_local = 'bx;
        end
    end else begin
        weights3_18_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_18_ce0_local = 1'b1;
    end else begin
        weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_18_ce1_local = 1'b1;
    end else begin
        weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_18_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_18_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_18_d1_local = 'bx;
        end
    end else begin
        weights3_18_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1882_state20 == 1'b1))) begin
        weights3_18_we0_local = 1'b1;
    end else begin
        weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1859_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1905_state18 == 1'b1)))) begin
        weights3_18_we1_local = 1'b1;
    end else begin
        weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_19_address0_local = weights3_19_addr_1_reg_4978;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_19_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_19_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_19_address0_local = 'bx;
        end
    end else begin
        weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_19_address1_local = weights3_19_addr_2_reg_5170;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_19_address1_local = weights3_19_addr_reg_4434;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_19_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_19_address1_local = 'bx;
        end
    end else begin
        weights3_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_19_ce0_local = 1'b1;
    end else begin
        weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_19_ce1_local = 1'b1;
    end else begin
        weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_19_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_19_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_19_d1_local = 'bx;
        end
    end else begin
        weights3_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1882_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_19_we0_local = 1'b1;
    end else begin
        weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1859_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1905_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_19_we1_local = 1'b1;
    end else begin
        weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_1_address0_local = weights3_1_addr_1_reg_4924;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_1_address1_local = weights3_1_addr_2_reg_5116;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_1_address1_local = weights3_1_addr_reg_4380;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_1_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_1_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1686_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1700_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1671_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_20_address0_local = weights3_20_addr_1_reg_4888;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_20_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_20_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_20_address0_local = 'bx;
        end
    end else begin
        weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_20_address1_local = weights3_20_addr_2_reg_5080;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_20_address1_local = weights3_20_addr_reg_4264;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_20_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_20_address1_local = 'bx;
        end
    end else begin
        weights3_20_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_20_ce0_local = 1'b1;
    end else begin
        weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_20_ce1_local = 1'b1;
    end else begin
        weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_20_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_20_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_20_d1_local = 'bx;
        end
    end else begin
        weights3_20_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1905_state20 == 1'b1))) begin
        weights3_20_we0_local = 1'b1;
    end else begin
        weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1882_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1928_state18 == 1'b1)))) begin
        weights3_20_we1_local = 1'b1;
    end else begin
        weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_21_address0_local = weights3_21_addr_1_reg_4984;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_21_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_21_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_21_address0_local = 'bx;
        end
    end else begin
        weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_21_address1_local = weights3_21_addr_2_reg_5176;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_21_address1_local = weights3_21_addr_reg_4440;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_21_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_21_address1_local = 'bx;
        end
    end else begin
        weights3_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_21_ce0_local = 1'b1;
    end else begin
        weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_21_ce1_local = 1'b1;
    end else begin
        weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_21_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_21_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_21_d1_local = 'bx;
        end
    end else begin
        weights3_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1905_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_21_we0_local = 1'b1;
    end else begin
        weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1882_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1928_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_21_we1_local = 1'b1;
    end else begin
        weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_22_address0_local = weights3_22_addr_1_reg_4894;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_22_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_22_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_22_address0_local = 'bx;
        end
    end else begin
        weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_22_address1_local = weights3_22_addr_2_reg_5086;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_22_address1_local = weights3_22_addr_reg_4270;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_22_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_22_address1_local = 'bx;
        end
    end else begin
        weights3_22_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_22_ce0_local = 1'b1;
    end else begin
        weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_22_ce1_local = 1'b1;
    end else begin
        weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_22_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_22_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_22_d1_local = 'bx;
        end
    end else begin
        weights3_22_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1928_state20 == 1'b1))) begin
        weights3_22_we0_local = 1'b1;
    end else begin
        weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1905_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1951_state18 == 1'b1)))) begin
        weights3_22_we1_local = 1'b1;
    end else begin
        weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_23_address0_local = weights3_23_addr_1_reg_4990;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_23_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_23_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_23_address0_local = 'bx;
        end
    end else begin
        weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_23_address1_local = weights3_23_addr_2_reg_5182;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_23_address1_local = weights3_23_addr_reg_4446;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_23_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_23_address1_local = 'bx;
        end
    end else begin
        weights3_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_23_ce0_local = 1'b1;
    end else begin
        weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_23_ce1_local = 1'b1;
    end else begin
        weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_23_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_23_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_23_d1_local = 'bx;
        end
    end else begin
        weights3_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1928_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_23_we0_local = 1'b1;
    end else begin
        weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1905_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1951_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_23_we1_local = 1'b1;
    end else begin
        weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_24_address0_local = weights3_24_addr_1_reg_4900;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_24_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_24_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_24_address0_local = 'bx;
        end
    end else begin
        weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_24_address1_local = weights3_24_addr_2_reg_5092;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_24_address1_local = weights3_24_addr_reg_4276;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_24_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_24_address1_local = 'bx;
        end
    end else begin
        weights3_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_24_ce0_local = 1'b1;
    end else begin
        weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_24_ce1_local = 1'b1;
    end else begin
        weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_24_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_24_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_24_d1_local = 'bx;
        end
    end else begin
        weights3_24_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1951_state20 == 1'b1))) begin
        weights3_24_we0_local = 1'b1;
    end else begin
        weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1928_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1974_state18 == 1'b1)))) begin
        weights3_24_we1_local = 1'b1;
    end else begin
        weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_25_address0_local = weights3_25_addr_1_reg_4996;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_25_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_25_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_25_address0_local = 'bx;
        end
    end else begin
        weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_25_address1_local = weights3_25_addr_2_reg_5188;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_25_address1_local = weights3_25_addr_reg_4452;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_25_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_25_address1_local = 'bx;
        end
    end else begin
        weights3_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_25_ce0_local = 1'b1;
    end else begin
        weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_25_ce1_local = 1'b1;
    end else begin
        weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_25_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_25_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_25_d1_local = 'bx;
        end
    end else begin
        weights3_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1951_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_25_we0_local = 1'b1;
    end else begin
        weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1928_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1974_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_25_we1_local = 1'b1;
    end else begin
        weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_26_address0_local = weights3_26_addr_1_reg_4906;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_26_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_26_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_26_address0_local = 'bx;
        end
    end else begin
        weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_26_address1_local = weights3_26_addr_2_reg_5098;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_26_address1_local = weights3_26_addr_reg_4282;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_26_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_26_address1_local = 'bx;
        end
    end else begin
        weights3_26_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_26_ce0_local = 1'b1;
    end else begin
        weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_26_ce1_local = 1'b1;
    end else begin
        weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_26_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_26_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_26_d1_local = 'bx;
        end
    end else begin
        weights3_26_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1974_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_26_we0_local = 1'b1;
    end else begin
        weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1951_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_26_we1_local = 1'b1;
    end else begin
        weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_27_address0_local = weights3_27_addr_1_reg_5002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_27_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_27_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_27_address0_local = 'bx;
        end
    end else begin
        weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_27_address1_local = weights3_27_addr_2_reg_5194;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_27_address1_local = weights3_27_addr_reg_4458;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_27_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_27_address1_local = 'bx;
        end
    end else begin
        weights3_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_27_ce0_local = 1'b1;
    end else begin
        weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_27_ce1_local = 1'b1;
    end else begin
        weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_27_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_27_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_27_d1_local = 'bx;
        end
    end else begin
        weights3_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1974_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_27_we0_local = 1'b1;
    end else begin
        weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1951_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_27_we1_local = 1'b1;
    end else begin
        weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_28_address0_local = weights3_28_addr_1_reg_4912;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_28_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_28_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_28_address0_local = 'bx;
        end
    end else begin
        weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_28_address1_local = weights3_28_addr_2_reg_5104;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_28_address1_local = weights3_28_addr_reg_4288;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_28_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_28_address1_local = 'bx;
        end
    end else begin
        weights3_28_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_28_ce0_local = 1'b1;
    end else begin
        weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_28_ce1_local = 1'b1;
    end else begin
        weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_28_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_28_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_28_d1_local = 'bx;
        end
    end else begin
        weights3_28_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_28_we0_local = 1'b1;
    end else begin
        weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1974_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1700_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_28_we1_local = 1'b1;
    end else begin
        weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_29_address0_local = weights3_29_addr_1_reg_5008;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_29_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_29_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_29_address0_local = 'bx;
        end
    end else begin
        weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_29_address1_local = weights3_29_addr_2_reg_5200;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_29_address1_local = weights3_29_addr_reg_4464;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_29_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_29_address1_local = 'bx;
        end
    end else begin
        weights3_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_29_ce0_local = 1'b1;
    end else begin
        weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_29_ce1_local = 1'b1;
    end else begin
        weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_29_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_29_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_29_d1_local = 'bx;
        end
    end else begin
        weights3_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_29_we0_local = 1'b1;
    end else begin
        weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1974_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1700_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_29_we1_local = 1'b1;
    end else begin
        weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_2_address0_local = weights3_2_addr_1_reg_4834;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_2_address1_local = weights3_2_addr_2_reg_5026;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_2_address1_local = weights3_2_addr_reg_4210;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_2_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_2_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1671_state20 == 1'b1))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1686_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1721_state18 == 1'b1)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_30_address0_local = weights3_30_addr_1_reg_4918;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_30_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_30_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_30_address0_local = 'bx;
        end
    end else begin
        weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_30_address1_local = weights3_30_addr_2_reg_5110;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_30_address1_local = weights3_30_addr_reg_4294;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_30_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_30_address1_local = 'bx;
        end
    end else begin
        weights3_30_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_30_ce0_local = 1'b1;
    end else begin
        weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_30_ce1_local = 1'b1;
    end else begin
        weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_30_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_30_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_30_d1_local = 'bx;
        end
    end else begin
        weights3_30_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1700_state20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_30_we0_local = 1'b1;
    end else begin
        weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1686_state18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_30_we1_local = 1'b1;
    end else begin
        weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_31_address0_local = weights3_31_addr_1_reg_5014;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_31_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_31_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_31_address0_local = 'bx;
        end
    end else begin
        weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_31_address1_local = weights3_31_addr_2_reg_5206;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_31_address1_local = weights3_31_addr_reg_4470;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_31_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_31_address1_local = 'bx;
        end
    end else begin
        weights3_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_31_ce0_local = 1'b1;
    end else begin
        weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_31_ce1_local = 1'b1;
    end else begin
        weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_31_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_31_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_31_d1_local = 'bx;
        end
    end else begin
        weights3_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1700_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_31_we0_local = 1'b1;
    end else begin
        weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2024_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1686_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_31_we1_local = 1'b1;
    end else begin
        weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_3_address0_local = weights3_3_addr_1_reg_4930;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_3_address1_local = weights3_3_addr_2_reg_5122;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_3_address1_local = weights3_3_addr_reg_4386;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_3_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_3_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1671_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1686_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1721_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_4_address0_local = weights3_4_addr_1_reg_4840;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_4_address0_local = 'bx;
        end
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_4_address1_local = weights3_4_addr_2_reg_5032;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_4_address1_local = weights3_4_addr_reg_4216;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_4_address1_local = 'bx;
        end
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_4_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_4_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_4_d1_local = 'bx;
        end
    end else begin
        weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1721_state20 == 1'b1))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1671_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1744_state18 == 1'b1)))) begin
        weights3_4_we1_local = 1'b1;
    end else begin
        weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_5_address0_local = weights3_5_addr_1_reg_4936;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_5_address0_local = 'bx;
        end
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_5_address1_local = weights3_5_addr_2_reg_5128;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_5_address1_local = weights3_5_addr_reg_4392;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_5_address1_local = 'bx;
        end
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_5_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_5_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_5_d1_local = 'bx;
        end
    end else begin
        weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1721_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1671_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1744_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_5_we1_local = 1'b1;
    end else begin
        weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_6_address0_local = weights3_6_addr_1_reg_4846;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_6_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_6_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_6_address0_local = 'bx;
        end
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_6_address1_local = weights3_6_addr_2_reg_5038;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_6_address1_local = weights3_6_addr_reg_4222;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_6_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_6_address1_local = 'bx;
        end
    end else begin
        weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_6_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_6_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_6_d1_local = 'bx;
        end
    end else begin
        weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1744_state20 == 1'b1))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1721_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1767_state18 == 1'b1)))) begin
        weights3_6_we1_local = 1'b1;
    end else begin
        weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_7_address0_local = weights3_7_addr_1_reg_4942;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_7_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_7_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_7_address0_local = 'bx;
        end
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_7_address1_local = weights3_7_addr_2_reg_5134;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_7_address1_local = weights3_7_addr_reg_4398;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_7_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_7_address1_local = 'bx;
        end
    end else begin
        weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_7_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_7_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_7_d1_local = 'bx;
        end
    end else begin
        weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1744_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1721_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1767_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_7_we1_local = 1'b1;
    end else begin
        weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_8_address0_local = weights3_8_addr_1_reg_4852;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_8_address0_local = zext_ln180_2_fu_2834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_8_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_8_address0_local = 'bx;
        end
    end else begin
        weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_8_address1_local = weights3_8_addr_2_reg_5044;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_8_address1_local = weights3_8_addr_reg_4228;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_8_address1_local = zext_ln180_fu_2732_p1;
        end else begin
            weights3_8_address1_local = 'bx;
        end
    end else begin
        weights3_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_8_ce1_local = 1'b1;
    end else begin
        weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_8_d1_local = bitcast_ln180_100_fu_4030_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_8_d1_local = bitcast_ln180_96_fu_3953_p1;
        end else begin
            weights3_8_d1_local = 'bx;
        end
    end else begin
        weights3_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1767_state20 == 1'b1))) begin
        weights3_8_we0_local = 1'b1;
    end else begin
        weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1744_state22 == 1'b1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1790_state18 == 1'b1)))) begin
        weights3_8_we1_local = 1'b1;
    end else begin
        weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_9_address0_local = weights3_9_addr_1_reg_4948;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_9_address0_local = zext_ln180_3_fu_2885_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_9_address0_local = zext_ln122_1_fu_2438_p1;
        end else begin
            weights3_9_address0_local = 'bx;
        end
    end else begin
        weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_9_address1_local = weights3_9_addr_2_reg_5140;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_9_address1_local = weights3_9_addr_reg_4404;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_9_address1_local = zext_ln180_1_fu_2783_p1;
        end else begin
            weights3_9_address1_local = 'bx;
        end
    end else begin
        weights3_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_9_ce1_local = 1'b1;
    end else begin
        weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_9_d1_local = bitcast_ln180_101_fu_4049_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_9_d1_local = bitcast_ln180_97_fu_3973_p1;
        end else begin
            weights3_9_d1_local = 'bx;
        end
    end else begin
        weights3_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1767_state21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_9_we0_local = 1'b1;
    end else begin
        weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1744_state23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred1790_state19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_9_we1_local = 1'b1;
    end else begin
        weights3_9_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_fu_4072_p2 = (i_1_reg_4106 + 7'd2);
assign add_ln180_1_fu_2819_p2 = (sub_ln122_reg_4116 + 8'd4);
assign add_ln180_2_fu_2870_p2 = (sub_ln122_reg_4116 + 8'd5);
assign add_ln180_fu_2717_p2 = (sub_ln122_reg_4116 + 8'd2);
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
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
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
assign bitcast_ln180_100_fu_4030_p1 = sub168_1_1_reg_5283;
assign bitcast_ln180_101_fu_4049_p1 = sub168_1_2_reg_5290;
assign bitcast_ln180_96_fu_3953_p1 = reg_2378;
assign bitcast_ln180_97_fu_3973_p1 = sub168_s_reg_5262;
assign bitcast_ln180_98_fu_3992_p1 = sub168_2_reg_5269;
assign bitcast_ln180_99_fu_4011_p1 = sub168_1_reg_5276;
assign d_weights3_0_address0 = d_weights3_0_address0_local;
assign d_weights3_0_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_0_ce1 = d_weights3_0_ce1_local;
assign d_weights3_10_address0 = d_weights3_10_address0_local;
assign d_weights3_10_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_10_ce0 = d_weights3_10_ce0_local;
assign d_weights3_10_ce1 = d_weights3_10_ce1_local;
assign d_weights3_11_address0 = d_weights3_11_address0_local;
assign d_weights3_11_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_11_ce0 = d_weights3_11_ce0_local;
assign d_weights3_11_ce1 = d_weights3_11_ce1_local;
assign d_weights3_12_address0 = d_weights3_12_address0_local;
assign d_weights3_12_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_12_ce0 = d_weights3_12_ce0_local;
assign d_weights3_12_ce1 = d_weights3_12_ce1_local;
assign d_weights3_13_address0 = d_weights3_13_address0_local;
assign d_weights3_13_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_13_ce0 = d_weights3_13_ce0_local;
assign d_weights3_13_ce1 = d_weights3_13_ce1_local;
assign d_weights3_14_address0 = d_weights3_14_address0_local;
assign d_weights3_14_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_14_ce0 = d_weights3_14_ce0_local;
assign d_weights3_14_ce1 = d_weights3_14_ce1_local;
assign d_weights3_15_address0 = d_weights3_15_address0_local;
assign d_weights3_15_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_15_ce0 = d_weights3_15_ce0_local;
assign d_weights3_15_ce1 = d_weights3_15_ce1_local;
assign d_weights3_16_address0 = d_weights3_16_address0_local;
assign d_weights3_16_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_16_ce0 = d_weights3_16_ce0_local;
assign d_weights3_16_ce1 = d_weights3_16_ce1_local;
assign d_weights3_17_address0 = d_weights3_17_address0_local;
assign d_weights3_17_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_17_ce0 = d_weights3_17_ce0_local;
assign d_weights3_17_ce1 = d_weights3_17_ce1_local;
assign d_weights3_18_address0 = d_weights3_18_address0_local;
assign d_weights3_18_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_18_ce0 = d_weights3_18_ce0_local;
assign d_weights3_18_ce1 = d_weights3_18_ce1_local;
assign d_weights3_19_address0 = d_weights3_19_address0_local;
assign d_weights3_19_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_19_ce0 = d_weights3_19_ce0_local;
assign d_weights3_19_ce1 = d_weights3_19_ce1_local;
assign d_weights3_1_address0 = d_weights3_1_address0_local;
assign d_weights3_1_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_1_ce1 = d_weights3_1_ce1_local;
assign d_weights3_20_address0 = d_weights3_20_address0_local;
assign d_weights3_20_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_20_ce0 = d_weights3_20_ce0_local;
assign d_weights3_20_ce1 = d_weights3_20_ce1_local;
assign d_weights3_21_address0 = d_weights3_21_address0_local;
assign d_weights3_21_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_21_ce0 = d_weights3_21_ce0_local;
assign d_weights3_21_ce1 = d_weights3_21_ce1_local;
assign d_weights3_22_address0 = d_weights3_22_address0_local;
assign d_weights3_22_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_22_ce0 = d_weights3_22_ce0_local;
assign d_weights3_22_ce1 = d_weights3_22_ce1_local;
assign d_weights3_23_address0 = d_weights3_23_address0_local;
assign d_weights3_23_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_23_ce0 = d_weights3_23_ce0_local;
assign d_weights3_23_ce1 = d_weights3_23_ce1_local;
assign d_weights3_24_address0 = d_weights3_24_address0_local;
assign d_weights3_24_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_24_ce0 = d_weights3_24_ce0_local;
assign d_weights3_24_ce1 = d_weights3_24_ce1_local;
assign d_weights3_25_address0 = d_weights3_25_address0_local;
assign d_weights3_25_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_25_ce0 = d_weights3_25_ce0_local;
assign d_weights3_25_ce1 = d_weights3_25_ce1_local;
assign d_weights3_26_address0 = d_weights3_26_address0_local;
assign d_weights3_26_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_26_ce0 = d_weights3_26_ce0_local;
assign d_weights3_26_ce1 = d_weights3_26_ce1_local;
assign d_weights3_27_address0 = d_weights3_27_address0_local;
assign d_weights3_27_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_27_ce0 = d_weights3_27_ce0_local;
assign d_weights3_27_ce1 = d_weights3_27_ce1_local;
assign d_weights3_28_address0 = d_weights3_28_address0_local;
assign d_weights3_28_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_28_ce0 = d_weights3_28_ce0_local;
assign d_weights3_28_ce1 = d_weights3_28_ce1_local;
assign d_weights3_29_address0 = d_weights3_29_address0_local;
assign d_weights3_29_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_29_ce0 = d_weights3_29_ce0_local;
assign d_weights3_29_ce1 = d_weights3_29_ce1_local;
assign d_weights3_2_address0 = d_weights3_2_address0_local;
assign d_weights3_2_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_2_ce1 = d_weights3_2_ce1_local;
assign d_weights3_30_address0 = d_weights3_30_address0_local;
assign d_weights3_30_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_30_ce0 = d_weights3_30_ce0_local;
assign d_weights3_30_ce1 = d_weights3_30_ce1_local;
assign d_weights3_31_address0 = d_weights3_31_address0_local;
assign d_weights3_31_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_31_ce0 = d_weights3_31_ce0_local;
assign d_weights3_31_ce1 = d_weights3_31_ce1_local;
assign d_weights3_3_address0 = d_weights3_3_address0_local;
assign d_weights3_3_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_3_ce1 = d_weights3_3_ce1_local;
assign d_weights3_4_address0 = d_weights3_4_address0_local;
assign d_weights3_4_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_4_ce1 = d_weights3_4_ce1_local;
assign d_weights3_5_address0 = d_weights3_5_address0_local;
assign d_weights3_5_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_5_ce1 = d_weights3_5_ce1_local;
assign d_weights3_6_address0 = d_weights3_6_address0_local;
assign d_weights3_6_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_6_ce1 = d_weights3_6_ce1_local;
assign d_weights3_7_address0 = d_weights3_7_address0_local;
assign d_weights3_7_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_7_ce1 = d_weights3_7_ce1_local;
assign d_weights3_8_address0 = d_weights3_8_address0_local;
assign d_weights3_8_address1 = zext_ln180_fu_2732_p1;
assign d_weights3_8_ce0 = d_weights3_8_ce0_local;
assign d_weights3_8_ce1 = d_weights3_8_ce1_local;
assign d_weights3_9_address0 = d_weights3_9_address0_local;
assign d_weights3_9_address1 = zext_ln180_1_fu_2783_p1;
assign d_weights3_9_ce0 = d_weights3_9_ce0_local;
assign d_weights3_9_ce1 = d_weights3_9_ce1_local;
assign empty_fu_2768_p2 = (sub_ln122_reg_4116 + 8'd3);
assign grp_fu_1955_p_ce = 1'b1;
assign grp_fu_1955_p_din0 = grp_fu_2349_p0;
assign grp_fu_1955_p_din1 = grp_fu_2349_p1;
assign grp_fu_1955_p_opcode = grp_fu_2349_opcode;
assign grp_fu_1959_p_ce = 1'b1;
assign grp_fu_1959_p_din0 = grp_fu_2353_p0;
assign grp_fu_1959_p_din1 = grp_fu_2353_p1;
assign lshr_ln122_1_fu_2773_p4 = {{empty_fu_2768_p2[7:5]}};
assign lshr_ln180_1_fu_2824_p4 = {{add_ln180_1_fu_2819_p2[7:5]}};
assign lshr_ln180_2_fu_2875_p4 = {{add_ln180_2_fu_2870_p2[7:5]}};
assign lshr_ln3_fu_2428_p4 = {{sub_ln122_fu_2422_p2[7:5]}};
assign lshr_ln4_fu_2722_p4 = {{add_ln180_fu_2717_p2[7:5]}};
assign norm_8_out = norm_fu_222;
assign p_shl_fu_2414_p3 = {{trunc_ln122_fu_2410_p1}, {2'd0}};
assign sub_ln122_fu_2422_p2 = (p_shl_fu_2414_p3 - zext_ln122_fu_2406_p1);
assign tmp_10_fu_3747_p10 = weights3_8_q0;
assign tmp_10_fu_3747_p12 = weights3_10_q0;
assign tmp_10_fu_3747_p14 = weights3_12_q0;
assign tmp_10_fu_3747_p16 = weights3_14_q0;
assign tmp_10_fu_3747_p18 = weights3_16_q0;
assign tmp_10_fu_3747_p2 = weights3_0_q0;
assign tmp_10_fu_3747_p20 = weights3_18_q0;
assign tmp_10_fu_3747_p22 = weights3_20_q0;
assign tmp_10_fu_3747_p24 = weights3_22_q0;
assign tmp_10_fu_3747_p26 = weights3_24_q0;
assign tmp_10_fu_3747_p28 = weights3_26_q0;
assign tmp_10_fu_3747_p30 = weights3_28_q0;
assign tmp_10_fu_3747_p32 = weights3_30_q0;
assign tmp_10_fu_3747_p33 = 'bx;
assign tmp_10_fu_3747_p4 = weights3_2_q0;
assign tmp_10_fu_3747_p6 = weights3_4_q0;
assign tmp_10_fu_3747_p8 = weights3_6_q0;
assign tmp_11_fu_3882_p10 = weights3_9_q0;
assign tmp_11_fu_3882_p12 = weights3_11_q0;
assign tmp_11_fu_3882_p14 = weights3_13_q0;
assign tmp_11_fu_3882_p16 = weights3_15_q0;
assign tmp_11_fu_3882_p18 = weights3_17_q0;
assign tmp_11_fu_3882_p2 = weights3_1_q0;
assign tmp_11_fu_3882_p20 = weights3_19_q0;
assign tmp_11_fu_3882_p22 = weights3_21_q0;
assign tmp_11_fu_3882_p24 = weights3_23_q0;
assign tmp_11_fu_3882_p26 = weights3_25_q0;
assign tmp_11_fu_3882_p28 = weights3_27_q0;
assign tmp_11_fu_3882_p30 = weights3_29_q0;
assign tmp_11_fu_3882_p32 = weights3_31_q0;
assign tmp_11_fu_3882_p33 = 'bx;
assign tmp_11_fu_3882_p4 = weights3_3_q0;
assign tmp_11_fu_3882_p6 = weights3_5_q0;
assign tmp_11_fu_3882_p8 = weights3_7_q0;
assign tmp_1_fu_2645_p10 = weights3_8_q0;
assign tmp_1_fu_2645_p12 = weights3_10_q0;
assign tmp_1_fu_2645_p14 = weights3_12_q0;
assign tmp_1_fu_2645_p16 = weights3_14_q0;
assign tmp_1_fu_2645_p18 = weights3_16_q0;
assign tmp_1_fu_2645_p2 = weights3_0_q0;
assign tmp_1_fu_2645_p20 = weights3_18_q0;
assign tmp_1_fu_2645_p22 = weights3_20_q0;
assign tmp_1_fu_2645_p24 = weights3_22_q0;
assign tmp_1_fu_2645_p26 = weights3_24_q0;
assign tmp_1_fu_2645_p28 = weights3_26_q0;
assign tmp_1_fu_2645_p30 = weights3_28_q0;
assign tmp_1_fu_2645_p32 = weights3_30_q0;
assign tmp_1_fu_2645_p33 = 'bx;
assign tmp_1_fu_2645_p4 = weights3_2_q0;
assign tmp_1_fu_2645_p6 = weights3_4_q0;
assign tmp_1_fu_2645_p8 = weights3_6_q0;
assign tmp_2_fu_2921_p33 = 'bx;
assign tmp_3_fu_3129_p33 = 'bx;
assign tmp_4_fu_3200_p33 = 'bx;
assign tmp_5_fu_3271_p33 = 'bx;
assign tmp_6_fu_3342_p33 = 'bx;
assign tmp_7_fu_3057_p10 = weights3_9_q0;
assign tmp_7_fu_3057_p12 = weights3_11_q0;
assign tmp_7_fu_3057_p14 = weights3_13_q0;
assign tmp_7_fu_3057_p16 = weights3_15_q0;
assign tmp_7_fu_3057_p18 = weights3_17_q0;
assign tmp_7_fu_3057_p2 = weights3_1_q0;
assign tmp_7_fu_3057_p20 = weights3_19_q0;
assign tmp_7_fu_3057_p22 = weights3_21_q0;
assign tmp_7_fu_3057_p24 = weights3_23_q0;
assign tmp_7_fu_3057_p26 = weights3_25_q0;
assign tmp_7_fu_3057_p28 = weights3_27_q0;
assign tmp_7_fu_3057_p30 = weights3_29_q0;
assign tmp_7_fu_3057_p32 = weights3_31_q0;
assign tmp_7_fu_3057_p33 = 'bx;
assign tmp_7_fu_3057_p4 = weights3_3_q0;
assign tmp_7_fu_3057_p6 = weights3_5_q0;
assign tmp_7_fu_3057_p8 = weights3_7_q0;
assign tmp_8_fu_3477_p10 = weights3_8_q1;
assign tmp_8_fu_3477_p12 = weights3_10_q1;
assign tmp_8_fu_3477_p14 = weights3_12_q1;
assign tmp_8_fu_3477_p16 = weights3_14_q1;
assign tmp_8_fu_3477_p18 = weights3_16_q1;
assign tmp_8_fu_3477_p2 = weights3_0_q1;
assign tmp_8_fu_3477_p20 = weights3_18_q1;
assign tmp_8_fu_3477_p22 = weights3_20_q1;
assign tmp_8_fu_3477_p24 = weights3_22_q1;
assign tmp_8_fu_3477_p26 = weights3_24_q1;
assign tmp_8_fu_3477_p28 = weights3_26_q1;
assign tmp_8_fu_3477_p30 = weights3_28_q1;
assign tmp_8_fu_3477_p32 = weights3_30_q1;
assign tmp_8_fu_3477_p33 = 'bx;
assign tmp_8_fu_3477_p4 = weights3_2_q1;
assign tmp_8_fu_3477_p6 = weights3_4_q1;
assign tmp_8_fu_3477_p8 = weights3_6_q1;
assign tmp_9_fu_3612_p10 = weights3_9_q1;
assign tmp_9_fu_3612_p12 = weights3_11_q1;
assign tmp_9_fu_3612_p14 = weights3_13_q1;
assign tmp_9_fu_3612_p16 = weights3_15_q1;
assign tmp_9_fu_3612_p18 = weights3_17_q1;
assign tmp_9_fu_3612_p2 = weights3_1_q1;
assign tmp_9_fu_3612_p20 = weights3_19_q1;
assign tmp_9_fu_3612_p22 = weights3_21_q1;
assign tmp_9_fu_3612_p24 = weights3_23_q1;
assign tmp_9_fu_3612_p26 = weights3_25_q1;
assign tmp_9_fu_3612_p28 = weights3_27_q1;
assign tmp_9_fu_3612_p30 = weights3_29_q1;
assign tmp_9_fu_3612_p32 = weights3_31_q1;
assign tmp_9_fu_3612_p33 = 'bx;
assign tmp_9_fu_3612_p4 = weights3_3_q1;
assign tmp_9_fu_3612_p6 = weights3_5_q1;
assign tmp_9_fu_3612_p8 = weights3_7_q1;
assign tmp_s_fu_2509_p33 = 'bx;
assign trunc_ln122_fu_2410_p1 = ap_sig_allocacmp_i_1[5:0];
assign trunc_ln178_fu_2506_p1 = i_1_reg_4106[4:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_10_address0 = weights3_10_address0_local;
assign weights3_10_address1 = weights3_10_address1_local;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_10_ce1 = weights3_10_ce1_local;
assign weights3_10_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_10_d1 = weights3_10_d1_local;
assign weights3_10_we0 = weights3_10_we0_local;
assign weights3_10_we1 = weights3_10_we1_local;
assign weights3_11_address0 = weights3_11_address0_local;
assign weights3_11_address1 = weights3_11_address1_local;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_11_ce1 = weights3_11_ce1_local;
assign weights3_11_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_11_d1 = weights3_11_d1_local;
assign weights3_11_we0 = weights3_11_we0_local;
assign weights3_11_we1 = weights3_11_we1_local;
assign weights3_12_address0 = weights3_12_address0_local;
assign weights3_12_address1 = weights3_12_address1_local;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_12_ce1 = weights3_12_ce1_local;
assign weights3_12_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_12_d1 = weights3_12_d1_local;
assign weights3_12_we0 = weights3_12_we0_local;
assign weights3_12_we1 = weights3_12_we1_local;
assign weights3_13_address0 = weights3_13_address0_local;
assign weights3_13_address1 = weights3_13_address1_local;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_13_ce1 = weights3_13_ce1_local;
assign weights3_13_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_13_d1 = weights3_13_d1_local;
assign weights3_13_we0 = weights3_13_we0_local;
assign weights3_13_we1 = weights3_13_we1_local;
assign weights3_14_address0 = weights3_14_address0_local;
assign weights3_14_address1 = weights3_14_address1_local;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_14_ce1 = weights3_14_ce1_local;
assign weights3_14_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_14_d1 = weights3_14_d1_local;
assign weights3_14_we0 = weights3_14_we0_local;
assign weights3_14_we1 = weights3_14_we1_local;
assign weights3_15_address0 = weights3_15_address0_local;
assign weights3_15_address1 = weights3_15_address1_local;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_15_ce1 = weights3_15_ce1_local;
assign weights3_15_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_15_d1 = weights3_15_d1_local;
assign weights3_15_we0 = weights3_15_we0_local;
assign weights3_15_we1 = weights3_15_we1_local;
assign weights3_16_address0 = weights3_16_address0_local;
assign weights3_16_address1 = weights3_16_address1_local;
assign weights3_16_ce0 = weights3_16_ce0_local;
assign weights3_16_ce1 = weights3_16_ce1_local;
assign weights3_16_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_16_d1 = weights3_16_d1_local;
assign weights3_16_we0 = weights3_16_we0_local;
assign weights3_16_we1 = weights3_16_we1_local;
assign weights3_17_address0 = weights3_17_address0_local;
assign weights3_17_address1 = weights3_17_address1_local;
assign weights3_17_ce0 = weights3_17_ce0_local;
assign weights3_17_ce1 = weights3_17_ce1_local;
assign weights3_17_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_17_d1 = weights3_17_d1_local;
assign weights3_17_we0 = weights3_17_we0_local;
assign weights3_17_we1 = weights3_17_we1_local;
assign weights3_18_address0 = weights3_18_address0_local;
assign weights3_18_address1 = weights3_18_address1_local;
assign weights3_18_ce0 = weights3_18_ce0_local;
assign weights3_18_ce1 = weights3_18_ce1_local;
assign weights3_18_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_18_d1 = weights3_18_d1_local;
assign weights3_18_we0 = weights3_18_we0_local;
assign weights3_18_we1 = weights3_18_we1_local;
assign weights3_19_address0 = weights3_19_address0_local;
assign weights3_19_address1 = weights3_19_address1_local;
assign weights3_19_ce0 = weights3_19_ce0_local;
assign weights3_19_ce1 = weights3_19_ce1_local;
assign weights3_19_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_19_d1 = weights3_19_d1_local;
assign weights3_19_we0 = weights3_19_we0_local;
assign weights3_19_we1 = weights3_19_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_20_address0 = weights3_20_address0_local;
assign weights3_20_address1 = weights3_20_address1_local;
assign weights3_20_ce0 = weights3_20_ce0_local;
assign weights3_20_ce1 = weights3_20_ce1_local;
assign weights3_20_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_20_d1 = weights3_20_d1_local;
assign weights3_20_we0 = weights3_20_we0_local;
assign weights3_20_we1 = weights3_20_we1_local;
assign weights3_21_address0 = weights3_21_address0_local;
assign weights3_21_address1 = weights3_21_address1_local;
assign weights3_21_ce0 = weights3_21_ce0_local;
assign weights3_21_ce1 = weights3_21_ce1_local;
assign weights3_21_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_21_d1 = weights3_21_d1_local;
assign weights3_21_we0 = weights3_21_we0_local;
assign weights3_21_we1 = weights3_21_we1_local;
assign weights3_22_address0 = weights3_22_address0_local;
assign weights3_22_address1 = weights3_22_address1_local;
assign weights3_22_ce0 = weights3_22_ce0_local;
assign weights3_22_ce1 = weights3_22_ce1_local;
assign weights3_22_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_22_d1 = weights3_22_d1_local;
assign weights3_22_we0 = weights3_22_we0_local;
assign weights3_22_we1 = weights3_22_we1_local;
assign weights3_23_address0 = weights3_23_address0_local;
assign weights3_23_address1 = weights3_23_address1_local;
assign weights3_23_ce0 = weights3_23_ce0_local;
assign weights3_23_ce1 = weights3_23_ce1_local;
assign weights3_23_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_23_d1 = weights3_23_d1_local;
assign weights3_23_we0 = weights3_23_we0_local;
assign weights3_23_we1 = weights3_23_we1_local;
assign weights3_24_address0 = weights3_24_address0_local;
assign weights3_24_address1 = weights3_24_address1_local;
assign weights3_24_ce0 = weights3_24_ce0_local;
assign weights3_24_ce1 = weights3_24_ce1_local;
assign weights3_24_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_24_d1 = weights3_24_d1_local;
assign weights3_24_we0 = weights3_24_we0_local;
assign weights3_24_we1 = weights3_24_we1_local;
assign weights3_25_address0 = weights3_25_address0_local;
assign weights3_25_address1 = weights3_25_address1_local;
assign weights3_25_ce0 = weights3_25_ce0_local;
assign weights3_25_ce1 = weights3_25_ce1_local;
assign weights3_25_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_25_d1 = weights3_25_d1_local;
assign weights3_25_we0 = weights3_25_we0_local;
assign weights3_25_we1 = weights3_25_we1_local;
assign weights3_26_address0 = weights3_26_address0_local;
assign weights3_26_address1 = weights3_26_address1_local;
assign weights3_26_ce0 = weights3_26_ce0_local;
assign weights3_26_ce1 = weights3_26_ce1_local;
assign weights3_26_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_26_d1 = weights3_26_d1_local;
assign weights3_26_we0 = weights3_26_we0_local;
assign weights3_26_we1 = weights3_26_we1_local;
assign weights3_27_address0 = weights3_27_address0_local;
assign weights3_27_address1 = weights3_27_address1_local;
assign weights3_27_ce0 = weights3_27_ce0_local;
assign weights3_27_ce1 = weights3_27_ce1_local;
assign weights3_27_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_27_d1 = weights3_27_d1_local;
assign weights3_27_we0 = weights3_27_we0_local;
assign weights3_27_we1 = weights3_27_we1_local;
assign weights3_28_address0 = weights3_28_address0_local;
assign weights3_28_address1 = weights3_28_address1_local;
assign weights3_28_ce0 = weights3_28_ce0_local;
assign weights3_28_ce1 = weights3_28_ce1_local;
assign weights3_28_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_28_d1 = weights3_28_d1_local;
assign weights3_28_we0 = weights3_28_we0_local;
assign weights3_28_we1 = weights3_28_we1_local;
assign weights3_29_address0 = weights3_29_address0_local;
assign weights3_29_address1 = weights3_29_address1_local;
assign weights3_29_ce0 = weights3_29_ce0_local;
assign weights3_29_ce1 = weights3_29_ce1_local;
assign weights3_29_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_29_d1 = weights3_29_d1_local;
assign weights3_29_we0 = weights3_29_we0_local;
assign weights3_29_we1 = weights3_29_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_30_address0 = weights3_30_address0_local;
assign weights3_30_address1 = weights3_30_address1_local;
assign weights3_30_ce0 = weights3_30_ce0_local;
assign weights3_30_ce1 = weights3_30_ce1_local;
assign weights3_30_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_30_d1 = weights3_30_d1_local;
assign weights3_30_we0 = weights3_30_we0_local;
assign weights3_30_we1 = weights3_30_we1_local;
assign weights3_31_address0 = weights3_31_address0_local;
assign weights3_31_address1 = weights3_31_address1_local;
assign weights3_31_ce0 = weights3_31_ce0_local;
assign weights3_31_ce1 = weights3_31_ce1_local;
assign weights3_31_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_31_d1 = weights3_31_d1_local;
assign weights3_31_we0 = weights3_31_we0_local;
assign weights3_31_we1 = weights3_31_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_4_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_4_d1 = weights3_4_d1_local;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_4_we1 = weights3_4_we1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_5_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_5_d1 = weights3_5_d1_local;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_5_we1 = weights3_5_we1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_6_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_6_d1 = weights3_6_d1_local;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_6_we1 = weights3_6_we1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_7_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_7_d1 = weights3_7_d1_local;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_7_we1 = weights3_7_we1_local;
assign weights3_8_address0 = weights3_8_address0_local;
assign weights3_8_address1 = weights3_8_address1_local;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_8_ce1 = weights3_8_ce1_local;
assign weights3_8_d0 = bitcast_ln180_98_fu_3992_p1;
assign weights3_8_d1 = weights3_8_d1_local;
assign weights3_8_we0 = weights3_8_we0_local;
assign weights3_8_we1 = weights3_8_we1_local;
assign weights3_9_address0 = weights3_9_address0_local;
assign weights3_9_address1 = weights3_9_address1_local;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign weights3_9_ce1 = weights3_9_ce1_local;
assign weights3_9_d0 = bitcast_ln180_99_fu_4011_p1;
assign weights3_9_d1 = weights3_9_d1_local;
assign weights3_9_we0 = weights3_9_we0_local;
assign weights3_9_we1 = weights3_9_we1_local;
assign zext_ln122_1_fu_2438_p1 = lshr_ln3_fu_2428_p4;
assign zext_ln122_fu_2406_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_1_fu_2783_p1 = lshr_ln122_1_fu_2773_p4;
assign zext_ln180_2_fu_2834_p1 = lshr_ln180_1_fu_2824_p4;
assign zext_ln180_3_fu_2885_p1 = lshr_ln180_2_fu_2875_p4;
assign zext_ln180_fu_2732_p1 = lshr_ln4_fu_2722_p4;
endmodule 