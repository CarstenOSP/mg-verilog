module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,output_difference_8_address0,output_difference_8_ce0,output_difference_8_q0,output_difference_8_address1,output_difference_8_ce1,output_difference_8_q1,output_difference_9_address0,output_difference_9_ce0,output_difference_9_q0,output_difference_9_address1,output_difference_9_ce1,output_difference_9_q1,output_difference_10_address0,output_difference_10_ce0,output_difference_10_q0,output_difference_10_address1,output_difference_10_ce1,output_difference_10_q1,output_difference_11_address0,output_difference_11_ce0,output_difference_11_q0,output_difference_11_address1,output_difference_11_ce1,output_difference_11_q1,output_difference_12_address0,output_difference_12_ce0,output_difference_12_q0,output_difference_12_address1,output_difference_12_ce1,output_difference_12_q1,output_difference_13_address0,output_difference_13_ce0,output_difference_13_q0,output_difference_13_address1,output_difference_13_ce1,output_difference_13_q1,output_difference_14_address0,output_difference_14_ce0,output_difference_14_q0,output_difference_14_address1,output_difference_14_ce1,output_difference_14_q1,output_difference_15_address0,output_difference_15_ce0,output_difference_15_q0,output_difference_15_address1,output_difference_15_ce1,output_difference_15_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,idx,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [5:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [5:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [5:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [5:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [5:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [5:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [5:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [5:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [5:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [5:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [5:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [5:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [5:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [5:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [5:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [5:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [5:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [5:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [5:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [5:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [5:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [5:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [5:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [5:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [5:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [5:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [5:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [5:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [5:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [5:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [5:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
output  [1:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [1:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [1:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [1:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [1:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [1:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [1:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [1:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [1:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [1:0] output_difference_4_address1;
output   output_difference_4_ce1;
input  [63:0] output_difference_4_q1;
output  [1:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [1:0] output_difference_5_address1;
output   output_difference_5_ce1;
input  [63:0] output_difference_5_q1;
output  [1:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [1:0] output_difference_6_address1;
output   output_difference_6_ce1;
input  [63:0] output_difference_6_q1;
output  [1:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [1:0] output_difference_7_address1;
output   output_difference_7_ce1;
input  [63:0] output_difference_7_q1;
output  [1:0] output_difference_8_address0;
output   output_difference_8_ce0;
input  [63:0] output_difference_8_q0;
output  [1:0] output_difference_8_address1;
output   output_difference_8_ce1;
input  [63:0] output_difference_8_q1;
output  [1:0] output_difference_9_address0;
output   output_difference_9_ce0;
input  [63:0] output_difference_9_q0;
output  [1:0] output_difference_9_address1;
output   output_difference_9_ce1;
input  [63:0] output_difference_9_q1;
output  [1:0] output_difference_10_address0;
output   output_difference_10_ce0;
input  [63:0] output_difference_10_q0;
output  [1:0] output_difference_10_address1;
output   output_difference_10_ce1;
input  [63:0] output_difference_10_q1;
output  [1:0] output_difference_11_address0;
output   output_difference_11_ce0;
input  [63:0] output_difference_11_q0;
output  [1:0] output_difference_11_address1;
output   output_difference_11_ce1;
input  [63:0] output_difference_11_q1;
output  [1:0] output_difference_12_address0;
output   output_difference_12_ce0;
input  [63:0] output_difference_12_q0;
output  [1:0] output_difference_12_address1;
output   output_difference_12_ce1;
input  [63:0] output_difference_12_q1;
output  [1:0] output_difference_13_address0;
output   output_difference_13_ce0;
input  [63:0] output_difference_13_q0;
output  [1:0] output_difference_13_address1;
output   output_difference_13_ce1;
input  [63:0] output_difference_13_q1;
output  [1:0] output_difference_14_address0;
output   output_difference_14_ce0;
input  [63:0] output_difference_14_q0;
output  [1:0] output_difference_14_address1;
output   output_difference_14_ce1;
input  [63:0] output_difference_14_q1;
output  [1:0] output_difference_15_address0;
output   output_difference_15_ce0;
input  [63:0] output_difference_15_q0;
output  [1:0] output_difference_15_address1;
output   output_difference_15_ce1;
input  [63:0] output_difference_15_q1;
output  [7:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [7:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [7:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [7:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [7:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [7:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [7:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [7:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [7:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [7:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [7:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [7:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [7:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [7:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [7:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [7:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
input  [11:0] idx;
output  [63:0] grp_fu_4692_p_din0;
output  [63:0] grp_fu_4692_p_din1;
input  [63:0] grp_fu_4692_p_dout0;
output   grp_fu_4692_p_ce;
output  [63:0] grp_fu_4696_p_din0;
output  [63:0] grp_fu_4696_p_din1;
input  [63:0] grp_fu_4696_p_dout0;
output   grp_fu_4696_p_ce;
output  [63:0] grp_fu_4700_p_din0;
output  [63:0] grp_fu_4700_p_din1;
input  [63:0] grp_fu_4700_p_dout0;
output   grp_fu_4700_p_ce;
output  [63:0] grp_fu_4704_p_din0;
output  [63:0] grp_fu_4704_p_din1;
input  [63:0] grp_fu_4704_p_dout0;
output   grp_fu_4704_p_ce;
output  [63:0] grp_fu_4708_p_din0;
output  [63:0] grp_fu_4708_p_din1;
input  [63:0] grp_fu_4708_p_dout0;
output   grp_fu_4708_p_ce;
output  [63:0] grp_fu_4712_p_din0;
output  [63:0] grp_fu_4712_p_din1;
input  [63:0] grp_fu_4712_p_dout0;
output   grp_fu_4712_p_ce;
output  [63:0] grp_fu_4716_p_din0;
output  [63:0] grp_fu_4716_p_din1;
input  [63:0] grp_fu_4716_p_dout0;
output   grp_fu_4716_p_ce;
output  [63:0] grp_fu_4720_p_din0;
output  [63:0] grp_fu_4720_p_din1;
input  [63:0] grp_fu_4720_p_dout0;
output   grp_fu_4720_p_ce;
output  [63:0] grp_fu_4724_p_din0;
output  [63:0] grp_fu_4724_p_din1;
input  [63:0] grp_fu_4724_p_dout0;
output   grp_fu_4724_p_ce;
output  [63:0] grp_fu_4728_p_din0;
output  [63:0] grp_fu_4728_p_din1;
input  [63:0] grp_fu_4728_p_dout0;
output   grp_fu_4728_p_ce;
output  [63:0] grp_fu_4732_p_din0;
output  [63:0] grp_fu_4732_p_din1;
input  [63:0] grp_fu_4732_p_dout0;
output   grp_fu_4732_p_ce;
output  [63:0] grp_fu_4736_p_din0;
output  [63:0] grp_fu_4736_p_din1;
input  [63:0] grp_fu_4736_p_dout0;
output   grp_fu_4736_p_ce;
output  [63:0] grp_fu_4740_p_din0;
output  [63:0] grp_fu_4740_p_din1;
input  [63:0] grp_fu_4740_p_dout0;
output   grp_fu_4740_p_ce;
output  [63:0] grp_fu_4744_p_din0;
output  [63:0] grp_fu_4744_p_din1;
input  [63:0] grp_fu_4744_p_dout0;
output   grp_fu_4744_p_ce;
output  [63:0] grp_fu_4748_p_din0;
output  [63:0] grp_fu_4748_p_din1;
input  [63:0] grp_fu_4748_p_dout0;
output   grp_fu_4748_p_ce;
output  [63:0] grp_fu_4752_p_din0;
output  [63:0] grp_fu_4752_p_din1;
input  [63:0] grp_fu_4752_p_dout0;
output   grp_fu_4752_p_ce;
output  [63:0] grp_fu_4756_p_din0;
output  [63:0] grp_fu_4756_p_din1;
input  [63:0] grp_fu_4756_p_dout0;
output   grp_fu_4756_p_ce;
output  [63:0] grp_fu_4760_p_din0;
output  [63:0] grp_fu_4760_p_din1;
input  [63:0] grp_fu_4760_p_dout0;
output   grp_fu_4760_p_ce;
output  [63:0] grp_fu_4764_p_din0;
output  [63:0] grp_fu_4764_p_din1;
input  [63:0] grp_fu_4764_p_dout0;
output   grp_fu_4764_p_ce;
output  [63:0] grp_fu_4768_p_din0;
output  [63:0] grp_fu_4768_p_din1;
input  [63:0] grp_fu_4768_p_dout0;
output   grp_fu_4768_p_ce;
output  [63:0] grp_fu_4772_p_din0;
output  [63:0] grp_fu_4772_p_din1;
input  [63:0] grp_fu_4772_p_dout0;
output   grp_fu_4772_p_ce;
output  [63:0] grp_fu_4776_p_din0;
output  [63:0] grp_fu_4776_p_din1;
input  [63:0] grp_fu_4776_p_dout0;
output   grp_fu_4776_p_ce;
output  [63:0] grp_fu_4780_p_din0;
output  [63:0] grp_fu_4780_p_din1;
input  [63:0] grp_fu_4780_p_dout0;
output   grp_fu_4780_p_ce;
output  [63:0] grp_fu_4784_p_din0;
output  [63:0] grp_fu_4784_p_din1;
input  [63:0] grp_fu_4784_p_dout0;
output   grp_fu_4784_p_ce;
output  [63:0] grp_fu_4788_p_din0;
output  [63:0] grp_fu_4788_p_din1;
input  [63:0] grp_fu_4788_p_dout0;
output   grp_fu_4788_p_ce;
output  [63:0] grp_fu_4792_p_din0;
output  [63:0] grp_fu_4792_p_din1;
input  [63:0] grp_fu_4792_p_dout0;
output   grp_fu_4792_p_ce;
output  [63:0] grp_fu_4796_p_din0;
output  [63:0] grp_fu_4796_p_din1;
input  [63:0] grp_fu_4796_p_dout0;
output   grp_fu_4796_p_ce;
output  [63:0] grp_fu_4800_p_din0;
output  [63:0] grp_fu_4800_p_din1;
input  [63:0] grp_fu_4800_p_dout0;
output   grp_fu_4800_p_ce;
output  [63:0] grp_fu_4804_p_din0;
output  [63:0] grp_fu_4804_p_din1;
input  [63:0] grp_fu_4804_p_dout0;
output   grp_fu_4804_p_ce;
output  [63:0] grp_fu_4808_p_din0;
output  [63:0] grp_fu_4808_p_din1;
input  [63:0] grp_fu_4808_p_dout0;
output   grp_fu_4808_p_ce;
output  [63:0] grp_fu_4812_p_din0;
output  [63:0] grp_fu_4812_p_din1;
input  [63:0] grp_fu_4812_p_dout0;
output   grp_fu_4812_p_ce;
output  [63:0] grp_fu_4816_p_din0;
output  [63:0] grp_fu_4816_p_din1;
input  [63:0] grp_fu_4816_p_dout0;
output   grp_fu_4816_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_1364_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_1404_p3;
reg   [3:0] select_ln113_reg_1758;
reg   [3:0] select_ln113_reg_1758_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter9_reg;
reg   [3:0] select_ln113_reg_1758_pp0_iter10_reg;
reg   [1:0] lshr_ln_reg_1765;
reg   [1:0] lshr_ln_reg_1765_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter7_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter8_reg;
reg   [1:0] lshr_ln_reg_1765_pp0_iter9_reg;
reg   [0:0] tmp_21_reg_1771;
reg   [0:0] tmp_21_reg_1771_pp0_iter1_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter2_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter3_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter4_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter5_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter6_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter7_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter8_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter9_reg;
reg   [0:0] tmp_21_reg_1771_pp0_iter10_reg;
wire   [3:0] empty_fu_1459_p1;
reg   [3:0] empty_reg_1777;
wire   [63:0] tmp_fu_1576_p35;
reg   [63:0] tmp_reg_1942;
reg   [63:0] tmp_reg_1942_pp0_iter3_reg;
reg   [63:0] output_difference_0_load_reg_1978;
reg   [63:0] output_difference_1_load_reg_2063;
reg   [63:0] output_difference_2_load_reg_2068;
reg   [63:0] output_difference_3_load_reg_2073;
reg   [63:0] output_difference_4_load_reg_2078;
reg   [63:0] output_difference_5_load_reg_2083;
reg   [63:0] output_difference_6_load_reg_2088;
reg   [63:0] output_difference_7_load_reg_2093;
reg   [63:0] output_difference_8_load_reg_2098;
reg   [63:0] output_difference_9_load_reg_2103;
reg   [63:0] output_difference_10_load_reg_2108;
reg   [63:0] output_difference_11_load_reg_2113;
reg   [63:0] output_difference_12_load_reg_2118;
reg   [63:0] output_difference_13_load_reg_2123;
reg   [63:0] output_difference_14_load_reg_2128;
reg   [63:0] output_difference_15_load_reg_2133;
reg   [63:0] output_difference_0_load_2_reg_2138;
reg   [63:0] output_difference_1_load_2_reg_2143;
reg   [63:0] output_difference_2_load_2_reg_2148;
reg   [63:0] output_difference_3_load_2_reg_2153;
reg   [63:0] output_difference_4_load_2_reg_2158;
reg   [63:0] output_difference_5_load_2_reg_2163;
reg   [63:0] output_difference_6_load_2_reg_2168;
reg   [63:0] output_difference_7_load_2_reg_2173;
reg   [63:0] output_difference_8_load_2_reg_2178;
reg   [63:0] output_difference_9_load_2_reg_2183;
reg   [63:0] output_difference_10_load_2_reg_2188;
reg   [63:0] output_difference_11_load_2_reg_2193;
reg   [63:0] output_difference_12_load_2_reg_2198;
reg   [63:0] output_difference_13_load_2_reg_2203;
reg   [63:0] output_difference_14_load_2_reg_2208;
reg   [63:0] output_difference_15_load_2_reg_2213;
reg   [63:0] mul_reg_2218;
reg   [63:0] mul_1_reg_2223;
reg   [63:0] mul_2_reg_2228;
reg   [63:0] mul_3_reg_2233;
reg   [63:0] mul_4_reg_2238;
reg   [63:0] mul_5_reg_2243;
reg   [63:0] mul_6_reg_2248;
reg   [63:0] mul_7_reg_2253;
reg   [63:0] mul_8_reg_2258;
reg   [63:0] mul_9_reg_2263;
reg   [63:0] mul_10_reg_2268;
reg   [63:0] mul_11_reg_2273;
reg   [63:0] mul_12_reg_2278;
reg   [63:0] mul_13_reg_2283;
reg   [63:0] mul_14_reg_2288;
reg   [63:0] mul_15_reg_2293;
reg   [63:0] mul_16_reg_2298;
reg   [63:0] mul_17_reg_2303;
reg   [63:0] mul_18_reg_2308;
reg   [63:0] mul_19_reg_2313;
reg   [63:0] mul_20_reg_2318;
reg   [63:0] mul_21_reg_2323;
reg   [63:0] mul_22_reg_2328;
reg   [63:0] mul_23_reg_2333;
reg   [63:0] mul_24_reg_2338;
reg   [63:0] mul_25_reg_2343;
reg   [63:0] mul_26_reg_2348;
reg   [63:0] mul_27_reg_2353;
reg   [63:0] mul_28_reg_2358;
reg   [63:0] mul_29_reg_2363;
reg   [63:0] mul_30_reg_2368;
reg   [63:0] mul_31_reg_2373;
wire   [63:0] p_cast_fu_1473_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_1493_p1;
wire   [63:0] zext_ln115_1_fu_1654_p1;
wire   [63:0] zext_ln115_fu_1680_p1;
wire   [63:0] zext_ln115_2_fu_1708_p1;
reg   [6:0] j_fu_192;
wire   [6:0] add_ln114_fu_1430_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_196;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_200;
wire   [4:0] add_ln113_fu_1370_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
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
reg    output_difference_0_ce1_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce1_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce1_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce1_local;
reg    output_difference_3_ce0_local;
reg    output_difference_4_ce1_local;
reg    output_difference_4_ce0_local;
reg    output_difference_5_ce1_local;
reg    output_difference_5_ce0_local;
reg    output_difference_6_ce1_local;
reg    output_difference_6_ce0_local;
reg    output_difference_7_ce1_local;
reg    output_difference_7_ce0_local;
reg    output_difference_8_ce1_local;
reg    output_difference_8_ce0_local;
reg    output_difference_9_ce1_local;
reg    output_difference_9_ce0_local;
reg    output_difference_10_ce1_local;
reg    output_difference_10_ce0_local;
reg    output_difference_11_ce1_local;
reg    output_difference_11_ce0_local;
reg    output_difference_12_ce1_local;
reg    output_difference_12_ce0_local;
reg    output_difference_13_ce1_local;
reg    output_difference_13_ce0_local;
reg    output_difference_14_ce1_local;
reg    output_difference_14_ce0_local;
reg    output_difference_15_ce1_local;
reg    output_difference_15_ce0_local;
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
wire   [0:0] tmp_20_fu_1382_p3;
wire   [3:0] add_ln113_1_fu_1398_p2;
wire   [6:0] select_ln112_fu_1390_p3;
wire   [11:0] zext_ln113_fu_1451_p1;
wire   [11:0] p_sum_fu_1454_p2;
wire   [7:0] tmp_s_fu_1463_p4;
wire   [63:0] tmp_fu_1576_p2;
wire   [63:0] tmp_fu_1576_p4;
wire   [63:0] tmp_fu_1576_p6;
wire   [63:0] tmp_fu_1576_p8;
wire   [63:0] tmp_fu_1576_p10;
wire   [63:0] tmp_fu_1576_p12;
wire   [63:0] tmp_fu_1576_p14;
wire   [63:0] tmp_fu_1576_p16;
wire   [63:0] tmp_fu_1576_p18;
wire   [63:0] tmp_fu_1576_p20;
wire   [63:0] tmp_fu_1576_p22;
wire   [63:0] tmp_fu_1576_p24;
wire   [63:0] tmp_fu_1576_p26;
wire   [63:0] tmp_fu_1576_p28;
wire   [63:0] tmp_fu_1576_p30;
wire   [63:0] tmp_fu_1576_p32;
wire   [63:0] tmp_fu_1576_p33;
wire   [1:0] or_ln_fu_1647_p3;
wire   [5:0] or_ln115_1_fu_1674_p3;
wire   [5:0] add_ln115_1_fu_1700_p4;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_fu_1576_p1;
wire   [3:0] tmp_fu_1576_p3;
wire   [3:0] tmp_fu_1576_p5;
wire   [3:0] tmp_fu_1576_p7;
wire   [3:0] tmp_fu_1576_p9;
wire   [3:0] tmp_fu_1576_p11;
wire   [3:0] tmp_fu_1576_p13;
wire   [3:0] tmp_fu_1576_p15;
wire  signed [3:0] tmp_fu_1576_p17;
wire  signed [3:0] tmp_fu_1576_p19;
wire  signed [3:0] tmp_fu_1576_p21;
wire  signed [3:0] tmp_fu_1576_p23;
wire  signed [3:0] tmp_fu_1576_p25;
wire  signed [3:0] tmp_fu_1576_p27;
wire  signed [3:0] tmp_fu_1576_p29;
wire  signed [3:0] tmp_fu_1576_p31;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_192 = 7'd0;
#0 i_fu_196 = 4'd0;
#0 indvar_flatten_fu_200 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U1084(.din0(tmp_fu_1576_p2),.din1(tmp_fu_1576_p4),.din2(tmp_fu_1576_p6),.din3(tmp_fu_1576_p8),.din4(tmp_fu_1576_p10),.din5(tmp_fu_1576_p12),.din6(tmp_fu_1576_p14),.din7(tmp_fu_1576_p16),.din8(tmp_fu_1576_p18),.din9(tmp_fu_1576_p20),.din10(tmp_fu_1576_p22),.din11(tmp_fu_1576_p24),.din12(tmp_fu_1576_p26),.din13(tmp_fu_1576_p28),.din14(tmp_fu_1576_p30),.din15(tmp_fu_1576_p32),.def(tmp_fu_1576_p33),.sel(empty_reg_1777),.dout(tmp_fu_1576_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
        if (((icmp_ln113_fu_1364_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_196 <= select_ln113_fu_1404_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_196 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1364_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_200 <= add_ln113_fu_1370_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_200 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1364_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_192 <= add_ln114_fu_1430_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_192 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln_reg_1765_pp0_iter2_reg <= lshr_ln_reg_1765_pp0_iter1_reg;
        lshr_ln_reg_1765_pp0_iter3_reg <= lshr_ln_reg_1765_pp0_iter2_reg;
        lshr_ln_reg_1765_pp0_iter4_reg <= lshr_ln_reg_1765_pp0_iter3_reg;
        lshr_ln_reg_1765_pp0_iter5_reg <= lshr_ln_reg_1765_pp0_iter4_reg;
        lshr_ln_reg_1765_pp0_iter6_reg <= lshr_ln_reg_1765_pp0_iter5_reg;
        lshr_ln_reg_1765_pp0_iter7_reg <= lshr_ln_reg_1765_pp0_iter6_reg;
        lshr_ln_reg_1765_pp0_iter8_reg <= lshr_ln_reg_1765_pp0_iter7_reg;
        lshr_ln_reg_1765_pp0_iter9_reg <= lshr_ln_reg_1765_pp0_iter8_reg;
        mul_10_reg_2268 <= grp_fu_4732_p_dout0;
        mul_11_reg_2273 <= grp_fu_4736_p_dout0;
        mul_12_reg_2278 <= grp_fu_4740_p_dout0;
        mul_13_reg_2283 <= grp_fu_4744_p_dout0;
        mul_14_reg_2288 <= grp_fu_4748_p_dout0;
        mul_15_reg_2293 <= grp_fu_4752_p_dout0;
        mul_16_reg_2298 <= grp_fu_4756_p_dout0;
        mul_17_reg_2303 <= grp_fu_4760_p_dout0;
        mul_18_reg_2308 <= grp_fu_4764_p_dout0;
        mul_19_reg_2313 <= grp_fu_4768_p_dout0;
        mul_1_reg_2223 <= grp_fu_4696_p_dout0;
        mul_20_reg_2318 <= grp_fu_4772_p_dout0;
        mul_21_reg_2323 <= grp_fu_4776_p_dout0;
        mul_22_reg_2328 <= grp_fu_4780_p_dout0;
        mul_23_reg_2333 <= grp_fu_4784_p_dout0;
        mul_24_reg_2338 <= grp_fu_4788_p_dout0;
        mul_25_reg_2343 <= grp_fu_4792_p_dout0;
        mul_26_reg_2348 <= grp_fu_4796_p_dout0;
        mul_27_reg_2353 <= grp_fu_4800_p_dout0;
        mul_28_reg_2358 <= grp_fu_4804_p_dout0;
        mul_29_reg_2363 <= grp_fu_4808_p_dout0;
        mul_2_reg_2228 <= grp_fu_4700_p_dout0;
        mul_30_reg_2368 <= grp_fu_4812_p_dout0;
        mul_31_reg_2373 <= grp_fu_4816_p_dout0;
        mul_3_reg_2233 <= grp_fu_4704_p_dout0;
        mul_4_reg_2238 <= grp_fu_4708_p_dout0;
        mul_5_reg_2243 <= grp_fu_4712_p_dout0;
        mul_6_reg_2248 <= grp_fu_4716_p_dout0;
        mul_7_reg_2253 <= grp_fu_4720_p_dout0;
        mul_8_reg_2258 <= grp_fu_4724_p_dout0;
        mul_9_reg_2263 <= grp_fu_4728_p_dout0;
        mul_reg_2218 <= grp_fu_4692_p_dout0;
        select_ln113_reg_1758_pp0_iter10_reg <= select_ln113_reg_1758_pp0_iter9_reg;
        select_ln113_reg_1758_pp0_iter2_reg <= select_ln113_reg_1758_pp0_iter1_reg;
        select_ln113_reg_1758_pp0_iter3_reg <= select_ln113_reg_1758_pp0_iter2_reg;
        select_ln113_reg_1758_pp0_iter4_reg <= select_ln113_reg_1758_pp0_iter3_reg;
        select_ln113_reg_1758_pp0_iter5_reg <= select_ln113_reg_1758_pp0_iter4_reg;
        select_ln113_reg_1758_pp0_iter6_reg <= select_ln113_reg_1758_pp0_iter5_reg;
        select_ln113_reg_1758_pp0_iter7_reg <= select_ln113_reg_1758_pp0_iter6_reg;
        select_ln113_reg_1758_pp0_iter8_reg <= select_ln113_reg_1758_pp0_iter7_reg;
        select_ln113_reg_1758_pp0_iter9_reg <= select_ln113_reg_1758_pp0_iter8_reg;
        tmp_21_reg_1771_pp0_iter10_reg <= tmp_21_reg_1771_pp0_iter9_reg;
        tmp_21_reg_1771_pp0_iter2_reg <= tmp_21_reg_1771_pp0_iter1_reg;
        tmp_21_reg_1771_pp0_iter3_reg <= tmp_21_reg_1771_pp0_iter2_reg;
        tmp_21_reg_1771_pp0_iter4_reg <= tmp_21_reg_1771_pp0_iter3_reg;
        tmp_21_reg_1771_pp0_iter5_reg <= tmp_21_reg_1771_pp0_iter4_reg;
        tmp_21_reg_1771_pp0_iter6_reg <= tmp_21_reg_1771_pp0_iter5_reg;
        tmp_21_reg_1771_pp0_iter7_reg <= tmp_21_reg_1771_pp0_iter6_reg;
        tmp_21_reg_1771_pp0_iter8_reg <= tmp_21_reg_1771_pp0_iter7_reg;
        tmp_21_reg_1771_pp0_iter9_reg <= tmp_21_reg_1771_pp0_iter8_reg;
        tmp_reg_1942 <= tmp_fu_1576_p35;
        tmp_reg_1942_pp0_iter3_reg <= tmp_reg_1942;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_1777 <= empty_fu_1459_p1;
        lshr_ln_reg_1765 <= {{select_ln112_fu_1390_p3[5:4]}};
        lshr_ln_reg_1765_pp0_iter1_reg <= lshr_ln_reg_1765;
        select_ln113_reg_1758 <= select_ln113_fu_1404_p3;
        select_ln113_reg_1758_pp0_iter1_reg <= select_ln113_reg_1758;
        tmp_21_reg_1771 <= select_ln112_fu_1390_p3[32'd5];
        tmp_21_reg_1771_pp0_iter1_reg <= tmp_21_reg_1771;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        output_difference_0_load_2_reg_2138 <= output_difference_0_q0;
        output_difference_10_load_2_reg_2188 <= output_difference_10_q0;
        output_difference_11_load_2_reg_2193 <= output_difference_11_q0;
        output_difference_12_load_2_reg_2198 <= output_difference_12_q0;
        output_difference_13_load_2_reg_2203 <= output_difference_13_q0;
        output_difference_14_load_2_reg_2208 <= output_difference_14_q0;
        output_difference_15_load_2_reg_2213 <= output_difference_15_q0;
        output_difference_1_load_2_reg_2143 <= output_difference_1_q0;
        output_difference_2_load_2_reg_2148 <= output_difference_2_q0;
        output_difference_3_load_2_reg_2153 <= output_difference_3_q0;
        output_difference_4_load_2_reg_2158 <= output_difference_4_q0;
        output_difference_5_load_2_reg_2163 <= output_difference_5_q0;
        output_difference_6_load_2_reg_2168 <= output_difference_6_q0;
        output_difference_7_load_2_reg_2173 <= output_difference_7_q0;
        output_difference_8_load_2_reg_2178 <= output_difference_8_q0;
        output_difference_9_load_2_reg_2183 <= output_difference_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_0_load_reg_1978 <= output_difference_0_q1;
        output_difference_10_load_reg_2108 <= output_difference_10_q1;
        output_difference_11_load_reg_2113 <= output_difference_11_q1;
        output_difference_12_load_reg_2118 <= output_difference_12_q1;
        output_difference_13_load_reg_2123 <= output_difference_13_q1;
        output_difference_14_load_reg_2128 <= output_difference_14_q1;
        output_difference_15_load_reg_2133 <= output_difference_15_q1;
        output_difference_1_load_reg_2063 <= output_difference_1_q1;
        output_difference_2_load_reg_2068 <= output_difference_2_q1;
        output_difference_3_load_reg_2073 <= output_difference_3_q1;
        output_difference_4_load_reg_2078 <= output_difference_4_q1;
        output_difference_5_load_reg_2083 <= output_difference_5_q1;
        output_difference_6_load_reg_2088 <= output_difference_6_q1;
        output_difference_7_load_reg_2093 <= output_difference_7_q1;
        output_difference_8_load_reg_2098 <= output_difference_8_q1;
        output_difference_9_load_reg_2103 <= output_difference_9_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1364_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_200;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_ce1_local = 1'b1;
    end else begin
        delta_weights1_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_we1_local = 1'b1;
    end else begin
        delta_weights1_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_ce1_local = 1'b1;
    end else begin
        delta_weights1_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_we1_local = 1'b1;
    end else begin
        delta_weights1_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_ce1_local = 1'b1;
    end else begin
        delta_weights1_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_we1_local = 1'b1;
    end else begin
        delta_weights1_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_ce1_local = 1'b1;
    end else begin
        delta_weights1_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_we1_local = 1'b1;
    end else begin
        delta_weights1_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_ce1_local = 1'b1;
    end else begin
        delta_weights1_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_we1_local = 1'b1;
    end else begin
        delta_weights1_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_ce1_local = 1'b1;
    end else begin
        delta_weights1_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_we1_local = 1'b1;
    end else begin
        delta_weights1_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_ce1_local = 1'b1;
    end else begin
        delta_weights1_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_we1_local = 1'b1;
    end else begin
        delta_weights1_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_ce1_local = 1'b1;
    end else begin
        delta_weights1_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_we1_local = 1'b1;
    end else begin
        delta_weights1_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_10_ce0_local = 1'b1;
    end else begin
        output_difference_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_10_ce1_local = 1'b1;
    end else begin
        output_difference_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_11_ce0_local = 1'b1;
    end else begin
        output_difference_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_11_ce1_local = 1'b1;
    end else begin
        output_difference_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_12_ce0_local = 1'b1;
    end else begin
        output_difference_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_12_ce1_local = 1'b1;
    end else begin
        output_difference_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_13_ce0_local = 1'b1;
    end else begin
        output_difference_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_13_ce1_local = 1'b1;
    end else begin
        output_difference_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_14_ce0_local = 1'b1;
    end else begin
        output_difference_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_14_ce1_local = 1'b1;
    end else begin
        output_difference_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_15_ce0_local = 1'b1;
    end else begin
        output_difference_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_15_ce1_local = 1'b1;
    end else begin
        output_difference_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_8_ce0_local = 1'b1;
    end else begin
        output_difference_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_8_ce1_local = 1'b1;
    end else begin
        output_difference_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_9_ce0_local = 1'b1;
    end else begin
        output_difference_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_9_ce1_local = 1'b1;
    end else begin
        output_difference_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln113_1_fu_1398_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_1370_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln114_fu_1430_p2 = (select_ln112_fu_1390_p3 + 7'd32);
assign add_ln115_1_fu_1700_p4 = {{{select_ln113_reg_1758_pp0_iter10_reg}, {tmp_21_reg_1771_pp0_iter10_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_16_reg_2298;
assign delta_weights1_0_d1 = mul_reg_2218;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_10_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_10_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_ce1 = delta_weights1_10_ce1_local;
assign delta_weights1_10_d0 = mul_26_reg_2348;
assign delta_weights1_10_d1 = mul_10_reg_2268;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_10_we1 = delta_weights1_10_we1_local;
assign delta_weights1_11_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_11_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_ce1 = delta_weights1_11_ce1_local;
assign delta_weights1_11_d0 = mul_27_reg_2353;
assign delta_weights1_11_d1 = mul_11_reg_2273;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_11_we1 = delta_weights1_11_we1_local;
assign delta_weights1_12_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_12_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_ce1 = delta_weights1_12_ce1_local;
assign delta_weights1_12_d0 = mul_28_reg_2358;
assign delta_weights1_12_d1 = mul_12_reg_2278;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_12_we1 = delta_weights1_12_we1_local;
assign delta_weights1_13_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_13_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_ce1 = delta_weights1_13_ce1_local;
assign delta_weights1_13_d0 = mul_29_reg_2363;
assign delta_weights1_13_d1 = mul_13_reg_2283;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_13_we1 = delta_weights1_13_we1_local;
assign delta_weights1_14_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_14_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_ce1 = delta_weights1_14_ce1_local;
assign delta_weights1_14_d0 = mul_30_reg_2368;
assign delta_weights1_14_d1 = mul_14_reg_2288;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_14_we1 = delta_weights1_14_we1_local;
assign delta_weights1_15_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_15_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_ce1 = delta_weights1_15_ce1_local;
assign delta_weights1_15_d0 = mul_31_reg_2373;
assign delta_weights1_15_d1 = mul_15_reg_2293;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_15_we1 = delta_weights1_15_we1_local;
assign delta_weights1_1_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_17_reg_2303;
assign delta_weights1_1_d1 = mul_1_reg_2223;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_18_reg_2308;
assign delta_weights1_2_d1 = mul_2_reg_2228;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_19_reg_2313;
assign delta_weights1_3_d1 = mul_3_reg_2233;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_20_reg_2318;
assign delta_weights1_4_d1 = mul_4_reg_2238;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_21_reg_2323;
assign delta_weights1_5_d1 = mul_5_reg_2243;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_22_reg_2328;
assign delta_weights1_6_d1 = mul_6_reg_2248;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_23_reg_2333;
assign delta_weights1_7_d1 = mul_7_reg_2253;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign delta_weights1_8_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_8_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_ce1 = delta_weights1_8_ce1_local;
assign delta_weights1_8_d0 = mul_24_reg_2338;
assign delta_weights1_8_d1 = mul_8_reg_2258;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_8_we1 = delta_weights1_8_we1_local;
assign delta_weights1_9_address0 = zext_ln115_2_fu_1708_p1;
assign delta_weights1_9_address1 = zext_ln115_fu_1680_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_ce1 = delta_weights1_9_ce1_local;
assign delta_weights1_9_d0 = mul_25_reg_2343;
assign delta_weights1_9_d1 = mul_9_reg_2263;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_9_we1 = delta_weights1_9_we1_local;
assign empty_fu_1459_p1 = p_sum_fu_1454_p2[3:0];
assign grp_fu_4692_p_ce = 1'b1;
assign grp_fu_4692_p_din0 = tmp_reg_1942;
assign grp_fu_4692_p_din1 = output_difference_0_load_reg_1978;
assign grp_fu_4696_p_ce = 1'b1;
assign grp_fu_4696_p_din0 = tmp_reg_1942;
assign grp_fu_4696_p_din1 = output_difference_1_load_reg_2063;
assign grp_fu_4700_p_ce = 1'b1;
assign grp_fu_4700_p_din0 = tmp_reg_1942;
assign grp_fu_4700_p_din1 = output_difference_2_load_reg_2068;
assign grp_fu_4704_p_ce = 1'b1;
assign grp_fu_4704_p_din0 = tmp_reg_1942;
assign grp_fu_4704_p_din1 = output_difference_3_load_reg_2073;
assign grp_fu_4708_p_ce = 1'b1;
assign grp_fu_4708_p_din0 = tmp_reg_1942;
assign grp_fu_4708_p_din1 = output_difference_4_load_reg_2078;
assign grp_fu_4712_p_ce = 1'b1;
assign grp_fu_4712_p_din0 = tmp_reg_1942;
assign grp_fu_4712_p_din1 = output_difference_5_load_reg_2083;
assign grp_fu_4716_p_ce = 1'b1;
assign grp_fu_4716_p_din0 = tmp_reg_1942;
assign grp_fu_4716_p_din1 = output_difference_6_load_reg_2088;
assign grp_fu_4720_p_ce = 1'b1;
assign grp_fu_4720_p_din0 = tmp_reg_1942;
assign grp_fu_4720_p_din1 = output_difference_7_load_reg_2093;
assign grp_fu_4724_p_ce = 1'b1;
assign grp_fu_4724_p_din0 = tmp_reg_1942;
assign grp_fu_4724_p_din1 = output_difference_8_load_reg_2098;
assign grp_fu_4728_p_ce = 1'b1;
assign grp_fu_4728_p_din0 = tmp_reg_1942;
assign grp_fu_4728_p_din1 = output_difference_9_load_reg_2103;
assign grp_fu_4732_p_ce = 1'b1;
assign grp_fu_4732_p_din0 = tmp_reg_1942;
assign grp_fu_4732_p_din1 = output_difference_10_load_reg_2108;
assign grp_fu_4736_p_ce = 1'b1;
assign grp_fu_4736_p_din0 = tmp_reg_1942;
assign grp_fu_4736_p_din1 = output_difference_11_load_reg_2113;
assign grp_fu_4740_p_ce = 1'b1;
assign grp_fu_4740_p_din0 = tmp_reg_1942;
assign grp_fu_4740_p_din1 = output_difference_12_load_reg_2118;
assign grp_fu_4744_p_ce = 1'b1;
assign grp_fu_4744_p_din0 = tmp_reg_1942;
assign grp_fu_4744_p_din1 = output_difference_13_load_reg_2123;
assign grp_fu_4748_p_ce = 1'b1;
assign grp_fu_4748_p_din0 = tmp_reg_1942;
assign grp_fu_4748_p_din1 = output_difference_14_load_reg_2128;
assign grp_fu_4752_p_ce = 1'b1;
assign grp_fu_4752_p_din0 = tmp_reg_1942;
assign grp_fu_4752_p_din1 = output_difference_15_load_reg_2133;
assign grp_fu_4756_p_ce = 1'b1;
assign grp_fu_4756_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4756_p_din1 = output_difference_0_load_2_reg_2138;
assign grp_fu_4760_p_ce = 1'b1;
assign grp_fu_4760_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4760_p_din1 = output_difference_1_load_2_reg_2143;
assign grp_fu_4764_p_ce = 1'b1;
assign grp_fu_4764_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4764_p_din1 = output_difference_2_load_2_reg_2148;
assign grp_fu_4768_p_ce = 1'b1;
assign grp_fu_4768_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4768_p_din1 = output_difference_3_load_2_reg_2153;
assign grp_fu_4772_p_ce = 1'b1;
assign grp_fu_4772_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4772_p_din1 = output_difference_4_load_2_reg_2158;
assign grp_fu_4776_p_ce = 1'b1;
assign grp_fu_4776_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4776_p_din1 = output_difference_5_load_2_reg_2163;
assign grp_fu_4780_p_ce = 1'b1;
assign grp_fu_4780_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4780_p_din1 = output_difference_6_load_2_reg_2168;
assign grp_fu_4784_p_ce = 1'b1;
assign grp_fu_4784_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4784_p_din1 = output_difference_7_load_2_reg_2173;
assign grp_fu_4788_p_ce = 1'b1;
assign grp_fu_4788_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4788_p_din1 = output_difference_8_load_2_reg_2178;
assign grp_fu_4792_p_ce = 1'b1;
assign grp_fu_4792_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4792_p_din1 = output_difference_9_load_2_reg_2183;
assign grp_fu_4796_p_ce = 1'b1;
assign grp_fu_4796_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4796_p_din1 = output_difference_10_load_2_reg_2188;
assign grp_fu_4800_p_ce = 1'b1;
assign grp_fu_4800_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4800_p_din1 = output_difference_11_load_2_reg_2193;
assign grp_fu_4804_p_ce = 1'b1;
assign grp_fu_4804_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4804_p_din1 = output_difference_12_load_2_reg_2198;
assign grp_fu_4808_p_ce = 1'b1;
assign grp_fu_4808_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4808_p_din1 = output_difference_13_load_2_reg_2203;
assign grp_fu_4812_p_ce = 1'b1;
assign grp_fu_4812_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4812_p_din1 = output_difference_14_load_2_reg_2208;
assign grp_fu_4816_p_ce = 1'b1;
assign grp_fu_4816_p_din0 = tmp_reg_1942_pp0_iter3_reg;
assign grp_fu_4816_p_din1 = output_difference_15_load_2_reg_2213;
assign icmp_ln113_fu_1364_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd26) ? 1'b1 : 1'b0);
assign or_ln115_1_fu_1674_p3 = {{select_ln113_reg_1758_pp0_iter9_reg}, {lshr_ln_reg_1765_pp0_iter9_reg}};
assign or_ln_fu_1647_p3 = {{tmp_21_reg_1771_pp0_iter1_reg}, {1'd1}};
assign output_difference_0_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_0_address1 = zext_ln112_fu_1493_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_10_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_10_address1 = zext_ln112_fu_1493_p1;
assign output_difference_10_ce0 = output_difference_10_ce0_local;
assign output_difference_10_ce1 = output_difference_10_ce1_local;
assign output_difference_11_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_11_address1 = zext_ln112_fu_1493_p1;
assign output_difference_11_ce0 = output_difference_11_ce0_local;
assign output_difference_11_ce1 = output_difference_11_ce1_local;
assign output_difference_12_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_12_address1 = zext_ln112_fu_1493_p1;
assign output_difference_12_ce0 = output_difference_12_ce0_local;
assign output_difference_12_ce1 = output_difference_12_ce1_local;
assign output_difference_13_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_13_address1 = zext_ln112_fu_1493_p1;
assign output_difference_13_ce0 = output_difference_13_ce0_local;
assign output_difference_13_ce1 = output_difference_13_ce1_local;
assign output_difference_14_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_14_address1 = zext_ln112_fu_1493_p1;
assign output_difference_14_ce0 = output_difference_14_ce0_local;
assign output_difference_14_ce1 = output_difference_14_ce1_local;
assign output_difference_15_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_15_address1 = zext_ln112_fu_1493_p1;
assign output_difference_15_ce0 = output_difference_15_ce0_local;
assign output_difference_15_ce1 = output_difference_15_ce1_local;
assign output_difference_1_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_1_address1 = zext_ln112_fu_1493_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_2_address1 = zext_ln112_fu_1493_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_3_address1 = zext_ln112_fu_1493_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_4_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_4_address1 = zext_ln112_fu_1493_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_5_address1 = zext_ln112_fu_1493_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_6_address1 = zext_ln112_fu_1493_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_7_address1 = zext_ln112_fu_1493_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign output_difference_8_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_8_address1 = zext_ln112_fu_1493_p1;
assign output_difference_8_ce0 = output_difference_8_ce0_local;
assign output_difference_8_ce1 = output_difference_8_ce1_local;
assign output_difference_9_address0 = zext_ln115_1_fu_1654_p1;
assign output_difference_9_address1 = zext_ln112_fu_1493_p1;
assign output_difference_9_ce0 = output_difference_9_ce0_local;
assign output_difference_9_ce1 = output_difference_9_ce1_local;
assign p_cast_fu_1473_p1 = tmp_s_fu_1463_p4;
assign p_sum_fu_1454_p2 = (zext_ln113_fu_1451_p1 + idx);
assign select_ln112_fu_1390_p3 = ((tmp_20_fu_1382_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_1404_p3 = ((tmp_20_fu_1382_p3[0:0] == 1'b1) ? add_ln113_1_fu_1398_p2 : ap_sig_allocacmp_i_load);
assign tmp_20_fu_1382_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_1576_p10 = training_data_4_q0;
assign tmp_fu_1576_p12 = training_data_5_q0;
assign tmp_fu_1576_p14 = training_data_6_q0;
assign tmp_fu_1576_p16 = training_data_7_q0;
assign tmp_fu_1576_p18 = training_data_8_q0;
assign tmp_fu_1576_p2 = training_data_0_q0;
assign tmp_fu_1576_p20 = training_data_9_q0;
assign tmp_fu_1576_p22 = training_data_10_q0;
assign tmp_fu_1576_p24 = training_data_11_q0;
assign tmp_fu_1576_p26 = training_data_12_q0;
assign tmp_fu_1576_p28 = training_data_13_q0;
assign tmp_fu_1576_p30 = training_data_14_q0;
assign tmp_fu_1576_p32 = training_data_15_q0;
assign tmp_fu_1576_p33 = 'bx;
assign tmp_fu_1576_p4 = training_data_1_q0;
assign tmp_fu_1576_p6 = training_data_2_q0;
assign tmp_fu_1576_p8 = training_data_3_q0;
assign tmp_s_fu_1463_p4 = {{p_sum_fu_1454_p2[11:4]}};
assign training_data_0_address0 = p_cast_fu_1473_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_1473_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_1473_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_1473_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_1473_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_1473_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_1473_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_1_address0 = p_cast_fu_1473_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_1473_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_1473_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_1473_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_1473_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_1473_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_1473_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_1473_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_1473_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign zext_ln112_fu_1493_p1 = lshr_ln_reg_1765;
assign zext_ln113_fu_1451_p1 = select_ln113_reg_1758;
assign zext_ln115_1_fu_1654_p1 = or_ln_fu_1647_p3;
assign zext_ln115_2_fu_1708_p1 = add_ln115_1_fu_1700_p4;
assign zext_ln115_fu_1680_p1 = or_ln115_1_fu_1674_p3;
endmodule 