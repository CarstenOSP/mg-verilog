
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_8_address0,output_differences_8_ce0,output_differences_8_q0,output_differences_9_address0,output_differences_9_ce0,output_differences_9_q0,output_differences_10_address0,output_differences_10_ce0,output_differences_10_q0,output_differences_11_address0,output_differences_11_ce0,output_differences_11_q0,output_differences_12_address0,output_differences_12_ce0,output_differences_12_q0,output_differences_13_address0,output_differences_13_ce0,output_differences_13_q0,output_differences_14_address0,output_differences_14_ce0,output_differences_14_q0,output_differences_15_address0,output_differences_15_ce0,output_differences_15_q0,output_differences_16_address0,output_differences_16_ce0,output_differences_16_q0,output_differences_17_address0,output_differences_17_ce0,output_differences_17_q0,output_differences_18_address0,output_differences_18_ce0,output_differences_18_q0,output_differences_19_address0,output_differences_19_ce0,output_differences_19_q0,output_differences_20_address0,output_differences_20_ce0,output_differences_20_q0,output_differences_21_address0,output_differences_21_ce0,output_differences_21_q0,output_differences_22_address0,output_differences_22_ce0,output_differences_22_q0,output_differences_23_address0,output_differences_23_ce0,output_differences_23_q0,output_differences_24_address0,output_differences_24_ce0,output_differences_24_q0,output_differences_25_address0,output_differences_25_ce0,output_differences_25_q0,output_differences_26_address0,output_differences_26_ce0,output_differences_26_q0,output_differences_27_address0,output_differences_27_ce0,output_differences_27_q0,output_differences_28_address0,output_differences_28_ce0,output_differences_28_q0,output_differences_29_address0,output_differences_29_ce0,output_differences_29_q0,output_differences_30_address0,output_differences_30_ce0,output_differences_30_q0,output_differences_31_address0,output_differences_31_ce0,output_differences_31_q0,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,oracle_activations_8_address0,oracle_activations_8_ce0,oracle_activations_8_we0,oracle_activations_8_d0,oracle_activations_9_address0,oracle_activations_9_ce0,oracle_activations_9_we0,oracle_activations_9_d0,oracle_activations_10_address0,oracle_activations_10_ce0,oracle_activations_10_we0,oracle_activations_10_d0,oracle_activations_11_address0,oracle_activations_11_ce0,oracle_activations_11_we0,oracle_activations_11_d0,oracle_activations_12_address0,oracle_activations_12_ce0,oracle_activations_12_we0,oracle_activations_12_d0,oracle_activations_13_address0,oracle_activations_13_ce0,oracle_activations_13_we0,oracle_activations_13_d0,oracle_activations_14_address0,oracle_activations_14_ce0,oracle_activations_14_we0,oracle_activations_14_d0,oracle_activations_15_address0,oracle_activations_15_ce0,oracle_activations_15_we0,oracle_activations_15_d0,oracle_activations_16_address0,oracle_activations_16_ce0,oracle_activations_16_we0,oracle_activations_16_d0,oracle_activations_17_address0,oracle_activations_17_ce0,oracle_activations_17_we0,oracle_activations_17_d0,oracle_activations_18_address0,oracle_activations_18_ce0,oracle_activations_18_we0,oracle_activations_18_d0,oracle_activations_19_address0,oracle_activations_19_ce0,oracle_activations_19_we0,oracle_activations_19_d0,oracle_activations_20_address0,oracle_activations_20_ce0,oracle_activations_20_we0,oracle_activations_20_d0,oracle_activations_21_address0,oracle_activations_21_ce0,oracle_activations_21_we0,oracle_activations_21_d0,oracle_activations_22_address0,oracle_activations_22_ce0,oracle_activations_22_we0,oracle_activations_22_d0,oracle_activations_23_address0,oracle_activations_23_ce0,oracle_activations_23_we0,oracle_activations_23_d0,oracle_activations_24_address0,oracle_activations_24_ce0,oracle_activations_24_we0,oracle_activations_24_d0,oracle_activations_25_address0,oracle_activations_25_ce0,oracle_activations_25_we0,oracle_activations_25_d0,oracle_activations_26_address0,oracle_activations_26_ce0,oracle_activations_26_we0,oracle_activations_26_d0,oracle_activations_27_address0,oracle_activations_27_ce0,oracle_activations_27_we0,oracle_activations_27_d0,oracle_activations_28_address0,oracle_activations_28_ce0,oracle_activations_28_we0,oracle_activations_28_d0,oracle_activations_29_address0,oracle_activations_29_ce0,oracle_activations_29_we0,oracle_activations_29_d0,oracle_activations_30_address0,oracle_activations_30_ce0,oracle_activations_30_we0,oracle_activations_30_d0,oracle_activations_31_address0,oracle_activations_31_ce0,oracle_activations_31_we0,oracle_activations_31_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,dactivations_8_address0,dactivations_8_ce0,dactivations_8_q0,dactivations_9_address0,dactivations_9_ce0,dactivations_9_q0,dactivations_10_address0,dactivations_10_ce0,dactivations_10_q0,dactivations_11_address0,dactivations_11_ce0,dactivations_11_q0,dactivations_12_address0,dactivations_12_ce0,dactivations_12_q0,dactivations_13_address0,dactivations_13_ce0,dactivations_13_q0,dactivations_14_address0,dactivations_14_ce0,dactivations_14_q0,dactivations_15_address0,dactivations_15_ce0,dactivations_15_q0,dactivations_16_address0,dactivations_16_ce0,dactivations_16_q0,dactivations_17_address0,dactivations_17_ce0,dactivations_17_q0,dactivations_18_address0,dactivations_18_ce0,dactivations_18_q0,dactivations_19_address0,dactivations_19_ce0,dactivations_19_q0,dactivations_20_address0,dactivations_20_ce0,dactivations_20_q0,dactivations_21_address0,dactivations_21_ce0,dactivations_21_q0,dactivations_22_address0,dactivations_22_ce0,dactivations_22_q0,dactivations_23_address0,dactivations_23_ce0,dactivations_23_q0,dactivations_24_address0,dactivations_24_ce0,dactivations_24_q0,dactivations_25_address0,dactivations_25_ce0,dactivations_25_q0,dactivations_26_address0,dactivations_26_ce0,dactivations_26_q0,dactivations_27_address0,dactivations_27_ce0,dactivations_27_q0,dactivations_28_address0,dactivations_28_ce0,dactivations_28_q0,dactivations_29_address0,dactivations_29_ce0,dactivations_29_q0,dactivations_30_address0,dactivations_30_ce0,dactivations_30_q0,dactivations_31_address0,dactivations_31_ce0,dactivations_31_q0,grp_fu_9728_p_din0,grp_fu_9728_p_din1,grp_fu_9728_p_dout0,grp_fu_9728_p_ce,grp_fu_9536_p_din0,grp_fu_9536_p_din1,grp_fu_9536_p_opcode,grp_fu_9536_p_dout0,grp_fu_9536_p_ce);  
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [0:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [0:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [0:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [0:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [0:0] output_differences_4_address0;
output   output_differences_4_ce0;
input  [63:0] output_differences_4_q0;
output  [0:0] output_differences_5_address0;
output   output_differences_5_ce0;
input  [63:0] output_differences_5_q0;
output  [0:0] output_differences_6_address0;
output   output_differences_6_ce0;
input  [63:0] output_differences_6_q0;
output  [0:0] output_differences_7_address0;
output   output_differences_7_ce0;
input  [63:0] output_differences_7_q0;
output  [0:0] output_differences_8_address0;
output   output_differences_8_ce0;
input  [63:0] output_differences_8_q0;
output  [0:0] output_differences_9_address0;
output   output_differences_9_ce0;
input  [63:0] output_differences_9_q0;
output  [0:0] output_differences_10_address0;
output   output_differences_10_ce0;
input  [63:0] output_differences_10_q0;
output  [0:0] output_differences_11_address0;
output   output_differences_11_ce0;
input  [63:0] output_differences_11_q0;
output  [0:0] output_differences_12_address0;
output   output_differences_12_ce0;
input  [63:0] output_differences_12_q0;
output  [0:0] output_differences_13_address0;
output   output_differences_13_ce0;
input  [63:0] output_differences_13_q0;
output  [0:0] output_differences_14_address0;
output   output_differences_14_ce0;
input  [63:0] output_differences_14_q0;
output  [0:0] output_differences_15_address0;
output   output_differences_15_ce0;
input  [63:0] output_differences_15_q0;
output  [0:0] output_differences_16_address0;
output   output_differences_16_ce0;
input  [63:0] output_differences_16_q0;
output  [0:0] output_differences_17_address0;
output   output_differences_17_ce0;
input  [63:0] output_differences_17_q0;
output  [0:0] output_differences_18_address0;
output   output_differences_18_ce0;
input  [63:0] output_differences_18_q0;
output  [0:0] output_differences_19_address0;
output   output_differences_19_ce0;
input  [63:0] output_differences_19_q0;
output  [0:0] output_differences_20_address0;
output   output_differences_20_ce0;
input  [63:0] output_differences_20_q0;
output  [0:0] output_differences_21_address0;
output   output_differences_21_ce0;
input  [63:0] output_differences_21_q0;
output  [0:0] output_differences_22_address0;
output   output_differences_22_ce0;
input  [63:0] output_differences_22_q0;
output  [0:0] output_differences_23_address0;
output   output_differences_23_ce0;
input  [63:0] output_differences_23_q0;
output  [0:0] output_differences_24_address0;
output   output_differences_24_ce0;
input  [63:0] output_differences_24_q0;
output  [0:0] output_differences_25_address0;
output   output_differences_25_ce0;
input  [63:0] output_differences_25_q0;
output  [0:0] output_differences_26_address0;
output   output_differences_26_ce0;
input  [63:0] output_differences_26_q0;
output  [0:0] output_differences_27_address0;
output   output_differences_27_ce0;
input  [63:0] output_differences_27_q0;
output  [0:0] output_differences_28_address0;
output   output_differences_28_ce0;
input  [63:0] output_differences_28_q0;
output  [0:0] output_differences_29_address0;
output   output_differences_29_ce0;
input  [63:0] output_differences_29_q0;
output  [0:0] output_differences_30_address0;
output   output_differences_30_ce0;
input  [63:0] output_differences_30_q0;
output  [0:0] output_differences_31_address0;
output   output_differences_31_ce0;
input  [63:0] output_differences_31_q0;
output  [0:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [0:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [0:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [0:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [0:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [0:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [0:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [0:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [0:0] oracle_activations_8_address0;
output   oracle_activations_8_ce0;
output   oracle_activations_8_we0;
output  [63:0] oracle_activations_8_d0;
output  [0:0] oracle_activations_9_address0;
output   oracle_activations_9_ce0;
output   oracle_activations_9_we0;
output  [63:0] oracle_activations_9_d0;
output  [0:0] oracle_activations_10_address0;
output   oracle_activations_10_ce0;
output   oracle_activations_10_we0;
output  [63:0] oracle_activations_10_d0;
output  [0:0] oracle_activations_11_address0;
output   oracle_activations_11_ce0;
output   oracle_activations_11_we0;
output  [63:0] oracle_activations_11_d0;
output  [0:0] oracle_activations_12_address0;
output   oracle_activations_12_ce0;
output   oracle_activations_12_we0;
output  [63:0] oracle_activations_12_d0;
output  [0:0] oracle_activations_13_address0;
output   oracle_activations_13_ce0;
output   oracle_activations_13_we0;
output  [63:0] oracle_activations_13_d0;
output  [0:0] oracle_activations_14_address0;
output   oracle_activations_14_ce0;
output   oracle_activations_14_we0;
output  [63:0] oracle_activations_14_d0;
output  [0:0] oracle_activations_15_address0;
output   oracle_activations_15_ce0;
output   oracle_activations_15_we0;
output  [63:0] oracle_activations_15_d0;
output  [0:0] oracle_activations_16_address0;
output   oracle_activations_16_ce0;
output   oracle_activations_16_we0;
output  [63:0] oracle_activations_16_d0;
output  [0:0] oracle_activations_17_address0;
output   oracle_activations_17_ce0;
output   oracle_activations_17_we0;
output  [63:0] oracle_activations_17_d0;
output  [0:0] oracle_activations_18_address0;
output   oracle_activations_18_ce0;
output   oracle_activations_18_we0;
output  [63:0] oracle_activations_18_d0;
output  [0:0] oracle_activations_19_address0;
output   oracle_activations_19_ce0;
output   oracle_activations_19_we0;
output  [63:0] oracle_activations_19_d0;
output  [0:0] oracle_activations_20_address0;
output   oracle_activations_20_ce0;
output   oracle_activations_20_we0;
output  [63:0] oracle_activations_20_d0;
output  [0:0] oracle_activations_21_address0;
output   oracle_activations_21_ce0;
output   oracle_activations_21_we0;
output  [63:0] oracle_activations_21_d0;
output  [0:0] oracle_activations_22_address0;
output   oracle_activations_22_ce0;
output   oracle_activations_22_we0;
output  [63:0] oracle_activations_22_d0;
output  [0:0] oracle_activations_23_address0;
output   oracle_activations_23_ce0;
output   oracle_activations_23_we0;
output  [63:0] oracle_activations_23_d0;
output  [0:0] oracle_activations_24_address0;
output   oracle_activations_24_ce0;
output   oracle_activations_24_we0;
output  [63:0] oracle_activations_24_d0;
output  [0:0] oracle_activations_25_address0;
output   oracle_activations_25_ce0;
output   oracle_activations_25_we0;
output  [63:0] oracle_activations_25_d0;
output  [0:0] oracle_activations_26_address0;
output   oracle_activations_26_ce0;
output   oracle_activations_26_we0;
output  [63:0] oracle_activations_26_d0;
output  [0:0] oracle_activations_27_address0;
output   oracle_activations_27_ce0;
output   oracle_activations_27_we0;
output  [63:0] oracle_activations_27_d0;
output  [0:0] oracle_activations_28_address0;
output   oracle_activations_28_ce0;
output   oracle_activations_28_we0;
output  [63:0] oracle_activations_28_d0;
output  [0:0] oracle_activations_29_address0;
output   oracle_activations_29_ce0;
output   oracle_activations_29_we0;
output  [63:0] oracle_activations_29_d0;
output  [0:0] oracle_activations_30_address0;
output   oracle_activations_30_ce0;
output   oracle_activations_30_we0;
output  [63:0] oracle_activations_30_d0;
output  [0:0] oracle_activations_31_address0;
output   oracle_activations_31_ce0;
output   oracle_activations_31_we0;
output  [63:0] oracle_activations_31_d0;
output  [0:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [0:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [0:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [0:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [0:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [0:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [0:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [0:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [0:0] dactivations_8_address0;
output   dactivations_8_ce0;
input  [63:0] dactivations_8_q0;
output  [0:0] dactivations_9_address0;
output   dactivations_9_ce0;
input  [63:0] dactivations_9_q0;
output  [0:0] dactivations_10_address0;
output   dactivations_10_ce0;
input  [63:0] dactivations_10_q0;
output  [0:0] dactivations_11_address0;
output   dactivations_11_ce0;
input  [63:0] dactivations_11_q0;
output  [0:0] dactivations_12_address0;
output   dactivations_12_ce0;
input  [63:0] dactivations_12_q0;
output  [0:0] dactivations_13_address0;
output   dactivations_13_ce0;
input  [63:0] dactivations_13_q0;
output  [0:0] dactivations_14_address0;
output   dactivations_14_ce0;
input  [63:0] dactivations_14_q0;
output  [0:0] dactivations_15_address0;
output   dactivations_15_ce0;
input  [63:0] dactivations_15_q0;
output  [0:0] dactivations_16_address0;
output   dactivations_16_ce0;
input  [63:0] dactivations_16_q0;
output  [0:0] dactivations_17_address0;
output   dactivations_17_ce0;
input  [63:0] dactivations_17_q0;
output  [0:0] dactivations_18_address0;
output   dactivations_18_ce0;
input  [63:0] dactivations_18_q0;
output  [0:0] dactivations_19_address0;
output   dactivations_19_ce0;
input  [63:0] dactivations_19_q0;
output  [0:0] dactivations_20_address0;
output   dactivations_20_ce0;
input  [63:0] dactivations_20_q0;
output  [0:0] dactivations_21_address0;
output   dactivations_21_ce0;
input  [63:0] dactivations_21_q0;
output  [0:0] dactivations_22_address0;
output   dactivations_22_ce0;
input  [63:0] dactivations_22_q0;
output  [0:0] dactivations_23_address0;
output   dactivations_23_ce0;
input  [63:0] dactivations_23_q0;
output  [0:0] dactivations_24_address0;
output   dactivations_24_ce0;
input  [63:0] dactivations_24_q0;
output  [0:0] dactivations_25_address0;
output   dactivations_25_ce0;
input  [63:0] dactivations_25_q0;
output  [0:0] dactivations_26_address0;
output   dactivations_26_ce0;
input  [63:0] dactivations_26_q0;
output  [0:0] dactivations_27_address0;
output   dactivations_27_ce0;
input  [63:0] dactivations_27_q0;
output  [0:0] dactivations_28_address0;
output   dactivations_28_ce0;
input  [63:0] dactivations_28_q0;
output  [0:0] dactivations_29_address0;
output   dactivations_29_ce0;
input  [63:0] dactivations_29_q0;
output  [0:0] dactivations_30_address0;
output   dactivations_30_ce0;
input  [63:0] dactivations_30_q0;
output  [0:0] dactivations_31_address0;
output   dactivations_31_ce0;
input  [63:0] dactivations_31_q0;
output  [63:0] grp_fu_9728_p_din0;
output  [63:0] grp_fu_9728_p_din1;
input  [63:0] grp_fu_9728_p_dout0;
output   grp_fu_9728_p_ce;
output  [63:0] grp_fu_9536_p_din0;
output  [63:0] grp_fu_9536_p_din1;
output  [0:0] grp_fu_9536_p_opcode;
input  [63:0] grp_fu_9536_p_dout0;
output   grp_fu_9536_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln102_fu_1314_p2;
reg   [0:0] icmp_ln102_reg_1568;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln102_fu_1320_p2;
reg   [6:0] add_ln102_reg_1572;
wire    ap_CS_fsm_state3;
wire   [4:0] trunc_ln102_fu_1325_p1;
reg   [4:0] trunc_ln102_reg_1577;
reg   [0:0] oracle_activations_0_addr_reg_1582;
wire   [6:0] empty_fu_1403_p2;
reg   [6:0] empty_reg_1587;
reg   [0:0] oracle_activations_16_addr_reg_1592;
reg   [0:0] oracle_activations_8_addr_reg_1597;
reg   [0:0] oracle_activations_24_addr_reg_1602;
reg   [0:0] oracle_activations_4_addr_reg_1607;
reg   [0:0] oracle_activations_12_addr_reg_1612;
reg   [0:0] oracle_activations_20_addr_reg_1617;
reg   [0:0] oracle_activations_28_addr_reg_1622;
reg   [0:0] oracle_activations_2_addr_reg_1627;
reg   [0:0] oracle_activations_6_addr_reg_1632;
reg   [0:0] oracle_activations_10_addr_reg_1637;
reg   [0:0] oracle_activations_14_addr_reg_1642;
reg   [0:0] oracle_activations_18_addr_reg_1647;
reg   [0:0] oracle_activations_22_addr_reg_1652;
reg   [0:0] oracle_activations_26_addr_reg_1657;
reg   [0:0] oracle_activations_30_addr_reg_1662;
reg   [0:0] oracle_activations_1_addr_reg_1667;
reg   [0:0] oracle_activations_3_addr_reg_1672;
reg   [0:0] oracle_activations_5_addr_reg_1677;
reg   [0:0] oracle_activations_7_addr_reg_1682;
reg   [0:0] oracle_activations_9_addr_reg_1687;
reg   [0:0] oracle_activations_11_addr_reg_1692;
reg   [0:0] oracle_activations_13_addr_reg_1697;
reg   [0:0] oracle_activations_15_addr_reg_1702;
reg   [0:0] oracle_activations_17_addr_reg_1707;
reg   [0:0] oracle_activations_19_addr_reg_1712;
reg   [0:0] oracle_activations_21_addr_reg_1717;
reg   [0:0] oracle_activations_23_addr_reg_1722;
reg   [0:0] oracle_activations_25_addr_reg_1727;
reg   [0:0] oracle_activations_27_addr_reg_1732;
reg   [0:0] oracle_activations_29_addr_reg_1737;
reg   [0:0] oracle_activations_31_addr_reg_1742;
wire   [63:0] tmp_fu_1409_p67;
reg   [63:0] tmp_reg_1907;
wire    ap_CS_fsm_state4;
reg   [63:0] mul_reg_1915;
wire    ap_CS_fsm_state11;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_ready;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_ce0;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_ce0;
wire   [6:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_add113_out;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_add113_out_ap_vld;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg;
wire   [63:0] zext_ln101_fu_1335_p1;
reg   [6:0] i_fu_360;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state5;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce0_local;
reg    dactivations_4_ce0_local;
reg    dactivations_5_ce0_local;
reg    dactivations_6_ce0_local;
reg    dactivations_7_ce0_local;
reg    dactivations_8_ce0_local;
reg    dactivations_9_ce0_local;
reg    dactivations_10_ce0_local;
reg    dactivations_11_ce0_local;
reg    dactivations_12_ce0_local;
reg    dactivations_13_ce0_local;
reg    dactivations_14_ce0_local;
reg    dactivations_15_ce0_local;
reg    dactivations_16_ce0_local;
reg    dactivations_17_ce0_local;
reg    dactivations_18_ce0_local;
reg    dactivations_19_ce0_local;
reg    dactivations_20_ce0_local;
reg    dactivations_21_ce0_local;
reg    dactivations_22_ce0_local;
reg    dactivations_23_ce0_local;
reg    dactivations_24_ce0_local;
reg    dactivations_25_ce0_local;
reg    dactivations_26_ce0_local;
reg    dactivations_27_ce0_local;
reg    dactivations_28_ce0_local;
reg    dactivations_29_ce0_local;
reg    dactivations_30_ce0_local;
reg    dactivations_31_ce0_local;
reg    oracle_activations_30_we0_local;
reg    ap_predicate_pred1327_state12;
reg    oracle_activations_30_ce0_local;
reg    oracle_activations_29_we0_local;
reg    ap_predicate_pred1336_state12;
reg    oracle_activations_29_ce0_local;
reg    oracle_activations_28_we0_local;
reg    ap_predicate_pred1345_state12;
reg    oracle_activations_28_ce0_local;
reg    oracle_activations_27_we0_local;
reg    ap_predicate_pred1354_state12;
reg    oracle_activations_27_ce0_local;
reg    oracle_activations_26_we0_local;
reg    ap_predicate_pred1363_state12;
reg    oracle_activations_26_ce0_local;
reg    oracle_activations_25_we0_local;
reg    ap_predicate_pred1372_state12;
reg    oracle_activations_25_ce0_local;
reg    oracle_activations_24_we0_local;
reg    ap_predicate_pred1381_state12;
reg    oracle_activations_24_ce0_local;
reg    oracle_activations_23_we0_local;
reg    ap_predicate_pred1390_state12;
reg    oracle_activations_23_ce0_local;
reg    oracle_activations_22_we0_local;
reg    ap_predicate_pred1399_state12;
reg    oracle_activations_22_ce0_local;
reg    oracle_activations_21_we0_local;
reg    ap_predicate_pred1408_state12;
reg    oracle_activations_21_ce0_local;
reg    oracle_activations_20_we0_local;
reg    ap_predicate_pred1417_state12;
reg    oracle_activations_20_ce0_local;
reg    oracle_activations_19_we0_local;
reg    ap_predicate_pred1426_state12;
reg    oracle_activations_19_ce0_local;
reg    oracle_activations_18_we0_local;
reg    ap_predicate_pred1435_state12;
reg    oracle_activations_18_ce0_local;
reg    oracle_activations_17_we0_local;
reg    ap_predicate_pred1444_state12;
reg    oracle_activations_17_ce0_local;
reg    oracle_activations_16_we0_local;
reg    ap_predicate_pred1453_state12;
reg    oracle_activations_16_ce0_local;
reg    oracle_activations_15_we0_local;
reg    ap_predicate_pred1462_state12;
reg    oracle_activations_15_ce0_local;
reg    oracle_activations_14_we0_local;
reg    ap_predicate_pred1471_state12;
reg    oracle_activations_14_ce0_local;
reg    oracle_activations_13_we0_local;
reg    ap_predicate_pred1480_state12;
reg    oracle_activations_13_ce0_local;
reg    oracle_activations_12_we0_local;
reg    ap_predicate_pred1489_state12;
reg    oracle_activations_12_ce0_local;
reg    oracle_activations_11_we0_local;
reg    ap_predicate_pred1498_state12;
reg    oracle_activations_11_ce0_local;
reg    oracle_activations_10_we0_local;
reg    ap_predicate_pred1507_state12;
reg    oracle_activations_10_ce0_local;
reg    oracle_activations_9_we0_local;
reg    ap_predicate_pred1516_state12;
reg    oracle_activations_9_ce0_local;
reg    oracle_activations_8_we0_local;
reg    ap_predicate_pred1525_state12;
reg    oracle_activations_8_ce0_local;
reg    oracle_activations_7_we0_local;
reg    ap_predicate_pred1534_state12;
reg    oracle_activations_7_ce0_local;
reg    oracle_activations_6_we0_local;
reg    ap_predicate_pred1543_state12;
reg    oracle_activations_6_ce0_local;
reg    oracle_activations_5_we0_local;
reg    ap_predicate_pred1552_state12;
reg    oracle_activations_5_ce0_local;
reg    oracle_activations_4_we0_local;
reg    ap_predicate_pred1561_state12;
reg    oracle_activations_4_ce0_local;
reg    oracle_activations_3_we0_local;
reg    ap_predicate_pred1570_state12;
reg    oracle_activations_3_ce0_local;
reg    oracle_activations_2_we0_local;
reg    ap_predicate_pred1579_state12;
reg    oracle_activations_2_ce0_local;
reg    oracle_activations_1_we0_local;
reg    ap_predicate_pred1588_state12;
reg    oracle_activations_1_ce0_local;
reg    oracle_activations_0_we0_local;
reg    ap_predicate_pred1597_state12;
reg    oracle_activations_0_ce0_local;
reg    oracle_activations_31_we0_local;
reg    ap_predicate_pred1606_state12;
reg    oracle_activations_31_ce0_local;
reg   [63:0] grp_fu_1302_p0;
reg   [63:0] grp_fu_1302_p1;
wire   [0:0] tmp_16_fu_1328_p3;
wire   [63:0] tmp_fu_1409_p65;
reg    grp_fu_1302_ce;
reg    grp_fu_1951_ce;
reg   [11:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state12_blk;
wire   [4:0] tmp_fu_1409_p1;
wire   [4:0] tmp_fu_1409_p3;
wire   [4:0] tmp_fu_1409_p5;
wire   [4:0] tmp_fu_1409_p7;
wire   [4:0] tmp_fu_1409_p9;
wire   [4:0] tmp_fu_1409_p11;
wire   [4:0] tmp_fu_1409_p13;
wire   [4:0] tmp_fu_1409_p15;
wire   [4:0] tmp_fu_1409_p17;
wire   [4:0] tmp_fu_1409_p19;
wire   [4:0] tmp_fu_1409_p21;
wire   [4:0] tmp_fu_1409_p23;
wire   [4:0] tmp_fu_1409_p25;
wire   [4:0] tmp_fu_1409_p27;
wire   [4:0] tmp_fu_1409_p29;
wire   [4:0] tmp_fu_1409_p31;
wire  signed [4:0] tmp_fu_1409_p33;
wire  signed [4:0] tmp_fu_1409_p35;
wire  signed [4:0] tmp_fu_1409_p37;
wire  signed [4:0] tmp_fu_1409_p39;
wire  signed [4:0] tmp_fu_1409_p41;
wire  signed [4:0] tmp_fu_1409_p43;
wire  signed [4:0] tmp_fu_1409_p45;
wire  signed [4:0] tmp_fu_1409_p47;
wire  signed [4:0] tmp_fu_1409_p49;
wire  signed [4:0] tmp_fu_1409_p51;
wire  signed [4:0] tmp_fu_1409_p53;
wire  signed [4:0] tmp_fu_1409_p55;
wire  signed [4:0] tmp_fu_1409_p57;
wire  signed [4:0] tmp_fu_1409_p59;
wire  signed [4:0] tmp_fu_1409_p61;
wire  signed [4:0] tmp_fu_1409_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg = 1'b0;
#0 i_fu_360 = 7'd0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_activations1_loop grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_ready),.output_differences_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_address0),.output_differences_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_ce0),.output_differences_0_q0(output_differences_0_q0),.empty(empty_reg_1587),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.output_differences_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_address0),.output_differences_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_ce0),.output_differences_1_q0(output_differences_1_q0),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.output_differences_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_address0),.output_differences_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_ce0),.output_differences_2_q0(output_differences_2_q0),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.output_differences_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_address0),.output_differences_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_ce0),.output_differences_3_q0(output_differences_3_q0),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.output_differences_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_address0),.output_differences_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_ce0),.output_differences_4_q0(output_differences_4_q0),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.output_differences_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_address0),.output_differences_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_ce0),.output_differences_5_q0(output_differences_5_q0),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.output_differences_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_address0),.output_differences_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_ce0),.output_differences_6_q0(output_differences_6_q0),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.output_differences_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_address0),.output_differences_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_ce0),.output_differences_7_q0(output_differences_7_q0),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.output_differences_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_address0),.output_differences_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_ce0),.output_differences_8_q0(output_differences_8_q0),.weights2_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_address0),.weights2_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.output_differences_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_address0),.output_differences_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_ce0),.output_differences_9_q0(output_differences_9_q0),.weights2_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_address0),.weights2_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.output_differences_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_address0),.output_differences_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_ce0),.output_differences_10_q0(output_differences_10_q0),.weights2_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_address0),.weights2_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.output_differences_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_address0),.output_differences_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_ce0),.output_differences_11_q0(output_differences_11_q0),.weights2_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_address0),.weights2_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.output_differences_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_address0),.output_differences_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_ce0),.output_differences_12_q0(output_differences_12_q0),.weights2_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_address0),.weights2_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.output_differences_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_address0),.output_differences_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_ce0),.output_differences_13_q0(output_differences_13_q0),.weights2_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_address0),.weights2_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.output_differences_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_address0),.output_differences_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_ce0),.output_differences_14_q0(output_differences_14_q0),.weights2_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_address0),.weights2_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.output_differences_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_address0),.output_differences_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_ce0),.output_differences_15_q0(output_differences_15_q0),.weights2_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_address0),.weights2_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.output_differences_16_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_address0),.output_differences_16_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_ce0),.output_differences_16_q0(output_differences_16_q0),.weights2_16_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_address0),.weights2_16_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_ce0),.weights2_16_q0(weights2_16_q0),.output_differences_17_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_address0),.output_differences_17_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_ce0),.output_differences_17_q0(output_differences_17_q0),.weights2_17_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_address0),.weights2_17_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_ce0),.weights2_17_q0(weights2_17_q0),.output_differences_18_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_address0),.output_differences_18_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_ce0),.output_differences_18_q0(output_differences_18_q0),.weights2_18_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_address0),.weights2_18_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_ce0),.weights2_18_q0(weights2_18_q0),.output_differences_19_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_address0),.output_differences_19_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_ce0),.output_differences_19_q0(output_differences_19_q0),.weights2_19_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_address0),.weights2_19_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_ce0),.weights2_19_q0(weights2_19_q0),.output_differences_20_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_address0),.output_differences_20_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_ce0),.output_differences_20_q0(output_differences_20_q0),.weights2_20_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_address0),.weights2_20_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_ce0),.weights2_20_q0(weights2_20_q0),.output_differences_21_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_address0),.output_differences_21_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_ce0),.output_differences_21_q0(output_differences_21_q0),.weights2_21_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_address0),.weights2_21_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_ce0),.weights2_21_q0(weights2_21_q0),.output_differences_22_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_address0),.output_differences_22_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_ce0),.output_differences_22_q0(output_differences_22_q0),.weights2_22_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_address0),.weights2_22_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_ce0),.weights2_22_q0(weights2_22_q0),.output_differences_23_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_address0),.output_differences_23_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_ce0),.output_differences_23_q0(output_differences_23_q0),.weights2_23_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_address0),.weights2_23_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_ce0),.weights2_23_q0(weights2_23_q0),.output_differences_24_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_address0),.output_differences_24_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_ce0),.output_differences_24_q0(output_differences_24_q0),.weights2_24_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_address0),.weights2_24_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_ce0),.weights2_24_q0(weights2_24_q0),.output_differences_25_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_address0),.output_differences_25_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_ce0),.output_differences_25_q0(output_differences_25_q0),.weights2_25_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_address0),.weights2_25_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_ce0),.weights2_25_q0(weights2_25_q0),.output_differences_26_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_address0),.output_differences_26_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_ce0),.output_differences_26_q0(output_differences_26_q0),.weights2_26_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_address0),.weights2_26_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_ce0),.weights2_26_q0(weights2_26_q0),.output_differences_27_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_address0),.output_differences_27_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_ce0),.output_differences_27_q0(output_differences_27_q0),.weights2_27_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_address0),.weights2_27_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_ce0),.weights2_27_q0(weights2_27_q0),.output_differences_28_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_address0),.output_differences_28_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_ce0),.output_differences_28_q0(output_differences_28_q0),.weights2_28_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_address0),.weights2_28_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_ce0),.weights2_28_q0(weights2_28_q0),.output_differences_29_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_address0),.output_differences_29_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_ce0),.output_differences_29_q0(output_differences_29_q0),.weights2_29_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_address0),.weights2_29_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_ce0),.weights2_29_q0(weights2_29_q0),.output_differences_30_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_address0),.output_differences_30_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_ce0),.output_differences_30_q0(output_differences_30_q0),.weights2_30_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_address0),.weights2_30_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_ce0),.weights2_30_q0(weights2_30_q0),.output_differences_31_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_address0),.output_differences_31_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_ce0),.output_differences_31_q0(output_differences_31_q0),.weights2_31_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_address0),.weights2_31_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_ce0),.weights2_31_q0(weights2_31_q0),.add113_out(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_add113_out),.add113_out_ap_vld(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_add113_out_ap_vld),.grp_fu_1951_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din0),.grp_fu_1951_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din1),.grp_fu_1951_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_opcode),.grp_fu_1951_p_dout0(grp_fu_9536_p_dout0),.grp_fu_1951_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_ce),.grp_fu_1302_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din0),.grp_fu_1302_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din1),.grp_fu_1302_p_dout0(grp_fu_9728_p_dout0),.grp_fu_1302_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1697(.din0(dactivations_0_q0),.din1(dactivations_1_q0),.din2(dactivations_2_q0),.din3(dactivations_3_q0),.din4(dactivations_4_q0),.din5(dactivations_5_q0),.din6(dactivations_6_q0),.din7(dactivations_7_q0),.din8(dactivations_8_q0),.din9(dactivations_9_q0),.din10(dactivations_10_q0),.din11(dactivations_11_q0),.din12(dactivations_12_q0),.din13(dactivations_13_q0),.din14(dactivations_14_q0),.din15(dactivations_15_q0),.din16(dactivations_16_q0),.din17(dactivations_17_q0),.din18(dactivations_18_q0),.din19(dactivations_19_q0),.din20(dactivations_20_q0),.din21(dactivations_21_q0),.din22(dactivations_22_q0),.din23(dactivations_23_q0),.din24(dactivations_24_q0),.din25(dactivations_25_q0),.din26(dactivations_26_q0),.din27(dactivations_27_q0),.din28(dactivations_28_q0),.din29(dactivations_29_q0),.din30(dactivations_30_q0),.din31(dactivations_31_q0),.def(tmp_fu_1409_p65),.sel(trunc_ln102_reg_1577),.dout(tmp_fu_1409_p67));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_reg_1568 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_360 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i_fu_360 <= add_ln102_reg_1572;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln102_reg_1572 <= add_ln102_fu_1320_p2;
        empty_reg_1587[6 : 1] <= empty_fu_1403_p2[6 : 1];
        oracle_activations_0_addr_reg_1582 <= zext_ln101_fu_1335_p1;
        oracle_activations_10_addr_reg_1637 <= zext_ln101_fu_1335_p1;
        oracle_activations_11_addr_reg_1692 <= zext_ln101_fu_1335_p1;
        oracle_activations_12_addr_reg_1612 <= zext_ln101_fu_1335_p1;
        oracle_activations_13_addr_reg_1697 <= zext_ln101_fu_1335_p1;
        oracle_activations_14_addr_reg_1642 <= zext_ln101_fu_1335_p1;
        oracle_activations_15_addr_reg_1702 <= zext_ln101_fu_1335_p1;
        oracle_activations_16_addr_reg_1592 <= zext_ln101_fu_1335_p1;
        oracle_activations_17_addr_reg_1707 <= zext_ln101_fu_1335_p1;
        oracle_activations_18_addr_reg_1647 <= zext_ln101_fu_1335_p1;
        oracle_activations_19_addr_reg_1712 <= zext_ln101_fu_1335_p1;
        oracle_activations_1_addr_reg_1667 <= zext_ln101_fu_1335_p1;
        oracle_activations_20_addr_reg_1617 <= zext_ln101_fu_1335_p1;
        oracle_activations_21_addr_reg_1717 <= zext_ln101_fu_1335_p1;
        oracle_activations_22_addr_reg_1652 <= zext_ln101_fu_1335_p1;
        oracle_activations_23_addr_reg_1722 <= zext_ln101_fu_1335_p1;
        oracle_activations_24_addr_reg_1602 <= zext_ln101_fu_1335_p1;
        oracle_activations_25_addr_reg_1727 <= zext_ln101_fu_1335_p1;
        oracle_activations_26_addr_reg_1657 <= zext_ln101_fu_1335_p1;
        oracle_activations_27_addr_reg_1732 <= zext_ln101_fu_1335_p1;
        oracle_activations_28_addr_reg_1622 <= zext_ln101_fu_1335_p1;
        oracle_activations_29_addr_reg_1737 <= zext_ln101_fu_1335_p1;
        oracle_activations_2_addr_reg_1627 <= zext_ln101_fu_1335_p1;
        oracle_activations_30_addr_reg_1662 <= zext_ln101_fu_1335_p1;
        oracle_activations_31_addr_reg_1742 <= zext_ln101_fu_1335_p1;
        oracle_activations_3_addr_reg_1672 <= zext_ln101_fu_1335_p1;
        oracle_activations_4_addr_reg_1607 <= zext_ln101_fu_1335_p1;
        oracle_activations_5_addr_reg_1677 <= zext_ln101_fu_1335_p1;
        oracle_activations_6_addr_reg_1632 <= zext_ln101_fu_1335_p1;
        oracle_activations_7_addr_reg_1682 <= zext_ln101_fu_1335_p1;
        oracle_activations_8_addr_reg_1597 <= zext_ln101_fu_1335_p1;
        oracle_activations_9_addr_reg_1687 <= zext_ln101_fu_1335_p1;
        trunc_ln102_reg_1577 <= trunc_ln102_fu_1325_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_predicate_pred1327_state12 <= (trunc_ln102_reg_1577 == 5'd30);
        ap_predicate_pred1336_state12 <= (trunc_ln102_reg_1577 == 5'd29);
        ap_predicate_pred1345_state12 <= (trunc_ln102_reg_1577 == 5'd28);
        ap_predicate_pred1354_state12 <= (trunc_ln102_reg_1577 == 5'd27);
        ap_predicate_pred1363_state12 <= (trunc_ln102_reg_1577 == 5'd26);
        ap_predicate_pred1372_state12 <= (trunc_ln102_reg_1577 == 5'd25);
        ap_predicate_pred1381_state12 <= (trunc_ln102_reg_1577 == 5'd24);
        ap_predicate_pred1390_state12 <= (trunc_ln102_reg_1577 == 5'd23);
        ap_predicate_pred1399_state12 <= (trunc_ln102_reg_1577 == 5'd22);
        ap_predicate_pred1408_state12 <= (trunc_ln102_reg_1577 == 5'd21);
        ap_predicate_pred1417_state12 <= (trunc_ln102_reg_1577 == 5'd20);
        ap_predicate_pred1426_state12 <= (trunc_ln102_reg_1577 == 5'd19);
        ap_predicate_pred1435_state12 <= (trunc_ln102_reg_1577 == 5'd18);
        ap_predicate_pred1444_state12 <= (trunc_ln102_reg_1577 == 5'd17);
        ap_predicate_pred1453_state12 <= (trunc_ln102_reg_1577 == 5'd16);
        ap_predicate_pred1462_state12 <= (trunc_ln102_reg_1577 == 5'd15);
        ap_predicate_pred1471_state12 <= (trunc_ln102_reg_1577 == 5'd14);
        ap_predicate_pred1480_state12 <= (trunc_ln102_reg_1577 == 5'd13);
        ap_predicate_pred1489_state12 <= (trunc_ln102_reg_1577 == 5'd12);
        ap_predicate_pred1498_state12 <= (trunc_ln102_reg_1577 == 5'd11);
        ap_predicate_pred1507_state12 <= (trunc_ln102_reg_1577 == 5'd10);
        ap_predicate_pred1516_state12 <= (trunc_ln102_reg_1577 == 5'd9);
        ap_predicate_pred1525_state12 <= (trunc_ln102_reg_1577 == 5'd8);
        ap_predicate_pred1534_state12 <= (trunc_ln102_reg_1577 == 5'd7);
        ap_predicate_pred1543_state12 <= (trunc_ln102_reg_1577 == 5'd6);
        ap_predicate_pred1552_state12 <= (trunc_ln102_reg_1577 == 5'd5);
        ap_predicate_pred1561_state12 <= (trunc_ln102_reg_1577 == 5'd4);
        ap_predicate_pred1570_state12 <= (trunc_ln102_reg_1577 == 5'd3);
        ap_predicate_pred1579_state12 <= (trunc_ln102_reg_1577 == 5'd2);
        ap_predicate_pred1588_state12 <= (trunc_ln102_reg_1577 == 5'd1);
        ap_predicate_pred1597_state12 <= (trunc_ln102_reg_1577 == 5'd0);
        ap_predicate_pred1606_state12 <= (trunc_ln102_reg_1577 == 5'd31);
        mul_reg_1915 <= grp_fu_9728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln102_reg_1568 <= icmp_ln102_fu_1314_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1907 <= tmp_fu_1409_p67;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_done == 1'b0)) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln102_reg_1568 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
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
    if (((icmp_ln102_reg_1568 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_10_ce0_local = 1'b1;
    end else begin
        dactivations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_11_ce0_local = 1'b1;
    end else begin
        dactivations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_12_ce0_local = 1'b1;
    end else begin
        dactivations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_13_ce0_local = 1'b1;
    end else begin
        dactivations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_14_ce0_local = 1'b1;
    end else begin
        dactivations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_15_ce0_local = 1'b1;
    end else begin
        dactivations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_16_ce0_local = 1'b1;
    end else begin
        dactivations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_17_ce0_local = 1'b1;
    end else begin
        dactivations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_18_ce0_local = 1'b1;
    end else begin
        dactivations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_19_ce0_local = 1'b1;
    end else begin
        dactivations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_20_ce0_local = 1'b1;
    end else begin
        dactivations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_21_ce0_local = 1'b1;
    end else begin
        dactivations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_22_ce0_local = 1'b1;
    end else begin
        dactivations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_23_ce0_local = 1'b1;
    end else begin
        dactivations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_24_ce0_local = 1'b1;
    end else begin
        dactivations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_25_ce0_local = 1'b1;
    end else begin
        dactivations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_26_ce0_local = 1'b1;
    end else begin
        dactivations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_27_ce0_local = 1'b1;
    end else begin
        dactivations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_28_ce0_local = 1'b1;
    end else begin
        dactivations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_29_ce0_local = 1'b1;
    end else begin
        dactivations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_30_ce0_local = 1'b1;
    end else begin
        dactivations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_31_ce0_local = 1'b1;
    end else begin
        dactivations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_8_ce0_local = 1'b1;
    end else begin
        dactivations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dactivations_9_ce0_local = 1'b1;
    end else begin
        dactivations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1302_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_ce;
    end else begin
        grp_fu_1302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1302_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1302_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_add113_out;
    end else begin
        grp_fu_1302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1302_p1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1302_p1 = tmp_reg_1907;
    end else begin
        grp_fu_1302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1951_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_ce;
    end else begin
        grp_fu_1951_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1597_state12 == 1'b1))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_10_ce0_local = 1'b1;
    end else begin
        oracle_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1507_state12 == 1'b1))) begin
        oracle_activations_10_we0_local = 1'b1;
    end else begin
        oracle_activations_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_11_ce0_local = 1'b1;
    end else begin
        oracle_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1498_state12 == 1'b1))) begin
        oracle_activations_11_we0_local = 1'b1;
    end else begin
        oracle_activations_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_12_ce0_local = 1'b1;
    end else begin
        oracle_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1489_state12 == 1'b1))) begin
        oracle_activations_12_we0_local = 1'b1;
    end else begin
        oracle_activations_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_13_ce0_local = 1'b1;
    end else begin
        oracle_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1480_state12 == 1'b1))) begin
        oracle_activations_13_we0_local = 1'b1;
    end else begin
        oracle_activations_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_14_ce0_local = 1'b1;
    end else begin
        oracle_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1471_state12 == 1'b1))) begin
        oracle_activations_14_we0_local = 1'b1;
    end else begin
        oracle_activations_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_15_ce0_local = 1'b1;
    end else begin
        oracle_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1462_state12 == 1'b1))) begin
        oracle_activations_15_we0_local = 1'b1;
    end else begin
        oracle_activations_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_16_ce0_local = 1'b1;
    end else begin
        oracle_activations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1453_state12 == 1'b1))) begin
        oracle_activations_16_we0_local = 1'b1;
    end else begin
        oracle_activations_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_17_ce0_local = 1'b1;
    end else begin
        oracle_activations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1444_state12 == 1'b1))) begin
        oracle_activations_17_we0_local = 1'b1;
    end else begin
        oracle_activations_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_18_ce0_local = 1'b1;
    end else begin
        oracle_activations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1435_state12 == 1'b1))) begin
        oracle_activations_18_we0_local = 1'b1;
    end else begin
        oracle_activations_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_19_ce0_local = 1'b1;
    end else begin
        oracle_activations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1426_state12 == 1'b1))) begin
        oracle_activations_19_we0_local = 1'b1;
    end else begin
        oracle_activations_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1588_state12 == 1'b1))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_20_ce0_local = 1'b1;
    end else begin
        oracle_activations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1417_state12 == 1'b1))) begin
        oracle_activations_20_we0_local = 1'b1;
    end else begin
        oracle_activations_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_21_ce0_local = 1'b1;
    end else begin
        oracle_activations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1408_state12 == 1'b1))) begin
        oracle_activations_21_we0_local = 1'b1;
    end else begin
        oracle_activations_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_22_ce0_local = 1'b1;
    end else begin
        oracle_activations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1399_state12 == 1'b1))) begin
        oracle_activations_22_we0_local = 1'b1;
    end else begin
        oracle_activations_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_23_ce0_local = 1'b1;
    end else begin
        oracle_activations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1390_state12 == 1'b1))) begin
        oracle_activations_23_we0_local = 1'b1;
    end else begin
        oracle_activations_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_24_ce0_local = 1'b1;
    end else begin
        oracle_activations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1381_state12 == 1'b1))) begin
        oracle_activations_24_we0_local = 1'b1;
    end else begin
        oracle_activations_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_25_ce0_local = 1'b1;
    end else begin
        oracle_activations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1372_state12 == 1'b1))) begin
        oracle_activations_25_we0_local = 1'b1;
    end else begin
        oracle_activations_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_26_ce0_local = 1'b1;
    end else begin
        oracle_activations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1363_state12 == 1'b1))) begin
        oracle_activations_26_we0_local = 1'b1;
    end else begin
        oracle_activations_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_27_ce0_local = 1'b1;
    end else begin
        oracle_activations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1354_state12 == 1'b1))) begin
        oracle_activations_27_we0_local = 1'b1;
    end else begin
        oracle_activations_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_28_ce0_local = 1'b1;
    end else begin
        oracle_activations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1345_state12 == 1'b1))) begin
        oracle_activations_28_we0_local = 1'b1;
    end else begin
        oracle_activations_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_29_ce0_local = 1'b1;
    end else begin
        oracle_activations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1336_state12 == 1'b1))) begin
        oracle_activations_29_we0_local = 1'b1;
    end else begin
        oracle_activations_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1579_state12 == 1'b1))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_30_ce0_local = 1'b1;
    end else begin
        oracle_activations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1327_state12 == 1'b1))) begin
        oracle_activations_30_we0_local = 1'b1;
    end else begin
        oracle_activations_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_31_ce0_local = 1'b1;
    end else begin
        oracle_activations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1606_state12 == 1'b1))) begin
        oracle_activations_31_we0_local = 1'b1;
    end else begin
        oracle_activations_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1570_state12 == 1'b1))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1561_state12 == 1'b1))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1552_state12 == 1'b1))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1543_state12 == 1'b1))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1534_state12 == 1'b1))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_8_ce0_local = 1'b1;
    end else begin
        oracle_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1525_state12 == 1'b1))) begin
        oracle_activations_8_we0_local = 1'b1;
    end else begin
        oracle_activations_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        oracle_activations_9_ce0_local = 1'b1;
    end else begin
        oracle_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (ap_predicate_pred1516_state12 == 1'b1))) begin
        oracle_activations_9_we0_local = 1'b1;
    end else begin
        oracle_activations_9_we0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln102_reg_1568 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_1320_p2 = (i_fu_360 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign dactivations_0_address0 = zext_ln101_fu_1335_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_10_address0 = zext_ln101_fu_1335_p1;
assign dactivations_10_ce0 = dactivations_10_ce0_local;
assign dactivations_11_address0 = zext_ln101_fu_1335_p1;
assign dactivations_11_ce0 = dactivations_11_ce0_local;
assign dactivations_12_address0 = zext_ln101_fu_1335_p1;
assign dactivations_12_ce0 = dactivations_12_ce0_local;
assign dactivations_13_address0 = zext_ln101_fu_1335_p1;
assign dactivations_13_ce0 = dactivations_13_ce0_local;
assign dactivations_14_address0 = zext_ln101_fu_1335_p1;
assign dactivations_14_ce0 = dactivations_14_ce0_local;
assign dactivations_15_address0 = zext_ln101_fu_1335_p1;
assign dactivations_15_ce0 = dactivations_15_ce0_local;
assign dactivations_16_address0 = zext_ln101_fu_1335_p1;
assign dactivations_16_ce0 = dactivations_16_ce0_local;
assign dactivations_17_address0 = zext_ln101_fu_1335_p1;
assign dactivations_17_ce0 = dactivations_17_ce0_local;
assign dactivations_18_address0 = zext_ln101_fu_1335_p1;
assign dactivations_18_ce0 = dactivations_18_ce0_local;
assign dactivations_19_address0 = zext_ln101_fu_1335_p1;
assign dactivations_19_ce0 = dactivations_19_ce0_local;
assign dactivations_1_address0 = zext_ln101_fu_1335_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_20_address0 = zext_ln101_fu_1335_p1;
assign dactivations_20_ce0 = dactivations_20_ce0_local;
assign dactivations_21_address0 = zext_ln101_fu_1335_p1;
assign dactivations_21_ce0 = dactivations_21_ce0_local;
assign dactivations_22_address0 = zext_ln101_fu_1335_p1;
assign dactivations_22_ce0 = dactivations_22_ce0_local;
assign dactivations_23_address0 = zext_ln101_fu_1335_p1;
assign dactivations_23_ce0 = dactivations_23_ce0_local;
assign dactivations_24_address0 = zext_ln101_fu_1335_p1;
assign dactivations_24_ce0 = dactivations_24_ce0_local;
assign dactivations_25_address0 = zext_ln101_fu_1335_p1;
assign dactivations_25_ce0 = dactivations_25_ce0_local;
assign dactivations_26_address0 = zext_ln101_fu_1335_p1;
assign dactivations_26_ce0 = dactivations_26_ce0_local;
assign dactivations_27_address0 = zext_ln101_fu_1335_p1;
assign dactivations_27_ce0 = dactivations_27_ce0_local;
assign dactivations_28_address0 = zext_ln101_fu_1335_p1;
assign dactivations_28_ce0 = dactivations_28_ce0_local;
assign dactivations_29_address0 = zext_ln101_fu_1335_p1;
assign dactivations_29_ce0 = dactivations_29_ce0_local;
assign dactivations_2_address0 = zext_ln101_fu_1335_p1;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_30_address0 = zext_ln101_fu_1335_p1;
assign dactivations_30_ce0 = dactivations_30_ce0_local;
assign dactivations_31_address0 = zext_ln101_fu_1335_p1;
assign dactivations_31_ce0 = dactivations_31_ce0_local;
assign dactivations_3_address0 = zext_ln101_fu_1335_p1;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = zext_ln101_fu_1335_p1;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = zext_ln101_fu_1335_p1;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = zext_ln101_fu_1335_p1;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = zext_ln101_fu_1335_p1;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign dactivations_8_address0 = zext_ln101_fu_1335_p1;
assign dactivations_8_ce0 = dactivations_8_ce0_local;
assign dactivations_9_address0 = zext_ln101_fu_1335_p1;
assign dactivations_9_ce0 = dactivations_9_ce0_local;
assign empty_fu_1403_p2 = i_fu_360 << 7'd1;
assign grp_fu_9536_p_ce = grp_fu_1951_ce;
assign grp_fu_9536_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din0;
assign grp_fu_9536_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_din1;
assign grp_fu_9536_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_grp_fu_1951_p_opcode;
assign grp_fu_9728_p_ce = grp_fu_1302_ce;
assign grp_fu_9728_p_din0 = grp_fu_1302_p0;
assign grp_fu_9728_p_din1 = grp_fu_1302_p1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_ap_start_reg;
assign icmp_ln102_fu_1314_p2 = ((i_fu_360 == 7'd64) ? 1'b1 : 1'b0);
assign oracle_activations_0_address0 = oracle_activations_0_addr_reg_1582;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_1915;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_10_address0 = oracle_activations_10_addr_reg_1637;
assign oracle_activations_10_ce0 = oracle_activations_10_ce0_local;
assign oracle_activations_10_d0 = mul_reg_1915;
assign oracle_activations_10_we0 = oracle_activations_10_we0_local;
assign oracle_activations_11_address0 = oracle_activations_11_addr_reg_1692;
assign oracle_activations_11_ce0 = oracle_activations_11_ce0_local;
assign oracle_activations_11_d0 = mul_reg_1915;
assign oracle_activations_11_we0 = oracle_activations_11_we0_local;
assign oracle_activations_12_address0 = oracle_activations_12_addr_reg_1612;
assign oracle_activations_12_ce0 = oracle_activations_12_ce0_local;
assign oracle_activations_12_d0 = mul_reg_1915;
assign oracle_activations_12_we0 = oracle_activations_12_we0_local;
assign oracle_activations_13_address0 = oracle_activations_13_addr_reg_1697;
assign oracle_activations_13_ce0 = oracle_activations_13_ce0_local;
assign oracle_activations_13_d0 = mul_reg_1915;
assign oracle_activations_13_we0 = oracle_activations_13_we0_local;
assign oracle_activations_14_address0 = oracle_activations_14_addr_reg_1642;
assign oracle_activations_14_ce0 = oracle_activations_14_ce0_local;
assign oracle_activations_14_d0 = mul_reg_1915;
assign oracle_activations_14_we0 = oracle_activations_14_we0_local;
assign oracle_activations_15_address0 = oracle_activations_15_addr_reg_1702;
assign oracle_activations_15_ce0 = oracle_activations_15_ce0_local;
assign oracle_activations_15_d0 = mul_reg_1915;
assign oracle_activations_15_we0 = oracle_activations_15_we0_local;
assign oracle_activations_16_address0 = oracle_activations_16_addr_reg_1592;
assign oracle_activations_16_ce0 = oracle_activations_16_ce0_local;
assign oracle_activations_16_d0 = mul_reg_1915;
assign oracle_activations_16_we0 = oracle_activations_16_we0_local;
assign oracle_activations_17_address0 = oracle_activations_17_addr_reg_1707;
assign oracle_activations_17_ce0 = oracle_activations_17_ce0_local;
assign oracle_activations_17_d0 = mul_reg_1915;
assign oracle_activations_17_we0 = oracle_activations_17_we0_local;
assign oracle_activations_18_address0 = oracle_activations_18_addr_reg_1647;
assign oracle_activations_18_ce0 = oracle_activations_18_ce0_local;
assign oracle_activations_18_d0 = mul_reg_1915;
assign oracle_activations_18_we0 = oracle_activations_18_we0_local;
assign oracle_activations_19_address0 = oracle_activations_19_addr_reg_1712;
assign oracle_activations_19_ce0 = oracle_activations_19_ce0_local;
assign oracle_activations_19_d0 = mul_reg_1915;
assign oracle_activations_19_we0 = oracle_activations_19_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_addr_reg_1667;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul_reg_1915;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_20_address0 = oracle_activations_20_addr_reg_1617;
assign oracle_activations_20_ce0 = oracle_activations_20_ce0_local;
assign oracle_activations_20_d0 = mul_reg_1915;
assign oracle_activations_20_we0 = oracle_activations_20_we0_local;
assign oracle_activations_21_address0 = oracle_activations_21_addr_reg_1717;
assign oracle_activations_21_ce0 = oracle_activations_21_ce0_local;
assign oracle_activations_21_d0 = mul_reg_1915;
assign oracle_activations_21_we0 = oracle_activations_21_we0_local;
assign oracle_activations_22_address0 = oracle_activations_22_addr_reg_1652;
assign oracle_activations_22_ce0 = oracle_activations_22_ce0_local;
assign oracle_activations_22_d0 = mul_reg_1915;
assign oracle_activations_22_we0 = oracle_activations_22_we0_local;
assign oracle_activations_23_address0 = oracle_activations_23_addr_reg_1722;
assign oracle_activations_23_ce0 = oracle_activations_23_ce0_local;
assign oracle_activations_23_d0 = mul_reg_1915;
assign oracle_activations_23_we0 = oracle_activations_23_we0_local;
assign oracle_activations_24_address0 = oracle_activations_24_addr_reg_1602;
assign oracle_activations_24_ce0 = oracle_activations_24_ce0_local;
assign oracle_activations_24_d0 = mul_reg_1915;
assign oracle_activations_24_we0 = oracle_activations_24_we0_local;
assign oracle_activations_25_address0 = oracle_activations_25_addr_reg_1727;
assign oracle_activations_25_ce0 = oracle_activations_25_ce0_local;
assign oracle_activations_25_d0 = mul_reg_1915;
assign oracle_activations_25_we0 = oracle_activations_25_we0_local;
assign oracle_activations_26_address0 = oracle_activations_26_addr_reg_1657;
assign oracle_activations_26_ce0 = oracle_activations_26_ce0_local;
assign oracle_activations_26_d0 = mul_reg_1915;
assign oracle_activations_26_we0 = oracle_activations_26_we0_local;
assign oracle_activations_27_address0 = oracle_activations_27_addr_reg_1732;
assign oracle_activations_27_ce0 = oracle_activations_27_ce0_local;
assign oracle_activations_27_d0 = mul_reg_1915;
assign oracle_activations_27_we0 = oracle_activations_27_we0_local;
assign oracle_activations_28_address0 = oracle_activations_28_addr_reg_1622;
assign oracle_activations_28_ce0 = oracle_activations_28_ce0_local;
assign oracle_activations_28_d0 = mul_reg_1915;
assign oracle_activations_28_we0 = oracle_activations_28_we0_local;
assign oracle_activations_29_address0 = oracle_activations_29_addr_reg_1737;
assign oracle_activations_29_ce0 = oracle_activations_29_ce0_local;
assign oracle_activations_29_d0 = mul_reg_1915;
assign oracle_activations_29_we0 = oracle_activations_29_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_addr_reg_1627;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = mul_reg_1915;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_30_address0 = oracle_activations_30_addr_reg_1662;
assign oracle_activations_30_ce0 = oracle_activations_30_ce0_local;
assign oracle_activations_30_d0 = mul_reg_1915;
assign oracle_activations_30_we0 = oracle_activations_30_we0_local;
assign oracle_activations_31_address0 = oracle_activations_31_addr_reg_1742;
assign oracle_activations_31_ce0 = oracle_activations_31_ce0_local;
assign oracle_activations_31_d0 = mul_reg_1915;
assign oracle_activations_31_we0 = oracle_activations_31_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_addr_reg_1672;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = mul_reg_1915;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = oracle_activations_4_addr_reg_1607;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = mul_reg_1915;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = oracle_activations_5_addr_reg_1677;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = mul_reg_1915;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = oracle_activations_6_addr_reg_1632;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = mul_reg_1915;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = oracle_activations_7_addr_reg_1682;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = mul_reg_1915;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign oracle_activations_8_address0 = oracle_activations_8_addr_reg_1597;
assign oracle_activations_8_ce0 = oracle_activations_8_ce0_local;
assign oracle_activations_8_d0 = mul_reg_1915;
assign oracle_activations_8_we0 = oracle_activations_8_we0_local;
assign oracle_activations_9_address0 = oracle_activations_9_addr_reg_1687;
assign oracle_activations_9_ce0 = oracle_activations_9_ce0_local;
assign oracle_activations_9_d0 = mul_reg_1915;
assign oracle_activations_9_we0 = oracle_activations_9_we0_local;
assign output_differences_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_address0;
assign output_differences_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_0_ce0;
assign output_differences_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_address0;
assign output_differences_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_10_ce0;
assign output_differences_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_address0;
assign output_differences_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_11_ce0;
assign output_differences_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_address0;
assign output_differences_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_12_ce0;
assign output_differences_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_address0;
assign output_differences_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_13_ce0;
assign output_differences_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_address0;
assign output_differences_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_14_ce0;
assign output_differences_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_address0;
assign output_differences_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_15_ce0;
assign output_differences_16_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_address0;
assign output_differences_16_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_16_ce0;
assign output_differences_17_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_address0;
assign output_differences_17_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_17_ce0;
assign output_differences_18_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_address0;
assign output_differences_18_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_18_ce0;
assign output_differences_19_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_address0;
assign output_differences_19_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_19_ce0;
assign output_differences_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_address0;
assign output_differences_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_1_ce0;
assign output_differences_20_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_address0;
assign output_differences_20_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_20_ce0;
assign output_differences_21_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_address0;
assign output_differences_21_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_21_ce0;
assign output_differences_22_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_address0;
assign output_differences_22_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_22_ce0;
assign output_differences_23_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_address0;
assign output_differences_23_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_23_ce0;
assign output_differences_24_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_address0;
assign output_differences_24_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_24_ce0;
assign output_differences_25_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_address0;
assign output_differences_25_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_25_ce0;
assign output_differences_26_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_address0;
assign output_differences_26_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_26_ce0;
assign output_differences_27_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_address0;
assign output_differences_27_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_27_ce0;
assign output_differences_28_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_address0;
assign output_differences_28_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_28_ce0;
assign output_differences_29_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_address0;
assign output_differences_29_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_29_ce0;
assign output_differences_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_address0;
assign output_differences_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_2_ce0;
assign output_differences_30_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_address0;
assign output_differences_30_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_30_ce0;
assign output_differences_31_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_address0;
assign output_differences_31_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_31_ce0;
assign output_differences_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_address0;
assign output_differences_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_3_ce0;
assign output_differences_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_address0;
assign output_differences_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_4_ce0;
assign output_differences_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_address0;
assign output_differences_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_5_ce0;
assign output_differences_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_address0;
assign output_differences_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_6_ce0;
assign output_differences_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_address0;
assign output_differences_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_7_ce0;
assign output_differences_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_address0;
assign output_differences_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_8_ce0;
assign output_differences_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_address0;
assign output_differences_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_output_differences_9_ce0;
assign tmp_16_fu_1328_p3 = i_fu_360[32'd5];
assign tmp_fu_1409_p65 = 'bx;
assign trunc_ln102_fu_1325_p1 = i_fu_360[4:0];
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_address0;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_0_ce0;
assign weights2_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_address0;
assign weights2_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_10_ce0;
assign weights2_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_address0;
assign weights2_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_11_ce0;
assign weights2_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_address0;
assign weights2_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_12_ce0;
assign weights2_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_address0;
assign weights2_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_13_ce0;
assign weights2_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_address0;
assign weights2_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_14_ce0;
assign weights2_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_address0;
assign weights2_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_15_ce0;
assign weights2_16_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_address0;
assign weights2_16_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_16_ce0;
assign weights2_17_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_address0;
assign weights2_17_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_17_ce0;
assign weights2_18_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_address0;
assign weights2_18_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_18_ce0;
assign weights2_19_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_address0;
assign weights2_19_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_19_ce0;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_address0;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_1_ce0;
assign weights2_20_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_address0;
assign weights2_20_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_20_ce0;
assign weights2_21_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_address0;
assign weights2_21_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_21_ce0;
assign weights2_22_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_address0;
assign weights2_22_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_22_ce0;
assign weights2_23_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_address0;
assign weights2_23_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_23_ce0;
assign weights2_24_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_address0;
assign weights2_24_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_24_ce0;
assign weights2_25_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_address0;
assign weights2_25_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_25_ce0;
assign weights2_26_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_address0;
assign weights2_26_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_26_ce0;
assign weights2_27_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_address0;
assign weights2_27_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_27_ce0;
assign weights2_28_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_address0;
assign weights2_28_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_28_ce0;
assign weights2_29_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_address0;
assign weights2_29_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_29_ce0;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_address0;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_2_ce0;
assign weights2_30_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_address0;
assign weights2_30_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_30_ce0;
assign weights2_31_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_address0;
assign weights2_31_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_31_ce0;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_address0;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_3_ce0;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_address0;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_4_ce0;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_address0;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_5_ce0;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_address0;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_6_ce0;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_address0;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_7_ce0;
assign weights2_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_address0;
assign weights2_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_8_ce0;
assign weights2_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_address0;
assign weights2_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_1168_weights2_9_ce0;
assign zext_ln101_fu_1335_p1 = tmp_16_fu_1328_p3;
always @ (posedge ap_clk) begin
    empty_reg_1587[0] <= 1'b0;
end
endmodule 
