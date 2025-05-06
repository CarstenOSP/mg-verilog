
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,output_difference_8_address0,output_difference_8_ce0,output_difference_8_q0,output_difference_8_address1,output_difference_8_ce1,output_difference_8_q1,output_difference_9_address0,output_difference_9_ce0,output_difference_9_q0,output_difference_9_address1,output_difference_9_ce1,output_difference_9_q1,output_difference_10_address0,output_difference_10_ce0,output_difference_10_q0,output_difference_10_address1,output_difference_10_ce1,output_difference_10_q1,output_difference_11_address0,output_difference_11_ce0,output_difference_11_q0,output_difference_11_address1,output_difference_11_ce1,output_difference_11_q1,output_difference_12_address0,output_difference_12_ce0,output_difference_12_q0,output_difference_12_address1,output_difference_12_ce1,output_difference_12_q1,output_difference_13_address0,output_difference_13_ce0,output_difference_13_q0,output_difference_13_address1,output_difference_13_ce1,output_difference_13_q1,output_difference_14_address0,output_difference_14_ce0,output_difference_14_q0,output_difference_14_address1,output_difference_14_ce1,output_difference_14_q1,output_difference_15_address0,output_difference_15_ce0,output_difference_15_q0,output_difference_15_address1,output_difference_15_ce1,output_difference_15_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [7:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [7:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [7:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [7:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [7:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [7:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [7:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [7:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [7:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [7:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [7:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [7:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [7:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [7:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [7:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [7:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [7:0] delta_weights2_8_address1;
output   delta_weights2_8_ce1;
output   delta_weights2_8_we1;
output  [63:0] delta_weights2_8_d1;
output  [7:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [7:0] delta_weights2_9_address1;
output   delta_weights2_9_ce1;
output   delta_weights2_9_we1;
output  [63:0] delta_weights2_9_d1;
output  [7:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [7:0] delta_weights2_10_address1;
output   delta_weights2_10_ce1;
output   delta_weights2_10_we1;
output  [63:0] delta_weights2_10_d1;
output  [7:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [7:0] delta_weights2_11_address1;
output   delta_weights2_11_ce1;
output   delta_weights2_11_we1;
output  [63:0] delta_weights2_11_d1;
output  [7:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [7:0] delta_weights2_12_address1;
output   delta_weights2_12_ce1;
output   delta_weights2_12_we1;
output  [63:0] delta_weights2_12_d1;
output  [7:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [7:0] delta_weights2_13_address1;
output   delta_weights2_13_ce1;
output   delta_weights2_13_we1;
output  [63:0] delta_weights2_13_d1;
output  [7:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [7:0] delta_weights2_14_address1;
output   delta_weights2_14_ce1;
output   delta_weights2_14_we1;
output  [63:0] delta_weights2_14_d1;
output  [7:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [7:0] delta_weights2_15_address1;
output   delta_weights2_15_ce1;
output   delta_weights2_15_we1;
output  [63:0] delta_weights2_15_d1;
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
output  [1:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [1:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [1:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [1:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [1:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [1:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [1:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [1:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [1:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [1:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [1:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [1:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [1:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [1:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [1:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [1:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1150;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1155;
reg   [63:0] output_difference_2_load_reg_1160;
reg   [63:0] output_difference_3_load_reg_1165;
reg   [63:0] output_difference_4_load_reg_1170;
reg   [63:0] output_difference_5_load_reg_1175;
reg   [63:0] output_difference_6_load_reg_1180;
reg   [63:0] output_difference_7_load_reg_1185;
reg   [63:0] output_difference_8_load_reg_1190;
reg   [63:0] output_difference_9_load_reg_1195;
reg   [63:0] output_difference_10_load_reg_1200;
reg   [63:0] output_difference_11_load_reg_1205;
reg   [63:0] output_difference_12_load_reg_1210;
reg   [63:0] output_difference_13_load_reg_1215;
reg   [63:0] output_difference_14_load_reg_1220;
reg   [63:0] output_difference_15_load_reg_1225;
reg   [63:0] output_difference_0_load_1_reg_1230;
reg   [63:0] output_difference_1_load_1_reg_1235;
reg   [63:0] output_difference_2_load_1_reg_1240;
reg   [63:0] output_difference_3_load_1_reg_1245;
reg   [63:0] output_difference_4_load_1_reg_1250;
reg   [63:0] output_difference_5_load_1_reg_1255;
reg   [63:0] output_difference_6_load_1_reg_1260;
reg   [63:0] output_difference_7_load_1_reg_1265;
reg   [63:0] output_difference_8_load_1_reg_1270;
reg   [63:0] output_difference_9_load_1_reg_1275;
reg   [63:0] output_difference_10_load_1_reg_1280;
reg   [63:0] output_difference_11_load_1_reg_1285;
reg   [63:0] output_difference_12_load_1_reg_1290;
reg   [63:0] output_difference_13_load_1_reg_1295;
reg   [63:0] output_difference_14_load_1_reg_1300;
reg   [63:0] output_difference_15_load_1_reg_1305;
reg   [63:0] output_difference_0_load_2_reg_1470;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_2_reg_1475;
reg   [63:0] output_difference_2_load_2_reg_1480;
reg   [63:0] output_difference_3_load_2_reg_1485;
reg   [63:0] output_difference_4_load_2_reg_1490;
reg   [63:0] output_difference_5_load_2_reg_1495;
reg   [63:0] output_difference_6_load_2_reg_1500;
reg   [63:0] output_difference_7_load_2_reg_1505;
reg   [63:0] output_difference_8_load_2_reg_1510;
reg   [63:0] output_difference_9_load_2_reg_1515;
reg   [63:0] output_difference_10_load_2_reg_1520;
reg   [63:0] output_difference_11_load_2_reg_1525;
reg   [63:0] output_difference_12_load_2_reg_1530;
reg   [63:0] output_difference_13_load_2_reg_1535;
reg   [63:0] output_difference_14_load_2_reg_1540;
reg   [63:0] output_difference_15_load_2_reg_1545;
reg   [63:0] output_difference_0_load_3_reg_1550;
reg   [63:0] output_difference_1_load_3_reg_1555;
reg   [63:0] output_difference_2_load_3_reg_1560;
reg   [63:0] output_difference_3_load_3_reg_1565;
reg   [63:0] output_difference_4_load_3_reg_1570;
reg   [63:0] output_difference_5_load_3_reg_1575;
reg   [63:0] output_difference_6_load_3_reg_1580;
reg   [63:0] output_difference_7_load_3_reg_1585;
reg   [63:0] output_difference_8_load_3_reg_1590;
reg   [63:0] output_difference_9_load_3_reg_1595;
reg   [63:0] output_difference_10_load_3_reg_1600;
reg   [63:0] output_difference_11_load_3_reg_1605;
reg   [63:0] output_difference_12_load_3_reg_1610;
reg   [63:0] output_difference_13_load_3_reg_1615;
reg   [63:0] output_difference_14_load_3_reg_1620;
reg   [63:0] output_difference_15_load_3_reg_1625;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_ready;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d1;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d0;
wire   [7:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d1;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_ce0;
wire   [1:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg;
wire    ap_CS_fsm_state4;
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
reg    grp_fu_1630_ce;
reg    grp_fu_1634_ce;
reg    grp_fu_1638_ce;
reg    grp_fu_1642_ce;
reg    grp_fu_1646_ce;
reg    grp_fu_1650_ce;
reg    grp_fu_1654_ce;
reg    grp_fu_1658_ce;
reg    grp_fu_1662_ce;
reg    grp_fu_1666_ce;
reg    grp_fu_1670_ce;
reg    grp_fu_1674_ce;
reg    grp_fu_1678_ce;
reg    grp_fu_1682_ce;
reg    grp_fu_1686_ce;
reg    grp_fu_1690_ce;
reg    grp_fu_1694_ce;
reg    grp_fu_1698_ce;
reg    grp_fu_1702_ce;
reg    grp_fu_1706_ce;
reg    grp_fu_1710_ce;
reg    grp_fu_1714_ce;
reg    grp_fu_1718_ce;
reg    grp_fu_1722_ce;
reg    grp_fu_1726_ce;
reg    grp_fu_1730_ce;
reg    grp_fu_1734_ce;
reg    grp_fu_1738_ce;
reg    grp_fu_1742_ce;
reg    grp_fu_1746_ce;
reg    grp_fu_1750_ce;
reg    grp_fu_1754_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_ready),.delta_weights2_15_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address0),.delta_weights2_15_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce0),.delta_weights2_15_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we0),.delta_weights2_15_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d0),.delta_weights2_15_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address1),.delta_weights2_15_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce1),.delta_weights2_15_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we1),.delta_weights2_15_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d1),.delta_weights2_14_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address0),.delta_weights2_14_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce0),.delta_weights2_14_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we0),.delta_weights2_14_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d0),.delta_weights2_14_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address1),.delta_weights2_14_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce1),.delta_weights2_14_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we1),.delta_weights2_14_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d1),.delta_weights2_13_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address0),.delta_weights2_13_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce0),.delta_weights2_13_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we0),.delta_weights2_13_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d0),.delta_weights2_13_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address1),.delta_weights2_13_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce1),.delta_weights2_13_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we1),.delta_weights2_13_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d1),.delta_weights2_12_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address0),.delta_weights2_12_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce0),.delta_weights2_12_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we0),.delta_weights2_12_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d0),.delta_weights2_12_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address1),.delta_weights2_12_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce1),.delta_weights2_12_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we1),.delta_weights2_12_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d1),.delta_weights2_11_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address0),.delta_weights2_11_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce0),.delta_weights2_11_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we0),.delta_weights2_11_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d0),.delta_weights2_11_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address1),.delta_weights2_11_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce1),.delta_weights2_11_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we1),.delta_weights2_11_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d1),.delta_weights2_10_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address0),.delta_weights2_10_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce0),.delta_weights2_10_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we0),.delta_weights2_10_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d0),.delta_weights2_10_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address1),.delta_weights2_10_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce1),.delta_weights2_10_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we1),.delta_weights2_10_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d1),.delta_weights2_9_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address0),.delta_weights2_9_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce0),.delta_weights2_9_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we0),.delta_weights2_9_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d0),.delta_weights2_9_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address1),.delta_weights2_9_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce1),.delta_weights2_9_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we1),.delta_weights2_9_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d1),.delta_weights2_8_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address0),.delta_weights2_8_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce0),.delta_weights2_8_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we0),.delta_weights2_8_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d0),.delta_weights2_8_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address1),.delta_weights2_8_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce1),.delta_weights2_8_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we1),.delta_weights2_8_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d1),.delta_weights2_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address0),.delta_weights2_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce0),.delta_weights2_7_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we0),.delta_weights2_7_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d0),.delta_weights2_7_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address1),.delta_weights2_7_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce1),.delta_weights2_7_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we1),.delta_weights2_7_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d1),.delta_weights2_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address0),.delta_weights2_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce0),.delta_weights2_6_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we0),.delta_weights2_6_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d0),.delta_weights2_6_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address1),.delta_weights2_6_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce1),.delta_weights2_6_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we1),.delta_weights2_6_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d1),.delta_weights2_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address0),.delta_weights2_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce0),.delta_weights2_5_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we0),.delta_weights2_5_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d0),.delta_weights2_5_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address1),.delta_weights2_5_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce1),.delta_weights2_5_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we1),.delta_weights2_5_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d1),.delta_weights2_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address0),.delta_weights2_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce0),.delta_weights2_4_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we0),.delta_weights2_4_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d0),.delta_weights2_4_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address1),.delta_weights2_4_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce1),.delta_weights2_4_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we1),.delta_weights2_4_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d1),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.last_activations_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_address0),.last_activations_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_ce0),.last_activations_2_q0(last_activations_2_q0),.last_activations_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_address0),.last_activations_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_ce0),.last_activations_3_q0(last_activations_3_q0),.last_activations_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_address0),.last_activations_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_ce0),.last_activations_4_q0(last_activations_4_q0),.last_activations_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_address0),.last_activations_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_ce0),.last_activations_5_q0(last_activations_5_q0),.last_activations_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_address0),.last_activations_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_ce0),.last_activations_6_q0(last_activations_6_q0),.last_activations_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_address0),.last_activations_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_ce0),.last_activations_7_q0(last_activations_7_q0),.last_activations_8_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_address0),.last_activations_8_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_ce0),.last_activations_8_q0(last_activations_8_q0),.last_activations_9_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_address0),.last_activations_9_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_ce0),.last_activations_9_q0(last_activations_9_q0),.last_activations_10_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_address0),.last_activations_10_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_ce0),.last_activations_10_q0(last_activations_10_q0),.last_activations_11_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_address0),.last_activations_11_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_ce0),.last_activations_11_q0(last_activations_11_q0),.last_activations_12_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_address0),.last_activations_12_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_ce0),.last_activations_12_q0(last_activations_12_q0),.last_activations_13_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_address0),.last_activations_13_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_ce0),.last_activations_13_q0(last_activations_13_q0),.last_activations_14_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_address0),.last_activations_14_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_ce0),.last_activations_14_q0(last_activations_14_q0),.last_activations_15_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_address0),.last_activations_15_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_ce0),.last_activations_15_q0(last_activations_15_q0),.output_difference_0_load(output_difference_0_load_reg_1150),.output_difference_1_load(output_difference_1_load_reg_1155),.output_difference_2_load(output_difference_2_load_reg_1160),.output_difference_3_load(output_difference_3_load_reg_1165),.output_difference_4_load(output_difference_4_load_reg_1170),.output_difference_5_load(output_difference_5_load_reg_1175),.output_difference_6_load(output_difference_6_load_reg_1180),.output_difference_7_load(output_difference_7_load_reg_1185),.output_difference_8_load(output_difference_8_load_reg_1190),.output_difference_9_load(output_difference_9_load_reg_1195),.output_difference_10_load(output_difference_10_load_reg_1200),.output_difference_11_load(output_difference_11_load_reg_1205),.output_difference_12_load(output_difference_12_load_reg_1210),.output_difference_13_load(output_difference_13_load_reg_1215),.output_difference_14_load(output_difference_14_load_reg_1220),.output_difference_15_load(output_difference_15_load_reg_1225),.output_difference_0_load_1(output_difference_0_load_1_reg_1230),.output_difference_1_load_1(output_difference_1_load_1_reg_1235),.output_difference_2_load_1(output_difference_2_load_1_reg_1240),.output_difference_3_load_1(output_difference_3_load_1_reg_1245),.output_difference_4_load_1(output_difference_4_load_1_reg_1250),.output_difference_5_load_1(output_difference_5_load_1_reg_1255),.output_difference_6_load_1(output_difference_6_load_1_reg_1260),.output_difference_7_load_1(output_difference_7_load_1_reg_1265),.output_difference_8_load_1(output_difference_8_load_1_reg_1270),.output_difference_9_load_1(output_difference_9_load_1_reg_1275),.output_difference_10_load_1(output_difference_10_load_1_reg_1280),.output_difference_11_load_1(output_difference_11_load_1_reg_1285),.output_difference_12_load_1(output_difference_12_load_1_reg_1290),.output_difference_13_load_1(output_difference_13_load_1_reg_1295),.output_difference_14_load_1(output_difference_14_load_1_reg_1300),.output_difference_15_load_1(output_difference_15_load_1_reg_1305),.output_difference_0_load_2(output_difference_0_load_2_reg_1470),.output_difference_1_load_2(output_difference_1_load_2_reg_1475),.output_difference_2_load_2(output_difference_2_load_2_reg_1480),.output_difference_3_load_2(output_difference_3_load_2_reg_1485),.output_difference_4_load_2(output_difference_4_load_2_reg_1490),.output_difference_5_load_2(output_difference_5_load_2_reg_1495),.output_difference_6_load_2(output_difference_6_load_2_reg_1500),.output_difference_7_load_2(output_difference_7_load_2_reg_1505),.output_difference_8_load_2(output_difference_8_load_2_reg_1510),.output_difference_9_load_2(output_difference_9_load_2_reg_1515),.output_difference_10_load_2(output_difference_10_load_2_reg_1520),.output_difference_11_load_2(output_difference_11_load_2_reg_1525),.output_difference_12_load_2(output_difference_12_load_2_reg_1530),.output_difference_13_load_2(output_difference_13_load_2_reg_1535),.output_difference_14_load_2(output_difference_14_load_2_reg_1540),.output_difference_15_load_2(output_difference_15_load_2_reg_1545),.output_difference_0_load_3(output_difference_0_load_3_reg_1550),.output_difference_1_load_3(output_difference_1_load_3_reg_1555),.output_difference_2_load_3(output_difference_2_load_3_reg_1560),.output_difference_3_load_3(output_difference_3_load_3_reg_1565),.output_difference_4_load_3(output_difference_4_load_3_reg_1570),.output_difference_5_load_3(output_difference_5_load_3_reg_1575),.output_difference_6_load_3(output_difference_6_load_3_reg_1580),.output_difference_7_load_3(output_difference_7_load_3_reg_1585),.output_difference_8_load_3(output_difference_8_load_3_reg_1590),.output_difference_9_load_3(output_difference_9_load_3_reg_1595),.output_difference_10_load_3(output_difference_10_load_3_reg_1600),.output_difference_11_load_3(output_difference_11_load_3_reg_1605),.output_difference_12_load_3(output_difference_12_load_3_reg_1610),.output_difference_13_load_3(output_difference_13_load_3_reg_1615),.output_difference_14_load_3(output_difference_14_load_3_reg_1620),.output_difference_15_load_3(output_difference_15_load_3_reg_1625),.grp_fu_1630_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din1),.grp_fu_1630_p_dout0(grp_fu_4692_p_dout0),.grp_fu_1630_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_ce),.grp_fu_1634_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din0),.grp_fu_1634_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din1),.grp_fu_1634_p_dout0(grp_fu_4696_p_dout0),.grp_fu_1634_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_ce),.grp_fu_1638_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din0),.grp_fu_1638_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din1),.grp_fu_1638_p_dout0(grp_fu_4700_p_dout0),.grp_fu_1638_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_ce),.grp_fu_1642_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din0),.grp_fu_1642_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din1),.grp_fu_1642_p_dout0(grp_fu_4704_p_dout0),.grp_fu_1642_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_ce),.grp_fu_1646_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din0),.grp_fu_1646_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din1),.grp_fu_1646_p_dout0(grp_fu_4708_p_dout0),.grp_fu_1646_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_ce),.grp_fu_1650_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din0),.grp_fu_1650_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din1),.grp_fu_1650_p_dout0(grp_fu_4712_p_dout0),.grp_fu_1650_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_ce),.grp_fu_1654_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din0),.grp_fu_1654_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din1),.grp_fu_1654_p_dout0(grp_fu_4716_p_dout0),.grp_fu_1654_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_ce),.grp_fu_1658_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din0),.grp_fu_1658_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din1),.grp_fu_1658_p_dout0(grp_fu_4720_p_dout0),.grp_fu_1658_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_ce),.grp_fu_1662_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din0),.grp_fu_1662_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din1),.grp_fu_1662_p_dout0(grp_fu_4724_p_dout0),.grp_fu_1662_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_ce),.grp_fu_1666_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din0),.grp_fu_1666_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din1),.grp_fu_1666_p_dout0(grp_fu_4728_p_dout0),.grp_fu_1666_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_ce),.grp_fu_1670_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din0),.grp_fu_1670_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din1),.grp_fu_1670_p_dout0(grp_fu_4732_p_dout0),.grp_fu_1670_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_ce),.grp_fu_1674_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din0),.grp_fu_1674_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din1),.grp_fu_1674_p_dout0(grp_fu_4736_p_dout0),.grp_fu_1674_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_ce),.grp_fu_1678_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din0),.grp_fu_1678_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din1),.grp_fu_1678_p_dout0(grp_fu_4740_p_dout0),.grp_fu_1678_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_ce),.grp_fu_1682_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din0),.grp_fu_1682_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din1),.grp_fu_1682_p_dout0(grp_fu_4744_p_dout0),.grp_fu_1682_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_ce),.grp_fu_1686_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din0),.grp_fu_1686_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din1),.grp_fu_1686_p_dout0(grp_fu_4748_p_dout0),.grp_fu_1686_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_ce),.grp_fu_1690_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din0),.grp_fu_1690_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din1),.grp_fu_1690_p_dout0(grp_fu_4752_p_dout0),.grp_fu_1690_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_ce),.grp_fu_1694_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din0),.grp_fu_1694_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din1),.grp_fu_1694_p_dout0(grp_fu_4756_p_dout0),.grp_fu_1694_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_ce),.grp_fu_1698_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din0),.grp_fu_1698_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din1),.grp_fu_1698_p_dout0(grp_fu_4760_p_dout0),.grp_fu_1698_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_ce),.grp_fu_1702_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din0),.grp_fu_1702_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din1),.grp_fu_1702_p_dout0(grp_fu_4764_p_dout0),.grp_fu_1702_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_ce),.grp_fu_1706_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din0),.grp_fu_1706_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din1),.grp_fu_1706_p_dout0(grp_fu_4768_p_dout0),.grp_fu_1706_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_ce),.grp_fu_1710_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din0),.grp_fu_1710_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din1),.grp_fu_1710_p_dout0(grp_fu_4772_p_dout0),.grp_fu_1710_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_ce),.grp_fu_1714_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din0),.grp_fu_1714_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din1),.grp_fu_1714_p_dout0(grp_fu_4776_p_dout0),.grp_fu_1714_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_ce),.grp_fu_1718_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din0),.grp_fu_1718_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din1),.grp_fu_1718_p_dout0(grp_fu_4780_p_dout0),.grp_fu_1718_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_ce),.grp_fu_1722_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din0),.grp_fu_1722_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din1),.grp_fu_1722_p_dout0(grp_fu_4784_p_dout0),.grp_fu_1722_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_ce),.grp_fu_1726_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din0),.grp_fu_1726_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din1),.grp_fu_1726_p_dout0(grp_fu_4788_p_dout0),.grp_fu_1726_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_ce),.grp_fu_1730_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din0),.grp_fu_1730_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din1),.grp_fu_1730_p_dout0(grp_fu_4792_p_dout0),.grp_fu_1730_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_ce),.grp_fu_1734_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din0),.grp_fu_1734_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din1),.grp_fu_1734_p_dout0(grp_fu_4796_p_dout0),.grp_fu_1734_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_ce),.grp_fu_1738_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din0),.grp_fu_1738_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din1),.grp_fu_1738_p_dout0(grp_fu_4800_p_dout0),.grp_fu_1738_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_ce),.grp_fu_1742_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din1),.grp_fu_1742_p_dout0(grp_fu_4804_p_dout0),.grp_fu_1742_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_ce),.grp_fu_1746_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din0),.grp_fu_1746_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din1),.grp_fu_1746_p_dout0(grp_fu_4808_p_dout0),.grp_fu_1746_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_ce),.grp_fu_1750_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din0),.grp_fu_1750_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din1),.grp_fu_1750_p_dout0(grp_fu_4812_p_dout0),.grp_fu_1750_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_ce),.grp_fu_1754_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din0),.grp_fu_1754_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din1),.grp_fu_1754_p_dout0(grp_fu_4816_p_dout0),.grp_fu_1754_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_1_reg_1230 <= output_difference_0_q0;
        output_difference_0_load_reg_1150 <= output_difference_0_q1;
        output_difference_10_load_1_reg_1280 <= output_difference_10_q0;
        output_difference_10_load_reg_1200 <= output_difference_10_q1;
        output_difference_11_load_1_reg_1285 <= output_difference_11_q0;
        output_difference_11_load_reg_1205 <= output_difference_11_q1;
        output_difference_12_load_1_reg_1290 <= output_difference_12_q0;
        output_difference_12_load_reg_1210 <= output_difference_12_q1;
        output_difference_13_load_1_reg_1295 <= output_difference_13_q0;
        output_difference_13_load_reg_1215 <= output_difference_13_q1;
        output_difference_14_load_1_reg_1300 <= output_difference_14_q0;
        output_difference_14_load_reg_1220 <= output_difference_14_q1;
        output_difference_15_load_1_reg_1305 <= output_difference_15_q0;
        output_difference_15_load_reg_1225 <= output_difference_15_q1;
        output_difference_1_load_1_reg_1235 <= output_difference_1_q0;
        output_difference_1_load_reg_1155 <= output_difference_1_q1;
        output_difference_2_load_1_reg_1240 <= output_difference_2_q0;
        output_difference_2_load_reg_1160 <= output_difference_2_q1;
        output_difference_3_load_1_reg_1245 <= output_difference_3_q0;
        output_difference_3_load_reg_1165 <= output_difference_3_q1;
        output_difference_4_load_1_reg_1250 <= output_difference_4_q0;
        output_difference_4_load_reg_1170 <= output_difference_4_q1;
        output_difference_5_load_1_reg_1255 <= output_difference_5_q0;
        output_difference_5_load_reg_1175 <= output_difference_5_q1;
        output_difference_6_load_1_reg_1260 <= output_difference_6_q0;
        output_difference_6_load_reg_1180 <= output_difference_6_q1;
        output_difference_7_load_1_reg_1265 <= output_difference_7_q0;
        output_difference_7_load_reg_1185 <= output_difference_7_q1;
        output_difference_8_load_1_reg_1270 <= output_difference_8_q0;
        output_difference_8_load_reg_1190 <= output_difference_8_q1;
        output_difference_9_load_1_reg_1275 <= output_difference_9_q0;
        output_difference_9_load_reg_1195 <= output_difference_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_2_reg_1470 <= output_difference_0_q1;
        output_difference_0_load_3_reg_1550 <= output_difference_0_q0;
        output_difference_10_load_2_reg_1520 <= output_difference_10_q1;
        output_difference_10_load_3_reg_1600 <= output_difference_10_q0;
        output_difference_11_load_2_reg_1525 <= output_difference_11_q1;
        output_difference_11_load_3_reg_1605 <= output_difference_11_q0;
        output_difference_12_load_2_reg_1530 <= output_difference_12_q1;
        output_difference_12_load_3_reg_1610 <= output_difference_12_q0;
        output_difference_13_load_2_reg_1535 <= output_difference_13_q1;
        output_difference_13_load_3_reg_1615 <= output_difference_13_q0;
        output_difference_14_load_2_reg_1540 <= output_difference_14_q1;
        output_difference_14_load_3_reg_1620 <= output_difference_14_q0;
        output_difference_15_load_2_reg_1545 <= output_difference_15_q1;
        output_difference_15_load_3_reg_1625 <= output_difference_15_q0;
        output_difference_1_load_2_reg_1475 <= output_difference_1_q1;
        output_difference_1_load_3_reg_1555 <= output_difference_1_q0;
        output_difference_2_load_2_reg_1480 <= output_difference_2_q1;
        output_difference_2_load_3_reg_1560 <= output_difference_2_q0;
        output_difference_3_load_2_reg_1485 <= output_difference_3_q1;
        output_difference_3_load_3_reg_1565 <= output_difference_3_q0;
        output_difference_4_load_2_reg_1490 <= output_difference_4_q1;
        output_difference_4_load_3_reg_1570 <= output_difference_4_q0;
        output_difference_5_load_2_reg_1495 <= output_difference_5_q1;
        output_difference_5_load_3_reg_1575 <= output_difference_5_q0;
        output_difference_6_load_2_reg_1500 <= output_difference_6_q1;
        output_difference_6_load_3_reg_1580 <= output_difference_6_q0;
        output_difference_7_load_2_reg_1505 <= output_difference_7_q1;
        output_difference_7_load_3_reg_1585 <= output_difference_7_q0;
        output_difference_8_load_2_reg_1510 <= output_difference_8_q1;
        output_difference_8_load_3_reg_1590 <= output_difference_8_q0;
        output_difference_9_load_2_reg_1515 <= output_difference_9_q1;
        output_difference_9_load_3_reg_1595 <= output_difference_9_q0;
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1630_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_ce;
    end else begin
        grp_fu_1630_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1634_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_ce;
    end else begin
        grp_fu_1634_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1638_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_ce;
    end else begin
        grp_fu_1638_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1642_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_ce;
    end else begin
        grp_fu_1642_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1646_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_ce;
    end else begin
        grp_fu_1646_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1650_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_ce;
    end else begin
        grp_fu_1650_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1654_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_ce;
    end else begin
        grp_fu_1654_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1658_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_ce;
    end else begin
        grp_fu_1658_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1662_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_ce;
    end else begin
        grp_fu_1662_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1666_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_ce;
    end else begin
        grp_fu_1666_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1670_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_ce;
    end else begin
        grp_fu_1670_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1674_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_ce;
    end else begin
        grp_fu_1674_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1678_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_ce;
    end else begin
        grp_fu_1678_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1682_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_ce;
    end else begin
        grp_fu_1682_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1686_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_ce;
    end else begin
        grp_fu_1686_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1690_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_ce;
    end else begin
        grp_fu_1690_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1694_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_ce;
    end else begin
        grp_fu_1694_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1698_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_ce;
    end else begin
        grp_fu_1698_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1702_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_ce;
    end else begin
        grp_fu_1702_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1706_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_ce;
    end else begin
        grp_fu_1706_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1710_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_ce;
    end else begin
        grp_fu_1710_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1714_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_ce;
    end else begin
        grp_fu_1714_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1718_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_ce;
    end else begin
        grp_fu_1718_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1722_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_ce;
    end else begin
        grp_fu_1722_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1726_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_ce;
    end else begin
        grp_fu_1726_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1730_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_ce;
    end else begin
        grp_fu_1730_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1734_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_ce;
    end else begin
        grp_fu_1734_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1738_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_ce;
    end else begin
        grp_fu_1738_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1742_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_ce;
    end else begin
        grp_fu_1742_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1746_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_ce;
    end else begin
        grp_fu_1746_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1750_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_ce;
    end else begin
        grp_fu_1750_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1754_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_ce;
    end else begin
        grp_fu_1754_ce = 1'b1;
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_10_ce0_local = 1'b1;
    end else begin
        output_difference_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_11_ce0_local = 1'b1;
    end else begin
        output_difference_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_12_ce0_local = 1'b1;
    end else begin
        output_difference_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_13_ce0_local = 1'b1;
    end else begin
        output_difference_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_14_ce0_local = 1'b1;
    end else begin
        output_difference_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_15_ce0_local = 1'b1;
    end else begin
        output_difference_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_8_ce0_local = 1'b1;
    end else begin
        output_difference_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_9_ce0_local = 1'b1;
    end else begin
        output_difference_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_9_ce1_local = 1'b1;
    end else begin
        output_difference_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_0_we1;
assign delta_weights2_10_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address0;
assign delta_weights2_10_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_address1;
assign delta_weights2_10_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce0;
assign delta_weights2_10_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_ce1;
assign delta_weights2_10_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d0;
assign delta_weights2_10_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_d1;
assign delta_weights2_10_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we0;
assign delta_weights2_10_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_10_we1;
assign delta_weights2_11_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address0;
assign delta_weights2_11_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_address1;
assign delta_weights2_11_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce0;
assign delta_weights2_11_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_ce1;
assign delta_weights2_11_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d0;
assign delta_weights2_11_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_d1;
assign delta_weights2_11_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we0;
assign delta_weights2_11_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_11_we1;
assign delta_weights2_12_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address0;
assign delta_weights2_12_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_address1;
assign delta_weights2_12_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce0;
assign delta_weights2_12_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_ce1;
assign delta_weights2_12_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d0;
assign delta_weights2_12_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_d1;
assign delta_weights2_12_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we0;
assign delta_weights2_12_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_12_we1;
assign delta_weights2_13_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address0;
assign delta_weights2_13_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_address1;
assign delta_weights2_13_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce0;
assign delta_weights2_13_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_ce1;
assign delta_weights2_13_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d0;
assign delta_weights2_13_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_d1;
assign delta_weights2_13_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we0;
assign delta_weights2_13_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_13_we1;
assign delta_weights2_14_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address0;
assign delta_weights2_14_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_address1;
assign delta_weights2_14_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce0;
assign delta_weights2_14_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_ce1;
assign delta_weights2_14_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d0;
assign delta_weights2_14_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_d1;
assign delta_weights2_14_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we0;
assign delta_weights2_14_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_14_we1;
assign delta_weights2_15_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address0;
assign delta_weights2_15_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_address1;
assign delta_weights2_15_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce0;
assign delta_weights2_15_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_ce1;
assign delta_weights2_15_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d0;
assign delta_weights2_15_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_d1;
assign delta_weights2_15_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we0;
assign delta_weights2_15_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_15_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_1_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_2_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_3_we1;
assign delta_weights2_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address0;
assign delta_weights2_4_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_address1;
assign delta_weights2_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce0;
assign delta_weights2_4_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_ce1;
assign delta_weights2_4_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d0;
assign delta_weights2_4_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_d1;
assign delta_weights2_4_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we0;
assign delta_weights2_4_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_4_we1;
assign delta_weights2_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address0;
assign delta_weights2_5_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_address1;
assign delta_weights2_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce0;
assign delta_weights2_5_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_ce1;
assign delta_weights2_5_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d0;
assign delta_weights2_5_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_d1;
assign delta_weights2_5_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we0;
assign delta_weights2_5_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_5_we1;
assign delta_weights2_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address0;
assign delta_weights2_6_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_address1;
assign delta_weights2_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce0;
assign delta_weights2_6_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_ce1;
assign delta_weights2_6_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d0;
assign delta_weights2_6_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_d1;
assign delta_weights2_6_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we0;
assign delta_weights2_6_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_6_we1;
assign delta_weights2_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address0;
assign delta_weights2_7_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_address1;
assign delta_weights2_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce0;
assign delta_weights2_7_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_ce1;
assign delta_weights2_7_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d0;
assign delta_weights2_7_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_d1;
assign delta_weights2_7_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we0;
assign delta_weights2_7_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_7_we1;
assign delta_weights2_8_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address0;
assign delta_weights2_8_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_address1;
assign delta_weights2_8_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce0;
assign delta_weights2_8_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_ce1;
assign delta_weights2_8_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d0;
assign delta_weights2_8_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_d1;
assign delta_weights2_8_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we0;
assign delta_weights2_8_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_8_we1;
assign delta_weights2_9_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address0;
assign delta_weights2_9_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_address1;
assign delta_weights2_9_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce0;
assign delta_weights2_9_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_ce1;
assign delta_weights2_9_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d0;
assign delta_weights2_9_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_d1;
assign delta_weights2_9_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we0;
assign delta_weights2_9_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_delta_weights2_9_we1;
assign grp_fu_4692_p_ce = grp_fu_1630_ce;
assign grp_fu_4692_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din0;
assign grp_fu_4692_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1630_p_din1;
assign grp_fu_4696_p_ce = grp_fu_1634_ce;
assign grp_fu_4696_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din0;
assign grp_fu_4696_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1634_p_din1;
assign grp_fu_4700_p_ce = grp_fu_1638_ce;
assign grp_fu_4700_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din0;
assign grp_fu_4700_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1638_p_din1;
assign grp_fu_4704_p_ce = grp_fu_1642_ce;
assign grp_fu_4704_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din0;
assign grp_fu_4704_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1642_p_din1;
assign grp_fu_4708_p_ce = grp_fu_1646_ce;
assign grp_fu_4708_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din0;
assign grp_fu_4708_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1646_p_din1;
assign grp_fu_4712_p_ce = grp_fu_1650_ce;
assign grp_fu_4712_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din0;
assign grp_fu_4712_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1650_p_din1;
assign grp_fu_4716_p_ce = grp_fu_1654_ce;
assign grp_fu_4716_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din0;
assign grp_fu_4716_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1654_p_din1;
assign grp_fu_4720_p_ce = grp_fu_1658_ce;
assign grp_fu_4720_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din0;
assign grp_fu_4720_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1658_p_din1;
assign grp_fu_4724_p_ce = grp_fu_1662_ce;
assign grp_fu_4724_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din0;
assign grp_fu_4724_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1662_p_din1;
assign grp_fu_4728_p_ce = grp_fu_1666_ce;
assign grp_fu_4728_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din0;
assign grp_fu_4728_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1666_p_din1;
assign grp_fu_4732_p_ce = grp_fu_1670_ce;
assign grp_fu_4732_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din0;
assign grp_fu_4732_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1670_p_din1;
assign grp_fu_4736_p_ce = grp_fu_1674_ce;
assign grp_fu_4736_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din0;
assign grp_fu_4736_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1674_p_din1;
assign grp_fu_4740_p_ce = grp_fu_1678_ce;
assign grp_fu_4740_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din0;
assign grp_fu_4740_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1678_p_din1;
assign grp_fu_4744_p_ce = grp_fu_1682_ce;
assign grp_fu_4744_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din0;
assign grp_fu_4744_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1682_p_din1;
assign grp_fu_4748_p_ce = grp_fu_1686_ce;
assign grp_fu_4748_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din0;
assign grp_fu_4748_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1686_p_din1;
assign grp_fu_4752_p_ce = grp_fu_1690_ce;
assign grp_fu_4752_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din0;
assign grp_fu_4752_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1690_p_din1;
assign grp_fu_4756_p_ce = grp_fu_1694_ce;
assign grp_fu_4756_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din0;
assign grp_fu_4756_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1694_p_din1;
assign grp_fu_4760_p_ce = grp_fu_1698_ce;
assign grp_fu_4760_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din0;
assign grp_fu_4760_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1698_p_din1;
assign grp_fu_4764_p_ce = grp_fu_1702_ce;
assign grp_fu_4764_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din0;
assign grp_fu_4764_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1702_p_din1;
assign grp_fu_4768_p_ce = grp_fu_1706_ce;
assign grp_fu_4768_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din0;
assign grp_fu_4768_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1706_p_din1;
assign grp_fu_4772_p_ce = grp_fu_1710_ce;
assign grp_fu_4772_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din0;
assign grp_fu_4772_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1710_p_din1;
assign grp_fu_4776_p_ce = grp_fu_1714_ce;
assign grp_fu_4776_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din0;
assign grp_fu_4776_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1714_p_din1;
assign grp_fu_4780_p_ce = grp_fu_1718_ce;
assign grp_fu_4780_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din0;
assign grp_fu_4780_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1718_p_din1;
assign grp_fu_4784_p_ce = grp_fu_1722_ce;
assign grp_fu_4784_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din0;
assign grp_fu_4784_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1722_p_din1;
assign grp_fu_4788_p_ce = grp_fu_1726_ce;
assign grp_fu_4788_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din0;
assign grp_fu_4788_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1726_p_din1;
assign grp_fu_4792_p_ce = grp_fu_1730_ce;
assign grp_fu_4792_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din0;
assign grp_fu_4792_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1730_p_din1;
assign grp_fu_4796_p_ce = grp_fu_1734_ce;
assign grp_fu_4796_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din0;
assign grp_fu_4796_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1734_p_din1;
assign grp_fu_4800_p_ce = grp_fu_1738_ce;
assign grp_fu_4800_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din0;
assign grp_fu_4800_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1738_p_din1;
assign grp_fu_4804_p_ce = grp_fu_1742_ce;
assign grp_fu_4804_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din0;
assign grp_fu_4804_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1742_p_din1;
assign grp_fu_4808_p_ce = grp_fu_1746_ce;
assign grp_fu_4808_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din0;
assign grp_fu_4808_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1746_p_din1;
assign grp_fu_4812_p_ce = grp_fu_1750_ce;
assign grp_fu_4812_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din0;
assign grp_fu_4812_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1750_p_din1;
assign grp_fu_4816_p_ce = grp_fu_1754_ce;
assign grp_fu_4816_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din0;
assign grp_fu_4816_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_grp_fu_1754_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_0_ce0;
assign last_activations_10_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_address0;
assign last_activations_10_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_10_ce0;
assign last_activations_11_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_address0;
assign last_activations_11_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_11_ce0;
assign last_activations_12_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_address0;
assign last_activations_12_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_12_ce0;
assign last_activations_13_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_address0;
assign last_activations_13_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_13_ce0;
assign last_activations_14_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_address0;
assign last_activations_14_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_14_ce0;
assign last_activations_15_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_address0;
assign last_activations_15_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_15_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_1_ce0;
assign last_activations_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_address0;
assign last_activations_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_2_ce0;
assign last_activations_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_address0;
assign last_activations_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_3_ce0;
assign last_activations_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_address0;
assign last_activations_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_4_ce0;
assign last_activations_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_address0;
assign last_activations_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_5_ce0;
assign last_activations_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_address0;
assign last_activations_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_6_ce0;
assign last_activations_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_address0;
assign last_activations_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_7_ce0;
assign last_activations_8_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_address0;
assign last_activations_8_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_8_ce0;
assign last_activations_9_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_address0;
assign last_activations_9_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_826_last_activations_9_ce0;
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
endmodule 
