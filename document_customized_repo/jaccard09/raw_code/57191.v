module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_0_0_val,last_activations_0_0_1_val,last_activations_1_0_0_val,last_activations_1_0_1_val,last_activations_2_0_0_val,last_activations_2_0_1_val,last_activations_3_0_0_val,last_activations_3_0_1_val,last_activations_4_0_0_val,last_activations_4_0_1_val,last_activations_5_0_0_val,last_activations_5_0_1_val,last_activations_6_0_0_val,last_activations_6_0_1_val,last_activations_7_0_0_val,last_activations_7_0_1_val,last_activations_8_0_0_val,last_activations_8_0_1_val,last_activations_9_0_0_val,last_activations_9_0_1_val,last_activations_10_0_0_val,last_activations_10_0_1_val,last_activations_11_0_0_val,last_activations_11_0_1_val,last_activations_12_0_0_val,last_activations_12_0_1_val,last_activations_13_0_0_val,last_activations_13_0_1_val,last_activations_14_0_0_val,last_activations_14_0_1_val,last_activations_15_0_0_val,last_activations_15_0_1_val,last_activations_16_0_0_val,last_activations_16_0_1_val,last_activations_17_0_0_val,last_activations_17_0_1_val,last_activations_18_0_0_val,last_activations_18_0_1_val,last_activations_19_0_0_val,last_activations_19_0_1_val,last_activations_20_0_0_val,last_activations_20_0_1_val,last_activations_21_0_0_val,last_activations_21_0_1_val,last_activations_22_0_0_val,last_activations_22_0_1_val,last_activations_23_0_0_val,last_activations_23_0_1_val,last_activations_24_0_0_val,last_activations_24_0_1_val,last_activations_25_0_0_val,last_activations_25_0_1_val,last_activations_26_0_0_val,last_activations_26_0_1_val,last_activations_27_0_0_val,last_activations_27_0_1_val,last_activations_28_0_0_val,last_activations_28_0_1_val,last_activations_29_0_0_val,last_activations_29_0_1_val,last_activations_30_0_0_val,last_activations_30_0_1_val,last_activations_31_0_0_val,last_activations_31_0_1_val,grp_fu_12293_p_din0,grp_fu_12293_p_din1,grp_fu_12293_p_dout0,grp_fu_12293_p_ce,grp_fu_12297_p_din0,grp_fu_12297_p_din1,grp_fu_12297_p_dout0,grp_fu_12297_p_ce,grp_fu_12301_p_din0,grp_fu_12301_p_din1,grp_fu_12301_p_dout0,grp_fu_12301_p_ce,grp_fu_12305_p_din0,grp_fu_12305_p_din1,grp_fu_12305_p_dout0,grp_fu_12305_p_ce,grp_fu_12309_p_din0,grp_fu_12309_p_din1,grp_fu_12309_p_dout0,grp_fu_12309_p_ce,grp_fu_12313_p_din0,grp_fu_12313_p_din1,grp_fu_12313_p_dout0,grp_fu_12313_p_ce,grp_fu_12317_p_din0,grp_fu_12317_p_din1,grp_fu_12317_p_dout0,grp_fu_12317_p_ce,grp_fu_12321_p_din0,grp_fu_12321_p_din1,grp_fu_12321_p_dout0,grp_fu_12321_p_ce,grp_fu_12325_p_din0,grp_fu_12325_p_din1,grp_fu_12325_p_dout0,grp_fu_12325_p_ce,grp_fu_12329_p_din0,grp_fu_12329_p_din1,grp_fu_12329_p_dout0,grp_fu_12329_p_ce,grp_fu_12333_p_din0,grp_fu_12333_p_din1,grp_fu_12333_p_dout0,grp_fu_12333_p_ce,grp_fu_12337_p_din0,grp_fu_12337_p_din1,grp_fu_12337_p_dout0,grp_fu_12337_p_ce,grp_fu_12341_p_din0,grp_fu_12341_p_din1,grp_fu_12341_p_dout0,grp_fu_12341_p_ce,grp_fu_12345_p_din0,grp_fu_12345_p_din1,grp_fu_12345_p_dout0,grp_fu_12345_p_ce,grp_fu_12349_p_din0,grp_fu_12349_p_din1,grp_fu_12349_p_dout0,grp_fu_12349_p_ce,grp_fu_12353_p_din0,grp_fu_12353_p_din1,grp_fu_12353_p_dout0,grp_fu_12353_p_ce,grp_fu_12357_p_din0,grp_fu_12357_p_din1,grp_fu_12357_p_dout0,grp_fu_12357_p_ce,grp_fu_12361_p_din0,grp_fu_12361_p_din1,grp_fu_12361_p_dout0,grp_fu_12361_p_ce,grp_fu_12365_p_din0,grp_fu_12365_p_din1,grp_fu_12365_p_dout0,grp_fu_12365_p_ce,grp_fu_12369_p_din0,grp_fu_12369_p_din1,grp_fu_12369_p_dout0,grp_fu_12369_p_ce,grp_fu_12373_p_din0,grp_fu_12373_p_din1,grp_fu_12373_p_dout0,grp_fu_12373_p_ce,grp_fu_12377_p_din0,grp_fu_12377_p_din1,grp_fu_12377_p_dout0,grp_fu_12377_p_ce,grp_fu_12381_p_din0,grp_fu_12381_p_din1,grp_fu_12381_p_dout0,grp_fu_12381_p_ce,grp_fu_12385_p_din0,grp_fu_12385_p_din1,grp_fu_12385_p_dout0,grp_fu_12385_p_ce,grp_fu_12389_p_din0,grp_fu_12389_p_din1,grp_fu_12389_p_dout0,grp_fu_12389_p_ce,grp_fu_12393_p_din0,grp_fu_12393_p_din1,grp_fu_12393_p_dout0,grp_fu_12393_p_ce,grp_fu_12397_p_din0,grp_fu_12397_p_din1,grp_fu_12397_p_dout0,grp_fu_12397_p_ce,grp_fu_12401_p_din0,grp_fu_12401_p_din1,grp_fu_12401_p_dout0,grp_fu_12401_p_ce,grp_fu_12405_p_din0,grp_fu_12405_p_din1,grp_fu_12405_p_dout0,grp_fu_12405_p_ce,grp_fu_12409_p_din0,grp_fu_12409_p_din1,grp_fu_12409_p_dout0,grp_fu_12409_p_ce,grp_fu_12413_p_din0,grp_fu_12413_p_din1,grp_fu_12413_p_dout0,grp_fu_12413_p_ce,grp_fu_12417_p_din0,grp_fu_12417_p_din1,grp_fu_12417_p_dout0,grp_fu_12417_p_ce); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
input  [63:0] last_activations_0_0_0_val;
input  [63:0] last_activations_0_0_1_val;
input  [63:0] last_activations_1_0_0_val;
input  [63:0] last_activations_1_0_1_val;
input  [63:0] last_activations_2_0_0_val;
input  [63:0] last_activations_2_0_1_val;
input  [63:0] last_activations_3_0_0_val;
input  [63:0] last_activations_3_0_1_val;
input  [63:0] last_activations_4_0_0_val;
input  [63:0] last_activations_4_0_1_val;
input  [63:0] last_activations_5_0_0_val;
input  [63:0] last_activations_5_0_1_val;
input  [63:0] last_activations_6_0_0_val;
input  [63:0] last_activations_6_0_1_val;
input  [63:0] last_activations_7_0_0_val;
input  [63:0] last_activations_7_0_1_val;
input  [63:0] last_activations_8_0_0_val;
input  [63:0] last_activations_8_0_1_val;
input  [63:0] last_activations_9_0_0_val;
input  [63:0] last_activations_9_0_1_val;
input  [63:0] last_activations_10_0_0_val;
input  [63:0] last_activations_10_0_1_val;
input  [63:0] last_activations_11_0_0_val;
input  [63:0] last_activations_11_0_1_val;
input  [63:0] last_activations_12_0_0_val;
input  [63:0] last_activations_12_0_1_val;
input  [63:0] last_activations_13_0_0_val;
input  [63:0] last_activations_13_0_1_val;
input  [63:0] last_activations_14_0_0_val;
input  [63:0] last_activations_14_0_1_val;
input  [63:0] last_activations_15_0_0_val;
input  [63:0] last_activations_15_0_1_val;
input  [63:0] last_activations_16_0_0_val;
input  [63:0] last_activations_16_0_1_val;
input  [63:0] last_activations_17_0_0_val;
input  [63:0] last_activations_17_0_1_val;
input  [63:0] last_activations_18_0_0_val;
input  [63:0] last_activations_18_0_1_val;
input  [63:0] last_activations_19_0_0_val;
input  [63:0] last_activations_19_0_1_val;
input  [63:0] last_activations_20_0_0_val;
input  [63:0] last_activations_20_0_1_val;
input  [63:0] last_activations_21_0_0_val;
input  [63:0] last_activations_21_0_1_val;
input  [63:0] last_activations_22_0_0_val;
input  [63:0] last_activations_22_0_1_val;
input  [63:0] last_activations_23_0_0_val;
input  [63:0] last_activations_23_0_1_val;
input  [63:0] last_activations_24_0_0_val;
input  [63:0] last_activations_24_0_1_val;
input  [63:0] last_activations_25_0_0_val;
input  [63:0] last_activations_25_0_1_val;
input  [63:0] last_activations_26_0_0_val;
input  [63:0] last_activations_26_0_1_val;
input  [63:0] last_activations_27_0_0_val;
input  [63:0] last_activations_27_0_1_val;
input  [63:0] last_activations_28_0_0_val;
input  [63:0] last_activations_28_0_1_val;
input  [63:0] last_activations_29_0_0_val;
input  [63:0] last_activations_29_0_1_val;
input  [63:0] last_activations_30_0_0_val;
input  [63:0] last_activations_30_0_1_val;
input  [63:0] last_activations_31_0_0_val;
input  [63:0] last_activations_31_0_1_val;
output  [63:0] grp_fu_12293_p_din0;
output  [63:0] grp_fu_12293_p_din1;
input  [63:0] grp_fu_12293_p_dout0;
output   grp_fu_12293_p_ce;
output  [63:0] grp_fu_12297_p_din0;
output  [63:0] grp_fu_12297_p_din1;
input  [63:0] grp_fu_12297_p_dout0;
output   grp_fu_12297_p_ce;
output  [63:0] grp_fu_12301_p_din0;
output  [63:0] grp_fu_12301_p_din1;
input  [63:0] grp_fu_12301_p_dout0;
output   grp_fu_12301_p_ce;
output  [63:0] grp_fu_12305_p_din0;
output  [63:0] grp_fu_12305_p_din1;
input  [63:0] grp_fu_12305_p_dout0;
output   grp_fu_12305_p_ce;
output  [63:0] grp_fu_12309_p_din0;
output  [63:0] grp_fu_12309_p_din1;
input  [63:0] grp_fu_12309_p_dout0;
output   grp_fu_12309_p_ce;
output  [63:0] grp_fu_12313_p_din0;
output  [63:0] grp_fu_12313_p_din1;
input  [63:0] grp_fu_12313_p_dout0;
output   grp_fu_12313_p_ce;
output  [63:0] grp_fu_12317_p_din0;
output  [63:0] grp_fu_12317_p_din1;
input  [63:0] grp_fu_12317_p_dout0;
output   grp_fu_12317_p_ce;
output  [63:0] grp_fu_12321_p_din0;
output  [63:0] grp_fu_12321_p_din1;
input  [63:0] grp_fu_12321_p_dout0;
output   grp_fu_12321_p_ce;
output  [63:0] grp_fu_12325_p_din0;
output  [63:0] grp_fu_12325_p_din1;
input  [63:0] grp_fu_12325_p_dout0;
output   grp_fu_12325_p_ce;
output  [63:0] grp_fu_12329_p_din0;
output  [63:0] grp_fu_12329_p_din1;
input  [63:0] grp_fu_12329_p_dout0;
output   grp_fu_12329_p_ce;
output  [63:0] grp_fu_12333_p_din0;
output  [63:0] grp_fu_12333_p_din1;
input  [63:0] grp_fu_12333_p_dout0;
output   grp_fu_12333_p_ce;
output  [63:0] grp_fu_12337_p_din0;
output  [63:0] grp_fu_12337_p_din1;
input  [63:0] grp_fu_12337_p_dout0;
output   grp_fu_12337_p_ce;
output  [63:0] grp_fu_12341_p_din0;
output  [63:0] grp_fu_12341_p_din1;
input  [63:0] grp_fu_12341_p_dout0;
output   grp_fu_12341_p_ce;
output  [63:0] grp_fu_12345_p_din0;
output  [63:0] grp_fu_12345_p_din1;
input  [63:0] grp_fu_12345_p_dout0;
output   grp_fu_12345_p_ce;
output  [63:0] grp_fu_12349_p_din0;
output  [63:0] grp_fu_12349_p_din1;
input  [63:0] grp_fu_12349_p_dout0;
output   grp_fu_12349_p_ce;
output  [63:0] grp_fu_12353_p_din0;
output  [63:0] grp_fu_12353_p_din1;
input  [63:0] grp_fu_12353_p_dout0;
output   grp_fu_12353_p_ce;
output  [63:0] grp_fu_12357_p_din0;
output  [63:0] grp_fu_12357_p_din1;
input  [63:0] grp_fu_12357_p_dout0;
output   grp_fu_12357_p_ce;
output  [63:0] grp_fu_12361_p_din0;
output  [63:0] grp_fu_12361_p_din1;
input  [63:0] grp_fu_12361_p_dout0;
output   grp_fu_12361_p_ce;
output  [63:0] grp_fu_12365_p_din0;
output  [63:0] grp_fu_12365_p_din1;
input  [63:0] grp_fu_12365_p_dout0;
output   grp_fu_12365_p_ce;
output  [63:0] grp_fu_12369_p_din0;
output  [63:0] grp_fu_12369_p_din1;
input  [63:0] grp_fu_12369_p_dout0;
output   grp_fu_12369_p_ce;
output  [63:0] grp_fu_12373_p_din0;
output  [63:0] grp_fu_12373_p_din1;
input  [63:0] grp_fu_12373_p_dout0;
output   grp_fu_12373_p_ce;
output  [63:0] grp_fu_12377_p_din0;
output  [63:0] grp_fu_12377_p_din1;
input  [63:0] grp_fu_12377_p_dout0;
output   grp_fu_12377_p_ce;
output  [63:0] grp_fu_12381_p_din0;
output  [63:0] grp_fu_12381_p_din1;
input  [63:0] grp_fu_12381_p_dout0;
output   grp_fu_12381_p_ce;
output  [63:0] grp_fu_12385_p_din0;
output  [63:0] grp_fu_12385_p_din1;
input  [63:0] grp_fu_12385_p_dout0;
output   grp_fu_12385_p_ce;
output  [63:0] grp_fu_12389_p_din0;
output  [63:0] grp_fu_12389_p_din1;
input  [63:0] grp_fu_12389_p_dout0;
output   grp_fu_12389_p_ce;
output  [63:0] grp_fu_12393_p_din0;
output  [63:0] grp_fu_12393_p_din1;
input  [63:0] grp_fu_12393_p_dout0;
output   grp_fu_12393_p_ce;
output  [63:0] grp_fu_12397_p_din0;
output  [63:0] grp_fu_12397_p_din1;
input  [63:0] grp_fu_12397_p_dout0;
output   grp_fu_12397_p_ce;
output  [63:0] grp_fu_12401_p_din0;
output  [63:0] grp_fu_12401_p_din1;
input  [63:0] grp_fu_12401_p_dout0;
output   grp_fu_12401_p_ce;
output  [63:0] grp_fu_12405_p_din0;
output  [63:0] grp_fu_12405_p_din1;
input  [63:0] grp_fu_12405_p_dout0;
output   grp_fu_12405_p_ce;
output  [63:0] grp_fu_12409_p_din0;
output  [63:0] grp_fu_12409_p_din1;
input  [63:0] grp_fu_12409_p_dout0;
output   grp_fu_12409_p_ce;
output  [63:0] grp_fu_12413_p_din0;
output  [63:0] grp_fu_12413_p_din1;
input  [63:0] grp_fu_12413_p_dout0;
output   grp_fu_12413_p_ce;
output  [63:0] grp_fu_12417_p_din0;
output  [63:0] grp_fu_12417_p_din1;
input  [63:0] grp_fu_12417_p_dout0;
output   grp_fu_12417_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2848;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_2853;
reg   [63:0] reg_2858;
reg   [63:0] reg_2863;
reg   [63:0] reg_2868;
reg   [63:0] reg_2873;
reg   [63:0] reg_2878;
reg   [63:0] reg_2883;
reg   [63:0] reg_2888;
reg   [63:0] reg_2893;
reg   [63:0] reg_2898;
reg   [63:0] reg_2903;
reg   [63:0] reg_2908;
reg   [63:0] reg_2913;
reg   [63:0] reg_2918;
reg   [63:0] reg_2923;
reg   [63:0] reg_2928;
reg   [63:0] reg_2933;
reg   [63:0] reg_2938;
reg   [63:0] reg_2943;
reg   [63:0] reg_2948;
reg   [63:0] reg_2953;
reg   [63:0] reg_2958;
reg   [63:0] reg_2963;
reg   [63:0] reg_2968;
reg   [63:0] reg_2973;
reg   [63:0] reg_2978;
reg   [63:0] reg_2983;
reg   [63:0] reg_2988;
reg   [63:0] reg_2993;
reg   [63:0] reg_2998;
reg   [63:0] reg_3003;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state13;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [2:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [2:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg   [2:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg   [2:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg   [2:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg   [2:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
reg   [2:0] delta_weights3_15_address0_local;
reg    delta_weights3_16_we0_local;
reg    delta_weights3_16_ce0_local;
reg   [2:0] delta_weights3_16_address0_local;
reg    delta_weights3_17_we0_local;
reg    delta_weights3_17_ce0_local;
reg   [2:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we0_local;
reg    delta_weights3_18_ce0_local;
reg   [2:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we0_local;
reg    delta_weights3_19_ce0_local;
reg   [2:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we0_local;
reg    delta_weights3_20_ce0_local;
reg   [2:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we0_local;
reg    delta_weights3_21_ce0_local;
reg   [2:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we0_local;
reg    delta_weights3_22_ce0_local;
reg   [2:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we0_local;
reg    delta_weights3_23_ce0_local;
reg   [2:0] delta_weights3_23_address0_local;
reg    delta_weights3_24_we0_local;
reg    delta_weights3_24_ce0_local;
reg   [2:0] delta_weights3_24_address0_local;
reg    delta_weights3_25_we0_local;
reg    delta_weights3_25_ce0_local;
reg   [2:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we0_local;
reg    delta_weights3_26_ce0_local;
reg   [2:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we0_local;
reg    delta_weights3_27_ce0_local;
reg   [2:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we0_local;
reg    delta_weights3_28_ce0_local;
reg   [2:0] delta_weights3_28_address0_local;
reg    delta_weights3_29_we0_local;
reg    delta_weights3_29_ce0_local;
reg   [2:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we0_local;
reg    delta_weights3_30_ce0_local;
reg   [2:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we0_local;
reg    delta_weights3_31_ce0_local;
reg   [2:0] delta_weights3_31_address0_local;
reg   [63:0] grp_fu_2502_p0;
reg   [63:0] grp_fu_2502_p1;
reg   [63:0] grp_fu_2508_p0;
reg   [63:0] grp_fu_2508_p1;
reg   [63:0] grp_fu_2514_p0;
reg   [63:0] grp_fu_2514_p1;
reg   [63:0] grp_fu_2520_p0;
reg   [63:0] grp_fu_2520_p1;
reg   [63:0] grp_fu_2526_p0;
reg   [63:0] grp_fu_2526_p1;
reg   [63:0] grp_fu_2532_p0;
reg   [63:0] grp_fu_2532_p1;
reg   [63:0] grp_fu_2538_p0;
reg   [63:0] grp_fu_2538_p1;
reg   [63:0] grp_fu_2544_p0;
reg   [63:0] grp_fu_2544_p1;
reg   [63:0] grp_fu_2550_p0;
reg   [63:0] grp_fu_2550_p1;
reg   [63:0] grp_fu_2556_p0;
reg   [63:0] grp_fu_2556_p1;
reg   [63:0] grp_fu_2562_p0;
reg   [63:0] grp_fu_2562_p1;
reg   [63:0] grp_fu_2568_p0;
reg   [63:0] grp_fu_2568_p1;
reg   [63:0] grp_fu_2574_p0;
reg   [63:0] grp_fu_2574_p1;
reg   [63:0] grp_fu_2580_p0;
reg   [63:0] grp_fu_2580_p1;
reg   [63:0] grp_fu_2586_p0;
reg   [63:0] grp_fu_2586_p1;
reg   [63:0] grp_fu_2592_p0;
reg   [63:0] grp_fu_2592_p1;
reg   [63:0] grp_fu_2598_p0;
reg   [63:0] grp_fu_2598_p1;
reg   [63:0] grp_fu_2604_p0;
reg   [63:0] grp_fu_2604_p1;
reg   [63:0] grp_fu_2610_p0;
reg   [63:0] grp_fu_2610_p1;
reg   [63:0] grp_fu_2616_p0;
reg   [63:0] grp_fu_2616_p1;
reg   [63:0] grp_fu_2622_p0;
reg   [63:0] grp_fu_2622_p1;
reg   [63:0] grp_fu_2628_p0;
reg   [63:0] grp_fu_2628_p1;
reg   [63:0] grp_fu_2634_p0;
reg   [63:0] grp_fu_2634_p1;
reg   [63:0] grp_fu_2640_p0;
reg   [63:0] grp_fu_2640_p1;
reg   [63:0] grp_fu_2646_p0;
reg   [63:0] grp_fu_2646_p1;
reg   [63:0] grp_fu_2652_p0;
reg   [63:0] grp_fu_2652_p1;
reg   [63:0] grp_fu_2658_p0;
reg   [63:0] grp_fu_2658_p1;
reg   [63:0] grp_fu_2664_p0;
reg   [63:0] grp_fu_2664_p1;
reg   [63:0] grp_fu_2670_p0;
reg   [63:0] grp_fu_2670_p1;
reg   [63:0] grp_fu_2676_p0;
reg   [63:0] grp_fu_2676_p1;
reg   [63:0] grp_fu_2682_p0;
reg   [63:0] grp_fu_2682_p1;
reg   [63:0] grp_fu_2688_p0;
reg   [63:0] grp_fu_2688_p1;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_2848 <= grp_fu_12293_p_dout0;
        reg_2853 <= grp_fu_12297_p_dout0;
        reg_2858 <= grp_fu_12301_p_dout0;
        reg_2863 <= grp_fu_12305_p_dout0;
        reg_2868 <= grp_fu_12309_p_dout0;
        reg_2873 <= grp_fu_12313_p_dout0;
        reg_2878 <= grp_fu_12317_p_dout0;
        reg_2883 <= grp_fu_12321_p_dout0;
        reg_2888 <= grp_fu_12325_p_dout0;
        reg_2893 <= grp_fu_12329_p_dout0;
        reg_2898 <= grp_fu_12333_p_dout0;
        reg_2903 <= grp_fu_12337_p_dout0;
        reg_2908 <= grp_fu_12341_p_dout0;
        reg_2913 <= grp_fu_12345_p_dout0;
        reg_2918 <= grp_fu_12349_p_dout0;
        reg_2923 <= grp_fu_12353_p_dout0;
        reg_2928 <= grp_fu_12357_p_dout0;
        reg_2933 <= grp_fu_12361_p_dout0;
        reg_2938 <= grp_fu_12365_p_dout0;
        reg_2943 <= grp_fu_12369_p_dout0;
        reg_2948 <= grp_fu_12373_p_dout0;
        reg_2953 <= grp_fu_12377_p_dout0;
        reg_2958 <= grp_fu_12381_p_dout0;
        reg_2963 <= grp_fu_12385_p_dout0;
        reg_2968 <= grp_fu_12389_p_dout0;
        reg_2973 <= grp_fu_12393_p_dout0;
        reg_2978 <= grp_fu_12397_p_dout0;
        reg_2983 <= grp_fu_12401_p_dout0;
        reg_2988 <= grp_fu_12405_p_dout0;
        reg_2993 <= grp_fu_12409_p_dout0;
        reg_2998 <= grp_fu_12413_p_dout0;
        reg_3003 <= grp_fu_12417_p_dout0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_address0_local = 64'd0;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_10_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_10_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_10_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_address0_local = 64'd0;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_11_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_11_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_11_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_address0_local = 64'd0;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_12_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_12_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_12_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_address0_local = 64'd0;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_13_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_13_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_13_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_address0_local = 64'd0;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_14_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_14_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_14_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_address0_local = 64'd0;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_15_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_15_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_15_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_address0_local = 64'd0;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_16_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_16_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_16_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_16_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_16_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_address0_local = 64'd0;
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_17_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_17_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_17_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_17_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_17_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_address0_local = 64'd0;
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_18_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_18_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_18_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_18_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_18_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_address0_local = 64'd0;
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_19_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_19_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_19_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_19_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_19_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_address0_local = 64'd0;
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_address0_local = 64'd0;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_20_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_20_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_20_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_20_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_20_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_address0_local = 64'd0;
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_21_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_21_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_21_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_21_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_21_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_address0_local = 64'd0;
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_22_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_22_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_22_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_22_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_22_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_address0_local = 64'd0;
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_23_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_23_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_23_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_23_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_23_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_address0_local = 64'd0;
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_24_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_24_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_24_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_24_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_24_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_address0_local = 64'd0;
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_25_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_25_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_25_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_25_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_25_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_address0_local = 64'd0;
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_26_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_26_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_26_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_26_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_26_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_address0_local = 64'd0;
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_27_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_27_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_27_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_27_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_27_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_address0_local = 64'd0;
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_28_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_28_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_28_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_28_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_28_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_address0_local = 64'd0;
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_29_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_29_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_29_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_29_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_29_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_address0_local = 64'd0;
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_address0_local = 64'd0;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_30_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_30_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_30_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_30_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_30_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_address0_local = 64'd0;
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_31_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_31_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_31_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_31_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_31_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_address0_local = 64'd0;
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_address0_local = 64'd0;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_address0_local = 64'd0;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_address0_local = 64'd0;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_address0_local = 64'd0;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_address0_local = 64'd0;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_8_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_8_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_8_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_address0_local = 64'd0;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_9_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_9_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_9_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_address0_local = 64'd0;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2502_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2502_p0 = last_activations_10_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2502_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2502_p0 = last_activations_21_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2502_p0 = last_activations_10_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2502_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2502_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2502_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2502_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2502_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2502_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2508_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2508_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2508_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2508_p0 = last_activations_21_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2508_p0 = last_activations_11_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2508_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2508_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2508_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2508_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2508_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2514_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2514_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2514_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2514_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2514_p0 = last_activations_11_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2514_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2514_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2514_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2514_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2514_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2514_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2520_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2520_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2520_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2520_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2520_p0 = last_activations_11_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2520_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2520_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2520_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2520_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2520_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2526_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2526_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2526_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2526_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2526_p0 = last_activations_12_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2526_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2526_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2526_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2526_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2526_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2532_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2532_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2532_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2532_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2532_p0 = last_activations_12_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2532_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2532_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2532_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2532_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2532_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2538_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2538_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2538_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2538_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2538_p0 = last_activations_12_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2538_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2538_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2538_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2538_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2538_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2544_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2544_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2544_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2544_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2544_p0 = last_activations_13_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2544_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2544_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2544_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2544_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2544_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2544_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2550_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2550_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2550_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2550_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2550_p0 = last_activations_13_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2550_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2550_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2550_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2550_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2550_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2550_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2556_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2556_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2556_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2556_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2556_p0 = last_activations_13_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2556_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2556_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2556_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2556_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2556_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2556_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2562_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2562_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2562_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2562_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2562_p0 = last_activations_14_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2562_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2562_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2562_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2562_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2568_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2568_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2568_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2568_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2568_p0 = last_activations_14_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2568_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2568_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2568_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2568_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2568_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2568_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2574_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2574_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2574_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2574_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2574_p0 = last_activations_14_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2574_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2574_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2574_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2574_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2574_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2580_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2580_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2580_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2580_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2580_p0 = last_activations_15_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2580_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2580_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2580_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2580_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2580_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2586_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2586_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2586_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2586_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2586_p0 = last_activations_15_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2586_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2586_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2586_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2586_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2586_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2586_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2592_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2592_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2592_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2592_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2592_p0 = last_activations_15_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2592_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2592_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2592_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2592_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2592_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2598_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2598_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2598_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2598_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2598_p0 = last_activations_16_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2598_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2598_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2598_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2598_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2598_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2598_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2604_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2604_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2604_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2604_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2604_p0 = last_activations_16_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2604_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2604_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2604_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2604_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2604_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2610_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2610_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2610_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2610_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2610_p0 = last_activations_16_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2610_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2610_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2610_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2610_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2610_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2610_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2616_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2616_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2616_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2616_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2616_p0 = last_activations_17_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2616_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2616_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2616_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2616_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2616_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2622_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2622_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2622_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2622_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2622_p0 = last_activations_17_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2622_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2622_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2622_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2622_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2622_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2622_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2628_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2628_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2628_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2628_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2628_p0 = last_activations_17_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2628_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2628_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2628_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2628_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2628_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2634_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2634_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2634_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2634_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2634_p0 = last_activations_18_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2634_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2634_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2634_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2634_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2634_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2640_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2640_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2640_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2640_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2640_p0 = last_activations_18_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2640_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2640_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2640_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2640_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2640_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2640_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2646_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2646_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2646_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2646_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2646_p0 = last_activations_18_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2646_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2646_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2646_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2646_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2646_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2646_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2652_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2652_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2652_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2652_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2652_p0 = last_activations_19_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2652_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2652_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2652_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2652_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2652_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2652_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2658_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2658_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2658_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2658_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2658_p0 = last_activations_19_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2658_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2658_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2658_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2658_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2658_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2658_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2664_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2664_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2664_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2664_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2664_p0 = last_activations_19_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2664_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2664_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2664_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2664_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2664_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2664_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2670_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2670_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2670_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2670_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2670_p0 = last_activations_20_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2670_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2670_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2670_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2670_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2670_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2670_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2676_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2676_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2676_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2676_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2676_p0 = last_activations_20_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2676_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2676_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2676_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2676_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2676_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2676_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2682_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2682_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2682_p0 = last_activations_10_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2682_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2682_p0 = last_activations_20_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2682_p0 = last_activations_10_0_0_val;
    end else begin
        grp_fu_2682_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2682_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2682_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2682_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2682_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2688_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2688_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2688_p0 = last_activations_10_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2688_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2688_p0 = last_activations_21_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2688_p0 = last_activations_10_0_0_val;
    end else begin
        grp_fu_2688_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2688_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2688_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2688_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2688_p1 = 'bx;
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
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
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_d0 = reg_2848;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_d0 = reg_2898;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_d0 = reg_2903;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_d0 = reg_2908;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_d0 = reg_2913;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_d0 = reg_2918;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_d0 = reg_2923;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_d0 = reg_2928;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_d0 = reg_2933;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_d0 = reg_2938;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_d0 = reg_2943;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = reg_2853;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_d0 = reg_2948;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_d0 = reg_2953;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_d0 = reg_2958;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_d0 = reg_2963;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_d0 = reg_2968;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_d0 = reg_2973;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_d0 = reg_2978;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_d0 = reg_2983;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_d0 = reg_2988;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_d0 = reg_2993;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = reg_2858;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_d0 = reg_2998;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_d0 = reg_3003;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = reg_2863;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = reg_2868;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = reg_2873;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = reg_2878;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = reg_2883;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_d0 = reg_2888;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_d0 = reg_2893;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign grp_fu_12293_p_ce = 1'b1;
assign grp_fu_12293_p_din0 = grp_fu_2502_p0;
assign grp_fu_12293_p_din1 = grp_fu_2502_p1;
assign grp_fu_12297_p_ce = 1'b1;
assign grp_fu_12297_p_din0 = grp_fu_2508_p0;
assign grp_fu_12297_p_din1 = grp_fu_2508_p1;
assign grp_fu_12301_p_ce = 1'b1;
assign grp_fu_12301_p_din0 = grp_fu_2514_p0;
assign grp_fu_12301_p_din1 = grp_fu_2514_p1;
assign grp_fu_12305_p_ce = 1'b1;
assign grp_fu_12305_p_din0 = grp_fu_2520_p0;
assign grp_fu_12305_p_din1 = grp_fu_2520_p1;
assign grp_fu_12309_p_ce = 1'b1;
assign grp_fu_12309_p_din0 = grp_fu_2526_p0;
assign grp_fu_12309_p_din1 = grp_fu_2526_p1;
assign grp_fu_12313_p_ce = 1'b1;
assign grp_fu_12313_p_din0 = grp_fu_2532_p0;
assign grp_fu_12313_p_din1 = grp_fu_2532_p1;
assign grp_fu_12317_p_ce = 1'b1;
assign grp_fu_12317_p_din0 = grp_fu_2538_p0;
assign grp_fu_12317_p_din1 = grp_fu_2538_p1;
assign grp_fu_12321_p_ce = 1'b1;
assign grp_fu_12321_p_din0 = grp_fu_2544_p0;
assign grp_fu_12321_p_din1 = grp_fu_2544_p1;
assign grp_fu_12325_p_ce = 1'b1;
assign grp_fu_12325_p_din0 = grp_fu_2550_p0;
assign grp_fu_12325_p_din1 = grp_fu_2550_p1;
assign grp_fu_12329_p_ce = 1'b1;
assign grp_fu_12329_p_din0 = grp_fu_2556_p0;
assign grp_fu_12329_p_din1 = grp_fu_2556_p1;
assign grp_fu_12333_p_ce = 1'b1;
assign grp_fu_12333_p_din0 = grp_fu_2562_p0;
assign grp_fu_12333_p_din1 = grp_fu_2562_p1;
assign grp_fu_12337_p_ce = 1'b1;
assign grp_fu_12337_p_din0 = grp_fu_2568_p0;
assign grp_fu_12337_p_din1 = grp_fu_2568_p1;
assign grp_fu_12341_p_ce = 1'b1;
assign grp_fu_12341_p_din0 = grp_fu_2574_p0;
assign grp_fu_12341_p_din1 = grp_fu_2574_p1;
assign grp_fu_12345_p_ce = 1'b1;
assign grp_fu_12345_p_din0 = grp_fu_2580_p0;
assign grp_fu_12345_p_din1 = grp_fu_2580_p1;
assign grp_fu_12349_p_ce = 1'b1;
assign grp_fu_12349_p_din0 = grp_fu_2586_p0;
assign grp_fu_12349_p_din1 = grp_fu_2586_p1;
assign grp_fu_12353_p_ce = 1'b1;
assign grp_fu_12353_p_din0 = grp_fu_2592_p0;
assign grp_fu_12353_p_din1 = grp_fu_2592_p1;
assign grp_fu_12357_p_ce = 1'b1;
assign grp_fu_12357_p_din0 = grp_fu_2598_p0;
assign grp_fu_12357_p_din1 = grp_fu_2598_p1;
assign grp_fu_12361_p_ce = 1'b1;
assign grp_fu_12361_p_din0 = grp_fu_2604_p0;
assign grp_fu_12361_p_din1 = grp_fu_2604_p1;
assign grp_fu_12365_p_ce = 1'b1;
assign grp_fu_12365_p_din0 = grp_fu_2610_p0;
assign grp_fu_12365_p_din1 = grp_fu_2610_p1;
assign grp_fu_12369_p_ce = 1'b1;
assign grp_fu_12369_p_din0 = grp_fu_2616_p0;
assign grp_fu_12369_p_din1 = grp_fu_2616_p1;
assign grp_fu_12373_p_ce = 1'b1;
assign grp_fu_12373_p_din0 = grp_fu_2622_p0;
assign grp_fu_12373_p_din1 = grp_fu_2622_p1;
assign grp_fu_12377_p_ce = 1'b1;
assign grp_fu_12377_p_din0 = grp_fu_2628_p0;
assign grp_fu_12377_p_din1 = grp_fu_2628_p1;
assign grp_fu_12381_p_ce = 1'b1;
assign grp_fu_12381_p_din0 = grp_fu_2634_p0;
assign grp_fu_12381_p_din1 = grp_fu_2634_p1;
assign grp_fu_12385_p_ce = 1'b1;
assign grp_fu_12385_p_din0 = grp_fu_2640_p0;
assign grp_fu_12385_p_din1 = grp_fu_2640_p1;
assign grp_fu_12389_p_ce = 1'b1;
assign grp_fu_12389_p_din0 = grp_fu_2646_p0;
assign grp_fu_12389_p_din1 = grp_fu_2646_p1;
assign grp_fu_12393_p_ce = 1'b1;
assign grp_fu_12393_p_din0 = grp_fu_2652_p0;
assign grp_fu_12393_p_din1 = grp_fu_2652_p1;
assign grp_fu_12397_p_ce = 1'b1;
assign grp_fu_12397_p_din0 = grp_fu_2658_p0;
assign grp_fu_12397_p_din1 = grp_fu_2658_p1;
assign grp_fu_12401_p_ce = 1'b1;
assign grp_fu_12401_p_din0 = grp_fu_2664_p0;
assign grp_fu_12401_p_din1 = grp_fu_2664_p1;
assign grp_fu_12405_p_ce = 1'b1;
assign grp_fu_12405_p_din0 = grp_fu_2670_p0;
assign grp_fu_12405_p_din1 = grp_fu_2670_p1;
assign grp_fu_12409_p_ce = 1'b1;
assign grp_fu_12409_p_din0 = grp_fu_2676_p0;
assign grp_fu_12409_p_din1 = grp_fu_2676_p1;
assign grp_fu_12413_p_ce = 1'b1;
assign grp_fu_12413_p_din0 = grp_fu_2682_p0;
assign grp_fu_12413_p_din1 = grp_fu_2682_p1;
assign grp_fu_12417_p_ce = 1'b1;
assign grp_fu_12417_p_din0 = grp_fu_2688_p0;
assign grp_fu_12417_p_din1 = grp_fu_2688_p1;
endmodule 