module backprop_matrix_vector_product_with_bias_output_layer_60_61_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_q1,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_q1,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_q1,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_q1,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_8_address1,weights3_8_ce1,weights3_8_q1,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_9_address1,weights3_9_ce1,weights3_9_q1,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_10_address1,weights3_10_ce1,weights3_10_q1,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_11_address1,weights3_11_ce1,weights3_11_q1,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_12_address1,weights3_12_ce1,weights3_12_q1,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_13_address1,weights3_13_ce1,weights3_13_q1,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_14_address1,weights3_14_ce1,weights3_14_q1,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_15_address1,weights3_15_ce1,weights3_15_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_2_address1,input_activations_2_ce1,input_activations_2_q1,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_3_address1,input_activations_3_ce1,input_activations_3_q1,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_4_address1,input_activations_4_ce1,input_activations_4_q1,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_5_address1,input_activations_5_ce1,input_activations_5_q1,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_6_address1,input_activations_6_ce1,input_activations_6_q1,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_7_address1,input_activations_7_ce1,input_activations_7_q1,input_activations_8_address0,input_activations_8_ce0,input_activations_8_q0,input_activations_8_address1,input_activations_8_ce1,input_activations_8_q1,input_activations_9_address0,input_activations_9_ce0,input_activations_9_q0,input_activations_9_address1,input_activations_9_ce1,input_activations_9_q1,input_activations_10_address0,input_activations_10_ce0,input_activations_10_q0,input_activations_10_address1,input_activations_10_ce1,input_activations_10_q1,input_activations_11_address0,input_activations_11_ce0,input_activations_11_q0,input_activations_11_address1,input_activations_11_ce1,input_activations_11_q1,input_activations_12_address0,input_activations_12_ce0,input_activations_12_q0,input_activations_12_address1,input_activations_12_ce1,input_activations_12_q1,input_activations_13_address0,input_activations_13_ce0,input_activations_13_q0,input_activations_13_address1,input_activations_13_ce1,input_activations_13_q1,input_activations_14_address0,input_activations_14_ce0,input_activations_14_q0,input_activations_14_address1,input_activations_14_ce1,input_activations_14_q1,input_activations_15_address0,input_activations_15_ce0,input_activations_15_q0,input_activations_15_address1,input_activations_15_ce1,input_activations_15_q1,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4568_p_din0,grp_fu_4568_p_din1,grp_fu_4568_p_opcode,grp_fu_4568_p_dout0,grp_fu_4568_p_ce,grp_fu_4572_p_din0,grp_fu_4572_p_din1,grp_fu_4572_p_opcode,grp_fu_4572_p_dout0,grp_fu_4572_p_ce,grp_fu_4576_p_din0,grp_fu_4576_p_din1,grp_fu_4576_p_opcode,grp_fu_4576_p_dout0,grp_fu_4576_p_ce,grp_fu_4580_p_din0,grp_fu_4580_p_din1,grp_fu_4580_p_opcode,grp_fu_4580_p_dout0,grp_fu_4580_p_ce,grp_fu_4584_p_din0,grp_fu_4584_p_din1,grp_fu_4584_p_opcode,grp_fu_4584_p_dout0,grp_fu_4584_p_ce,grp_fu_4588_p_din0,grp_fu_4588_p_din1,grp_fu_4588_p_opcode,grp_fu_4588_p_dout0,grp_fu_4588_p_ce,grp_fu_4592_p_din0,grp_fu_4592_p_din1,grp_fu_4592_p_opcode,grp_fu_4592_p_dout0,grp_fu_4592_p_ce,grp_fu_4596_p_din0,grp_fu_4596_p_din1,grp_fu_4596_p_opcode,grp_fu_4596_p_dout0,grp_fu_4596_p_ce,grp_fu_4600_p_din0,grp_fu_4600_p_din1,grp_fu_4600_p_opcode,grp_fu_4600_p_dout0,grp_fu_4600_p_ce,grp_fu_4604_p_din0,grp_fu_4604_p_din1,grp_fu_4604_p_opcode,grp_fu_4604_p_dout0,grp_fu_4604_p_ce,grp_fu_4608_p_din0,grp_fu_4608_p_din1,grp_fu_4608_p_opcode,grp_fu_4608_p_dout0,grp_fu_4608_p_ce,grp_fu_4612_p_din0,grp_fu_4612_p_din1,grp_fu_4612_p_opcode,grp_fu_4612_p_dout0,grp_fu_4612_p_ce,grp_fu_4616_p_din0,grp_fu_4616_p_din1,grp_fu_4616_p_opcode,grp_fu_4616_p_dout0,grp_fu_4616_p_ce,grp_fu_4620_p_din0,grp_fu_4620_p_din1,grp_fu_4620_p_opcode,grp_fu_4620_p_dout0,grp_fu_4620_p_ce,grp_fu_4624_p_din0,grp_fu_4624_p_din1,grp_fu_4624_p_opcode,grp_fu_4624_p_dout0,grp_fu_4624_p_ce,grp_fu_4628_p_din0,grp_fu_4628_p_din1,grp_fu_4628_p_opcode,grp_fu_4628_p_dout0,grp_fu_4628_p_ce,grp_fu_4632_p_din0,grp_fu_4632_p_din1,grp_fu_4632_p_opcode,grp_fu_4632_p_dout0,grp_fu_4632_p_ce,grp_fu_4636_p_din0,grp_fu_4636_p_din1,grp_fu_4636_p_opcode,grp_fu_4636_p_dout0,grp_fu_4636_p_ce,grp_fu_4640_p_din0,grp_fu_4640_p_din1,grp_fu_4640_p_opcode,grp_fu_4640_p_dout0,grp_fu_4640_p_ce,grp_fu_4644_p_din0,grp_fu_4644_p_din1,grp_fu_4644_p_opcode,grp_fu_4644_p_dout0,grp_fu_4644_p_ce,grp_fu_4648_p_din0,grp_fu_4648_p_din1,grp_fu_4648_p_opcode,grp_fu_4648_p_dout0,grp_fu_4648_p_ce,grp_fu_4652_p_din0,grp_fu_4652_p_din1,grp_fu_4652_p_opcode,grp_fu_4652_p_dout0,grp_fu_4652_p_ce,grp_fu_4656_p_din0,grp_fu_4656_p_din1,grp_fu_4656_p_opcode,grp_fu_4656_p_dout0,grp_fu_4656_p_ce,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_opcode,grp_fu_4660_p_dout0,grp_fu_4660_p_ce,grp_fu_4664_p_din0,grp_fu_4664_p_din1,grp_fu_4664_p_opcode,grp_fu_4664_p_dout0,grp_fu_4664_p_ce,grp_fu_4668_p_din0,grp_fu_4668_p_din1,grp_fu_4668_p_opcode,grp_fu_4668_p_dout0,grp_fu_4668_p_ce,grp_fu_4672_p_din0,grp_fu_4672_p_din1,grp_fu_4672_p_opcode,grp_fu_4672_p_dout0,grp_fu_4672_p_ce,grp_fu_4676_p_din0,grp_fu_4676_p_din1,grp_fu_4676_p_opcode,grp_fu_4676_p_dout0,grp_fu_4676_p_ce,grp_fu_4680_p_din0,grp_fu_4680_p_din1,grp_fu_4680_p_opcode,grp_fu_4680_p_dout0,grp_fu_4680_p_ce,grp_fu_4684_p_din0,grp_fu_4684_p_din1,grp_fu_4684_p_opcode,grp_fu_4684_p_dout0,grp_fu_4684_p_ce,grp_fu_4688_p_din0,grp_fu_4688_p_din1,grp_fu_4688_p_opcode,grp_fu_4688_p_dout0,grp_fu_4688_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce); 
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
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [3:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [3:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [3:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [3:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [3:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [3:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [3:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [3:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
output  [3:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [3:0] weights3_4_address1;
output   weights3_4_ce1;
input  [63:0] weights3_4_q1;
output  [3:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [3:0] weights3_5_address1;
output   weights3_5_ce1;
input  [63:0] weights3_5_q1;
output  [3:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [3:0] weights3_6_address1;
output   weights3_6_ce1;
input  [63:0] weights3_6_q1;
output  [3:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [3:0] weights3_7_address1;
output   weights3_7_ce1;
input  [63:0] weights3_7_q1;
output  [3:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [3:0] weights3_8_address1;
output   weights3_8_ce1;
input  [63:0] weights3_8_q1;
output  [3:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [3:0] weights3_9_address1;
output   weights3_9_ce1;
input  [63:0] weights3_9_q1;
output  [3:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [3:0] weights3_10_address1;
output   weights3_10_ce1;
input  [63:0] weights3_10_q1;
output  [3:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [3:0] weights3_11_address1;
output   weights3_11_ce1;
input  [63:0] weights3_11_q1;
output  [3:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [3:0] weights3_12_address1;
output   weights3_12_ce1;
input  [63:0] weights3_12_q1;
output  [3:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [3:0] weights3_13_address1;
output   weights3_13_ce1;
input  [63:0] weights3_13_q1;
output  [3:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [3:0] weights3_14_address1;
output   weights3_14_ce1;
input  [63:0] weights3_14_q1;
output  [3:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [3:0] weights3_15_address1;
output   weights3_15_ce1;
input  [63:0] weights3_15_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
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
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_1124;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_1129;
reg   [63:0] input_activations_2_load_reg_1134;
reg   [63:0] input_activations_3_load_reg_1139;
reg   [63:0] input_activations_4_load_reg_1144;
reg   [63:0] input_activations_5_load_reg_1149;
reg   [63:0] input_activations_6_load_reg_1154;
reg   [63:0] input_activations_7_load_reg_1159;
reg   [63:0] input_activations_8_load_reg_1164;
reg   [63:0] input_activations_9_load_reg_1169;
reg   [63:0] input_activations_10_load_reg_1174;
reg   [63:0] input_activations_11_load_reg_1179;
reg   [63:0] input_activations_12_load_reg_1184;
reg   [63:0] input_activations_13_load_reg_1189;
reg   [63:0] input_activations_14_load_reg_1194;
reg   [63:0] input_activations_15_load_reg_1199;
reg   [63:0] input_activations_0_load_4_reg_1204;
reg   [63:0] input_activations_1_load_4_reg_1209;
reg   [63:0] input_activations_2_load_4_reg_1214;
reg   [63:0] input_activations_3_load_4_reg_1219;
reg   [63:0] input_activations_4_load_4_reg_1224;
reg   [63:0] input_activations_5_load_4_reg_1229;
reg   [63:0] input_activations_6_load_4_reg_1234;
reg   [63:0] input_activations_7_load_4_reg_1239;
reg   [63:0] input_activations_8_load_4_reg_1244;
reg   [63:0] input_activations_9_load_4_reg_1249;
reg   [63:0] input_activations_10_load_4_reg_1254;
reg   [63:0] input_activations_11_load_4_reg_1259;
reg   [63:0] input_activations_12_load_4_reg_1264;
reg   [63:0] input_activations_13_load_4_reg_1269;
reg   [63:0] input_activations_14_load_4_reg_1274;
reg   [63:0] input_activations_15_load_4_reg_1279;
reg   [63:0] input_activations_0_load_5_reg_1444;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_5_reg_1449;
reg   [63:0] input_activations_2_load_5_reg_1454;
reg   [63:0] input_activations_3_load_5_reg_1459;
reg   [63:0] input_activations_4_load_5_reg_1464;
reg   [63:0] input_activations_5_load_5_reg_1469;
reg   [63:0] input_activations_6_load_5_reg_1474;
reg   [63:0] input_activations_7_load_5_reg_1479;
reg   [63:0] input_activations_8_load_5_reg_1484;
reg   [63:0] input_activations_9_load_5_reg_1489;
reg   [63:0] input_activations_10_load_5_reg_1494;
reg   [63:0] input_activations_11_load_5_reg_1499;
reg   [63:0] input_activations_12_load_5_reg_1504;
reg   [63:0] input_activations_13_load_5_reg_1509;
reg   [63:0] input_activations_14_load_5_reg_1514;
reg   [63:0] input_activations_15_load_5_reg_1519;
reg   [63:0] input_activations_0_load_6_reg_1524;
reg   [63:0] input_activations_1_load_6_reg_1529;
reg   [63:0] input_activations_2_load_6_reg_1534;
reg   [63:0] input_activations_3_load_6_reg_1539;
reg   [63:0] input_activations_4_load_6_reg_1544;
reg   [63:0] input_activations_5_load_6_reg_1549;
reg   [63:0] input_activations_6_load_6_reg_1554;
reg   [63:0] input_activations_7_load_6_reg_1559;
reg   [63:0] input_activations_8_load_6_reg_1564;
reg   [63:0] input_activations_9_load_6_reg_1569;
reg   [63:0] input_activations_10_load_6_reg_1574;
reg   [63:0] input_activations_11_load_6_reg_1579;
reg   [63:0] input_activations_12_load_6_reg_1584;
reg   [63:0] input_activations_13_load_6_reg_1589;
reg   [63:0] input_activations_14_load_6_reg_1594;
reg   [63:0] input_activations_15_load_6_reg_1599;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1_ap_vld;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg;
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
reg   [63:0] grp_fu_1604_p0;
reg   [63:0] grp_fu_1604_p1;
reg   [1:0] grp_fu_1604_opcode;
reg    grp_fu_1604_ce;
reg    grp_fu_1608_ce;
reg    grp_fu_1612_ce;
reg    grp_fu_1616_ce;
reg    grp_fu_1620_ce;
reg    grp_fu_1624_ce;
reg    grp_fu_1628_ce;
reg    grp_fu_1632_ce;
reg    grp_fu_1636_ce;
reg    grp_fu_1640_ce;
reg    grp_fu_1644_ce;
reg    grp_fu_1648_ce;
reg    grp_fu_1652_ce;
reg    grp_fu_1656_ce;
reg    grp_fu_1660_ce;
reg    grp_fu_1664_ce;
reg    grp_fu_1668_ce;
reg    grp_fu_1672_ce;
reg    grp_fu_1676_ce;
reg    grp_fu_1680_ce;
reg    grp_fu_1684_ce;
reg    grp_fu_1688_ce;
reg    grp_fu_1692_ce;
reg    grp_fu_1696_ce;
reg    grp_fu_1700_ce;
reg    grp_fu_1704_ce;
reg    grp_fu_1708_ce;
reg    grp_fu_1712_ce;
reg    grp_fu_1716_ce;
reg    grp_fu_1720_ce;
reg    grp_fu_1724_ce;
reg    grp_fu_1728_ce;
reg    grp_fu_1732_ce;
reg    grp_fu_1736_ce;
reg    grp_fu_1740_ce;
reg    grp_fu_1744_ce;
reg    grp_fu_1748_ce;
reg    grp_fu_1752_ce;
reg    grp_fu_1756_ce;
reg    grp_fu_1760_ce;
reg    grp_fu_1764_ce;
reg    grp_fu_1768_ce;
reg    grp_fu_1772_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1780_ce;
reg    grp_fu_1784_ce;
reg    grp_fu_1788_ce;
reg    grp_fu_1792_ce;
reg    grp_fu_1796_ce;
reg    grp_fu_1800_ce;
reg    grp_fu_1804_ce;
reg    grp_fu_1808_ce;
reg    grp_fu_1812_ce;
reg    grp_fu_1816_ce;
reg    grp_fu_1820_ce;
reg    grp_fu_1824_ce;
reg    grp_fu_1828_ce;
reg    grp_fu_1832_ce;
reg    grp_fu_1836_ce;
reg    grp_fu_1840_ce;
reg    grp_fu_1844_ce;
reg    grp_fu_1848_ce;
reg    grp_fu_1852_ce;
reg    grp_fu_1856_ce;
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
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2_ap_vld),.activations_1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1_ap_vld),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address1),.weights3_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.input_activations_0_load(input_activations_0_load_reg_1124),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address1),.weights3_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.input_activations_1_load(input_activations_1_load_reg_1129),.weights3_2_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address0),.weights3_2_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce0),.weights3_2_q0(weights3_2_q0),.weights3_2_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address1),.weights3_2_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce1),.weights3_2_q1(weights3_2_q1),.input_activations_2_load(input_activations_2_load_reg_1134),.weights3_3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address0),.weights3_3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce0),.weights3_3_q0(weights3_3_q0),.weights3_3_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address1),.weights3_3_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce1),.weights3_3_q1(weights3_3_q1),.input_activations_3_load(input_activations_3_load_reg_1139),.weights3_4_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address0),.weights3_4_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce0),.weights3_4_q0(weights3_4_q0),.weights3_4_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address1),.weights3_4_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce1),.weights3_4_q1(weights3_4_q1),.input_activations_4_load(input_activations_4_load_reg_1144),.weights3_5_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address0),.weights3_5_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce0),.weights3_5_q0(weights3_5_q0),.weights3_5_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address1),.weights3_5_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce1),.weights3_5_q1(weights3_5_q1),.input_activations_5_load(input_activations_5_load_reg_1149),.weights3_6_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address0),.weights3_6_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce0),.weights3_6_q0(weights3_6_q0),.weights3_6_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address1),.weights3_6_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce1),.weights3_6_q1(weights3_6_q1),.input_activations_6_load(input_activations_6_load_reg_1154),.weights3_7_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address0),.weights3_7_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce0),.weights3_7_q0(weights3_7_q0),.weights3_7_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address1),.weights3_7_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce1),.weights3_7_q1(weights3_7_q1),.input_activations_7_load(input_activations_7_load_reg_1159),.weights3_8_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address0),.weights3_8_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce0),.weights3_8_q0(weights3_8_q0),.weights3_8_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address1),.weights3_8_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce1),.weights3_8_q1(weights3_8_q1),.input_activations_8_load(input_activations_8_load_reg_1164),.weights3_9_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address0),.weights3_9_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce0),.weights3_9_q0(weights3_9_q0),.weights3_9_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address1),.weights3_9_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce1),.weights3_9_q1(weights3_9_q1),.input_activations_9_load(input_activations_9_load_reg_1169),.weights3_10_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address0),.weights3_10_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce0),.weights3_10_q0(weights3_10_q0),.weights3_10_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address1),.weights3_10_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce1),.weights3_10_q1(weights3_10_q1),.input_activations_10_load(input_activations_10_load_reg_1174),.weights3_11_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address0),.weights3_11_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce0),.weights3_11_q0(weights3_11_q0),.weights3_11_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address1),.weights3_11_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce1),.weights3_11_q1(weights3_11_q1),.input_activations_11_load(input_activations_11_load_reg_1179),.weights3_12_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address0),.weights3_12_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce0),.weights3_12_q0(weights3_12_q0),.weights3_12_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address1),.weights3_12_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce1),.weights3_12_q1(weights3_12_q1),.input_activations_12_load(input_activations_12_load_reg_1184),.weights3_13_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address0),.weights3_13_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce0),.weights3_13_q0(weights3_13_q0),.weights3_13_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address1),.weights3_13_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce1),.weights3_13_q1(weights3_13_q1),.input_activations_13_load(input_activations_13_load_reg_1189),.weights3_14_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address0),.weights3_14_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce0),.weights3_14_q0(weights3_14_q0),.weights3_14_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address1),.weights3_14_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce1),.weights3_14_q1(weights3_14_q1),.input_activations_14_load(input_activations_14_load_reg_1194),.weights3_15_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address0),.weights3_15_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce0),.weights3_15_q0(weights3_15_q0),.weights3_15_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address1),.weights3_15_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce1),.weights3_15_q1(weights3_15_q1),.input_activations_15_load(input_activations_15_load_reg_1199),.input_activations_0_load_4(input_activations_0_load_4_reg_1204),.input_activations_1_load_4(input_activations_1_load_4_reg_1209),.input_activations_2_load_4(input_activations_2_load_4_reg_1214),.input_activations_3_load_4(input_activations_3_load_4_reg_1219),.input_activations_4_load_4(input_activations_4_load_4_reg_1224),.input_activations_5_load_4(input_activations_5_load_4_reg_1229),.input_activations_6_load_4(input_activations_6_load_4_reg_1234),.input_activations_7_load_4(input_activations_7_load_4_reg_1239),.input_activations_8_load_4(input_activations_8_load_4_reg_1244),.input_activations_9_load_4(input_activations_9_load_4_reg_1249),.input_activations_10_load_4(input_activations_10_load_4_reg_1254),.input_activations_11_load_4(input_activations_11_load_4_reg_1259),.input_activations_12_load_4(input_activations_12_load_4_reg_1264),.input_activations_13_load_4(input_activations_13_load_4_reg_1269),.input_activations_14_load_4(input_activations_14_load_4_reg_1274),.input_activations_15_load_4(input_activations_15_load_4_reg_1279),.input_activations_0_load_5(input_activations_0_load_5_reg_1444),.input_activations_1_load_5(input_activations_1_load_5_reg_1449),.input_activations_2_load_5(input_activations_2_load_5_reg_1454),.input_activations_3_load_5(input_activations_3_load_5_reg_1459),.input_activations_4_load_5(input_activations_4_load_5_reg_1464),.input_activations_5_load_5(input_activations_5_load_5_reg_1469),.input_activations_6_load_5(input_activations_6_load_5_reg_1474),.input_activations_7_load_5(input_activations_7_load_5_reg_1479),.input_activations_8_load_5(input_activations_8_load_5_reg_1484),.input_activations_9_load_5(input_activations_9_load_5_reg_1489),.input_activations_10_load_5(input_activations_10_load_5_reg_1494),.input_activations_11_load_5(input_activations_11_load_5_reg_1499),.input_activations_12_load_5(input_activations_12_load_5_reg_1504),.input_activations_13_load_5(input_activations_13_load_5_reg_1509),.input_activations_14_load_5(input_activations_14_load_5_reg_1514),.input_activations_15_load_5(input_activations_15_load_5_reg_1519),.input_activations_0_load_6(input_activations_0_load_6_reg_1524),.input_activations_1_load_6(input_activations_1_load_6_reg_1529),.input_activations_2_load_6(input_activations_2_load_6_reg_1534),.input_activations_3_load_6(input_activations_3_load_6_reg_1539),.input_activations_4_load_6(input_activations_4_load_6_reg_1544),.input_activations_5_load_6(input_activations_5_load_6_reg_1549),.input_activations_6_load_6(input_activations_6_load_6_reg_1554),.input_activations_7_load_6(input_activations_7_load_6_reg_1559),.input_activations_8_load_6(input_activations_8_load_6_reg_1564),.input_activations_9_load_6(input_activations_9_load_6_reg_1569),.input_activations_10_load_6(input_activations_10_load_6_reg_1574),.input_activations_11_load_6(input_activations_11_load_6_reg_1579),.input_activations_12_load_6(input_activations_12_load_6_reg_1584),.input_activations_13_load_6(input_activations_13_load_6_reg_1589),.input_activations_14_load_6(input_activations_14_load_6_reg_1594),.input_activations_15_load_6(input_activations_15_load_6_reg_1599),.grp_fu_1604_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din0),.grp_fu_1604_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din1),.grp_fu_1604_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_opcode),.grp_fu_1604_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1604_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_ce),.grp_fu_1608_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din0),.grp_fu_1608_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din1),.grp_fu_1608_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_opcode),.grp_fu_1608_p_dout0(grp_fu_4568_p_dout0),.grp_fu_1608_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_ce),.grp_fu_1612_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din0),.grp_fu_1612_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din1),.grp_fu_1612_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_opcode),.grp_fu_1612_p_dout0(grp_fu_4572_p_dout0),.grp_fu_1612_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_ce),.grp_fu_1616_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din0),.grp_fu_1616_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din1),.grp_fu_1616_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_opcode),.grp_fu_1616_p_dout0(grp_fu_4576_p_dout0),.grp_fu_1616_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_ce),.grp_fu_1620_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din0),.grp_fu_1620_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din1),.grp_fu_1620_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_opcode),.grp_fu_1620_p_dout0(grp_fu_4580_p_dout0),.grp_fu_1620_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_ce),.grp_fu_1624_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din0),.grp_fu_1624_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din1),.grp_fu_1624_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_opcode),.grp_fu_1624_p_dout0(grp_fu_4584_p_dout0),.grp_fu_1624_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_ce),.grp_fu_1628_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din0),.grp_fu_1628_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din1),.grp_fu_1628_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_opcode),.grp_fu_1628_p_dout0(grp_fu_4588_p_dout0),.grp_fu_1628_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_ce),.grp_fu_1632_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din0),.grp_fu_1632_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din1),.grp_fu_1632_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_opcode),.grp_fu_1632_p_dout0(grp_fu_4592_p_dout0),.grp_fu_1632_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_ce),.grp_fu_1636_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din0),.grp_fu_1636_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din1),.grp_fu_1636_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_opcode),.grp_fu_1636_p_dout0(grp_fu_4596_p_dout0),.grp_fu_1636_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_ce),.grp_fu_1640_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din0),.grp_fu_1640_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din1),.grp_fu_1640_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_opcode),.grp_fu_1640_p_dout0(grp_fu_4600_p_dout0),.grp_fu_1640_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_ce),.grp_fu_1644_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din0),.grp_fu_1644_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din1),.grp_fu_1644_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_opcode),.grp_fu_1644_p_dout0(grp_fu_4604_p_dout0),.grp_fu_1644_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_ce),.grp_fu_1648_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din0),.grp_fu_1648_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din1),.grp_fu_1648_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_opcode),.grp_fu_1648_p_dout0(grp_fu_4608_p_dout0),.grp_fu_1648_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_ce),.grp_fu_1652_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din0),.grp_fu_1652_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din1),.grp_fu_1652_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_opcode),.grp_fu_1652_p_dout0(grp_fu_4612_p_dout0),.grp_fu_1652_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_ce),.grp_fu_1656_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din0),.grp_fu_1656_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din1),.grp_fu_1656_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_opcode),.grp_fu_1656_p_dout0(grp_fu_4616_p_dout0),.grp_fu_1656_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_ce),.grp_fu_1660_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din0),.grp_fu_1660_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din1),.grp_fu_1660_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_opcode),.grp_fu_1660_p_dout0(grp_fu_4620_p_dout0),.grp_fu_1660_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_ce),.grp_fu_1664_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din0),.grp_fu_1664_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din1),.grp_fu_1664_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_opcode),.grp_fu_1664_p_dout0(grp_fu_4624_p_dout0),.grp_fu_1664_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_ce),.grp_fu_1668_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din0),.grp_fu_1668_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din1),.grp_fu_1668_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_opcode),.grp_fu_1668_p_dout0(grp_fu_4628_p_dout0),.grp_fu_1668_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_ce),.grp_fu_1672_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din0),.grp_fu_1672_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din1),.grp_fu_1672_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_opcode),.grp_fu_1672_p_dout0(grp_fu_4632_p_dout0),.grp_fu_1672_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_ce),.grp_fu_1676_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din0),.grp_fu_1676_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din1),.grp_fu_1676_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_opcode),.grp_fu_1676_p_dout0(grp_fu_4636_p_dout0),.grp_fu_1676_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_ce),.grp_fu_1680_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din0),.grp_fu_1680_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din1),.grp_fu_1680_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_opcode),.grp_fu_1680_p_dout0(grp_fu_4640_p_dout0),.grp_fu_1680_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_ce),.grp_fu_1684_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din0),.grp_fu_1684_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din1),.grp_fu_1684_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_opcode),.grp_fu_1684_p_dout0(grp_fu_4644_p_dout0),.grp_fu_1684_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_ce),.grp_fu_1688_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din0),.grp_fu_1688_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din1),.grp_fu_1688_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_opcode),.grp_fu_1688_p_dout0(grp_fu_4648_p_dout0),.grp_fu_1688_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_ce),.grp_fu_1692_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din0),.grp_fu_1692_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din1),.grp_fu_1692_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_opcode),.grp_fu_1692_p_dout0(grp_fu_4652_p_dout0),.grp_fu_1692_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_ce),.grp_fu_1696_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din0),.grp_fu_1696_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din1),.grp_fu_1696_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_opcode),.grp_fu_1696_p_dout0(grp_fu_4656_p_dout0),.grp_fu_1696_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_ce),.grp_fu_1700_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din0),.grp_fu_1700_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din1),.grp_fu_1700_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_opcode),.grp_fu_1700_p_dout0(grp_fu_4660_p_dout0),.grp_fu_1700_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_ce),.grp_fu_1704_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din0),.grp_fu_1704_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din1),.grp_fu_1704_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_opcode),.grp_fu_1704_p_dout0(grp_fu_4664_p_dout0),.grp_fu_1704_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_ce),.grp_fu_1708_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din0),.grp_fu_1708_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din1),.grp_fu_1708_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_opcode),.grp_fu_1708_p_dout0(grp_fu_4668_p_dout0),.grp_fu_1708_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_ce),.grp_fu_1712_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din1),.grp_fu_1712_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_opcode),.grp_fu_1712_p_dout0(grp_fu_4672_p_dout0),.grp_fu_1712_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din1),.grp_fu_1716_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_opcode),.grp_fu_1716_p_dout0(grp_fu_4676_p_dout0),.grp_fu_1716_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din1),.grp_fu_1720_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_opcode),.grp_fu_1720_p_dout0(grp_fu_4680_p_dout0),.grp_fu_1720_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din1),.grp_fu_1724_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_opcode),.grp_fu_1724_p_dout0(grp_fu_4684_p_dout0),.grp_fu_1724_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din1),.grp_fu_1728_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_opcode),.grp_fu_1728_p_dout0(grp_fu_4688_p_dout0),.grp_fu_1728_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din1),.grp_fu_1732_p_dout0(grp_fu_4692_p_dout0),.grp_fu_1732_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_ce),.grp_fu_1736_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din1),.grp_fu_1736_p_dout0(grp_fu_4696_p_dout0),.grp_fu_1736_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_ce),.grp_fu_1740_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din0),.grp_fu_1740_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din1),.grp_fu_1740_p_dout0(grp_fu_4700_p_dout0),.grp_fu_1740_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_ce),.grp_fu_1744_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din0),.grp_fu_1744_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din1),.grp_fu_1744_p_dout0(grp_fu_4704_p_dout0),.grp_fu_1744_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_ce),.grp_fu_1748_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din0),.grp_fu_1748_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din1),.grp_fu_1748_p_dout0(grp_fu_4708_p_dout0),.grp_fu_1748_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_ce),.grp_fu_1752_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din0),.grp_fu_1752_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din1),.grp_fu_1752_p_dout0(grp_fu_4712_p_dout0),.grp_fu_1752_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_ce),.grp_fu_1756_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din0),.grp_fu_1756_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din1),.grp_fu_1756_p_dout0(grp_fu_4716_p_dout0),.grp_fu_1756_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_ce),.grp_fu_1760_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din0),.grp_fu_1760_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din1),.grp_fu_1760_p_dout0(grp_fu_4720_p_dout0),.grp_fu_1760_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_ce),.grp_fu_1764_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din0),.grp_fu_1764_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din1),.grp_fu_1764_p_dout0(grp_fu_4724_p_dout0),.grp_fu_1764_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_ce),.grp_fu_1768_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din1),.grp_fu_1768_p_dout0(grp_fu_4728_p_dout0),.grp_fu_1768_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din1),.grp_fu_1772_p_dout0(grp_fu_4732_p_dout0),.grp_fu_1772_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_ce),.grp_fu_1776_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din0),.grp_fu_1776_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din1),.grp_fu_1776_p_dout0(grp_fu_4736_p_dout0),.grp_fu_1776_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_ce),.grp_fu_1780_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_4740_p_dout0),.grp_fu_1780_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_ce),.grp_fu_1784_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din0),.grp_fu_1784_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din1),.grp_fu_1784_p_dout0(grp_fu_4744_p_dout0),.grp_fu_1784_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_ce),.grp_fu_1788_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din0),.grp_fu_1788_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din1),.grp_fu_1788_p_dout0(grp_fu_4748_p_dout0),.grp_fu_1788_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_ce),.grp_fu_1792_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din0),.grp_fu_1792_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din1),.grp_fu_1792_p_dout0(grp_fu_4752_p_dout0),.grp_fu_1792_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_ce),.grp_fu_1796_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din0),.grp_fu_1796_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din1),.grp_fu_1796_p_dout0(grp_fu_4756_p_dout0),.grp_fu_1796_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_ce),.grp_fu_1800_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din0),.grp_fu_1800_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din1),.grp_fu_1800_p_dout0(grp_fu_4760_p_dout0),.grp_fu_1800_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_ce),.grp_fu_1804_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din0),.grp_fu_1804_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din1),.grp_fu_1804_p_dout0(grp_fu_4764_p_dout0),.grp_fu_1804_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_ce),.grp_fu_1808_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din0),.grp_fu_1808_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din1),.grp_fu_1808_p_dout0(grp_fu_4768_p_dout0),.grp_fu_1808_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_ce),.grp_fu_1812_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din0),.grp_fu_1812_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din1),.grp_fu_1812_p_dout0(grp_fu_4772_p_dout0),.grp_fu_1812_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_ce),.grp_fu_1816_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din0),.grp_fu_1816_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din1),.grp_fu_1816_p_dout0(grp_fu_4776_p_dout0),.grp_fu_1816_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_ce),.grp_fu_1820_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din0),.grp_fu_1820_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din1),.grp_fu_1820_p_dout0(grp_fu_4780_p_dout0),.grp_fu_1820_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_ce),.grp_fu_1824_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din0),.grp_fu_1824_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din1),.grp_fu_1824_p_dout0(grp_fu_4784_p_dout0),.grp_fu_1824_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_ce),.grp_fu_1828_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din0),.grp_fu_1828_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din1),.grp_fu_1828_p_dout0(grp_fu_4788_p_dout0),.grp_fu_1828_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_ce),.grp_fu_1832_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din0),.grp_fu_1832_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din1),.grp_fu_1832_p_dout0(grp_fu_4792_p_dout0),.grp_fu_1832_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_ce),.grp_fu_1836_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din0),.grp_fu_1836_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din1),.grp_fu_1836_p_dout0(grp_fu_4796_p_dout0),.grp_fu_1836_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_ce),.grp_fu_1840_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din0),.grp_fu_1840_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din1),.grp_fu_1840_p_dout0(grp_fu_4800_p_dout0),.grp_fu_1840_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_ce),.grp_fu_1844_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din0),.grp_fu_1844_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din1),.grp_fu_1844_p_dout0(grp_fu_4804_p_dout0),.grp_fu_1844_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_ce),.grp_fu_1848_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din0),.grp_fu_1848_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din1),.grp_fu_1848_p_dout0(grp_fu_4808_p_dout0),.grp_fu_1848_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_ce),.grp_fu_1852_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din1),.grp_fu_1852_p_dout0(grp_fu_4812_p_dout0),.grp_fu_1852_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din1),.grp_fu_1856_p_dout0(grp_fu_4816_p_dout0),.grp_fu_1856_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1604_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din0),.grp_fu_1604_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din1),.grp_fu_1604_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_opcode),.grp_fu_1604_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1604_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_4_reg_1204 <= input_activations_0_q0;
        input_activations_0_load_reg_1124 <= input_activations_0_q1;
        input_activations_10_load_4_reg_1254 <= input_activations_10_q0;
        input_activations_10_load_reg_1174 <= input_activations_10_q1;
        input_activations_11_load_4_reg_1259 <= input_activations_11_q0;
        input_activations_11_load_reg_1179 <= input_activations_11_q1;
        input_activations_12_load_4_reg_1264 <= input_activations_12_q0;
        input_activations_12_load_reg_1184 <= input_activations_12_q1;
        input_activations_13_load_4_reg_1269 <= input_activations_13_q0;
        input_activations_13_load_reg_1189 <= input_activations_13_q1;
        input_activations_14_load_4_reg_1274 <= input_activations_14_q0;
        input_activations_14_load_reg_1194 <= input_activations_14_q1;
        input_activations_15_load_4_reg_1279 <= input_activations_15_q0;
        input_activations_15_load_reg_1199 <= input_activations_15_q1;
        input_activations_1_load_4_reg_1209 <= input_activations_1_q0;
        input_activations_1_load_reg_1129 <= input_activations_1_q1;
        input_activations_2_load_4_reg_1214 <= input_activations_2_q0;
        input_activations_2_load_reg_1134 <= input_activations_2_q1;
        input_activations_3_load_4_reg_1219 <= input_activations_3_q0;
        input_activations_3_load_reg_1139 <= input_activations_3_q1;
        input_activations_4_load_4_reg_1224 <= input_activations_4_q0;
        input_activations_4_load_reg_1144 <= input_activations_4_q1;
        input_activations_5_load_4_reg_1229 <= input_activations_5_q0;
        input_activations_5_load_reg_1149 <= input_activations_5_q1;
        input_activations_6_load_4_reg_1234 <= input_activations_6_q0;
        input_activations_6_load_reg_1154 <= input_activations_6_q1;
        input_activations_7_load_4_reg_1239 <= input_activations_7_q0;
        input_activations_7_load_reg_1159 <= input_activations_7_q1;
        input_activations_8_load_4_reg_1244 <= input_activations_8_q0;
        input_activations_8_load_reg_1164 <= input_activations_8_q1;
        input_activations_9_load_4_reg_1249 <= input_activations_9_q0;
        input_activations_9_load_reg_1169 <= input_activations_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_5_reg_1444 <= input_activations_0_q1;
        input_activations_0_load_6_reg_1524 <= input_activations_0_q0;
        input_activations_10_load_5_reg_1494 <= input_activations_10_q1;
        input_activations_10_load_6_reg_1574 <= input_activations_10_q0;
        input_activations_11_load_5_reg_1499 <= input_activations_11_q1;
        input_activations_11_load_6_reg_1579 <= input_activations_11_q0;
        input_activations_12_load_5_reg_1504 <= input_activations_12_q1;
        input_activations_12_load_6_reg_1584 <= input_activations_12_q0;
        input_activations_13_load_5_reg_1509 <= input_activations_13_q1;
        input_activations_13_load_6_reg_1589 <= input_activations_13_q0;
        input_activations_14_load_5_reg_1514 <= input_activations_14_q1;
        input_activations_14_load_6_reg_1594 <= input_activations_14_q0;
        input_activations_15_load_5_reg_1519 <= input_activations_15_q1;
        input_activations_15_load_6_reg_1599 <= input_activations_15_q0;
        input_activations_1_load_5_reg_1449 <= input_activations_1_q1;
        input_activations_1_load_6_reg_1529 <= input_activations_1_q0;
        input_activations_2_load_5_reg_1454 <= input_activations_2_q1;
        input_activations_2_load_6_reg_1534 <= input_activations_2_q0;
        input_activations_3_load_5_reg_1459 <= input_activations_3_q1;
        input_activations_3_load_6_reg_1539 <= input_activations_3_q0;
        input_activations_4_load_5_reg_1464 <= input_activations_4_q1;
        input_activations_4_load_6_reg_1544 <= input_activations_4_q0;
        input_activations_5_load_5_reg_1469 <= input_activations_5_q1;
        input_activations_5_load_6_reg_1549 <= input_activations_5_q0;
        input_activations_6_load_5_reg_1474 <= input_activations_6_q1;
        input_activations_6_load_6_reg_1554 <= input_activations_6_q0;
        input_activations_7_load_5_reg_1479 <= input_activations_7_q1;
        input_activations_7_load_6_reg_1559 <= input_activations_7_q0;
        input_activations_8_load_5_reg_1484 <= input_activations_8_q1;
        input_activations_8_load_6_reg_1564 <= input_activations_8_q0;
        input_activations_9_load_5_reg_1489 <= input_activations_9_q1;
        input_activations_9_load_6_reg_1569 <= input_activations_9_q0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o_ap_vld == 1'b1))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o_ap_vld == 1'b1))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o_ap_vld == 1'b1))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_activations_2_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1604_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1604_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_ce;
    end else begin
        grp_fu_1604_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1604_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1604_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_opcode;
    end else begin
        grp_fu_1604_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1604_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1604_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din0;
    end else begin
        grp_fu_1604_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1604_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_grp_fu_1604_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1604_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1604_p_din1;
    end else begin
        grp_fu_1604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1608_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_ce;
    end else begin
        grp_fu_1608_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1612_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_ce;
    end else begin
        grp_fu_1612_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1616_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_ce;
    end else begin
        grp_fu_1616_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1620_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_ce;
    end else begin
        grp_fu_1620_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1624_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_ce;
    end else begin
        grp_fu_1624_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1628_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_ce;
    end else begin
        grp_fu_1628_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1632_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_ce;
    end else begin
        grp_fu_1632_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1636_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_ce;
    end else begin
        grp_fu_1636_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1640_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_ce;
    end else begin
        grp_fu_1640_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1644_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_ce;
    end else begin
        grp_fu_1644_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1648_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_ce;
    end else begin
        grp_fu_1648_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1652_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_ce;
    end else begin
        grp_fu_1652_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1656_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_ce;
    end else begin
        grp_fu_1656_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1660_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_ce;
    end else begin
        grp_fu_1660_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1664_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_ce;
    end else begin
        grp_fu_1664_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1668_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_ce;
    end else begin
        grp_fu_1668_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1672_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_ce;
    end else begin
        grp_fu_1672_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1676_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_ce;
    end else begin
        grp_fu_1676_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1680_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_ce;
    end else begin
        grp_fu_1680_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1684_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_ce;
    end else begin
        grp_fu_1684_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1688_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_ce;
    end else begin
        grp_fu_1688_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1692_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_ce;
    end else begin
        grp_fu_1692_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1696_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_ce;
    end else begin
        grp_fu_1696_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1700_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_ce;
    end else begin
        grp_fu_1700_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1704_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_ce;
    end else begin
        grp_fu_1704_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1708_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_ce;
    end else begin
        grp_fu_1708_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1712_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_ce;
    end else begin
        grp_fu_1712_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1716_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_ce;
    end else begin
        grp_fu_1716_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1720_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_ce;
    end else begin
        grp_fu_1720_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1724_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_ce;
    end else begin
        grp_fu_1724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1728_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_ce;
    end else begin
        grp_fu_1728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1732_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_ce;
    end else begin
        grp_fu_1732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1736_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1740_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_ce;
    end else begin
        grp_fu_1740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1744_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_ce;
    end else begin
        grp_fu_1744_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1748_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_ce;
    end else begin
        grp_fu_1748_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1752_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_ce;
    end else begin
        grp_fu_1752_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1756_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_ce;
    end else begin
        grp_fu_1756_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1760_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_ce;
    end else begin
        grp_fu_1760_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1764_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_ce;
    end else begin
        grp_fu_1764_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1768_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1772_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1776_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_ce;
    end else begin
        grp_fu_1776_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1780_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1784_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_ce;
    end else begin
        grp_fu_1784_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1788_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_ce;
    end else begin
        grp_fu_1788_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1792_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_ce;
    end else begin
        grp_fu_1792_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1796_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_ce;
    end else begin
        grp_fu_1796_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1800_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_ce;
    end else begin
        grp_fu_1800_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1804_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_ce;
    end else begin
        grp_fu_1804_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1808_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_ce;
    end else begin
        grp_fu_1808_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1812_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_ce;
    end else begin
        grp_fu_1812_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1816_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_ce;
    end else begin
        grp_fu_1816_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1820_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_ce;
    end else begin
        grp_fu_1820_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1824_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_ce;
    end else begin
        grp_fu_1824_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1828_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_ce;
    end else begin
        grp_fu_1828_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1832_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_ce;
    end else begin
        grp_fu_1832_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1836_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_ce;
    end else begin
        grp_fu_1836_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1840_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_ce;
    end else begin
        grp_fu_1840_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1844_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_ce;
    end else begin
        grp_fu_1844_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1848_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_ce;
    end else begin
        grp_fu_1848_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1852_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_ce;
    end else begin
        grp_fu_1852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1856_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_ce;
    end else begin
        grp_fu_1856_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_done == 1'b1))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_biases3_ce0;
assign grp_fu_4564_p_ce = grp_fu_1604_ce;
assign grp_fu_4564_p_din0 = grp_fu_1604_p0;
assign grp_fu_4564_p_din1 = grp_fu_1604_p1;
assign grp_fu_4564_p_opcode = grp_fu_1604_opcode;
assign grp_fu_4568_p_ce = grp_fu_1608_ce;
assign grp_fu_4568_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din0;
assign grp_fu_4568_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_din1;
assign grp_fu_4568_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1608_p_opcode;
assign grp_fu_4572_p_ce = grp_fu_1612_ce;
assign grp_fu_4572_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din0;
assign grp_fu_4572_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_din1;
assign grp_fu_4572_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1612_p_opcode;
assign grp_fu_4576_p_ce = grp_fu_1616_ce;
assign grp_fu_4576_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din0;
assign grp_fu_4576_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_din1;
assign grp_fu_4576_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1616_p_opcode;
assign grp_fu_4580_p_ce = grp_fu_1620_ce;
assign grp_fu_4580_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din0;
assign grp_fu_4580_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_din1;
assign grp_fu_4580_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1620_p_opcode;
assign grp_fu_4584_p_ce = grp_fu_1624_ce;
assign grp_fu_4584_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din0;
assign grp_fu_4584_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_din1;
assign grp_fu_4584_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1624_p_opcode;
assign grp_fu_4588_p_ce = grp_fu_1628_ce;
assign grp_fu_4588_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din0;
assign grp_fu_4588_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1628_p_din1;
assign grp_fu_4588_p_opcode = 2'd0;
assign grp_fu_4592_p_ce = grp_fu_1632_ce;
assign grp_fu_4592_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din0;
assign grp_fu_4592_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1632_p_din1;
assign grp_fu_4592_p_opcode = 2'd0;
assign grp_fu_4596_p_ce = grp_fu_1636_ce;
assign grp_fu_4596_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din0;
assign grp_fu_4596_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1636_p_din1;
assign grp_fu_4596_p_opcode = 2'd0;
assign grp_fu_4600_p_ce = grp_fu_1640_ce;
assign grp_fu_4600_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din0;
assign grp_fu_4600_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1640_p_din1;
assign grp_fu_4600_p_opcode = 2'd0;
assign grp_fu_4604_p_ce = grp_fu_1644_ce;
assign grp_fu_4604_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din0;
assign grp_fu_4604_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1644_p_din1;
assign grp_fu_4604_p_opcode = 2'd0;
assign grp_fu_4608_p_ce = grp_fu_1648_ce;
assign grp_fu_4608_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din0;
assign grp_fu_4608_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1648_p_din1;
assign grp_fu_4608_p_opcode = 2'd0;
assign grp_fu_4612_p_ce = grp_fu_1652_ce;
assign grp_fu_4612_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din0;
assign grp_fu_4612_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1652_p_din1;
assign grp_fu_4612_p_opcode = 2'd0;
assign grp_fu_4616_p_ce = grp_fu_1656_ce;
assign grp_fu_4616_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din0;
assign grp_fu_4616_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1656_p_din1;
assign grp_fu_4616_p_opcode = 2'd0;
assign grp_fu_4620_p_ce = grp_fu_1660_ce;
assign grp_fu_4620_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din0;
assign grp_fu_4620_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1660_p_din1;
assign grp_fu_4620_p_opcode = 2'd0;
assign grp_fu_4624_p_ce = grp_fu_1664_ce;
assign grp_fu_4624_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din0;
assign grp_fu_4624_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1664_p_din1;
assign grp_fu_4624_p_opcode = 2'd0;
assign grp_fu_4628_p_ce = grp_fu_1668_ce;
assign grp_fu_4628_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din0;
assign grp_fu_4628_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1668_p_din1;
assign grp_fu_4628_p_opcode = 2'd0;
assign grp_fu_4632_p_ce = grp_fu_1672_ce;
assign grp_fu_4632_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din0;
assign grp_fu_4632_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1672_p_din1;
assign grp_fu_4632_p_opcode = 2'd0;
assign grp_fu_4636_p_ce = grp_fu_1676_ce;
assign grp_fu_4636_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din0;
assign grp_fu_4636_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1676_p_din1;
assign grp_fu_4636_p_opcode = 2'd0;
assign grp_fu_4640_p_ce = grp_fu_1680_ce;
assign grp_fu_4640_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din0;
assign grp_fu_4640_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1680_p_din1;
assign grp_fu_4640_p_opcode = 2'd0;
assign grp_fu_4644_p_ce = grp_fu_1684_ce;
assign grp_fu_4644_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din0;
assign grp_fu_4644_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1684_p_din1;
assign grp_fu_4644_p_opcode = 2'd0;
assign grp_fu_4648_p_ce = grp_fu_1688_ce;
assign grp_fu_4648_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din0;
assign grp_fu_4648_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1688_p_din1;
assign grp_fu_4648_p_opcode = 2'd0;
assign grp_fu_4652_p_ce = grp_fu_1692_ce;
assign grp_fu_4652_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din0;
assign grp_fu_4652_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1692_p_din1;
assign grp_fu_4652_p_opcode = 2'd0;
assign grp_fu_4656_p_ce = grp_fu_1696_ce;
assign grp_fu_4656_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din0;
assign grp_fu_4656_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1696_p_din1;
assign grp_fu_4656_p_opcode = 2'd0;
assign grp_fu_4660_p_ce = grp_fu_1700_ce;
assign grp_fu_4660_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din0;
assign grp_fu_4660_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1700_p_din1;
assign grp_fu_4660_p_opcode = 2'd0;
assign grp_fu_4664_p_ce = grp_fu_1704_ce;
assign grp_fu_4664_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din0;
assign grp_fu_4664_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1704_p_din1;
assign grp_fu_4664_p_opcode = 2'd0;
assign grp_fu_4668_p_ce = grp_fu_1708_ce;
assign grp_fu_4668_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din0;
assign grp_fu_4668_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1708_p_din1;
assign grp_fu_4668_p_opcode = 2'd0;
assign grp_fu_4672_p_ce = grp_fu_1712_ce;
assign grp_fu_4672_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din0;
assign grp_fu_4672_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1712_p_din1;
assign grp_fu_4672_p_opcode = 2'd0;
assign grp_fu_4676_p_ce = grp_fu_1716_ce;
assign grp_fu_4676_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din0;
assign grp_fu_4676_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1716_p_din1;
assign grp_fu_4676_p_opcode = 2'd0;
assign grp_fu_4680_p_ce = grp_fu_1720_ce;
assign grp_fu_4680_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din0;
assign grp_fu_4680_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1720_p_din1;
assign grp_fu_4680_p_opcode = 2'd0;
assign grp_fu_4684_p_ce = grp_fu_1724_ce;
assign grp_fu_4684_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din0;
assign grp_fu_4684_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1724_p_din1;
assign grp_fu_4684_p_opcode = 2'd0;
assign grp_fu_4688_p_ce = grp_fu_1728_ce;
assign grp_fu_4688_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din0;
assign grp_fu_4688_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1728_p_din1;
assign grp_fu_4688_p_opcode = 2'd0;
assign grp_fu_4692_p_ce = grp_fu_1732_ce;
assign grp_fu_4692_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din0;
assign grp_fu_4692_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1732_p_din1;
assign grp_fu_4696_p_ce = grp_fu_1736_ce;
assign grp_fu_4696_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din0;
assign grp_fu_4696_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1736_p_din1;
assign grp_fu_4700_p_ce = grp_fu_1740_ce;
assign grp_fu_4700_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din0;
assign grp_fu_4700_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1740_p_din1;
assign grp_fu_4704_p_ce = grp_fu_1744_ce;
assign grp_fu_4704_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din0;
assign grp_fu_4704_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1744_p_din1;
assign grp_fu_4708_p_ce = grp_fu_1748_ce;
assign grp_fu_4708_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din0;
assign grp_fu_4708_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1748_p_din1;
assign grp_fu_4712_p_ce = grp_fu_1752_ce;
assign grp_fu_4712_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din0;
assign grp_fu_4712_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1752_p_din1;
assign grp_fu_4716_p_ce = grp_fu_1756_ce;
assign grp_fu_4716_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din0;
assign grp_fu_4716_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1756_p_din1;
assign grp_fu_4720_p_ce = grp_fu_1760_ce;
assign grp_fu_4720_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din0;
assign grp_fu_4720_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1760_p_din1;
assign grp_fu_4724_p_ce = grp_fu_1764_ce;
assign grp_fu_4724_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din0;
assign grp_fu_4724_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1764_p_din1;
assign grp_fu_4728_p_ce = grp_fu_1768_ce;
assign grp_fu_4728_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din0;
assign grp_fu_4728_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1768_p_din1;
assign grp_fu_4732_p_ce = grp_fu_1772_ce;
assign grp_fu_4732_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din0;
assign grp_fu_4732_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1772_p_din1;
assign grp_fu_4736_p_ce = grp_fu_1776_ce;
assign grp_fu_4736_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din0;
assign grp_fu_4736_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1776_p_din1;
assign grp_fu_4740_p_ce = grp_fu_1780_ce;
assign grp_fu_4740_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din0;
assign grp_fu_4740_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1780_p_din1;
assign grp_fu_4744_p_ce = grp_fu_1784_ce;
assign grp_fu_4744_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din0;
assign grp_fu_4744_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1784_p_din1;
assign grp_fu_4748_p_ce = grp_fu_1788_ce;
assign grp_fu_4748_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din0;
assign grp_fu_4748_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1788_p_din1;
assign grp_fu_4752_p_ce = grp_fu_1792_ce;
assign grp_fu_4752_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din0;
assign grp_fu_4752_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1792_p_din1;
assign grp_fu_4756_p_ce = grp_fu_1796_ce;
assign grp_fu_4756_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din0;
assign grp_fu_4756_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1796_p_din1;
assign grp_fu_4760_p_ce = grp_fu_1800_ce;
assign grp_fu_4760_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din0;
assign grp_fu_4760_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1800_p_din1;
assign grp_fu_4764_p_ce = grp_fu_1804_ce;
assign grp_fu_4764_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din0;
assign grp_fu_4764_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1804_p_din1;
assign grp_fu_4768_p_ce = grp_fu_1808_ce;
assign grp_fu_4768_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din0;
assign grp_fu_4768_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1808_p_din1;
assign grp_fu_4772_p_ce = grp_fu_1812_ce;
assign grp_fu_4772_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din0;
assign grp_fu_4772_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1812_p_din1;
assign grp_fu_4776_p_ce = grp_fu_1816_ce;
assign grp_fu_4776_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din0;
assign grp_fu_4776_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1816_p_din1;
assign grp_fu_4780_p_ce = grp_fu_1820_ce;
assign grp_fu_4780_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din0;
assign grp_fu_4780_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1820_p_din1;
assign grp_fu_4784_p_ce = grp_fu_1824_ce;
assign grp_fu_4784_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din0;
assign grp_fu_4784_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1824_p_din1;
assign grp_fu_4788_p_ce = grp_fu_1828_ce;
assign grp_fu_4788_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din0;
assign grp_fu_4788_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1828_p_din1;
assign grp_fu_4792_p_ce = grp_fu_1832_ce;
assign grp_fu_4792_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din0;
assign grp_fu_4792_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1832_p_din1;
assign grp_fu_4796_p_ce = grp_fu_1836_ce;
assign grp_fu_4796_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din0;
assign grp_fu_4796_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1836_p_din1;
assign grp_fu_4800_p_ce = grp_fu_1840_ce;
assign grp_fu_4800_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din0;
assign grp_fu_4800_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1840_p_din1;
assign grp_fu_4804_p_ce = grp_fu_1844_ce;
assign grp_fu_4804_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din0;
assign grp_fu_4804_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1844_p_din1;
assign grp_fu_4808_p_ce = grp_fu_1848_ce;
assign grp_fu_4808_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din0;
assign grp_fu_4808_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1848_p_din1;
assign grp_fu_4812_p_ce = grp_fu_1852_ce;
assign grp_fu_4812_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din0;
assign grp_fu_4812_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1852_p_din1;
assign grp_fu_4816_p_ce = grp_fu_1856_ce;
assign grp_fu_4816_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din0;
assign grp_fu_4816_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_grp_fu_1856_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_952_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_ap_start_reg;
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
assign weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address0;
assign weights3_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_address1;
assign weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce0;
assign weights3_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_0_ce1;
assign weights3_10_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address0;
assign weights3_10_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_address1;
assign weights3_10_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce0;
assign weights3_10_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_10_ce1;
assign weights3_11_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address0;
assign weights3_11_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_address1;
assign weights3_11_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce0;
assign weights3_11_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_11_ce1;
assign weights3_12_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address0;
assign weights3_12_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_address1;
assign weights3_12_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce0;
assign weights3_12_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_12_ce1;
assign weights3_13_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address0;
assign weights3_13_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_address1;
assign weights3_13_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce0;
assign weights3_13_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_13_ce1;
assign weights3_14_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address0;
assign weights3_14_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_address1;
assign weights3_14_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce0;
assign weights3_14_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_14_ce1;
assign weights3_15_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address0;
assign weights3_15_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_address1;
assign weights3_15_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce0;
assign weights3_15_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_15_ce1;
assign weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address0;
assign weights3_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_address1;
assign weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce0;
assign weights3_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_1_ce1;
assign weights3_2_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address0;
assign weights3_2_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_address1;
assign weights3_2_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce0;
assign weights3_2_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_2_ce1;
assign weights3_3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address0;
assign weights3_3_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_address1;
assign weights3_3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce0;
assign weights3_3_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_3_ce1;
assign weights3_4_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address0;
assign weights3_4_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_address1;
assign weights3_4_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce0;
assign weights3_4_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_4_ce1;
assign weights3_5_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address0;
assign weights3_5_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_address1;
assign weights3_5_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce0;
assign weights3_5_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_5_ce1;
assign weights3_6_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address0;
assign weights3_6_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_address1;
assign weights3_6_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce0;
assign weights3_6_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_6_ce1;
assign weights3_7_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address0;
assign weights3_7_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_address1;
assign weights3_7_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce0;
assign weights3_7_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_7_ce1;
assign weights3_8_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address0;
assign weights3_8_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_address1;
assign weights3_8_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce0;
assign weights3_8_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_8_ce1;
assign weights3_9_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address0;
assign weights3_9_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_address1;
assign weights3_9_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce0;
assign weights3_9_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_814_weights3_9_ce1;
endmodule 