module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [3:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [3:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [3:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [3:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [3:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [3:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [3:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [3:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [3:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [3:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [3:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [3:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [3:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [3:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [3:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [3:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [3:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [3:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [3:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [3:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [3:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [3:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [3:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
output  [3:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [3:0] delta_weights3_12_address1;
output   delta_weights3_12_ce1;
output   delta_weights3_12_we1;
output  [63:0] delta_weights3_12_d1;
output  [3:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [3:0] delta_weights3_13_address1;
output   delta_weights3_13_ce1;
output   delta_weights3_13_we1;
output  [63:0] delta_weights3_13_d1;
output  [3:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [3:0] delta_weights3_14_address1;
output   delta_weights3_14_ce1;
output   delta_weights3_14_we1;
output  [63:0] delta_weights3_14_d1;
output  [3:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [3:0] delta_weights3_15_address1;
output   delta_weights3_15_ce1;
output   delta_weights3_15_we1;
output  [63:0] delta_weights3_15_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
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
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2802;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg   [63:0] reg_2807;
reg   [63:0] reg_2812;
reg   [63:0] reg_2817;
reg   [63:0] reg_2822;
reg   [63:0] reg_2827;
reg   [63:0] reg_2832;
reg   [63:0] reg_2837;
reg   [63:0] reg_2842;
reg   [63:0] reg_2847;
reg   [63:0] reg_2852;
reg   [63:0] reg_2857;
reg   [63:0] reg_2862;
reg   [63:0] reg_2867;
reg   [63:0] reg_2872;
reg   [63:0] reg_2877;
reg   [63:0] reg_2882;
reg   [63:0] reg_2887;
reg   [63:0] reg_2892;
reg   [63:0] reg_2897;
reg   [63:0] reg_2902;
reg   [63:0] reg_2907;
reg   [63:0] reg_2912;
reg   [63:0] reg_2917;
reg   [63:0] reg_2922;
reg   [63:0] reg_2927;
reg   [63:0] reg_2932;
reg   [63:0] reg_2937;
reg   [63:0] reg_2942;
reg   [63:0] reg_2947;
reg   [63:0] reg_2952;
reg   [63:0] reg_2957;
reg   [63:0] last_activations_0_load_reg_3017;
wire    ap_CS_fsm_state2;
reg   [63:0] last_activations_1_load_reg_3079;
reg   [63:0] last_activations_2_load_reg_3086;
reg   [63:0] last_activations_3_load_reg_3093;
reg   [63:0] last_activations_4_load_reg_3100;
reg   [63:0] last_activations_5_load_reg_3107;
reg   [63:0] last_activations_6_load_reg_3114;
reg   [63:0] last_activations_7_load_reg_3121;
reg   [63:0] last_activations_8_load_reg_3128;
reg   [63:0] last_activations_9_load_reg_3135;
reg   [63:0] last_activations_10_load_reg_3142;
wire    ap_CS_fsm_state3;
reg   [63:0] last_activations_11_load_reg_3307;
reg   [63:0] last_activations_12_load_reg_3314;
reg   [63:0] last_activations_13_load_reg_3321;
reg   [63:0] last_activations_14_load_reg_3328;
reg   [63:0] last_activations_15_load_reg_3335;
reg   [63:0] last_activations_0_load_1_reg_3342;
reg   [63:0] last_activations_1_load_1_reg_3349;
reg   [63:0] last_activations_2_load_1_reg_3356;
reg   [63:0] last_activations_3_load_1_reg_3363;
reg   [63:0] last_activations_4_load_1_reg_3370;
reg   [63:0] last_activations_5_load_1_reg_3377;
wire    ap_CS_fsm_state4;
reg   [63:0] last_activations_6_load_1_reg_3439;
reg   [63:0] last_activations_7_load_1_reg_3446;
reg   [63:0] last_activations_8_load_1_reg_3453;
reg   [63:0] last_activations_9_load_1_reg_3460;
reg   [63:0] last_activations_10_load_1_reg_3467;
reg   [63:0] last_activations_11_load_1_reg_3474;
reg   [63:0] last_activations_12_load_1_reg_3481;
reg   [63:0] last_activations_13_load_1_reg_3488;
reg   [63:0] last_activations_14_load_1_reg_3495;
reg   [63:0] last_activations_15_load_1_reg_3502;
wire    ap_CS_fsm_state5;
reg   [63:0] last_activations_0_load_2_reg_3564;
reg   [63:0] last_activations_1_load_2_reg_3571;
reg   [63:0] last_activations_2_load_2_reg_3578;
reg   [63:0] last_activations_3_load_2_reg_3585;
reg   [63:0] last_activations_4_load_2_reg_3592;
reg   [63:0] last_activations_5_load_2_reg_3599;
reg   [63:0] last_activations_6_load_2_reg_3606;
reg   [63:0] last_activations_7_load_2_reg_3613;
reg   [63:0] last_activations_8_load_2_reg_3620;
reg   [63:0] last_activations_9_load_2_reg_3627;
reg   [63:0] last_activations_10_load_2_reg_3634;
wire    ap_CS_fsm_state6;
reg   [63:0] last_activations_11_load_2_reg_3691;
reg   [63:0] last_activations_12_load_2_reg_3698;
reg   [63:0] last_activations_13_load_2_reg_3705;
reg   [63:0] last_activations_14_load_2_reg_3712;
reg   [63:0] last_activations_15_load_2_reg_3719;
reg   [63:0] last_activations_0_load_3_reg_3726;
reg   [63:0] last_activations_1_load_3_reg_3733;
reg   [63:0] last_activations_2_load_3_reg_3740;
reg   [63:0] last_activations_3_load_3_reg_3747;
reg   [63:0] last_activations_4_load_3_reg_3754;
reg   [63:0] last_activations_5_load_3_reg_3761;
reg   [63:0] last_activations_6_load_3_reg_3768;
wire    ap_CS_fsm_state7;
reg   [63:0] last_activations_7_load_3_reg_3775;
reg   [63:0] last_activations_8_load_3_reg_3782;
reg   [63:0] last_activations_9_load_3_reg_3789;
reg   [63:0] last_activations_10_load_3_reg_3796;
reg   [63:0] last_activations_11_load_3_reg_3803;
reg   [63:0] last_activations_12_load_3_reg_3810;
reg   [63:0] last_activations_13_load_3_reg_3817;
reg   [63:0] last_activations_14_load_3_reg_3824;
reg   [63:0] last_activations_15_load_3_reg_3831;
wire    ap_CS_fsm_state15;
reg    last_activations_0_ce0_local;
reg   [1:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [1:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [1:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [1:0] last_activations_3_address0_local;
reg    last_activations_4_ce0_local;
reg   [1:0] last_activations_4_address0_local;
reg    last_activations_5_ce0_local;
reg   [1:0] last_activations_5_address0_local;
reg    last_activations_6_ce0_local;
reg   [1:0] last_activations_6_address0_local;
reg    last_activations_7_ce0_local;
reg   [1:0] last_activations_7_address0_local;
reg    last_activations_8_ce0_local;
reg   [1:0] last_activations_8_address0_local;
reg    last_activations_9_ce0_local;
reg   [1:0] last_activations_9_address0_local;
reg    last_activations_10_ce0_local;
reg   [1:0] last_activations_10_address0_local;
reg    last_activations_11_ce0_local;
reg   [1:0] last_activations_11_address0_local;
reg    last_activations_12_ce0_local;
reg   [1:0] last_activations_12_address0_local;
reg    last_activations_13_ce0_local;
reg   [1:0] last_activations_13_address0_local;
reg    last_activations_14_ce0_local;
reg   [1:0] last_activations_14_address0_local;
reg    last_activations_15_ce0_local;
reg   [1:0] last_activations_15_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg   [3:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [3:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [3:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [3:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg   [3:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg   [3:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg   [3:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg   [3:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg   [3:0] delta_weights3_4_address1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg   [3:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg   [3:0] delta_weights3_5_address1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg   [3:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg   [3:0] delta_weights3_6_address1_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg   [3:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg   [3:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg   [3:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg   [3:0] delta_weights3_8_address1_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg   [3:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg   [3:0] delta_weights3_9_address1_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg   [3:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg   [3:0] delta_weights3_10_address1_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg   [3:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg   [3:0] delta_weights3_11_address1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg   [3:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg   [3:0] delta_weights3_12_address1_local;
reg    delta_weights3_12_we0_local;
reg    delta_weights3_12_ce0_local;
reg   [3:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg   [3:0] delta_weights3_13_address1_local;
reg    delta_weights3_13_we0_local;
reg    delta_weights3_13_ce0_local;
reg   [3:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg   [3:0] delta_weights3_14_address1_local;
reg    delta_weights3_14_we0_local;
reg    delta_weights3_14_ce0_local;
reg   [3:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we1_local;
reg    delta_weights3_15_ce1_local;
reg   [3:0] delta_weights3_15_address1_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
reg   [3:0] delta_weights3_15_address0_local;
reg   [63:0] grp_fu_2642_p0;
reg   [63:0] grp_fu_2642_p1;
wire    ap_CS_fsm_state8;
reg   [63:0] grp_fu_2647_p0;
reg   [63:0] grp_fu_2647_p1;
reg   [63:0] grp_fu_2652_p0;
reg   [63:0] grp_fu_2652_p1;
reg   [63:0] grp_fu_2657_p0;
reg   [63:0] grp_fu_2657_p1;
reg   [63:0] grp_fu_2662_p0;
reg   [63:0] grp_fu_2662_p1;
reg   [63:0] grp_fu_2667_p0;
reg   [63:0] grp_fu_2667_p1;
reg   [63:0] grp_fu_2672_p0;
reg   [63:0] grp_fu_2672_p1;
reg   [63:0] grp_fu_2677_p0;
reg   [63:0] grp_fu_2677_p1;
reg   [63:0] grp_fu_2682_p0;
reg   [63:0] grp_fu_2682_p1;
reg   [63:0] grp_fu_2687_p0;
reg   [63:0] grp_fu_2687_p1;
reg   [63:0] grp_fu_2692_p0;
reg   [63:0] grp_fu_2692_p1;
reg   [63:0] grp_fu_2697_p0;
reg   [63:0] grp_fu_2697_p1;
reg   [63:0] grp_fu_2702_p0;
reg   [63:0] grp_fu_2702_p1;
reg   [63:0] grp_fu_2707_p0;
reg   [63:0] grp_fu_2707_p1;
reg   [63:0] grp_fu_2712_p0;
reg   [63:0] grp_fu_2712_p1;
reg   [63:0] grp_fu_2717_p0;
reg   [63:0] grp_fu_2717_p1;
reg   [63:0] grp_fu_2722_p0;
reg   [63:0] grp_fu_2722_p1;
reg   [63:0] grp_fu_2727_p0;
reg   [63:0] grp_fu_2727_p1;
reg   [63:0] grp_fu_2732_p0;
reg   [63:0] grp_fu_2732_p1;
reg   [63:0] grp_fu_2737_p0;
reg   [63:0] grp_fu_2737_p1;
reg   [63:0] grp_fu_2742_p0;
reg   [63:0] grp_fu_2742_p1;
reg   [63:0] grp_fu_2747_p0;
reg   [63:0] grp_fu_2747_p1;
reg   [63:0] grp_fu_2752_p0;
reg   [63:0] grp_fu_2752_p1;
reg   [63:0] grp_fu_2757_p0;
reg   [63:0] grp_fu_2757_p1;
reg   [63:0] grp_fu_2762_p0;
reg   [63:0] grp_fu_2762_p1;
reg   [63:0] grp_fu_2767_p0;
reg   [63:0] grp_fu_2767_p1;
reg   [63:0] grp_fu_2772_p0;
reg   [63:0] grp_fu_2772_p1;
reg   [63:0] grp_fu_2777_p0;
reg   [63:0] grp_fu_2777_p1;
reg   [63:0] grp_fu_2782_p0;
reg   [63:0] grp_fu_2782_p1;
reg   [63:0] grp_fu_2787_p0;
reg   [63:0] grp_fu_2787_p1;
reg   [63:0] grp_fu_2792_p0;
reg   [63:0] grp_fu_2792_p1;
reg   [63:0] grp_fu_2797_p0;
reg   [63:0] grp_fu_2797_p1;
reg   [14:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_0_load_1_reg_3342 <= last_activations_0_q0;
        last_activations_11_load_reg_3307 <= last_activations_11_q0;
        last_activations_12_load_reg_3314 <= last_activations_12_q0;
        last_activations_13_load_reg_3321 <= last_activations_13_q0;
        last_activations_14_load_reg_3328 <= last_activations_14_q0;
        last_activations_15_load_reg_3335 <= last_activations_15_q0;
        last_activations_1_load_1_reg_3349 <= last_activations_1_q0;
        last_activations_2_load_1_reg_3356 <= last_activations_2_q0;
        last_activations_3_load_1_reg_3363 <= last_activations_3_q0;
        last_activations_4_load_1_reg_3370 <= last_activations_4_q0;
        last_activations_5_load_1_reg_3377 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_0_load_2_reg_3564 <= last_activations_0_q0;
        last_activations_10_load_2_reg_3634 <= last_activations_10_q0;
        last_activations_1_load_2_reg_3571 <= last_activations_1_q0;
        last_activations_2_load_2_reg_3578 <= last_activations_2_q0;
        last_activations_3_load_2_reg_3585 <= last_activations_3_q0;
        last_activations_4_load_2_reg_3592 <= last_activations_4_q0;
        last_activations_5_load_2_reg_3599 <= last_activations_5_q0;
        last_activations_6_load_2_reg_3606 <= last_activations_6_q0;
        last_activations_7_load_2_reg_3613 <= last_activations_7_q0;
        last_activations_8_load_2_reg_3620 <= last_activations_8_q0;
        last_activations_9_load_2_reg_3627 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_0_load_3_reg_3726 <= last_activations_0_q0;
        last_activations_11_load_2_reg_3691 <= last_activations_11_q0;
        last_activations_12_load_2_reg_3698 <= last_activations_12_q0;
        last_activations_13_load_2_reg_3705 <= last_activations_13_q0;
        last_activations_14_load_2_reg_3712 <= last_activations_14_q0;
        last_activations_15_load_2_reg_3719 <= last_activations_15_q0;
        last_activations_1_load_3_reg_3733 <= last_activations_1_q0;
        last_activations_2_load_3_reg_3740 <= last_activations_2_q0;
        last_activations_3_load_3_reg_3747 <= last_activations_3_q0;
        last_activations_4_load_3_reg_3754 <= last_activations_4_q0;
        last_activations_5_load_3_reg_3761 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_0_load_reg_3017 <= last_activations_0_q0;
        last_activations_10_load_reg_3142 <= last_activations_10_q0;
        last_activations_1_load_reg_3079 <= last_activations_1_q0;
        last_activations_2_load_reg_3086 <= last_activations_2_q0;
        last_activations_3_load_reg_3093 <= last_activations_3_q0;
        last_activations_4_load_reg_3100 <= last_activations_4_q0;
        last_activations_5_load_reg_3107 <= last_activations_5_q0;
        last_activations_6_load_reg_3114 <= last_activations_6_q0;
        last_activations_7_load_reg_3121 <= last_activations_7_q0;
        last_activations_8_load_reg_3128 <= last_activations_8_q0;
        last_activations_9_load_reg_3135 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_10_load_1_reg_3467 <= last_activations_10_q0;
        last_activations_11_load_1_reg_3474 <= last_activations_11_q0;
        last_activations_12_load_1_reg_3481 <= last_activations_12_q0;
        last_activations_13_load_1_reg_3488 <= last_activations_13_q0;
        last_activations_14_load_1_reg_3495 <= last_activations_14_q0;
        last_activations_15_load_1_reg_3502 <= last_activations_15_q0;
        last_activations_6_load_1_reg_3439 <= last_activations_6_q0;
        last_activations_7_load_1_reg_3446 <= last_activations_7_q0;
        last_activations_8_load_1_reg_3453 <= last_activations_8_q0;
        last_activations_9_load_1_reg_3460 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_10_load_3_reg_3796 <= last_activations_10_q0;
        last_activations_11_load_3_reg_3803 <= last_activations_11_q0;
        last_activations_12_load_3_reg_3810 <= last_activations_12_q0;
        last_activations_13_load_3_reg_3817 <= last_activations_13_q0;
        last_activations_14_load_3_reg_3824 <= last_activations_14_q0;
        last_activations_15_load_3_reg_3831 <= last_activations_15_q0;
        last_activations_6_load_3_reg_3768 <= last_activations_6_q0;
        last_activations_7_load_3_reg_3775 <= last_activations_7_q0;
        last_activations_8_load_3_reg_3782 <= last_activations_8_q0;
        last_activations_9_load_3_reg_3789 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2802 <= grp_fu_4692_p_dout0;
        reg_2807 <= grp_fu_4696_p_dout0;
        reg_2812 <= grp_fu_4700_p_dout0;
        reg_2817 <= grp_fu_4704_p_dout0;
        reg_2822 <= grp_fu_4708_p_dout0;
        reg_2827 <= grp_fu_4712_p_dout0;
        reg_2832 <= grp_fu_4716_p_dout0;
        reg_2837 <= grp_fu_4720_p_dout0;
        reg_2842 <= grp_fu_4724_p_dout0;
        reg_2847 <= grp_fu_4728_p_dout0;
        reg_2852 <= grp_fu_4732_p_dout0;
        reg_2857 <= grp_fu_4736_p_dout0;
        reg_2862 <= grp_fu_4740_p_dout0;
        reg_2867 <= grp_fu_4744_p_dout0;
        reg_2872 <= grp_fu_4748_p_dout0;
        reg_2877 <= grp_fu_4752_p_dout0;
        reg_2882 <= grp_fu_4756_p_dout0;
        reg_2887 <= grp_fu_4760_p_dout0;
        reg_2892 <= grp_fu_4764_p_dout0;
        reg_2897 <= grp_fu_4768_p_dout0;
        reg_2902 <= grp_fu_4772_p_dout0;
        reg_2907 <= grp_fu_4776_p_dout0;
        reg_2912 <= grp_fu_4780_p_dout0;
        reg_2917 <= grp_fu_4784_p_dout0;
        reg_2922 <= grp_fu_4788_p_dout0;
        reg_2927 <= grp_fu_4792_p_dout0;
        reg_2932 <= grp_fu_4796_p_dout0;
        reg_2937 <= grp_fu_4800_p_dout0;
        reg_2942 <= grp_fu_4804_p_dout0;
        reg_2947 <= grp_fu_4808_p_dout0;
        reg_2952 <= grp_fu_4812_p_dout0;
        reg_2957 <= grp_fu_4816_p_dout0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state15) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address1_local = 64'd0;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_10_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_10_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_10_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_10_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address0_local = 64'd1;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_10_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_10_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_10_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_10_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_10_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address1_local = 64'd0;
    end else begin
        delta_weights3_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_11_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_11_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_11_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_11_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address0_local = 64'd1;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_11_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_11_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_11_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_11_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_11_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address1_local = 64'd0;
    end else begin
        delta_weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_12_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_12_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_12_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_12_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address0_local = 64'd1;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_12_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_12_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_12_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_12_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_12_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address1_local = 64'd0;
    end else begin
        delta_weights3_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_13_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_13_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_13_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_13_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address0_local = 64'd1;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_13_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_13_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_13_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_13_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_13_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address1_local = 64'd0;
    end else begin
        delta_weights3_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_14_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_14_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_14_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_14_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address0_local = 64'd1;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_14_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_14_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_14_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_14_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_14_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address1_local = 64'd0;
    end else begin
        delta_weights3_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_15_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_15_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_15_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_15_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address0_local = 64'd1;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_15_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_15_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_15_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_15_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_15_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address1_local = 64'd0;
    end else begin
        delta_weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address1_local = 64'd0;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address1_local = 64'd0;
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address1_local = 64'd0;
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address1_local = 64'd0;
    end else begin
        delta_weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address1_local = 64'd0;
    end else begin
        delta_weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address1_local = 64'd0;
    end else begin
        delta_weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address1_local = 64'd0;
    end else begin
        delta_weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_8_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_8_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_8_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_8_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address0_local = 64'd1;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_8_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_8_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_8_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_8_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_8_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address1_local = 64'd0;
    end else begin
        delta_weights3_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_9_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_9_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_9_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_9_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address0_local = 64'd1;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_9_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_9_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_9_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_9_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_9_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address1_local = 64'd0;
    end else begin
        delta_weights3_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2642_p0 = last_activations_5_load_3_reg_3761;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2642_p0 = last_activations_10_load_2_reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2642_p0 = last_activations_0_load_2_reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2642_p0 = last_activations_5_load_1_reg_3377;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2642_p0 = last_activations_10_load_reg_3142;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2642_p0 = last_activations_0_load_reg_3017;
    end else begin
        grp_fu_2642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2642_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2642_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2642_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2642_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2647_p0 = last_activations_5_load_3_reg_3761;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2647_p0 = last_activations_11_load_2_reg_3691;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2647_p0 = last_activations_0_load_2_reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2647_p0 = last_activations_5_load_1_reg_3377;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2647_p0 = last_activations_11_load_reg_3307;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2647_p0 = last_activations_0_load_reg_3017;
    end else begin
        grp_fu_2647_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2647_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2647_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2647_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2647_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2652_p0 = last_activations_6_load_3_reg_3768;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2652_p0 = last_activations_11_load_2_reg_3691;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2652_p0 = last_activations_0_load_2_reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2652_p0 = last_activations_6_load_1_reg_3439;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2652_p0 = last_activations_11_load_reg_3307;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2652_p0 = last_activations_0_load_reg_3017;
    end else begin
        grp_fu_2652_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2652_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2652_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2652_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2652_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2657_p0 = last_activations_6_load_3_reg_3768;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2657_p0 = last_activations_11_load_2_reg_3691;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2657_p0 = last_activations_1_load_2_reg_3571;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2657_p0 = last_activations_6_load_1_reg_3439;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2657_p0 = last_activations_11_load_reg_3307;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2657_p0 = last_activations_1_load_reg_3079;
    end else begin
        grp_fu_2657_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2657_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2657_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2657_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2657_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2662_p0 = last_activations_6_load_3_reg_3768;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2662_p0 = last_activations_12_load_2_reg_3698;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2662_p0 = last_activations_1_load_2_reg_3571;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2662_p0 = last_activations_6_load_1_reg_3439;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2662_p0 = last_activations_12_load_reg_3314;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2662_p0 = last_activations_1_load_reg_3079;
    end else begin
        grp_fu_2662_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2662_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2662_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2662_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2662_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2667_p0 = last_activations_7_load_3_reg_3775;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2667_p0 = last_activations_12_load_2_reg_3698;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2667_p0 = last_activations_1_load_2_reg_3571;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2667_p0 = last_activations_7_load_1_reg_3446;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2667_p0 = last_activations_12_load_reg_3314;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2667_p0 = last_activations_1_load_reg_3079;
    end else begin
        grp_fu_2667_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2667_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2667_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2667_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2667_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2672_p0 = last_activations_7_load_3_reg_3775;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2672_p0 = last_activations_12_load_2_reg_3698;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2672_p0 = last_activations_2_load_2_reg_3578;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2672_p0 = last_activations_7_load_1_reg_3446;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2672_p0 = last_activations_12_load_reg_3314;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2672_p0 = last_activations_2_load_reg_3086;
    end else begin
        grp_fu_2672_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2672_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2672_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2672_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2672_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2677_p0 = last_activations_7_load_3_reg_3775;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2677_p0 = last_activations_13_load_2_reg_3705;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2677_p0 = last_activations_2_load_2_reg_3578;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2677_p0 = last_activations_7_load_1_reg_3446;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2677_p0 = last_activations_13_load_reg_3321;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2677_p0 = last_activations_2_load_reg_3086;
    end else begin
        grp_fu_2677_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2677_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2677_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2677_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2677_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2682_p0 = last_activations_8_load_3_reg_3782;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2682_p0 = last_activations_13_load_2_reg_3705;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2682_p0 = last_activations_2_load_2_reg_3578;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2682_p0 = last_activations_8_load_1_reg_3453;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2682_p0 = last_activations_13_load_reg_3321;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2682_p0 = last_activations_2_load_reg_3086;
    end else begin
        grp_fu_2682_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2682_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2682_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2682_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2682_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2687_p0 = last_activations_8_load_3_reg_3782;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2687_p0 = last_activations_13_load_2_reg_3705;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2687_p0 = last_activations_3_load_2_reg_3585;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2687_p0 = last_activations_8_load_1_reg_3453;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2687_p0 = last_activations_13_load_reg_3321;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2687_p0 = last_activations_3_load_reg_3093;
    end else begin
        grp_fu_2687_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2687_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2687_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2687_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2687_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2692_p0 = last_activations_8_load_3_reg_3782;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2692_p0 = last_activations_14_load_2_reg_3712;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2692_p0 = last_activations_3_load_2_reg_3585;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2692_p0 = last_activations_8_load_1_reg_3453;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2692_p0 = last_activations_14_load_reg_3328;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2692_p0 = last_activations_3_load_reg_3093;
    end else begin
        grp_fu_2692_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2692_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2692_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2692_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2692_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2697_p0 = last_activations_9_load_3_reg_3789;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2697_p0 = last_activations_14_load_2_reg_3712;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2697_p0 = last_activations_3_load_2_reg_3585;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2697_p0 = last_activations_9_load_1_reg_3460;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2697_p0 = last_activations_14_load_reg_3328;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2697_p0 = last_activations_3_load_reg_3093;
    end else begin
        grp_fu_2697_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2697_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2697_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2697_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2697_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2702_p0 = last_activations_9_load_3_reg_3789;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2702_p0 = last_activations_14_load_2_reg_3712;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2702_p0 = last_activations_4_load_2_reg_3592;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2702_p0 = last_activations_9_load_1_reg_3460;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2702_p0 = last_activations_14_load_reg_3328;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2702_p0 = last_activations_4_load_reg_3100;
    end else begin
        grp_fu_2702_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2702_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2702_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2702_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2702_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2707_p0 = last_activations_9_load_3_reg_3789;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2707_p0 = last_activations_15_load_2_reg_3719;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2707_p0 = last_activations_4_load_2_reg_3592;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2707_p0 = last_activations_9_load_1_reg_3460;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2707_p0 = last_activations_15_load_reg_3335;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2707_p0 = last_activations_4_load_reg_3100;
    end else begin
        grp_fu_2707_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2707_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2707_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2707_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2707_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2712_p0 = last_activations_10_load_3_reg_3796;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2712_p0 = last_activations_15_load_2_reg_3719;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2712_p0 = last_activations_4_load_2_reg_3592;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2712_p0 = last_activations_10_load_1_reg_3467;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2712_p0 = last_activations_15_load_reg_3335;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2712_p0 = last_activations_4_load_reg_3100;
    end else begin
        grp_fu_2712_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2712_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2712_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2712_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2712_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2717_p0 = last_activations_10_load_3_reg_3796;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2717_p0 = last_activations_15_load_2_reg_3719;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2717_p0 = last_activations_5_load_2_reg_3599;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2717_p0 = last_activations_10_load_1_reg_3467;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2717_p0 = last_activations_15_load_reg_3335;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2717_p0 = last_activations_5_load_reg_3107;
    end else begin
        grp_fu_2717_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2717_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2717_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2717_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2717_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2722_p0 = last_activations_10_load_3_reg_3796;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2722_p0 = last_activations_0_load_3_reg_3726;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2722_p0 = last_activations_5_load_2_reg_3599;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2722_p0 = last_activations_10_load_1_reg_3467;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2722_p0 = last_activations_0_load_1_reg_3342;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2722_p0 = last_activations_5_load_reg_3107;
    end else begin
        grp_fu_2722_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2722_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2722_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2722_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2722_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2727_p0 = last_activations_11_load_3_reg_3803;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2727_p0 = last_activations_0_load_3_reg_3726;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2727_p0 = last_activations_5_load_2_reg_3599;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2727_p0 = last_activations_11_load_1_reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2727_p0 = last_activations_0_load_1_reg_3342;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2727_p0 = last_activations_5_load_reg_3107;
    end else begin
        grp_fu_2727_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2727_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2727_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2727_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2727_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2732_p0 = last_activations_11_load_3_reg_3803;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2732_p0 = last_activations_0_load_3_reg_3726;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2732_p0 = last_activations_6_load_2_reg_3606;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2732_p0 = last_activations_11_load_1_reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2732_p0 = last_activations_0_load_1_reg_3342;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2732_p0 = last_activations_6_load_reg_3114;
    end else begin
        grp_fu_2732_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2732_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2732_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2732_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2732_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2737_p0 = last_activations_11_load_3_reg_3803;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2737_p0 = last_activations_1_load_3_reg_3733;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2737_p0 = last_activations_6_load_2_reg_3606;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2737_p0 = last_activations_11_load_1_reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2737_p0 = last_activations_1_load_1_reg_3349;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2737_p0 = last_activations_6_load_reg_3114;
    end else begin
        grp_fu_2737_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2737_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2737_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2737_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2737_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2742_p0 = last_activations_12_load_3_reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2742_p0 = last_activations_1_load_3_reg_3733;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2742_p0 = last_activations_6_load_2_reg_3606;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2742_p0 = last_activations_12_load_1_reg_3481;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2742_p0 = last_activations_1_load_1_reg_3349;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2742_p0 = last_activations_6_load_reg_3114;
    end else begin
        grp_fu_2742_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2742_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2742_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2742_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2742_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2747_p0 = last_activations_12_load_3_reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2747_p0 = last_activations_1_load_3_reg_3733;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2747_p0 = last_activations_7_load_2_reg_3613;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2747_p0 = last_activations_12_load_1_reg_3481;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2747_p0 = last_activations_1_load_1_reg_3349;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2747_p0 = last_activations_7_load_reg_3121;
    end else begin
        grp_fu_2747_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2747_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2747_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2747_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2747_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2752_p0 = last_activations_12_load_3_reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2752_p0 = last_activations_2_load_3_reg_3740;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2752_p0 = last_activations_7_load_2_reg_3613;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2752_p0 = last_activations_12_load_1_reg_3481;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2752_p0 = last_activations_2_load_1_reg_3356;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2752_p0 = last_activations_7_load_reg_3121;
    end else begin
        grp_fu_2752_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2752_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2752_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2752_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2752_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2757_p0 = last_activations_13_load_3_reg_3817;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2757_p0 = last_activations_2_load_3_reg_3740;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2757_p0 = last_activations_7_load_2_reg_3613;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2757_p0 = last_activations_13_load_1_reg_3488;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2757_p0 = last_activations_2_load_1_reg_3356;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2757_p0 = last_activations_7_load_reg_3121;
    end else begin
        grp_fu_2757_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2757_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2757_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2757_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2757_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2762_p0 = last_activations_13_load_3_reg_3817;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2762_p0 = last_activations_2_load_3_reg_3740;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2762_p0 = last_activations_8_load_2_reg_3620;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2762_p0 = last_activations_13_load_1_reg_3488;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2762_p0 = last_activations_2_load_1_reg_3356;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2762_p0 = last_activations_8_load_reg_3128;
    end else begin
        grp_fu_2762_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2762_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2762_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2762_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2762_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2767_p0 = last_activations_13_load_3_reg_3817;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2767_p0 = last_activations_3_load_3_reg_3747;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2767_p0 = last_activations_8_load_2_reg_3620;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2767_p0 = last_activations_13_load_1_reg_3488;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2767_p0 = last_activations_3_load_1_reg_3363;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2767_p0 = last_activations_8_load_reg_3128;
    end else begin
        grp_fu_2767_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2767_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2767_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2767_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2767_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2772_p0 = last_activations_14_load_3_reg_3824;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2772_p0 = last_activations_3_load_3_reg_3747;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2772_p0 = last_activations_8_load_2_reg_3620;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2772_p0 = last_activations_14_load_1_reg_3495;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2772_p0 = last_activations_3_load_1_reg_3363;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2772_p0 = last_activations_8_load_reg_3128;
    end else begin
        grp_fu_2772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2772_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2772_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2772_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2772_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2777_p0 = last_activations_14_load_3_reg_3824;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2777_p0 = last_activations_3_load_3_reg_3747;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2777_p0 = last_activations_9_load_2_reg_3627;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2777_p0 = last_activations_14_load_1_reg_3495;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2777_p0 = last_activations_3_load_1_reg_3363;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2777_p0 = last_activations_9_load_reg_3135;
    end else begin
        grp_fu_2777_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2777_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2777_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2777_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2777_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2782_p0 = last_activations_14_load_3_reg_3824;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2782_p0 = last_activations_4_load_3_reg_3754;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2782_p0 = last_activations_9_load_2_reg_3627;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2782_p0 = last_activations_14_load_1_reg_3495;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2782_p0 = last_activations_4_load_1_reg_3370;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2782_p0 = last_activations_9_load_reg_3135;
    end else begin
        grp_fu_2782_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2782_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2782_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2782_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2782_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2787_p0 = last_activations_15_load_3_reg_3831;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2787_p0 = last_activations_4_load_3_reg_3754;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2787_p0 = last_activations_9_load_2_reg_3627;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2787_p0 = last_activations_15_load_1_reg_3502;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2787_p0 = last_activations_4_load_1_reg_3370;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2787_p0 = last_activations_9_load_reg_3135;
    end else begin
        grp_fu_2787_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2787_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2787_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2787_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2787_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2792_p0 = last_activations_15_load_3_reg_3831;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2792_p0 = last_activations_4_load_3_reg_3754;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2792_p0 = last_activations_10_load_2_reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2792_p0 = last_activations_15_load_1_reg_3502;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2792_p0 = last_activations_4_load_1_reg_3370;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2792_p0 = last_activations_10_load_reg_3142;
    end else begin
        grp_fu_2792_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2792_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2792_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2792_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2792_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2797_p0 = last_activations_15_load_3_reg_3831;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2797_p0 = last_activations_5_load_3_reg_3761;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2797_p0 = last_activations_10_load_2_reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2797_p0 = last_activations_15_load_1_reg_3502;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2797_p0 = last_activations_5_load_1_reg_3377;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2797_p0 = last_activations_10_load_reg_3142;
    end else begin
        grp_fu_2797_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2797_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2797_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2797_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2797_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_0_address0_local = 64'd0;
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_10_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_10_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_10_address0_local = 64'd0;
    end else begin
        last_activations_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_11_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_11_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_11_address0_local = 64'd0;
    end else begin
        last_activations_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_12_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_12_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_12_address0_local = 64'd0;
    end else begin
        last_activations_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_13_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_13_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_13_address0_local = 64'd0;
    end else begin
        last_activations_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_14_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_14_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_14_address0_local = 64'd0;
    end else begin
        last_activations_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_15_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_15_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_15_address0_local = 64'd0;
    end else begin
        last_activations_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_1_address0_local = 64'd0;
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_4_address0_local = 64'd0;
    end else begin
        last_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_5_address0_local = 64'd0;
    end else begin
        last_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_6_address0_local = 64'd0;
    end else begin
        last_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_7_address0_local = 64'd0;
    end else begin
        last_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_8_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_8_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_8_address0_local = 64'd0;
    end else begin
        last_activations_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_9_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_9_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_9_address0_local = 64'd0;
    end else begin
        last_activations_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
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
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = reg_2882;
assign delta_weights3_0_d1 = reg_2802;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = delta_weights3_10_address1_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = reg_2932;
assign delta_weights3_10_d1 = reg_2852;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_address1 = delta_weights3_11_address1_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = reg_2937;
assign delta_weights3_11_d1 = reg_2857;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = delta_weights3_12_address1_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = reg_2942;
assign delta_weights3_12_d1 = reg_2862;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = delta_weights3_13_address1_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = reg_2947;
assign delta_weights3_13_d1 = reg_2867;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = delta_weights3_14_address1_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = reg_2952;
assign delta_weights3_14_d1 = reg_2872;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_address1 = delta_weights3_15_address1_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = reg_2957;
assign delta_weights3_15_d1 = reg_2877;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_2887;
assign delta_weights3_1_d1 = reg_2807;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = reg_2892;
assign delta_weights3_2_d1 = reg_2812;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = reg_2897;
assign delta_weights3_3_d1 = reg_2817;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = delta_weights3_4_address1_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = reg_2902;
assign delta_weights3_4_d1 = reg_2822;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = delta_weights3_5_address1_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = reg_2907;
assign delta_weights3_5_d1 = reg_2827;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = delta_weights3_6_address1_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = reg_2912;
assign delta_weights3_6_d1 = reg_2832;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = reg_2917;
assign delta_weights3_7_d1 = reg_2837;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = delta_weights3_8_address1_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = reg_2922;
assign delta_weights3_8_d1 = reg_2842;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = delta_weights3_9_address1_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = reg_2927;
assign delta_weights3_9_d1 = reg_2847;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign grp_fu_4692_p_ce = 1'b1;
assign grp_fu_4692_p_din0 = grp_fu_2642_p0;
assign grp_fu_4692_p_din1 = grp_fu_2642_p1;
assign grp_fu_4696_p_ce = 1'b1;
assign grp_fu_4696_p_din0 = grp_fu_2647_p0;
assign grp_fu_4696_p_din1 = grp_fu_2647_p1;
assign grp_fu_4700_p_ce = 1'b1;
assign grp_fu_4700_p_din0 = grp_fu_2652_p0;
assign grp_fu_4700_p_din1 = grp_fu_2652_p1;
assign grp_fu_4704_p_ce = 1'b1;
assign grp_fu_4704_p_din0 = grp_fu_2657_p0;
assign grp_fu_4704_p_din1 = grp_fu_2657_p1;
assign grp_fu_4708_p_ce = 1'b1;
assign grp_fu_4708_p_din0 = grp_fu_2662_p0;
assign grp_fu_4708_p_din1 = grp_fu_2662_p1;
assign grp_fu_4712_p_ce = 1'b1;
assign grp_fu_4712_p_din0 = grp_fu_2667_p0;
assign grp_fu_4712_p_din1 = grp_fu_2667_p1;
assign grp_fu_4716_p_ce = 1'b1;
assign grp_fu_4716_p_din0 = grp_fu_2672_p0;
assign grp_fu_4716_p_din1 = grp_fu_2672_p1;
assign grp_fu_4720_p_ce = 1'b1;
assign grp_fu_4720_p_din0 = grp_fu_2677_p0;
assign grp_fu_4720_p_din1 = grp_fu_2677_p1;
assign grp_fu_4724_p_ce = 1'b1;
assign grp_fu_4724_p_din0 = grp_fu_2682_p0;
assign grp_fu_4724_p_din1 = grp_fu_2682_p1;
assign grp_fu_4728_p_ce = 1'b1;
assign grp_fu_4728_p_din0 = grp_fu_2687_p0;
assign grp_fu_4728_p_din1 = grp_fu_2687_p1;
assign grp_fu_4732_p_ce = 1'b1;
assign grp_fu_4732_p_din0 = grp_fu_2692_p0;
assign grp_fu_4732_p_din1 = grp_fu_2692_p1;
assign grp_fu_4736_p_ce = 1'b1;
assign grp_fu_4736_p_din0 = grp_fu_2697_p0;
assign grp_fu_4736_p_din1 = grp_fu_2697_p1;
assign grp_fu_4740_p_ce = 1'b1;
assign grp_fu_4740_p_din0 = grp_fu_2702_p0;
assign grp_fu_4740_p_din1 = grp_fu_2702_p1;
assign grp_fu_4744_p_ce = 1'b1;
assign grp_fu_4744_p_din0 = grp_fu_2707_p0;
assign grp_fu_4744_p_din1 = grp_fu_2707_p1;
assign grp_fu_4748_p_ce = 1'b1;
assign grp_fu_4748_p_din0 = grp_fu_2712_p0;
assign grp_fu_4748_p_din1 = grp_fu_2712_p1;
assign grp_fu_4752_p_ce = 1'b1;
assign grp_fu_4752_p_din0 = grp_fu_2717_p0;
assign grp_fu_4752_p_din1 = grp_fu_2717_p1;
assign grp_fu_4756_p_ce = 1'b1;
assign grp_fu_4756_p_din0 = grp_fu_2722_p0;
assign grp_fu_4756_p_din1 = grp_fu_2722_p1;
assign grp_fu_4760_p_ce = 1'b1;
assign grp_fu_4760_p_din0 = grp_fu_2727_p0;
assign grp_fu_4760_p_din1 = grp_fu_2727_p1;
assign grp_fu_4764_p_ce = 1'b1;
assign grp_fu_4764_p_din0 = grp_fu_2732_p0;
assign grp_fu_4764_p_din1 = grp_fu_2732_p1;
assign grp_fu_4768_p_ce = 1'b1;
assign grp_fu_4768_p_din0 = grp_fu_2737_p0;
assign grp_fu_4768_p_din1 = grp_fu_2737_p1;
assign grp_fu_4772_p_ce = 1'b1;
assign grp_fu_4772_p_din0 = grp_fu_2742_p0;
assign grp_fu_4772_p_din1 = grp_fu_2742_p1;
assign grp_fu_4776_p_ce = 1'b1;
assign grp_fu_4776_p_din0 = grp_fu_2747_p0;
assign grp_fu_4776_p_din1 = grp_fu_2747_p1;
assign grp_fu_4780_p_ce = 1'b1;
assign grp_fu_4780_p_din0 = grp_fu_2752_p0;
assign grp_fu_4780_p_din1 = grp_fu_2752_p1;
assign grp_fu_4784_p_ce = 1'b1;
assign grp_fu_4784_p_din0 = grp_fu_2757_p0;
assign grp_fu_4784_p_din1 = grp_fu_2757_p1;
assign grp_fu_4788_p_ce = 1'b1;
assign grp_fu_4788_p_din0 = grp_fu_2762_p0;
assign grp_fu_4788_p_din1 = grp_fu_2762_p1;
assign grp_fu_4792_p_ce = 1'b1;
assign grp_fu_4792_p_din0 = grp_fu_2767_p0;
assign grp_fu_4792_p_din1 = grp_fu_2767_p1;
assign grp_fu_4796_p_ce = 1'b1;
assign grp_fu_4796_p_din0 = grp_fu_2772_p0;
assign grp_fu_4796_p_din1 = grp_fu_2772_p1;
assign grp_fu_4800_p_ce = 1'b1;
assign grp_fu_4800_p_din0 = grp_fu_2777_p0;
assign grp_fu_4800_p_din1 = grp_fu_2777_p1;
assign grp_fu_4804_p_ce = 1'b1;
assign grp_fu_4804_p_din0 = grp_fu_2782_p0;
assign grp_fu_4804_p_din1 = grp_fu_2782_p1;
assign grp_fu_4808_p_ce = 1'b1;
assign grp_fu_4808_p_din0 = grp_fu_2787_p0;
assign grp_fu_4808_p_din1 = grp_fu_2787_p1;
assign grp_fu_4812_p_ce = 1'b1;
assign grp_fu_4812_p_din0 = grp_fu_2792_p0;
assign grp_fu_4812_p_din1 = grp_fu_2792_p1;
assign grp_fu_4816_p_ce = 1'b1;
assign grp_fu_4816_p_din0 = grp_fu_2797_p0;
assign grp_fu_4816_p_din1 = grp_fu_2797_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = last_activations_10_address0_local;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = last_activations_11_address0_local;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = last_activations_12_address0_local;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = last_activations_13_address0_local;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = last_activations_14_address0_local;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = last_activations_15_address0_local;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = last_activations_4_address0_local;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = last_activations_5_address0_local;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = last_activations_6_address0_local;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = last_activations_7_address0_local;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = last_activations_8_address0_local;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = last_activations_9_address0_local;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
endmodule 