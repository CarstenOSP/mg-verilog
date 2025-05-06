
module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,output_difference_8_address0,output_difference_8_ce0,output_difference_8_q0,output_difference_8_address1,output_difference_8_ce1,output_difference_8_q1,output_difference_9_address0,output_difference_9_ce0,output_difference_9_q0,output_difference_9_address1,output_difference_9_ce1,output_difference_9_q1,output_difference_10_address0,output_difference_10_ce0,output_difference_10_q0,output_difference_10_address1,output_difference_10_ce1,output_difference_10_q1,output_difference_11_address0,output_difference_11_ce0,output_difference_11_q0,output_difference_11_address1,output_difference_11_ce1,output_difference_11_q1,output_difference_12_address0,output_difference_12_ce0,output_difference_12_q0,output_difference_12_address1,output_difference_12_ce1,output_difference_12_q1,output_difference_13_address0,output_difference_13_ce0,output_difference_13_q0,output_difference_13_address1,output_difference_13_ce1,output_difference_13_q1,output_difference_14_address0,output_difference_14_ce0,output_difference_14_q0,output_difference_14_address1,output_difference_14_ce1,output_difference_14_q1,output_difference_15_address0,output_difference_15_ce0,output_difference_15_q0,output_difference_15_address1,output_difference_15_ce1,output_difference_15_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,idx,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1140;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1145;
reg   [63:0] output_difference_2_load_reg_1150;
reg   [63:0] output_difference_3_load_reg_1155;
reg   [63:0] output_difference_4_load_reg_1160;
reg   [63:0] output_difference_5_load_reg_1165;
reg   [63:0] output_difference_6_load_reg_1170;
reg   [63:0] output_difference_7_load_reg_1175;
reg   [63:0] output_difference_8_load_reg_1180;
reg   [63:0] output_difference_9_load_reg_1185;
reg   [63:0] output_difference_10_load_reg_1190;
reg   [63:0] output_difference_11_load_reg_1195;
reg   [63:0] output_difference_12_load_reg_1200;
reg   [63:0] output_difference_13_load_reg_1205;
reg   [63:0] output_difference_14_load_reg_1210;
reg   [63:0] output_difference_15_load_reg_1215;
reg   [63:0] output_difference_0_load_4_reg_1220;
reg   [63:0] output_difference_1_load_4_reg_1225;
reg   [63:0] output_difference_2_load_4_reg_1230;
reg   [63:0] output_difference_3_load_4_reg_1235;
reg   [63:0] output_difference_4_load_4_reg_1240;
reg   [63:0] output_difference_5_load_4_reg_1245;
reg   [63:0] output_difference_6_load_4_reg_1250;
reg   [63:0] output_difference_7_load_4_reg_1255;
reg   [63:0] output_difference_8_load_4_reg_1260;
reg   [63:0] output_difference_9_load_4_reg_1265;
reg   [63:0] output_difference_10_load_4_reg_1270;
reg   [63:0] output_difference_11_load_4_reg_1275;
reg   [63:0] output_difference_12_load_4_reg_1280;
reg   [63:0] output_difference_13_load_4_reg_1285;
reg   [63:0] output_difference_14_load_4_reg_1290;
reg   [63:0] output_difference_15_load_4_reg_1295;
reg   [63:0] output_difference_0_load_5_reg_1460;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_5_reg_1465;
reg   [63:0] output_difference_2_load_5_reg_1470;
reg   [63:0] output_difference_3_load_5_reg_1475;
reg   [63:0] output_difference_4_load_5_reg_1480;
reg   [63:0] output_difference_5_load_5_reg_1485;
reg   [63:0] output_difference_6_load_5_reg_1490;
reg   [63:0] output_difference_7_load_5_reg_1495;
reg   [63:0] output_difference_8_load_5_reg_1500;
reg   [63:0] output_difference_9_load_5_reg_1505;
reg   [63:0] output_difference_10_load_5_reg_1510;
reg   [63:0] output_difference_11_load_5_reg_1515;
reg   [63:0] output_difference_12_load_5_reg_1520;
reg   [63:0] output_difference_13_load_5_reg_1525;
reg   [63:0] output_difference_14_load_5_reg_1530;
reg   [63:0] output_difference_15_load_5_reg_1535;
reg   [63:0] output_difference_0_load_6_reg_1540;
reg   [63:0] output_difference_1_load_6_reg_1545;
reg   [63:0] output_difference_2_load_6_reg_1550;
reg   [63:0] output_difference_3_load_6_reg_1555;
reg   [63:0] output_difference_4_load_6_reg_1560;
reg   [63:0] output_difference_5_load_6_reg_1565;
reg   [63:0] output_difference_6_load_6_reg_1570;
reg   [63:0] output_difference_7_load_6_reg_1575;
reg   [63:0] output_difference_8_load_6_reg_1580;
reg   [63:0] output_difference_9_load_6_reg_1585;
reg   [63:0] output_difference_10_load_6_reg_1590;
reg   [63:0] output_difference_11_load_6_reg_1595;
reg   [63:0] output_difference_12_load_6_reg_1600;
reg   [63:0] output_difference_13_load_6_reg_1605;
reg   [63:0] output_difference_14_load_6_reg_1610;
reg   [63:0] output_difference_15_load_6_reg_1615;
wire    ap_CS_fsm_state4;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_ready;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d1;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d0;
wire   [5:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_ce0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    output_difference_0_ce1_local;
reg   [1:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [1:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [1:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [1:0] output_difference_1_address0_local;
reg    output_difference_2_ce1_local;
reg   [1:0] output_difference_2_address1_local;
reg    output_difference_2_ce0_local;
reg   [1:0] output_difference_2_address0_local;
reg    output_difference_3_ce1_local;
reg   [1:0] output_difference_3_address1_local;
reg    output_difference_3_ce0_local;
reg   [1:0] output_difference_3_address0_local;
reg    output_difference_4_ce1_local;
reg   [1:0] output_difference_4_address1_local;
reg    output_difference_4_ce0_local;
reg   [1:0] output_difference_4_address0_local;
reg    output_difference_5_ce1_local;
reg   [1:0] output_difference_5_address1_local;
reg    output_difference_5_ce0_local;
reg   [1:0] output_difference_5_address0_local;
reg    output_difference_6_ce1_local;
reg   [1:0] output_difference_6_address1_local;
reg    output_difference_6_ce0_local;
reg   [1:0] output_difference_6_address0_local;
reg    output_difference_7_ce1_local;
reg   [1:0] output_difference_7_address1_local;
reg    output_difference_7_ce0_local;
reg   [1:0] output_difference_7_address0_local;
reg    output_difference_8_ce1_local;
reg   [1:0] output_difference_8_address1_local;
reg    output_difference_8_ce0_local;
reg   [1:0] output_difference_8_address0_local;
reg    output_difference_9_ce1_local;
reg   [1:0] output_difference_9_address1_local;
reg    output_difference_9_ce0_local;
reg   [1:0] output_difference_9_address0_local;
reg    output_difference_10_ce1_local;
reg   [1:0] output_difference_10_address1_local;
reg    output_difference_10_ce0_local;
reg   [1:0] output_difference_10_address0_local;
reg    output_difference_11_ce1_local;
reg   [1:0] output_difference_11_address1_local;
reg    output_difference_11_ce0_local;
reg   [1:0] output_difference_11_address0_local;
reg    output_difference_12_ce1_local;
reg   [1:0] output_difference_12_address1_local;
reg    output_difference_12_ce0_local;
reg   [1:0] output_difference_12_address0_local;
reg    output_difference_13_ce1_local;
reg   [1:0] output_difference_13_address1_local;
reg    output_difference_13_ce0_local;
reg   [1:0] output_difference_13_address0_local;
reg    output_difference_14_ce1_local;
reg   [1:0] output_difference_14_address1_local;
reg    output_difference_14_ce0_local;
reg   [1:0] output_difference_14_address0_local;
reg    output_difference_15_ce1_local;
reg   [1:0] output_difference_15_address1_local;
reg    output_difference_15_ce0_local;
reg   [1:0] output_difference_15_address0_local;
reg    grp_fu_1625_ce;
reg    grp_fu_1629_ce;
reg    grp_fu_1633_ce;
reg    grp_fu_1637_ce;
reg    grp_fu_1641_ce;
reg    grp_fu_1645_ce;
reg    grp_fu_1649_ce;
reg    grp_fu_1653_ce;
reg    grp_fu_1657_ce;
reg    grp_fu_1661_ce;
reg    grp_fu_1665_ce;
reg    grp_fu_1669_ce;
reg    grp_fu_1673_ce;
reg    grp_fu_1677_ce;
reg    grp_fu_1681_ce;
reg    grp_fu_1685_ce;
reg    grp_fu_1689_ce;
reg    grp_fu_1693_ce;
reg    grp_fu_1697_ce;
reg    grp_fu_1701_ce;
reg    grp_fu_1705_ce;
reg    grp_fu_1709_ce;
reg    grp_fu_1713_ce;
reg    grp_fu_1717_ce;
reg    grp_fu_1721_ce;
reg    grp_fu_1725_ce;
reg    grp_fu_1729_ce;
reg    grp_fu_1733_ce;
reg    grp_fu_1737_ce;
reg    grp_fu_1741_ce;
reg    grp_fu_1745_ce;
reg    grp_fu_1749_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_ready),.delta_weights1_15_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address0),.delta_weights1_15_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce0),.delta_weights1_15_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we0),.delta_weights1_15_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d0),.delta_weights1_15_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address1),.delta_weights1_15_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce1),.delta_weights1_15_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we1),.delta_weights1_15_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d1),.delta_weights1_14_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address0),.delta_weights1_14_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce0),.delta_weights1_14_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we0),.delta_weights1_14_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d0),.delta_weights1_14_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address1),.delta_weights1_14_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce1),.delta_weights1_14_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we1),.delta_weights1_14_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d1),.delta_weights1_13_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address0),.delta_weights1_13_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce0),.delta_weights1_13_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we0),.delta_weights1_13_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d0),.delta_weights1_13_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address1),.delta_weights1_13_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce1),.delta_weights1_13_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we1),.delta_weights1_13_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d1),.delta_weights1_12_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address0),.delta_weights1_12_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce0),.delta_weights1_12_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we0),.delta_weights1_12_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d0),.delta_weights1_12_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address1),.delta_weights1_12_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce1),.delta_weights1_12_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we1),.delta_weights1_12_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d1),.delta_weights1_11_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address0),.delta_weights1_11_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce0),.delta_weights1_11_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we0),.delta_weights1_11_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d0),.delta_weights1_11_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address1),.delta_weights1_11_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce1),.delta_weights1_11_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we1),.delta_weights1_11_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d1),.delta_weights1_10_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address0),.delta_weights1_10_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce0),.delta_weights1_10_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we0),.delta_weights1_10_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d0),.delta_weights1_10_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address1),.delta_weights1_10_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce1),.delta_weights1_10_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we1),.delta_weights1_10_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d1),.delta_weights1_9_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address0),.delta_weights1_9_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce0),.delta_weights1_9_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we0),.delta_weights1_9_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d0),.delta_weights1_9_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address1),.delta_weights1_9_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce1),.delta_weights1_9_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we1),.delta_weights1_9_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d1),.delta_weights1_8_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address0),.delta_weights1_8_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce0),.delta_weights1_8_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we0),.delta_weights1_8_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d0),.delta_weights1_8_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address1),.delta_weights1_8_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce1),.delta_weights1_8_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we1),.delta_weights1_8_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d1),.delta_weights1_7_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address0),.delta_weights1_7_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce0),.delta_weights1_7_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we0),.delta_weights1_7_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d0),.delta_weights1_7_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address1),.delta_weights1_7_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce1),.delta_weights1_7_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we1),.delta_weights1_7_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d1),.delta_weights1_6_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address0),.delta_weights1_6_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce0),.delta_weights1_6_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we0),.delta_weights1_6_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d0),.delta_weights1_6_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address1),.delta_weights1_6_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce1),.delta_weights1_6_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we1),.delta_weights1_6_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d1),.delta_weights1_5_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address0),.delta_weights1_5_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce0),.delta_weights1_5_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we0),.delta_weights1_5_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d0),.delta_weights1_5_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address1),.delta_weights1_5_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce1),.delta_weights1_5_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we1),.delta_weights1_5_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d1),.delta_weights1_4_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address0),.delta_weights1_4_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce0),.delta_weights1_4_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we0),.delta_weights1_4_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d0),.delta_weights1_4_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address1),.delta_weights1_4_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce1),.delta_weights1_4_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we1),.delta_weights1_4_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d1),.delta_weights1_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address0),.delta_weights1_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce0),.delta_weights1_3_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we0),.delta_weights1_3_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d0),.delta_weights1_3_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address1),.delta_weights1_3_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce1),.delta_weights1_3_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we1),.delta_weights1_3_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d1),.delta_weights1_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address0),.delta_weights1_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce0),.delta_weights1_2_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we0),.delta_weights1_2_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d0),.delta_weights1_2_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address1),.delta_weights1_2_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce1),.delta_weights1_2_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we1),.delta_weights1_2_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.training_data_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_address0),.training_data_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_ce0),.training_data_2_q0(training_data_2_q0),.training_data_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_address0),.training_data_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_ce0),.training_data_3_q0(training_data_3_q0),.training_data_4_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_address0),.training_data_4_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_ce0),.training_data_4_q0(training_data_4_q0),.training_data_5_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_address0),.training_data_5_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_ce0),.training_data_5_q0(training_data_5_q0),.training_data_6_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_address0),.training_data_6_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_ce0),.training_data_6_q0(training_data_6_q0),.training_data_7_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_address0),.training_data_7_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_ce0),.training_data_7_q0(training_data_7_q0),.training_data_8_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_address0),.training_data_8_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_ce0),.training_data_8_q0(training_data_8_q0),.training_data_9_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_address0),.training_data_9_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_ce0),.training_data_9_q0(training_data_9_q0),.training_data_10_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_address0),.training_data_10_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_ce0),.training_data_10_q0(training_data_10_q0),.training_data_11_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_address0),.training_data_11_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_ce0),.training_data_11_q0(training_data_11_q0),.training_data_12_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_address0),.training_data_12_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_ce0),.training_data_12_q0(training_data_12_q0),.training_data_13_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_address0),.training_data_13_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_ce0),.training_data_13_q0(training_data_13_q0),.training_data_14_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_address0),.training_data_14_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_ce0),.training_data_14_q0(training_data_14_q0),.training_data_15_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_address0),.training_data_15_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_ce0),.training_data_15_q0(training_data_15_q0),.output_difference_0_load(output_difference_0_load_reg_1140),.output_difference_1_load(output_difference_1_load_reg_1145),.output_difference_2_load(output_difference_2_load_reg_1150),.output_difference_3_load(output_difference_3_load_reg_1155),.output_difference_4_load(output_difference_4_load_reg_1160),.output_difference_5_load(output_difference_5_load_reg_1165),.output_difference_6_load(output_difference_6_load_reg_1170),.output_difference_7_load(output_difference_7_load_reg_1175),.output_difference_8_load(output_difference_8_load_reg_1180),.output_difference_9_load(output_difference_9_load_reg_1185),.output_difference_10_load(output_difference_10_load_reg_1190),.output_difference_11_load(output_difference_11_load_reg_1195),.output_difference_12_load(output_difference_12_load_reg_1200),.output_difference_13_load(output_difference_13_load_reg_1205),.output_difference_14_load(output_difference_14_load_reg_1210),.output_difference_15_load(output_difference_15_load_reg_1215),.output_difference_0_load_4(output_difference_0_load_4_reg_1220),.output_difference_1_load_4(output_difference_1_load_4_reg_1225),.output_difference_2_load_4(output_difference_2_load_4_reg_1230),.output_difference_3_load_4(output_difference_3_load_4_reg_1235),.output_difference_4_load_4(output_difference_4_load_4_reg_1240),.output_difference_5_load_4(output_difference_5_load_4_reg_1245),.output_difference_6_load_4(output_difference_6_load_4_reg_1250),.output_difference_7_load_4(output_difference_7_load_4_reg_1255),.output_difference_8_load_4(output_difference_8_load_4_reg_1260),.output_difference_9_load_4(output_difference_9_load_4_reg_1265),.output_difference_10_load_4(output_difference_10_load_4_reg_1270),.output_difference_11_load_4(output_difference_11_load_4_reg_1275),.output_difference_12_load_4(output_difference_12_load_4_reg_1280),.output_difference_13_load_4(output_difference_13_load_4_reg_1285),.output_difference_14_load_4(output_difference_14_load_4_reg_1290),.output_difference_15_load_4(output_difference_15_load_4_reg_1295),.output_difference_0_load_5(output_difference_0_load_5_reg_1460),.output_difference_1_load_5(output_difference_1_load_5_reg_1465),.output_difference_2_load_5(output_difference_2_load_5_reg_1470),.output_difference_3_load_5(output_difference_3_load_5_reg_1475),.output_difference_4_load_5(output_difference_4_load_5_reg_1480),.output_difference_5_load_5(output_difference_5_load_5_reg_1485),.output_difference_6_load_5(output_difference_6_load_5_reg_1490),.output_difference_7_load_5(output_difference_7_load_5_reg_1495),.output_difference_8_load_5(output_difference_8_load_5_reg_1500),.output_difference_9_load_5(output_difference_9_load_5_reg_1505),.output_difference_10_load_5(output_difference_10_load_5_reg_1510),.output_difference_11_load_5(output_difference_11_load_5_reg_1515),.output_difference_12_load_5(output_difference_12_load_5_reg_1520),.output_difference_13_load_5(output_difference_13_load_5_reg_1525),.output_difference_14_load_5(output_difference_14_load_5_reg_1530),.output_difference_15_load_5(output_difference_15_load_5_reg_1535),.output_difference_0_load_6(output_difference_0_load_6_reg_1540),.output_difference_1_load_6(output_difference_1_load_6_reg_1545),.output_difference_2_load_6(output_difference_2_load_6_reg_1550),.output_difference_3_load_6(output_difference_3_load_6_reg_1555),.output_difference_4_load_6(output_difference_4_load_6_reg_1560),.output_difference_5_load_6(output_difference_5_load_6_reg_1565),.output_difference_6_load_6(output_difference_6_load_6_reg_1570),.output_difference_7_load_6(output_difference_7_load_6_reg_1575),.output_difference_8_load_6(output_difference_8_load_6_reg_1580),.output_difference_9_load_6(output_difference_9_load_6_reg_1585),.output_difference_10_load_6(output_difference_10_load_6_reg_1590),.output_difference_11_load_6(output_difference_11_load_6_reg_1595),.output_difference_12_load_6(output_difference_12_load_6_reg_1600),.output_difference_13_load_6(output_difference_13_load_6_reg_1605),.output_difference_14_load_6(output_difference_14_load_6_reg_1610),.output_difference_15_load_6(output_difference_15_load_6_reg_1615),.grp_fu_1625_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din0),.grp_fu_1625_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din1),.grp_fu_1625_p_dout0(grp_fu_4692_p_dout0),.grp_fu_1625_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_ce),.grp_fu_1629_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din0),.grp_fu_1629_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din1),.grp_fu_1629_p_dout0(grp_fu_4696_p_dout0),.grp_fu_1629_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_ce),.grp_fu_1633_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din0),.grp_fu_1633_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din1),.grp_fu_1633_p_dout0(grp_fu_4700_p_dout0),.grp_fu_1633_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_ce),.grp_fu_1637_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din0),.grp_fu_1637_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din1),.grp_fu_1637_p_dout0(grp_fu_4704_p_dout0),.grp_fu_1637_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_ce),.grp_fu_1641_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din0),.grp_fu_1641_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din1),.grp_fu_1641_p_dout0(grp_fu_4708_p_dout0),.grp_fu_1641_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_ce),.grp_fu_1645_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din0),.grp_fu_1645_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din1),.grp_fu_1645_p_dout0(grp_fu_4712_p_dout0),.grp_fu_1645_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_ce),.grp_fu_1649_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din0),.grp_fu_1649_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din1),.grp_fu_1649_p_dout0(grp_fu_4716_p_dout0),.grp_fu_1649_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_ce),.grp_fu_1653_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din0),.grp_fu_1653_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din1),.grp_fu_1653_p_dout0(grp_fu_4720_p_dout0),.grp_fu_1653_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_ce),.grp_fu_1657_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din0),.grp_fu_1657_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din1),.grp_fu_1657_p_dout0(grp_fu_4724_p_dout0),.grp_fu_1657_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_ce),.grp_fu_1661_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din0),.grp_fu_1661_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din1),.grp_fu_1661_p_dout0(grp_fu_4728_p_dout0),.grp_fu_1661_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_ce),.grp_fu_1665_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din0),.grp_fu_1665_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din1),.grp_fu_1665_p_dout0(grp_fu_4732_p_dout0),.grp_fu_1665_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_ce),.grp_fu_1669_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din0),.grp_fu_1669_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din1),.grp_fu_1669_p_dout0(grp_fu_4736_p_dout0),.grp_fu_1669_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_ce),.grp_fu_1673_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din0),.grp_fu_1673_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din1),.grp_fu_1673_p_dout0(grp_fu_4740_p_dout0),.grp_fu_1673_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_ce),.grp_fu_1677_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din0),.grp_fu_1677_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din1),.grp_fu_1677_p_dout0(grp_fu_4744_p_dout0),.grp_fu_1677_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_ce),.grp_fu_1681_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din0),.grp_fu_1681_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din1),.grp_fu_1681_p_dout0(grp_fu_4748_p_dout0),.grp_fu_1681_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_ce),.grp_fu_1685_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din0),.grp_fu_1685_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din1),.grp_fu_1685_p_dout0(grp_fu_4752_p_dout0),.grp_fu_1685_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_ce),.grp_fu_1689_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din0),.grp_fu_1689_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din1),.grp_fu_1689_p_dout0(grp_fu_4756_p_dout0),.grp_fu_1689_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_ce),.grp_fu_1693_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din0),.grp_fu_1693_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din1),.grp_fu_1693_p_dout0(grp_fu_4760_p_dout0),.grp_fu_1693_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_ce),.grp_fu_1697_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din0),.grp_fu_1697_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din1),.grp_fu_1697_p_dout0(grp_fu_4764_p_dout0),.grp_fu_1697_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_ce),.grp_fu_1701_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din0),.grp_fu_1701_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din1),.grp_fu_1701_p_dout0(grp_fu_4768_p_dout0),.grp_fu_1701_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_ce),.grp_fu_1705_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din0),.grp_fu_1705_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din1),.grp_fu_1705_p_dout0(grp_fu_4772_p_dout0),.grp_fu_1705_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_ce),.grp_fu_1709_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din0),.grp_fu_1709_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din1),.grp_fu_1709_p_dout0(grp_fu_4776_p_dout0),.grp_fu_1709_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_ce),.grp_fu_1713_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din0),.grp_fu_1713_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din1),.grp_fu_1713_p_dout0(grp_fu_4780_p_dout0),.grp_fu_1713_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_ce),.grp_fu_1717_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din0),.grp_fu_1717_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din1),.grp_fu_1717_p_dout0(grp_fu_4784_p_dout0),.grp_fu_1717_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_ce),.grp_fu_1721_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din0),.grp_fu_1721_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din1),.grp_fu_1721_p_dout0(grp_fu_4788_p_dout0),.grp_fu_1721_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_ce),.grp_fu_1725_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din0),.grp_fu_1725_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din1),.grp_fu_1725_p_dout0(grp_fu_4792_p_dout0),.grp_fu_1725_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_ce),.grp_fu_1729_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din0),.grp_fu_1729_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din1),.grp_fu_1729_p_dout0(grp_fu_4796_p_dout0),.grp_fu_1729_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_ce),.grp_fu_1733_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din0),.grp_fu_1733_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din1),.grp_fu_1733_p_dout0(grp_fu_4800_p_dout0),.grp_fu_1733_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_ce),.grp_fu_1737_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din0),.grp_fu_1737_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din1),.grp_fu_1737_p_dout0(grp_fu_4804_p_dout0),.grp_fu_1737_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_ce),.grp_fu_1741_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din0),.grp_fu_1741_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din1),.grp_fu_1741_p_dout0(grp_fu_4808_p_dout0),.grp_fu_1741_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_ce),.grp_fu_1745_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din0),.grp_fu_1745_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din1),.grp_fu_1745_p_dout0(grp_fu_4812_p_dout0),.grp_fu_1745_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_ce),.grp_fu_1749_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din0),.grp_fu_1749_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din1),.grp_fu_1749_p_dout0(grp_fu_4816_p_dout0),.grp_fu_1749_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_4_reg_1220 <= output_difference_0_q0;
        output_difference_0_load_reg_1140 <= output_difference_0_q1;
        output_difference_10_load_4_reg_1270 <= output_difference_10_q0;
        output_difference_10_load_reg_1190 <= output_difference_10_q1;
        output_difference_11_load_4_reg_1275 <= output_difference_11_q0;
        output_difference_11_load_reg_1195 <= output_difference_11_q1;
        output_difference_12_load_4_reg_1280 <= output_difference_12_q0;
        output_difference_12_load_reg_1200 <= output_difference_12_q1;
        output_difference_13_load_4_reg_1285 <= output_difference_13_q0;
        output_difference_13_load_reg_1205 <= output_difference_13_q1;
        output_difference_14_load_4_reg_1290 <= output_difference_14_q0;
        output_difference_14_load_reg_1210 <= output_difference_14_q1;
        output_difference_15_load_4_reg_1295 <= output_difference_15_q0;
        output_difference_15_load_reg_1215 <= output_difference_15_q1;
        output_difference_1_load_4_reg_1225 <= output_difference_1_q0;
        output_difference_1_load_reg_1145 <= output_difference_1_q1;
        output_difference_2_load_4_reg_1230 <= output_difference_2_q0;
        output_difference_2_load_reg_1150 <= output_difference_2_q1;
        output_difference_3_load_4_reg_1235 <= output_difference_3_q0;
        output_difference_3_load_reg_1155 <= output_difference_3_q1;
        output_difference_4_load_4_reg_1240 <= output_difference_4_q0;
        output_difference_4_load_reg_1160 <= output_difference_4_q1;
        output_difference_5_load_4_reg_1245 <= output_difference_5_q0;
        output_difference_5_load_reg_1165 <= output_difference_5_q1;
        output_difference_6_load_4_reg_1250 <= output_difference_6_q0;
        output_difference_6_load_reg_1170 <= output_difference_6_q1;
        output_difference_7_load_4_reg_1255 <= output_difference_7_q0;
        output_difference_7_load_reg_1175 <= output_difference_7_q1;
        output_difference_8_load_4_reg_1260 <= output_difference_8_q0;
        output_difference_8_load_reg_1180 <= output_difference_8_q1;
        output_difference_9_load_4_reg_1265 <= output_difference_9_q0;
        output_difference_9_load_reg_1185 <= output_difference_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_5_reg_1460 <= output_difference_0_q1;
        output_difference_0_load_6_reg_1540 <= output_difference_0_q0;
        output_difference_10_load_5_reg_1510 <= output_difference_10_q1;
        output_difference_10_load_6_reg_1590 <= output_difference_10_q0;
        output_difference_11_load_5_reg_1515 <= output_difference_11_q1;
        output_difference_11_load_6_reg_1595 <= output_difference_11_q0;
        output_difference_12_load_5_reg_1520 <= output_difference_12_q1;
        output_difference_12_load_6_reg_1600 <= output_difference_12_q0;
        output_difference_13_load_5_reg_1525 <= output_difference_13_q1;
        output_difference_13_load_6_reg_1605 <= output_difference_13_q0;
        output_difference_14_load_5_reg_1530 <= output_difference_14_q1;
        output_difference_14_load_6_reg_1610 <= output_difference_14_q0;
        output_difference_15_load_5_reg_1535 <= output_difference_15_q1;
        output_difference_15_load_6_reg_1615 <= output_difference_15_q0;
        output_difference_1_load_5_reg_1465 <= output_difference_1_q1;
        output_difference_1_load_6_reg_1545 <= output_difference_1_q0;
        output_difference_2_load_5_reg_1470 <= output_difference_2_q1;
        output_difference_2_load_6_reg_1550 <= output_difference_2_q0;
        output_difference_3_load_5_reg_1475 <= output_difference_3_q1;
        output_difference_3_load_6_reg_1555 <= output_difference_3_q0;
        output_difference_4_load_5_reg_1480 <= output_difference_4_q1;
        output_difference_4_load_6_reg_1560 <= output_difference_4_q0;
        output_difference_5_load_5_reg_1485 <= output_difference_5_q1;
        output_difference_5_load_6_reg_1565 <= output_difference_5_q0;
        output_difference_6_load_5_reg_1490 <= output_difference_6_q1;
        output_difference_6_load_6_reg_1570 <= output_difference_6_q0;
        output_difference_7_load_5_reg_1495 <= output_difference_7_q1;
        output_difference_7_load_6_reg_1575 <= output_difference_7_q0;
        output_difference_8_load_5_reg_1500 <= output_difference_8_q1;
        output_difference_8_load_6_reg_1580 <= output_difference_8_q0;
        output_difference_9_load_5_reg_1505 <= output_difference_9_q1;
        output_difference_9_load_6_reg_1585 <= output_difference_9_q0;
    end
end
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1625_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_ce;
    end else begin
        grp_fu_1625_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1629_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_ce;
    end else begin
        grp_fu_1629_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1633_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_ce;
    end else begin
        grp_fu_1633_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1637_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_ce;
    end else begin
        grp_fu_1637_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1641_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_ce;
    end else begin
        grp_fu_1641_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1645_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_ce;
    end else begin
        grp_fu_1645_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1649_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_ce;
    end else begin
        grp_fu_1649_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1653_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_ce;
    end else begin
        grp_fu_1653_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1657_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_ce;
    end else begin
        grp_fu_1657_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1661_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_ce;
    end else begin
        grp_fu_1661_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1665_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_ce;
    end else begin
        grp_fu_1665_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1669_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_ce;
    end else begin
        grp_fu_1669_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1673_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_ce;
    end else begin
        grp_fu_1673_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1677_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_ce;
    end else begin
        grp_fu_1677_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1681_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_ce;
    end else begin
        grp_fu_1681_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1685_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_ce;
    end else begin
        grp_fu_1685_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1689_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_ce;
    end else begin
        grp_fu_1689_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1693_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_ce;
    end else begin
        grp_fu_1693_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1697_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_ce;
    end else begin
        grp_fu_1697_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1701_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_ce;
    end else begin
        grp_fu_1701_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1705_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_ce;
    end else begin
        grp_fu_1705_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1709_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_ce;
    end else begin
        grp_fu_1709_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1713_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_ce;
    end else begin
        grp_fu_1713_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1717_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_ce;
    end else begin
        grp_fu_1717_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1721_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_ce;
    end else begin
        grp_fu_1721_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1725_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_ce;
    end else begin
        grp_fu_1725_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1729_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_ce;
    end else begin
        grp_fu_1729_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1733_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_ce;
    end else begin
        grp_fu_1733_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1737_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_ce;
    end else begin
        grp_fu_1737_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1741_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_ce;
    end else begin
        grp_fu_1741_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1745_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_ce;
    end else begin
        grp_fu_1745_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1749_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_ce;
    end else begin
        grp_fu_1749_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address0_local = 64'd1;
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address1_local = 64'd0;
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_10_address0_local = 64'd1;
    end else begin
        output_difference_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_10_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_10_address1_local = 64'd0;
    end else begin
        output_difference_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_10_ce0_local = 1'b1;
    end else begin
        output_difference_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_10_ce1_local = 1'b1;
    end else begin
        output_difference_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_11_address0_local = 64'd1;
    end else begin
        output_difference_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_11_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_11_address1_local = 64'd0;
    end else begin
        output_difference_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_11_ce0_local = 1'b1;
    end else begin
        output_difference_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_11_ce1_local = 1'b1;
    end else begin
        output_difference_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_12_address0_local = 64'd1;
    end else begin
        output_difference_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_12_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_12_address1_local = 64'd0;
    end else begin
        output_difference_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_12_ce0_local = 1'b1;
    end else begin
        output_difference_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_12_ce1_local = 1'b1;
    end else begin
        output_difference_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_13_address0_local = 64'd1;
    end else begin
        output_difference_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_13_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_13_address1_local = 64'd0;
    end else begin
        output_difference_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_13_ce0_local = 1'b1;
    end else begin
        output_difference_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_13_ce1_local = 1'b1;
    end else begin
        output_difference_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_14_address0_local = 64'd1;
    end else begin
        output_difference_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_14_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_14_address1_local = 64'd0;
    end else begin
        output_difference_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_14_ce0_local = 1'b1;
    end else begin
        output_difference_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_14_ce1_local = 1'b1;
    end else begin
        output_difference_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_15_address0_local = 64'd1;
    end else begin
        output_difference_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_15_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_15_address1_local = 64'd0;
    end else begin
        output_difference_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_15_ce0_local = 1'b1;
    end else begin
        output_difference_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_15_ce1_local = 1'b1;
    end else begin
        output_difference_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address0_local = 64'd1;
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address1_local = 64'd0;
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_2_address0_local = 64'd1;
    end else begin
        output_difference_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_2_address1_local = 64'd0;
    end else begin
        output_difference_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_3_address0_local = 64'd1;
    end else begin
        output_difference_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_3_address1_local = 64'd0;
    end else begin
        output_difference_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_4_address0_local = 64'd1;
    end else begin
        output_difference_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_4_address1_local = 64'd0;
    end else begin
        output_difference_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_5_address0_local = 64'd1;
    end else begin
        output_difference_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_5_address1_local = 64'd0;
    end else begin
        output_difference_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_6_address0_local = 64'd1;
    end else begin
        output_difference_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_6_address1_local = 64'd0;
    end else begin
        output_difference_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_7_address0_local = 64'd1;
    end else begin
        output_difference_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_7_address1_local = 64'd0;
    end else begin
        output_difference_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_8_address0_local = 64'd1;
    end else begin
        output_difference_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_8_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_8_address1_local = 64'd0;
    end else begin
        output_difference_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_8_ce0_local = 1'b1;
    end else begin
        output_difference_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_8_ce1_local = 1'b1;
    end else begin
        output_difference_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_9_address0_local = 64'd1;
    end else begin
        output_difference_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_9_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_9_address1_local = 64'd0;
    end else begin
        output_difference_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_9_ce0_local = 1'b1;
    end else begin
        output_difference_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_9_ce1_local = 1'b1;
    end else begin
        output_difference_9_ce1_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_0_we1;
assign delta_weights1_10_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address0;
assign delta_weights1_10_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_address1;
assign delta_weights1_10_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce0;
assign delta_weights1_10_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_ce1;
assign delta_weights1_10_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d0;
assign delta_weights1_10_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_d1;
assign delta_weights1_10_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we0;
assign delta_weights1_10_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_10_we1;
assign delta_weights1_11_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address0;
assign delta_weights1_11_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_address1;
assign delta_weights1_11_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce0;
assign delta_weights1_11_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_ce1;
assign delta_weights1_11_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d0;
assign delta_weights1_11_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_d1;
assign delta_weights1_11_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we0;
assign delta_weights1_11_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_11_we1;
assign delta_weights1_12_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address0;
assign delta_weights1_12_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_address1;
assign delta_weights1_12_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce0;
assign delta_weights1_12_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_ce1;
assign delta_weights1_12_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d0;
assign delta_weights1_12_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_d1;
assign delta_weights1_12_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we0;
assign delta_weights1_12_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_12_we1;
assign delta_weights1_13_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address0;
assign delta_weights1_13_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_address1;
assign delta_weights1_13_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce0;
assign delta_weights1_13_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_ce1;
assign delta_weights1_13_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d0;
assign delta_weights1_13_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_d1;
assign delta_weights1_13_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we0;
assign delta_weights1_13_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_13_we1;
assign delta_weights1_14_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address0;
assign delta_weights1_14_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_address1;
assign delta_weights1_14_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce0;
assign delta_weights1_14_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_ce1;
assign delta_weights1_14_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d0;
assign delta_weights1_14_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_d1;
assign delta_weights1_14_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we0;
assign delta_weights1_14_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_14_we1;
assign delta_weights1_15_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address0;
assign delta_weights1_15_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_address1;
assign delta_weights1_15_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce0;
assign delta_weights1_15_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_ce1;
assign delta_weights1_15_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d0;
assign delta_weights1_15_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_d1;
assign delta_weights1_15_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we0;
assign delta_weights1_15_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_15_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_1_we1;
assign delta_weights1_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address0;
assign delta_weights1_2_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_address1;
assign delta_weights1_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce0;
assign delta_weights1_2_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_ce1;
assign delta_weights1_2_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d0;
assign delta_weights1_2_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_d1;
assign delta_weights1_2_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we0;
assign delta_weights1_2_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_2_we1;
assign delta_weights1_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address0;
assign delta_weights1_3_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_address1;
assign delta_weights1_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce0;
assign delta_weights1_3_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_ce1;
assign delta_weights1_3_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d0;
assign delta_weights1_3_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_d1;
assign delta_weights1_3_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we0;
assign delta_weights1_3_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_3_we1;
assign delta_weights1_4_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address0;
assign delta_weights1_4_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_address1;
assign delta_weights1_4_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce0;
assign delta_weights1_4_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_ce1;
assign delta_weights1_4_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d0;
assign delta_weights1_4_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_d1;
assign delta_weights1_4_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we0;
assign delta_weights1_4_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_4_we1;
assign delta_weights1_5_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address0;
assign delta_weights1_5_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_address1;
assign delta_weights1_5_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce0;
assign delta_weights1_5_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_ce1;
assign delta_weights1_5_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d0;
assign delta_weights1_5_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_d1;
assign delta_weights1_5_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we0;
assign delta_weights1_5_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_5_we1;
assign delta_weights1_6_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address0;
assign delta_weights1_6_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_address1;
assign delta_weights1_6_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce0;
assign delta_weights1_6_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_ce1;
assign delta_weights1_6_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d0;
assign delta_weights1_6_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_d1;
assign delta_weights1_6_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we0;
assign delta_weights1_6_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_6_we1;
assign delta_weights1_7_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address0;
assign delta_weights1_7_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_address1;
assign delta_weights1_7_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce0;
assign delta_weights1_7_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_ce1;
assign delta_weights1_7_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d0;
assign delta_weights1_7_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_d1;
assign delta_weights1_7_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we0;
assign delta_weights1_7_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_7_we1;
assign delta_weights1_8_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address0;
assign delta_weights1_8_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_address1;
assign delta_weights1_8_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce0;
assign delta_weights1_8_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_ce1;
assign delta_weights1_8_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d0;
assign delta_weights1_8_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_d1;
assign delta_weights1_8_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we0;
assign delta_weights1_8_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_8_we1;
assign delta_weights1_9_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address0;
assign delta_weights1_9_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_address1;
assign delta_weights1_9_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce0;
assign delta_weights1_9_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_ce1;
assign delta_weights1_9_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d0;
assign delta_weights1_9_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_d1;
assign delta_weights1_9_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we0;
assign delta_weights1_9_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_delta_weights1_9_we1;
assign grp_fu_4692_p_ce = grp_fu_1625_ce;
assign grp_fu_4692_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din0;
assign grp_fu_4692_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1625_p_din1;
assign grp_fu_4696_p_ce = grp_fu_1629_ce;
assign grp_fu_4696_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din0;
assign grp_fu_4696_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1629_p_din1;
assign grp_fu_4700_p_ce = grp_fu_1633_ce;
assign grp_fu_4700_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din0;
assign grp_fu_4700_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1633_p_din1;
assign grp_fu_4704_p_ce = grp_fu_1637_ce;
assign grp_fu_4704_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din0;
assign grp_fu_4704_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1637_p_din1;
assign grp_fu_4708_p_ce = grp_fu_1641_ce;
assign grp_fu_4708_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din0;
assign grp_fu_4708_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1641_p_din1;
assign grp_fu_4712_p_ce = grp_fu_1645_ce;
assign grp_fu_4712_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din0;
assign grp_fu_4712_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1645_p_din1;
assign grp_fu_4716_p_ce = grp_fu_1649_ce;
assign grp_fu_4716_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din0;
assign grp_fu_4716_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1649_p_din1;
assign grp_fu_4720_p_ce = grp_fu_1653_ce;
assign grp_fu_4720_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din0;
assign grp_fu_4720_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1653_p_din1;
assign grp_fu_4724_p_ce = grp_fu_1657_ce;
assign grp_fu_4724_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din0;
assign grp_fu_4724_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1657_p_din1;
assign grp_fu_4728_p_ce = grp_fu_1661_ce;
assign grp_fu_4728_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din0;
assign grp_fu_4728_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1661_p_din1;
assign grp_fu_4732_p_ce = grp_fu_1665_ce;
assign grp_fu_4732_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din0;
assign grp_fu_4732_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1665_p_din1;
assign grp_fu_4736_p_ce = grp_fu_1669_ce;
assign grp_fu_4736_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din0;
assign grp_fu_4736_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1669_p_din1;
assign grp_fu_4740_p_ce = grp_fu_1673_ce;
assign grp_fu_4740_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din0;
assign grp_fu_4740_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1673_p_din1;
assign grp_fu_4744_p_ce = grp_fu_1677_ce;
assign grp_fu_4744_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din0;
assign grp_fu_4744_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1677_p_din1;
assign grp_fu_4748_p_ce = grp_fu_1681_ce;
assign grp_fu_4748_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din0;
assign grp_fu_4748_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1681_p_din1;
assign grp_fu_4752_p_ce = grp_fu_1685_ce;
assign grp_fu_4752_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din0;
assign grp_fu_4752_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1685_p_din1;
assign grp_fu_4756_p_ce = grp_fu_1689_ce;
assign grp_fu_4756_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din0;
assign grp_fu_4756_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1689_p_din1;
assign grp_fu_4760_p_ce = grp_fu_1693_ce;
assign grp_fu_4760_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din0;
assign grp_fu_4760_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1693_p_din1;
assign grp_fu_4764_p_ce = grp_fu_1697_ce;
assign grp_fu_4764_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din0;
assign grp_fu_4764_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1697_p_din1;
assign grp_fu_4768_p_ce = grp_fu_1701_ce;
assign grp_fu_4768_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din0;
assign grp_fu_4768_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1701_p_din1;
assign grp_fu_4772_p_ce = grp_fu_1705_ce;
assign grp_fu_4772_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din0;
assign grp_fu_4772_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1705_p_din1;
assign grp_fu_4776_p_ce = grp_fu_1709_ce;
assign grp_fu_4776_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din0;
assign grp_fu_4776_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1709_p_din1;
assign grp_fu_4780_p_ce = grp_fu_1713_ce;
assign grp_fu_4780_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din0;
assign grp_fu_4780_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1713_p_din1;
assign grp_fu_4784_p_ce = grp_fu_1717_ce;
assign grp_fu_4784_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din0;
assign grp_fu_4784_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1717_p_din1;
assign grp_fu_4788_p_ce = grp_fu_1721_ce;
assign grp_fu_4788_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din0;
assign grp_fu_4788_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1721_p_din1;
assign grp_fu_4792_p_ce = grp_fu_1725_ce;
assign grp_fu_4792_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din0;
assign grp_fu_4792_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1725_p_din1;
assign grp_fu_4796_p_ce = grp_fu_1729_ce;
assign grp_fu_4796_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din0;
assign grp_fu_4796_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1729_p_din1;
assign grp_fu_4800_p_ce = grp_fu_1733_ce;
assign grp_fu_4800_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din0;
assign grp_fu_4800_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1733_p_din1;
assign grp_fu_4804_p_ce = grp_fu_1737_ce;
assign grp_fu_4804_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din0;
assign grp_fu_4804_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1737_p_din1;
assign grp_fu_4808_p_ce = grp_fu_1741_ce;
assign grp_fu_4808_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din0;
assign grp_fu_4808_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1741_p_din1;
assign grp_fu_4812_p_ce = grp_fu_1745_ce;
assign grp_fu_4812_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din0;
assign grp_fu_4812_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1745_p_din1;
assign grp_fu_4816_p_ce = grp_fu_1749_ce;
assign grp_fu_4816_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din0;
assign grp_fu_4816_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_grp_fu_1749_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_ap_start_reg;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_10_address0 = output_difference_10_address0_local;
assign output_difference_10_address1 = output_difference_10_address1_local;
assign output_difference_10_ce0 = output_difference_10_ce0_local;
assign output_difference_10_ce1 = output_difference_10_ce1_local;
assign output_difference_11_address0 = output_difference_11_address0_local;
assign output_difference_11_address1 = output_difference_11_address1_local;
assign output_difference_11_ce0 = output_difference_11_ce0_local;
assign output_difference_11_ce1 = output_difference_11_ce1_local;
assign output_difference_12_address0 = output_difference_12_address0_local;
assign output_difference_12_address1 = output_difference_12_address1_local;
assign output_difference_12_ce0 = output_difference_12_ce0_local;
assign output_difference_12_ce1 = output_difference_12_ce1_local;
assign output_difference_13_address0 = output_difference_13_address0_local;
assign output_difference_13_address1 = output_difference_13_address1_local;
assign output_difference_13_ce0 = output_difference_13_ce0_local;
assign output_difference_13_ce1 = output_difference_13_ce1_local;
assign output_difference_14_address0 = output_difference_14_address0_local;
assign output_difference_14_address1 = output_difference_14_address1_local;
assign output_difference_14_ce0 = output_difference_14_ce0_local;
assign output_difference_14_ce1 = output_difference_14_ce1_local;
assign output_difference_15_address0 = output_difference_15_address0_local;
assign output_difference_15_address1 = output_difference_15_address1_local;
assign output_difference_15_ce0 = output_difference_15_ce0_local;
assign output_difference_15_ce1 = output_difference_15_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = output_difference_2_address0_local;
assign output_difference_2_address1 = output_difference_2_address1_local;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = output_difference_3_address0_local;
assign output_difference_3_address1 = output_difference_3_address1_local;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_4_address0 = output_difference_4_address0_local;
assign output_difference_4_address1 = output_difference_4_address1_local;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = output_difference_5_address0_local;
assign output_difference_5_address1 = output_difference_5_address1_local;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = output_difference_6_address0_local;
assign output_difference_6_address1 = output_difference_6_address1_local;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = output_difference_7_address0_local;
assign output_difference_7_address1 = output_difference_7_address1_local;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign output_difference_8_address0 = output_difference_8_address0_local;
assign output_difference_8_address1 = output_difference_8_address1_local;
assign output_difference_8_ce0 = output_difference_8_ce0_local;
assign output_difference_8_ce1 = output_difference_8_ce1_local;
assign output_difference_9_address0 = output_difference_9_address0_local;
assign output_difference_9_address1 = output_difference_9_address1_local;
assign output_difference_9_ce0 = output_difference_9_ce0_local;
assign output_difference_9_ce1 = output_difference_9_ce1_local;
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_0_ce0;
assign training_data_10_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_address0;
assign training_data_10_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_10_ce0;
assign training_data_11_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_address0;
assign training_data_11_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_11_ce0;
assign training_data_12_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_address0;
assign training_data_12_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_12_ce0;
assign training_data_13_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_address0;
assign training_data_13_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_13_ce0;
assign training_data_14_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_address0;
assign training_data_14_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_14_ce0;
assign training_data_15_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_address0;
assign training_data_15_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_15_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_1_ce0;
assign training_data_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_address0;
assign training_data_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_2_ce0;
assign training_data_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_address0;
assign training_data_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_3_ce0;
assign training_data_4_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_address0;
assign training_data_4_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_4_ce0;
assign training_data_5_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_address0;
assign training_data_5_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_5_ce0;
assign training_data_6_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_address0;
assign training_data_6_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_6_ce0;
assign training_data_7_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_address0;
assign training_data_7_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_7_ce0;
assign training_data_8_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_address0;
assign training_data_8_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_8_ce0;
assign training_data_9_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_address0;
assign training_data_9_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_846_training_data_9_ce0;
endmodule 
