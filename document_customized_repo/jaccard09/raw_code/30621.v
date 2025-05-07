module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_16_address1,delta_weights1_16_ce1,delta_weights1_16_we1,delta_weights1_16_d1,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_17_address1,delta_weights1_17_ce1,delta_weights1_17_we1,delta_weights1_17_d1,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_18_address1,delta_weights1_18_ce1,delta_weights1_18_we1,delta_weights1_18_d1,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_19_address1,delta_weights1_19_ce1,delta_weights1_19_we1,delta_weights1_19_d1,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_20_address1,delta_weights1_20_ce1,delta_weights1_20_we1,delta_weights1_20_d1,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_21_address1,delta_weights1_21_ce1,delta_weights1_21_we1,delta_weights1_21_d1,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_22_address1,delta_weights1_22_ce1,delta_weights1_22_we1,delta_weights1_22_d1,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_23_address1,delta_weights1_23_ce1,delta_weights1_23_we1,delta_weights1_23_d1,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_24_address1,delta_weights1_24_ce1,delta_weights1_24_we1,delta_weights1_24_d1,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_25_address1,delta_weights1_25_ce1,delta_weights1_25_we1,delta_weights1_25_d1,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_26_address1,delta_weights1_26_ce1,delta_weights1_26_we1,delta_weights1_26_d1,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_27_address1,delta_weights1_27_ce1,delta_weights1_27_we1,delta_weights1_27_d1,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_28_address1,delta_weights1_28_ce1,delta_weights1_28_we1,delta_weights1_28_d1,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_29_address1,delta_weights1_29_ce1,delta_weights1_29_we1,delta_weights1_29_d1,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_30_address1,delta_weights1_30_ce1,delta_weights1_30_we1,delta_weights1_30_d1,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_31_address1,delta_weights1_31_ce1,delta_weights1_31_we1,delta_weights1_31_d1,output_difference_0_0_0_val,output_difference_0_0_1_val,output_difference_1_0_0_val,output_difference_1_0_1_val,output_difference_2_0_0_val,output_difference_2_0_1_val,output_difference_3_0_0_val,output_difference_3_0_1_val,output_difference_4_0_0_val,output_difference_4_0_1_val,output_difference_5_0_0_val,output_difference_5_0_1_val,output_difference_6_0_0_val,output_difference_6_0_1_val,output_difference_7_0_0_val,output_difference_7_0_1_val,output_difference_8_0_0_val,output_difference_8_0_1_val,output_difference_9_0_0_val,output_difference_9_0_1_val,output_difference_10_0_0_val,output_difference_10_0_1_val,output_difference_11_0_0_val,output_difference_11_0_1_val,output_difference_12_0_0_val,output_difference_12_0_1_val,output_difference_13_0_0_val,output_difference_13_0_1_val,output_difference_14_0_0_val,output_difference_14_0_1_val,output_difference_15_0_0_val,output_difference_15_0_1_val,output_difference_16_0_0_val,output_difference_16_0_1_val,output_difference_17_0_0_val,output_difference_17_0_1_val,output_difference_18_0_0_val,output_difference_18_0_1_val,output_difference_19_0_0_val,output_difference_19_0_1_val,output_difference_20_0_0_val,output_difference_20_0_1_val,output_difference_21_0_0_val,output_difference_21_0_1_val,output_difference_22_0_0_val,output_difference_22_0_1_val,output_difference_23_0_0_val,output_difference_23_0_1_val,output_difference_24_0_0_val,output_difference_24_0_1_val,output_difference_25_0_0_val,output_difference_25_0_1_val,output_difference_26_0_0_val,output_difference_26_0_1_val,output_difference_27_0_0_val,output_difference_27_0_1_val,output_difference_28_0_0_val,output_difference_28_0_1_val,output_difference_29_0_0_val,output_difference_29_0_1_val,output_difference_30_0_0_val,output_difference_30_0_1_val,output_difference_31_0_0_val,output_difference_31_0_1_val,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,training_data_16_address0,training_data_16_ce0,training_data_16_q0,training_data_17_address0,training_data_17_ce0,training_data_17_q0,training_data_18_address0,training_data_18_ce0,training_data_18_q0,training_data_19_address0,training_data_19_ce0,training_data_19_q0,training_data_20_address0,training_data_20_ce0,training_data_20_q0,training_data_21_address0,training_data_21_ce0,training_data_21_q0,training_data_22_address0,training_data_22_ce0,training_data_22_q0,training_data_23_address0,training_data_23_ce0,training_data_23_q0,training_data_24_address0,training_data_24_ce0,training_data_24_q0,training_data_25_address0,training_data_25_ce0,training_data_25_q0,training_data_26_address0,training_data_26_ce0,training_data_26_q0,training_data_27_address0,training_data_27_ce0,training_data_27_q0,training_data_28_address0,training_data_28_ce0,training_data_28_q0,training_data_29_address0,training_data_29_ce0,training_data_29_q0,training_data_30_address0,training_data_30_ce0,training_data_30_q0,training_data_31_address0,training_data_31_ce0,training_data_31_q0,idx,grp_fu_12293_p_din0,grp_fu_12293_p_din1,grp_fu_12293_p_dout0,grp_fu_12293_p_ce,grp_fu_12297_p_din0,grp_fu_12297_p_din1,grp_fu_12297_p_dout0,grp_fu_12297_p_ce,grp_fu_12301_p_din0,grp_fu_12301_p_din1,grp_fu_12301_p_dout0,grp_fu_12301_p_ce,grp_fu_12305_p_din0,grp_fu_12305_p_din1,grp_fu_12305_p_dout0,grp_fu_12305_p_ce,grp_fu_12309_p_din0,grp_fu_12309_p_din1,grp_fu_12309_p_dout0,grp_fu_12309_p_ce,grp_fu_12313_p_din0,grp_fu_12313_p_din1,grp_fu_12313_p_dout0,grp_fu_12313_p_ce,grp_fu_12317_p_din0,grp_fu_12317_p_din1,grp_fu_12317_p_dout0,grp_fu_12317_p_ce,grp_fu_12321_p_din0,grp_fu_12321_p_din1,grp_fu_12321_p_dout0,grp_fu_12321_p_ce,grp_fu_12325_p_din0,grp_fu_12325_p_din1,grp_fu_12325_p_dout0,grp_fu_12325_p_ce,grp_fu_12329_p_din0,grp_fu_12329_p_din1,grp_fu_12329_p_dout0,grp_fu_12329_p_ce,grp_fu_12333_p_din0,grp_fu_12333_p_din1,grp_fu_12333_p_dout0,grp_fu_12333_p_ce,grp_fu_12337_p_din0,grp_fu_12337_p_din1,grp_fu_12337_p_dout0,grp_fu_12337_p_ce,grp_fu_12341_p_din0,grp_fu_12341_p_din1,grp_fu_12341_p_dout0,grp_fu_12341_p_ce,grp_fu_12345_p_din0,grp_fu_12345_p_din1,grp_fu_12345_p_dout0,grp_fu_12345_p_ce,grp_fu_12349_p_din0,grp_fu_12349_p_din1,grp_fu_12349_p_dout0,grp_fu_12349_p_ce,grp_fu_12353_p_din0,grp_fu_12353_p_din1,grp_fu_12353_p_dout0,grp_fu_12353_p_ce,grp_fu_12357_p_din0,grp_fu_12357_p_din1,grp_fu_12357_p_dout0,grp_fu_12357_p_ce,grp_fu_12361_p_din0,grp_fu_12361_p_din1,grp_fu_12361_p_dout0,grp_fu_12361_p_ce,grp_fu_12365_p_din0,grp_fu_12365_p_din1,grp_fu_12365_p_dout0,grp_fu_12365_p_ce,grp_fu_12369_p_din0,grp_fu_12369_p_din1,grp_fu_12369_p_dout0,grp_fu_12369_p_ce,grp_fu_12373_p_din0,grp_fu_12373_p_din1,grp_fu_12373_p_dout0,grp_fu_12373_p_ce,grp_fu_12377_p_din0,grp_fu_12377_p_din1,grp_fu_12377_p_dout0,grp_fu_12377_p_ce,grp_fu_12381_p_din0,grp_fu_12381_p_din1,grp_fu_12381_p_dout0,grp_fu_12381_p_ce,grp_fu_12385_p_din0,grp_fu_12385_p_din1,grp_fu_12385_p_dout0,grp_fu_12385_p_ce,grp_fu_12389_p_din0,grp_fu_12389_p_din1,grp_fu_12389_p_dout0,grp_fu_12389_p_ce,grp_fu_12393_p_din0,grp_fu_12393_p_din1,grp_fu_12393_p_dout0,grp_fu_12393_p_ce,grp_fu_12397_p_din0,grp_fu_12397_p_din1,grp_fu_12397_p_dout0,grp_fu_12397_p_ce,grp_fu_12401_p_din0,grp_fu_12401_p_din1,grp_fu_12401_p_dout0,grp_fu_12401_p_ce,grp_fu_12405_p_din0,grp_fu_12405_p_din1,grp_fu_12405_p_dout0,grp_fu_12405_p_ce,grp_fu_12409_p_din0,grp_fu_12409_p_din1,grp_fu_12409_p_dout0,grp_fu_12409_p_ce,grp_fu_12413_p_din0,grp_fu_12413_p_din1,grp_fu_12413_p_dout0,grp_fu_12413_p_ce,grp_fu_12417_p_din0,grp_fu_12417_p_din1,grp_fu_12417_p_dout0,grp_fu_12417_p_ce,grp_fu_12421_p_din0,grp_fu_12421_p_din1,grp_fu_12421_p_dout0,grp_fu_12421_p_ce,grp_fu_12425_p_din0,grp_fu_12425_p_din1,grp_fu_12425_p_dout0,grp_fu_12425_p_ce,grp_fu_12429_p_din0,grp_fu_12429_p_din1,grp_fu_12429_p_dout0,grp_fu_12429_p_ce,grp_fu_12433_p_din0,grp_fu_12433_p_din1,grp_fu_12433_p_dout0,grp_fu_12433_p_ce,grp_fu_12437_p_din0,grp_fu_12437_p_din1,grp_fu_12437_p_dout0,grp_fu_12437_p_ce,grp_fu_12441_p_din0,grp_fu_12441_p_din1,grp_fu_12441_p_dout0,grp_fu_12441_p_ce,grp_fu_12445_p_din0,grp_fu_12445_p_din1,grp_fu_12445_p_dout0,grp_fu_12445_p_ce,grp_fu_12449_p_din0,grp_fu_12449_p_din1,grp_fu_12449_p_dout0,grp_fu_12449_p_ce,grp_fu_12453_p_din0,grp_fu_12453_p_din1,grp_fu_12453_p_dout0,grp_fu_12453_p_ce,grp_fu_12457_p_din0,grp_fu_12457_p_din1,grp_fu_12457_p_dout0,grp_fu_12457_p_ce,grp_fu_12461_p_din0,grp_fu_12461_p_din1,grp_fu_12461_p_dout0,grp_fu_12461_p_ce,grp_fu_12465_p_din0,grp_fu_12465_p_din1,grp_fu_12465_p_dout0,grp_fu_12465_p_ce,grp_fu_12469_p_din0,grp_fu_12469_p_din1,grp_fu_12469_p_dout0,grp_fu_12469_p_ce,grp_fu_12473_p_din0,grp_fu_12473_p_din1,grp_fu_12473_p_dout0,grp_fu_12473_p_ce,grp_fu_12477_p_din0,grp_fu_12477_p_din1,grp_fu_12477_p_dout0,grp_fu_12477_p_ce,grp_fu_12481_p_din0,grp_fu_12481_p_din1,grp_fu_12481_p_dout0,grp_fu_12481_p_ce,grp_fu_12485_p_din0,grp_fu_12485_p_din1,grp_fu_12485_p_dout0,grp_fu_12485_p_ce,grp_fu_12489_p_din0,grp_fu_12489_p_din1,grp_fu_12489_p_dout0,grp_fu_12489_p_ce,grp_fu_12493_p_din0,grp_fu_12493_p_din1,grp_fu_12493_p_dout0,grp_fu_12493_p_ce,grp_fu_12497_p_din0,grp_fu_12497_p_din1,grp_fu_12497_p_dout0,grp_fu_12497_p_ce,grp_fu_12501_p_din0,grp_fu_12501_p_din1,grp_fu_12501_p_dout0,grp_fu_12501_p_ce,grp_fu_12505_p_din0,grp_fu_12505_p_din1,grp_fu_12505_p_dout0,grp_fu_12505_p_ce,grp_fu_12509_p_din0,grp_fu_12509_p_din1,grp_fu_12509_p_dout0,grp_fu_12509_p_ce,grp_fu_12513_p_din0,grp_fu_12513_p_din1,grp_fu_12513_p_dout0,grp_fu_12513_p_ce,grp_fu_12517_p_din0,grp_fu_12517_p_din1,grp_fu_12517_p_dout0,grp_fu_12517_p_ce,grp_fu_12521_p_din0,grp_fu_12521_p_din1,grp_fu_12521_p_dout0,grp_fu_12521_p_ce,grp_fu_12525_p_din0,grp_fu_12525_p_din1,grp_fu_12525_p_dout0,grp_fu_12525_p_ce,grp_fu_12529_p_din0,grp_fu_12529_p_din1,grp_fu_12529_p_dout0,grp_fu_12529_p_ce,grp_fu_12533_p_din0,grp_fu_12533_p_din1,grp_fu_12533_p_dout0,grp_fu_12533_p_ce,grp_fu_12537_p_din0,grp_fu_12537_p_din1,grp_fu_12537_p_dout0,grp_fu_12537_p_ce,grp_fu_12541_p_din0,grp_fu_12541_p_din1,grp_fu_12541_p_dout0,grp_fu_12541_p_ce,grp_fu_12545_p_din0,grp_fu_12545_p_din1,grp_fu_12545_p_dout0,grp_fu_12545_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [4:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [4:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [4:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [4:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [4:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [4:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [4:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [4:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [4:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [4:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [4:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [4:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [4:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [4:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [4:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [4:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [4:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [4:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [4:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [4:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [4:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [4:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [4:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [4:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [4:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [4:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [4:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [4:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [4:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [4:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
output  [4:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [4:0] delta_weights1_16_address1;
output   delta_weights1_16_ce1;
output   delta_weights1_16_we1;
output  [63:0] delta_weights1_16_d1;
output  [4:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [4:0] delta_weights1_17_address1;
output   delta_weights1_17_ce1;
output   delta_weights1_17_we1;
output  [63:0] delta_weights1_17_d1;
output  [4:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [4:0] delta_weights1_18_address1;
output   delta_weights1_18_ce1;
output   delta_weights1_18_we1;
output  [63:0] delta_weights1_18_d1;
output  [4:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [4:0] delta_weights1_19_address1;
output   delta_weights1_19_ce1;
output   delta_weights1_19_we1;
output  [63:0] delta_weights1_19_d1;
output  [4:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [4:0] delta_weights1_20_address1;
output   delta_weights1_20_ce1;
output   delta_weights1_20_we1;
output  [63:0] delta_weights1_20_d1;
output  [4:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [4:0] delta_weights1_21_address1;
output   delta_weights1_21_ce1;
output   delta_weights1_21_we1;
output  [63:0] delta_weights1_21_d1;
output  [4:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [4:0] delta_weights1_22_address1;
output   delta_weights1_22_ce1;
output   delta_weights1_22_we1;
output  [63:0] delta_weights1_22_d1;
output  [4:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [4:0] delta_weights1_23_address1;
output   delta_weights1_23_ce1;
output   delta_weights1_23_we1;
output  [63:0] delta_weights1_23_d1;
output  [4:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [4:0] delta_weights1_24_address1;
output   delta_weights1_24_ce1;
output   delta_weights1_24_we1;
output  [63:0] delta_weights1_24_d1;
output  [4:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [4:0] delta_weights1_25_address1;
output   delta_weights1_25_ce1;
output   delta_weights1_25_we1;
output  [63:0] delta_weights1_25_d1;
output  [4:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [4:0] delta_weights1_26_address1;
output   delta_weights1_26_ce1;
output   delta_weights1_26_we1;
output  [63:0] delta_weights1_26_d1;
output  [4:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [4:0] delta_weights1_27_address1;
output   delta_weights1_27_ce1;
output   delta_weights1_27_we1;
output  [63:0] delta_weights1_27_d1;
output  [4:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [4:0] delta_weights1_28_address1;
output   delta_weights1_28_ce1;
output   delta_weights1_28_we1;
output  [63:0] delta_weights1_28_d1;
output  [4:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [4:0] delta_weights1_29_address1;
output   delta_weights1_29_ce1;
output   delta_weights1_29_we1;
output  [63:0] delta_weights1_29_d1;
output  [4:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [4:0] delta_weights1_30_address1;
output   delta_weights1_30_ce1;
output   delta_weights1_30_we1;
output  [63:0] delta_weights1_30_d1;
output  [4:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [4:0] delta_weights1_31_address1;
output   delta_weights1_31_ce1;
output   delta_weights1_31_we1;
output  [63:0] delta_weights1_31_d1;
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
output  [6:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [6:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [6:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [6:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [6:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [6:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [6:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [6:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [6:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [6:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [6:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [6:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [6:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [6:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [6:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [6:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
output  [6:0] training_data_16_address0;
output   training_data_16_ce0;
input  [63:0] training_data_16_q0;
output  [6:0] training_data_17_address0;
output   training_data_17_ce0;
input  [63:0] training_data_17_q0;
output  [6:0] training_data_18_address0;
output   training_data_18_ce0;
input  [63:0] training_data_18_q0;
output  [6:0] training_data_19_address0;
output   training_data_19_ce0;
input  [63:0] training_data_19_q0;
output  [6:0] training_data_20_address0;
output   training_data_20_ce0;
input  [63:0] training_data_20_q0;
output  [6:0] training_data_21_address0;
output   training_data_21_ce0;
input  [63:0] training_data_21_q0;
output  [6:0] training_data_22_address0;
output   training_data_22_ce0;
input  [63:0] training_data_22_q0;
output  [6:0] training_data_23_address0;
output   training_data_23_ce0;
input  [63:0] training_data_23_q0;
output  [6:0] training_data_24_address0;
output   training_data_24_ce0;
input  [63:0] training_data_24_q0;
output  [6:0] training_data_25_address0;
output   training_data_25_ce0;
input  [63:0] training_data_25_q0;
output  [6:0] training_data_26_address0;
output   training_data_26_ce0;
input  [63:0] training_data_26_q0;
output  [6:0] training_data_27_address0;
output   training_data_27_ce0;
input  [63:0] training_data_27_q0;
output  [6:0] training_data_28_address0;
output   training_data_28_ce0;
input  [63:0] training_data_28_q0;
output  [6:0] training_data_29_address0;
output   training_data_29_ce0;
input  [63:0] training_data_29_q0;
output  [6:0] training_data_30_address0;
output   training_data_30_ce0;
input  [63:0] training_data_30_q0;
output  [6:0] training_data_31_address0;
output   training_data_31_ce0;
input  [63:0] training_data_31_q0;
input  [11:0] idx;
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
wire   [0:0] icmp_ln113_fu_2246_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] i_12_reg_2999;
reg   [3:0] i_12_reg_2999_pp0_iter1_reg;
reg   [3:0] i_12_reg_2999_pp0_iter2_reg;
reg   [3:0] i_12_reg_2999_pp0_iter3_reg;
reg   [3:0] i_12_reg_2999_pp0_iter4_reg;
reg   [3:0] i_12_reg_2999_pp0_iter5_reg;
reg   [3:0] i_12_reg_2999_pp0_iter6_reg;
reg   [3:0] i_12_reg_2999_pp0_iter7_reg;
reg   [3:0] i_12_reg_2999_pp0_iter8_reg;
wire   [4:0] empty_fu_2268_p1;
reg   [4:0] empty_reg_3009;
wire   [63:0] tmp_fu_2451_p67;
reg   [63:0] tmp_reg_3174;
reg   [63:0] mul_reg_3242;
reg   [63:0] mul_1_reg_3247;
reg   [63:0] mul_2_reg_3252;
reg   [63:0] mul_3_reg_3257;
reg   [63:0] mul_4_reg_3262;
reg   [63:0] mul_5_reg_3267;
reg   [63:0] mul_6_reg_3272;
reg   [63:0] mul_7_reg_3277;
reg   [63:0] mul_8_reg_3282;
reg   [63:0] mul_9_reg_3287;
reg   [63:0] mul_10_reg_3292;
reg   [63:0] mul_11_reg_3297;
reg   [63:0] mul_12_reg_3302;
reg   [63:0] mul_13_reg_3307;
reg   [63:0] mul_14_reg_3312;
reg   [63:0] mul_15_reg_3317;
reg   [63:0] mul_16_reg_3322;
reg   [63:0] mul_17_reg_3327;
reg   [63:0] mul_18_reg_3332;
reg   [63:0] mul_19_reg_3337;
reg   [63:0] mul_20_reg_3342;
reg   [63:0] mul_21_reg_3347;
reg   [63:0] mul_22_reg_3352;
reg   [63:0] mul_23_reg_3357;
reg   [63:0] mul_24_reg_3362;
reg   [63:0] mul_25_reg_3367;
reg   [63:0] mul_26_reg_3372;
reg   [63:0] mul_27_reg_3377;
reg   [63:0] mul_28_reg_3382;
reg   [63:0] mul_29_reg_3387;
reg   [63:0] mul_30_reg_3392;
reg   [63:0] mul_31_reg_3397;
reg   [63:0] mul_32_reg_3402;
reg   [63:0] mul_33_reg_3407;
reg   [63:0] mul_34_reg_3412;
reg   [63:0] mul_35_reg_3417;
reg   [63:0] mul_36_reg_3422;
reg   [63:0] mul_37_reg_3427;
reg   [63:0] mul_38_reg_3432;
reg   [63:0] mul_39_reg_3437;
reg   [63:0] mul_40_reg_3442;
reg   [63:0] mul_41_reg_3447;
reg   [63:0] mul_42_reg_3452;
reg   [63:0] mul_43_reg_3457;
reg   [63:0] mul_44_reg_3462;
reg   [63:0] mul_45_reg_3467;
reg   [63:0] mul_46_reg_3472;
reg   [63:0] mul_47_reg_3477;
reg   [63:0] mul_48_reg_3482;
reg   [63:0] mul_49_reg_3487;
reg   [63:0] mul_50_reg_3492;
reg   [63:0] mul_51_reg_3497;
reg   [63:0] mul_52_reg_3502;
reg   [63:0] mul_53_reg_3507;
reg   [63:0] mul_54_reg_3512;
reg   [63:0] mul_55_reg_3517;
reg   [63:0] mul_56_reg_3522;
reg   [63:0] mul_57_reg_3527;
reg   [63:0] mul_58_reg_3532;
reg   [63:0] mul_59_reg_3537;
reg   [63:0] mul_60_reg_3542;
reg   [63:0] mul_61_reg_3547;
reg   [63:0] mul_62_reg_3552;
reg   [63:0] mul_63_reg_3557;
wire   [63:0] p_cast_fu_2282_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_fu_2593_p1;
wire   [63:0] zext_ln115_1_fu_2636_p1;
reg   [3:0] i_fu_372;
wire   [3:0] add_ln113_fu_2252_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_12;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    training_data_8_ce0_local;
reg    training_data_9_ce0_local;
reg    training_data_10_ce0_local;
reg    training_data_11_ce0_local;
reg    training_data_12_ce0_local;
reg    training_data_13_ce0_local;
reg    training_data_14_ce0_local;
reg    training_data_15_ce0_local;
reg    training_data_16_ce0_local;
reg    training_data_17_ce0_local;
reg    training_data_18_ce0_local;
reg    training_data_19_ce0_local;
reg    training_data_20_ce0_local;
reg    training_data_21_ce0_local;
reg    training_data_22_ce0_local;
reg    training_data_23_ce0_local;
reg    training_data_24_ce0_local;
reg    training_data_25_ce0_local;
reg    training_data_26_ce0_local;
reg    training_data_27_ce0_local;
reg    training_data_28_ce0_local;
reg    training_data_29_ce0_local;
reg    training_data_30_ce0_local;
reg    training_data_31_ce0_local;
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_8_we1_local;
reg    delta_weights1_8_ce1_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we1_local;
reg    delta_weights1_9_ce1_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we1_local;
reg    delta_weights1_10_ce1_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we1_local;
reg    delta_weights1_11_ce1_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we1_local;
reg    delta_weights1_12_ce1_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we1_local;
reg    delta_weights1_13_ce1_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we1_local;
reg    delta_weights1_14_ce1_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we1_local;
reg    delta_weights1_15_ce1_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_16_we1_local;
reg    delta_weights1_16_ce1_local;
reg    delta_weights1_16_we0_local;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_17_we1_local;
reg    delta_weights1_17_ce1_local;
reg    delta_weights1_17_we0_local;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_18_we1_local;
reg    delta_weights1_18_ce1_local;
reg    delta_weights1_18_we0_local;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_19_we1_local;
reg    delta_weights1_19_ce1_local;
reg    delta_weights1_19_we0_local;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_20_we1_local;
reg    delta_weights1_20_ce1_local;
reg    delta_weights1_20_we0_local;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_21_we1_local;
reg    delta_weights1_21_ce1_local;
reg    delta_weights1_21_we0_local;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_22_we1_local;
reg    delta_weights1_22_ce1_local;
reg    delta_weights1_22_we0_local;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_23_we1_local;
reg    delta_weights1_23_ce1_local;
reg    delta_weights1_23_we0_local;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_24_we1_local;
reg    delta_weights1_24_ce1_local;
reg    delta_weights1_24_we0_local;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_25_we1_local;
reg    delta_weights1_25_ce1_local;
reg    delta_weights1_25_we0_local;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_26_we1_local;
reg    delta_weights1_26_ce1_local;
reg    delta_weights1_26_we0_local;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_27_we1_local;
reg    delta_weights1_27_ce1_local;
reg    delta_weights1_27_we0_local;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_28_we1_local;
reg    delta_weights1_28_ce1_local;
reg    delta_weights1_28_we0_local;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_29_we1_local;
reg    delta_weights1_29_ce1_local;
reg    delta_weights1_29_we0_local;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_30_we1_local;
reg    delta_weights1_30_ce1_local;
reg    delta_weights1_30_we0_local;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_31_we1_local;
reg    delta_weights1_31_ce1_local;
reg    delta_weights1_31_we0_local;
reg    delta_weights1_31_ce0_local;
wire   [11:0] zext_ln113_fu_2258_p1;
wire   [11:0] p_sum_fu_2262_p2;
wire   [6:0] tmp_s_fu_2272_p4;
wire   [63:0] tmp_fu_2451_p2;
wire   [63:0] tmp_fu_2451_p4;
wire   [63:0] tmp_fu_2451_p6;
wire   [63:0] tmp_fu_2451_p8;
wire   [63:0] tmp_fu_2451_p10;
wire   [63:0] tmp_fu_2451_p12;
wire   [63:0] tmp_fu_2451_p14;
wire   [63:0] tmp_fu_2451_p16;
wire   [63:0] tmp_fu_2451_p18;
wire   [63:0] tmp_fu_2451_p20;
wire   [63:0] tmp_fu_2451_p22;
wire   [63:0] tmp_fu_2451_p24;
wire   [63:0] tmp_fu_2451_p26;
wire   [63:0] tmp_fu_2451_p28;
wire   [63:0] tmp_fu_2451_p30;
wire   [63:0] tmp_fu_2451_p32;
wire   [63:0] tmp_fu_2451_p34;
wire   [63:0] tmp_fu_2451_p36;
wire   [63:0] tmp_fu_2451_p38;
wire   [63:0] tmp_fu_2451_p40;
wire   [63:0] tmp_fu_2451_p42;
wire   [63:0] tmp_fu_2451_p44;
wire   [63:0] tmp_fu_2451_p46;
wire   [63:0] tmp_fu_2451_p48;
wire   [63:0] tmp_fu_2451_p50;
wire   [63:0] tmp_fu_2451_p52;
wire   [63:0] tmp_fu_2451_p54;
wire   [63:0] tmp_fu_2451_p56;
wire   [63:0] tmp_fu_2451_p58;
wire   [63:0] tmp_fu_2451_p60;
wire   [63:0] tmp_fu_2451_p62;
wire   [63:0] tmp_fu_2451_p64;
wire   [63:0] tmp_fu_2451_p65;
wire   [4:0] shl_ln_fu_2586_p3;
wire   [4:0] or_ln_fu_2629_p3;
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
wire   [4:0] tmp_fu_2451_p1;
wire   [4:0] tmp_fu_2451_p3;
wire   [4:0] tmp_fu_2451_p5;
wire   [4:0] tmp_fu_2451_p7;
wire   [4:0] tmp_fu_2451_p9;
wire   [4:0] tmp_fu_2451_p11;
wire   [4:0] tmp_fu_2451_p13;
wire   [4:0] tmp_fu_2451_p15;
wire   [4:0] tmp_fu_2451_p17;
wire   [4:0] tmp_fu_2451_p19;
wire   [4:0] tmp_fu_2451_p21;
wire   [4:0] tmp_fu_2451_p23;
wire   [4:0] tmp_fu_2451_p25;
wire   [4:0] tmp_fu_2451_p27;
wire   [4:0] tmp_fu_2451_p29;
wire   [4:0] tmp_fu_2451_p31;
wire  signed [4:0] tmp_fu_2451_p33;
wire  signed [4:0] tmp_fu_2451_p35;
wire  signed [4:0] tmp_fu_2451_p37;
wire  signed [4:0] tmp_fu_2451_p39;
wire  signed [4:0] tmp_fu_2451_p41;
wire  signed [4:0] tmp_fu_2451_p43;
wire  signed [4:0] tmp_fu_2451_p45;
wire  signed [4:0] tmp_fu_2451_p47;
wire  signed [4:0] tmp_fu_2451_p49;
wire  signed [4:0] tmp_fu_2451_p51;
wire  signed [4:0] tmp_fu_2451_p53;
wire  signed [4:0] tmp_fu_2451_p55;
wire  signed [4:0] tmp_fu_2451_p57;
wire  signed [4:0] tmp_fu_2451_p59;
wire  signed [4:0] tmp_fu_2451_p61;
wire  signed [4:0] tmp_fu_2451_p63;
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
#0 i_fu_372 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U2619(.din0(tmp_fu_2451_p2),.din1(tmp_fu_2451_p4),.din2(tmp_fu_2451_p6),.din3(tmp_fu_2451_p8),.din4(tmp_fu_2451_p10),.din5(tmp_fu_2451_p12),.din6(tmp_fu_2451_p14),.din7(tmp_fu_2451_p16),.din8(tmp_fu_2451_p18),.din9(tmp_fu_2451_p20),.din10(tmp_fu_2451_p22),.din11(tmp_fu_2451_p24),.din12(tmp_fu_2451_p26),.din13(tmp_fu_2451_p28),.din14(tmp_fu_2451_p30),.din15(tmp_fu_2451_p32),.din16(tmp_fu_2451_p34),.din17(tmp_fu_2451_p36),.din18(tmp_fu_2451_p38),.din19(tmp_fu_2451_p40),.din20(tmp_fu_2451_p42),.din21(tmp_fu_2451_p44),.din22(tmp_fu_2451_p46),.din23(tmp_fu_2451_p48),.din24(tmp_fu_2451_p50),.din25(tmp_fu_2451_p52),.din26(tmp_fu_2451_p54),.din27(tmp_fu_2451_p56),.din28(tmp_fu_2451_p58),.din29(tmp_fu_2451_p60),.din30(tmp_fu_2451_p62),.din31(tmp_fu_2451_p64),.def(tmp_fu_2451_p65),.sel(empty_reg_3009),.dout(tmp_fu_2451_p67));
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
        if (((icmp_ln113_fu_2246_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_372 <= add_ln113_fu_2252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_372 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_3009 <= empty_fu_2268_p1;
        i_12_reg_2999 <= ap_sig_allocacmp_i_12;
        i_12_reg_2999_pp0_iter1_reg <= i_12_reg_2999;
        tmp_reg_3174 <= tmp_fu_2451_p67;
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
        i_12_reg_2999_pp0_iter2_reg <= i_12_reg_2999_pp0_iter1_reg;
        i_12_reg_2999_pp0_iter3_reg <= i_12_reg_2999_pp0_iter2_reg;
        i_12_reg_2999_pp0_iter4_reg <= i_12_reg_2999_pp0_iter3_reg;
        i_12_reg_2999_pp0_iter5_reg <= i_12_reg_2999_pp0_iter4_reg;
        i_12_reg_2999_pp0_iter6_reg <= i_12_reg_2999_pp0_iter5_reg;
        i_12_reg_2999_pp0_iter7_reg <= i_12_reg_2999_pp0_iter6_reg;
        i_12_reg_2999_pp0_iter8_reg <= i_12_reg_2999_pp0_iter7_reg;
        mul_10_reg_3292 <= grp_fu_12333_p_dout0;
        mul_11_reg_3297 <= grp_fu_12337_p_dout0;
        mul_12_reg_3302 <= grp_fu_12341_p_dout0;
        mul_13_reg_3307 <= grp_fu_12345_p_dout0;
        mul_14_reg_3312 <= grp_fu_12349_p_dout0;
        mul_15_reg_3317 <= grp_fu_12353_p_dout0;
        mul_16_reg_3322 <= grp_fu_12357_p_dout0;
        mul_17_reg_3327 <= grp_fu_12361_p_dout0;
        mul_18_reg_3332 <= grp_fu_12365_p_dout0;
        mul_19_reg_3337 <= grp_fu_12369_p_dout0;
        mul_1_reg_3247 <= grp_fu_12297_p_dout0;
        mul_20_reg_3342 <= grp_fu_12373_p_dout0;
        mul_21_reg_3347 <= grp_fu_12377_p_dout0;
        mul_22_reg_3352 <= grp_fu_12381_p_dout0;
        mul_23_reg_3357 <= grp_fu_12385_p_dout0;
        mul_24_reg_3362 <= grp_fu_12389_p_dout0;
        mul_25_reg_3367 <= grp_fu_12393_p_dout0;
        mul_26_reg_3372 <= grp_fu_12397_p_dout0;
        mul_27_reg_3377 <= grp_fu_12401_p_dout0;
        mul_28_reg_3382 <= grp_fu_12405_p_dout0;
        mul_29_reg_3387 <= grp_fu_12409_p_dout0;
        mul_2_reg_3252 <= grp_fu_12301_p_dout0;
        mul_30_reg_3392 <= grp_fu_12413_p_dout0;
        mul_31_reg_3397 <= grp_fu_12417_p_dout0;
        mul_32_reg_3402 <= grp_fu_12421_p_dout0;
        mul_33_reg_3407 <= grp_fu_12425_p_dout0;
        mul_34_reg_3412 <= grp_fu_12429_p_dout0;
        mul_35_reg_3417 <= grp_fu_12433_p_dout0;
        mul_36_reg_3422 <= grp_fu_12437_p_dout0;
        mul_37_reg_3427 <= grp_fu_12441_p_dout0;
        mul_38_reg_3432 <= grp_fu_12445_p_dout0;
        mul_39_reg_3437 <= grp_fu_12449_p_dout0;
        mul_3_reg_3257 <= grp_fu_12305_p_dout0;
        mul_40_reg_3442 <= grp_fu_12453_p_dout0;
        mul_41_reg_3447 <= grp_fu_12457_p_dout0;
        mul_42_reg_3452 <= grp_fu_12461_p_dout0;
        mul_43_reg_3457 <= grp_fu_12465_p_dout0;
        mul_44_reg_3462 <= grp_fu_12469_p_dout0;
        mul_45_reg_3467 <= grp_fu_12473_p_dout0;
        mul_46_reg_3472 <= grp_fu_12477_p_dout0;
        mul_47_reg_3477 <= grp_fu_12481_p_dout0;
        mul_48_reg_3482 <= grp_fu_12485_p_dout0;
        mul_49_reg_3487 <= grp_fu_12489_p_dout0;
        mul_4_reg_3262 <= grp_fu_12309_p_dout0;
        mul_50_reg_3492 <= grp_fu_12493_p_dout0;
        mul_51_reg_3497 <= grp_fu_12497_p_dout0;
        mul_52_reg_3502 <= grp_fu_12501_p_dout0;
        mul_53_reg_3507 <= grp_fu_12505_p_dout0;
        mul_54_reg_3512 <= grp_fu_12509_p_dout0;
        mul_55_reg_3517 <= grp_fu_12513_p_dout0;
        mul_56_reg_3522 <= grp_fu_12517_p_dout0;
        mul_57_reg_3527 <= grp_fu_12521_p_dout0;
        mul_58_reg_3532 <= grp_fu_12525_p_dout0;
        mul_59_reg_3537 <= grp_fu_12529_p_dout0;
        mul_5_reg_3267 <= grp_fu_12313_p_dout0;
        mul_60_reg_3542 <= grp_fu_12533_p_dout0;
        mul_61_reg_3547 <= grp_fu_12537_p_dout0;
        mul_62_reg_3552 <= grp_fu_12541_p_dout0;
        mul_63_reg_3557 <= grp_fu_12545_p_dout0;
        mul_6_reg_3272 <= grp_fu_12317_p_dout0;
        mul_7_reg_3277 <= grp_fu_12321_p_dout0;
        mul_8_reg_3282 <= grp_fu_12325_p_dout0;
        mul_9_reg_3287 <= grp_fu_12329_p_dout0;
        mul_reg_3242 <= grp_fu_12293_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_2246_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_12 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_372;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_ce1_local = 1'b1;
    end else begin
        delta_weights1_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_we1_local = 1'b1;
    end else begin
        delta_weights1_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_ce1_local = 1'b1;
    end else begin
        delta_weights1_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_we1_local = 1'b1;
    end else begin
        delta_weights1_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_ce1_local = 1'b1;
    end else begin
        delta_weights1_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_we1_local = 1'b1;
    end else begin
        delta_weights1_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_ce1_local = 1'b1;
    end else begin
        delta_weights1_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_we1_local = 1'b1;
    end else begin
        delta_weights1_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_ce1_local = 1'b1;
    end else begin
        delta_weights1_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_we1_local = 1'b1;
    end else begin
        delta_weights1_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_ce1_local = 1'b1;
    end else begin
        delta_weights1_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_we1_local = 1'b1;
    end else begin
        delta_weights1_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_ce1_local = 1'b1;
    end else begin
        delta_weights1_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_we1_local = 1'b1;
    end else begin
        delta_weights1_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_ce1_local = 1'b1;
    end else begin
        delta_weights1_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_we1_local = 1'b1;
    end else begin
        delta_weights1_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_ce1_local = 1'b1;
    end else begin
        delta_weights1_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_we1_local = 1'b1;
    end else begin
        delta_weights1_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_ce1_local = 1'b1;
    end else begin
        delta_weights1_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_we1_local = 1'b1;
    end else begin
        delta_weights1_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_ce1_local = 1'b1;
    end else begin
        delta_weights1_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_we1_local = 1'b1;
    end else begin
        delta_weights1_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_ce1_local = 1'b1;
    end else begin
        delta_weights1_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_we1_local = 1'b1;
    end else begin
        delta_weights1_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_ce1_local = 1'b1;
    end else begin
        delta_weights1_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_we1_local = 1'b1;
    end else begin
        delta_weights1_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_ce1_local = 1'b1;
    end else begin
        delta_weights1_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_we1_local = 1'b1;
    end else begin
        delta_weights1_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_ce1_local = 1'b1;
    end else begin
        delta_weights1_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_we1_local = 1'b1;
    end else begin
        delta_weights1_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_ce1_local = 1'b1;
    end else begin
        delta_weights1_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_we1_local = 1'b1;
    end else begin
        delta_weights1_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_ce1_local = 1'b1;
    end else begin
        delta_weights1_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_we1_local = 1'b1;
    end else begin
        delta_weights1_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_ce1_local = 1'b1;
    end else begin
        delta_weights1_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_we1_local = 1'b1;
    end else begin
        delta_weights1_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_ce1_local = 1'b1;
    end else begin
        delta_weights1_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_we1_local = 1'b1;
    end else begin
        delta_weights1_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_ce1_local = 1'b1;
    end else begin
        delta_weights1_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_we1_local = 1'b1;
    end else begin
        delta_weights1_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_ce1_local = 1'b1;
    end else begin
        delta_weights1_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_we1_local = 1'b1;
    end else begin
        delta_weights1_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_ce1_local = 1'b1;
    end else begin
        delta_weights1_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_we1_local = 1'b1;
    end else begin
        delta_weights1_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_ce1_local = 1'b1;
    end else begin
        delta_weights1_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_we1_local = 1'b1;
    end else begin
        delta_weights1_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_ce1_local = 1'b1;
    end else begin
        delta_weights1_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_we1_local = 1'b1;
    end else begin
        delta_weights1_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_16_ce0_local = 1'b1;
    end else begin
        training_data_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_17_ce0_local = 1'b1;
    end else begin
        training_data_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_18_ce0_local = 1'b1;
    end else begin
        training_data_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_19_ce0_local = 1'b1;
    end else begin
        training_data_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_20_ce0_local = 1'b1;
    end else begin
        training_data_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_21_ce0_local = 1'b1;
    end else begin
        training_data_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_22_ce0_local = 1'b1;
    end else begin
        training_data_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_23_ce0_local = 1'b1;
    end else begin
        training_data_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_24_ce0_local = 1'b1;
    end else begin
        training_data_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_25_ce0_local = 1'b1;
    end else begin
        training_data_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_26_ce0_local = 1'b1;
    end else begin
        training_data_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_27_ce0_local = 1'b1;
    end else begin
        training_data_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_28_ce0_local = 1'b1;
    end else begin
        training_data_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_29_ce0_local = 1'b1;
    end else begin
        training_data_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_30_ce0_local = 1'b1;
    end else begin
        training_data_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_31_ce0_local = 1'b1;
    end else begin
        training_data_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
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
assign add_ln113_fu_2252_p2 = (ap_sig_allocacmp_i_12 + 4'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_32_reg_3402;
assign delta_weights1_0_d1 = mul_reg_3242;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_10_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_10_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_ce1 = delta_weights1_10_ce1_local;
assign delta_weights1_10_d0 = mul_42_reg_3452;
assign delta_weights1_10_d1 = mul_10_reg_3292;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_10_we1 = delta_weights1_10_we1_local;
assign delta_weights1_11_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_11_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_ce1 = delta_weights1_11_ce1_local;
assign delta_weights1_11_d0 = mul_43_reg_3457;
assign delta_weights1_11_d1 = mul_11_reg_3297;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_11_we1 = delta_weights1_11_we1_local;
assign delta_weights1_12_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_12_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_ce1 = delta_weights1_12_ce1_local;
assign delta_weights1_12_d0 = mul_44_reg_3462;
assign delta_weights1_12_d1 = mul_12_reg_3302;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_12_we1 = delta_weights1_12_we1_local;
assign delta_weights1_13_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_13_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_ce1 = delta_weights1_13_ce1_local;
assign delta_weights1_13_d0 = mul_45_reg_3467;
assign delta_weights1_13_d1 = mul_13_reg_3307;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_13_we1 = delta_weights1_13_we1_local;
assign delta_weights1_14_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_14_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_ce1 = delta_weights1_14_ce1_local;
assign delta_weights1_14_d0 = mul_46_reg_3472;
assign delta_weights1_14_d1 = mul_14_reg_3312;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_14_we1 = delta_weights1_14_we1_local;
assign delta_weights1_15_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_15_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_ce1 = delta_weights1_15_ce1_local;
assign delta_weights1_15_d0 = mul_47_reg_3477;
assign delta_weights1_15_d1 = mul_15_reg_3317;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_15_we1 = delta_weights1_15_we1_local;
assign delta_weights1_16_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_16_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_ce1 = delta_weights1_16_ce1_local;
assign delta_weights1_16_d0 = mul_48_reg_3482;
assign delta_weights1_16_d1 = mul_16_reg_3322;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_16_we1 = delta_weights1_16_we1_local;
assign delta_weights1_17_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_17_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_ce1 = delta_weights1_17_ce1_local;
assign delta_weights1_17_d0 = mul_49_reg_3487;
assign delta_weights1_17_d1 = mul_17_reg_3327;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_17_we1 = delta_weights1_17_we1_local;
assign delta_weights1_18_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_18_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_ce1 = delta_weights1_18_ce1_local;
assign delta_weights1_18_d0 = mul_50_reg_3492;
assign delta_weights1_18_d1 = mul_18_reg_3332;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_18_we1 = delta_weights1_18_we1_local;
assign delta_weights1_19_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_19_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_ce1 = delta_weights1_19_ce1_local;
assign delta_weights1_19_d0 = mul_51_reg_3497;
assign delta_weights1_19_d1 = mul_19_reg_3337;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_19_we1 = delta_weights1_19_we1_local;
assign delta_weights1_1_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_33_reg_3407;
assign delta_weights1_1_d1 = mul_1_reg_3247;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_20_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_20_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_ce1 = delta_weights1_20_ce1_local;
assign delta_weights1_20_d0 = mul_52_reg_3502;
assign delta_weights1_20_d1 = mul_20_reg_3342;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_20_we1 = delta_weights1_20_we1_local;
assign delta_weights1_21_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_21_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_ce1 = delta_weights1_21_ce1_local;
assign delta_weights1_21_d0 = mul_53_reg_3507;
assign delta_weights1_21_d1 = mul_21_reg_3347;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_21_we1 = delta_weights1_21_we1_local;
assign delta_weights1_22_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_22_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_ce1 = delta_weights1_22_ce1_local;
assign delta_weights1_22_d0 = mul_54_reg_3512;
assign delta_weights1_22_d1 = mul_22_reg_3352;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_22_we1 = delta_weights1_22_we1_local;
assign delta_weights1_23_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_23_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_ce1 = delta_weights1_23_ce1_local;
assign delta_weights1_23_d0 = mul_55_reg_3517;
assign delta_weights1_23_d1 = mul_23_reg_3357;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_23_we1 = delta_weights1_23_we1_local;
assign delta_weights1_24_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_24_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_ce1 = delta_weights1_24_ce1_local;
assign delta_weights1_24_d0 = mul_56_reg_3522;
assign delta_weights1_24_d1 = mul_24_reg_3362;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_24_we1 = delta_weights1_24_we1_local;
assign delta_weights1_25_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_25_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_ce1 = delta_weights1_25_ce1_local;
assign delta_weights1_25_d0 = mul_57_reg_3527;
assign delta_weights1_25_d1 = mul_25_reg_3367;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_25_we1 = delta_weights1_25_we1_local;
assign delta_weights1_26_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_26_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_ce1 = delta_weights1_26_ce1_local;
assign delta_weights1_26_d0 = mul_58_reg_3532;
assign delta_weights1_26_d1 = mul_26_reg_3372;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_26_we1 = delta_weights1_26_we1_local;
assign delta_weights1_27_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_27_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_ce1 = delta_weights1_27_ce1_local;
assign delta_weights1_27_d0 = mul_59_reg_3537;
assign delta_weights1_27_d1 = mul_27_reg_3377;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_27_we1 = delta_weights1_27_we1_local;
assign delta_weights1_28_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_28_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_ce1 = delta_weights1_28_ce1_local;
assign delta_weights1_28_d0 = mul_60_reg_3542;
assign delta_weights1_28_d1 = mul_28_reg_3382;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_28_we1 = delta_weights1_28_we1_local;
assign delta_weights1_29_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_29_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_ce1 = delta_weights1_29_ce1_local;
assign delta_weights1_29_d0 = mul_61_reg_3547;
assign delta_weights1_29_d1 = mul_29_reg_3387;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_29_we1 = delta_weights1_29_we1_local;
assign delta_weights1_2_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_34_reg_3412;
assign delta_weights1_2_d1 = mul_2_reg_3252;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_30_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_30_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_ce1 = delta_weights1_30_ce1_local;
assign delta_weights1_30_d0 = mul_62_reg_3552;
assign delta_weights1_30_d1 = mul_30_reg_3392;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_30_we1 = delta_weights1_30_we1_local;
assign delta_weights1_31_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_31_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_ce1 = delta_weights1_31_ce1_local;
assign delta_weights1_31_d0 = mul_63_reg_3557;
assign delta_weights1_31_d1 = mul_31_reg_3397;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_31_we1 = delta_weights1_31_we1_local;
assign delta_weights1_3_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_35_reg_3417;
assign delta_weights1_3_d1 = mul_3_reg_3257;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_36_reg_3422;
assign delta_weights1_4_d1 = mul_4_reg_3262;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_37_reg_3427;
assign delta_weights1_5_d1 = mul_5_reg_3267;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_38_reg_3432;
assign delta_weights1_6_d1 = mul_6_reg_3272;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_39_reg_3437;
assign delta_weights1_7_d1 = mul_7_reg_3277;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign delta_weights1_8_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_8_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_ce1 = delta_weights1_8_ce1_local;
assign delta_weights1_8_d0 = mul_40_reg_3442;
assign delta_weights1_8_d1 = mul_8_reg_3282;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_8_we1 = delta_weights1_8_we1_local;
assign delta_weights1_9_address0 = zext_ln115_1_fu_2636_p1;
assign delta_weights1_9_address1 = zext_ln115_fu_2593_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_ce1 = delta_weights1_9_ce1_local;
assign delta_weights1_9_d0 = mul_41_reg_3447;
assign delta_weights1_9_d1 = mul_9_reg_3287;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_9_we1 = delta_weights1_9_we1_local;
assign empty_fu_2268_p1 = p_sum_fu_2262_p2[4:0];
assign grp_fu_12293_p_ce = 1'b1;
assign grp_fu_12293_p_din0 = tmp_reg_3174;
assign grp_fu_12293_p_din1 = output_difference_0_0_0_val;
assign grp_fu_12297_p_ce = 1'b1;
assign grp_fu_12297_p_din0 = tmp_reg_3174;
assign grp_fu_12297_p_din1 = output_difference_1_0_0_val;
assign grp_fu_12301_p_ce = 1'b1;
assign grp_fu_12301_p_din0 = tmp_reg_3174;
assign grp_fu_12301_p_din1 = output_difference_2_0_0_val;
assign grp_fu_12305_p_ce = 1'b1;
assign grp_fu_12305_p_din0 = tmp_reg_3174;
assign grp_fu_12305_p_din1 = output_difference_3_0_0_val;
assign grp_fu_12309_p_ce = 1'b1;
assign grp_fu_12309_p_din0 = tmp_reg_3174;
assign grp_fu_12309_p_din1 = output_difference_4_0_0_val;
assign grp_fu_12313_p_ce = 1'b1;
assign grp_fu_12313_p_din0 = tmp_reg_3174;
assign grp_fu_12313_p_din1 = output_difference_5_0_0_val;
assign grp_fu_12317_p_ce = 1'b1;
assign grp_fu_12317_p_din0 = tmp_reg_3174;
assign grp_fu_12317_p_din1 = output_difference_6_0_0_val;
assign grp_fu_12321_p_ce = 1'b1;
assign grp_fu_12321_p_din0 = tmp_reg_3174;
assign grp_fu_12321_p_din1 = output_difference_7_0_0_val;
assign grp_fu_12325_p_ce = 1'b1;
assign grp_fu_12325_p_din0 = tmp_reg_3174;
assign grp_fu_12325_p_din1 = output_difference_8_0_0_val;
assign grp_fu_12329_p_ce = 1'b1;
assign grp_fu_12329_p_din0 = tmp_reg_3174;
assign grp_fu_12329_p_din1 = output_difference_9_0_0_val;
assign grp_fu_12333_p_ce = 1'b1;
assign grp_fu_12333_p_din0 = tmp_reg_3174;
assign grp_fu_12333_p_din1 = output_difference_10_0_0_val;
assign grp_fu_12337_p_ce = 1'b1;
assign grp_fu_12337_p_din0 = tmp_reg_3174;
assign grp_fu_12337_p_din1 = output_difference_11_0_0_val;
assign grp_fu_12341_p_ce = 1'b1;
assign grp_fu_12341_p_din0 = tmp_reg_3174;
assign grp_fu_12341_p_din1 = output_difference_12_0_0_val;
assign grp_fu_12345_p_ce = 1'b1;
assign grp_fu_12345_p_din0 = tmp_reg_3174;
assign grp_fu_12345_p_din1 = output_difference_13_0_0_val;
assign grp_fu_12349_p_ce = 1'b1;
assign grp_fu_12349_p_din0 = tmp_reg_3174;
assign grp_fu_12349_p_din1 = output_difference_14_0_0_val;
assign grp_fu_12353_p_ce = 1'b1;
assign grp_fu_12353_p_din0 = tmp_reg_3174;
assign grp_fu_12353_p_din1 = output_difference_15_0_0_val;
assign grp_fu_12357_p_ce = 1'b1;
assign grp_fu_12357_p_din0 = tmp_reg_3174;
assign grp_fu_12357_p_din1 = output_difference_16_0_0_val;
assign grp_fu_12361_p_ce = 1'b1;
assign grp_fu_12361_p_din0 = tmp_reg_3174;
assign grp_fu_12361_p_din1 = output_difference_17_0_0_val;
assign grp_fu_12365_p_ce = 1'b1;
assign grp_fu_12365_p_din0 = tmp_reg_3174;
assign grp_fu_12365_p_din1 = output_difference_18_0_0_val;
assign grp_fu_12369_p_ce = 1'b1;
assign grp_fu_12369_p_din0 = tmp_reg_3174;
assign grp_fu_12369_p_din1 = output_difference_19_0_0_val;
assign grp_fu_12373_p_ce = 1'b1;
assign grp_fu_12373_p_din0 = tmp_reg_3174;
assign grp_fu_12373_p_din1 = output_difference_20_0_0_val;
assign grp_fu_12377_p_ce = 1'b1;
assign grp_fu_12377_p_din0 = tmp_reg_3174;
assign grp_fu_12377_p_din1 = output_difference_21_0_0_val;
assign grp_fu_12381_p_ce = 1'b1;
assign grp_fu_12381_p_din0 = tmp_reg_3174;
assign grp_fu_12381_p_din1 = output_difference_22_0_0_val;
assign grp_fu_12385_p_ce = 1'b1;
assign grp_fu_12385_p_din0 = tmp_reg_3174;
assign grp_fu_12385_p_din1 = output_difference_23_0_0_val;
assign grp_fu_12389_p_ce = 1'b1;
assign grp_fu_12389_p_din0 = tmp_reg_3174;
assign grp_fu_12389_p_din1 = output_difference_24_0_0_val;
assign grp_fu_12393_p_ce = 1'b1;
assign grp_fu_12393_p_din0 = tmp_reg_3174;
assign grp_fu_12393_p_din1 = output_difference_25_0_0_val;
assign grp_fu_12397_p_ce = 1'b1;
assign grp_fu_12397_p_din0 = tmp_reg_3174;
assign grp_fu_12397_p_din1 = output_difference_26_0_0_val;
assign grp_fu_12401_p_ce = 1'b1;
assign grp_fu_12401_p_din0 = tmp_reg_3174;
assign grp_fu_12401_p_din1 = output_difference_27_0_0_val;
assign grp_fu_12405_p_ce = 1'b1;
assign grp_fu_12405_p_din0 = tmp_reg_3174;
assign grp_fu_12405_p_din1 = output_difference_28_0_0_val;
assign grp_fu_12409_p_ce = 1'b1;
assign grp_fu_12409_p_din0 = tmp_reg_3174;
assign grp_fu_12409_p_din1 = output_difference_29_0_0_val;
assign grp_fu_12413_p_ce = 1'b1;
assign grp_fu_12413_p_din0 = tmp_reg_3174;
assign grp_fu_12413_p_din1 = output_difference_30_0_0_val;
assign grp_fu_12417_p_ce = 1'b1;
assign grp_fu_12417_p_din0 = tmp_reg_3174;
assign grp_fu_12417_p_din1 = output_difference_31_0_0_val;
assign grp_fu_12421_p_ce = 1'b1;
assign grp_fu_12421_p_din0 = tmp_reg_3174;
assign grp_fu_12421_p_din1 = output_difference_0_0_1_val;
assign grp_fu_12425_p_ce = 1'b1;
assign grp_fu_12425_p_din0 = tmp_reg_3174;
assign grp_fu_12425_p_din1 = output_difference_1_0_1_val;
assign grp_fu_12429_p_ce = 1'b1;
assign grp_fu_12429_p_din0 = tmp_reg_3174;
assign grp_fu_12429_p_din1 = output_difference_2_0_1_val;
assign grp_fu_12433_p_ce = 1'b1;
assign grp_fu_12433_p_din0 = tmp_reg_3174;
assign grp_fu_12433_p_din1 = output_difference_3_0_1_val;
assign grp_fu_12437_p_ce = 1'b1;
assign grp_fu_12437_p_din0 = tmp_reg_3174;
assign grp_fu_12437_p_din1 = output_difference_4_0_1_val;
assign grp_fu_12441_p_ce = 1'b1;
assign grp_fu_12441_p_din0 = tmp_reg_3174;
assign grp_fu_12441_p_din1 = output_difference_5_0_1_val;
assign grp_fu_12445_p_ce = 1'b1;
assign grp_fu_12445_p_din0 = tmp_reg_3174;
assign grp_fu_12445_p_din1 = output_difference_6_0_1_val;
assign grp_fu_12449_p_ce = 1'b1;
assign grp_fu_12449_p_din0 = tmp_reg_3174;
assign grp_fu_12449_p_din1 = output_difference_7_0_1_val;
assign grp_fu_12453_p_ce = 1'b1;
assign grp_fu_12453_p_din0 = tmp_reg_3174;
assign grp_fu_12453_p_din1 = output_difference_8_0_1_val;
assign grp_fu_12457_p_ce = 1'b1;
assign grp_fu_12457_p_din0 = tmp_reg_3174;
assign grp_fu_12457_p_din1 = output_difference_9_0_1_val;
assign grp_fu_12461_p_ce = 1'b1;
assign grp_fu_12461_p_din0 = tmp_reg_3174;
assign grp_fu_12461_p_din1 = output_difference_10_0_1_val;
assign grp_fu_12465_p_ce = 1'b1;
assign grp_fu_12465_p_din0 = tmp_reg_3174;
assign grp_fu_12465_p_din1 = output_difference_11_0_1_val;
assign grp_fu_12469_p_ce = 1'b1;
assign grp_fu_12469_p_din0 = tmp_reg_3174;
assign grp_fu_12469_p_din1 = output_difference_12_0_1_val;
assign grp_fu_12473_p_ce = 1'b1;
assign grp_fu_12473_p_din0 = tmp_reg_3174;
assign grp_fu_12473_p_din1 = output_difference_13_0_1_val;
assign grp_fu_12477_p_ce = 1'b1;
assign grp_fu_12477_p_din0 = tmp_reg_3174;
assign grp_fu_12477_p_din1 = output_difference_14_0_1_val;
assign grp_fu_12481_p_ce = 1'b1;
assign grp_fu_12481_p_din0 = tmp_reg_3174;
assign grp_fu_12481_p_din1 = output_difference_15_0_1_val;
assign grp_fu_12485_p_ce = 1'b1;
assign grp_fu_12485_p_din0 = tmp_reg_3174;
assign grp_fu_12485_p_din1 = output_difference_16_0_1_val;
assign grp_fu_12489_p_ce = 1'b1;
assign grp_fu_12489_p_din0 = tmp_reg_3174;
assign grp_fu_12489_p_din1 = output_difference_17_0_1_val;
assign grp_fu_12493_p_ce = 1'b1;
assign grp_fu_12493_p_din0 = tmp_reg_3174;
assign grp_fu_12493_p_din1 = output_difference_18_0_1_val;
assign grp_fu_12497_p_ce = 1'b1;
assign grp_fu_12497_p_din0 = tmp_reg_3174;
assign grp_fu_12497_p_din1 = output_difference_19_0_1_val;
assign grp_fu_12501_p_ce = 1'b1;
assign grp_fu_12501_p_din0 = tmp_reg_3174;
assign grp_fu_12501_p_din1 = output_difference_20_0_1_val;
assign grp_fu_12505_p_ce = 1'b1;
assign grp_fu_12505_p_din0 = tmp_reg_3174;
assign grp_fu_12505_p_din1 = output_difference_21_0_1_val;
assign grp_fu_12509_p_ce = 1'b1;
assign grp_fu_12509_p_din0 = tmp_reg_3174;
assign grp_fu_12509_p_din1 = output_difference_22_0_1_val;
assign grp_fu_12513_p_ce = 1'b1;
assign grp_fu_12513_p_din0 = tmp_reg_3174;
assign grp_fu_12513_p_din1 = output_difference_23_0_1_val;
assign grp_fu_12517_p_ce = 1'b1;
assign grp_fu_12517_p_din0 = tmp_reg_3174;
assign grp_fu_12517_p_din1 = output_difference_24_0_1_val;
assign grp_fu_12521_p_ce = 1'b1;
assign grp_fu_12521_p_din0 = tmp_reg_3174;
assign grp_fu_12521_p_din1 = output_difference_25_0_1_val;
assign grp_fu_12525_p_ce = 1'b1;
assign grp_fu_12525_p_din0 = tmp_reg_3174;
assign grp_fu_12525_p_din1 = output_difference_26_0_1_val;
assign grp_fu_12529_p_ce = 1'b1;
assign grp_fu_12529_p_din0 = tmp_reg_3174;
assign grp_fu_12529_p_din1 = output_difference_27_0_1_val;
assign grp_fu_12533_p_ce = 1'b1;
assign grp_fu_12533_p_din0 = tmp_reg_3174;
assign grp_fu_12533_p_din1 = output_difference_28_0_1_val;
assign grp_fu_12537_p_ce = 1'b1;
assign grp_fu_12537_p_din0 = tmp_reg_3174;
assign grp_fu_12537_p_din1 = output_difference_29_0_1_val;
assign grp_fu_12541_p_ce = 1'b1;
assign grp_fu_12541_p_din0 = tmp_reg_3174;
assign grp_fu_12541_p_din1 = output_difference_30_0_1_val;
assign grp_fu_12545_p_ce = 1'b1;
assign grp_fu_12545_p_din0 = tmp_reg_3174;
assign grp_fu_12545_p_din1 = output_difference_31_0_1_val;
assign icmp_ln113_fu_2246_p2 = ((ap_sig_allocacmp_i_12 == 4'd13) ? 1'b1 : 1'b0);
assign or_ln_fu_2629_p3 = {{i_12_reg_2999_pp0_iter8_reg}, {1'd1}};
assign p_cast_fu_2282_p1 = tmp_s_fu_2272_p4;
assign p_sum_fu_2262_p2 = (zext_ln113_fu_2258_p1 + idx);
assign shl_ln_fu_2586_p3 = {{i_12_reg_2999_pp0_iter8_reg}, {1'd0}};
assign tmp_fu_2451_p10 = training_data_4_q0;
assign tmp_fu_2451_p12 = training_data_5_q0;
assign tmp_fu_2451_p14 = training_data_6_q0;
assign tmp_fu_2451_p16 = training_data_7_q0;
assign tmp_fu_2451_p18 = training_data_8_q0;
assign tmp_fu_2451_p2 = training_data_0_q0;
assign tmp_fu_2451_p20 = training_data_9_q0;
assign tmp_fu_2451_p22 = training_data_10_q0;
assign tmp_fu_2451_p24 = training_data_11_q0;
assign tmp_fu_2451_p26 = training_data_12_q0;
assign tmp_fu_2451_p28 = training_data_13_q0;
assign tmp_fu_2451_p30 = training_data_14_q0;
assign tmp_fu_2451_p32 = training_data_15_q0;
assign tmp_fu_2451_p34 = training_data_16_q0;
assign tmp_fu_2451_p36 = training_data_17_q0;
assign tmp_fu_2451_p38 = training_data_18_q0;
assign tmp_fu_2451_p4 = training_data_1_q0;
assign tmp_fu_2451_p40 = training_data_19_q0;
assign tmp_fu_2451_p42 = training_data_20_q0;
assign tmp_fu_2451_p44 = training_data_21_q0;
assign tmp_fu_2451_p46 = training_data_22_q0;
assign tmp_fu_2451_p48 = training_data_23_q0;
assign tmp_fu_2451_p50 = training_data_24_q0;
assign tmp_fu_2451_p52 = training_data_25_q0;
assign tmp_fu_2451_p54 = training_data_26_q0;
assign tmp_fu_2451_p56 = training_data_27_q0;
assign tmp_fu_2451_p58 = training_data_28_q0;
assign tmp_fu_2451_p6 = training_data_2_q0;
assign tmp_fu_2451_p60 = training_data_29_q0;
assign tmp_fu_2451_p62 = training_data_30_q0;
assign tmp_fu_2451_p64 = training_data_31_q0;
assign tmp_fu_2451_p65 = 'bx;
assign tmp_fu_2451_p8 = training_data_3_q0;
assign tmp_s_fu_2272_p4 = {{p_sum_fu_2262_p2[11:5]}};
assign training_data_0_address0 = p_cast_fu_2282_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_2282_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_2282_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_2282_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_2282_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_2282_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_2282_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_16_address0 = p_cast_fu_2282_p1;
assign training_data_16_ce0 = training_data_16_ce0_local;
assign training_data_17_address0 = p_cast_fu_2282_p1;
assign training_data_17_ce0 = training_data_17_ce0_local;
assign training_data_18_address0 = p_cast_fu_2282_p1;
assign training_data_18_ce0 = training_data_18_ce0_local;
assign training_data_19_address0 = p_cast_fu_2282_p1;
assign training_data_19_ce0 = training_data_19_ce0_local;
assign training_data_1_address0 = p_cast_fu_2282_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_20_address0 = p_cast_fu_2282_p1;
assign training_data_20_ce0 = training_data_20_ce0_local;
assign training_data_21_address0 = p_cast_fu_2282_p1;
assign training_data_21_ce0 = training_data_21_ce0_local;
assign training_data_22_address0 = p_cast_fu_2282_p1;
assign training_data_22_ce0 = training_data_22_ce0_local;
assign training_data_23_address0 = p_cast_fu_2282_p1;
assign training_data_23_ce0 = training_data_23_ce0_local;
assign training_data_24_address0 = p_cast_fu_2282_p1;
assign training_data_24_ce0 = training_data_24_ce0_local;
assign training_data_25_address0 = p_cast_fu_2282_p1;
assign training_data_25_ce0 = training_data_25_ce0_local;
assign training_data_26_address0 = p_cast_fu_2282_p1;
assign training_data_26_ce0 = training_data_26_ce0_local;
assign training_data_27_address0 = p_cast_fu_2282_p1;
assign training_data_27_ce0 = training_data_27_ce0_local;
assign training_data_28_address0 = p_cast_fu_2282_p1;
assign training_data_28_ce0 = training_data_28_ce0_local;
assign training_data_29_address0 = p_cast_fu_2282_p1;
assign training_data_29_ce0 = training_data_29_ce0_local;
assign training_data_2_address0 = p_cast_fu_2282_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_30_address0 = p_cast_fu_2282_p1;
assign training_data_30_ce0 = training_data_30_ce0_local;
assign training_data_31_address0 = p_cast_fu_2282_p1;
assign training_data_31_ce0 = training_data_31_ce0_local;
assign training_data_3_address0 = p_cast_fu_2282_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_2282_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_2282_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_2282_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_2282_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_2282_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_2282_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign zext_ln113_fu_2258_p1 = ap_sig_allocacmp_i_12;
assign zext_ln115_1_fu_2636_p1 = or_ln_fu_2629_p3;
assign zext_ln115_fu_2593_p1 = shl_ln_fu_2586_p3;
endmodule 