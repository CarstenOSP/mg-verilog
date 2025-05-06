
module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,biases2_8_address0,biases2_8_ce0,biases2_8_q0,biases2_9_address0,biases2_9_ce0,biases2_9_q0,biases2_10_address0,biases2_10_ce0,biases2_10_q0,biases2_11_address0,biases2_11_ce0,biases2_11_q0,biases2_12_address0,biases2_12_ce0,biases2_12_q0,biases2_13_address0,biases2_13_ce0,biases2_13_q0,biases2_14_address0,biases2_14_ce0,biases2_14_q0,biases2_15_address0,biases2_15_ce0,biases2_15_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_8_address1,weights2_8_ce1,weights2_8_q1,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_9_address1,weights2_9_ce1,weights2_9_q1,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_10_address1,weights2_10_ce1,weights2_10_q1,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_11_address1,weights2_11_ce1,weights2_11_q1,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_12_address1,weights2_12_ce1,weights2_12_q1,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_13_address1,weights2_13_ce1,weights2_13_q1,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_14_address1,weights2_14_ce1,weights2_14_q1,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_15_address1,weights2_15_ce1,weights2_15_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_q1,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_q1,activations_8_address0,activations_8_ce0,activations_8_we0,activations_8_d0,activations_8_address1,activations_8_ce1,activations_8_q1,activations_9_address0,activations_9_ce0,activations_9_we0,activations_9_d0,activations_9_address1,activations_9_ce1,activations_9_q1,activations_10_address0,activations_10_ce0,activations_10_we0,activations_10_d0,activations_10_address1,activations_10_ce1,activations_10_q1,activations_11_address0,activations_11_ce0,activations_11_we0,activations_11_d0,activations_11_address1,activations_11_ce1,activations_11_q1,activations_12_address0,activations_12_ce0,activations_12_we0,activations_12_d0,activations_12_address1,activations_12_ce1,activations_12_q1,activations_13_address0,activations_13_ce0,activations_13_we0,activations_13_d0,activations_13_address1,activations_13_ce1,activations_13_q1,activations_14_address0,activations_14_ce0,activations_14_we0,activations_14_d0,activations_14_address1,activations_14_ce1,activations_14_q1,activations_15_address0,activations_15_ce0,activations_15_we0,activations_15_d0,activations_15_address1,activations_15_ce1,activations_15_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_2_address1,input_activations_2_ce1,input_activations_2_q1,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_3_address1,input_activations_3_ce1,input_activations_3_q1,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_4_address1,input_activations_4_ce1,input_activations_4_q1,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_5_address1,input_activations_5_ce1,input_activations_5_q1,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_6_address1,input_activations_6_ce1,input_activations_6_q1,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_7_address1,input_activations_7_ce1,input_activations_7_q1,input_activations_8_address0,input_activations_8_ce0,input_activations_8_q0,input_activations_8_address1,input_activations_8_ce1,input_activations_8_q1,input_activations_9_address0,input_activations_9_ce0,input_activations_9_q0,input_activations_9_address1,input_activations_9_ce1,input_activations_9_q1,input_activations_10_address0,input_activations_10_ce0,input_activations_10_q0,input_activations_10_address1,input_activations_10_ce1,input_activations_10_q1,input_activations_11_address0,input_activations_11_ce0,input_activations_11_q0,input_activations_11_address1,input_activations_11_ce1,input_activations_11_q1,input_activations_12_address0,input_activations_12_ce0,input_activations_12_q0,input_activations_12_address1,input_activations_12_ce1,input_activations_12_q1,input_activations_13_address0,input_activations_13_ce0,input_activations_13_q0,input_activations_13_address1,input_activations_13_ce1,input_activations_13_q1,input_activations_14_address0,input_activations_14_ce0,input_activations_14_q0,input_activations_14_address1,input_activations_14_ce1,input_activations_14_q1,input_activations_15_address0,input_activations_15_ce0,input_activations_15_q0,input_activations_15_address1,input_activations_15_ce1,input_activations_15_q1,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4568_p_din0,grp_fu_4568_p_din1,grp_fu_4568_p_opcode,grp_fu_4568_p_dout0,grp_fu_4568_p_ce,grp_fu_4572_p_din0,grp_fu_4572_p_din1,grp_fu_4572_p_opcode,grp_fu_4572_p_dout0,grp_fu_4572_p_ce,grp_fu_4576_p_din0,grp_fu_4576_p_din1,grp_fu_4576_p_opcode,grp_fu_4576_p_dout0,grp_fu_4576_p_ce,grp_fu_4580_p_din0,grp_fu_4580_p_din1,grp_fu_4580_p_opcode,grp_fu_4580_p_dout0,grp_fu_4580_p_ce,grp_fu_4584_p_din0,grp_fu_4584_p_din1,grp_fu_4584_p_opcode,grp_fu_4584_p_dout0,grp_fu_4584_p_ce,grp_fu_4588_p_din0,grp_fu_4588_p_din1,grp_fu_4588_p_opcode,grp_fu_4588_p_dout0,grp_fu_4588_p_ce,grp_fu_4592_p_din0,grp_fu_4592_p_din1,grp_fu_4592_p_opcode,grp_fu_4592_p_dout0,grp_fu_4592_p_ce,grp_fu_4596_p_din0,grp_fu_4596_p_din1,grp_fu_4596_p_opcode,grp_fu_4596_p_dout0,grp_fu_4596_p_ce,grp_fu_4600_p_din0,grp_fu_4600_p_din1,grp_fu_4600_p_opcode,grp_fu_4600_p_dout0,grp_fu_4600_p_ce,grp_fu_4604_p_din0,grp_fu_4604_p_din1,grp_fu_4604_p_opcode,grp_fu_4604_p_dout0,grp_fu_4604_p_ce,grp_fu_4608_p_din0,grp_fu_4608_p_din1,grp_fu_4608_p_opcode,grp_fu_4608_p_dout0,grp_fu_4608_p_ce,grp_fu_4612_p_din0,grp_fu_4612_p_din1,grp_fu_4612_p_opcode,grp_fu_4612_p_dout0,grp_fu_4612_p_ce,grp_fu_4616_p_din0,grp_fu_4616_p_din1,grp_fu_4616_p_opcode,grp_fu_4616_p_dout0,grp_fu_4616_p_ce,grp_fu_4620_p_din0,grp_fu_4620_p_din1,grp_fu_4620_p_opcode,grp_fu_4620_p_dout0,grp_fu_4620_p_ce,grp_fu_4624_p_din0,grp_fu_4624_p_din1,grp_fu_4624_p_opcode,grp_fu_4624_p_dout0,grp_fu_4624_p_ce,grp_fu_4628_p_din0,grp_fu_4628_p_din1,grp_fu_4628_p_opcode,grp_fu_4628_p_dout0,grp_fu_4628_p_ce,grp_fu_4632_p_din0,grp_fu_4632_p_din1,grp_fu_4632_p_opcode,grp_fu_4632_p_dout0,grp_fu_4632_p_ce,grp_fu_4636_p_din0,grp_fu_4636_p_din1,grp_fu_4636_p_opcode,grp_fu_4636_p_dout0,grp_fu_4636_p_ce,grp_fu_4640_p_din0,grp_fu_4640_p_din1,grp_fu_4640_p_opcode,grp_fu_4640_p_dout0,grp_fu_4640_p_ce,grp_fu_4644_p_din0,grp_fu_4644_p_din1,grp_fu_4644_p_opcode,grp_fu_4644_p_dout0,grp_fu_4644_p_ce,grp_fu_4648_p_din0,grp_fu_4648_p_din1,grp_fu_4648_p_opcode,grp_fu_4648_p_dout0,grp_fu_4648_p_ce,grp_fu_4652_p_din0,grp_fu_4652_p_din1,grp_fu_4652_p_opcode,grp_fu_4652_p_dout0,grp_fu_4652_p_ce,grp_fu_4656_p_din0,grp_fu_4656_p_din1,grp_fu_4656_p_opcode,grp_fu_4656_p_dout0,grp_fu_4656_p_ce,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_opcode,grp_fu_4660_p_dout0,grp_fu_4660_p_ce,grp_fu_4664_p_din0,grp_fu_4664_p_din1,grp_fu_4664_p_opcode,grp_fu_4664_p_dout0,grp_fu_4664_p_ce,grp_fu_4668_p_din0,grp_fu_4668_p_din1,grp_fu_4668_p_opcode,grp_fu_4668_p_dout0,grp_fu_4668_p_ce,grp_fu_4672_p_din0,grp_fu_4672_p_din1,grp_fu_4672_p_opcode,grp_fu_4672_p_dout0,grp_fu_4672_p_ce,grp_fu_4676_p_din0,grp_fu_4676_p_din1,grp_fu_4676_p_opcode,grp_fu_4676_p_dout0,grp_fu_4676_p_ce,grp_fu_4680_p_din0,grp_fu_4680_p_din1,grp_fu_4680_p_opcode,grp_fu_4680_p_dout0,grp_fu_4680_p_ce,grp_fu_4684_p_din0,grp_fu_4684_p_din1,grp_fu_4684_p_opcode,grp_fu_4684_p_dout0,grp_fu_4684_p_ce,grp_fu_4688_p_din0,grp_fu_4688_p_din1,grp_fu_4688_p_opcode,grp_fu_4688_p_dout0,grp_fu_4688_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [1:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [1:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [1:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [1:0] biases2_4_address0;
output   biases2_4_ce0;
input  [63:0] biases2_4_q0;
output  [1:0] biases2_5_address0;
output   biases2_5_ce0;
input  [63:0] biases2_5_q0;
output  [1:0] biases2_6_address0;
output   biases2_6_ce0;
input  [63:0] biases2_6_q0;
output  [1:0] biases2_7_address0;
output   biases2_7_ce0;
input  [63:0] biases2_7_q0;
output  [1:0] biases2_8_address0;
output   biases2_8_ce0;
input  [63:0] biases2_8_q0;
output  [1:0] biases2_9_address0;
output   biases2_9_ce0;
input  [63:0] biases2_9_q0;
output  [1:0] biases2_10_address0;
output   biases2_10_ce0;
input  [63:0] biases2_10_q0;
output  [1:0] biases2_11_address0;
output   biases2_11_ce0;
input  [63:0] biases2_11_q0;
output  [1:0] biases2_12_address0;
output   biases2_12_ce0;
input  [63:0] biases2_12_q0;
output  [1:0] biases2_13_address0;
output   biases2_13_ce0;
input  [63:0] biases2_13_q0;
output  [1:0] biases2_14_address0;
output   biases2_14_ce0;
input  [63:0] biases2_14_q0;
output  [1:0] biases2_15_address0;
output   biases2_15_ce0;
input  [63:0] biases2_15_q0;
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [7:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_4_address1;
output   weights2_4_ce1;
input  [63:0] weights2_4_q1;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_5_address1;
output   weights2_5_ce1;
input  [63:0] weights2_5_q1;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_6_address1;
output   weights2_6_ce1;
input  [63:0] weights2_6_q1;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_7_address1;
output   weights2_7_ce1;
input  [63:0] weights2_7_q1;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_8_address1;
output   weights2_8_ce1;
input  [63:0] weights2_8_q1;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_9_address1;
output   weights2_9_ce1;
input  [63:0] weights2_9_q1;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_10_address1;
output   weights2_10_ce1;
input  [63:0] weights2_10_q1;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_11_address1;
output   weights2_11_ce1;
input  [63:0] weights2_11_q1;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_12_address1;
output   weights2_12_ce1;
input  [63:0] weights2_12_q1;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_13_address1;
output   weights2_13_ce1;
input  [63:0] weights2_13_q1;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [7:0] weights2_14_address1;
output   weights2_14_ce1;
input  [63:0] weights2_14_q1;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [7:0] weights2_15_address1;
output   weights2_15_ce1;
input  [63:0] weights2_15_q1;
output  [1:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [1:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [1:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [1:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
output  [1:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [1:0] activations_2_address1;
output   activations_2_ce1;
input  [63:0] activations_2_q1;
output  [1:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [1:0] activations_3_address1;
output   activations_3_ce1;
input  [63:0] activations_3_q1;
output  [1:0] activations_4_address0;
output   activations_4_ce0;
output   activations_4_we0;
output  [63:0] activations_4_d0;
output  [1:0] activations_4_address1;
output   activations_4_ce1;
input  [63:0] activations_4_q1;
output  [1:0] activations_5_address0;
output   activations_5_ce0;
output   activations_5_we0;
output  [63:0] activations_5_d0;
output  [1:0] activations_5_address1;
output   activations_5_ce1;
input  [63:0] activations_5_q1;
output  [1:0] activations_6_address0;
output   activations_6_ce0;
output   activations_6_we0;
output  [63:0] activations_6_d0;
output  [1:0] activations_6_address1;
output   activations_6_ce1;
input  [63:0] activations_6_q1;
output  [1:0] activations_7_address0;
output   activations_7_ce0;
output   activations_7_we0;
output  [63:0] activations_7_d0;
output  [1:0] activations_7_address1;
output   activations_7_ce1;
input  [63:0] activations_7_q1;
output  [1:0] activations_8_address0;
output   activations_8_ce0;
output   activations_8_we0;
output  [63:0] activations_8_d0;
output  [1:0] activations_8_address1;
output   activations_8_ce1;
input  [63:0] activations_8_q1;
output  [1:0] activations_9_address0;
output   activations_9_ce0;
output   activations_9_we0;
output  [63:0] activations_9_d0;
output  [1:0] activations_9_address1;
output   activations_9_ce1;
input  [63:0] activations_9_q1;
output  [1:0] activations_10_address0;
output   activations_10_ce0;
output   activations_10_we0;
output  [63:0] activations_10_d0;
output  [1:0] activations_10_address1;
output   activations_10_ce1;
input  [63:0] activations_10_q1;
output  [1:0] activations_11_address0;
output   activations_11_ce0;
output   activations_11_we0;
output  [63:0] activations_11_d0;
output  [1:0] activations_11_address1;
output   activations_11_ce1;
input  [63:0] activations_11_q1;
output  [1:0] activations_12_address0;
output   activations_12_ce0;
output   activations_12_we0;
output  [63:0] activations_12_d0;
output  [1:0] activations_12_address1;
output   activations_12_ce1;
input  [63:0] activations_12_q1;
output  [1:0] activations_13_address0;
output   activations_13_ce0;
output   activations_13_we0;
output  [63:0] activations_13_d0;
output  [1:0] activations_13_address1;
output   activations_13_ce1;
input  [63:0] activations_13_q1;
output  [1:0] activations_14_address0;
output   activations_14_ce0;
output   activations_14_we0;
output  [63:0] activations_14_d0;
output  [1:0] activations_14_address1;
output   activations_14_ce1;
input  [63:0] activations_14_q1;
output  [1:0] activations_15_address0;
output   activations_15_ce0;
output   activations_15_we0;
output  [63:0] activations_15_d0;
output  [1:0] activations_15_address1;
output   activations_15_ce1;
input  [63:0] activations_15_q1;
output  [1:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [1:0] input_activations_0_address1;
output   input_activations_0_ce1;
input  [63:0] input_activations_0_q1;
output  [1:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [1:0] input_activations_1_address1;
output   input_activations_1_ce1;
input  [63:0] input_activations_1_q1;
output  [1:0] input_activations_2_address0;
output   input_activations_2_ce0;
input  [63:0] input_activations_2_q0;
output  [1:0] input_activations_2_address1;
output   input_activations_2_ce1;
input  [63:0] input_activations_2_q1;
output  [1:0] input_activations_3_address0;
output   input_activations_3_ce0;
input  [63:0] input_activations_3_q0;
output  [1:0] input_activations_3_address1;
output   input_activations_3_ce1;
input  [63:0] input_activations_3_q1;
output  [1:0] input_activations_4_address0;
output   input_activations_4_ce0;
input  [63:0] input_activations_4_q0;
output  [1:0] input_activations_4_address1;
output   input_activations_4_ce1;
input  [63:0] input_activations_4_q1;
output  [1:0] input_activations_5_address0;
output   input_activations_5_ce0;
input  [63:0] input_activations_5_q0;
output  [1:0] input_activations_5_address1;
output   input_activations_5_ce1;
input  [63:0] input_activations_5_q1;
output  [1:0] input_activations_6_address0;
output   input_activations_6_ce0;
input  [63:0] input_activations_6_q0;
output  [1:0] input_activations_6_address1;
output   input_activations_6_ce1;
input  [63:0] input_activations_6_q1;
output  [1:0] input_activations_7_address0;
output   input_activations_7_ce0;
input  [63:0] input_activations_7_q0;
output  [1:0] input_activations_7_address1;
output   input_activations_7_ce1;
input  [63:0] input_activations_7_q1;
output  [1:0] input_activations_8_address0;
output   input_activations_8_ce0;
input  [63:0] input_activations_8_q0;
output  [1:0] input_activations_8_address1;
output   input_activations_8_ce1;
input  [63:0] input_activations_8_q1;
output  [1:0] input_activations_9_address0;
output   input_activations_9_ce0;
input  [63:0] input_activations_9_q0;
output  [1:0] input_activations_9_address1;
output   input_activations_9_ce1;
input  [63:0] input_activations_9_q1;
output  [1:0] input_activations_10_address0;
output   input_activations_10_ce0;
input  [63:0] input_activations_10_q0;
output  [1:0] input_activations_10_address1;
output   input_activations_10_ce1;
input  [63:0] input_activations_10_q1;
output  [1:0] input_activations_11_address0;
output   input_activations_11_ce0;
input  [63:0] input_activations_11_q0;
output  [1:0] input_activations_11_address1;
output   input_activations_11_ce1;
input  [63:0] input_activations_11_q1;
output  [1:0] input_activations_12_address0;
output   input_activations_12_ce0;
input  [63:0] input_activations_12_q0;
output  [1:0] input_activations_12_address1;
output   input_activations_12_ce1;
input  [63:0] input_activations_12_q1;
output  [1:0] input_activations_13_address0;
output   input_activations_13_ce0;
input  [63:0] input_activations_13_q0;
output  [1:0] input_activations_13_address1;
output   input_activations_13_ce1;
input  [63:0] input_activations_13_q1;
output  [1:0] input_activations_14_address0;
output   input_activations_14_ce0;
input  [63:0] input_activations_14_q0;
output  [1:0] input_activations_14_address1;
output   input_activations_14_ce1;
input  [63:0] input_activations_14_q1;
output  [1:0] input_activations_15_address0;
output   input_activations_15_ce0;
input  [63:0] input_activations_15_q0;
output  [1:0] input_activations_15_address1;
output   input_activations_15_ce1;
input  [63:0] input_activations_15_q1;
output  [63:0] grp_fu_4564_p_din0;
output  [63:0] grp_fu_4564_p_din1;
output  [0:0] grp_fu_4564_p_opcode;
input  [63:0] grp_fu_4564_p_dout0;
output   grp_fu_4564_p_ce;
output  [63:0] grp_fu_4568_p_din0;
output  [63:0] grp_fu_4568_p_din1;
output  [0:0] grp_fu_4568_p_opcode;
input  [63:0] grp_fu_4568_p_dout0;
output   grp_fu_4568_p_ce;
output  [63:0] grp_fu_4572_p_din0;
output  [63:0] grp_fu_4572_p_din1;
output  [0:0] grp_fu_4572_p_opcode;
input  [63:0] grp_fu_4572_p_dout0;
output   grp_fu_4572_p_ce;
output  [63:0] grp_fu_4576_p_din0;
output  [63:0] grp_fu_4576_p_din1;
output  [0:0] grp_fu_4576_p_opcode;
input  [63:0] grp_fu_4576_p_dout0;
output   grp_fu_4576_p_ce;
output  [63:0] grp_fu_4580_p_din0;
output  [63:0] grp_fu_4580_p_din1;
output  [0:0] grp_fu_4580_p_opcode;
input  [63:0] grp_fu_4580_p_dout0;
output   grp_fu_4580_p_ce;
output  [63:0] grp_fu_4584_p_din0;
output  [63:0] grp_fu_4584_p_din1;
output  [0:0] grp_fu_4584_p_opcode;
input  [63:0] grp_fu_4584_p_dout0;
output   grp_fu_4584_p_ce;
output  [63:0] grp_fu_4588_p_din0;
output  [63:0] grp_fu_4588_p_din1;
output  [1:0] grp_fu_4588_p_opcode;
input  [63:0] grp_fu_4588_p_dout0;
output   grp_fu_4588_p_ce;
output  [63:0] grp_fu_4592_p_din0;
output  [63:0] grp_fu_4592_p_din1;
output  [1:0] grp_fu_4592_p_opcode;
input  [63:0] grp_fu_4592_p_dout0;
output   grp_fu_4592_p_ce;
output  [63:0] grp_fu_4596_p_din0;
output  [63:0] grp_fu_4596_p_din1;
output  [1:0] grp_fu_4596_p_opcode;
input  [63:0] grp_fu_4596_p_dout0;
output   grp_fu_4596_p_ce;
output  [63:0] grp_fu_4600_p_din0;
output  [63:0] grp_fu_4600_p_din1;
output  [1:0] grp_fu_4600_p_opcode;
input  [63:0] grp_fu_4600_p_dout0;
output   grp_fu_4600_p_ce;
output  [63:0] grp_fu_4604_p_din0;
output  [63:0] grp_fu_4604_p_din1;
output  [1:0] grp_fu_4604_p_opcode;
input  [63:0] grp_fu_4604_p_dout0;
output   grp_fu_4604_p_ce;
output  [63:0] grp_fu_4608_p_din0;
output  [63:0] grp_fu_4608_p_din1;
output  [1:0] grp_fu_4608_p_opcode;
input  [63:0] grp_fu_4608_p_dout0;
output   grp_fu_4608_p_ce;
output  [63:0] grp_fu_4612_p_din0;
output  [63:0] grp_fu_4612_p_din1;
output  [1:0] grp_fu_4612_p_opcode;
input  [63:0] grp_fu_4612_p_dout0;
output   grp_fu_4612_p_ce;
output  [63:0] grp_fu_4616_p_din0;
output  [63:0] grp_fu_4616_p_din1;
output  [1:0] grp_fu_4616_p_opcode;
input  [63:0] grp_fu_4616_p_dout0;
output   grp_fu_4616_p_ce;
output  [63:0] grp_fu_4620_p_din0;
output  [63:0] grp_fu_4620_p_din1;
output  [1:0] grp_fu_4620_p_opcode;
input  [63:0] grp_fu_4620_p_dout0;
output   grp_fu_4620_p_ce;
output  [63:0] grp_fu_4624_p_din0;
output  [63:0] grp_fu_4624_p_din1;
output  [1:0] grp_fu_4624_p_opcode;
input  [63:0] grp_fu_4624_p_dout0;
output   grp_fu_4624_p_ce;
output  [63:0] grp_fu_4628_p_din0;
output  [63:0] grp_fu_4628_p_din1;
output  [1:0] grp_fu_4628_p_opcode;
input  [63:0] grp_fu_4628_p_dout0;
output   grp_fu_4628_p_ce;
output  [63:0] grp_fu_4632_p_din0;
output  [63:0] grp_fu_4632_p_din1;
output  [1:0] grp_fu_4632_p_opcode;
input  [63:0] grp_fu_4632_p_dout0;
output   grp_fu_4632_p_ce;
output  [63:0] grp_fu_4636_p_din0;
output  [63:0] grp_fu_4636_p_din1;
output  [1:0] grp_fu_4636_p_opcode;
input  [63:0] grp_fu_4636_p_dout0;
output   grp_fu_4636_p_ce;
output  [63:0] grp_fu_4640_p_din0;
output  [63:0] grp_fu_4640_p_din1;
output  [1:0] grp_fu_4640_p_opcode;
input  [63:0] grp_fu_4640_p_dout0;
output   grp_fu_4640_p_ce;
output  [63:0] grp_fu_4644_p_din0;
output  [63:0] grp_fu_4644_p_din1;
output  [1:0] grp_fu_4644_p_opcode;
input  [63:0] grp_fu_4644_p_dout0;
output   grp_fu_4644_p_ce;
output  [63:0] grp_fu_4648_p_din0;
output  [63:0] grp_fu_4648_p_din1;
output  [1:0] grp_fu_4648_p_opcode;
input  [63:0] grp_fu_4648_p_dout0;
output   grp_fu_4648_p_ce;
output  [63:0] grp_fu_4652_p_din0;
output  [63:0] grp_fu_4652_p_din1;
output  [1:0] grp_fu_4652_p_opcode;
input  [63:0] grp_fu_4652_p_dout0;
output   grp_fu_4652_p_ce;
output  [63:0] grp_fu_4656_p_din0;
output  [63:0] grp_fu_4656_p_din1;
output  [1:0] grp_fu_4656_p_opcode;
input  [63:0] grp_fu_4656_p_dout0;
output   grp_fu_4656_p_ce;
output  [63:0] grp_fu_4660_p_din0;
output  [63:0] grp_fu_4660_p_din1;
output  [1:0] grp_fu_4660_p_opcode;
input  [63:0] grp_fu_4660_p_dout0;
output   grp_fu_4660_p_ce;
output  [63:0] grp_fu_4664_p_din0;
output  [63:0] grp_fu_4664_p_din1;
output  [1:0] grp_fu_4664_p_opcode;
input  [63:0] grp_fu_4664_p_dout0;
output   grp_fu_4664_p_ce;
output  [63:0] grp_fu_4668_p_din0;
output  [63:0] grp_fu_4668_p_din1;
output  [1:0] grp_fu_4668_p_opcode;
input  [63:0] grp_fu_4668_p_dout0;
output   grp_fu_4668_p_ce;
output  [63:0] grp_fu_4672_p_din0;
output  [63:0] grp_fu_4672_p_din1;
output  [1:0] grp_fu_4672_p_opcode;
input  [63:0] grp_fu_4672_p_dout0;
output   grp_fu_4672_p_ce;
output  [63:0] grp_fu_4676_p_din0;
output  [63:0] grp_fu_4676_p_din1;
output  [1:0] grp_fu_4676_p_opcode;
input  [63:0] grp_fu_4676_p_dout0;
output   grp_fu_4676_p_ce;
output  [63:0] grp_fu_4680_p_din0;
output  [63:0] grp_fu_4680_p_din1;
output  [1:0] grp_fu_4680_p_opcode;
input  [63:0] grp_fu_4680_p_dout0;
output   grp_fu_4680_p_ce;
output  [63:0] grp_fu_4684_p_din0;
output  [63:0] grp_fu_4684_p_din1;
output  [1:0] grp_fu_4684_p_opcode;
input  [63:0] grp_fu_4684_p_dout0;
output   grp_fu_4684_p_ce;
output  [63:0] grp_fu_4688_p_din0;
output  [63:0] grp_fu_4688_p_din1;
output  [1:0] grp_fu_4688_p_opcode;
input  [63:0] grp_fu_4688_p_dout0;
output   grp_fu_4688_p_ce;
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
reg[1:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[1:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg activations_1_ce1;
reg[1:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg activations_2_ce1;
reg[1:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg activations_3_ce1;
reg[1:0] activations_4_address0;
reg activations_4_ce0;
reg activations_4_we0;
reg[63:0] activations_4_d0;
reg activations_4_ce1;
reg[1:0] activations_5_address0;
reg activations_5_ce0;
reg activations_5_we0;
reg[63:0] activations_5_d0;
reg activations_5_ce1;
reg[1:0] activations_6_address0;
reg activations_6_ce0;
reg activations_6_we0;
reg[63:0] activations_6_d0;
reg activations_6_ce1;
reg[1:0] activations_7_address0;
reg activations_7_ce0;
reg activations_7_we0;
reg[63:0] activations_7_d0;
reg activations_7_ce1;
reg[1:0] activations_8_address0;
reg activations_8_ce0;
reg activations_8_we0;
reg[63:0] activations_8_d0;
reg activations_8_ce1;
reg[1:0] activations_9_address0;
reg activations_9_ce0;
reg activations_9_we0;
reg[63:0] activations_9_d0;
reg activations_9_ce1;
reg[1:0] activations_10_address0;
reg activations_10_ce0;
reg activations_10_we0;
reg[63:0] activations_10_d0;
reg activations_10_ce1;
reg[1:0] activations_11_address0;
reg activations_11_ce0;
reg activations_11_we0;
reg[63:0] activations_11_d0;
reg activations_11_ce1;
reg[1:0] activations_12_address0;
reg activations_12_ce0;
reg activations_12_we0;
reg[63:0] activations_12_d0;
reg activations_12_ce1;
reg[1:0] activations_13_address0;
reg activations_13_ce0;
reg activations_13_we0;
reg[63:0] activations_13_d0;
reg activations_13_ce1;
reg[1:0] activations_14_address0;
reg activations_14_ce0;
reg activations_14_we0;
reg[63:0] activations_14_d0;
reg activations_14_ce1;
reg[1:0] activations_15_address0;
reg activations_15_ce0;
reg activations_15_we0;
reg[63:0] activations_15_d0;
reg activations_15_ce1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_1262;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_1267;
reg   [63:0] input_activations_2_load_reg_1272;
reg   [63:0] input_activations_3_load_reg_1277;
reg   [63:0] input_activations_4_load_reg_1282;
reg   [63:0] input_activations_5_load_reg_1287;
reg   [63:0] input_activations_6_load_reg_1292;
reg   [63:0] input_activations_7_load_reg_1297;
reg   [63:0] input_activations_8_load_reg_1302;
reg   [63:0] input_activations_9_load_reg_1307;
reg   [63:0] input_activations_10_load_reg_1312;
reg   [63:0] input_activations_11_load_reg_1317;
reg   [63:0] input_activations_12_load_reg_1322;
reg   [63:0] input_activations_13_load_reg_1327;
reg   [63:0] input_activations_14_load_reg_1332;
reg   [63:0] input_activations_15_load_reg_1337;
reg   [63:0] input_activations_0_load_1_reg_1342;
reg   [63:0] input_activations_1_load_1_reg_1347;
reg   [63:0] input_activations_2_load_1_reg_1352;
reg   [63:0] input_activations_3_load_1_reg_1357;
reg   [63:0] input_activations_4_load_1_reg_1362;
reg   [63:0] input_activations_5_load_1_reg_1367;
reg   [63:0] input_activations_6_load_1_reg_1372;
reg   [63:0] input_activations_7_load_1_reg_1377;
reg   [63:0] input_activations_8_load_1_reg_1382;
reg   [63:0] input_activations_9_load_1_reg_1387;
reg   [63:0] input_activations_10_load_1_reg_1392;
reg   [63:0] input_activations_11_load_1_reg_1397;
reg   [63:0] input_activations_12_load_1_reg_1402;
reg   [63:0] input_activations_13_load_1_reg_1407;
reg   [63:0] input_activations_14_load_1_reg_1412;
reg   [63:0] input_activations_15_load_1_reg_1417;
reg   [63:0] input_activations_0_load_2_reg_1582;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_2_reg_1587;
reg   [63:0] input_activations_2_load_2_reg_1592;
reg   [63:0] input_activations_3_load_2_reg_1597;
reg   [63:0] input_activations_4_load_2_reg_1602;
reg   [63:0] input_activations_5_load_2_reg_1607;
reg   [63:0] input_activations_6_load_2_reg_1612;
reg   [63:0] input_activations_7_load_2_reg_1617;
reg   [63:0] input_activations_8_load_2_reg_1622;
reg   [63:0] input_activations_9_load_2_reg_1627;
reg   [63:0] input_activations_10_load_2_reg_1632;
reg   [63:0] input_activations_11_load_2_reg_1637;
reg   [63:0] input_activations_12_load_2_reg_1642;
reg   [63:0] input_activations_13_load_2_reg_1647;
reg   [63:0] input_activations_14_load_2_reg_1652;
reg   [63:0] input_activations_15_load_2_reg_1657;
reg   [63:0] input_activations_0_load_3_reg_1662;
reg   [63:0] input_activations_1_load_3_reg_1667;
reg   [63:0] input_activations_2_load_3_reg_1672;
reg   [63:0] input_activations_3_load_3_reg_1677;
reg   [63:0] input_activations_4_load_3_reg_1682;
reg   [63:0] input_activations_5_load_3_reg_1687;
reg   [63:0] input_activations_6_load_3_reg_1692;
reg   [63:0] input_activations_7_load_3_reg_1697;
reg   [63:0] input_activations_8_load_3_reg_1702;
reg   [63:0] input_activations_9_load_3_reg_1707;
reg   [63:0] input_activations_10_load_3_reg_1712;
reg   [63:0] input_activations_11_load_3_reg_1717;
reg   [63:0] input_activations_12_load_3_reg_1722;
reg   [63:0] input_activations_13_load_3_reg_1727;
reg   [63:0] input_activations_14_load_3_reg_1732;
reg   [63:0] input_activations_15_load_3_reg_1737;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_ready;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_d0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_ready;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    input_activations_0_ce1_local;
reg   [1:0] input_activations_0_address1_local;
reg    input_activations_0_ce0_local;
reg   [1:0] input_activations_0_address0_local;
reg    input_activations_1_ce1_local;
reg   [1:0] input_activations_1_address1_local;
reg    input_activations_1_ce0_local;
reg   [1:0] input_activations_1_address0_local;
reg    input_activations_2_ce1_local;
reg   [1:0] input_activations_2_address1_local;
reg    input_activations_2_ce0_local;
reg   [1:0] input_activations_2_address0_local;
reg    input_activations_3_ce1_local;
reg   [1:0] input_activations_3_address1_local;
reg    input_activations_3_ce0_local;
reg   [1:0] input_activations_3_address0_local;
reg    input_activations_4_ce1_local;
reg   [1:0] input_activations_4_address1_local;
reg    input_activations_4_ce0_local;
reg   [1:0] input_activations_4_address0_local;
reg    input_activations_5_ce1_local;
reg   [1:0] input_activations_5_address1_local;
reg    input_activations_5_ce0_local;
reg   [1:0] input_activations_5_address0_local;
reg    input_activations_6_ce1_local;
reg   [1:0] input_activations_6_address1_local;
reg    input_activations_6_ce0_local;
reg   [1:0] input_activations_6_address0_local;
reg    input_activations_7_ce1_local;
reg   [1:0] input_activations_7_address1_local;
reg    input_activations_7_ce0_local;
reg   [1:0] input_activations_7_address0_local;
reg    input_activations_8_ce1_local;
reg   [1:0] input_activations_8_address1_local;
reg    input_activations_8_ce0_local;
reg   [1:0] input_activations_8_address0_local;
reg    input_activations_9_ce1_local;
reg   [1:0] input_activations_9_address1_local;
reg    input_activations_9_ce0_local;
reg   [1:0] input_activations_9_address0_local;
reg    input_activations_10_ce1_local;
reg   [1:0] input_activations_10_address1_local;
reg    input_activations_10_ce0_local;
reg   [1:0] input_activations_10_address0_local;
reg    input_activations_11_ce1_local;
reg   [1:0] input_activations_11_address1_local;
reg    input_activations_11_ce0_local;
reg   [1:0] input_activations_11_address0_local;
reg    input_activations_12_ce1_local;
reg   [1:0] input_activations_12_address1_local;
reg    input_activations_12_ce0_local;
reg   [1:0] input_activations_12_address0_local;
reg    input_activations_13_ce1_local;
reg   [1:0] input_activations_13_address1_local;
reg    input_activations_13_ce0_local;
reg   [1:0] input_activations_13_address0_local;
reg    input_activations_14_ce1_local;
reg   [1:0] input_activations_14_address1_local;
reg    input_activations_14_ce0_local;
reg   [1:0] input_activations_14_address0_local;
reg    input_activations_15_ce1_local;
reg   [1:0] input_activations_15_address1_local;
reg    input_activations_15_ce0_local;
reg   [1:0] input_activations_15_address0_local;
reg   [63:0] grp_fu_1742_p0;
reg   [63:0] grp_fu_1742_p1;
reg   [1:0] grp_fu_1742_opcode;
reg    grp_fu_1742_ce;
reg    grp_fu_1746_ce;
reg    grp_fu_1750_ce;
reg    grp_fu_1754_ce;
reg    grp_fu_1758_ce;
reg    grp_fu_1762_ce;
reg    grp_fu_1766_ce;
reg    grp_fu_1770_ce;
reg    grp_fu_1774_ce;
reg    grp_fu_1778_ce;
reg    grp_fu_1782_ce;
reg    grp_fu_1786_ce;
reg    grp_fu_1790_ce;
reg    grp_fu_1794_ce;
reg    grp_fu_1798_ce;
reg    grp_fu_1802_ce;
reg    grp_fu_1806_ce;
reg    grp_fu_1810_ce;
reg    grp_fu_1814_ce;
reg    grp_fu_1818_ce;
reg    grp_fu_1822_ce;
reg    grp_fu_1826_ce;
reg    grp_fu_1830_ce;
reg    grp_fu_1834_ce;
reg    grp_fu_1838_ce;
reg    grp_fu_1842_ce;
reg    grp_fu_1846_ce;
reg    grp_fu_1850_ce;
reg    grp_fu_1854_ce;
reg    grp_fu_1858_ce;
reg    grp_fu_1862_ce;
reg    grp_fu_1866_ce;
reg    grp_fu_1870_ce;
reg    grp_fu_1874_ce;
reg    grp_fu_1878_ce;
reg    grp_fu_1882_ce;
reg    grp_fu_1886_ce;
reg    grp_fu_1890_ce;
reg    grp_fu_1894_ce;
reg    grp_fu_1898_ce;
reg    grp_fu_1902_ce;
reg    grp_fu_1906_ce;
reg    grp_fu_1910_ce;
reg    grp_fu_1914_ce;
reg    grp_fu_1918_ce;
reg    grp_fu_1922_ce;
reg    grp_fu_1926_ce;
reg    grp_fu_1930_ce;
reg    grp_fu_1934_ce;
reg    grp_fu_1938_ce;
reg    grp_fu_1942_ce;
reg    grp_fu_1946_ce;
reg    grp_fu_1950_ce;
reg    grp_fu_1954_ce;
reg    grp_fu_1958_ce;
reg    grp_fu_1962_ce;
reg    grp_fu_1966_ce;
reg    grp_fu_1970_ce;
reg    grp_fu_1974_ce;
reg    grp_fu_1978_ce;
reg    grp_fu_1982_ce;
reg    grp_fu_1986_ce;
reg    grp_fu_1990_ce;
reg    grp_fu_1994_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_ready),.activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_address0),.activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_ce0),.activations_15_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_we0),.activations_15_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_d0),.activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_address0),.activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_ce0),.activations_14_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_we0),.activations_14_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_d0),.activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_address0),.activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_ce0),.activations_13_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_we0),.activations_13_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_d0),.activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_address0),.activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_ce0),.activations_12_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_we0),.activations_12_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_d0),.activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_address0),.activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_ce0),.activations_11_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_we0),.activations_11_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_d0),.activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_address0),.activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_ce0),.activations_10_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_we0),.activations_10_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_d0),.activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_address0),.activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_ce0),.activations_9_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_we0),.activations_9_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_d0),.activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_address0),.activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_ce0),.activations_8_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_we0),.activations_8_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_d0),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_d0),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_d0),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_d0),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_d0),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_d0),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_d0),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_d0),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_d0),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.input_activations_0_load(input_activations_0_load_reg_1262),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.input_activations_1_load(input_activations_1_load_reg_1267),.weights2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address0),.weights2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address1),.weights2_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.input_activations_2_load(input_activations_2_load_reg_1272),.weights2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address0),.weights2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address1),.weights2_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.input_activations_3_load(input_activations_3_load_reg_1277),.weights2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address0),.weights2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address1),.weights2_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.input_activations_4_load(input_activations_4_load_reg_1282),.weights2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address0),.weights2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address1),.weights2_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.input_activations_5_load(input_activations_5_load_reg_1287),.weights2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address0),.weights2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address1),.weights2_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.input_activations_6_load(input_activations_6_load_reg_1292),.weights2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address0),.weights2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address1),.weights2_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.input_activations_7_load(input_activations_7_load_reg_1297),.weights2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address0),.weights2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.weights2_8_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address1),.weights2_8_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce1),.weights2_8_q1(weights2_8_q1),.input_activations_8_load(input_activations_8_load_reg_1302),.weights2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address0),.weights2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.weights2_9_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address1),.weights2_9_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce1),.weights2_9_q1(weights2_9_q1),.input_activations_9_load(input_activations_9_load_reg_1307),.weights2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address0),.weights2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.weights2_10_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address1),.weights2_10_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce1),.weights2_10_q1(weights2_10_q1),.input_activations_10_load(input_activations_10_load_reg_1312),.weights2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address0),.weights2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.weights2_11_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address1),.weights2_11_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce1),.weights2_11_q1(weights2_11_q1),.input_activations_11_load(input_activations_11_load_reg_1317),.weights2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address0),.weights2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.weights2_12_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address1),.weights2_12_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce1),.weights2_12_q1(weights2_12_q1),.input_activations_12_load(input_activations_12_load_reg_1322),.weights2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address0),.weights2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.weights2_13_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address1),.weights2_13_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce1),.weights2_13_q1(weights2_13_q1),.input_activations_13_load(input_activations_13_load_reg_1327),.weights2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address0),.weights2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.weights2_14_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address1),.weights2_14_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce1),.weights2_14_q1(weights2_14_q1),.input_activations_14_load(input_activations_14_load_reg_1332),.weights2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address0),.weights2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.weights2_15_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address1),.weights2_15_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce1),.weights2_15_q1(weights2_15_q1),.input_activations_15_load(input_activations_15_load_reg_1337),.input_activations_0_load_1(input_activations_0_load_1_reg_1342),.input_activations_1_load_1(input_activations_1_load_1_reg_1347),.input_activations_2_load_1(input_activations_2_load_1_reg_1352),.input_activations_3_load_1(input_activations_3_load_1_reg_1357),.input_activations_4_load_1(input_activations_4_load_1_reg_1362),.input_activations_5_load_1(input_activations_5_load_1_reg_1367),.input_activations_6_load_1(input_activations_6_load_1_reg_1372),.input_activations_7_load_1(input_activations_7_load_1_reg_1377),.input_activations_8_load_1(input_activations_8_load_1_reg_1382),.input_activations_9_load_1(input_activations_9_load_1_reg_1387),.input_activations_10_load_1(input_activations_10_load_1_reg_1392),.input_activations_11_load_1(input_activations_11_load_1_reg_1397),.input_activations_12_load_1(input_activations_12_load_1_reg_1402),.input_activations_13_load_1(input_activations_13_load_1_reg_1407),.input_activations_14_load_1(input_activations_14_load_1_reg_1412),.input_activations_15_load_1(input_activations_15_load_1_reg_1417),.input_activations_0_load_2(input_activations_0_load_2_reg_1582),.input_activations_1_load_2(input_activations_1_load_2_reg_1587),.input_activations_2_load_2(input_activations_2_load_2_reg_1592),.input_activations_3_load_2(input_activations_3_load_2_reg_1597),.input_activations_4_load_2(input_activations_4_load_2_reg_1602),.input_activations_5_load_2(input_activations_5_load_2_reg_1607),.input_activations_6_load_2(input_activations_6_load_2_reg_1612),.input_activations_7_load_2(input_activations_7_load_2_reg_1617),.input_activations_8_load_2(input_activations_8_load_2_reg_1622),.input_activations_9_load_2(input_activations_9_load_2_reg_1627),.input_activations_10_load_2(input_activations_10_load_2_reg_1632),.input_activations_11_load_2(input_activations_11_load_2_reg_1637),.input_activations_12_load_2(input_activations_12_load_2_reg_1642),.input_activations_13_load_2(input_activations_13_load_2_reg_1647),.input_activations_14_load_2(input_activations_14_load_2_reg_1652),.input_activations_15_load_2(input_activations_15_load_2_reg_1657),.input_activations_0_load_3(input_activations_0_load_3_reg_1662),.input_activations_1_load_3(input_activations_1_load_3_reg_1667),.input_activations_2_load_3(input_activations_2_load_3_reg_1672),.input_activations_3_load_3(input_activations_3_load_3_reg_1677),.input_activations_4_load_3(input_activations_4_load_3_reg_1682),.input_activations_5_load_3(input_activations_5_load_3_reg_1687),.input_activations_6_load_3(input_activations_6_load_3_reg_1692),.input_activations_7_load_3(input_activations_7_load_3_reg_1697),.input_activations_8_load_3(input_activations_8_load_3_reg_1702),.input_activations_9_load_3(input_activations_9_load_3_reg_1707),.input_activations_10_load_3(input_activations_10_load_3_reg_1712),.input_activations_11_load_3(input_activations_11_load_3_reg_1717),.input_activations_12_load_3(input_activations_12_load_3_reg_1722),.input_activations_13_load_3(input_activations_13_load_3_reg_1727),.input_activations_14_load_3(input_activations_14_load_3_reg_1732),.input_activations_15_load_3(input_activations_15_load_3_reg_1737),.grp_fu_1742_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din1),.grp_fu_1742_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_opcode),.grp_fu_1742_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1742_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_ce),.grp_fu_1746_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din0),.grp_fu_1746_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din1),.grp_fu_1746_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_opcode),.grp_fu_1746_p_dout0(grp_fu_4568_p_dout0),.grp_fu_1746_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_ce),.grp_fu_1750_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din0),.grp_fu_1750_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din1),.grp_fu_1750_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_opcode),.grp_fu_1750_p_dout0(grp_fu_4572_p_dout0),.grp_fu_1750_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_ce),.grp_fu_1754_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din0),.grp_fu_1754_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din1),.grp_fu_1754_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_opcode),.grp_fu_1754_p_dout0(grp_fu_4576_p_dout0),.grp_fu_1754_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_ce),.grp_fu_1758_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din0),.grp_fu_1758_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din1),.grp_fu_1758_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_opcode),.grp_fu_1758_p_dout0(grp_fu_4580_p_dout0),.grp_fu_1758_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_ce),.grp_fu_1762_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din0),.grp_fu_1762_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din1),.grp_fu_1762_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_opcode),.grp_fu_1762_p_dout0(grp_fu_4584_p_dout0),.grp_fu_1762_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_ce),.grp_fu_1766_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din0),.grp_fu_1766_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din1),.grp_fu_1766_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_opcode),.grp_fu_1766_p_dout0(grp_fu_4588_p_dout0),.grp_fu_1766_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_ce),.grp_fu_1770_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din1),.grp_fu_1770_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_opcode),.grp_fu_1770_p_dout0(grp_fu_4592_p_dout0),.grp_fu_1770_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_ce),.grp_fu_1774_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din0),.grp_fu_1774_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din1),.grp_fu_1774_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_opcode),.grp_fu_1774_p_dout0(grp_fu_4596_p_dout0),.grp_fu_1774_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_ce),.grp_fu_1778_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din0),.grp_fu_1778_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din1),.grp_fu_1778_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_opcode),.grp_fu_1778_p_dout0(grp_fu_4600_p_dout0),.grp_fu_1778_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_ce),.grp_fu_1782_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din0),.grp_fu_1782_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din1),.grp_fu_1782_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_opcode),.grp_fu_1782_p_dout0(grp_fu_4604_p_dout0),.grp_fu_1782_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_ce),.grp_fu_1786_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din0),.grp_fu_1786_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din1),.grp_fu_1786_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_opcode),.grp_fu_1786_p_dout0(grp_fu_4608_p_dout0),.grp_fu_1786_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_ce),.grp_fu_1790_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din0),.grp_fu_1790_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din1),.grp_fu_1790_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_opcode),.grp_fu_1790_p_dout0(grp_fu_4612_p_dout0),.grp_fu_1790_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_ce),.grp_fu_1794_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din0),.grp_fu_1794_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din1),.grp_fu_1794_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_opcode),.grp_fu_1794_p_dout0(grp_fu_4616_p_dout0),.grp_fu_1794_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_ce),.grp_fu_1798_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din0),.grp_fu_1798_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din1),.grp_fu_1798_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_opcode),.grp_fu_1798_p_dout0(grp_fu_4620_p_dout0),.grp_fu_1798_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_ce),.grp_fu_1802_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din0),.grp_fu_1802_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din1),.grp_fu_1802_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_opcode),.grp_fu_1802_p_dout0(grp_fu_4624_p_dout0),.grp_fu_1802_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_ce),.grp_fu_1806_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din0),.grp_fu_1806_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din1),.grp_fu_1806_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_opcode),.grp_fu_1806_p_dout0(grp_fu_4628_p_dout0),.grp_fu_1806_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_ce),.grp_fu_1810_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din0),.grp_fu_1810_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din1),.grp_fu_1810_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_opcode),.grp_fu_1810_p_dout0(grp_fu_4632_p_dout0),.grp_fu_1810_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_ce),.grp_fu_1814_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din0),.grp_fu_1814_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din1),.grp_fu_1814_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_opcode),.grp_fu_1814_p_dout0(grp_fu_4636_p_dout0),.grp_fu_1814_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_ce),.grp_fu_1818_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din0),.grp_fu_1818_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din1),.grp_fu_1818_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_opcode),.grp_fu_1818_p_dout0(grp_fu_4640_p_dout0),.grp_fu_1818_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_ce),.grp_fu_1822_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din0),.grp_fu_1822_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din1),.grp_fu_1822_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_opcode),.grp_fu_1822_p_dout0(grp_fu_4644_p_dout0),.grp_fu_1822_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_ce),.grp_fu_1826_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din0),.grp_fu_1826_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din1),.grp_fu_1826_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_opcode),.grp_fu_1826_p_dout0(grp_fu_4648_p_dout0),.grp_fu_1826_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_ce),.grp_fu_1830_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din0),.grp_fu_1830_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din1),.grp_fu_1830_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_opcode),.grp_fu_1830_p_dout0(grp_fu_4652_p_dout0),.grp_fu_1830_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_ce),.grp_fu_1834_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din0),.grp_fu_1834_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din1),.grp_fu_1834_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_opcode),.grp_fu_1834_p_dout0(grp_fu_4656_p_dout0),.grp_fu_1834_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_ce),.grp_fu_1838_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din0),.grp_fu_1838_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din1),.grp_fu_1838_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_opcode),.grp_fu_1838_p_dout0(grp_fu_4660_p_dout0),.grp_fu_1838_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_ce),.grp_fu_1842_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din0),.grp_fu_1842_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din1),.grp_fu_1842_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_opcode),.grp_fu_1842_p_dout0(grp_fu_4664_p_dout0),.grp_fu_1842_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_ce),.grp_fu_1846_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din0),.grp_fu_1846_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din1),.grp_fu_1846_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_opcode),.grp_fu_1846_p_dout0(grp_fu_4668_p_dout0),.grp_fu_1846_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_ce),.grp_fu_1850_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din0),.grp_fu_1850_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din1),.grp_fu_1850_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_opcode),.grp_fu_1850_p_dout0(grp_fu_4672_p_dout0),.grp_fu_1850_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_ce),.grp_fu_1854_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din0),.grp_fu_1854_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din1),.grp_fu_1854_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_opcode),.grp_fu_1854_p_dout0(grp_fu_4676_p_dout0),.grp_fu_1854_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_ce),.grp_fu_1858_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din0),.grp_fu_1858_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din1),.grp_fu_1858_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_opcode),.grp_fu_1858_p_dout0(grp_fu_4680_p_dout0),.grp_fu_1858_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_ce),.grp_fu_1862_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din0),.grp_fu_1862_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din1),.grp_fu_1862_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_opcode),.grp_fu_1862_p_dout0(grp_fu_4684_p_dout0),.grp_fu_1862_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_ce),.grp_fu_1866_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din0),.grp_fu_1866_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din1),.grp_fu_1866_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_opcode),.grp_fu_1866_p_dout0(grp_fu_4688_p_dout0),.grp_fu_1866_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_ce),.grp_fu_1870_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din0),.grp_fu_1870_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din1),.grp_fu_1870_p_dout0(grp_fu_4692_p_dout0),.grp_fu_1870_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_ce),.grp_fu_1874_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din0),.grp_fu_1874_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din1),.grp_fu_1874_p_dout0(grp_fu_4696_p_dout0),.grp_fu_1874_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_ce),.grp_fu_1878_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din0),.grp_fu_1878_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din1),.grp_fu_1878_p_dout0(grp_fu_4700_p_dout0),.grp_fu_1878_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_ce),.grp_fu_1882_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din0),.grp_fu_1882_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din1),.grp_fu_1882_p_dout0(grp_fu_4704_p_dout0),.grp_fu_1882_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_ce),.grp_fu_1886_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din0),.grp_fu_1886_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din1),.grp_fu_1886_p_dout0(grp_fu_4708_p_dout0),.grp_fu_1886_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_ce),.grp_fu_1890_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din0),.grp_fu_1890_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din1),.grp_fu_1890_p_dout0(grp_fu_4712_p_dout0),.grp_fu_1890_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_ce),.grp_fu_1894_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din0),.grp_fu_1894_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din1),.grp_fu_1894_p_dout0(grp_fu_4716_p_dout0),.grp_fu_1894_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_ce),.grp_fu_1898_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din0),.grp_fu_1898_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din1),.grp_fu_1898_p_dout0(grp_fu_4720_p_dout0),.grp_fu_1898_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_ce),.grp_fu_1902_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din0),.grp_fu_1902_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din1),.grp_fu_1902_p_dout0(grp_fu_4724_p_dout0),.grp_fu_1902_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_ce),.grp_fu_1906_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din0),.grp_fu_1906_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din1),.grp_fu_1906_p_dout0(grp_fu_4728_p_dout0),.grp_fu_1906_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_ce),.grp_fu_1910_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din0),.grp_fu_1910_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din1),.grp_fu_1910_p_dout0(grp_fu_4732_p_dout0),.grp_fu_1910_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_ce),.grp_fu_1914_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din0),.grp_fu_1914_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din1),.grp_fu_1914_p_dout0(grp_fu_4736_p_dout0),.grp_fu_1914_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_ce),.grp_fu_1918_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din0),.grp_fu_1918_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din1),.grp_fu_1918_p_dout0(grp_fu_4740_p_dout0),.grp_fu_1918_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_ce),.grp_fu_1922_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din0),.grp_fu_1922_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din1),.grp_fu_1922_p_dout0(grp_fu_4744_p_dout0),.grp_fu_1922_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_ce),.grp_fu_1926_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din0),.grp_fu_1926_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din1),.grp_fu_1926_p_dout0(grp_fu_4748_p_dout0),.grp_fu_1926_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_ce),.grp_fu_1930_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din0),.grp_fu_1930_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din1),.grp_fu_1930_p_dout0(grp_fu_4752_p_dout0),.grp_fu_1930_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_ce),.grp_fu_1934_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din0),.grp_fu_1934_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din1),.grp_fu_1934_p_dout0(grp_fu_4756_p_dout0),.grp_fu_1934_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_ce),.grp_fu_1938_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din0),.grp_fu_1938_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din1),.grp_fu_1938_p_dout0(grp_fu_4760_p_dout0),.grp_fu_1938_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_ce),.grp_fu_1942_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din0),.grp_fu_1942_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din1),.grp_fu_1942_p_dout0(grp_fu_4764_p_dout0),.grp_fu_1942_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_ce),.grp_fu_1946_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din0),.grp_fu_1946_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din1),.grp_fu_1946_p_dout0(grp_fu_4768_p_dout0),.grp_fu_1946_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_ce),.grp_fu_1950_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din0),.grp_fu_1950_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din1),.grp_fu_1950_p_dout0(grp_fu_4772_p_dout0),.grp_fu_1950_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_ce),.grp_fu_1954_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din0),.grp_fu_1954_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din1),.grp_fu_1954_p_dout0(grp_fu_4776_p_dout0),.grp_fu_1954_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_ce),.grp_fu_1958_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din0),.grp_fu_1958_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din1),.grp_fu_1958_p_dout0(grp_fu_4780_p_dout0),.grp_fu_1958_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_ce),.grp_fu_1962_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din0),.grp_fu_1962_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din1),.grp_fu_1962_p_dout0(grp_fu_4784_p_dout0),.grp_fu_1962_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_ce),.grp_fu_1966_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din0),.grp_fu_1966_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din1),.grp_fu_1966_p_dout0(grp_fu_4788_p_dout0),.grp_fu_1966_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_ce),.grp_fu_1970_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din0),.grp_fu_1970_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din1),.grp_fu_1970_p_dout0(grp_fu_4792_p_dout0),.grp_fu_1970_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_ce),.grp_fu_1974_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din0),.grp_fu_1974_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din1),.grp_fu_1974_p_dout0(grp_fu_4796_p_dout0),.grp_fu_1974_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_ce),.grp_fu_1978_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din0),.grp_fu_1978_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din1),.grp_fu_1978_p_dout0(grp_fu_4800_p_dout0),.grp_fu_1978_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_ce),.grp_fu_1982_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din0),.grp_fu_1982_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din1),.grp_fu_1982_p_dout0(grp_fu_4804_p_dout0),.grp_fu_1982_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_ce),.grp_fu_1986_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din0),.grp_fu_1986_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din1),.grp_fu_1986_p_dout0(grp_fu_4808_p_dout0),.grp_fu_1986_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_ce),.grp_fu_1990_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din0),.grp_fu_1990_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din1),.grp_fu_1990_p_dout0(grp_fu_4812_p_dout0),.grp_fu_1990_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_ce),.grp_fu_1994_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din0),.grp_fu_1994_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din1),.grp_fu_1994_p_dout0(grp_fu_4816_p_dout0),.grp_fu_1994_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_ready),.activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address0),.activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce0),.activations_15_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_we0),.activations_15_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_d0),.activations_15_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address1),.activations_15_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce1),.activations_15_q1(activations_15_q1),.activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address0),.activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce0),.activations_14_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_we0),.activations_14_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_d0),.activations_14_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address1),.activations_14_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce1),.activations_14_q1(activations_14_q1),.activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address0),.activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce0),.activations_13_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_we0),.activations_13_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_d0),.activations_13_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address1),.activations_13_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce1),.activations_13_q1(activations_13_q1),.activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address0),.activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce0),.activations_12_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_we0),.activations_12_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_d0),.activations_12_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address1),.activations_12_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce1),.activations_12_q1(activations_12_q1),.activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address0),.activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce0),.activations_11_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_we0),.activations_11_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_d0),.activations_11_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address1),.activations_11_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce1),.activations_11_q1(activations_11_q1),.activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address0),.activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce0),.activations_10_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_we0),.activations_10_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_d0),.activations_10_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address1),.activations_10_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce1),.activations_10_q1(activations_10_q1),.activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address0),.activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce0),.activations_9_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_we0),.activations_9_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_d0),.activations_9_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address1),.activations_9_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce1),.activations_9_q1(activations_9_q1),.activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address0),.activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce0),.activations_8_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_we0),.activations_8_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_d0),.activations_8_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address1),.activations_8_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce1),.activations_8_q1(activations_8_q1),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce1),.activations_7_q1(activations_7_q1),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce1),.activations_6_q1(activations_6_q1),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce1),.activations_5_q1(activations_5_q1),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce1),.activations_4_q1(activations_4_q1),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.biases2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_address0),.biases2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_ce0),.biases2_2_q0(biases2_2_q0),.biases2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_address0),.biases2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_ce0),.biases2_3_q0(biases2_3_q0),.biases2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_address0),.biases2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_ce0),.biases2_4_q0(biases2_4_q0),.biases2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_address0),.biases2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_ce0),.biases2_5_q0(biases2_5_q0),.biases2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_address0),.biases2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_ce0),.biases2_6_q0(biases2_6_q0),.biases2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_address0),.biases2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_ce0),.biases2_7_q0(biases2_7_q0),.biases2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_address0),.biases2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_ce0),.biases2_8_q0(biases2_8_q0),.biases2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_address0),.biases2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_ce0),.biases2_9_q0(biases2_9_q0),.biases2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_address0),.biases2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_ce0),.biases2_10_q0(biases2_10_q0),.biases2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_address0),.biases2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_ce0),.biases2_11_q0(biases2_11_q0),.biases2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_address0),.biases2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_ce0),.biases2_12_q0(biases2_12_q0),.biases2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_address0),.biases2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_ce0),.biases2_13_q0(biases2_13_q0),.biases2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_address0),.biases2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_ce0),.biases2_14_q0(biases2_14_q0),.biases2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_address0),.biases2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_ce0),.biases2_15_q0(biases2_15_q0),.grp_fu_1742_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din1),.grp_fu_1742_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_opcode),.grp_fu_1742_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1742_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_1_reg_1342 <= input_activations_0_q0;
        input_activations_0_load_reg_1262 <= input_activations_0_q1;
        input_activations_10_load_1_reg_1392 <= input_activations_10_q0;
        input_activations_10_load_reg_1312 <= input_activations_10_q1;
        input_activations_11_load_1_reg_1397 <= input_activations_11_q0;
        input_activations_11_load_reg_1317 <= input_activations_11_q1;
        input_activations_12_load_1_reg_1402 <= input_activations_12_q0;
        input_activations_12_load_reg_1322 <= input_activations_12_q1;
        input_activations_13_load_1_reg_1407 <= input_activations_13_q0;
        input_activations_13_load_reg_1327 <= input_activations_13_q1;
        input_activations_14_load_1_reg_1412 <= input_activations_14_q0;
        input_activations_14_load_reg_1332 <= input_activations_14_q1;
        input_activations_15_load_1_reg_1417 <= input_activations_15_q0;
        input_activations_15_load_reg_1337 <= input_activations_15_q1;
        input_activations_1_load_1_reg_1347 <= input_activations_1_q0;
        input_activations_1_load_reg_1267 <= input_activations_1_q1;
        input_activations_2_load_1_reg_1352 <= input_activations_2_q0;
        input_activations_2_load_reg_1272 <= input_activations_2_q1;
        input_activations_3_load_1_reg_1357 <= input_activations_3_q0;
        input_activations_3_load_reg_1277 <= input_activations_3_q1;
        input_activations_4_load_1_reg_1362 <= input_activations_4_q0;
        input_activations_4_load_reg_1282 <= input_activations_4_q1;
        input_activations_5_load_1_reg_1367 <= input_activations_5_q0;
        input_activations_5_load_reg_1287 <= input_activations_5_q1;
        input_activations_6_load_1_reg_1372 <= input_activations_6_q0;
        input_activations_6_load_reg_1292 <= input_activations_6_q1;
        input_activations_7_load_1_reg_1377 <= input_activations_7_q0;
        input_activations_7_load_reg_1297 <= input_activations_7_q1;
        input_activations_8_load_1_reg_1382 <= input_activations_8_q0;
        input_activations_8_load_reg_1302 <= input_activations_8_q1;
        input_activations_9_load_1_reg_1387 <= input_activations_9_q0;
        input_activations_9_load_reg_1307 <= input_activations_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_2_reg_1582 <= input_activations_0_q1;
        input_activations_0_load_3_reg_1662 <= input_activations_0_q0;
        input_activations_10_load_2_reg_1632 <= input_activations_10_q1;
        input_activations_10_load_3_reg_1712 <= input_activations_10_q0;
        input_activations_11_load_2_reg_1637 <= input_activations_11_q1;
        input_activations_11_load_3_reg_1717 <= input_activations_11_q0;
        input_activations_12_load_2_reg_1642 <= input_activations_12_q1;
        input_activations_12_load_3_reg_1722 <= input_activations_12_q0;
        input_activations_13_load_2_reg_1647 <= input_activations_13_q1;
        input_activations_13_load_3_reg_1727 <= input_activations_13_q0;
        input_activations_14_load_2_reg_1652 <= input_activations_14_q1;
        input_activations_14_load_3_reg_1732 <= input_activations_14_q0;
        input_activations_15_load_2_reg_1657 <= input_activations_15_q1;
        input_activations_15_load_3_reg_1737 <= input_activations_15_q0;
        input_activations_1_load_2_reg_1587 <= input_activations_1_q1;
        input_activations_1_load_3_reg_1667 <= input_activations_1_q0;
        input_activations_2_load_2_reg_1592 <= input_activations_2_q1;
        input_activations_2_load_3_reg_1672 <= input_activations_2_q0;
        input_activations_3_load_2_reg_1597 <= input_activations_3_q1;
        input_activations_3_load_3_reg_1677 <= input_activations_3_q0;
        input_activations_4_load_2_reg_1602 <= input_activations_4_q1;
        input_activations_4_load_3_reg_1682 <= input_activations_4_q0;
        input_activations_5_load_2_reg_1607 <= input_activations_5_q1;
        input_activations_5_load_3_reg_1687 <= input_activations_5_q0;
        input_activations_6_load_2_reg_1612 <= input_activations_6_q1;
        input_activations_6_load_3_reg_1692 <= input_activations_6_q0;
        input_activations_7_load_2_reg_1617 <= input_activations_7_q1;
        input_activations_7_load_3_reg_1697 <= input_activations_7_q0;
        input_activations_8_load_2_reg_1622 <= input_activations_8_q1;
        input_activations_8_load_3_reg_1702 <= input_activations_8_q0;
        input_activations_9_load_2_reg_1627 <= input_activations_9_q1;
        input_activations_9_load_3_reg_1707 <= input_activations_9_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_address0;
    end else begin
        activations_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_ce0;
    end else begin
        activations_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_ce1;
    end else begin
        activations_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_d0;
    end else begin
        activations_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_10_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_10_we0;
    end else begin
        activations_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_address0;
    end else begin
        activations_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_ce0;
    end else begin
        activations_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_ce1;
    end else begin
        activations_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_d0;
    end else begin
        activations_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_11_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_11_we0;
    end else begin
        activations_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_address0;
    end else begin
        activations_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_ce0;
    end else begin
        activations_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_ce1;
    end else begin
        activations_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_d0;
    end else begin
        activations_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_12_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_12_we0;
    end else begin
        activations_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_address0;
    end else begin
        activations_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_ce0;
    end else begin
        activations_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_ce1;
    end else begin
        activations_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_d0;
    end else begin
        activations_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_13_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_13_we0;
    end else begin
        activations_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_address0;
    end else begin
        activations_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_ce0;
    end else begin
        activations_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_ce1;
    end else begin
        activations_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_d0;
    end else begin
        activations_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_14_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_14_we0;
    end else begin
        activations_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_address0;
    end else begin
        activations_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_ce0;
    end else begin
        activations_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_ce1;
    end else begin
        activations_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_d0;
    end else begin
        activations_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_15_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_15_we0;
    end else begin
        activations_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_address0;
    end else begin
        activations_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_ce0;
    end else begin
        activations_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_d0;
    end else begin
        activations_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_2_we0;
    end else begin
        activations_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_address0;
    end else begin
        activations_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_ce0;
    end else begin
        activations_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_d0;
    end else begin
        activations_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_3_we0;
    end else begin
        activations_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_address0;
    end else begin
        activations_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_ce0;
    end else begin
        activations_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_ce1;
    end else begin
        activations_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_d0;
    end else begin
        activations_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_4_we0;
    end else begin
        activations_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_address0;
    end else begin
        activations_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_ce0;
    end else begin
        activations_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_ce1;
    end else begin
        activations_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_d0;
    end else begin
        activations_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_5_we0;
    end else begin
        activations_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_address0;
    end else begin
        activations_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_ce0;
    end else begin
        activations_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_ce1;
    end else begin
        activations_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_d0;
    end else begin
        activations_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_6_we0;
    end else begin
        activations_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_address0;
    end else begin
        activations_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_ce0;
    end else begin
        activations_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_ce1;
    end else begin
        activations_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_d0;
    end else begin
        activations_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_7_we0;
    end else begin
        activations_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_address0;
    end else begin
        activations_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_ce0;
    end else begin
        activations_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_ce1;
    end else begin
        activations_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_d0;
    end else begin
        activations_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_8_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_8_we0;
    end else begin
        activations_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_address0;
    end else begin
        activations_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_ce0;
    end else begin
        activations_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_ce1;
    end else begin
        activations_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_d0;
    end else begin
        activations_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_9_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_activations_9_we0;
    end else begin
        activations_9_we0 = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1742_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1742_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_ce;
    end else begin
        grp_fu_1742_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1742_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1742_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_opcode;
    end else begin
        grp_fu_1742_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1742_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1742_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din0;
    end else begin
        grp_fu_1742_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1742_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_grp_fu_1742_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1742_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1742_p_din1;
    end else begin
        grp_fu_1742_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1746_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_ce;
    end else begin
        grp_fu_1746_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1750_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_ce;
    end else begin
        grp_fu_1750_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1754_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_ce;
    end else begin
        grp_fu_1754_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1758_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_ce;
    end else begin
        grp_fu_1758_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1762_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_ce;
    end else begin
        grp_fu_1762_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1766_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_ce;
    end else begin
        grp_fu_1766_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1770_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1774_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_ce;
    end else begin
        grp_fu_1774_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1778_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_ce;
    end else begin
        grp_fu_1778_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1782_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_ce;
    end else begin
        grp_fu_1782_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1786_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_ce;
    end else begin
        grp_fu_1786_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1790_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_ce;
    end else begin
        grp_fu_1790_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1794_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_ce;
    end else begin
        grp_fu_1794_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1798_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_ce;
    end else begin
        grp_fu_1798_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1802_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_ce;
    end else begin
        grp_fu_1802_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1806_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_ce;
    end else begin
        grp_fu_1806_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1810_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_ce;
    end else begin
        grp_fu_1810_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1814_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_ce;
    end else begin
        grp_fu_1814_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1818_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_ce;
    end else begin
        grp_fu_1818_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1822_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_ce;
    end else begin
        grp_fu_1822_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1826_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_ce;
    end else begin
        grp_fu_1826_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1830_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_ce;
    end else begin
        grp_fu_1830_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1834_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_ce;
    end else begin
        grp_fu_1834_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1838_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_ce;
    end else begin
        grp_fu_1838_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1842_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_ce;
    end else begin
        grp_fu_1842_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1846_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_ce;
    end else begin
        grp_fu_1846_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1850_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_ce;
    end else begin
        grp_fu_1850_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1854_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_ce;
    end else begin
        grp_fu_1854_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1858_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_ce;
    end else begin
        grp_fu_1858_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1862_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_ce;
    end else begin
        grp_fu_1862_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1866_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_ce;
    end else begin
        grp_fu_1866_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1870_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_ce;
    end else begin
        grp_fu_1870_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1874_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_ce;
    end else begin
        grp_fu_1874_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1878_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_ce;
    end else begin
        grp_fu_1878_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1882_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_ce;
    end else begin
        grp_fu_1882_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1886_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_ce;
    end else begin
        grp_fu_1886_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1890_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_ce;
    end else begin
        grp_fu_1890_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1894_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_ce;
    end else begin
        grp_fu_1894_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1898_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_ce;
    end else begin
        grp_fu_1898_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1902_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_ce;
    end else begin
        grp_fu_1902_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1906_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_ce;
    end else begin
        grp_fu_1906_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1910_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_ce;
    end else begin
        grp_fu_1910_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1914_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_ce;
    end else begin
        grp_fu_1914_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1918_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_ce;
    end else begin
        grp_fu_1918_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1922_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_ce;
    end else begin
        grp_fu_1922_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1926_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_ce;
    end else begin
        grp_fu_1926_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1930_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_ce;
    end else begin
        grp_fu_1930_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1934_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_ce;
    end else begin
        grp_fu_1934_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1938_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_ce;
    end else begin
        grp_fu_1938_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1942_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_ce;
    end else begin
        grp_fu_1942_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1946_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_ce;
    end else begin
        grp_fu_1946_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1950_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_ce;
    end else begin
        grp_fu_1950_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1954_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_ce;
    end else begin
        grp_fu_1954_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1958_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_ce;
    end else begin
        grp_fu_1958_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1962_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_ce;
    end else begin
        grp_fu_1962_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1966_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_ce;
    end else begin
        grp_fu_1966_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1970_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_ce;
    end else begin
        grp_fu_1970_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1974_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_ce;
    end else begin
        grp_fu_1974_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1978_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_ce;
    end else begin
        grp_fu_1978_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1982_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_ce;
    end else begin
        grp_fu_1982_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1986_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_ce;
    end else begin
        grp_fu_1986_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1990_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_ce;
    end else begin
        grp_fu_1990_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1994_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_ce;
    end else begin
        grp_fu_1994_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address0_local = 64'd1;
    end else begin
        input_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address1_local = 64'd0;
    end else begin
        input_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce0_local = 1'b1;
    end else begin
        input_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce1_local = 1'b1;
    end else begin
        input_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_10_address0_local = 64'd1;
    end else begin
        input_activations_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_10_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_10_address1_local = 64'd0;
    end else begin
        input_activations_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_10_ce0_local = 1'b1;
    end else begin
        input_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_10_ce1_local = 1'b1;
    end else begin
        input_activations_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_11_address0_local = 64'd1;
    end else begin
        input_activations_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_11_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_11_address1_local = 64'd0;
    end else begin
        input_activations_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_11_ce0_local = 1'b1;
    end else begin
        input_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_11_ce1_local = 1'b1;
    end else begin
        input_activations_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_12_address0_local = 64'd1;
    end else begin
        input_activations_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_12_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_12_address1_local = 64'd0;
    end else begin
        input_activations_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_12_ce0_local = 1'b1;
    end else begin
        input_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_12_ce1_local = 1'b1;
    end else begin
        input_activations_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_13_address0_local = 64'd1;
    end else begin
        input_activations_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_13_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_13_address1_local = 64'd0;
    end else begin
        input_activations_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_13_ce0_local = 1'b1;
    end else begin
        input_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_13_ce1_local = 1'b1;
    end else begin
        input_activations_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_14_address0_local = 64'd1;
    end else begin
        input_activations_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_14_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_14_address1_local = 64'd0;
    end else begin
        input_activations_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_14_ce0_local = 1'b1;
    end else begin
        input_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_14_ce1_local = 1'b1;
    end else begin
        input_activations_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_15_address0_local = 64'd1;
    end else begin
        input_activations_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_15_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_15_address1_local = 64'd0;
    end else begin
        input_activations_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_15_ce0_local = 1'b1;
    end else begin
        input_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_15_ce1_local = 1'b1;
    end else begin
        input_activations_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address0_local = 64'd1;
    end else begin
        input_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address1_local = 64'd0;
    end else begin
        input_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce0_local = 1'b1;
    end else begin
        input_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce1_local = 1'b1;
    end else begin
        input_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address0_local = 64'd1;
    end else begin
        input_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address1_local = 64'd0;
    end else begin
        input_activations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce0_local = 1'b1;
    end else begin
        input_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce1_local = 1'b1;
    end else begin
        input_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address0_local = 64'd1;
    end else begin
        input_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address1_local = 64'd0;
    end else begin
        input_activations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce0_local = 1'b1;
    end else begin
        input_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce1_local = 1'b1;
    end else begin
        input_activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_4_address0_local = 64'd1;
    end else begin
        input_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_4_address1_local = 64'd0;
    end else begin
        input_activations_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_4_ce0_local = 1'b1;
    end else begin
        input_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_4_ce1_local = 1'b1;
    end else begin
        input_activations_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_5_address0_local = 64'd1;
    end else begin
        input_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_5_address1_local = 64'd0;
    end else begin
        input_activations_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_5_ce0_local = 1'b1;
    end else begin
        input_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_5_ce1_local = 1'b1;
    end else begin
        input_activations_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_6_address0_local = 64'd1;
    end else begin
        input_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_6_address1_local = 64'd0;
    end else begin
        input_activations_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_6_ce0_local = 1'b1;
    end else begin
        input_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_6_ce1_local = 1'b1;
    end else begin
        input_activations_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_7_address0_local = 64'd1;
    end else begin
        input_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_7_address1_local = 64'd0;
    end else begin
        input_activations_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_7_ce0_local = 1'b1;
    end else begin
        input_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_7_ce1_local = 1'b1;
    end else begin
        input_activations_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_8_address0_local = 64'd1;
    end else begin
        input_activations_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_8_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_8_address1_local = 64'd0;
    end else begin
        input_activations_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_8_ce0_local = 1'b1;
    end else begin
        input_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_8_ce1_local = 1'b1;
    end else begin
        input_activations_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_9_address0_local = 64'd1;
    end else begin
        input_activations_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_9_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_9_address1_local = 64'd0;
    end else begin
        input_activations_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_9_ce0_local = 1'b1;
    end else begin
        input_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_9_ce1_local = 1'b1;
    end else begin
        input_activations_9_ce1_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_0_address1;
assign activations_10_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_10_address1;
assign activations_11_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_11_address1;
assign activations_12_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_12_address1;
assign activations_13_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_13_address1;
assign activations_14_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_14_address1;
assign activations_15_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_15_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_1_address1;
assign activations_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_2_address1;
assign activations_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_3_address1;
assign activations_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_4_address1;
assign activations_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_5_address1;
assign activations_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_6_address1;
assign activations_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_7_address1;
assign activations_8_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_8_address1;
assign activations_9_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_activations_9_address1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_0_ce0;
assign biases2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_address0;
assign biases2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_10_ce0;
assign biases2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_address0;
assign biases2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_11_ce0;
assign biases2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_address0;
assign biases2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_12_ce0;
assign biases2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_address0;
assign biases2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_13_ce0;
assign biases2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_address0;
assign biases2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_14_ce0;
assign biases2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_address0;
assign biases2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_15_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_1_ce0;
assign biases2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_address0;
assign biases2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_2_ce0;
assign biases2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_address0;
assign biases2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_3_ce0;
assign biases2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_address0;
assign biases2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_4_ce0;
assign biases2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_address0;
assign biases2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_5_ce0;
assign biases2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_address0;
assign biases2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_6_ce0;
assign biases2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_address0;
assign biases2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_7_ce0;
assign biases2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_address0;
assign biases2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_8_ce0;
assign biases2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_address0;
assign biases2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_biases2_9_ce0;
assign grp_fu_4564_p_ce = grp_fu_1742_ce;
assign grp_fu_4564_p_din0 = grp_fu_1742_p0;
assign grp_fu_4564_p_din1 = grp_fu_1742_p1;
assign grp_fu_4564_p_opcode = grp_fu_1742_opcode;
assign grp_fu_4568_p_ce = grp_fu_1746_ce;
assign grp_fu_4568_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din0;
assign grp_fu_4568_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_din1;
assign grp_fu_4568_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1746_p_opcode;
assign grp_fu_4572_p_ce = grp_fu_1750_ce;
assign grp_fu_4572_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din0;
assign grp_fu_4572_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_din1;
assign grp_fu_4572_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1750_p_opcode;
assign grp_fu_4576_p_ce = grp_fu_1754_ce;
assign grp_fu_4576_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din0;
assign grp_fu_4576_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_din1;
assign grp_fu_4576_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1754_p_opcode;
assign grp_fu_4580_p_ce = grp_fu_1758_ce;
assign grp_fu_4580_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din0;
assign grp_fu_4580_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_din1;
assign grp_fu_4580_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1758_p_opcode;
assign grp_fu_4584_p_ce = grp_fu_1762_ce;
assign grp_fu_4584_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din0;
assign grp_fu_4584_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_din1;
assign grp_fu_4584_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1762_p_opcode;
assign grp_fu_4588_p_ce = grp_fu_1766_ce;
assign grp_fu_4588_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din0;
assign grp_fu_4588_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1766_p_din1;
assign grp_fu_4588_p_opcode = 2'd0;
assign grp_fu_4592_p_ce = grp_fu_1770_ce;
assign grp_fu_4592_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din0;
assign grp_fu_4592_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1770_p_din1;
assign grp_fu_4592_p_opcode = 2'd0;
assign grp_fu_4596_p_ce = grp_fu_1774_ce;
assign grp_fu_4596_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din0;
assign grp_fu_4596_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1774_p_din1;
assign grp_fu_4596_p_opcode = 2'd0;
assign grp_fu_4600_p_ce = grp_fu_1778_ce;
assign grp_fu_4600_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din0;
assign grp_fu_4600_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1778_p_din1;
assign grp_fu_4600_p_opcode = 2'd0;
assign grp_fu_4604_p_ce = grp_fu_1782_ce;
assign grp_fu_4604_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din0;
assign grp_fu_4604_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1782_p_din1;
assign grp_fu_4604_p_opcode = 2'd0;
assign grp_fu_4608_p_ce = grp_fu_1786_ce;
assign grp_fu_4608_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din0;
assign grp_fu_4608_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1786_p_din1;
assign grp_fu_4608_p_opcode = 2'd0;
assign grp_fu_4612_p_ce = grp_fu_1790_ce;
assign grp_fu_4612_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din0;
assign grp_fu_4612_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1790_p_din1;
assign grp_fu_4612_p_opcode = 2'd0;
assign grp_fu_4616_p_ce = grp_fu_1794_ce;
assign grp_fu_4616_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din0;
assign grp_fu_4616_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1794_p_din1;
assign grp_fu_4616_p_opcode = 2'd0;
assign grp_fu_4620_p_ce = grp_fu_1798_ce;
assign grp_fu_4620_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din0;
assign grp_fu_4620_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1798_p_din1;
assign grp_fu_4620_p_opcode = 2'd0;
assign grp_fu_4624_p_ce = grp_fu_1802_ce;
assign grp_fu_4624_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din0;
assign grp_fu_4624_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1802_p_din1;
assign grp_fu_4624_p_opcode = 2'd0;
assign grp_fu_4628_p_ce = grp_fu_1806_ce;
assign grp_fu_4628_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din0;
assign grp_fu_4628_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1806_p_din1;
assign grp_fu_4628_p_opcode = 2'd0;
assign grp_fu_4632_p_ce = grp_fu_1810_ce;
assign grp_fu_4632_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din0;
assign grp_fu_4632_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1810_p_din1;
assign grp_fu_4632_p_opcode = 2'd0;
assign grp_fu_4636_p_ce = grp_fu_1814_ce;
assign grp_fu_4636_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din0;
assign grp_fu_4636_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1814_p_din1;
assign grp_fu_4636_p_opcode = 2'd0;
assign grp_fu_4640_p_ce = grp_fu_1818_ce;
assign grp_fu_4640_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din0;
assign grp_fu_4640_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1818_p_din1;
assign grp_fu_4640_p_opcode = 2'd0;
assign grp_fu_4644_p_ce = grp_fu_1822_ce;
assign grp_fu_4644_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din0;
assign grp_fu_4644_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1822_p_din1;
assign grp_fu_4644_p_opcode = 2'd0;
assign grp_fu_4648_p_ce = grp_fu_1826_ce;
assign grp_fu_4648_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din0;
assign grp_fu_4648_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1826_p_din1;
assign grp_fu_4648_p_opcode = 2'd0;
assign grp_fu_4652_p_ce = grp_fu_1830_ce;
assign grp_fu_4652_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din0;
assign grp_fu_4652_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1830_p_din1;
assign grp_fu_4652_p_opcode = 2'd0;
assign grp_fu_4656_p_ce = grp_fu_1834_ce;
assign grp_fu_4656_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din0;
assign grp_fu_4656_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1834_p_din1;
assign grp_fu_4656_p_opcode = 2'd0;
assign grp_fu_4660_p_ce = grp_fu_1838_ce;
assign grp_fu_4660_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din0;
assign grp_fu_4660_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1838_p_din1;
assign grp_fu_4660_p_opcode = 2'd0;
assign grp_fu_4664_p_ce = grp_fu_1842_ce;
assign grp_fu_4664_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din0;
assign grp_fu_4664_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1842_p_din1;
assign grp_fu_4664_p_opcode = 2'd0;
assign grp_fu_4668_p_ce = grp_fu_1846_ce;
assign grp_fu_4668_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din0;
assign grp_fu_4668_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1846_p_din1;
assign grp_fu_4668_p_opcode = 2'd0;
assign grp_fu_4672_p_ce = grp_fu_1850_ce;
assign grp_fu_4672_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din0;
assign grp_fu_4672_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1850_p_din1;
assign grp_fu_4672_p_opcode = 2'd0;
assign grp_fu_4676_p_ce = grp_fu_1854_ce;
assign grp_fu_4676_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din0;
assign grp_fu_4676_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1854_p_din1;
assign grp_fu_4676_p_opcode = 2'd0;
assign grp_fu_4680_p_ce = grp_fu_1858_ce;
assign grp_fu_4680_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din0;
assign grp_fu_4680_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1858_p_din1;
assign grp_fu_4680_p_opcode = 2'd0;
assign grp_fu_4684_p_ce = grp_fu_1862_ce;
assign grp_fu_4684_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din0;
assign grp_fu_4684_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1862_p_din1;
assign grp_fu_4684_p_opcode = 2'd0;
assign grp_fu_4688_p_ce = grp_fu_1866_ce;
assign grp_fu_4688_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din0;
assign grp_fu_4688_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1866_p_din1;
assign grp_fu_4688_p_opcode = 2'd0;
assign grp_fu_4692_p_ce = grp_fu_1870_ce;
assign grp_fu_4692_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din0;
assign grp_fu_4692_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1870_p_din1;
assign grp_fu_4696_p_ce = grp_fu_1874_ce;
assign grp_fu_4696_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din0;
assign grp_fu_4696_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1874_p_din1;
assign grp_fu_4700_p_ce = grp_fu_1878_ce;
assign grp_fu_4700_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din0;
assign grp_fu_4700_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1878_p_din1;
assign grp_fu_4704_p_ce = grp_fu_1882_ce;
assign grp_fu_4704_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din0;
assign grp_fu_4704_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1882_p_din1;
assign grp_fu_4708_p_ce = grp_fu_1886_ce;
assign grp_fu_4708_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din0;
assign grp_fu_4708_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1886_p_din1;
assign grp_fu_4712_p_ce = grp_fu_1890_ce;
assign grp_fu_4712_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din0;
assign grp_fu_4712_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1890_p_din1;
assign grp_fu_4716_p_ce = grp_fu_1894_ce;
assign grp_fu_4716_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din0;
assign grp_fu_4716_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1894_p_din1;
assign grp_fu_4720_p_ce = grp_fu_1898_ce;
assign grp_fu_4720_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din0;
assign grp_fu_4720_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1898_p_din1;
assign grp_fu_4724_p_ce = grp_fu_1902_ce;
assign grp_fu_4724_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din0;
assign grp_fu_4724_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1902_p_din1;
assign grp_fu_4728_p_ce = grp_fu_1906_ce;
assign grp_fu_4728_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din0;
assign grp_fu_4728_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1906_p_din1;
assign grp_fu_4732_p_ce = grp_fu_1910_ce;
assign grp_fu_4732_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din0;
assign grp_fu_4732_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1910_p_din1;
assign grp_fu_4736_p_ce = grp_fu_1914_ce;
assign grp_fu_4736_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din0;
assign grp_fu_4736_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1914_p_din1;
assign grp_fu_4740_p_ce = grp_fu_1918_ce;
assign grp_fu_4740_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din0;
assign grp_fu_4740_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1918_p_din1;
assign grp_fu_4744_p_ce = grp_fu_1922_ce;
assign grp_fu_4744_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din0;
assign grp_fu_4744_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1922_p_din1;
assign grp_fu_4748_p_ce = grp_fu_1926_ce;
assign grp_fu_4748_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din0;
assign grp_fu_4748_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1926_p_din1;
assign grp_fu_4752_p_ce = grp_fu_1930_ce;
assign grp_fu_4752_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din0;
assign grp_fu_4752_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1930_p_din1;
assign grp_fu_4756_p_ce = grp_fu_1934_ce;
assign grp_fu_4756_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din0;
assign grp_fu_4756_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1934_p_din1;
assign grp_fu_4760_p_ce = grp_fu_1938_ce;
assign grp_fu_4760_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din0;
assign grp_fu_4760_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1938_p_din1;
assign grp_fu_4764_p_ce = grp_fu_1942_ce;
assign grp_fu_4764_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din0;
assign grp_fu_4764_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1942_p_din1;
assign grp_fu_4768_p_ce = grp_fu_1946_ce;
assign grp_fu_4768_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din0;
assign grp_fu_4768_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1946_p_din1;
assign grp_fu_4772_p_ce = grp_fu_1950_ce;
assign grp_fu_4772_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din0;
assign grp_fu_4772_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1950_p_din1;
assign grp_fu_4776_p_ce = grp_fu_1954_ce;
assign grp_fu_4776_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din0;
assign grp_fu_4776_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1954_p_din1;
assign grp_fu_4780_p_ce = grp_fu_1958_ce;
assign grp_fu_4780_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din0;
assign grp_fu_4780_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1958_p_din1;
assign grp_fu_4784_p_ce = grp_fu_1962_ce;
assign grp_fu_4784_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din0;
assign grp_fu_4784_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1962_p_din1;
assign grp_fu_4788_p_ce = grp_fu_1966_ce;
assign grp_fu_4788_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din0;
assign grp_fu_4788_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1966_p_din1;
assign grp_fu_4792_p_ce = grp_fu_1970_ce;
assign grp_fu_4792_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din0;
assign grp_fu_4792_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1970_p_din1;
assign grp_fu_4796_p_ce = grp_fu_1974_ce;
assign grp_fu_4796_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din0;
assign grp_fu_4796_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1974_p_din1;
assign grp_fu_4800_p_ce = grp_fu_1978_ce;
assign grp_fu_4800_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din0;
assign grp_fu_4800_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1978_p_din1;
assign grp_fu_4804_p_ce = grp_fu_1982_ce;
assign grp_fu_4804_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din0;
assign grp_fu_4804_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1982_p_din1;
assign grp_fu_4808_p_ce = grp_fu_1986_ce;
assign grp_fu_4808_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din0;
assign grp_fu_4808_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1986_p_din1;
assign grp_fu_4812_p_ce = grp_fu_1990_ce;
assign grp_fu_4812_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din0;
assign grp_fu_4812_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1990_p_din1;
assign grp_fu_4816_p_ce = grp_fu_1994_ce;
assign grp_fu_4816_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din0;
assign grp_fu_4816_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_grp_fu_1994_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_1034_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_ap_start_reg;
assign input_activations_0_address0 = input_activations_0_address0_local;
assign input_activations_0_address1 = input_activations_0_address1_local;
assign input_activations_0_ce0 = input_activations_0_ce0_local;
assign input_activations_0_ce1 = input_activations_0_ce1_local;
assign input_activations_10_address0 = input_activations_10_address0_local;
assign input_activations_10_address1 = input_activations_10_address1_local;
assign input_activations_10_ce0 = input_activations_10_ce0_local;
assign input_activations_10_ce1 = input_activations_10_ce1_local;
assign input_activations_11_address0 = input_activations_11_address0_local;
assign input_activations_11_address1 = input_activations_11_address1_local;
assign input_activations_11_ce0 = input_activations_11_ce0_local;
assign input_activations_11_ce1 = input_activations_11_ce1_local;
assign input_activations_12_address0 = input_activations_12_address0_local;
assign input_activations_12_address1 = input_activations_12_address1_local;
assign input_activations_12_ce0 = input_activations_12_ce0_local;
assign input_activations_12_ce1 = input_activations_12_ce1_local;
assign input_activations_13_address0 = input_activations_13_address0_local;
assign input_activations_13_address1 = input_activations_13_address1_local;
assign input_activations_13_ce0 = input_activations_13_ce0_local;
assign input_activations_13_ce1 = input_activations_13_ce1_local;
assign input_activations_14_address0 = input_activations_14_address0_local;
assign input_activations_14_address1 = input_activations_14_address1_local;
assign input_activations_14_ce0 = input_activations_14_ce0_local;
assign input_activations_14_ce1 = input_activations_14_ce1_local;
assign input_activations_15_address0 = input_activations_15_address0_local;
assign input_activations_15_address1 = input_activations_15_address1_local;
assign input_activations_15_ce0 = input_activations_15_ce0_local;
assign input_activations_15_ce1 = input_activations_15_ce1_local;
assign input_activations_1_address0 = input_activations_1_address0_local;
assign input_activations_1_address1 = input_activations_1_address1_local;
assign input_activations_1_ce0 = input_activations_1_ce0_local;
assign input_activations_1_ce1 = input_activations_1_ce1_local;
assign input_activations_2_address0 = input_activations_2_address0_local;
assign input_activations_2_address1 = input_activations_2_address1_local;
assign input_activations_2_ce0 = input_activations_2_ce0_local;
assign input_activations_2_ce1 = input_activations_2_ce1_local;
assign input_activations_3_address0 = input_activations_3_address0_local;
assign input_activations_3_address1 = input_activations_3_address1_local;
assign input_activations_3_ce0 = input_activations_3_ce0_local;
assign input_activations_3_ce1 = input_activations_3_ce1_local;
assign input_activations_4_address0 = input_activations_4_address0_local;
assign input_activations_4_address1 = input_activations_4_address1_local;
assign input_activations_4_ce0 = input_activations_4_ce0_local;
assign input_activations_4_ce1 = input_activations_4_ce1_local;
assign input_activations_5_address0 = input_activations_5_address0_local;
assign input_activations_5_address1 = input_activations_5_address1_local;
assign input_activations_5_ce0 = input_activations_5_ce0_local;
assign input_activations_5_ce1 = input_activations_5_ce1_local;
assign input_activations_6_address0 = input_activations_6_address0_local;
assign input_activations_6_address1 = input_activations_6_address1_local;
assign input_activations_6_ce0 = input_activations_6_ce0_local;
assign input_activations_6_ce1 = input_activations_6_ce1_local;
assign input_activations_7_address0 = input_activations_7_address0_local;
assign input_activations_7_address1 = input_activations_7_address1_local;
assign input_activations_7_ce0 = input_activations_7_ce0_local;
assign input_activations_7_ce1 = input_activations_7_ce1_local;
assign input_activations_8_address0 = input_activations_8_address0_local;
assign input_activations_8_address1 = input_activations_8_address1_local;
assign input_activations_8_ce0 = input_activations_8_ce0_local;
assign input_activations_8_ce1 = input_activations_8_ce1_local;
assign input_activations_9_address0 = input_activations_9_address0_local;
assign input_activations_9_address1 = input_activations_9_address1_local;
assign input_activations_9_ce0 = input_activations_9_ce0_local;
assign input_activations_9_ce1 = input_activations_9_ce1_local;
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address0;
assign weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_address1;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce0;
assign weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_0_ce1;
assign weights2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address0;
assign weights2_10_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_address1;
assign weights2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce0;
assign weights2_10_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_10_ce1;
assign weights2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address0;
assign weights2_11_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_address1;
assign weights2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce0;
assign weights2_11_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_11_ce1;
assign weights2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address0;
assign weights2_12_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_address1;
assign weights2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce0;
assign weights2_12_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_12_ce1;
assign weights2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address0;
assign weights2_13_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_address1;
assign weights2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce0;
assign weights2_13_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_13_ce1;
assign weights2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address0;
assign weights2_14_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_address1;
assign weights2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce0;
assign weights2_14_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_14_ce1;
assign weights2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address0;
assign weights2_15_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_address1;
assign weights2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce0;
assign weights2_15_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_15_ce1;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address0;
assign weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_address1;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce0;
assign weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_1_ce1;
assign weights2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address0;
assign weights2_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_address1;
assign weights2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce0;
assign weights2_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_2_ce1;
assign weights2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address0;
assign weights2_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_address1;
assign weights2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce0;
assign weights2_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_3_ce1;
assign weights2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address0;
assign weights2_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_address1;
assign weights2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce0;
assign weights2_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_4_ce1;
assign weights2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address0;
assign weights2_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_address1;
assign weights2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce0;
assign weights2_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_5_ce1;
assign weights2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address0;
assign weights2_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_address1;
assign weights2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce0;
assign weights2_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_6_ce1;
assign weights2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address0;
assign weights2_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_address1;
assign weights2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce0;
assign weights2_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_7_ce1;
assign weights2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address0;
assign weights2_8_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_address1;
assign weights2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce0;
assign weights2_8_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_8_ce1;
assign weights2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address0;
assign weights2_9_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_address1;
assign weights2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce0;
assign weights2_9_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_870_weights2_9_ce1;
endmodule 
