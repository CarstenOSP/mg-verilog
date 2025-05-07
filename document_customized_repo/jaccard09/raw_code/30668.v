module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_16_address1,delta_weights2_16_ce1,delta_weights2_16_we1,delta_weights2_16_d1,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_17_address1,delta_weights2_17_ce1,delta_weights2_17_we1,delta_weights2_17_d1,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_18_address1,delta_weights2_18_ce1,delta_weights2_18_we1,delta_weights2_18_d1,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_19_address1,delta_weights2_19_ce1,delta_weights2_19_we1,delta_weights2_19_d1,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_20_address1,delta_weights2_20_ce1,delta_weights2_20_we1,delta_weights2_20_d1,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_21_address1,delta_weights2_21_ce1,delta_weights2_21_we1,delta_weights2_21_d1,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_22_address1,delta_weights2_22_ce1,delta_weights2_22_we1,delta_weights2_22_d1,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_23_address1,delta_weights2_23_ce1,delta_weights2_23_we1,delta_weights2_23_d1,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_24_address1,delta_weights2_24_ce1,delta_weights2_24_we1,delta_weights2_24_d1,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_25_address1,delta_weights2_25_ce1,delta_weights2_25_we1,delta_weights2_25_d1,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_26_address1,delta_weights2_26_ce1,delta_weights2_26_we1,delta_weights2_26_d1,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_27_address1,delta_weights2_27_ce1,delta_weights2_27_we1,delta_weights2_27_d1,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_28_address1,delta_weights2_28_ce1,delta_weights2_28_we1,delta_weights2_28_d1,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_29_address1,delta_weights2_29_ce1,delta_weights2_29_we1,delta_weights2_29_d1,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_30_address1,delta_weights2_30_ce1,delta_weights2_30_we1,delta_weights2_30_d1,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_31_address1,delta_weights2_31_ce1,delta_weights2_31_we1,delta_weights2_31_d1,output_difference_0_0_0_val,output_difference_0_0_1_val,output_difference_1_0_0_val,output_difference_1_0_1_val,output_difference_2_0_0_val,output_difference_2_0_1_val,output_difference_3_0_0_val,output_difference_3_0_1_val,output_difference_4_0_0_val,output_difference_4_0_1_val,output_difference_5_0_0_val,output_difference_5_0_1_val,output_difference_6_0_0_val,output_difference_6_0_1_val,output_difference_7_0_0_val,output_difference_7_0_1_val,output_difference_8_0_0_val,output_difference_8_0_1_val,output_difference_9_0_0_val,output_difference_9_0_1_val,output_difference_10_0_0_val,output_difference_10_0_1_val,output_difference_11_0_0_val,output_difference_11_0_1_val,output_difference_12_0_0_val,output_difference_12_0_1_val,output_difference_13_0_0_val,output_difference_13_0_1_val,output_difference_14_0_0_val,output_difference_14_0_1_val,output_difference_15_0_0_val,output_difference_15_0_1_val,output_difference_16_0_0_val,output_difference_16_0_1_val,output_difference_17_0_0_val,output_difference_17_0_1_val,output_difference_18_0_0_val,output_difference_18_0_1_val,output_difference_19_0_0_val,output_difference_19_0_1_val,output_difference_20_0_0_val,output_difference_20_0_1_val,output_difference_21_0_0_val,output_difference_21_0_1_val,output_difference_22_0_0_val,output_difference_22_0_1_val,output_difference_23_0_0_val,output_difference_23_0_1_val,output_difference_24_0_0_val,output_difference_24_0_1_val,output_difference_25_0_0_val,output_difference_25_0_1_val,output_difference_26_0_0_val,output_difference_26_0_1_val,output_difference_27_0_0_val,output_difference_27_0_1_val,output_difference_28_0_0_val,output_difference_28_0_1_val,output_difference_29_0_0_val,output_difference_29_0_1_val,output_difference_30_0_0_val,output_difference_30_0_1_val,output_difference_31_0_0_val,output_difference_31_0_1_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,last_activations_16_address0,last_activations_16_ce0,last_activations_16_q0,last_activations_17_address0,last_activations_17_ce0,last_activations_17_q0,last_activations_18_address0,last_activations_18_ce0,last_activations_18_q0,last_activations_19_address0,last_activations_19_ce0,last_activations_19_q0,last_activations_20_address0,last_activations_20_ce0,last_activations_20_q0,last_activations_21_address0,last_activations_21_ce0,last_activations_21_q0,last_activations_22_address0,last_activations_22_ce0,last_activations_22_q0,last_activations_23_address0,last_activations_23_ce0,last_activations_23_q0,last_activations_24_address0,last_activations_24_ce0,last_activations_24_q0,last_activations_25_address0,last_activations_25_ce0,last_activations_25_q0,last_activations_26_address0,last_activations_26_ce0,last_activations_26_q0,last_activations_27_address0,last_activations_27_ce0,last_activations_27_q0,last_activations_28_address0,last_activations_28_ce0,last_activations_28_q0,last_activations_29_address0,last_activations_29_ce0,last_activations_29_q0,last_activations_30_address0,last_activations_30_ce0,last_activations_30_q0,last_activations_31_address0,last_activations_31_ce0,last_activations_31_q0,grp_fu_12293_p_din0,grp_fu_12293_p_din1,grp_fu_12293_p_dout0,grp_fu_12293_p_ce,grp_fu_12297_p_din0,grp_fu_12297_p_din1,grp_fu_12297_p_dout0,grp_fu_12297_p_ce,grp_fu_12301_p_din0,grp_fu_12301_p_din1,grp_fu_12301_p_dout0,grp_fu_12301_p_ce,grp_fu_12305_p_din0,grp_fu_12305_p_din1,grp_fu_12305_p_dout0,grp_fu_12305_p_ce,grp_fu_12309_p_din0,grp_fu_12309_p_din1,grp_fu_12309_p_dout0,grp_fu_12309_p_ce,grp_fu_12313_p_din0,grp_fu_12313_p_din1,grp_fu_12313_p_dout0,grp_fu_12313_p_ce,grp_fu_12317_p_din0,grp_fu_12317_p_din1,grp_fu_12317_p_dout0,grp_fu_12317_p_ce,grp_fu_12321_p_din0,grp_fu_12321_p_din1,grp_fu_12321_p_dout0,grp_fu_12321_p_ce,grp_fu_12325_p_din0,grp_fu_12325_p_din1,grp_fu_12325_p_dout0,grp_fu_12325_p_ce,grp_fu_12329_p_din0,grp_fu_12329_p_din1,grp_fu_12329_p_dout0,grp_fu_12329_p_ce,grp_fu_12333_p_din0,grp_fu_12333_p_din1,grp_fu_12333_p_dout0,grp_fu_12333_p_ce,grp_fu_12337_p_din0,grp_fu_12337_p_din1,grp_fu_12337_p_dout0,grp_fu_12337_p_ce,grp_fu_12341_p_din0,grp_fu_12341_p_din1,grp_fu_12341_p_dout0,grp_fu_12341_p_ce,grp_fu_12345_p_din0,grp_fu_12345_p_din1,grp_fu_12345_p_dout0,grp_fu_12345_p_ce,grp_fu_12349_p_din0,grp_fu_12349_p_din1,grp_fu_12349_p_dout0,grp_fu_12349_p_ce,grp_fu_12353_p_din0,grp_fu_12353_p_din1,grp_fu_12353_p_dout0,grp_fu_12353_p_ce,grp_fu_12357_p_din0,grp_fu_12357_p_din1,grp_fu_12357_p_dout0,grp_fu_12357_p_ce,grp_fu_12361_p_din0,grp_fu_12361_p_din1,grp_fu_12361_p_dout0,grp_fu_12361_p_ce,grp_fu_12365_p_din0,grp_fu_12365_p_din1,grp_fu_12365_p_dout0,grp_fu_12365_p_ce,grp_fu_12369_p_din0,grp_fu_12369_p_din1,grp_fu_12369_p_dout0,grp_fu_12369_p_ce,grp_fu_12373_p_din0,grp_fu_12373_p_din1,grp_fu_12373_p_dout0,grp_fu_12373_p_ce,grp_fu_12377_p_din0,grp_fu_12377_p_din1,grp_fu_12377_p_dout0,grp_fu_12377_p_ce,grp_fu_12381_p_din0,grp_fu_12381_p_din1,grp_fu_12381_p_dout0,grp_fu_12381_p_ce,grp_fu_12385_p_din0,grp_fu_12385_p_din1,grp_fu_12385_p_dout0,grp_fu_12385_p_ce,grp_fu_12389_p_din0,grp_fu_12389_p_din1,grp_fu_12389_p_dout0,grp_fu_12389_p_ce,grp_fu_12393_p_din0,grp_fu_12393_p_din1,grp_fu_12393_p_dout0,grp_fu_12393_p_ce,grp_fu_12397_p_din0,grp_fu_12397_p_din1,grp_fu_12397_p_dout0,grp_fu_12397_p_ce,grp_fu_12401_p_din0,grp_fu_12401_p_din1,grp_fu_12401_p_dout0,grp_fu_12401_p_ce,grp_fu_12405_p_din0,grp_fu_12405_p_din1,grp_fu_12405_p_dout0,grp_fu_12405_p_ce,grp_fu_12409_p_din0,grp_fu_12409_p_din1,grp_fu_12409_p_dout0,grp_fu_12409_p_ce,grp_fu_12413_p_din0,grp_fu_12413_p_din1,grp_fu_12413_p_dout0,grp_fu_12413_p_ce,grp_fu_12417_p_din0,grp_fu_12417_p_din1,grp_fu_12417_p_dout0,grp_fu_12417_p_ce,grp_fu_12421_p_din0,grp_fu_12421_p_din1,grp_fu_12421_p_dout0,grp_fu_12421_p_ce,grp_fu_12425_p_din0,grp_fu_12425_p_din1,grp_fu_12425_p_dout0,grp_fu_12425_p_ce,grp_fu_12429_p_din0,grp_fu_12429_p_din1,grp_fu_12429_p_dout0,grp_fu_12429_p_ce,grp_fu_12433_p_din0,grp_fu_12433_p_din1,grp_fu_12433_p_dout0,grp_fu_12433_p_ce,grp_fu_12437_p_din0,grp_fu_12437_p_din1,grp_fu_12437_p_dout0,grp_fu_12437_p_ce,grp_fu_12441_p_din0,grp_fu_12441_p_din1,grp_fu_12441_p_dout0,grp_fu_12441_p_ce,grp_fu_12445_p_din0,grp_fu_12445_p_din1,grp_fu_12445_p_dout0,grp_fu_12445_p_ce,grp_fu_12449_p_din0,grp_fu_12449_p_din1,grp_fu_12449_p_dout0,grp_fu_12449_p_ce,grp_fu_12453_p_din0,grp_fu_12453_p_din1,grp_fu_12453_p_dout0,grp_fu_12453_p_ce,grp_fu_12457_p_din0,grp_fu_12457_p_din1,grp_fu_12457_p_dout0,grp_fu_12457_p_ce,grp_fu_12461_p_din0,grp_fu_12461_p_din1,grp_fu_12461_p_dout0,grp_fu_12461_p_ce,grp_fu_12465_p_din0,grp_fu_12465_p_din1,grp_fu_12465_p_dout0,grp_fu_12465_p_ce,grp_fu_12469_p_din0,grp_fu_12469_p_din1,grp_fu_12469_p_dout0,grp_fu_12469_p_ce,grp_fu_12473_p_din0,grp_fu_12473_p_din1,grp_fu_12473_p_dout0,grp_fu_12473_p_ce,grp_fu_12477_p_din0,grp_fu_12477_p_din1,grp_fu_12477_p_dout0,grp_fu_12477_p_ce,grp_fu_12481_p_din0,grp_fu_12481_p_din1,grp_fu_12481_p_dout0,grp_fu_12481_p_ce,grp_fu_12485_p_din0,grp_fu_12485_p_din1,grp_fu_12485_p_dout0,grp_fu_12485_p_ce,grp_fu_12489_p_din0,grp_fu_12489_p_din1,grp_fu_12489_p_dout0,grp_fu_12489_p_ce,grp_fu_12493_p_din0,grp_fu_12493_p_din1,grp_fu_12493_p_dout0,grp_fu_12493_p_ce,grp_fu_12497_p_din0,grp_fu_12497_p_din1,grp_fu_12497_p_dout0,grp_fu_12497_p_ce,grp_fu_12501_p_din0,grp_fu_12501_p_din1,grp_fu_12501_p_dout0,grp_fu_12501_p_ce,grp_fu_12505_p_din0,grp_fu_12505_p_din1,grp_fu_12505_p_dout0,grp_fu_12505_p_ce,grp_fu_12509_p_din0,grp_fu_12509_p_din1,grp_fu_12509_p_dout0,grp_fu_12509_p_ce,grp_fu_12513_p_din0,grp_fu_12513_p_din1,grp_fu_12513_p_dout0,grp_fu_12513_p_ce,grp_fu_12517_p_din0,grp_fu_12517_p_din1,grp_fu_12517_p_dout0,grp_fu_12517_p_ce,grp_fu_12521_p_din0,grp_fu_12521_p_din1,grp_fu_12521_p_dout0,grp_fu_12521_p_ce,grp_fu_12525_p_din0,grp_fu_12525_p_din1,grp_fu_12525_p_dout0,grp_fu_12525_p_ce,grp_fu_12529_p_din0,grp_fu_12529_p_din1,grp_fu_12529_p_dout0,grp_fu_12529_p_ce,grp_fu_12533_p_din0,grp_fu_12533_p_din1,grp_fu_12533_p_dout0,grp_fu_12533_p_ce,grp_fu_12537_p_din0,grp_fu_12537_p_din1,grp_fu_12537_p_dout0,grp_fu_12537_p_ce,grp_fu_12541_p_din0,grp_fu_12541_p_din1,grp_fu_12541_p_dout0,grp_fu_12541_p_ce,grp_fu_12545_p_din0,grp_fu_12545_p_din1,grp_fu_12545_p_dout0,grp_fu_12545_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [6:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [6:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [6:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [6:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [6:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [6:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [6:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [6:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [6:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [6:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [6:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [6:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [6:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [6:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [6:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [6:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [6:0] delta_weights2_8_address1;
output   delta_weights2_8_ce1;
output   delta_weights2_8_we1;
output  [63:0] delta_weights2_8_d1;
output  [6:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [6:0] delta_weights2_9_address1;
output   delta_weights2_9_ce1;
output   delta_weights2_9_we1;
output  [63:0] delta_weights2_9_d1;
output  [6:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [6:0] delta_weights2_10_address1;
output   delta_weights2_10_ce1;
output   delta_weights2_10_we1;
output  [63:0] delta_weights2_10_d1;
output  [6:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [6:0] delta_weights2_11_address1;
output   delta_weights2_11_ce1;
output   delta_weights2_11_we1;
output  [63:0] delta_weights2_11_d1;
output  [6:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [6:0] delta_weights2_12_address1;
output   delta_weights2_12_ce1;
output   delta_weights2_12_we1;
output  [63:0] delta_weights2_12_d1;
output  [6:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [6:0] delta_weights2_13_address1;
output   delta_weights2_13_ce1;
output   delta_weights2_13_we1;
output  [63:0] delta_weights2_13_d1;
output  [6:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [6:0] delta_weights2_14_address1;
output   delta_weights2_14_ce1;
output   delta_weights2_14_we1;
output  [63:0] delta_weights2_14_d1;
output  [6:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [6:0] delta_weights2_15_address1;
output   delta_weights2_15_ce1;
output   delta_weights2_15_we1;
output  [63:0] delta_weights2_15_d1;
output  [6:0] delta_weights2_16_address0;
output   delta_weights2_16_ce0;
output   delta_weights2_16_we0;
output  [63:0] delta_weights2_16_d0;
output  [6:0] delta_weights2_16_address1;
output   delta_weights2_16_ce1;
output   delta_weights2_16_we1;
output  [63:0] delta_weights2_16_d1;
output  [6:0] delta_weights2_17_address0;
output   delta_weights2_17_ce0;
output   delta_weights2_17_we0;
output  [63:0] delta_weights2_17_d0;
output  [6:0] delta_weights2_17_address1;
output   delta_weights2_17_ce1;
output   delta_weights2_17_we1;
output  [63:0] delta_weights2_17_d1;
output  [6:0] delta_weights2_18_address0;
output   delta_weights2_18_ce0;
output   delta_weights2_18_we0;
output  [63:0] delta_weights2_18_d0;
output  [6:0] delta_weights2_18_address1;
output   delta_weights2_18_ce1;
output   delta_weights2_18_we1;
output  [63:0] delta_weights2_18_d1;
output  [6:0] delta_weights2_19_address0;
output   delta_weights2_19_ce0;
output   delta_weights2_19_we0;
output  [63:0] delta_weights2_19_d0;
output  [6:0] delta_weights2_19_address1;
output   delta_weights2_19_ce1;
output   delta_weights2_19_we1;
output  [63:0] delta_weights2_19_d1;
output  [6:0] delta_weights2_20_address0;
output   delta_weights2_20_ce0;
output   delta_weights2_20_we0;
output  [63:0] delta_weights2_20_d0;
output  [6:0] delta_weights2_20_address1;
output   delta_weights2_20_ce1;
output   delta_weights2_20_we1;
output  [63:0] delta_weights2_20_d1;
output  [6:0] delta_weights2_21_address0;
output   delta_weights2_21_ce0;
output   delta_weights2_21_we0;
output  [63:0] delta_weights2_21_d0;
output  [6:0] delta_weights2_21_address1;
output   delta_weights2_21_ce1;
output   delta_weights2_21_we1;
output  [63:0] delta_weights2_21_d1;
output  [6:0] delta_weights2_22_address0;
output   delta_weights2_22_ce0;
output   delta_weights2_22_we0;
output  [63:0] delta_weights2_22_d0;
output  [6:0] delta_weights2_22_address1;
output   delta_weights2_22_ce1;
output   delta_weights2_22_we1;
output  [63:0] delta_weights2_22_d1;
output  [6:0] delta_weights2_23_address0;
output   delta_weights2_23_ce0;
output   delta_weights2_23_we0;
output  [63:0] delta_weights2_23_d0;
output  [6:0] delta_weights2_23_address1;
output   delta_weights2_23_ce1;
output   delta_weights2_23_we1;
output  [63:0] delta_weights2_23_d1;
output  [6:0] delta_weights2_24_address0;
output   delta_weights2_24_ce0;
output   delta_weights2_24_we0;
output  [63:0] delta_weights2_24_d0;
output  [6:0] delta_weights2_24_address1;
output   delta_weights2_24_ce1;
output   delta_weights2_24_we1;
output  [63:0] delta_weights2_24_d1;
output  [6:0] delta_weights2_25_address0;
output   delta_weights2_25_ce0;
output   delta_weights2_25_we0;
output  [63:0] delta_weights2_25_d0;
output  [6:0] delta_weights2_25_address1;
output   delta_weights2_25_ce1;
output   delta_weights2_25_we1;
output  [63:0] delta_weights2_25_d1;
output  [6:0] delta_weights2_26_address0;
output   delta_weights2_26_ce0;
output   delta_weights2_26_we0;
output  [63:0] delta_weights2_26_d0;
output  [6:0] delta_weights2_26_address1;
output   delta_weights2_26_ce1;
output   delta_weights2_26_we1;
output  [63:0] delta_weights2_26_d1;
output  [6:0] delta_weights2_27_address0;
output   delta_weights2_27_ce0;
output   delta_weights2_27_we0;
output  [63:0] delta_weights2_27_d0;
output  [6:0] delta_weights2_27_address1;
output   delta_weights2_27_ce1;
output   delta_weights2_27_we1;
output  [63:0] delta_weights2_27_d1;
output  [6:0] delta_weights2_28_address0;
output   delta_weights2_28_ce0;
output   delta_weights2_28_we0;
output  [63:0] delta_weights2_28_d0;
output  [6:0] delta_weights2_28_address1;
output   delta_weights2_28_ce1;
output   delta_weights2_28_we1;
output  [63:0] delta_weights2_28_d1;
output  [6:0] delta_weights2_29_address0;
output   delta_weights2_29_ce0;
output   delta_weights2_29_we0;
output  [63:0] delta_weights2_29_d0;
output  [6:0] delta_weights2_29_address1;
output   delta_weights2_29_ce1;
output   delta_weights2_29_we1;
output  [63:0] delta_weights2_29_d1;
output  [6:0] delta_weights2_30_address0;
output   delta_weights2_30_ce0;
output   delta_weights2_30_we0;
output  [63:0] delta_weights2_30_d0;
output  [6:0] delta_weights2_30_address1;
output   delta_weights2_30_ce1;
output   delta_weights2_30_we1;
output  [63:0] delta_weights2_30_d1;
output  [6:0] delta_weights2_31_address0;
output   delta_weights2_31_ce0;
output   delta_weights2_31_we0;
output  [63:0] delta_weights2_31_d0;
output  [6:0] delta_weights2_31_address1;
output   delta_weights2_31_ce1;
output   delta_weights2_31_we1;
output  [63:0] delta_weights2_31_d1;
input  [63:0] output_difference_0_0_0_val;
input  [63:0] output_difference_0_0_1_val;
input  [63:0] output_difference_1_0_0_val;
input  [63:0] output_difference_1_0_1_val;
input  [63:0] output_difference_2_0_0_val;
input  [63:0] output_difference_2_0_1_val;
input  [63:0] output_difference_3_0_0_val;
input  [63:0] output_difference_3_0_1_val;
input  [63:0] output_difference_4_0_0_val;
input  [63:0] output_difference_4_0_1_val;
input  [63:0] output_difference_5_0_0_val;
input  [63:0] output_difference_5_0_1_val;
input  [63:0] output_difference_6_0_0_val;
input  [63:0] output_difference_6_0_1_val;
input  [63:0] output_difference_7_0_0_val;
input  [63:0] output_difference_7_0_1_val;
input  [63:0] output_difference_8_0_0_val;
input  [63:0] output_difference_8_0_1_val;
input  [63:0] output_difference_9_0_0_val;
input  [63:0] output_difference_9_0_1_val;
input  [63:0] output_difference_10_0_0_val;
input  [63:0] output_difference_10_0_1_val;
input  [63:0] output_difference_11_0_0_val;
input  [63:0] output_difference_11_0_1_val;
input  [63:0] output_difference_12_0_0_val;
input  [63:0] output_difference_12_0_1_val;
input  [63:0] output_difference_13_0_0_val;
input  [63:0] output_difference_13_0_1_val;
input  [63:0] output_difference_14_0_0_val;
input  [63:0] output_difference_14_0_1_val;
input  [63:0] output_difference_15_0_0_val;
input  [63:0] output_difference_15_0_1_val;
input  [63:0] output_difference_16_0_0_val;
input  [63:0] output_difference_16_0_1_val;
input  [63:0] output_difference_17_0_0_val;
input  [63:0] output_difference_17_0_1_val;
input  [63:0] output_difference_18_0_0_val;
input  [63:0] output_difference_18_0_1_val;
input  [63:0] output_difference_19_0_0_val;
input  [63:0] output_difference_19_0_1_val;
input  [63:0] output_difference_20_0_0_val;
input  [63:0] output_difference_20_0_1_val;
input  [63:0] output_difference_21_0_0_val;
input  [63:0] output_difference_21_0_1_val;
input  [63:0] output_difference_22_0_0_val;
input  [63:0] output_difference_22_0_1_val;
input  [63:0] output_difference_23_0_0_val;
input  [63:0] output_difference_23_0_1_val;
input  [63:0] output_difference_24_0_0_val;
input  [63:0] output_difference_24_0_1_val;
input  [63:0] output_difference_25_0_0_val;
input  [63:0] output_difference_25_0_1_val;
input  [63:0] output_difference_26_0_0_val;
input  [63:0] output_difference_26_0_1_val;
input  [63:0] output_difference_27_0_0_val;
input  [63:0] output_difference_27_0_1_val;
input  [63:0] output_difference_28_0_0_val;
input  [63:0] output_difference_28_0_1_val;
input  [63:0] output_difference_29_0_0_val;
input  [63:0] output_difference_29_0_1_val;
input  [63:0] output_difference_30_0_0_val;
input  [63:0] output_difference_30_0_1_val;
input  [63:0] output_difference_31_0_0_val;
input  [63:0] output_difference_31_0_1_val;
output  [0:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [0:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [0:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [0:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [0:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [0:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [0:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [0:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [0:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [0:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [0:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [0:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [0:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [0:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [0:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [0:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
output  [0:0] last_activations_16_address0;
output   last_activations_16_ce0;
input  [63:0] last_activations_16_q0;
output  [0:0] last_activations_17_address0;
output   last_activations_17_ce0;
input  [63:0] last_activations_17_q0;
output  [0:0] last_activations_18_address0;
output   last_activations_18_ce0;
input  [63:0] last_activations_18_q0;
output  [0:0] last_activations_19_address0;
output   last_activations_19_ce0;
input  [63:0] last_activations_19_q0;
output  [0:0] last_activations_20_address0;
output   last_activations_20_ce0;
input  [63:0] last_activations_20_q0;
output  [0:0] last_activations_21_address0;
output   last_activations_21_ce0;
input  [63:0] last_activations_21_q0;
output  [0:0] last_activations_22_address0;
output   last_activations_22_ce0;
input  [63:0] last_activations_22_q0;
output  [0:0] last_activations_23_address0;
output   last_activations_23_ce0;
input  [63:0] last_activations_23_q0;
output  [0:0] last_activations_24_address0;
output   last_activations_24_ce0;
input  [63:0] last_activations_24_q0;
output  [0:0] last_activations_25_address0;
output   last_activations_25_ce0;
input  [63:0] last_activations_25_q0;
output  [0:0] last_activations_26_address0;
output   last_activations_26_ce0;
input  [63:0] last_activations_26_q0;
output  [0:0] last_activations_27_address0;
output   last_activations_27_ce0;
input  [63:0] last_activations_27_q0;
output  [0:0] last_activations_28_address0;
output   last_activations_28_ce0;
input  [63:0] last_activations_28_q0;
output  [0:0] last_activations_29_address0;
output   last_activations_29_ce0;
input  [63:0] last_activations_29_q0;
output  [0:0] last_activations_30_address0;
output   last_activations_30_ce0;
input  [63:0] last_activations_30_q0;
output  [0:0] last_activations_31_address0;
output   last_activations_31_ce0;
input  [63:0] last_activations_31_q0;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_2228_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_11_reg_2843;
reg   [6:0] i_11_reg_2843_pp0_iter1_reg;
reg   [6:0] i_11_reg_2843_pp0_iter2_reg;
reg   [6:0] i_11_reg_2843_pp0_iter3_reg;
reg   [6:0] i_11_reg_2843_pp0_iter4_reg;
reg   [6:0] i_11_reg_2843_pp0_iter5_reg;
reg   [6:0] i_11_reg_2843_pp0_iter6_reg;
reg   [6:0] i_11_reg_2843_pp0_iter7_reg;
reg   [6:0] i_11_reg_2843_pp0_iter8_reg;
wire   [63:0] tmp_fu_2292_p67;
reg   [63:0] tmp_reg_3014;
reg   [63:0] mul_reg_3082;
reg   [63:0] mul_1_reg_3087;
reg   [63:0] mul_2_reg_3092;
reg   [63:0] mul_3_reg_3097;
reg   [63:0] mul_4_reg_3102;
reg   [63:0] mul_5_reg_3107;
reg   [63:0] mul_6_reg_3112;
reg   [63:0] mul_7_reg_3117;
reg   [63:0] mul_8_reg_3122;
reg   [63:0] mul_9_reg_3127;
reg   [63:0] mul_10_reg_3132;
reg   [63:0] mul_11_reg_3137;
reg   [63:0] mul_12_reg_3142;
reg   [63:0] mul_13_reg_3147;
reg   [63:0] mul_14_reg_3152;
reg   [63:0] mul_15_reg_3157;
reg   [63:0] mul_16_reg_3162;
reg   [63:0] mul_17_reg_3167;
reg   [63:0] mul_18_reg_3172;
reg   [63:0] mul_19_reg_3177;
reg   [63:0] mul_20_reg_3182;
reg   [63:0] mul_21_reg_3187;
reg   [63:0] mul_22_reg_3192;
reg   [63:0] mul_23_reg_3197;
reg   [63:0] mul_24_reg_3202;
reg   [63:0] mul_25_reg_3207;
reg   [63:0] mul_26_reg_3212;
reg   [63:0] mul_27_reg_3217;
reg   [63:0] mul_28_reg_3222;
reg   [63:0] mul_29_reg_3227;
reg   [63:0] mul_30_reg_3232;
reg   [63:0] mul_31_reg_3237;
reg   [63:0] mul_32_reg_3242;
reg   [63:0] mul_33_reg_3247;
reg   [63:0] mul_34_reg_3252;
reg   [63:0] mul_35_reg_3257;
reg   [63:0] mul_36_reg_3262;
reg   [63:0] mul_37_reg_3267;
reg   [63:0] mul_38_reg_3272;
reg   [63:0] mul_39_reg_3277;
reg   [63:0] mul_40_reg_3282;
reg   [63:0] mul_41_reg_3287;
reg   [63:0] mul_42_reg_3292;
reg   [63:0] mul_43_reg_3297;
reg   [63:0] mul_44_reg_3302;
reg   [63:0] mul_45_reg_3307;
reg   [63:0] mul_46_reg_3312;
reg   [63:0] mul_47_reg_3317;
reg   [63:0] mul_48_reg_3322;
reg   [63:0] mul_49_reg_3327;
reg   [63:0] mul_50_reg_3332;
reg   [63:0] mul_51_reg_3337;
reg   [63:0] mul_52_reg_3342;
reg   [63:0] mul_53_reg_3347;
reg   [63:0] mul_54_reg_3352;
reg   [63:0] mul_55_reg_3357;
reg   [63:0] mul_56_reg_3362;
reg   [63:0] mul_57_reg_3367;
reg   [63:0] mul_58_reg_3372;
reg   [63:0] mul_59_reg_3377;
reg   [63:0] mul_60_reg_3382;
reg   [63:0] mul_61_reg_3387;
reg   [63:0] mul_62_reg_3392;
reg   [63:0] mul_63_reg_3397;
wire   [63:0] zext_ln92_fu_2248_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_fu_2436_p1;
wire   [63:0] zext_ln95_1_fu_2480_p1;
reg   [6:0] i_fu_360;
wire   [6:0] add_ln93_fu_2234_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_15_ce0_local;
reg    last_activations_16_ce0_local;
reg    last_activations_17_ce0_local;
reg    last_activations_18_ce0_local;
reg    last_activations_19_ce0_local;
reg    last_activations_20_ce0_local;
reg    last_activations_21_ce0_local;
reg    last_activations_22_ce0_local;
reg    last_activations_23_ce0_local;
reg    last_activations_24_ce0_local;
reg    last_activations_25_ce0_local;
reg    last_activations_26_ce0_local;
reg    last_activations_27_ce0_local;
reg    last_activations_28_ce0_local;
reg    last_activations_29_ce0_local;
reg    last_activations_30_ce0_local;
reg    last_activations_31_ce0_local;
reg    delta_weights2_0_we1_local;
reg    delta_weights2_0_ce1_local;
reg    delta_weights2_0_we0_local;
reg    delta_weights2_0_ce0_local;
reg    delta_weights2_1_we1_local;
reg    delta_weights2_1_ce1_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_2_we1_local;
reg    delta_weights2_2_ce1_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we1_local;
reg    delta_weights2_3_ce1_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_4_we1_local;
reg    delta_weights2_4_ce1_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we1_local;
reg    delta_weights2_5_ce1_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_6_we1_local;
reg    delta_weights2_6_ce1_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we1_local;
reg    delta_weights2_7_ce1_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
reg    delta_weights2_8_we1_local;
reg    delta_weights2_8_ce1_local;
reg    delta_weights2_8_we0_local;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_9_we1_local;
reg    delta_weights2_9_ce1_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_10_we1_local;
reg    delta_weights2_10_ce1_local;
reg    delta_weights2_10_we0_local;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_11_we1_local;
reg    delta_weights2_11_ce1_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_12_we1_local;
reg    delta_weights2_12_ce1_local;
reg    delta_weights2_12_we0_local;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_13_we1_local;
reg    delta_weights2_13_ce1_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_14_we1_local;
reg    delta_weights2_14_ce1_local;
reg    delta_weights2_14_we0_local;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_15_we1_local;
reg    delta_weights2_15_ce1_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
reg    delta_weights2_16_we1_local;
reg    delta_weights2_16_ce1_local;
reg    delta_weights2_16_we0_local;
reg    delta_weights2_16_ce0_local;
reg    delta_weights2_17_we1_local;
reg    delta_weights2_17_ce1_local;
reg    delta_weights2_17_we0_local;
reg    delta_weights2_17_ce0_local;
reg    delta_weights2_18_we1_local;
reg    delta_weights2_18_ce1_local;
reg    delta_weights2_18_we0_local;
reg    delta_weights2_18_ce0_local;
reg    delta_weights2_19_we1_local;
reg    delta_weights2_19_ce1_local;
reg    delta_weights2_19_we0_local;
reg    delta_weights2_19_ce0_local;
reg    delta_weights2_20_we1_local;
reg    delta_weights2_20_ce1_local;
reg    delta_weights2_20_we0_local;
reg    delta_weights2_20_ce0_local;
reg    delta_weights2_21_we1_local;
reg    delta_weights2_21_ce1_local;
reg    delta_weights2_21_we0_local;
reg    delta_weights2_21_ce0_local;
reg    delta_weights2_22_we1_local;
reg    delta_weights2_22_ce1_local;
reg    delta_weights2_22_we0_local;
reg    delta_weights2_22_ce0_local;
reg    delta_weights2_23_we1_local;
reg    delta_weights2_23_ce1_local;
reg    delta_weights2_23_we0_local;
reg    delta_weights2_23_ce0_local;
reg    delta_weights2_24_we1_local;
reg    delta_weights2_24_ce1_local;
reg    delta_weights2_24_we0_local;
reg    delta_weights2_24_ce0_local;
reg    delta_weights2_25_we1_local;
reg    delta_weights2_25_ce1_local;
reg    delta_weights2_25_we0_local;
reg    delta_weights2_25_ce0_local;
reg    delta_weights2_26_we1_local;
reg    delta_weights2_26_ce1_local;
reg    delta_weights2_26_we0_local;
reg    delta_weights2_26_ce0_local;
reg    delta_weights2_27_we1_local;
reg    delta_weights2_27_ce1_local;
reg    delta_weights2_27_we0_local;
reg    delta_weights2_27_ce0_local;
reg    delta_weights2_28_we1_local;
reg    delta_weights2_28_ce1_local;
reg    delta_weights2_28_we0_local;
reg    delta_weights2_28_ce0_local;
reg    delta_weights2_29_we1_local;
reg    delta_weights2_29_ce1_local;
reg    delta_weights2_29_we0_local;
reg    delta_weights2_29_ce0_local;
reg    delta_weights2_30_we1_local;
reg    delta_weights2_30_ce1_local;
reg    delta_weights2_30_we0_local;
reg    delta_weights2_30_ce0_local;
reg    delta_weights2_31_we1_local;
reg    delta_weights2_31_ce1_local;
reg    delta_weights2_31_we0_local;
reg    delta_weights2_31_ce0_local;
wire   [0:0] tmp_5_fu_2240_p3;
wire   [63:0] tmp_fu_2292_p65;
wire   [4:0] tmp_fu_2292_p66;
wire   [6:0] shl_ln95_fu_2431_p2;
wire   [5:0] trunc_ln95_fu_2428_p1;
wire   [6:0] or_ln_fu_2472_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_fu_2292_p1;
wire   [4:0] tmp_fu_2292_p3;
wire   [4:0] tmp_fu_2292_p5;
wire   [4:0] tmp_fu_2292_p7;
wire   [4:0] tmp_fu_2292_p9;
wire   [4:0] tmp_fu_2292_p11;
wire   [4:0] tmp_fu_2292_p13;
wire   [4:0] tmp_fu_2292_p15;
wire   [4:0] tmp_fu_2292_p17;
wire   [4:0] tmp_fu_2292_p19;
wire   [4:0] tmp_fu_2292_p21;
wire   [4:0] tmp_fu_2292_p23;
wire   [4:0] tmp_fu_2292_p25;
wire   [4:0] tmp_fu_2292_p27;
wire   [4:0] tmp_fu_2292_p29;
wire   [4:0] tmp_fu_2292_p31;
wire  signed [4:0] tmp_fu_2292_p33;
wire  signed [4:0] tmp_fu_2292_p35;
wire  signed [4:0] tmp_fu_2292_p37;
wire  signed [4:0] tmp_fu_2292_p39;
wire  signed [4:0] tmp_fu_2292_p41;
wire  signed [4:0] tmp_fu_2292_p43;
wire  signed [4:0] tmp_fu_2292_p45;
wire  signed [4:0] tmp_fu_2292_p47;
wire  signed [4:0] tmp_fu_2292_p49;
wire  signed [4:0] tmp_fu_2292_p51;
wire  signed [4:0] tmp_fu_2292_p53;
wire  signed [4:0] tmp_fu_2292_p55;
wire  signed [4:0] tmp_fu_2292_p57;
wire  signed [4:0] tmp_fu_2292_p59;
wire  signed [4:0] tmp_fu_2292_p61;
wire  signed [4:0] tmp_fu_2292_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 i_fu_360 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U2136(.din0(last_activations_0_q0),.din1(last_activations_1_q0),.din2(last_activations_2_q0),.din3(last_activations_3_q0),.din4(last_activations_4_q0),.din5(last_activations_5_q0),.din6(last_activations_6_q0),.din7(last_activations_7_q0),.din8(last_activations_8_q0),.din9(last_activations_9_q0),.din10(last_activations_10_q0),.din11(last_activations_11_q0),.din12(last_activations_12_q0),.din13(last_activations_13_q0),.din14(last_activations_14_q0),.din15(last_activations_15_q0),.din16(last_activations_16_q0),.din17(last_activations_17_q0),.din18(last_activations_18_q0),.din19(last_activations_19_q0),.din20(last_activations_20_q0),.din21(last_activations_21_q0),.din22(last_activations_22_q0),.din23(last_activations_23_q0),.din24(last_activations_24_q0),.din25(last_activations_25_q0),.din26(last_activations_26_q0),.din27(last_activations_27_q0),.din28(last_activations_28_q0),.din29(last_activations_29_q0),.din30(last_activations_30_q0),.din31(last_activations_31_q0),.def(tmp_fu_2292_p65),.sel(tmp_fu_2292_p66),.dout(tmp_fu_2292_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_2228_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_360 <= add_ln93_fu_2234_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_360 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_11_reg_2843 <= ap_sig_allocacmp_i_11;
        i_11_reg_2843_pp0_iter1_reg <= i_11_reg_2843;
        tmp_reg_3014 <= tmp_fu_2292_p67;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        i_11_reg_2843_pp0_iter2_reg <= i_11_reg_2843_pp0_iter1_reg;
        i_11_reg_2843_pp0_iter3_reg <= i_11_reg_2843_pp0_iter2_reg;
        i_11_reg_2843_pp0_iter4_reg <= i_11_reg_2843_pp0_iter3_reg;
        i_11_reg_2843_pp0_iter5_reg <= i_11_reg_2843_pp0_iter4_reg;
        i_11_reg_2843_pp0_iter6_reg <= i_11_reg_2843_pp0_iter5_reg;
        i_11_reg_2843_pp0_iter7_reg <= i_11_reg_2843_pp0_iter6_reg;
        i_11_reg_2843_pp0_iter8_reg <= i_11_reg_2843_pp0_iter7_reg;
        mul_10_reg_3132 <= grp_fu_12333_p_dout0;
        mul_11_reg_3137 <= grp_fu_12337_p_dout0;
        mul_12_reg_3142 <= grp_fu_12341_p_dout0;
        mul_13_reg_3147 <= grp_fu_12345_p_dout0;
        mul_14_reg_3152 <= grp_fu_12349_p_dout0;
        mul_15_reg_3157 <= grp_fu_12353_p_dout0;
        mul_16_reg_3162 <= grp_fu_12357_p_dout0;
        mul_17_reg_3167 <= grp_fu_12361_p_dout0;
        mul_18_reg_3172 <= grp_fu_12365_p_dout0;
        mul_19_reg_3177 <= grp_fu_12369_p_dout0;
        mul_1_reg_3087 <= grp_fu_12297_p_dout0;
        mul_20_reg_3182 <= grp_fu_12373_p_dout0;
        mul_21_reg_3187 <= grp_fu_12377_p_dout0;
        mul_22_reg_3192 <= grp_fu_12381_p_dout0;
        mul_23_reg_3197 <= grp_fu_12385_p_dout0;
        mul_24_reg_3202 <= grp_fu_12389_p_dout0;
        mul_25_reg_3207 <= grp_fu_12393_p_dout0;
        mul_26_reg_3212 <= grp_fu_12397_p_dout0;
        mul_27_reg_3217 <= grp_fu_12401_p_dout0;
        mul_28_reg_3222 <= grp_fu_12405_p_dout0;
        mul_29_reg_3227 <= grp_fu_12409_p_dout0;
        mul_2_reg_3092 <= grp_fu_12301_p_dout0;
        mul_30_reg_3232 <= grp_fu_12413_p_dout0;
        mul_31_reg_3237 <= grp_fu_12417_p_dout0;
        mul_32_reg_3242 <= grp_fu_12421_p_dout0;
        mul_33_reg_3247 <= grp_fu_12425_p_dout0;
        mul_34_reg_3252 <= grp_fu_12429_p_dout0;
        mul_35_reg_3257 <= grp_fu_12433_p_dout0;
        mul_36_reg_3262 <= grp_fu_12437_p_dout0;
        mul_37_reg_3267 <= grp_fu_12441_p_dout0;
        mul_38_reg_3272 <= grp_fu_12445_p_dout0;
        mul_39_reg_3277 <= grp_fu_12449_p_dout0;
        mul_3_reg_3097 <= grp_fu_12305_p_dout0;
        mul_40_reg_3282 <= grp_fu_12453_p_dout0;
        mul_41_reg_3287 <= grp_fu_12457_p_dout0;
        mul_42_reg_3292 <= grp_fu_12461_p_dout0;
        mul_43_reg_3297 <= grp_fu_12465_p_dout0;
        mul_44_reg_3302 <= grp_fu_12469_p_dout0;
        mul_45_reg_3307 <= grp_fu_12473_p_dout0;
        mul_46_reg_3312 <= grp_fu_12477_p_dout0;
        mul_47_reg_3317 <= grp_fu_12481_p_dout0;
        mul_48_reg_3322 <= grp_fu_12485_p_dout0;
        mul_49_reg_3327 <= grp_fu_12489_p_dout0;
        mul_4_reg_3102 <= grp_fu_12309_p_dout0;
        mul_50_reg_3332 <= grp_fu_12493_p_dout0;
        mul_51_reg_3337 <= grp_fu_12497_p_dout0;
        mul_52_reg_3342 <= grp_fu_12501_p_dout0;
        mul_53_reg_3347 <= grp_fu_12505_p_dout0;
        mul_54_reg_3352 <= grp_fu_12509_p_dout0;
        mul_55_reg_3357 <= grp_fu_12513_p_dout0;
        mul_56_reg_3362 <= grp_fu_12517_p_dout0;
        mul_57_reg_3367 <= grp_fu_12521_p_dout0;
        mul_58_reg_3372 <= grp_fu_12525_p_dout0;
        mul_59_reg_3377 <= grp_fu_12529_p_dout0;
        mul_5_reg_3107 <= grp_fu_12313_p_dout0;
        mul_60_reg_3382 <= grp_fu_12533_p_dout0;
        mul_61_reg_3387 <= grp_fu_12537_p_dout0;
        mul_62_reg_3392 <= grp_fu_12541_p_dout0;
        mul_63_reg_3397 <= grp_fu_12545_p_dout0;
        mul_6_reg_3112 <= grp_fu_12317_p_dout0;
        mul_7_reg_3117 <= grp_fu_12321_p_dout0;
        mul_8_reg_3122 <= grp_fu_12325_p_dout0;
        mul_9_reg_3127 <= grp_fu_12329_p_dout0;
        mul_reg_3082 <= grp_fu_12293_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_2228_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_360;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce1_local = 1'b1;
    end else begin
        delta_weights2_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_we1_local = 1'b1;
    end else begin
        delta_weights2_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce1_local = 1'b1;
    end else begin
        delta_weights2_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_we1_local = 1'b1;
    end else begin
        delta_weights2_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce1_local = 1'b1;
    end else begin
        delta_weights2_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_we1_local = 1'b1;
    end else begin
        delta_weights2_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce1_local = 1'b1;
    end else begin
        delta_weights2_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_we1_local = 1'b1;
    end else begin
        delta_weights2_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce1_local = 1'b1;
    end else begin
        delta_weights2_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_we1_local = 1'b1;
    end else begin
        delta_weights2_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce1_local = 1'b1;
    end else begin
        delta_weights2_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_we1_local = 1'b1;
    end else begin
        delta_weights2_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_ce0_local = 1'b1;
    end else begin
        delta_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_ce1_local = 1'b1;
    end else begin
        delta_weights2_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_we0_local = 1'b1;
    end else begin
        delta_weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_we1_local = 1'b1;
    end else begin
        delta_weights2_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_ce0_local = 1'b1;
    end else begin
        delta_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_ce1_local = 1'b1;
    end else begin
        delta_weights2_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_we0_local = 1'b1;
    end else begin
        delta_weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_we1_local = 1'b1;
    end else begin
        delta_weights2_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_ce0_local = 1'b1;
    end else begin
        delta_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_ce1_local = 1'b1;
    end else begin
        delta_weights2_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_we0_local = 1'b1;
    end else begin
        delta_weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_we1_local = 1'b1;
    end else begin
        delta_weights2_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_ce0_local = 1'b1;
    end else begin
        delta_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_ce1_local = 1'b1;
    end else begin
        delta_weights2_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_we0_local = 1'b1;
    end else begin
        delta_weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_we1_local = 1'b1;
    end else begin
        delta_weights2_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_ce0_local = 1'b1;
    end else begin
        delta_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_ce1_local = 1'b1;
    end else begin
        delta_weights2_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_we0_local = 1'b1;
    end else begin
        delta_weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_we1_local = 1'b1;
    end else begin
        delta_weights2_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_ce0_local = 1'b1;
    end else begin
        delta_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_ce1_local = 1'b1;
    end else begin
        delta_weights2_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_we0_local = 1'b1;
    end else begin
        delta_weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_we1_local = 1'b1;
    end else begin
        delta_weights2_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_ce0_local = 1'b1;
    end else begin
        delta_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_ce1_local = 1'b1;
    end else begin
        delta_weights2_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_we0_local = 1'b1;
    end else begin
        delta_weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_we1_local = 1'b1;
    end else begin
        delta_weights2_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_ce0_local = 1'b1;
    end else begin
        delta_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_ce1_local = 1'b1;
    end else begin
        delta_weights2_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_we0_local = 1'b1;
    end else begin
        delta_weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_we1_local = 1'b1;
    end else begin
        delta_weights2_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_ce0_local = 1'b1;
    end else begin
        delta_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_ce1_local = 1'b1;
    end else begin
        delta_weights2_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_we0_local = 1'b1;
    end else begin
        delta_weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_we1_local = 1'b1;
    end else begin
        delta_weights2_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_ce0_local = 1'b1;
    end else begin
        delta_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_ce1_local = 1'b1;
    end else begin
        delta_weights2_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_we0_local = 1'b1;
    end else begin
        delta_weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_we1_local = 1'b1;
    end else begin
        delta_weights2_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_ce0_local = 1'b1;
    end else begin
        delta_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_ce1_local = 1'b1;
    end else begin
        delta_weights2_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_we0_local = 1'b1;
    end else begin
        delta_weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_we1_local = 1'b1;
    end else begin
        delta_weights2_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_ce0_local = 1'b1;
    end else begin
        delta_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_ce1_local = 1'b1;
    end else begin
        delta_weights2_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_we0_local = 1'b1;
    end else begin
        delta_weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_we1_local = 1'b1;
    end else begin
        delta_weights2_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_ce0_local = 1'b1;
    end else begin
        delta_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_ce1_local = 1'b1;
    end else begin
        delta_weights2_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_we0_local = 1'b1;
    end else begin
        delta_weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_we1_local = 1'b1;
    end else begin
        delta_weights2_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_ce0_local = 1'b1;
    end else begin
        delta_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_ce1_local = 1'b1;
    end else begin
        delta_weights2_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_we0_local = 1'b1;
    end else begin
        delta_weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_we1_local = 1'b1;
    end else begin
        delta_weights2_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_ce0_local = 1'b1;
    end else begin
        delta_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_ce1_local = 1'b1;
    end else begin
        delta_weights2_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_we0_local = 1'b1;
    end else begin
        delta_weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_we1_local = 1'b1;
    end else begin
        delta_weights2_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_ce0_local = 1'b1;
    end else begin
        delta_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_ce1_local = 1'b1;
    end else begin
        delta_weights2_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_we0_local = 1'b1;
    end else begin
        delta_weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_we1_local = 1'b1;
    end else begin
        delta_weights2_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce1_local = 1'b1;
    end else begin
        delta_weights2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_we1_local = 1'b1;
    end else begin
        delta_weights2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce1_local = 1'b1;
    end else begin
        delta_weights2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_we1_local = 1'b1;
    end else begin
        delta_weights2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce1_local = 1'b1;
    end else begin
        delta_weights2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_we1_local = 1'b1;
    end else begin
        delta_weights2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce1_local = 1'b1;
    end else begin
        delta_weights2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_we1_local = 1'b1;
    end else begin
        delta_weights2_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce1_local = 1'b1;
    end else begin
        delta_weights2_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_we1_local = 1'b1;
    end else begin
        delta_weights2_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce1_local = 1'b1;
    end else begin
        delta_weights2_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we1_local = 1'b1;
    end else begin
        delta_weights2_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_16_ce0_local = 1'b1;
    end else begin
        last_activations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_17_ce0_local = 1'b1;
    end else begin
        last_activations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_18_ce0_local = 1'b1;
    end else begin
        last_activations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_19_ce0_local = 1'b1;
    end else begin
        last_activations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_20_ce0_local = 1'b1;
    end else begin
        last_activations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_21_ce0_local = 1'b1;
    end else begin
        last_activations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_22_ce0_local = 1'b1;
    end else begin
        last_activations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_23_ce0_local = 1'b1;
    end else begin
        last_activations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_24_ce0_local = 1'b1;
    end else begin
        last_activations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_25_ce0_local = 1'b1;
    end else begin
        last_activations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_26_ce0_local = 1'b1;
    end else begin
        last_activations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_27_ce0_local = 1'b1;
    end else begin
        last_activations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_28_ce0_local = 1'b1;
    end else begin
        last_activations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_29_ce0_local = 1'b1;
    end else begin
        last_activations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_30_ce0_local = 1'b1;
    end else begin
        last_activations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_31_ce0_local = 1'b1;
    end else begin
        last_activations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln93_fu_2234_p2 = (ap_sig_allocacmp_i_11 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_0_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_0_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = mul_32_reg_3242;
assign delta_weights2_0_d1 = mul_reg_3082;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_10_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_10_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_ce1 = delta_weights2_10_ce1_local;
assign delta_weights2_10_d0 = mul_42_reg_3292;
assign delta_weights2_10_d1 = mul_10_reg_3132;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_10_we1 = delta_weights2_10_we1_local;
assign delta_weights2_11_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_11_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_ce1 = delta_weights2_11_ce1_local;
assign delta_weights2_11_d0 = mul_43_reg_3297;
assign delta_weights2_11_d1 = mul_11_reg_3137;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_11_we1 = delta_weights2_11_we1_local;
assign delta_weights2_12_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_12_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_ce1 = delta_weights2_12_ce1_local;
assign delta_weights2_12_d0 = mul_44_reg_3302;
assign delta_weights2_12_d1 = mul_12_reg_3142;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_12_we1 = delta_weights2_12_we1_local;
assign delta_weights2_13_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_13_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_ce1 = delta_weights2_13_ce1_local;
assign delta_weights2_13_d0 = mul_45_reg_3307;
assign delta_weights2_13_d1 = mul_13_reg_3147;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_13_we1 = delta_weights2_13_we1_local;
assign delta_weights2_14_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_14_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_ce1 = delta_weights2_14_ce1_local;
assign delta_weights2_14_d0 = mul_46_reg_3312;
assign delta_weights2_14_d1 = mul_14_reg_3152;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_14_we1 = delta_weights2_14_we1_local;
assign delta_weights2_15_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_15_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_ce1 = delta_weights2_15_ce1_local;
assign delta_weights2_15_d0 = mul_47_reg_3317;
assign delta_weights2_15_d1 = mul_15_reg_3157;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_15_we1 = delta_weights2_15_we1_local;
assign delta_weights2_16_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_16_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_16_ce0 = delta_weights2_16_ce0_local;
assign delta_weights2_16_ce1 = delta_weights2_16_ce1_local;
assign delta_weights2_16_d0 = mul_48_reg_3322;
assign delta_weights2_16_d1 = mul_16_reg_3162;
assign delta_weights2_16_we0 = delta_weights2_16_we0_local;
assign delta_weights2_16_we1 = delta_weights2_16_we1_local;
assign delta_weights2_17_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_17_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_17_ce0 = delta_weights2_17_ce0_local;
assign delta_weights2_17_ce1 = delta_weights2_17_ce1_local;
assign delta_weights2_17_d0 = mul_49_reg_3327;
assign delta_weights2_17_d1 = mul_17_reg_3167;
assign delta_weights2_17_we0 = delta_weights2_17_we0_local;
assign delta_weights2_17_we1 = delta_weights2_17_we1_local;
assign delta_weights2_18_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_18_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_18_ce0 = delta_weights2_18_ce0_local;
assign delta_weights2_18_ce1 = delta_weights2_18_ce1_local;
assign delta_weights2_18_d0 = mul_50_reg_3332;
assign delta_weights2_18_d1 = mul_18_reg_3172;
assign delta_weights2_18_we0 = delta_weights2_18_we0_local;
assign delta_weights2_18_we1 = delta_weights2_18_we1_local;
assign delta_weights2_19_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_19_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_19_ce0 = delta_weights2_19_ce0_local;
assign delta_weights2_19_ce1 = delta_weights2_19_ce1_local;
assign delta_weights2_19_d0 = mul_51_reg_3337;
assign delta_weights2_19_d1 = mul_19_reg_3177;
assign delta_weights2_19_we0 = delta_weights2_19_we0_local;
assign delta_weights2_19_we1 = delta_weights2_19_we1_local;
assign delta_weights2_1_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_1_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = mul_33_reg_3247;
assign delta_weights2_1_d1 = mul_1_reg_3087;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_20_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_20_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_20_ce0 = delta_weights2_20_ce0_local;
assign delta_weights2_20_ce1 = delta_weights2_20_ce1_local;
assign delta_weights2_20_d0 = mul_52_reg_3342;
assign delta_weights2_20_d1 = mul_20_reg_3182;
assign delta_weights2_20_we0 = delta_weights2_20_we0_local;
assign delta_weights2_20_we1 = delta_weights2_20_we1_local;
assign delta_weights2_21_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_21_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_21_ce0 = delta_weights2_21_ce0_local;
assign delta_weights2_21_ce1 = delta_weights2_21_ce1_local;
assign delta_weights2_21_d0 = mul_53_reg_3347;
assign delta_weights2_21_d1 = mul_21_reg_3187;
assign delta_weights2_21_we0 = delta_weights2_21_we0_local;
assign delta_weights2_21_we1 = delta_weights2_21_we1_local;
assign delta_weights2_22_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_22_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_22_ce0 = delta_weights2_22_ce0_local;
assign delta_weights2_22_ce1 = delta_weights2_22_ce1_local;
assign delta_weights2_22_d0 = mul_54_reg_3352;
assign delta_weights2_22_d1 = mul_22_reg_3192;
assign delta_weights2_22_we0 = delta_weights2_22_we0_local;
assign delta_weights2_22_we1 = delta_weights2_22_we1_local;
assign delta_weights2_23_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_23_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_23_ce0 = delta_weights2_23_ce0_local;
assign delta_weights2_23_ce1 = delta_weights2_23_ce1_local;
assign delta_weights2_23_d0 = mul_55_reg_3357;
assign delta_weights2_23_d1 = mul_23_reg_3197;
assign delta_weights2_23_we0 = delta_weights2_23_we0_local;
assign delta_weights2_23_we1 = delta_weights2_23_we1_local;
assign delta_weights2_24_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_24_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_24_ce0 = delta_weights2_24_ce0_local;
assign delta_weights2_24_ce1 = delta_weights2_24_ce1_local;
assign delta_weights2_24_d0 = mul_56_reg_3362;
assign delta_weights2_24_d1 = mul_24_reg_3202;
assign delta_weights2_24_we0 = delta_weights2_24_we0_local;
assign delta_weights2_24_we1 = delta_weights2_24_we1_local;
assign delta_weights2_25_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_25_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_25_ce0 = delta_weights2_25_ce0_local;
assign delta_weights2_25_ce1 = delta_weights2_25_ce1_local;
assign delta_weights2_25_d0 = mul_57_reg_3367;
assign delta_weights2_25_d1 = mul_25_reg_3207;
assign delta_weights2_25_we0 = delta_weights2_25_we0_local;
assign delta_weights2_25_we1 = delta_weights2_25_we1_local;
assign delta_weights2_26_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_26_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_26_ce0 = delta_weights2_26_ce0_local;
assign delta_weights2_26_ce1 = delta_weights2_26_ce1_local;
assign delta_weights2_26_d0 = mul_58_reg_3372;
assign delta_weights2_26_d1 = mul_26_reg_3212;
assign delta_weights2_26_we0 = delta_weights2_26_we0_local;
assign delta_weights2_26_we1 = delta_weights2_26_we1_local;
assign delta_weights2_27_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_27_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_27_ce0 = delta_weights2_27_ce0_local;
assign delta_weights2_27_ce1 = delta_weights2_27_ce1_local;
assign delta_weights2_27_d0 = mul_59_reg_3377;
assign delta_weights2_27_d1 = mul_27_reg_3217;
assign delta_weights2_27_we0 = delta_weights2_27_we0_local;
assign delta_weights2_27_we1 = delta_weights2_27_we1_local;
assign delta_weights2_28_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_28_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_28_ce0 = delta_weights2_28_ce0_local;
assign delta_weights2_28_ce1 = delta_weights2_28_ce1_local;
assign delta_weights2_28_d0 = mul_60_reg_3382;
assign delta_weights2_28_d1 = mul_28_reg_3222;
assign delta_weights2_28_we0 = delta_weights2_28_we0_local;
assign delta_weights2_28_we1 = delta_weights2_28_we1_local;
assign delta_weights2_29_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_29_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_29_ce0 = delta_weights2_29_ce0_local;
assign delta_weights2_29_ce1 = delta_weights2_29_ce1_local;
assign delta_weights2_29_d0 = mul_61_reg_3387;
assign delta_weights2_29_d1 = mul_29_reg_3227;
assign delta_weights2_29_we0 = delta_weights2_29_we0_local;
assign delta_weights2_29_we1 = delta_weights2_29_we1_local;
assign delta_weights2_2_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_2_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_ce1 = delta_weights2_2_ce1_local;
assign delta_weights2_2_d0 = mul_34_reg_3252;
assign delta_weights2_2_d1 = mul_2_reg_3092;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_2_we1 = delta_weights2_2_we1_local;
assign delta_weights2_30_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_30_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_30_ce0 = delta_weights2_30_ce0_local;
assign delta_weights2_30_ce1 = delta_weights2_30_ce1_local;
assign delta_weights2_30_d0 = mul_62_reg_3392;
assign delta_weights2_30_d1 = mul_30_reg_3232;
assign delta_weights2_30_we0 = delta_weights2_30_we0_local;
assign delta_weights2_30_we1 = delta_weights2_30_we1_local;
assign delta_weights2_31_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_31_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_31_ce0 = delta_weights2_31_ce0_local;
assign delta_weights2_31_ce1 = delta_weights2_31_ce1_local;
assign delta_weights2_31_d0 = mul_63_reg_3397;
assign delta_weights2_31_d1 = mul_31_reg_3237;
assign delta_weights2_31_we0 = delta_weights2_31_we0_local;
assign delta_weights2_31_we1 = delta_weights2_31_we1_local;
assign delta_weights2_3_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_3_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_ce1 = delta_weights2_3_ce1_local;
assign delta_weights2_3_d0 = mul_35_reg_3257;
assign delta_weights2_3_d1 = mul_3_reg_3097;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_3_we1 = delta_weights2_3_we1_local;
assign delta_weights2_4_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_4_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_ce1 = delta_weights2_4_ce1_local;
assign delta_weights2_4_d0 = mul_36_reg_3262;
assign delta_weights2_4_d1 = mul_4_reg_3102;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_4_we1 = delta_weights2_4_we1_local;
assign delta_weights2_5_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_5_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_ce1 = delta_weights2_5_ce1_local;
assign delta_weights2_5_d0 = mul_37_reg_3267;
assign delta_weights2_5_d1 = mul_5_reg_3107;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_5_we1 = delta_weights2_5_we1_local;
assign delta_weights2_6_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_6_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_ce1 = delta_weights2_6_ce1_local;
assign delta_weights2_6_d0 = mul_38_reg_3272;
assign delta_weights2_6_d1 = mul_6_reg_3112;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_6_we1 = delta_weights2_6_we1_local;
assign delta_weights2_7_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_7_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_ce1 = delta_weights2_7_ce1_local;
assign delta_weights2_7_d0 = mul_39_reg_3277;
assign delta_weights2_7_d1 = mul_7_reg_3117;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_7_we1 = delta_weights2_7_we1_local;
assign delta_weights2_8_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_8_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_ce1 = delta_weights2_8_ce1_local;
assign delta_weights2_8_d0 = mul_40_reg_3282;
assign delta_weights2_8_d1 = mul_8_reg_3122;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_8_we1 = delta_weights2_8_we1_local;
assign delta_weights2_9_address0 = zext_ln95_1_fu_2480_p1;
assign delta_weights2_9_address1 = zext_ln95_fu_2436_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_ce1 = delta_weights2_9_ce1_local;
assign delta_weights2_9_d0 = mul_41_reg_3287;
assign delta_weights2_9_d1 = mul_9_reg_3127;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_9_we1 = delta_weights2_9_we1_local;
assign grp_fu_12293_p_ce = 1'b1;
assign grp_fu_12293_p_din0 = tmp_reg_3014;
assign grp_fu_12293_p_din1 = output_difference_0_0_0_val;
assign grp_fu_12297_p_ce = 1'b1;
assign grp_fu_12297_p_din0 = tmp_reg_3014;
assign grp_fu_12297_p_din1 = output_difference_1_0_0_val;
assign grp_fu_12301_p_ce = 1'b1;
assign grp_fu_12301_p_din0 = tmp_reg_3014;
assign grp_fu_12301_p_din1 = output_difference_2_0_0_val;
assign grp_fu_12305_p_ce = 1'b1;
assign grp_fu_12305_p_din0 = tmp_reg_3014;
assign grp_fu_12305_p_din1 = output_difference_3_0_0_val;
assign grp_fu_12309_p_ce = 1'b1;
assign grp_fu_12309_p_din0 = tmp_reg_3014;
assign grp_fu_12309_p_din1 = output_difference_4_0_0_val;
assign grp_fu_12313_p_ce = 1'b1;
assign grp_fu_12313_p_din0 = tmp_reg_3014;
assign grp_fu_12313_p_din1 = output_difference_5_0_0_val;
assign grp_fu_12317_p_ce = 1'b1;
assign grp_fu_12317_p_din0 = tmp_reg_3014;
assign grp_fu_12317_p_din1 = output_difference_6_0_0_val;
assign grp_fu_12321_p_ce = 1'b1;
assign grp_fu_12321_p_din0 = tmp_reg_3014;
assign grp_fu_12321_p_din1 = output_difference_7_0_0_val;
assign grp_fu_12325_p_ce = 1'b1;
assign grp_fu_12325_p_din0 = tmp_reg_3014;
assign grp_fu_12325_p_din1 = output_difference_8_0_0_val;
assign grp_fu_12329_p_ce = 1'b1;
assign grp_fu_12329_p_din0 = tmp_reg_3014;
assign grp_fu_12329_p_din1 = output_difference_9_0_0_val;
assign grp_fu_12333_p_ce = 1'b1;
assign grp_fu_12333_p_din0 = tmp_reg_3014;
assign grp_fu_12333_p_din1 = output_difference_10_0_0_val;
assign grp_fu_12337_p_ce = 1'b1;
assign grp_fu_12337_p_din0 = tmp_reg_3014;
assign grp_fu_12337_p_din1 = output_difference_11_0_0_val;
assign grp_fu_12341_p_ce = 1'b1;
assign grp_fu_12341_p_din0 = tmp_reg_3014;
assign grp_fu_12341_p_din1 = output_difference_12_0_0_val;
assign grp_fu_12345_p_ce = 1'b1;
assign grp_fu_12345_p_din0 = tmp_reg_3014;
assign grp_fu_12345_p_din1 = output_difference_13_0_0_val;
assign grp_fu_12349_p_ce = 1'b1;
assign grp_fu_12349_p_din0 = tmp_reg_3014;
assign grp_fu_12349_p_din1 = output_difference_14_0_0_val;
assign grp_fu_12353_p_ce = 1'b1;
assign grp_fu_12353_p_din0 = tmp_reg_3014;
assign grp_fu_12353_p_din1 = output_difference_15_0_0_val;
assign grp_fu_12357_p_ce = 1'b1;
assign grp_fu_12357_p_din0 = tmp_reg_3014;
assign grp_fu_12357_p_din1 = output_difference_16_0_0_val;
assign grp_fu_12361_p_ce = 1'b1;
assign grp_fu_12361_p_din0 = tmp_reg_3014;
assign grp_fu_12361_p_din1 = output_difference_17_0_0_val;
assign grp_fu_12365_p_ce = 1'b1;
assign grp_fu_12365_p_din0 = tmp_reg_3014;
assign grp_fu_12365_p_din1 = output_difference_18_0_0_val;
assign grp_fu_12369_p_ce = 1'b1;
assign grp_fu_12369_p_din0 = tmp_reg_3014;
assign grp_fu_12369_p_din1 = output_difference_19_0_0_val;
assign grp_fu_12373_p_ce = 1'b1;
assign grp_fu_12373_p_din0 = tmp_reg_3014;
assign grp_fu_12373_p_din1 = output_difference_20_0_0_val;
assign grp_fu_12377_p_ce = 1'b1;
assign grp_fu_12377_p_din0 = tmp_reg_3014;
assign grp_fu_12377_p_din1 = output_difference_21_0_0_val;
assign grp_fu_12381_p_ce = 1'b1;
assign grp_fu_12381_p_din0 = tmp_reg_3014;
assign grp_fu_12381_p_din1 = output_difference_22_0_0_val;
assign grp_fu_12385_p_ce = 1'b1;
assign grp_fu_12385_p_din0 = tmp_reg_3014;
assign grp_fu_12385_p_din1 = output_difference_23_0_0_val;
assign grp_fu_12389_p_ce = 1'b1;
assign grp_fu_12389_p_din0 = tmp_reg_3014;
assign grp_fu_12389_p_din1 = output_difference_24_0_0_val;
assign grp_fu_12393_p_ce = 1'b1;
assign grp_fu_12393_p_din0 = tmp_reg_3014;
assign grp_fu_12393_p_din1 = output_difference_25_0_0_val;
assign grp_fu_12397_p_ce = 1'b1;
assign grp_fu_12397_p_din0 = tmp_reg_3014;
assign grp_fu_12397_p_din1 = output_difference_26_0_0_val;
assign grp_fu_12401_p_ce = 1'b1;
assign grp_fu_12401_p_din0 = tmp_reg_3014;
assign grp_fu_12401_p_din1 = output_difference_27_0_0_val;
assign grp_fu_12405_p_ce = 1'b1;
assign grp_fu_12405_p_din0 = tmp_reg_3014;
assign grp_fu_12405_p_din1 = output_difference_28_0_0_val;
assign grp_fu_12409_p_ce = 1'b1;
assign grp_fu_12409_p_din0 = tmp_reg_3014;
assign grp_fu_12409_p_din1 = output_difference_29_0_0_val;
assign grp_fu_12413_p_ce = 1'b1;
assign grp_fu_12413_p_din0 = tmp_reg_3014;
assign grp_fu_12413_p_din1 = output_difference_30_0_0_val;
assign grp_fu_12417_p_ce = 1'b1;
assign grp_fu_12417_p_din0 = tmp_reg_3014;
assign grp_fu_12417_p_din1 = output_difference_31_0_0_val;
assign grp_fu_12421_p_ce = 1'b1;
assign grp_fu_12421_p_din0 = tmp_reg_3014;
assign grp_fu_12421_p_din1 = output_difference_0_0_1_val;
assign grp_fu_12425_p_ce = 1'b1;
assign grp_fu_12425_p_din0 = tmp_reg_3014;
assign grp_fu_12425_p_din1 = output_difference_1_0_1_val;
assign grp_fu_12429_p_ce = 1'b1;
assign grp_fu_12429_p_din0 = tmp_reg_3014;
assign grp_fu_12429_p_din1 = output_difference_2_0_1_val;
assign grp_fu_12433_p_ce = 1'b1;
assign grp_fu_12433_p_din0 = tmp_reg_3014;
assign grp_fu_12433_p_din1 = output_difference_3_0_1_val;
assign grp_fu_12437_p_ce = 1'b1;
assign grp_fu_12437_p_din0 = tmp_reg_3014;
assign grp_fu_12437_p_din1 = output_difference_4_0_1_val;
assign grp_fu_12441_p_ce = 1'b1;
assign grp_fu_12441_p_din0 = tmp_reg_3014;
assign grp_fu_12441_p_din1 = output_difference_5_0_1_val;
assign grp_fu_12445_p_ce = 1'b1;
assign grp_fu_12445_p_din0 = tmp_reg_3014;
assign grp_fu_12445_p_din1 = output_difference_6_0_1_val;
assign grp_fu_12449_p_ce = 1'b1;
assign grp_fu_12449_p_din0 = tmp_reg_3014;
assign grp_fu_12449_p_din1 = output_difference_7_0_1_val;
assign grp_fu_12453_p_ce = 1'b1;
assign grp_fu_12453_p_din0 = tmp_reg_3014;
assign grp_fu_12453_p_din1 = output_difference_8_0_1_val;
assign grp_fu_12457_p_ce = 1'b1;
assign grp_fu_12457_p_din0 = tmp_reg_3014;
assign grp_fu_12457_p_din1 = output_difference_9_0_1_val;
assign grp_fu_12461_p_ce = 1'b1;
assign grp_fu_12461_p_din0 = tmp_reg_3014;
assign grp_fu_12461_p_din1 = output_difference_10_0_1_val;
assign grp_fu_12465_p_ce = 1'b1;
assign grp_fu_12465_p_din0 = tmp_reg_3014;
assign grp_fu_12465_p_din1 = output_difference_11_0_1_val;
assign grp_fu_12469_p_ce = 1'b1;
assign grp_fu_12469_p_din0 = tmp_reg_3014;
assign grp_fu_12469_p_din1 = output_difference_12_0_1_val;
assign grp_fu_12473_p_ce = 1'b1;
assign grp_fu_12473_p_din0 = tmp_reg_3014;
assign grp_fu_12473_p_din1 = output_difference_13_0_1_val;
assign grp_fu_12477_p_ce = 1'b1;
assign grp_fu_12477_p_din0 = tmp_reg_3014;
assign grp_fu_12477_p_din1 = output_difference_14_0_1_val;
assign grp_fu_12481_p_ce = 1'b1;
assign grp_fu_12481_p_din0 = tmp_reg_3014;
assign grp_fu_12481_p_din1 = output_difference_15_0_1_val;
assign grp_fu_12485_p_ce = 1'b1;
assign grp_fu_12485_p_din0 = tmp_reg_3014;
assign grp_fu_12485_p_din1 = output_difference_16_0_1_val;
assign grp_fu_12489_p_ce = 1'b1;
assign grp_fu_12489_p_din0 = tmp_reg_3014;
assign grp_fu_12489_p_din1 = output_difference_17_0_1_val;
assign grp_fu_12493_p_ce = 1'b1;
assign grp_fu_12493_p_din0 = tmp_reg_3014;
assign grp_fu_12493_p_din1 = output_difference_18_0_1_val;
assign grp_fu_12497_p_ce = 1'b1;
assign grp_fu_12497_p_din0 = tmp_reg_3014;
assign grp_fu_12497_p_din1 = output_difference_19_0_1_val;
assign grp_fu_12501_p_ce = 1'b1;
assign grp_fu_12501_p_din0 = tmp_reg_3014;
assign grp_fu_12501_p_din1 = output_difference_20_0_1_val;
assign grp_fu_12505_p_ce = 1'b1;
assign grp_fu_12505_p_din0 = tmp_reg_3014;
assign grp_fu_12505_p_din1 = output_difference_21_0_1_val;
assign grp_fu_12509_p_ce = 1'b1;
assign grp_fu_12509_p_din0 = tmp_reg_3014;
assign grp_fu_12509_p_din1 = output_difference_22_0_1_val;
assign grp_fu_12513_p_ce = 1'b1;
assign grp_fu_12513_p_din0 = tmp_reg_3014;
assign grp_fu_12513_p_din1 = output_difference_23_0_1_val;
assign grp_fu_12517_p_ce = 1'b1;
assign grp_fu_12517_p_din0 = tmp_reg_3014;
assign grp_fu_12517_p_din1 = output_difference_24_0_1_val;
assign grp_fu_12521_p_ce = 1'b1;
assign grp_fu_12521_p_din0 = tmp_reg_3014;
assign grp_fu_12521_p_din1 = output_difference_25_0_1_val;
assign grp_fu_12525_p_ce = 1'b1;
assign grp_fu_12525_p_din0 = tmp_reg_3014;
assign grp_fu_12525_p_din1 = output_difference_26_0_1_val;
assign grp_fu_12529_p_ce = 1'b1;
assign grp_fu_12529_p_din0 = tmp_reg_3014;
assign grp_fu_12529_p_din1 = output_difference_27_0_1_val;
assign grp_fu_12533_p_ce = 1'b1;
assign grp_fu_12533_p_din0 = tmp_reg_3014;
assign grp_fu_12533_p_din1 = output_difference_28_0_1_val;
assign grp_fu_12537_p_ce = 1'b1;
assign grp_fu_12537_p_din0 = tmp_reg_3014;
assign grp_fu_12537_p_din1 = output_difference_29_0_1_val;
assign grp_fu_12541_p_ce = 1'b1;
assign grp_fu_12541_p_din0 = tmp_reg_3014;
assign grp_fu_12541_p_din1 = output_difference_30_0_1_val;
assign grp_fu_12545_p_ce = 1'b1;
assign grp_fu_12545_p_din0 = tmp_reg_3014;
assign grp_fu_12545_p_din1 = output_difference_31_0_1_val;
assign icmp_ln93_fu_2228_p2 = ((ap_sig_allocacmp_i_11 == 7'd64) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_2248_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln92_fu_2248_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln92_fu_2248_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln92_fu_2248_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln92_fu_2248_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln92_fu_2248_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln92_fu_2248_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_16_address0 = zext_ln92_fu_2248_p1;
assign last_activations_16_ce0 = last_activations_16_ce0_local;
assign last_activations_17_address0 = zext_ln92_fu_2248_p1;
assign last_activations_17_ce0 = last_activations_17_ce0_local;
assign last_activations_18_address0 = zext_ln92_fu_2248_p1;
assign last_activations_18_ce0 = last_activations_18_ce0_local;
assign last_activations_19_address0 = zext_ln92_fu_2248_p1;
assign last_activations_19_ce0 = last_activations_19_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_2248_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_20_address0 = zext_ln92_fu_2248_p1;
assign last_activations_20_ce0 = last_activations_20_ce0_local;
assign last_activations_21_address0 = zext_ln92_fu_2248_p1;
assign last_activations_21_ce0 = last_activations_21_ce0_local;
assign last_activations_22_address0 = zext_ln92_fu_2248_p1;
assign last_activations_22_ce0 = last_activations_22_ce0_local;
assign last_activations_23_address0 = zext_ln92_fu_2248_p1;
assign last_activations_23_ce0 = last_activations_23_ce0_local;
assign last_activations_24_address0 = zext_ln92_fu_2248_p1;
assign last_activations_24_ce0 = last_activations_24_ce0_local;
assign last_activations_25_address0 = zext_ln92_fu_2248_p1;
assign last_activations_25_ce0 = last_activations_25_ce0_local;
assign last_activations_26_address0 = zext_ln92_fu_2248_p1;
assign last_activations_26_ce0 = last_activations_26_ce0_local;
assign last_activations_27_address0 = zext_ln92_fu_2248_p1;
assign last_activations_27_ce0 = last_activations_27_ce0_local;
assign last_activations_28_address0 = zext_ln92_fu_2248_p1;
assign last_activations_28_ce0 = last_activations_28_ce0_local;
assign last_activations_29_address0 = zext_ln92_fu_2248_p1;
assign last_activations_29_ce0 = last_activations_29_ce0_local;
assign last_activations_2_address0 = zext_ln92_fu_2248_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_30_address0 = zext_ln92_fu_2248_p1;
assign last_activations_30_ce0 = last_activations_30_ce0_local;
assign last_activations_31_address0 = zext_ln92_fu_2248_p1;
assign last_activations_31_ce0 = last_activations_31_ce0_local;
assign last_activations_3_address0 = zext_ln92_fu_2248_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln92_fu_2248_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln92_fu_2248_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln92_fu_2248_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln92_fu_2248_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln92_fu_2248_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln92_fu_2248_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign or_ln_fu_2472_p3 = {{trunc_ln95_fu_2428_p1}, {1'd1}};
assign shl_ln95_fu_2431_p2 = i_11_reg_2843_pp0_iter8_reg << 7'd1;
assign tmp_5_fu_2240_p3 = ap_sig_allocacmp_i_11[32'd5];
assign tmp_fu_2292_p65 = 'bx;
assign tmp_fu_2292_p66 = i_11_reg_2843[4:0];
assign trunc_ln95_fu_2428_p1 = i_11_reg_2843_pp0_iter8_reg[5:0];
assign zext_ln92_fu_2248_p1 = tmp_5_fu_2240_p3;
assign zext_ln95_1_fu_2480_p1 = or_ln_fu_2472_p3;
assign zext_ln95_fu_2436_p1 = shl_ln95_fu_2431_p2;
endmodule 