module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_24_address1,delta_weights3_24_ce1,delta_weights3_24_we1,delta_weights3_24_d1,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_25_address1,delta_weights3_25_ce1,delta_weights3_25_we1,delta_weights3_25_d1,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_26_address1,delta_weights3_26_ce1,delta_weights3_26_we1,delta_weights3_26_d1,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_27_address1,delta_weights3_27_ce1,delta_weights3_27_we1,delta_weights3_27_d1,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_28_address1,delta_weights3_28_ce1,delta_weights3_28_we1,delta_weights3_28_d1,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_29_address1,delta_weights3_29_ce1,delta_weights3_29_we1,delta_weights3_29_d1,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_30_address1,delta_weights3_30_ce1,delta_weights3_30_we1,delta_weights3_30_d1,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_31_address1,delta_weights3_31_ce1,delta_weights3_31_we1,delta_weights3_31_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_0_0_val,last_activations_0_0_1_val,last_activations_1_0_0_val,last_activations_1_0_1_val,last_activations_2_0_0_val,last_activations_2_0_1_val,last_activations_3_0_0_val,last_activations_3_0_1_val,last_activations_4_0_0_val,last_activations_4_0_1_val,last_activations_5_0_0_val,last_activations_5_0_1_val,last_activations_6_0_0_val,last_activations_6_0_1_val,last_activations_7_0_0_val,last_activations_7_0_1_val,last_activations_8_0_0_val,last_activations_8_0_1_val,last_activations_9_0_0_val,last_activations_9_0_1_val,last_activations_10_0_0_val,last_activations_10_0_1_val,last_activations_11_0_0_val,last_activations_11_0_1_val,last_activations_12_0_0_val,last_activations_12_0_1_val,last_activations_13_0_0_val,last_activations_13_0_1_val,last_activations_14_0_0_val,last_activations_14_0_1_val,last_activations_15_0_0_val,last_activations_15_0_1_val,last_activations_16_0_0_val,last_activations_16_0_1_val,last_activations_17_0_0_val,last_activations_17_0_1_val,last_activations_18_0_0_val,last_activations_18_0_1_val,last_activations_19_0_0_val,last_activations_19_0_1_val,last_activations_20_0_0_val,last_activations_20_0_1_val,last_activations_21_0_0_val,last_activations_21_0_1_val,last_activations_22_0_0_val,last_activations_22_0_1_val,last_activations_23_0_0_val,last_activations_23_0_1_val,last_activations_24_0_0_val,last_activations_24_0_1_val,last_activations_25_0_0_val,last_activations_25_0_1_val,last_activations_26_0_0_val,last_activations_26_0_1_val,last_activations_27_0_0_val,last_activations_27_0_1_val,last_activations_28_0_0_val,last_activations_28_0_1_val,last_activations_29_0_0_val,last_activations_29_0_1_val,last_activations_30_0_0_val,last_activations_30_0_1_val,last_activations_31_0_0_val,last_activations_31_0_1_val,grp_fu_12293_p_din0,grp_fu_12293_p_din1,grp_fu_12293_p_dout0,grp_fu_12293_p_ce,grp_fu_12297_p_din0,grp_fu_12297_p_din1,grp_fu_12297_p_dout0,grp_fu_12297_p_ce,grp_fu_12301_p_din0,grp_fu_12301_p_din1,grp_fu_12301_p_dout0,grp_fu_12301_p_ce,grp_fu_12305_p_din0,grp_fu_12305_p_din1,grp_fu_12305_p_dout0,grp_fu_12305_p_ce,grp_fu_12309_p_din0,grp_fu_12309_p_din1,grp_fu_12309_p_dout0,grp_fu_12309_p_ce,grp_fu_12313_p_din0,grp_fu_12313_p_din1,grp_fu_12313_p_dout0,grp_fu_12313_p_ce,grp_fu_12317_p_din0,grp_fu_12317_p_din1,grp_fu_12317_p_dout0,grp_fu_12317_p_ce,grp_fu_12321_p_din0,grp_fu_12321_p_din1,grp_fu_12321_p_dout0,grp_fu_12321_p_ce,grp_fu_12325_p_din0,grp_fu_12325_p_din1,grp_fu_12325_p_dout0,grp_fu_12325_p_ce,grp_fu_12329_p_din0,grp_fu_12329_p_din1,grp_fu_12329_p_dout0,grp_fu_12329_p_ce,grp_fu_12333_p_din0,grp_fu_12333_p_din1,grp_fu_12333_p_dout0,grp_fu_12333_p_ce,grp_fu_12337_p_din0,grp_fu_12337_p_din1,grp_fu_12337_p_dout0,grp_fu_12337_p_ce,grp_fu_12341_p_din0,grp_fu_12341_p_din1,grp_fu_12341_p_dout0,grp_fu_12341_p_ce,grp_fu_12345_p_din0,grp_fu_12345_p_din1,grp_fu_12345_p_dout0,grp_fu_12345_p_ce,grp_fu_12349_p_din0,grp_fu_12349_p_din1,grp_fu_12349_p_dout0,grp_fu_12349_p_ce,grp_fu_12353_p_din0,grp_fu_12353_p_din1,grp_fu_12353_p_dout0,grp_fu_12353_p_ce,grp_fu_12357_p_din0,grp_fu_12357_p_din1,grp_fu_12357_p_dout0,grp_fu_12357_p_ce,grp_fu_12361_p_din0,grp_fu_12361_p_din1,grp_fu_12361_p_dout0,grp_fu_12361_p_ce,grp_fu_12365_p_din0,grp_fu_12365_p_din1,grp_fu_12365_p_dout0,grp_fu_12365_p_ce,grp_fu_12369_p_din0,grp_fu_12369_p_din1,grp_fu_12369_p_dout0,grp_fu_12369_p_ce,grp_fu_12373_p_din0,grp_fu_12373_p_din1,grp_fu_12373_p_dout0,grp_fu_12373_p_ce,grp_fu_12377_p_din0,grp_fu_12377_p_din1,grp_fu_12377_p_dout0,grp_fu_12377_p_ce,grp_fu_12381_p_din0,grp_fu_12381_p_din1,grp_fu_12381_p_dout0,grp_fu_12381_p_ce,grp_fu_12385_p_din0,grp_fu_12385_p_din1,grp_fu_12385_p_dout0,grp_fu_12385_p_ce,grp_fu_12389_p_din0,grp_fu_12389_p_din1,grp_fu_12389_p_dout0,grp_fu_12389_p_ce,grp_fu_12393_p_din0,grp_fu_12393_p_din1,grp_fu_12393_p_dout0,grp_fu_12393_p_ce,grp_fu_12397_p_din0,grp_fu_12397_p_din1,grp_fu_12397_p_dout0,grp_fu_12397_p_ce,grp_fu_12401_p_din0,grp_fu_12401_p_din1,grp_fu_12401_p_dout0,grp_fu_12401_p_ce,grp_fu_12405_p_din0,grp_fu_12405_p_din1,grp_fu_12405_p_dout0,grp_fu_12405_p_ce,grp_fu_12409_p_din0,grp_fu_12409_p_din1,grp_fu_12409_p_dout0,grp_fu_12409_p_ce,grp_fu_12413_p_din0,grp_fu_12413_p_din1,grp_fu_12413_p_dout0,grp_fu_12413_p_ce,grp_fu_12417_p_din0,grp_fu_12417_p_din1,grp_fu_12417_p_dout0,grp_fu_12417_p_ce,grp_fu_12421_p_din0,grp_fu_12421_p_din1,grp_fu_12421_p_dout0,grp_fu_12421_p_ce,grp_fu_12425_p_din0,grp_fu_12425_p_din1,grp_fu_12425_p_dout0,grp_fu_12425_p_ce,grp_fu_12429_p_din0,grp_fu_12429_p_din1,grp_fu_12429_p_dout0,grp_fu_12429_p_ce,grp_fu_12433_p_din0,grp_fu_12433_p_din1,grp_fu_12433_p_dout0,grp_fu_12433_p_ce,grp_fu_12437_p_din0,grp_fu_12437_p_din1,grp_fu_12437_p_dout0,grp_fu_12437_p_ce,grp_fu_12441_p_din0,grp_fu_12441_p_din1,grp_fu_12441_p_dout0,grp_fu_12441_p_ce,grp_fu_12445_p_din0,grp_fu_12445_p_din1,grp_fu_12445_p_dout0,grp_fu_12445_p_ce,grp_fu_12449_p_din0,grp_fu_12449_p_din1,grp_fu_12449_p_dout0,grp_fu_12449_p_ce,grp_fu_12453_p_din0,grp_fu_12453_p_din1,grp_fu_12453_p_dout0,grp_fu_12453_p_ce,grp_fu_12457_p_din0,grp_fu_12457_p_din1,grp_fu_12457_p_dout0,grp_fu_12457_p_ce,grp_fu_12461_p_din0,grp_fu_12461_p_din1,grp_fu_12461_p_dout0,grp_fu_12461_p_ce,grp_fu_12465_p_din0,grp_fu_12465_p_din1,grp_fu_12465_p_dout0,grp_fu_12465_p_ce,grp_fu_12469_p_din0,grp_fu_12469_p_din1,grp_fu_12469_p_dout0,grp_fu_12469_p_ce,grp_fu_12473_p_din0,grp_fu_12473_p_din1,grp_fu_12473_p_dout0,grp_fu_12473_p_ce,grp_fu_12477_p_din0,grp_fu_12477_p_din1,grp_fu_12477_p_dout0,grp_fu_12477_p_ce,grp_fu_12481_p_din0,grp_fu_12481_p_din1,grp_fu_12481_p_dout0,grp_fu_12481_p_ce,grp_fu_12485_p_din0,grp_fu_12485_p_din1,grp_fu_12485_p_dout0,grp_fu_12485_p_ce,grp_fu_12489_p_din0,grp_fu_12489_p_din1,grp_fu_12489_p_dout0,grp_fu_12489_p_ce,grp_fu_12493_p_din0,grp_fu_12493_p_din1,grp_fu_12493_p_dout0,grp_fu_12493_p_ce,grp_fu_12497_p_din0,grp_fu_12497_p_din1,grp_fu_12497_p_dout0,grp_fu_12497_p_ce,grp_fu_12501_p_din0,grp_fu_12501_p_din1,grp_fu_12501_p_dout0,grp_fu_12501_p_ce,grp_fu_12505_p_din0,grp_fu_12505_p_din1,grp_fu_12505_p_dout0,grp_fu_12505_p_ce,grp_fu_12509_p_din0,grp_fu_12509_p_din1,grp_fu_12509_p_dout0,grp_fu_12509_p_ce,grp_fu_12513_p_din0,grp_fu_12513_p_din1,grp_fu_12513_p_dout0,grp_fu_12513_p_ce,grp_fu_12517_p_din0,grp_fu_12517_p_din1,grp_fu_12517_p_dout0,grp_fu_12517_p_ce,grp_fu_12521_p_din0,grp_fu_12521_p_din1,grp_fu_12521_p_dout0,grp_fu_12521_p_ce,grp_fu_12525_p_din0,grp_fu_12525_p_din1,grp_fu_12525_p_dout0,grp_fu_12525_p_ce,grp_fu_12529_p_din0,grp_fu_12529_p_din1,grp_fu_12529_p_dout0,grp_fu_12529_p_ce,grp_fu_12533_p_din0,grp_fu_12533_p_din1,grp_fu_12533_p_dout0,grp_fu_12533_p_ce,grp_fu_12537_p_din0,grp_fu_12537_p_din1,grp_fu_12537_p_dout0,grp_fu_12537_p_ce,grp_fu_12541_p_din0,grp_fu_12541_p_din1,grp_fu_12541_p_dout0,grp_fu_12541_p_ce,grp_fu_12545_p_din0,grp_fu_12545_p_din1,grp_fu_12545_p_dout0,grp_fu_12545_p_ce,grp_fu_12557_p_din0,grp_fu_12557_p_din1,grp_fu_12557_p_dout0,grp_fu_12557_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
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
output  [2:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_12_address1;
output   delta_weights3_12_ce1;
output   delta_weights3_12_we1;
output  [63:0] delta_weights3_12_d1;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_13_address1;
output   delta_weights3_13_ce1;
output   delta_weights3_13_we1;
output  [63:0] delta_weights3_13_d1;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_14_address1;
output   delta_weights3_14_ce1;
output   delta_weights3_14_we1;
output  [63:0] delta_weights3_14_d1;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_15_address1;
output   delta_weights3_15_ce1;
output   delta_weights3_15_we1;
output  [63:0] delta_weights3_15_d1;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_16_address1;
output   delta_weights3_16_ce1;
output   delta_weights3_16_we1;
output  [63:0] delta_weights3_16_d1;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_17_address1;
output   delta_weights3_17_ce1;
output   delta_weights3_17_we1;
output  [63:0] delta_weights3_17_d1;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_18_address1;
output   delta_weights3_18_ce1;
output   delta_weights3_18_we1;
output  [63:0] delta_weights3_18_d1;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_19_address1;
output   delta_weights3_19_ce1;
output   delta_weights3_19_we1;
output  [63:0] delta_weights3_19_d1;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_20_address1;
output   delta_weights3_20_ce1;
output   delta_weights3_20_we1;
output  [63:0] delta_weights3_20_d1;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_21_address1;
output   delta_weights3_21_ce1;
output   delta_weights3_21_we1;
output  [63:0] delta_weights3_21_d1;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_22_address1;
output   delta_weights3_22_ce1;
output   delta_weights3_22_we1;
output  [63:0] delta_weights3_22_d1;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_23_address1;
output   delta_weights3_23_ce1;
output   delta_weights3_23_we1;
output  [63:0] delta_weights3_23_d1;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_24_address1;
output   delta_weights3_24_ce1;
output   delta_weights3_24_we1;
output  [63:0] delta_weights3_24_d1;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_25_address1;
output   delta_weights3_25_ce1;
output   delta_weights3_25_we1;
output  [63:0] delta_weights3_25_d1;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_26_address1;
output   delta_weights3_26_ce1;
output   delta_weights3_26_we1;
output  [63:0] delta_weights3_26_d1;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_27_address1;
output   delta_weights3_27_ce1;
output   delta_weights3_27_we1;
output  [63:0] delta_weights3_27_d1;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_28_address1;
output   delta_weights3_28_ce1;
output   delta_weights3_28_we1;
output  [63:0] delta_weights3_28_d1;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_29_address1;
output   delta_weights3_29_ce1;
output   delta_weights3_29_we1;
output  [63:0] delta_weights3_29_d1;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_30_address1;
output   delta_weights3_30_ce1;
output   delta_weights3_30_we1;
output  [63:0] delta_weights3_30_d1;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [2:0] delta_weights3_31_address1;
output   delta_weights3_31_ce1;
output   delta_weights3_31_we1;
output  [63:0] delta_weights3_31_d1;
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
output  [63:0] grp_fu_12421_p_din0;
output  [63:0] grp_fu_12421_p_din1;
input  [63:0] grp_fu_12421_p_dout0;
output   grp_fu_12421_p_ce;
output  [63:0] grp_fu_12425_p_din0;
output  [63:0] grp_fu_12425_p_din1;
input  [63:0] grp_fu_12425_p_dout0;
output   grp_fu_12425_p_ce;
output  [63:0] grp_fu_12429_p_din0;
output  [63:0] grp_fu_12429_p_din1;
input  [63:0] grp_fu_12429_p_dout0;
output   grp_fu_12429_p_ce;
output  [63:0] grp_fu_12433_p_din0;
output  [63:0] grp_fu_12433_p_din1;
input  [63:0] grp_fu_12433_p_dout0;
output   grp_fu_12433_p_ce;
output  [63:0] grp_fu_12437_p_din0;
output  [63:0] grp_fu_12437_p_din1;
input  [63:0] grp_fu_12437_p_dout0;
output   grp_fu_12437_p_ce;
output  [63:0] grp_fu_12441_p_din0;
output  [63:0] grp_fu_12441_p_din1;
input  [63:0] grp_fu_12441_p_dout0;
output   grp_fu_12441_p_ce;
output  [63:0] grp_fu_12445_p_din0;
output  [63:0] grp_fu_12445_p_din1;
input  [63:0] grp_fu_12445_p_dout0;
output   grp_fu_12445_p_ce;
output  [63:0] grp_fu_12449_p_din0;
output  [63:0] grp_fu_12449_p_din1;
input  [63:0] grp_fu_12449_p_dout0;
output   grp_fu_12449_p_ce;
output  [63:0] grp_fu_12453_p_din0;
output  [63:0] grp_fu_12453_p_din1;
input  [63:0] grp_fu_12453_p_dout0;
output   grp_fu_12453_p_ce;
output  [63:0] grp_fu_12457_p_din0;
output  [63:0] grp_fu_12457_p_din1;
input  [63:0] grp_fu_12457_p_dout0;
output   grp_fu_12457_p_ce;
output  [63:0] grp_fu_12461_p_din0;
output  [63:0] grp_fu_12461_p_din1;
input  [63:0] grp_fu_12461_p_dout0;
output   grp_fu_12461_p_ce;
output  [63:0] grp_fu_12465_p_din0;
output  [63:0] grp_fu_12465_p_din1;
input  [63:0] grp_fu_12465_p_dout0;
output   grp_fu_12465_p_ce;
output  [63:0] grp_fu_12469_p_din0;
output  [63:0] grp_fu_12469_p_din1;
input  [63:0] grp_fu_12469_p_dout0;
output   grp_fu_12469_p_ce;
output  [63:0] grp_fu_12473_p_din0;
output  [63:0] grp_fu_12473_p_din1;
input  [63:0] grp_fu_12473_p_dout0;
output   grp_fu_12473_p_ce;
output  [63:0] grp_fu_12477_p_din0;
output  [63:0] grp_fu_12477_p_din1;
input  [63:0] grp_fu_12477_p_dout0;
output   grp_fu_12477_p_ce;
output  [63:0] grp_fu_12481_p_din0;
output  [63:0] grp_fu_12481_p_din1;
input  [63:0] grp_fu_12481_p_dout0;
output   grp_fu_12481_p_ce;
output  [63:0] grp_fu_12485_p_din0;
output  [63:0] grp_fu_12485_p_din1;
input  [63:0] grp_fu_12485_p_dout0;
output   grp_fu_12485_p_ce;
output  [63:0] grp_fu_12489_p_din0;
output  [63:0] grp_fu_12489_p_din1;
input  [63:0] grp_fu_12489_p_dout0;
output   grp_fu_12489_p_ce;
output  [63:0] grp_fu_12493_p_din0;
output  [63:0] grp_fu_12493_p_din1;
input  [63:0] grp_fu_12493_p_dout0;
output   grp_fu_12493_p_ce;
output  [63:0] grp_fu_12497_p_din0;
output  [63:0] grp_fu_12497_p_din1;
input  [63:0] grp_fu_12497_p_dout0;
output   grp_fu_12497_p_ce;
output  [63:0] grp_fu_12501_p_din0;
output  [63:0] grp_fu_12501_p_din1;
input  [63:0] grp_fu_12501_p_dout0;
output   grp_fu_12501_p_ce;
output  [63:0] grp_fu_12505_p_din0;
output  [63:0] grp_fu_12505_p_din1;
input  [63:0] grp_fu_12505_p_dout0;
output   grp_fu_12505_p_ce;
output  [63:0] grp_fu_12509_p_din0;
output  [63:0] grp_fu_12509_p_din1;
input  [63:0] grp_fu_12509_p_dout0;
output   grp_fu_12509_p_ce;
output  [63:0] grp_fu_12513_p_din0;
output  [63:0] grp_fu_12513_p_din1;
input  [63:0] grp_fu_12513_p_dout0;
output   grp_fu_12513_p_ce;
output  [63:0] grp_fu_12517_p_din0;
output  [63:0] grp_fu_12517_p_din1;
input  [63:0] grp_fu_12517_p_dout0;
output   grp_fu_12517_p_ce;
output  [63:0] grp_fu_12521_p_din0;
output  [63:0] grp_fu_12521_p_din1;
input  [63:0] grp_fu_12521_p_dout0;
output   grp_fu_12521_p_ce;
output  [63:0] grp_fu_12525_p_din0;
output  [63:0] grp_fu_12525_p_din1;
input  [63:0] grp_fu_12525_p_dout0;
output   grp_fu_12525_p_ce;
output  [63:0] grp_fu_12529_p_din0;
output  [63:0] grp_fu_12529_p_din1;
input  [63:0] grp_fu_12529_p_dout0;
output   grp_fu_12529_p_ce;
output  [63:0] grp_fu_12533_p_din0;
output  [63:0] grp_fu_12533_p_din1;
input  [63:0] grp_fu_12533_p_dout0;
output   grp_fu_12533_p_ce;
output  [63:0] grp_fu_12537_p_din0;
output  [63:0] grp_fu_12537_p_din1;
input  [63:0] grp_fu_12537_p_dout0;
output   grp_fu_12537_p_ce;
output  [63:0] grp_fu_12541_p_din0;
output  [63:0] grp_fu_12541_p_din1;
input  [63:0] grp_fu_12541_p_dout0;
output   grp_fu_12541_p_ce;
output  [63:0] grp_fu_12545_p_din0;
output  [63:0] grp_fu_12545_p_din1;
input  [63:0] grp_fu_12545_p_dout0;
output   grp_fu_12545_p_ce;
output  [63:0] grp_fu_12557_p_din0;
output  [63:0] grp_fu_12557_p_din1;
input  [63:0] grp_fu_12557_p_dout0;
output   grp_fu_12557_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3144;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [63:0] reg_3150;
reg   [63:0] reg_3156;
reg   [63:0] reg_3162;
reg   [63:0] reg_3168;
reg   [63:0] reg_3174;
reg   [63:0] reg_3180;
reg   [63:0] reg_3186;
reg   [63:0] reg_3192;
reg   [63:0] reg_3198;
reg   [63:0] reg_3204;
reg   [63:0] reg_3210;
reg   [63:0] reg_3216;
reg   [63:0] reg_3222;
reg   [63:0] reg_3228;
reg   [63:0] reg_3234;
reg   [63:0] reg_3240;
reg   [63:0] reg_3246;
reg   [63:0] reg_3252;
reg   [63:0] reg_3258;
reg   [63:0] reg_3264;
reg   [63:0] reg_3270;
reg   [63:0] reg_3276;
reg   [63:0] reg_3282;
reg   [63:0] reg_3288;
reg   [63:0] reg_3294;
reg   [63:0] reg_3300;
reg   [63:0] reg_3306;
reg   [63:0] reg_3312;
reg   [63:0] reg_3318;
reg   [63:0] reg_3324;
reg   [63:0] reg_3330;
reg   [63:0] reg_3336;
reg   [63:0] reg_3342;
reg   [63:0] reg_3348;
reg   [63:0] reg_3354;
reg   [63:0] reg_3360;
reg   [63:0] reg_3366;
reg   [63:0] reg_3372;
reg   [63:0] reg_3378;
reg   [63:0] reg_3384;
reg   [63:0] reg_3390;
reg   [63:0] reg_3396;
reg   [63:0] reg_3402;
reg   [63:0] reg_3408;
reg   [63:0] reg_3414;
reg   [63:0] reg_3420;
reg   [63:0] reg_3426;
reg   [63:0] reg_3432;
reg   [63:0] reg_3438;
reg   [63:0] reg_3444;
reg   [63:0] reg_3450;
reg   [63:0] reg_3456;
reg   [63:0] reg_3462;
reg   [63:0] reg_3468;
reg   [63:0] reg_3474;
reg   [63:0] reg_3480;
reg   [63:0] reg_3486;
reg   [63:0] reg_3492;
reg   [63:0] reg_3498;
reg   [63:0] reg_3504;
reg   [63:0] reg_3510;
reg   [63:0] reg_3516;
reg   [63:0] reg_3522;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [63:0] mul_42_2_reg_4116;
wire    ap_CS_fsm_state10;
reg    delta_weights3_0_we1_local;
reg   [63:0] delta_weights3_0_d1_local;
reg    delta_weights3_0_ce1_local;
reg   [2:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [2:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [2:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [2:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [2:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [2:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [2:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [2:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg   [63:0] delta_weights3_4_d1_local;
reg    delta_weights3_4_ce1_local;
reg   [2:0] delta_weights3_4_address1_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg   [63:0] delta_weights3_5_d1_local;
reg    delta_weights3_5_ce1_local;
reg   [2:0] delta_weights3_5_address1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg   [63:0] delta_weights3_6_d1_local;
reg    delta_weights3_6_ce1_local;
reg   [2:0] delta_weights3_6_address1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [2:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [2:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we1_local;
reg   [63:0] delta_weights3_8_d1_local;
reg    delta_weights3_8_ce1_local;
reg   [2:0] delta_weights3_8_address1_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we1_local;
reg   [63:0] delta_weights3_9_d1_local;
reg    delta_weights3_9_ce1_local;
reg   [2:0] delta_weights3_9_address1_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we1_local;
reg   [63:0] delta_weights3_10_d1_local;
reg    delta_weights3_10_ce1_local;
reg   [2:0] delta_weights3_10_address1_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we1_local;
reg   [63:0] delta_weights3_11_d1_local;
reg    delta_weights3_11_ce1_local;
reg   [2:0] delta_weights3_11_address1_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [2:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we1_local;
reg   [63:0] delta_weights3_12_d1_local;
reg    delta_weights3_12_ce1_local;
reg   [2:0] delta_weights3_12_address1_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we1_local;
reg   [63:0] delta_weights3_13_d1_local;
reg    delta_weights3_13_ce1_local;
reg   [2:0] delta_weights3_13_address1_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we1_local;
reg   [63:0] delta_weights3_14_d1_local;
reg    delta_weights3_14_ce1_local;
reg   [2:0] delta_weights3_14_address1_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we1_local;
reg   [63:0] delta_weights3_15_d1_local;
reg    delta_weights3_15_ce1_local;
reg   [2:0] delta_weights3_15_address1_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [2:0] delta_weights3_15_address0_local;
reg    delta_weights3_16_we1_local;
reg   [63:0] delta_weights3_16_d1_local;
reg    delta_weights3_16_ce1_local;
reg   [2:0] delta_weights3_16_address1_local;
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [2:0] delta_weights3_16_address0_local;
reg    delta_weights3_17_we1_local;
reg   [63:0] delta_weights3_17_d1_local;
reg    delta_weights3_17_ce1_local;
reg   [2:0] delta_weights3_17_address1_local;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [2:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we1_local;
reg   [63:0] delta_weights3_18_d1_local;
reg    delta_weights3_18_ce1_local;
reg   [2:0] delta_weights3_18_address1_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [2:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we1_local;
reg   [63:0] delta_weights3_19_d1_local;
reg    delta_weights3_19_ce1_local;
reg   [2:0] delta_weights3_19_address1_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [2:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we1_local;
reg   [63:0] delta_weights3_20_d1_local;
reg    delta_weights3_20_ce1_local;
reg   [2:0] delta_weights3_20_address1_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [2:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we1_local;
reg   [63:0] delta_weights3_21_d1_local;
reg    delta_weights3_21_ce1_local;
reg   [2:0] delta_weights3_21_address1_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [2:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we1_local;
reg   [63:0] delta_weights3_22_d1_local;
reg    delta_weights3_22_ce1_local;
reg   [2:0] delta_weights3_22_address1_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [2:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we1_local;
reg   [63:0] delta_weights3_23_d1_local;
reg    delta_weights3_23_ce1_local;
reg   [2:0] delta_weights3_23_address1_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [2:0] delta_weights3_23_address0_local;
reg    delta_weights3_24_we1_local;
reg   [63:0] delta_weights3_24_d1_local;
reg    delta_weights3_24_ce1_local;
reg   [2:0] delta_weights3_24_address1_local;
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [2:0] delta_weights3_24_address0_local;
reg    delta_weights3_25_we1_local;
reg   [63:0] delta_weights3_25_d1_local;
reg    delta_weights3_25_ce1_local;
reg   [2:0] delta_weights3_25_address1_local;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [2:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we1_local;
reg   [63:0] delta_weights3_26_d1_local;
reg    delta_weights3_26_ce1_local;
reg   [2:0] delta_weights3_26_address1_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [2:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we1_local;
reg   [63:0] delta_weights3_27_d1_local;
reg    delta_weights3_27_ce1_local;
reg   [2:0] delta_weights3_27_address1_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [2:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we1_local;
reg   [63:0] delta_weights3_28_d1_local;
reg    delta_weights3_28_ce1_local;
reg   [2:0] delta_weights3_28_address1_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [2:0] delta_weights3_28_address0_local;
reg    delta_weights3_29_we1_local;
reg   [63:0] delta_weights3_29_d1_local;
reg    delta_weights3_29_ce1_local;
reg   [2:0] delta_weights3_29_address1_local;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [2:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we1_local;
reg   [63:0] delta_weights3_30_d1_local;
reg    delta_weights3_30_ce1_local;
reg   [2:0] delta_weights3_30_address1_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [2:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we1_local;
reg   [63:0] delta_weights3_31_d1_local;
reg    delta_weights3_31_ce1_local;
reg   [2:0] delta_weights3_31_address1_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [2:0] delta_weights3_31_address0_local;
reg   [63:0] grp_fu_2630_p0;
reg   [63:0] grp_fu_2630_p1;
reg   [63:0] grp_fu_2636_p0;
reg   [63:0] grp_fu_2636_p1;
reg   [63:0] grp_fu_2642_p0;
reg   [63:0] grp_fu_2642_p1;
reg   [63:0] grp_fu_2648_p0;
reg   [63:0] grp_fu_2648_p1;
reg   [63:0] grp_fu_2654_p0;
reg   [63:0] grp_fu_2654_p1;
reg   [63:0] grp_fu_2660_p0;
reg   [63:0] grp_fu_2660_p1;
reg   [63:0] grp_fu_2666_p0;
reg   [63:0] grp_fu_2666_p1;
reg   [63:0] grp_fu_2672_p0;
reg   [63:0] grp_fu_2672_p1;
reg   [63:0] grp_fu_2678_p0;
reg   [63:0] grp_fu_2678_p1;
reg   [63:0] grp_fu_2684_p0;
reg   [63:0] grp_fu_2684_p1;
reg   [63:0] grp_fu_2690_p0;
reg   [63:0] grp_fu_2690_p1;
reg   [63:0] grp_fu_2696_p0;
reg   [63:0] grp_fu_2696_p1;
reg   [63:0] grp_fu_2702_p0;
reg   [63:0] grp_fu_2702_p1;
reg   [63:0] grp_fu_2708_p0;
reg   [63:0] grp_fu_2708_p1;
reg   [63:0] grp_fu_2714_p0;
reg   [63:0] grp_fu_2714_p1;
reg   [63:0] grp_fu_2720_p0;
reg   [63:0] grp_fu_2720_p1;
reg   [63:0] grp_fu_2726_p0;
reg   [63:0] grp_fu_2726_p1;
reg   [63:0] grp_fu_2732_p0;
reg   [63:0] grp_fu_2732_p1;
reg   [63:0] grp_fu_2738_p0;
reg   [63:0] grp_fu_2738_p1;
reg   [63:0] grp_fu_2744_p0;
reg   [63:0] grp_fu_2744_p1;
reg   [63:0] grp_fu_2750_p0;
reg   [63:0] grp_fu_2750_p1;
reg   [63:0] grp_fu_2756_p0;
reg   [63:0] grp_fu_2756_p1;
reg   [63:0] grp_fu_2762_p0;
reg   [63:0] grp_fu_2762_p1;
reg   [63:0] grp_fu_2768_p0;
reg   [63:0] grp_fu_2768_p1;
reg   [63:0] grp_fu_2774_p0;
reg   [63:0] grp_fu_2774_p1;
reg   [63:0] grp_fu_2780_p0;
reg   [63:0] grp_fu_2780_p1;
reg   [63:0] grp_fu_2786_p0;
reg   [63:0] grp_fu_2786_p1;
reg   [63:0] grp_fu_2792_p0;
reg   [63:0] grp_fu_2792_p1;
reg   [63:0] grp_fu_2798_p0;
reg   [63:0] grp_fu_2798_p1;
reg   [63:0] grp_fu_2804_p0;
reg   [63:0] grp_fu_2804_p1;
reg   [63:0] grp_fu_2810_p0;
reg   [63:0] grp_fu_2810_p1;
reg   [63:0] grp_fu_2816_p0;
reg   [63:0] grp_fu_2816_p1;
reg   [63:0] grp_fu_2822_p0;
reg   [63:0] grp_fu_2822_p1;
reg   [63:0] grp_fu_2828_p0;
reg   [63:0] grp_fu_2828_p1;
reg   [63:0] grp_fu_2834_p0;
reg   [63:0] grp_fu_2834_p1;
reg   [63:0] grp_fu_2840_p0;
reg   [63:0] grp_fu_2840_p1;
reg   [63:0] grp_fu_2846_p0;
reg   [63:0] grp_fu_2846_p1;
reg   [63:0] grp_fu_2852_p0;
reg   [63:0] grp_fu_2852_p1;
reg   [63:0] grp_fu_2858_p0;
reg   [63:0] grp_fu_2858_p1;
reg   [63:0] grp_fu_2864_p0;
reg   [63:0] grp_fu_2864_p1;
reg   [63:0] grp_fu_2870_p0;
reg   [63:0] grp_fu_2870_p1;
reg   [63:0] grp_fu_2876_p0;
reg   [63:0] grp_fu_2876_p1;
reg   [63:0] grp_fu_2882_p0;
reg   [63:0] grp_fu_2882_p1;
reg   [63:0] grp_fu_2888_p0;
reg   [63:0] grp_fu_2888_p1;
reg   [63:0] grp_fu_2894_p0;
reg   [63:0] grp_fu_2894_p1;
reg   [63:0] grp_fu_2900_p0;
reg   [63:0] grp_fu_2900_p1;
reg   [63:0] grp_fu_2906_p0;
reg   [63:0] grp_fu_2906_p1;
reg   [63:0] grp_fu_2912_p0;
reg   [63:0] grp_fu_2912_p1;
reg   [63:0] grp_fu_2918_p0;
reg   [63:0] grp_fu_2918_p1;
reg   [63:0] grp_fu_2924_p0;
reg   [63:0] grp_fu_2924_p1;
reg   [63:0] grp_fu_2930_p0;
reg   [63:0] grp_fu_2930_p1;
reg   [63:0] grp_fu_2936_p0;
reg   [63:0] grp_fu_2936_p1;
reg   [63:0] grp_fu_2942_p0;
reg   [63:0] grp_fu_2942_p1;
reg   [63:0] grp_fu_2948_p0;
reg   [63:0] grp_fu_2948_p1;
reg   [63:0] grp_fu_2954_p0;
reg   [63:0] grp_fu_2954_p1;
reg   [63:0] grp_fu_2960_p0;
reg   [63:0] grp_fu_2960_p1;
reg   [63:0] grp_fu_2966_p0;
reg   [63:0] grp_fu_2966_p1;
reg   [63:0] grp_fu_2972_p0;
reg   [63:0] grp_fu_2972_p1;
reg   [63:0] grp_fu_2978_p0;
reg   [63:0] grp_fu_2978_p1;
reg   [63:0] grp_fu_2984_p0;
reg   [63:0] grp_fu_2984_p1;
reg   [63:0] grp_fu_2990_p0;
reg   [63:0] grp_fu_2990_p1;
reg   [63:0] grp_fu_2996_p0;
reg   [63:0] grp_fu_2996_p1;
reg   [63:0] grp_fu_3002_p0;
reg   [63:0] grp_fu_3002_p1;
reg   [63:0] grp_fu_3008_p0;
reg   [63:0] grp_fu_3008_p1;
reg   [9:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_42_2_reg_4116 <= grp_fu_12557_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3144 <= grp_fu_12293_p_dout0;
        reg_3150 <= grp_fu_12297_p_dout0;
        reg_3156 <= grp_fu_12301_p_dout0;
        reg_3162 <= grp_fu_12305_p_dout0;
        reg_3168 <= grp_fu_12309_p_dout0;
        reg_3174 <= grp_fu_12313_p_dout0;
        reg_3180 <= grp_fu_12317_p_dout0;
        reg_3186 <= grp_fu_12321_p_dout0;
        reg_3192 <= grp_fu_12325_p_dout0;
        reg_3198 <= grp_fu_12329_p_dout0;
        reg_3204 <= grp_fu_12333_p_dout0;
        reg_3210 <= grp_fu_12337_p_dout0;
        reg_3216 <= grp_fu_12341_p_dout0;
        reg_3222 <= grp_fu_12345_p_dout0;
        reg_3228 <= grp_fu_12349_p_dout0;
        reg_3234 <= grp_fu_12353_p_dout0;
        reg_3240 <= grp_fu_12357_p_dout0;
        reg_3246 <= grp_fu_12361_p_dout0;
        reg_3252 <= grp_fu_12365_p_dout0;
        reg_3258 <= grp_fu_12369_p_dout0;
        reg_3264 <= grp_fu_12373_p_dout0;
        reg_3270 <= grp_fu_12377_p_dout0;
        reg_3276 <= grp_fu_12381_p_dout0;
        reg_3282 <= grp_fu_12385_p_dout0;
        reg_3288 <= grp_fu_12389_p_dout0;
        reg_3294 <= grp_fu_12393_p_dout0;
        reg_3300 <= grp_fu_12397_p_dout0;
        reg_3306 <= grp_fu_12401_p_dout0;
        reg_3312 <= grp_fu_12405_p_dout0;
        reg_3318 <= grp_fu_12409_p_dout0;
        reg_3324 <= grp_fu_12413_p_dout0;
        reg_3330 <= grp_fu_12417_p_dout0;
        reg_3336 <= grp_fu_12421_p_dout0;
        reg_3342 <= grp_fu_12425_p_dout0;
        reg_3348 <= grp_fu_12429_p_dout0;
        reg_3354 <= grp_fu_12433_p_dout0;
        reg_3360 <= grp_fu_12437_p_dout0;
        reg_3366 <= grp_fu_12441_p_dout0;
        reg_3372 <= grp_fu_12445_p_dout0;
        reg_3378 <= grp_fu_12449_p_dout0;
        reg_3384 <= grp_fu_12453_p_dout0;
        reg_3390 <= grp_fu_12457_p_dout0;
        reg_3396 <= grp_fu_12461_p_dout0;
        reg_3402 <= grp_fu_12465_p_dout0;
        reg_3408 <= grp_fu_12469_p_dout0;
        reg_3414 <= grp_fu_12473_p_dout0;
        reg_3420 <= grp_fu_12477_p_dout0;
        reg_3426 <= grp_fu_12481_p_dout0;
        reg_3432 <= grp_fu_12485_p_dout0;
        reg_3438 <= grp_fu_12489_p_dout0;
        reg_3444 <= grp_fu_12493_p_dout0;
        reg_3450 <= grp_fu_12497_p_dout0;
        reg_3456 <= grp_fu_12501_p_dout0;
        reg_3462 <= grp_fu_12505_p_dout0;
        reg_3468 <= grp_fu_12509_p_dout0;
        reg_3474 <= grp_fu_12513_p_dout0;
        reg_3480 <= grp_fu_12517_p_dout0;
        reg_3486 <= grp_fu_12521_p_dout0;
        reg_3492 <= grp_fu_12525_p_dout0;
        reg_3498 <= grp_fu_12529_p_dout0;
        reg_3504 <= grp_fu_12533_p_dout0;
        reg_3510 <= grp_fu_12537_p_dout0;
        reg_3516 <= grp_fu_12541_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3522 <= grp_fu_12545_p_dout0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_0_address1_local = 64'd0;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_d0_local = reg_3330;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_d0_local = reg_3336;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_d1_local = mul_42_2_reg_4116;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_d1_local = reg_3144;
    end else begin
        delta_weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_address0_local = 64'd1;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_10_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_10_address1_local = 64'd0;
    end else begin
        delta_weights3_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_d0_local = reg_3390;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_d0_local = reg_3396;
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_d1_local = reg_3198;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_d1_local = reg_3204;
    end else begin
        delta_weights3_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_address0_local = 64'd1;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_11_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_11_address1_local = 64'd0;
    end else begin
        delta_weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_d0_local = reg_3396;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_d0_local = reg_3402;
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_d1_local = reg_3204;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_d1_local = reg_3210;
    end else begin
        delta_weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_address0_local = 64'd1;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_12_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_12_address1_local = 64'd0;
    end else begin
        delta_weights3_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_d0_local = reg_3402;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_d0_local = reg_3408;
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_d1_local = reg_3210;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_d1_local = reg_3216;
    end else begin
        delta_weights3_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_address0_local = 64'd1;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_13_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_13_address1_local = 64'd0;
    end else begin
        delta_weights3_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_d0_local = reg_3408;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_d0_local = reg_3414;
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_d1_local = reg_3216;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_d1_local = reg_3222;
    end else begin
        delta_weights3_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_address0_local = 64'd1;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_14_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_14_address1_local = 64'd0;
    end else begin
        delta_weights3_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_d0_local = reg_3414;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_d0_local = reg_3420;
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_d1_local = reg_3222;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_d1_local = reg_3228;
    end else begin
        delta_weights3_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_address0_local = 64'd1;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_15_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_15_address1_local = 64'd0;
    end else begin
        delta_weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_d0_local = reg_3420;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_d0_local = reg_3426;
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_d1_local = reg_3228;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_d1_local = reg_3234;
    end else begin
        delta_weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_16_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_16_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_address0_local = 64'd1;
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_16_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_16_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_16_address1_local = 64'd0;
    end else begin
        delta_weights3_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_16_d0_local = reg_3426;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_d0_local = reg_3432;
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_16_d1_local = reg_3234;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_d1_local = reg_3240;
    end else begin
        delta_weights3_16_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_17_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_17_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_address0_local = 64'd1;
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_17_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_17_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_17_address1_local = 64'd0;
    end else begin
        delta_weights3_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_17_d0_local = reg_3432;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_d0_local = reg_3438;
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_17_d1_local = reg_3240;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_d1_local = reg_3246;
    end else begin
        delta_weights3_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_18_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_18_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_address0_local = 64'd1;
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_18_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_18_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_18_address1_local = 64'd0;
    end else begin
        delta_weights3_18_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_18_d0_local = reg_3438;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_d0_local = reg_3444;
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_18_d1_local = reg_3246;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_d1_local = reg_3252;
    end else begin
        delta_weights3_18_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_19_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_19_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_address0_local = 64'd1;
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_19_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_19_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_19_address1_local = 64'd0;
    end else begin
        delta_weights3_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_19_d0_local = reg_3444;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_d0_local = reg_3450;
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_19_d1_local = reg_3252;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_d1_local = reg_3258;
    end else begin
        delta_weights3_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_1_address1_local = 64'd0;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_d0_local = reg_3336;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_d0_local = reg_3342;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_d1_local = reg_3144;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_d1_local = reg_3150;
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_20_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_20_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_address0_local = 64'd1;
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_20_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_20_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_20_address1_local = 64'd0;
    end else begin
        delta_weights3_20_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_20_d0_local = reg_3450;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_d0_local = reg_3456;
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_20_d1_local = reg_3258;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_d1_local = reg_3264;
    end else begin
        delta_weights3_20_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_21_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_21_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_address0_local = 64'd1;
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_21_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_21_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_21_address1_local = 64'd0;
    end else begin
        delta_weights3_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_21_d0_local = reg_3456;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_d0_local = reg_3462;
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_21_d1_local = reg_3264;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_d1_local = reg_3270;
    end else begin
        delta_weights3_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_22_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_22_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_address0_local = 64'd1;
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_22_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_22_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_22_address1_local = 64'd0;
    end else begin
        delta_weights3_22_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_22_d0_local = reg_3462;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_d0_local = reg_3468;
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_22_d1_local = reg_3270;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_d1_local = reg_3276;
    end else begin
        delta_weights3_22_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_23_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_23_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_address0_local = 64'd1;
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_23_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_23_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_23_address1_local = 64'd0;
    end else begin
        delta_weights3_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_23_d0_local = reg_3468;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_d0_local = reg_3474;
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_23_d1_local = reg_3276;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_d1_local = reg_3282;
    end else begin
        delta_weights3_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_24_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_24_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_address0_local = 64'd1;
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_24_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_24_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_24_address1_local = 64'd0;
    end else begin
        delta_weights3_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_ce1_local = 1'b1;
    end else begin
        delta_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_24_d0_local = reg_3474;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_d0_local = reg_3480;
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_24_d1_local = reg_3282;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_d1_local = reg_3288;
    end else begin
        delta_weights3_24_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_24_we1_local = 1'b1;
    end else begin
        delta_weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_25_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_25_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_address0_local = 64'd1;
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_25_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_25_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_25_address1_local = 64'd0;
    end else begin
        delta_weights3_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_ce1_local = 1'b1;
    end else begin
        delta_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_25_d0_local = reg_3480;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_d0_local = reg_3486;
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_25_d1_local = reg_3288;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_d1_local = reg_3294;
    end else begin
        delta_weights3_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_25_we1_local = 1'b1;
    end else begin
        delta_weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_26_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_26_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_address0_local = 64'd1;
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_26_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_26_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_26_address1_local = 64'd0;
    end else begin
        delta_weights3_26_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_ce1_local = 1'b1;
    end else begin
        delta_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_26_d0_local = reg_3486;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_d0_local = reg_3492;
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_26_d1_local = reg_3294;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_d1_local = reg_3300;
    end else begin
        delta_weights3_26_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_26_we1_local = 1'b1;
    end else begin
        delta_weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_27_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_27_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_address0_local = 64'd1;
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_27_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_27_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_27_address1_local = 64'd0;
    end else begin
        delta_weights3_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_ce1_local = 1'b1;
    end else begin
        delta_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_27_d0_local = reg_3492;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_d0_local = reg_3498;
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_27_d1_local = reg_3300;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_d1_local = reg_3306;
    end else begin
        delta_weights3_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_27_we1_local = 1'b1;
    end else begin
        delta_weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_28_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_28_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_address0_local = 64'd1;
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_28_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_28_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_28_address1_local = 64'd0;
    end else begin
        delta_weights3_28_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_ce1_local = 1'b1;
    end else begin
        delta_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_28_d0_local = reg_3498;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_d0_local = reg_3504;
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_28_d1_local = reg_3306;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_d1_local = reg_3312;
    end else begin
        delta_weights3_28_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_28_we1_local = 1'b1;
    end else begin
        delta_weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_29_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_29_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_address0_local = 64'd1;
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_29_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_29_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_29_address1_local = 64'd0;
    end else begin
        delta_weights3_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_ce1_local = 1'b1;
    end else begin
        delta_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_29_d0_local = reg_3504;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_d0_local = reg_3510;
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_29_d1_local = reg_3312;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_d1_local = reg_3318;
    end else begin
        delta_weights3_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_29_we1_local = 1'b1;
    end else begin
        delta_weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_2_address1_local = 64'd0;
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_d0_local = reg_3342;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_d0_local = reg_3348;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_d1_local = reg_3150;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_d1_local = reg_3156;
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_30_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_30_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_address0_local = 64'd1;
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_30_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_30_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_30_address1_local = 64'd0;
    end else begin
        delta_weights3_30_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_ce1_local = 1'b1;
    end else begin
        delta_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_30_d0_local = reg_3510;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_d0_local = reg_3516;
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_30_d1_local = reg_3318;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_d1_local = reg_3324;
    end else begin
        delta_weights3_30_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_30_we1_local = 1'b1;
    end else begin
        delta_weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_31_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_31_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_address0_local = 64'd1;
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_31_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_31_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_31_address1_local = 64'd0;
    end else begin
        delta_weights3_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_ce1_local = 1'b1;
    end else begin
        delta_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_31_d0_local = reg_3516;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_d0_local = reg_3522;
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_31_d1_local = reg_3324;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_d1_local = reg_3330;
    end else begin
        delta_weights3_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_31_we1_local = 1'b1;
    end else begin
        delta_weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_3_address1_local = 64'd0;
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_d0_local = reg_3348;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_d0_local = reg_3354;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_d1_local = reg_3156;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_d1_local = reg_3162;
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_4_address1_local = 64'd0;
    end else begin
        delta_weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_d0_local = reg_3354;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_d0_local = reg_3360;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_d1_local = reg_3162;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_d1_local = reg_3168;
    end else begin
        delta_weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_5_address1_local = 64'd0;
    end else begin
        delta_weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_d0_local = reg_3360;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_d0_local = reg_3366;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_d1_local = reg_3168;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_d1_local = reg_3174;
    end else begin
        delta_weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_6_address1_local = 64'd0;
    end else begin
        delta_weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_d0_local = reg_3366;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_d0_local = reg_3372;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_d1_local = reg_3174;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_d1_local = reg_3180;
    end else begin
        delta_weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_7_address1_local = 64'd0;
    end else begin
        delta_weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_d0_local = reg_3372;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_d0_local = reg_3378;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_d1_local = reg_3180;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_d1_local = reg_3186;
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_address0_local = 64'd1;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_8_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_8_address1_local = 64'd0;
    end else begin
        delta_weights3_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_d0_local = reg_3378;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_d0_local = reg_3384;
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_d1_local = reg_3186;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_d1_local = reg_3192;
    end else begin
        delta_weights3_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_address0_local = 64'd1;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        delta_weights3_9_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        delta_weights3_9_address1_local = 64'd0;
    end else begin
        delta_weights3_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_d0_local = reg_3384;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_d0_local = reg_3390;
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_d1_local = reg_3192;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_d1_local = reg_3198;
    end else begin
        delta_weights3_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2630_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2630_p0 = last_activations_21_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2630_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2630_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2630_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2630_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2636_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2636_p0 = last_activations_21_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2636_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2636_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2636_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2636_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2636_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2642_p0 = last_activations_11_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2642_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2642_p0 = last_activations_0_0_0_val;
    end else begin
        grp_fu_2642_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2642_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2642_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2642_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2648_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2648_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2648_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2648_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2648_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2648_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2648_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2654_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2654_p0 = last_activations_22_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2654_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2654_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2654_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2654_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2654_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2660_p0 = last_activations_12_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2660_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2660_p0 = last_activations_1_0_0_val;
    end else begin
        grp_fu_2660_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2660_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2660_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2660_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2666_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2666_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2666_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2666_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2666_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2666_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2666_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2672_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2672_p0 = last_activations_23_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2672_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2672_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2672_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2672_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2672_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2678_p0 = last_activations_13_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2678_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2678_p0 = last_activations_2_0_0_val;
    end else begin
        grp_fu_2678_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2678_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2678_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2678_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2684_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2684_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2684_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2684_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2684_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2684_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2684_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2690_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2690_p0 = last_activations_24_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2690_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2690_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2690_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2690_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2690_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2696_p0 = last_activations_14_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2696_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2696_p0 = last_activations_3_0_0_val;
    end else begin
        grp_fu_2696_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2696_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2696_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2696_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2702_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2702_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2702_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2702_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2702_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2702_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2702_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2708_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2708_p0 = last_activations_25_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2708_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2708_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2708_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2708_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2708_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2714_p0 = last_activations_15_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2714_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2714_p0 = last_activations_4_0_0_val;
    end else begin
        grp_fu_2714_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2714_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2714_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2714_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2720_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2720_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2720_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2720_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2720_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2720_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2720_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2726_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2726_p0 = last_activations_26_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2726_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2726_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2726_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2726_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2726_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2732_p0 = last_activations_16_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2732_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2732_p0 = last_activations_5_0_0_val;
    end else begin
        grp_fu_2732_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2732_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2732_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2732_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2738_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2738_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2738_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2738_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2738_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2738_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2738_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2744_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2744_p0 = last_activations_27_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2744_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2744_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2744_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2744_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2744_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2750_p0 = last_activations_17_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2750_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2750_p0 = last_activations_6_0_0_val;
    end else begin
        grp_fu_2750_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2750_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2750_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2750_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2756_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2756_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2756_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2756_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2756_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2756_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2756_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2762_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2762_p0 = last_activations_28_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2762_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2762_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2762_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2762_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2762_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2768_p0 = last_activations_18_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2768_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2768_p0 = last_activations_7_0_0_val;
    end else begin
        grp_fu_2768_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2768_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2768_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2768_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2774_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2774_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2774_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2774_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2774_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2774_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2774_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2780_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2780_p0 = last_activations_29_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2780_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2780_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2780_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2780_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2780_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2786_p0 = last_activations_19_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2786_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2786_p0 = last_activations_8_0_0_val;
    end else begin
        grp_fu_2786_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2786_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2786_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2786_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2792_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2792_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2792_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2792_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2792_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2792_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2792_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2798_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2798_p0 = last_activations_30_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2798_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2798_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2798_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2798_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2798_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2804_p0 = last_activations_20_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2804_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2804_p0 = last_activations_9_0_0_val;
    end else begin
        grp_fu_2804_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2804_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2804_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2804_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2810_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2810_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2810_p0 = last_activations_10_0_0_val;
    end else begin
        grp_fu_2810_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2810_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2810_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2810_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2816_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2816_p0 = last_activations_31_0_0_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2816_p0 = last_activations_10_0_0_val;
    end else begin
        grp_fu_2816_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2816_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2816_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2816_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2822_p0 = last_activations_21_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2822_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2822_p0 = last_activations_10_0_0_val;
    end else begin
        grp_fu_2822_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2822_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2822_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2822_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2828_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2828_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2828_p0 = last_activations_11_0_0_val;
    end else begin
        grp_fu_2828_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2828_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2828_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2828_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2834_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2834_p0 = last_activations_0_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2834_p0 = last_activations_11_0_0_val;
    end else begin
        grp_fu_2834_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2834_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2834_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2840_p0 = last_activations_22_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2840_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2840_p0 = last_activations_11_0_0_val;
    end else begin
        grp_fu_2840_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2840_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2840_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2840_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2846_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2846_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2846_p0 = last_activations_12_0_0_val;
    end else begin
        grp_fu_2846_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2846_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2846_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2846_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2852_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2852_p0 = last_activations_1_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2852_p0 = last_activations_12_0_0_val;
    end else begin
        grp_fu_2852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2852_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2852_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2852_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2858_p0 = last_activations_23_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2858_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2858_p0 = last_activations_12_0_0_val;
    end else begin
        grp_fu_2858_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2858_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2858_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2858_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2864_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2864_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2864_p0 = last_activations_13_0_0_val;
    end else begin
        grp_fu_2864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2864_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2864_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2864_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2870_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2870_p0 = last_activations_2_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2870_p0 = last_activations_13_0_0_val;
    end else begin
        grp_fu_2870_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2870_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2870_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2870_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2876_p0 = last_activations_24_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2876_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2876_p0 = last_activations_13_0_0_val;
    end else begin
        grp_fu_2876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2876_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2876_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2876_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2882_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2882_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2882_p0 = last_activations_14_0_0_val;
    end else begin
        grp_fu_2882_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2882_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2882_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2882_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2888_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2888_p0 = last_activations_3_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2888_p0 = last_activations_14_0_0_val;
    end else begin
        grp_fu_2888_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2888_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2888_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2888_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2894_p0 = last_activations_25_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2894_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2894_p0 = last_activations_14_0_0_val;
    end else begin
        grp_fu_2894_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2894_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2894_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2894_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2900_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2900_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2900_p0 = last_activations_15_0_0_val;
    end else begin
        grp_fu_2900_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2900_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2900_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2900_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2906_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2906_p0 = last_activations_4_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2906_p0 = last_activations_15_0_0_val;
    end else begin
        grp_fu_2906_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2906_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2906_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2906_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2912_p0 = last_activations_26_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2912_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2912_p0 = last_activations_15_0_0_val;
    end else begin
        grp_fu_2912_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2912_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2912_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2912_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2918_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2918_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2918_p0 = last_activations_16_0_0_val;
    end else begin
        grp_fu_2918_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2918_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2918_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2918_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2924_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2924_p0 = last_activations_5_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2924_p0 = last_activations_16_0_0_val;
    end else begin
        grp_fu_2924_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2924_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2924_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2924_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2930_p0 = last_activations_27_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2930_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2930_p0 = last_activations_16_0_0_val;
    end else begin
        grp_fu_2930_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2930_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2930_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2930_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2936_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2936_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2936_p0 = last_activations_17_0_0_val;
    end else begin
        grp_fu_2936_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2936_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2936_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2936_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2942_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2942_p0 = last_activations_6_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2942_p0 = last_activations_17_0_0_val;
    end else begin
        grp_fu_2942_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2942_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2942_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2942_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2948_p0 = last_activations_28_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2948_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2948_p0 = last_activations_17_0_0_val;
    end else begin
        grp_fu_2948_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2948_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2948_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2948_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2954_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2954_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2954_p0 = last_activations_18_0_0_val;
    end else begin
        grp_fu_2954_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2954_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2954_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2954_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2960_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2960_p0 = last_activations_7_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2960_p0 = last_activations_18_0_0_val;
    end else begin
        grp_fu_2960_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2960_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2960_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2960_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2966_p0 = last_activations_29_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2966_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2966_p0 = last_activations_18_0_0_val;
    end else begin
        grp_fu_2966_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2966_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2966_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2966_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2972_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2972_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2972_p0 = last_activations_19_0_0_val;
    end else begin
        grp_fu_2972_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2972_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2972_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2972_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2978_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2978_p0 = last_activations_8_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2978_p0 = last_activations_19_0_0_val;
    end else begin
        grp_fu_2978_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2978_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2978_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2978_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2984_p0 = last_activations_30_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2984_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2984_p0 = last_activations_19_0_0_val;
    end else begin
        grp_fu_2984_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2984_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2984_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2984_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2990_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2990_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2990_p0 = last_activations_20_0_0_val;
    end else begin
        grp_fu_2990_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2990_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2990_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2990_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2996_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2996_p0 = last_activations_9_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_2996_p0 = last_activations_20_0_0_val;
    end else begin
        grp_fu_2996_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_2996_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_2996_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2996_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3002_p0 = last_activations_31_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3002_p0 = last_activations_10_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3002_p0 = last_activations_20_0_0_val;
    end else begin
        grp_fu_3002_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3002_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_3002_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_3002_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3008_p0 = last_activations_10_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3008_p0 = last_activations_21_0_0_val;
    end else begin
        grp_fu_3008_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_3008_p1 = output_difference_0_1_val;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_3008_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_3008_p1 = 'bx;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = delta_weights3_0_d1_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = delta_weights3_10_address1_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_d1 = delta_weights3_10_d1_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_address1 = delta_weights3_11_address1_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_d1 = delta_weights3_11_d1_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = delta_weights3_12_address1_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_d1 = delta_weights3_12_d1_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = delta_weights3_13_address1_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_d1 = delta_weights3_13_d1_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = delta_weights3_14_address1_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_d1 = delta_weights3_14_d1_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_address1 = delta_weights3_15_address1_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_d1 = delta_weights3_15_d1_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_address1 = delta_weights3_16_address1_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = delta_weights3_16_d0_local;
assign delta_weights3_16_d1 = delta_weights3_16_d1_local;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_address1 = delta_weights3_17_address1_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = delta_weights3_17_d0_local;
assign delta_weights3_17_d1 = delta_weights3_17_d1_local;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_address1 = delta_weights3_18_address1_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = delta_weights3_18_d0_local;
assign delta_weights3_18_d1 = delta_weights3_18_d1_local;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_address1 = delta_weights3_19_address1_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = delta_weights3_19_d0_local;
assign delta_weights3_19_d1 = delta_weights3_19_d1_local;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_address1 = delta_weights3_20_address1_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = delta_weights3_20_d0_local;
assign delta_weights3_20_d1 = delta_weights3_20_d1_local;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_address1 = delta_weights3_21_address1_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = delta_weights3_21_d0_local;
assign delta_weights3_21_d1 = delta_weights3_21_d1_local;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_address1 = delta_weights3_22_address1_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = delta_weights3_22_d0_local;
assign delta_weights3_22_d1 = delta_weights3_22_d1_local;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_address1 = delta_weights3_23_address1_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = delta_weights3_23_d0_local;
assign delta_weights3_23_d1 = delta_weights3_23_d1_local;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_address1 = delta_weights3_24_address1_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_ce1 = delta_weights3_24_ce1_local;
assign delta_weights3_24_d0 = delta_weights3_24_d0_local;
assign delta_weights3_24_d1 = delta_weights3_24_d1_local;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_24_we1 = delta_weights3_24_we1_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_address1 = delta_weights3_25_address1_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_ce1 = delta_weights3_25_ce1_local;
assign delta_weights3_25_d0 = delta_weights3_25_d0_local;
assign delta_weights3_25_d1 = delta_weights3_25_d1_local;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_25_we1 = delta_weights3_25_we1_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_address1 = delta_weights3_26_address1_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_ce1 = delta_weights3_26_ce1_local;
assign delta_weights3_26_d0 = delta_weights3_26_d0_local;
assign delta_weights3_26_d1 = delta_weights3_26_d1_local;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_26_we1 = delta_weights3_26_we1_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_address1 = delta_weights3_27_address1_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_ce1 = delta_weights3_27_ce1_local;
assign delta_weights3_27_d0 = delta_weights3_27_d0_local;
assign delta_weights3_27_d1 = delta_weights3_27_d1_local;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_27_we1 = delta_weights3_27_we1_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_address1 = delta_weights3_28_address1_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_ce1 = delta_weights3_28_ce1_local;
assign delta_weights3_28_d0 = delta_weights3_28_d0_local;
assign delta_weights3_28_d1 = delta_weights3_28_d1_local;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_28_we1 = delta_weights3_28_we1_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_address1 = delta_weights3_29_address1_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_ce1 = delta_weights3_29_ce1_local;
assign delta_weights3_29_d0 = delta_weights3_29_d0_local;
assign delta_weights3_29_d1 = delta_weights3_29_d1_local;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_29_we1 = delta_weights3_29_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_address1 = delta_weights3_30_address1_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_ce1 = delta_weights3_30_ce1_local;
assign delta_weights3_30_d0 = delta_weights3_30_d0_local;
assign delta_weights3_30_d1 = delta_weights3_30_d1_local;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_30_we1 = delta_weights3_30_we1_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_address1 = delta_weights3_31_address1_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_ce1 = delta_weights3_31_ce1_local;
assign delta_weights3_31_d0 = delta_weights3_31_d0_local;
assign delta_weights3_31_d1 = delta_weights3_31_d1_local;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_31_we1 = delta_weights3_31_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = delta_weights3_4_address1_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = delta_weights3_4_d1_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = delta_weights3_5_address1_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = delta_weights3_5_d1_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = delta_weights3_6_address1_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = delta_weights3_6_d1_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = delta_weights3_8_address1_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_d1 = delta_weights3_8_d1_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = delta_weights3_9_address1_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_d1 = delta_weights3_9_d1_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign grp_fu_12293_p_ce = 1'b1;
assign grp_fu_12293_p_din0 = grp_fu_2630_p0;
assign grp_fu_12293_p_din1 = grp_fu_2630_p1;
assign grp_fu_12297_p_ce = 1'b1;
assign grp_fu_12297_p_din0 = grp_fu_2636_p0;
assign grp_fu_12297_p_din1 = grp_fu_2636_p1;
assign grp_fu_12301_p_ce = 1'b1;
assign grp_fu_12301_p_din0 = grp_fu_2642_p0;
assign grp_fu_12301_p_din1 = grp_fu_2642_p1;
assign grp_fu_12305_p_ce = 1'b1;
assign grp_fu_12305_p_din0 = grp_fu_2648_p0;
assign grp_fu_12305_p_din1 = grp_fu_2648_p1;
assign grp_fu_12309_p_ce = 1'b1;
assign grp_fu_12309_p_din0 = grp_fu_2654_p0;
assign grp_fu_12309_p_din1 = grp_fu_2654_p1;
assign grp_fu_12313_p_ce = 1'b1;
assign grp_fu_12313_p_din0 = grp_fu_2660_p0;
assign grp_fu_12313_p_din1 = grp_fu_2660_p1;
assign grp_fu_12317_p_ce = 1'b1;
assign grp_fu_12317_p_din0 = grp_fu_2666_p0;
assign grp_fu_12317_p_din1 = grp_fu_2666_p1;
assign grp_fu_12321_p_ce = 1'b1;
assign grp_fu_12321_p_din0 = grp_fu_2672_p0;
assign grp_fu_12321_p_din1 = grp_fu_2672_p1;
assign grp_fu_12325_p_ce = 1'b1;
assign grp_fu_12325_p_din0 = grp_fu_2678_p0;
assign grp_fu_12325_p_din1 = grp_fu_2678_p1;
assign grp_fu_12329_p_ce = 1'b1;
assign grp_fu_12329_p_din0 = grp_fu_2684_p0;
assign grp_fu_12329_p_din1 = grp_fu_2684_p1;
assign grp_fu_12333_p_ce = 1'b1;
assign grp_fu_12333_p_din0 = grp_fu_2690_p0;
assign grp_fu_12333_p_din1 = grp_fu_2690_p1;
assign grp_fu_12337_p_ce = 1'b1;
assign grp_fu_12337_p_din0 = grp_fu_2696_p0;
assign grp_fu_12337_p_din1 = grp_fu_2696_p1;
assign grp_fu_12341_p_ce = 1'b1;
assign grp_fu_12341_p_din0 = grp_fu_2702_p0;
assign grp_fu_12341_p_din1 = grp_fu_2702_p1;
assign grp_fu_12345_p_ce = 1'b1;
assign grp_fu_12345_p_din0 = grp_fu_2708_p0;
assign grp_fu_12345_p_din1 = grp_fu_2708_p1;
assign grp_fu_12349_p_ce = 1'b1;
assign grp_fu_12349_p_din0 = grp_fu_2714_p0;
assign grp_fu_12349_p_din1 = grp_fu_2714_p1;
assign grp_fu_12353_p_ce = 1'b1;
assign grp_fu_12353_p_din0 = grp_fu_2720_p0;
assign grp_fu_12353_p_din1 = grp_fu_2720_p1;
assign grp_fu_12357_p_ce = 1'b1;
assign grp_fu_12357_p_din0 = grp_fu_2726_p0;
assign grp_fu_12357_p_din1 = grp_fu_2726_p1;
assign grp_fu_12361_p_ce = 1'b1;
assign grp_fu_12361_p_din0 = grp_fu_2732_p0;
assign grp_fu_12361_p_din1 = grp_fu_2732_p1;
assign grp_fu_12365_p_ce = 1'b1;
assign grp_fu_12365_p_din0 = grp_fu_2738_p0;
assign grp_fu_12365_p_din1 = grp_fu_2738_p1;
assign grp_fu_12369_p_ce = 1'b1;
assign grp_fu_12369_p_din0 = grp_fu_2744_p0;
assign grp_fu_12369_p_din1 = grp_fu_2744_p1;
assign grp_fu_12373_p_ce = 1'b1;
assign grp_fu_12373_p_din0 = grp_fu_2750_p0;
assign grp_fu_12373_p_din1 = grp_fu_2750_p1;
assign grp_fu_12377_p_ce = 1'b1;
assign grp_fu_12377_p_din0 = grp_fu_2756_p0;
assign grp_fu_12377_p_din1 = grp_fu_2756_p1;
assign grp_fu_12381_p_ce = 1'b1;
assign grp_fu_12381_p_din0 = grp_fu_2762_p0;
assign grp_fu_12381_p_din1 = grp_fu_2762_p1;
assign grp_fu_12385_p_ce = 1'b1;
assign grp_fu_12385_p_din0 = grp_fu_2768_p0;
assign grp_fu_12385_p_din1 = grp_fu_2768_p1;
assign grp_fu_12389_p_ce = 1'b1;
assign grp_fu_12389_p_din0 = grp_fu_2774_p0;
assign grp_fu_12389_p_din1 = grp_fu_2774_p1;
assign grp_fu_12393_p_ce = 1'b1;
assign grp_fu_12393_p_din0 = grp_fu_2780_p0;
assign grp_fu_12393_p_din1 = grp_fu_2780_p1;
assign grp_fu_12397_p_ce = 1'b1;
assign grp_fu_12397_p_din0 = grp_fu_2786_p0;
assign grp_fu_12397_p_din1 = grp_fu_2786_p1;
assign grp_fu_12401_p_ce = 1'b1;
assign grp_fu_12401_p_din0 = grp_fu_2792_p0;
assign grp_fu_12401_p_din1 = grp_fu_2792_p1;
assign grp_fu_12405_p_ce = 1'b1;
assign grp_fu_12405_p_din0 = grp_fu_2798_p0;
assign grp_fu_12405_p_din1 = grp_fu_2798_p1;
assign grp_fu_12409_p_ce = 1'b1;
assign grp_fu_12409_p_din0 = grp_fu_2804_p0;
assign grp_fu_12409_p_din1 = grp_fu_2804_p1;
assign grp_fu_12413_p_ce = 1'b1;
assign grp_fu_12413_p_din0 = grp_fu_2810_p0;
assign grp_fu_12413_p_din1 = grp_fu_2810_p1;
assign grp_fu_12417_p_ce = 1'b1;
assign grp_fu_12417_p_din0 = grp_fu_2816_p0;
assign grp_fu_12417_p_din1 = grp_fu_2816_p1;
assign grp_fu_12421_p_ce = 1'b1;
assign grp_fu_12421_p_din0 = grp_fu_2822_p0;
assign grp_fu_12421_p_din1 = grp_fu_2822_p1;
assign grp_fu_12425_p_ce = 1'b1;
assign grp_fu_12425_p_din0 = grp_fu_2828_p0;
assign grp_fu_12425_p_din1 = grp_fu_2828_p1;
assign grp_fu_12429_p_ce = 1'b1;
assign grp_fu_12429_p_din0 = grp_fu_2834_p0;
assign grp_fu_12429_p_din1 = grp_fu_2834_p1;
assign grp_fu_12433_p_ce = 1'b1;
assign grp_fu_12433_p_din0 = grp_fu_2840_p0;
assign grp_fu_12433_p_din1 = grp_fu_2840_p1;
assign grp_fu_12437_p_ce = 1'b1;
assign grp_fu_12437_p_din0 = grp_fu_2846_p0;
assign grp_fu_12437_p_din1 = grp_fu_2846_p1;
assign grp_fu_12441_p_ce = 1'b1;
assign grp_fu_12441_p_din0 = grp_fu_2852_p0;
assign grp_fu_12441_p_din1 = grp_fu_2852_p1;
assign grp_fu_12445_p_ce = 1'b1;
assign grp_fu_12445_p_din0 = grp_fu_2858_p0;
assign grp_fu_12445_p_din1 = grp_fu_2858_p1;
assign grp_fu_12449_p_ce = 1'b1;
assign grp_fu_12449_p_din0 = grp_fu_2864_p0;
assign grp_fu_12449_p_din1 = grp_fu_2864_p1;
assign grp_fu_12453_p_ce = 1'b1;
assign grp_fu_12453_p_din0 = grp_fu_2870_p0;
assign grp_fu_12453_p_din1 = grp_fu_2870_p1;
assign grp_fu_12457_p_ce = 1'b1;
assign grp_fu_12457_p_din0 = grp_fu_2876_p0;
assign grp_fu_12457_p_din1 = grp_fu_2876_p1;
assign grp_fu_12461_p_ce = 1'b1;
assign grp_fu_12461_p_din0 = grp_fu_2882_p0;
assign grp_fu_12461_p_din1 = grp_fu_2882_p1;
assign grp_fu_12465_p_ce = 1'b1;
assign grp_fu_12465_p_din0 = grp_fu_2888_p0;
assign grp_fu_12465_p_din1 = grp_fu_2888_p1;
assign grp_fu_12469_p_ce = 1'b1;
assign grp_fu_12469_p_din0 = grp_fu_2894_p0;
assign grp_fu_12469_p_din1 = grp_fu_2894_p1;
assign grp_fu_12473_p_ce = 1'b1;
assign grp_fu_12473_p_din0 = grp_fu_2900_p0;
assign grp_fu_12473_p_din1 = grp_fu_2900_p1;
assign grp_fu_12477_p_ce = 1'b1;
assign grp_fu_12477_p_din0 = grp_fu_2906_p0;
assign grp_fu_12477_p_din1 = grp_fu_2906_p1;
assign grp_fu_12481_p_ce = 1'b1;
assign grp_fu_12481_p_din0 = grp_fu_2912_p0;
assign grp_fu_12481_p_din1 = grp_fu_2912_p1;
assign grp_fu_12485_p_ce = 1'b1;
assign grp_fu_12485_p_din0 = grp_fu_2918_p0;
assign grp_fu_12485_p_din1 = grp_fu_2918_p1;
assign grp_fu_12489_p_ce = 1'b1;
assign grp_fu_12489_p_din0 = grp_fu_2924_p0;
assign grp_fu_12489_p_din1 = grp_fu_2924_p1;
assign grp_fu_12493_p_ce = 1'b1;
assign grp_fu_12493_p_din0 = grp_fu_2930_p0;
assign grp_fu_12493_p_din1 = grp_fu_2930_p1;
assign grp_fu_12497_p_ce = 1'b1;
assign grp_fu_12497_p_din0 = grp_fu_2936_p0;
assign grp_fu_12497_p_din1 = grp_fu_2936_p1;
assign grp_fu_12501_p_ce = 1'b1;
assign grp_fu_12501_p_din0 = grp_fu_2942_p0;
assign grp_fu_12501_p_din1 = grp_fu_2942_p1;
assign grp_fu_12505_p_ce = 1'b1;
assign grp_fu_12505_p_din0 = grp_fu_2948_p0;
assign grp_fu_12505_p_din1 = grp_fu_2948_p1;
assign grp_fu_12509_p_ce = 1'b1;
assign grp_fu_12509_p_din0 = grp_fu_2954_p0;
assign grp_fu_12509_p_din1 = grp_fu_2954_p1;
assign grp_fu_12513_p_ce = 1'b1;
assign grp_fu_12513_p_din0 = grp_fu_2960_p0;
assign grp_fu_12513_p_din1 = grp_fu_2960_p1;
assign grp_fu_12517_p_ce = 1'b1;
assign grp_fu_12517_p_din0 = grp_fu_2966_p0;
assign grp_fu_12517_p_din1 = grp_fu_2966_p1;
assign grp_fu_12521_p_ce = 1'b1;
assign grp_fu_12521_p_din0 = grp_fu_2972_p0;
assign grp_fu_12521_p_din1 = grp_fu_2972_p1;
assign grp_fu_12525_p_ce = 1'b1;
assign grp_fu_12525_p_din0 = grp_fu_2978_p0;
assign grp_fu_12525_p_din1 = grp_fu_2978_p1;
assign grp_fu_12529_p_ce = 1'b1;
assign grp_fu_12529_p_din0 = grp_fu_2984_p0;
assign grp_fu_12529_p_din1 = grp_fu_2984_p1;
assign grp_fu_12533_p_ce = 1'b1;
assign grp_fu_12533_p_din0 = grp_fu_2990_p0;
assign grp_fu_12533_p_din1 = grp_fu_2990_p1;
assign grp_fu_12537_p_ce = 1'b1;
assign grp_fu_12537_p_din0 = grp_fu_2996_p0;
assign grp_fu_12537_p_din1 = grp_fu_2996_p1;
assign grp_fu_12541_p_ce = 1'b1;
assign grp_fu_12541_p_din0 = grp_fu_3002_p0;
assign grp_fu_12541_p_din1 = grp_fu_3002_p1;
assign grp_fu_12545_p_ce = 1'b1;
assign grp_fu_12545_p_din0 = grp_fu_3008_p0;
assign grp_fu_12545_p_din1 = grp_fu_3008_p1;
assign grp_fu_12557_p_ce = 1'b1;
assign grp_fu_12557_p_din0 = last_activations_10_0_1_val;
assign grp_fu_12557_p_din1 = output_difference_0_2_val;
endmodule 