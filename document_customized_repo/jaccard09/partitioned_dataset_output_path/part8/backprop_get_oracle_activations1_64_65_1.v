
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_8_address1,weights2_8_ce1,weights2_8_q1,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_9_address1,weights2_9_ce1,weights2_9_q1,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_10_address1,weights2_10_ce1,weights2_10_q1,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_11_address1,weights2_11_ce1,weights2_11_q1,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_12_address1,weights2_12_ce1,weights2_12_q1,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_13_address1,weights2_13_ce1,weights2_13_q1,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_14_address1,weights2_14_ce1,weights2_14_q1,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_15_address1,weights2_15_ce1,weights2_15_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_4_address1,output_differences_4_ce1,output_differences_4_q1,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_5_address1,output_differences_5_ce1,output_differences_5_q1,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_6_address1,output_differences_6_ce1,output_differences_6_q1,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_7_address1,output_differences_7_ce1,output_differences_7_q1,output_differences_8_address0,output_differences_8_ce0,output_differences_8_q0,output_differences_8_address1,output_differences_8_ce1,output_differences_8_q1,output_differences_9_address0,output_differences_9_ce0,output_differences_9_q0,output_differences_9_address1,output_differences_9_ce1,output_differences_9_q1,output_differences_10_address0,output_differences_10_ce0,output_differences_10_q0,output_differences_10_address1,output_differences_10_ce1,output_differences_10_q1,output_differences_11_address0,output_differences_11_ce0,output_differences_11_q0,output_differences_11_address1,output_differences_11_ce1,output_differences_11_q1,output_differences_12_address0,output_differences_12_ce0,output_differences_12_q0,output_differences_12_address1,output_differences_12_ce1,output_differences_12_q1,output_differences_13_address0,output_differences_13_ce0,output_differences_13_q0,output_differences_13_address1,output_differences_13_ce1,output_differences_13_q1,output_differences_14_address0,output_differences_14_ce0,output_differences_14_q0,output_differences_14_address1,output_differences_14_ce1,output_differences_14_q1,output_differences_15_address0,output_differences_15_ce0,output_differences_15_q0,output_differences_15_address1,output_differences_15_ce1,output_differences_15_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,oracle_activations_8_address0,oracle_activations_8_ce0,oracle_activations_8_we0,oracle_activations_8_d0,oracle_activations_9_address0,oracle_activations_9_ce0,oracle_activations_9_we0,oracle_activations_9_d0,oracle_activations_10_address0,oracle_activations_10_ce0,oracle_activations_10_we0,oracle_activations_10_d0,oracle_activations_11_address0,oracle_activations_11_ce0,oracle_activations_11_we0,oracle_activations_11_d0,oracle_activations_12_address0,oracle_activations_12_ce0,oracle_activations_12_we0,oracle_activations_12_d0,oracle_activations_13_address0,oracle_activations_13_ce0,oracle_activations_13_we0,oracle_activations_13_d0,oracle_activations_14_address0,oracle_activations_14_ce0,oracle_activations_14_we0,oracle_activations_14_d0,oracle_activations_15_address0,oracle_activations_15_ce0,oracle_activations_15_we0,oracle_activations_15_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,dactivations_8_address0,dactivations_8_ce0,dactivations_8_q0,dactivations_9_address0,dactivations_9_ce0,dactivations_9_q0,dactivations_10_address0,dactivations_10_ce0,dactivations_10_q0,dactivations_11_address0,dactivations_11_ce0,dactivations_11_q0,dactivations_12_address0,dactivations_12_ce0,dactivations_12_q0,dactivations_13_address0,dactivations_13_ce0,dactivations_13_q0,dactivations_14_address0,dactivations_14_ce0,dactivations_14_q0,dactivations_15_address0,dactivations_15_ce0,dactivations_15_q0,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4568_p_din0,grp_fu_4568_p_din1,grp_fu_4568_p_opcode,grp_fu_4568_p_dout0,grp_fu_4568_p_ce,grp_fu_4572_p_din0,grp_fu_4572_p_din1,grp_fu_4572_p_opcode,grp_fu_4572_p_dout0,grp_fu_4572_p_ce,grp_fu_4576_p_din0,grp_fu_4576_p_din1,grp_fu_4576_p_opcode,grp_fu_4576_p_dout0,grp_fu_4576_p_ce,grp_fu_4580_p_din0,grp_fu_4580_p_din1,grp_fu_4580_p_opcode,grp_fu_4580_p_dout0,grp_fu_4580_p_ce,grp_fu_4584_p_din0,grp_fu_4584_p_din1,grp_fu_4584_p_opcode,grp_fu_4584_p_dout0,grp_fu_4584_p_ce,grp_fu_4588_p_din0,grp_fu_4588_p_din1,grp_fu_4588_p_opcode,grp_fu_4588_p_dout0,grp_fu_4588_p_ce,grp_fu_4592_p_din0,grp_fu_4592_p_din1,grp_fu_4592_p_opcode,grp_fu_4592_p_dout0,grp_fu_4592_p_ce,grp_fu_4596_p_din0,grp_fu_4596_p_din1,grp_fu_4596_p_opcode,grp_fu_4596_p_dout0,grp_fu_4596_p_ce,grp_fu_4600_p_din0,grp_fu_4600_p_din1,grp_fu_4600_p_opcode,grp_fu_4600_p_dout0,grp_fu_4600_p_ce,grp_fu_4604_p_din0,grp_fu_4604_p_din1,grp_fu_4604_p_opcode,grp_fu_4604_p_dout0,grp_fu_4604_p_ce,grp_fu_4608_p_din0,grp_fu_4608_p_din1,grp_fu_4608_p_opcode,grp_fu_4608_p_dout0,grp_fu_4608_p_ce,grp_fu_4612_p_din0,grp_fu_4612_p_din1,grp_fu_4612_p_opcode,grp_fu_4612_p_dout0,grp_fu_4612_p_ce,grp_fu_4616_p_din0,grp_fu_4616_p_din1,grp_fu_4616_p_opcode,grp_fu_4616_p_dout0,grp_fu_4616_p_ce,grp_fu_4620_p_din0,grp_fu_4620_p_din1,grp_fu_4620_p_opcode,grp_fu_4620_p_dout0,grp_fu_4620_p_ce,grp_fu_4624_p_din0,grp_fu_4624_p_din1,grp_fu_4624_p_opcode,grp_fu_4624_p_dout0,grp_fu_4624_p_ce,grp_fu_4628_p_din0,grp_fu_4628_p_din1,grp_fu_4628_p_opcode,grp_fu_4628_p_dout0,grp_fu_4628_p_ce,grp_fu_4632_p_din0,grp_fu_4632_p_din1,grp_fu_4632_p_opcode,grp_fu_4632_p_dout0,grp_fu_4632_p_ce,grp_fu_4636_p_din0,grp_fu_4636_p_din1,grp_fu_4636_p_opcode,grp_fu_4636_p_dout0,grp_fu_4636_p_ce,grp_fu_4640_p_din0,grp_fu_4640_p_din1,grp_fu_4640_p_opcode,grp_fu_4640_p_dout0,grp_fu_4640_p_ce,grp_fu_4644_p_din0,grp_fu_4644_p_din1,grp_fu_4644_p_opcode,grp_fu_4644_p_dout0,grp_fu_4644_p_ce,grp_fu_4648_p_din0,grp_fu_4648_p_din1,grp_fu_4648_p_opcode,grp_fu_4648_p_dout0,grp_fu_4648_p_ce,grp_fu_4652_p_din0,grp_fu_4652_p_din1,grp_fu_4652_p_opcode,grp_fu_4652_p_dout0,grp_fu_4652_p_ce,grp_fu_4656_p_din0,grp_fu_4656_p_din1,grp_fu_4656_p_opcode,grp_fu_4656_p_dout0,grp_fu_4656_p_ce,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_opcode,grp_fu_4660_p_dout0,grp_fu_4660_p_ce,grp_fu_4664_p_din0,grp_fu_4664_p_din1,grp_fu_4664_p_opcode,grp_fu_4664_p_dout0,grp_fu_4664_p_ce,grp_fu_4668_p_din0,grp_fu_4668_p_din1,grp_fu_4668_p_opcode,grp_fu_4668_p_dout0,grp_fu_4668_p_ce,grp_fu_4672_p_din0,grp_fu_4672_p_din1,grp_fu_4672_p_opcode,grp_fu_4672_p_dout0,grp_fu_4672_p_ce,grp_fu_4676_p_din0,grp_fu_4676_p_din1,grp_fu_4676_p_opcode,grp_fu_4676_p_dout0,grp_fu_4676_p_ce,grp_fu_4680_p_din0,grp_fu_4680_p_din1,grp_fu_4680_p_opcode,grp_fu_4680_p_dout0,grp_fu_4680_p_ce,grp_fu_4684_p_din0,grp_fu_4684_p_din1,grp_fu_4684_p_opcode,grp_fu_4684_p_dout0,grp_fu_4684_p_ce,grp_fu_4688_p_din0,grp_fu_4688_p_din1,grp_fu_4688_p_opcode,grp_fu_4688_p_dout0,grp_fu_4688_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce,grp_fu_4780_p_din0,grp_fu_4780_p_din1,grp_fu_4780_p_dout0,grp_fu_4780_p_ce,grp_fu_4784_p_din0,grp_fu_4784_p_din1,grp_fu_4784_p_dout0,grp_fu_4784_p_ce,grp_fu_4788_p_din0,grp_fu_4788_p_din1,grp_fu_4788_p_dout0,grp_fu_4788_p_ce,grp_fu_4792_p_din0,grp_fu_4792_p_din1,grp_fu_4792_p_dout0,grp_fu_4792_p_ce,grp_fu_4796_p_din0,grp_fu_4796_p_din1,grp_fu_4796_p_dout0,grp_fu_4796_p_ce,grp_fu_4800_p_din0,grp_fu_4800_p_din1,grp_fu_4800_p_dout0,grp_fu_4800_p_ce,grp_fu_4804_p_din0,grp_fu_4804_p_din1,grp_fu_4804_p_dout0,grp_fu_4804_p_ce,grp_fu_4808_p_din0,grp_fu_4808_p_din1,grp_fu_4808_p_dout0,grp_fu_4808_p_ce,grp_fu_4812_p_din0,grp_fu_4812_p_din1,grp_fu_4812_p_dout0,grp_fu_4812_p_ce,grp_fu_4816_p_din0,grp_fu_4816_p_din1,grp_fu_4816_p_dout0,grp_fu_4816_p_ce,grp_fu_4828_p_din0,grp_fu_4828_p_din1,grp_fu_4828_p_dout0,grp_fu_4828_p_ce);  
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
output  [1:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [1:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [1:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [1:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [1:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [1:0] output_differences_2_address1;
output   output_differences_2_ce1;
input  [63:0] output_differences_2_q1;
output  [1:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [1:0] output_differences_3_address1;
output   output_differences_3_ce1;
input  [63:0] output_differences_3_q1;
output  [1:0] output_differences_4_address0;
output   output_differences_4_ce0;
input  [63:0] output_differences_4_q0;
output  [1:0] output_differences_4_address1;
output   output_differences_4_ce1;
input  [63:0] output_differences_4_q1;
output  [1:0] output_differences_5_address0;
output   output_differences_5_ce0;
input  [63:0] output_differences_5_q0;
output  [1:0] output_differences_5_address1;
output   output_differences_5_ce1;
input  [63:0] output_differences_5_q1;
output  [1:0] output_differences_6_address0;
output   output_differences_6_ce0;
input  [63:0] output_differences_6_q0;
output  [1:0] output_differences_6_address1;
output   output_differences_6_ce1;
input  [63:0] output_differences_6_q1;
output  [1:0] output_differences_7_address0;
output   output_differences_7_ce0;
input  [63:0] output_differences_7_q0;
output  [1:0] output_differences_7_address1;
output   output_differences_7_ce1;
input  [63:0] output_differences_7_q1;
output  [1:0] output_differences_8_address0;
output   output_differences_8_ce0;
input  [63:0] output_differences_8_q0;
output  [1:0] output_differences_8_address1;
output   output_differences_8_ce1;
input  [63:0] output_differences_8_q1;
output  [1:0] output_differences_9_address0;
output   output_differences_9_ce0;
input  [63:0] output_differences_9_q0;
output  [1:0] output_differences_9_address1;
output   output_differences_9_ce1;
input  [63:0] output_differences_9_q1;
output  [1:0] output_differences_10_address0;
output   output_differences_10_ce0;
input  [63:0] output_differences_10_q0;
output  [1:0] output_differences_10_address1;
output   output_differences_10_ce1;
input  [63:0] output_differences_10_q1;
output  [1:0] output_differences_11_address0;
output   output_differences_11_ce0;
input  [63:0] output_differences_11_q0;
output  [1:0] output_differences_11_address1;
output   output_differences_11_ce1;
input  [63:0] output_differences_11_q1;
output  [1:0] output_differences_12_address0;
output   output_differences_12_ce0;
input  [63:0] output_differences_12_q0;
output  [1:0] output_differences_12_address1;
output   output_differences_12_ce1;
input  [63:0] output_differences_12_q1;
output  [1:0] output_differences_13_address0;
output   output_differences_13_ce0;
input  [63:0] output_differences_13_q0;
output  [1:0] output_differences_13_address1;
output   output_differences_13_ce1;
input  [63:0] output_differences_13_q1;
output  [1:0] output_differences_14_address0;
output   output_differences_14_ce0;
input  [63:0] output_differences_14_q0;
output  [1:0] output_differences_14_address1;
output   output_differences_14_ce1;
input  [63:0] output_differences_14_q1;
output  [1:0] output_differences_15_address0;
output   output_differences_15_ce0;
input  [63:0] output_differences_15_q0;
output  [1:0] output_differences_15_address1;
output   output_differences_15_ce1;
input  [63:0] output_differences_15_q1;
output  [1:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [1:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [1:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [1:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [1:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [1:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [1:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [1:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [1:0] oracle_activations_8_address0;
output   oracle_activations_8_ce0;
output   oracle_activations_8_we0;
output  [63:0] oracle_activations_8_d0;
output  [1:0] oracle_activations_9_address0;
output   oracle_activations_9_ce0;
output   oracle_activations_9_we0;
output  [63:0] oracle_activations_9_d0;
output  [1:0] oracle_activations_10_address0;
output   oracle_activations_10_ce0;
output   oracle_activations_10_we0;
output  [63:0] oracle_activations_10_d0;
output  [1:0] oracle_activations_11_address0;
output   oracle_activations_11_ce0;
output   oracle_activations_11_we0;
output  [63:0] oracle_activations_11_d0;
output  [1:0] oracle_activations_12_address0;
output   oracle_activations_12_ce0;
output   oracle_activations_12_we0;
output  [63:0] oracle_activations_12_d0;
output  [1:0] oracle_activations_13_address0;
output   oracle_activations_13_ce0;
output   oracle_activations_13_we0;
output  [63:0] oracle_activations_13_d0;
output  [1:0] oracle_activations_14_address0;
output   oracle_activations_14_ce0;
output   oracle_activations_14_we0;
output  [63:0] oracle_activations_14_d0;
output  [1:0] oracle_activations_15_address0;
output   oracle_activations_15_ce0;
output   oracle_activations_15_we0;
output  [63:0] oracle_activations_15_d0;
output  [1:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [1:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [1:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [1:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [1:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [1:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [1:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [1:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [1:0] dactivations_8_address0;
output   dactivations_8_ce0;
input  [63:0] dactivations_8_q0;
output  [1:0] dactivations_9_address0;
output   dactivations_9_ce0;
input  [63:0] dactivations_9_q0;
output  [1:0] dactivations_10_address0;
output   dactivations_10_ce0;
input  [63:0] dactivations_10_q0;
output  [1:0] dactivations_11_address0;
output   dactivations_11_ce0;
input  [63:0] dactivations_11_q0;
output  [1:0] dactivations_12_address0;
output   dactivations_12_ce0;
input  [63:0] dactivations_12_q0;
output  [1:0] dactivations_13_address0;
output   dactivations_13_ce0;
input  [63:0] dactivations_13_q0;
output  [1:0] dactivations_14_address0;
output   dactivations_14_ce0;
input  [63:0] dactivations_14_q0;
output  [1:0] dactivations_15_address0;
output   dactivations_15_ce0;
input  [63:0] dactivations_15_q0;
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
output  [63:0] grp_fu_4828_p_din0;
output  [63:0] grp_fu_4828_p_din1;
input  [63:0] grp_fu_4828_p_dout0;
output   grp_fu_4828_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_0_load_reg_1224;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_1229;
reg   [63:0] output_differences_2_load_reg_1234;
reg   [63:0] output_differences_3_load_reg_1239;
reg   [63:0] output_differences_4_load_reg_1244;
reg   [63:0] output_differences_5_load_reg_1249;
reg   [63:0] output_differences_6_load_reg_1254;
reg   [63:0] output_differences_7_load_reg_1259;
reg   [63:0] output_differences_8_load_reg_1264;
reg   [63:0] output_differences_9_load_reg_1269;
reg   [63:0] output_differences_10_load_reg_1274;
reg   [63:0] output_differences_11_load_reg_1279;
reg   [63:0] output_differences_12_load_reg_1284;
reg   [63:0] output_differences_13_load_reg_1289;
reg   [63:0] output_differences_14_load_reg_1294;
reg   [63:0] output_differences_15_load_reg_1299;
reg   [63:0] output_differences_0_load_1_reg_1304;
reg   [63:0] output_differences_1_load_1_reg_1309;
reg   [63:0] output_differences_2_load_1_reg_1314;
reg   [63:0] output_differences_3_load_1_reg_1319;
reg   [63:0] output_differences_4_load_1_reg_1324;
reg   [63:0] output_differences_5_load_1_reg_1329;
reg   [63:0] output_differences_6_load_1_reg_1334;
reg   [63:0] output_differences_7_load_1_reg_1339;
reg   [63:0] output_differences_8_load_1_reg_1344;
reg   [63:0] output_differences_9_load_1_reg_1349;
reg   [63:0] output_differences_10_load_1_reg_1354;
reg   [63:0] output_differences_11_load_1_reg_1359;
reg   [63:0] output_differences_12_load_1_reg_1364;
reg   [63:0] output_differences_13_load_1_reg_1369;
reg   [63:0] output_differences_14_load_1_reg_1374;
reg   [63:0] output_differences_15_load_1_reg_1379;
reg   [63:0] output_differences_0_load_2_reg_1544;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_1_load_2_reg_1549;
reg   [63:0] output_differences_2_load_2_reg_1554;
reg   [63:0] output_differences_3_load_2_reg_1559;
reg   [63:0] output_differences_4_load_2_reg_1564;
reg   [63:0] output_differences_5_load_2_reg_1569;
reg   [63:0] output_differences_6_load_2_reg_1574;
reg   [63:0] output_differences_7_load_2_reg_1579;
reg   [63:0] output_differences_8_load_2_reg_1584;
reg   [63:0] output_differences_9_load_2_reg_1589;
reg   [63:0] output_differences_10_load_2_reg_1594;
reg   [63:0] output_differences_11_load_2_reg_1599;
reg   [63:0] output_differences_12_load_2_reg_1604;
reg   [63:0] output_differences_13_load_2_reg_1609;
reg   [63:0] output_differences_14_load_2_reg_1614;
reg   [63:0] output_differences_15_load_2_reg_1619;
reg   [63:0] output_differences_0_load_3_reg_1624;
reg   [63:0] output_differences_1_load_3_reg_1629;
reg   [63:0] output_differences_2_load_3_reg_1634;
reg   [63:0] output_differences_3_load_3_reg_1639;
reg   [63:0] output_differences_4_load_3_reg_1644;
reg   [63:0] output_differences_5_load_3_reg_1649;
reg   [63:0] output_differences_6_load_3_reg_1654;
reg   [63:0] output_differences_7_load_3_reg_1659;
reg   [63:0] output_differences_8_load_3_reg_1664;
reg   [63:0] output_differences_9_load_3_reg_1669;
reg   [63:0] output_differences_10_load_3_reg_1674;
reg   [63:0] output_differences_11_load_3_reg_1679;
reg   [63:0] output_differences_12_load_3_reg_1684;
reg   [63:0] output_differences_13_load_3_reg_1689;
reg   [63:0] output_differences_14_load_3_reg_1694;
reg   [63:0] output_differences_15_load_3_reg_1699;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_ready;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_d0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_d0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    output_differences_0_ce1_local;
reg   [1:0] output_differences_0_address1_local;
reg    output_differences_0_ce0_local;
reg   [1:0] output_differences_0_address0_local;
reg    output_differences_1_ce1_local;
reg   [1:0] output_differences_1_address1_local;
reg    output_differences_1_ce0_local;
reg   [1:0] output_differences_1_address0_local;
reg    output_differences_2_ce1_local;
reg   [1:0] output_differences_2_address1_local;
reg    output_differences_2_ce0_local;
reg   [1:0] output_differences_2_address0_local;
reg    output_differences_3_ce1_local;
reg   [1:0] output_differences_3_address1_local;
reg    output_differences_3_ce0_local;
reg   [1:0] output_differences_3_address0_local;
reg    output_differences_4_ce1_local;
reg   [1:0] output_differences_4_address1_local;
reg    output_differences_4_ce0_local;
reg   [1:0] output_differences_4_address0_local;
reg    output_differences_5_ce1_local;
reg   [1:0] output_differences_5_address1_local;
reg    output_differences_5_ce0_local;
reg   [1:0] output_differences_5_address0_local;
reg    output_differences_6_ce1_local;
reg   [1:0] output_differences_6_address1_local;
reg    output_differences_6_ce0_local;
reg   [1:0] output_differences_6_address0_local;
reg    output_differences_7_ce1_local;
reg   [1:0] output_differences_7_address1_local;
reg    output_differences_7_ce0_local;
reg   [1:0] output_differences_7_address0_local;
reg    output_differences_8_ce1_local;
reg   [1:0] output_differences_8_address1_local;
reg    output_differences_8_ce0_local;
reg   [1:0] output_differences_8_address0_local;
reg    output_differences_9_ce1_local;
reg   [1:0] output_differences_9_address1_local;
reg    output_differences_9_ce0_local;
reg   [1:0] output_differences_9_address0_local;
reg    output_differences_10_ce1_local;
reg   [1:0] output_differences_10_address1_local;
reg    output_differences_10_ce0_local;
reg   [1:0] output_differences_10_address0_local;
reg    output_differences_11_ce1_local;
reg   [1:0] output_differences_11_address1_local;
reg    output_differences_11_ce0_local;
reg   [1:0] output_differences_11_address0_local;
reg    output_differences_12_ce1_local;
reg   [1:0] output_differences_12_address1_local;
reg    output_differences_12_ce0_local;
reg   [1:0] output_differences_12_address0_local;
reg    output_differences_13_ce1_local;
reg   [1:0] output_differences_13_address1_local;
reg    output_differences_13_ce0_local;
reg   [1:0] output_differences_13_address0_local;
reg    output_differences_14_ce1_local;
reg   [1:0] output_differences_14_address1_local;
reg    output_differences_14_ce0_local;
reg   [1:0] output_differences_14_address0_local;
reg    output_differences_15_ce1_local;
reg   [1:0] output_differences_15_address1_local;
reg    output_differences_15_ce0_local;
reg   [1:0] output_differences_15_address0_local;
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
reg    grp_fu_1860_ce;
reg    grp_fu_1864_ce;
reg    grp_fu_1868_ce;
reg    grp_fu_1872_ce;
reg    grp_fu_1876_ce;
reg    grp_fu_1880_ce;
reg    grp_fu_1884_ce;
reg    grp_fu_1888_ce;
reg    grp_fu_1892_ce;
reg    grp_fu_1896_ce;
reg    grp_fu_1900_ce;
reg    grp_fu_1904_ce;
reg    grp_fu_1908_ce;
reg    grp_fu_1912_ce;
reg    grp_fu_1916_ce;
reg    grp_fu_1920_ce;
reg    grp_fu_1924_ce;
reg    grp_fu_1928_ce;
reg    grp_fu_1932_ce;
reg    grp_fu_1936_ce;
reg    grp_fu_1940_ce;
reg    grp_fu_1944_ce;
reg    grp_fu_1948_ce;
reg    grp_fu_1952_ce;
reg    grp_fu_1956_ce;
reg    grp_fu_1960_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_ready),.oracle_activations_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_address0),.oracle_activations_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_ce0),.oracle_activations_15_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_we0),.oracle_activations_15_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_d0),.oracle_activations_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_address0),.oracle_activations_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_ce0),.oracle_activations_14_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_we0),.oracle_activations_14_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_d0),.oracle_activations_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_address0),.oracle_activations_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_ce0),.oracle_activations_13_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_we0),.oracle_activations_13_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_d0),.oracle_activations_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_address0),.oracle_activations_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_ce0),.oracle_activations_12_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_we0),.oracle_activations_12_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_d0),.oracle_activations_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_address0),.oracle_activations_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_ce0),.oracle_activations_11_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_we0),.oracle_activations_11_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_d0),.oracle_activations_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_address0),.oracle_activations_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_ce0),.oracle_activations_10_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_we0),.oracle_activations_10_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_d0),.oracle_activations_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_address0),.oracle_activations_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_ce0),.oracle_activations_9_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_we0),.oracle_activations_9_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_d0),.oracle_activations_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_address0),.oracle_activations_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_ce0),.oracle_activations_8_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_we0),.oracle_activations_8_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_d0),.oracle_activations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_address0),.oracle_activations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_ce0),.oracle_activations_7_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_we0),.oracle_activations_7_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_d0),.oracle_activations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_address0),.oracle_activations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_ce0),.oracle_activations_6_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_we0),.oracle_activations_6_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_d0),.oracle_activations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_address0),.oracle_activations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_ce0),.oracle_activations_5_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_we0),.oracle_activations_5_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_d0),.oracle_activations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_address0),.oracle_activations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_ce0),.oracle_activations_4_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_we0),.oracle_activations_4_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_d0),.oracle_activations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_address0),.oracle_activations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_ce0),.oracle_activations_3_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_we0),.oracle_activations_3_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_d0),.oracle_activations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_address0),.oracle_activations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_ce0),.oracle_activations_2_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_we0),.oracle_activations_2_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_d0),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_1224),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_1229),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_2_load(output_differences_2_load_reg_1234),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_3_load(output_differences_3_load_reg_1239),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address1),.weights2_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.output_differences_4_load(output_differences_4_load_reg_1244),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address1),.weights2_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.output_differences_5_load(output_differences_5_load_reg_1249),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address1),.weights2_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.output_differences_6_load(output_differences_6_load_reg_1254),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address1),.weights2_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.output_differences_7_load(output_differences_7_load_reg_1259),.weights2_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address0),.weights2_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.weights2_8_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address1),.weights2_8_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce1),.weights2_8_q1(weights2_8_q1),.output_differences_8_load(output_differences_8_load_reg_1264),.weights2_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address0),.weights2_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.weights2_9_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address1),.weights2_9_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce1),.weights2_9_q1(weights2_9_q1),.output_differences_9_load(output_differences_9_load_reg_1269),.weights2_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address0),.weights2_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.weights2_10_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address1),.weights2_10_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce1),.weights2_10_q1(weights2_10_q1),.output_differences_10_load(output_differences_10_load_reg_1274),.weights2_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address0),.weights2_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.weights2_11_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address1),.weights2_11_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce1),.weights2_11_q1(weights2_11_q1),.output_differences_11_load(output_differences_11_load_reg_1279),.weights2_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address0),.weights2_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.weights2_12_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address1),.weights2_12_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce1),.weights2_12_q1(weights2_12_q1),.output_differences_12_load(output_differences_12_load_reg_1284),.weights2_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address0),.weights2_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.weights2_13_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address1),.weights2_13_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce1),.weights2_13_q1(weights2_13_q1),.output_differences_13_load(output_differences_13_load_reg_1289),.weights2_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address0),.weights2_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.weights2_14_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address1),.weights2_14_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce1),.weights2_14_q1(weights2_14_q1),.output_differences_14_load(output_differences_14_load_reg_1294),.weights2_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address0),.weights2_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.weights2_15_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address1),.weights2_15_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce1),.weights2_15_q1(weights2_15_q1),.output_differences_15_load(output_differences_15_load_reg_1299),.output_differences_0_load_1(output_differences_0_load_1_reg_1304),.output_differences_1_load_1(output_differences_1_load_1_reg_1309),.output_differences_2_load_1(output_differences_2_load_1_reg_1314),.output_differences_3_load_1(output_differences_3_load_1_reg_1319),.output_differences_4_load_1(output_differences_4_load_1_reg_1324),.output_differences_5_load_1(output_differences_5_load_1_reg_1329),.output_differences_6_load_1(output_differences_6_load_1_reg_1334),.output_differences_7_load_1(output_differences_7_load_1_reg_1339),.output_differences_8_load_1(output_differences_8_load_1_reg_1344),.output_differences_9_load_1(output_differences_9_load_1_reg_1349),.output_differences_10_load_1(output_differences_10_load_1_reg_1354),.output_differences_11_load_1(output_differences_11_load_1_reg_1359),.output_differences_12_load_1(output_differences_12_load_1_reg_1364),.output_differences_13_load_1(output_differences_13_load_1_reg_1369),.output_differences_14_load_1(output_differences_14_load_1_reg_1374),.output_differences_15_load_1(output_differences_15_load_1_reg_1379),.output_differences_0_load_2(output_differences_0_load_2_reg_1544),.output_differences_1_load_2(output_differences_1_load_2_reg_1549),.output_differences_2_load_2(output_differences_2_load_2_reg_1554),.output_differences_3_load_2(output_differences_3_load_2_reg_1559),.output_differences_4_load_2(output_differences_4_load_2_reg_1564),.output_differences_5_load_2(output_differences_5_load_2_reg_1569),.output_differences_6_load_2(output_differences_6_load_2_reg_1574),.output_differences_7_load_2(output_differences_7_load_2_reg_1579),.output_differences_8_load_2(output_differences_8_load_2_reg_1584),.output_differences_9_load_2(output_differences_9_load_2_reg_1589),.output_differences_10_load_2(output_differences_10_load_2_reg_1594),.output_differences_11_load_2(output_differences_11_load_2_reg_1599),.output_differences_12_load_2(output_differences_12_load_2_reg_1604),.output_differences_13_load_2(output_differences_13_load_2_reg_1609),.output_differences_14_load_2(output_differences_14_load_2_reg_1614),.output_differences_15_load_2(output_differences_15_load_2_reg_1619),.output_differences_0_load_3(output_differences_0_load_3_reg_1624),.output_differences_1_load_3(output_differences_1_load_3_reg_1629),.output_differences_2_load_3(output_differences_2_load_3_reg_1634),.output_differences_3_load_3(output_differences_3_load_3_reg_1639),.output_differences_4_load_3(output_differences_4_load_3_reg_1644),.output_differences_5_load_3(output_differences_5_load_3_reg_1649),.output_differences_6_load_3(output_differences_6_load_3_reg_1654),.output_differences_7_load_3(output_differences_7_load_3_reg_1659),.output_differences_8_load_3(output_differences_8_load_3_reg_1664),.output_differences_9_load_3(output_differences_9_load_3_reg_1669),.output_differences_10_load_3(output_differences_10_load_3_reg_1674),.output_differences_11_load_3(output_differences_11_load_3_reg_1679),.output_differences_12_load_3(output_differences_12_load_3_reg_1684),.output_differences_13_load_3(output_differences_13_load_3_reg_1689),.output_differences_14_load_3(output_differences_14_load_3_reg_1694),.output_differences_15_load_3(output_differences_15_load_3_reg_1699),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.dactivations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_address0),.dactivations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_ce0),.dactivations_2_q0(dactivations_2_q0),.dactivations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_address0),.dactivations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_ce0),.dactivations_3_q0(dactivations_3_q0),.dactivations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_address0),.dactivations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_ce0),.dactivations_4_q0(dactivations_4_q0),.dactivations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_address0),.dactivations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_ce0),.dactivations_5_q0(dactivations_5_q0),.dactivations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_address0),.dactivations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_ce0),.dactivations_6_q0(dactivations_6_q0),.dactivations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_address0),.dactivations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_ce0),.dactivations_7_q0(dactivations_7_q0),.dactivations_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_address0),.dactivations_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_ce0),.dactivations_8_q0(dactivations_8_q0),.dactivations_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_address0),.dactivations_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_ce0),.dactivations_9_q0(dactivations_9_q0),.dactivations_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_address0),.dactivations_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_ce0),.dactivations_10_q0(dactivations_10_q0),.dactivations_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_address0),.dactivations_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_ce0),.dactivations_11_q0(dactivations_11_q0),.dactivations_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_address0),.dactivations_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_ce0),.dactivations_12_q0(dactivations_12_q0),.dactivations_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_address0),.dactivations_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_ce0),.dactivations_13_q0(dactivations_13_q0),.dactivations_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_address0),.dactivations_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_ce0),.dactivations_14_q0(dactivations_14_q0),.dactivations_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_address0),.dactivations_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_ce0),.dactivations_15_q0(dactivations_15_q0),.grp_fu_1704_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din0),.grp_fu_1704_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din1),.grp_fu_1704_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_opcode),.grp_fu_1704_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1704_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_ce),.grp_fu_1708_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din0),.grp_fu_1708_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din1),.grp_fu_1708_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_opcode),.grp_fu_1708_p_dout0(grp_fu_4568_p_dout0),.grp_fu_1708_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_ce),.grp_fu_1712_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din1),.grp_fu_1712_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_opcode),.grp_fu_1712_p_dout0(grp_fu_4572_p_dout0),.grp_fu_1712_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din1),.grp_fu_1716_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_opcode),.grp_fu_1716_p_dout0(grp_fu_4576_p_dout0),.grp_fu_1716_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din1),.grp_fu_1720_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_opcode),.grp_fu_1720_p_dout0(grp_fu_4580_p_dout0),.grp_fu_1720_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din1),.grp_fu_1724_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_opcode),.grp_fu_1724_p_dout0(grp_fu_4584_p_dout0),.grp_fu_1724_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din1),.grp_fu_1728_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_opcode),.grp_fu_1728_p_dout0(grp_fu_4588_p_dout0),.grp_fu_1728_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din1),.grp_fu_1732_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_opcode),.grp_fu_1732_p_dout0(grp_fu_4592_p_dout0),.grp_fu_1732_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_ce),.grp_fu_1736_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din1),.grp_fu_1736_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_opcode),.grp_fu_1736_p_dout0(grp_fu_4596_p_dout0),.grp_fu_1736_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_ce),.grp_fu_1740_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din0),.grp_fu_1740_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din1),.grp_fu_1740_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_opcode),.grp_fu_1740_p_dout0(grp_fu_4600_p_dout0),.grp_fu_1740_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_ce),.grp_fu_1744_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din0),.grp_fu_1744_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din1),.grp_fu_1744_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_opcode),.grp_fu_1744_p_dout0(grp_fu_4604_p_dout0),.grp_fu_1744_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_ce),.grp_fu_1748_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din0),.grp_fu_1748_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din1),.grp_fu_1748_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_opcode),.grp_fu_1748_p_dout0(grp_fu_4608_p_dout0),.grp_fu_1748_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_ce),.grp_fu_1752_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din0),.grp_fu_1752_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din1),.grp_fu_1752_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_opcode),.grp_fu_1752_p_dout0(grp_fu_4612_p_dout0),.grp_fu_1752_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_ce),.grp_fu_1756_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din0),.grp_fu_1756_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din1),.grp_fu_1756_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_opcode),.grp_fu_1756_p_dout0(grp_fu_4616_p_dout0),.grp_fu_1756_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_ce),.grp_fu_1760_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din0),.grp_fu_1760_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din1),.grp_fu_1760_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_opcode),.grp_fu_1760_p_dout0(grp_fu_4620_p_dout0),.grp_fu_1760_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_ce),.grp_fu_1764_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din0),.grp_fu_1764_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din1),.grp_fu_1764_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_opcode),.grp_fu_1764_p_dout0(grp_fu_4624_p_dout0),.grp_fu_1764_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_ce),.grp_fu_1768_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din1),.grp_fu_1768_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_opcode),.grp_fu_1768_p_dout0(grp_fu_4628_p_dout0),.grp_fu_1768_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din1),.grp_fu_1772_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_opcode),.grp_fu_1772_p_dout0(grp_fu_4632_p_dout0),.grp_fu_1772_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_ce),.grp_fu_1776_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din0),.grp_fu_1776_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din1),.grp_fu_1776_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_opcode),.grp_fu_1776_p_dout0(grp_fu_4636_p_dout0),.grp_fu_1776_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_ce),.grp_fu_1780_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din1),.grp_fu_1780_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_opcode),.grp_fu_1780_p_dout0(grp_fu_4640_p_dout0),.grp_fu_1780_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_ce),.grp_fu_1784_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din0),.grp_fu_1784_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din1),.grp_fu_1784_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_opcode),.grp_fu_1784_p_dout0(grp_fu_4644_p_dout0),.grp_fu_1784_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_ce),.grp_fu_1788_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din0),.grp_fu_1788_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din1),.grp_fu_1788_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_opcode),.grp_fu_1788_p_dout0(grp_fu_4648_p_dout0),.grp_fu_1788_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_ce),.grp_fu_1792_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din0),.grp_fu_1792_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din1),.grp_fu_1792_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_opcode),.grp_fu_1792_p_dout0(grp_fu_4652_p_dout0),.grp_fu_1792_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_ce),.grp_fu_1796_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din0),.grp_fu_1796_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din1),.grp_fu_1796_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_opcode),.grp_fu_1796_p_dout0(grp_fu_4656_p_dout0),.grp_fu_1796_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_ce),.grp_fu_1800_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din0),.grp_fu_1800_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din1),.grp_fu_1800_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_opcode),.grp_fu_1800_p_dout0(grp_fu_4660_p_dout0),.grp_fu_1800_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_ce),.grp_fu_1804_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din0),.grp_fu_1804_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din1),.grp_fu_1804_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_opcode),.grp_fu_1804_p_dout0(grp_fu_4664_p_dout0),.grp_fu_1804_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_ce),.grp_fu_1808_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din0),.grp_fu_1808_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din1),.grp_fu_1808_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_opcode),.grp_fu_1808_p_dout0(grp_fu_4668_p_dout0),.grp_fu_1808_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_ce),.grp_fu_1812_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din0),.grp_fu_1812_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din1),.grp_fu_1812_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_opcode),.grp_fu_1812_p_dout0(grp_fu_4672_p_dout0),.grp_fu_1812_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_ce),.grp_fu_1816_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din0),.grp_fu_1816_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din1),.grp_fu_1816_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_opcode),.grp_fu_1816_p_dout0(grp_fu_4676_p_dout0),.grp_fu_1816_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_ce),.grp_fu_1820_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din0),.grp_fu_1820_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din1),.grp_fu_1820_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_opcode),.grp_fu_1820_p_dout0(grp_fu_4680_p_dout0),.grp_fu_1820_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_ce),.grp_fu_1824_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din0),.grp_fu_1824_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din1),.grp_fu_1824_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_opcode),.grp_fu_1824_p_dout0(grp_fu_4684_p_dout0),.grp_fu_1824_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_ce),.grp_fu_1828_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din0),.grp_fu_1828_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din1),.grp_fu_1828_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_opcode),.grp_fu_1828_p_dout0(grp_fu_4688_p_dout0),.grp_fu_1828_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_ce),.grp_fu_1832_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din0),.grp_fu_1832_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din1),.grp_fu_1832_p_dout0(grp_fu_4692_p_dout0),.grp_fu_1832_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_ce),.grp_fu_1836_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din0),.grp_fu_1836_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din1),.grp_fu_1836_p_dout0(grp_fu_4696_p_dout0),.grp_fu_1836_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_ce),.grp_fu_1840_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din0),.grp_fu_1840_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din1),.grp_fu_1840_p_dout0(grp_fu_4700_p_dout0),.grp_fu_1840_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_ce),.grp_fu_1844_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din0),.grp_fu_1844_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din1),.grp_fu_1844_p_dout0(grp_fu_4704_p_dout0),.grp_fu_1844_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_ce),.grp_fu_1848_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din0),.grp_fu_1848_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din1),.grp_fu_1848_p_dout0(grp_fu_4708_p_dout0),.grp_fu_1848_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_ce),.grp_fu_1852_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din1),.grp_fu_1852_p_dout0(grp_fu_4712_p_dout0),.grp_fu_1852_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din1),.grp_fu_1856_p_dout0(grp_fu_4716_p_dout0),.grp_fu_1856_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_ce),.grp_fu_1860_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din0),.grp_fu_1860_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din1),.grp_fu_1860_p_dout0(grp_fu_4720_p_dout0),.grp_fu_1860_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_ce),.grp_fu_1864_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din0),.grp_fu_1864_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din1),.grp_fu_1864_p_dout0(grp_fu_4724_p_dout0),.grp_fu_1864_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_ce),.grp_fu_1868_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din0),.grp_fu_1868_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din1),.grp_fu_1868_p_dout0(grp_fu_4728_p_dout0),.grp_fu_1868_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_ce),.grp_fu_1872_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din1),.grp_fu_1872_p_dout0(grp_fu_4732_p_dout0),.grp_fu_1872_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_4736_p_dout0),.grp_fu_1876_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_ce),.grp_fu_1880_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din0),.grp_fu_1880_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din1),.grp_fu_1880_p_dout0(grp_fu_4740_p_dout0),.grp_fu_1880_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_ce),.grp_fu_1884_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_4744_p_dout0),.grp_fu_1884_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_4748_p_dout0),.grp_fu_1888_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_ce),.grp_fu_1892_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din0),.grp_fu_1892_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din1),.grp_fu_1892_p_dout0(grp_fu_4752_p_dout0),.grp_fu_1892_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_ce),.grp_fu_1896_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din0),.grp_fu_1896_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din1),.grp_fu_1896_p_dout0(grp_fu_4756_p_dout0),.grp_fu_1896_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_ce),.grp_fu_1900_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din0),.grp_fu_1900_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din1),.grp_fu_1900_p_dout0(grp_fu_4760_p_dout0),.grp_fu_1900_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_ce),.grp_fu_1904_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din0),.grp_fu_1904_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din1),.grp_fu_1904_p_dout0(grp_fu_4764_p_dout0),.grp_fu_1904_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_ce),.grp_fu_1908_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din0),.grp_fu_1908_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din1),.grp_fu_1908_p_dout0(grp_fu_4768_p_dout0),.grp_fu_1908_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_ce),.grp_fu_1912_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din0),.grp_fu_1912_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din1),.grp_fu_1912_p_dout0(grp_fu_4772_p_dout0),.grp_fu_1912_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_ce),.grp_fu_1916_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din0),.grp_fu_1916_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din1),.grp_fu_1916_p_dout0(grp_fu_4776_p_dout0),.grp_fu_1916_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_ce),.grp_fu_1920_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din0),.grp_fu_1920_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din1),.grp_fu_1920_p_dout0(grp_fu_4780_p_dout0),.grp_fu_1920_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_ce),.grp_fu_1924_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din0),.grp_fu_1924_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din1),.grp_fu_1924_p_dout0(grp_fu_4784_p_dout0),.grp_fu_1924_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_ce),.grp_fu_1928_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din0),.grp_fu_1928_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din1),.grp_fu_1928_p_dout0(grp_fu_4788_p_dout0),.grp_fu_1928_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_ce),.grp_fu_1932_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din0),.grp_fu_1932_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din1),.grp_fu_1932_p_dout0(grp_fu_4792_p_dout0),.grp_fu_1932_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_ce),.grp_fu_1936_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din0),.grp_fu_1936_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din1),.grp_fu_1936_p_dout0(grp_fu_4796_p_dout0),.grp_fu_1936_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_ce),.grp_fu_1940_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din0),.grp_fu_1940_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din1),.grp_fu_1940_p_dout0(grp_fu_4800_p_dout0),.grp_fu_1940_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_ce),.grp_fu_1944_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din0),.grp_fu_1944_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din1),.grp_fu_1944_p_dout0(grp_fu_4804_p_dout0),.grp_fu_1944_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_ce),.grp_fu_1948_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din0),.grp_fu_1948_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din1),.grp_fu_1948_p_dout0(grp_fu_4808_p_dout0),.grp_fu_1948_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_ce),.grp_fu_1952_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din0),.grp_fu_1952_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din1),.grp_fu_1952_p_dout0(grp_fu_4812_p_dout0),.grp_fu_1952_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_ce),.grp_fu_1956_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din0),.grp_fu_1956_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din1),.grp_fu_1956_p_dout0(grp_fu_4816_p_dout0),.grp_fu_1956_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_ce),.grp_fu_1960_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din0),.grp_fu_1960_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din1),.grp_fu_1960_p_dout0(grp_fu_4828_p_dout0),.grp_fu_1960_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_1_reg_1304 <= output_differences_0_q0;
        output_differences_0_load_reg_1224 <= output_differences_0_q1;
        output_differences_10_load_1_reg_1354 <= output_differences_10_q0;
        output_differences_10_load_reg_1274 <= output_differences_10_q1;
        output_differences_11_load_1_reg_1359 <= output_differences_11_q0;
        output_differences_11_load_reg_1279 <= output_differences_11_q1;
        output_differences_12_load_1_reg_1364 <= output_differences_12_q0;
        output_differences_12_load_reg_1284 <= output_differences_12_q1;
        output_differences_13_load_1_reg_1369 <= output_differences_13_q0;
        output_differences_13_load_reg_1289 <= output_differences_13_q1;
        output_differences_14_load_1_reg_1374 <= output_differences_14_q0;
        output_differences_14_load_reg_1294 <= output_differences_14_q1;
        output_differences_15_load_1_reg_1379 <= output_differences_15_q0;
        output_differences_15_load_reg_1299 <= output_differences_15_q1;
        output_differences_1_load_1_reg_1309 <= output_differences_1_q0;
        output_differences_1_load_reg_1229 <= output_differences_1_q1;
        output_differences_2_load_1_reg_1314 <= output_differences_2_q0;
        output_differences_2_load_reg_1234 <= output_differences_2_q1;
        output_differences_3_load_1_reg_1319 <= output_differences_3_q0;
        output_differences_3_load_reg_1239 <= output_differences_3_q1;
        output_differences_4_load_1_reg_1324 <= output_differences_4_q0;
        output_differences_4_load_reg_1244 <= output_differences_4_q1;
        output_differences_5_load_1_reg_1329 <= output_differences_5_q0;
        output_differences_5_load_reg_1249 <= output_differences_5_q1;
        output_differences_6_load_1_reg_1334 <= output_differences_6_q0;
        output_differences_6_load_reg_1254 <= output_differences_6_q1;
        output_differences_7_load_1_reg_1339 <= output_differences_7_q0;
        output_differences_7_load_reg_1259 <= output_differences_7_q1;
        output_differences_8_load_1_reg_1344 <= output_differences_8_q0;
        output_differences_8_load_reg_1264 <= output_differences_8_q1;
        output_differences_9_load_1_reg_1349 <= output_differences_9_q0;
        output_differences_9_load_reg_1269 <= output_differences_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_load_2_reg_1544 <= output_differences_0_q1;
        output_differences_0_load_3_reg_1624 <= output_differences_0_q0;
        output_differences_10_load_2_reg_1594 <= output_differences_10_q1;
        output_differences_10_load_3_reg_1674 <= output_differences_10_q0;
        output_differences_11_load_2_reg_1599 <= output_differences_11_q1;
        output_differences_11_load_3_reg_1679 <= output_differences_11_q0;
        output_differences_12_load_2_reg_1604 <= output_differences_12_q1;
        output_differences_12_load_3_reg_1684 <= output_differences_12_q0;
        output_differences_13_load_2_reg_1609 <= output_differences_13_q1;
        output_differences_13_load_3_reg_1689 <= output_differences_13_q0;
        output_differences_14_load_2_reg_1614 <= output_differences_14_q1;
        output_differences_14_load_3_reg_1694 <= output_differences_14_q0;
        output_differences_15_load_2_reg_1619 <= output_differences_15_q1;
        output_differences_15_load_3_reg_1699 <= output_differences_15_q0;
        output_differences_1_load_2_reg_1549 <= output_differences_1_q1;
        output_differences_1_load_3_reg_1629 <= output_differences_1_q0;
        output_differences_2_load_2_reg_1554 <= output_differences_2_q1;
        output_differences_2_load_3_reg_1634 <= output_differences_2_q0;
        output_differences_3_load_2_reg_1559 <= output_differences_3_q1;
        output_differences_3_load_3_reg_1639 <= output_differences_3_q0;
        output_differences_4_load_2_reg_1564 <= output_differences_4_q1;
        output_differences_4_load_3_reg_1644 <= output_differences_4_q0;
        output_differences_5_load_2_reg_1569 <= output_differences_5_q1;
        output_differences_5_load_3_reg_1649 <= output_differences_5_q0;
        output_differences_6_load_2_reg_1574 <= output_differences_6_q1;
        output_differences_6_load_3_reg_1654 <= output_differences_6_q0;
        output_differences_7_load_2_reg_1579 <= output_differences_7_q1;
        output_differences_7_load_3_reg_1659 <= output_differences_7_q0;
        output_differences_8_load_2_reg_1584 <= output_differences_8_q1;
        output_differences_8_load_3_reg_1664 <= output_differences_8_q0;
        output_differences_9_load_2_reg_1589 <= output_differences_9_q1;
        output_differences_9_load_3_reg_1669 <= output_differences_9_q0;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1704_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_ce;
    end else begin
        grp_fu_1704_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1708_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_ce;
    end else begin
        grp_fu_1708_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1712_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_ce;
    end else begin
        grp_fu_1712_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1716_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_ce;
    end else begin
        grp_fu_1716_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1720_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_ce;
    end else begin
        grp_fu_1720_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1724_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_ce;
    end else begin
        grp_fu_1724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1728_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_ce;
    end else begin
        grp_fu_1728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1732_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_ce;
    end else begin
        grp_fu_1732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1736_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1740_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_ce;
    end else begin
        grp_fu_1740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1744_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_ce;
    end else begin
        grp_fu_1744_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1748_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_ce;
    end else begin
        grp_fu_1748_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1752_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_ce;
    end else begin
        grp_fu_1752_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1756_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_ce;
    end else begin
        grp_fu_1756_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1760_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_ce;
    end else begin
        grp_fu_1760_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1764_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_ce;
    end else begin
        grp_fu_1764_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1768_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1772_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1776_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_ce;
    end else begin
        grp_fu_1776_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1780_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1784_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_ce;
    end else begin
        grp_fu_1784_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1788_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_ce;
    end else begin
        grp_fu_1788_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1792_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_ce;
    end else begin
        grp_fu_1792_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1796_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_ce;
    end else begin
        grp_fu_1796_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1800_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_ce;
    end else begin
        grp_fu_1800_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1804_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_ce;
    end else begin
        grp_fu_1804_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1808_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_ce;
    end else begin
        grp_fu_1808_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1812_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_ce;
    end else begin
        grp_fu_1812_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1816_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_ce;
    end else begin
        grp_fu_1816_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1820_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_ce;
    end else begin
        grp_fu_1820_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1824_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_ce;
    end else begin
        grp_fu_1824_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1828_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_ce;
    end else begin
        grp_fu_1828_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1832_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_ce;
    end else begin
        grp_fu_1832_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1836_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_ce;
    end else begin
        grp_fu_1836_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1840_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_ce;
    end else begin
        grp_fu_1840_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1844_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_ce;
    end else begin
        grp_fu_1844_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1848_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_ce;
    end else begin
        grp_fu_1848_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1852_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_ce;
    end else begin
        grp_fu_1852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1856_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_ce;
    end else begin
        grp_fu_1856_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1860_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_ce;
    end else begin
        grp_fu_1860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1864_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_ce;
    end else begin
        grp_fu_1864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1868_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_ce;
    end else begin
        grp_fu_1868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1872_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_ce;
    end else begin
        grp_fu_1872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1876_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_ce;
    end else begin
        grp_fu_1876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1880_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_ce;
    end else begin
        grp_fu_1880_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1884_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_ce;
    end else begin
        grp_fu_1884_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1888_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_ce;
    end else begin
        grp_fu_1888_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1892_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_ce;
    end else begin
        grp_fu_1892_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1896_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_ce;
    end else begin
        grp_fu_1896_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1900_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_ce;
    end else begin
        grp_fu_1900_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1904_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_ce;
    end else begin
        grp_fu_1904_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1908_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_ce;
    end else begin
        grp_fu_1908_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1912_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_ce;
    end else begin
        grp_fu_1912_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1916_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_ce;
    end else begin
        grp_fu_1916_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1920_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_ce;
    end else begin
        grp_fu_1920_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1924_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_ce;
    end else begin
        grp_fu_1924_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1928_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_ce;
    end else begin
        grp_fu_1928_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1932_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_ce;
    end else begin
        grp_fu_1932_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1936_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_ce;
    end else begin
        grp_fu_1936_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1940_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_ce;
    end else begin
        grp_fu_1940_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1944_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_ce;
    end else begin
        grp_fu_1944_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1948_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_ce;
    end else begin
        grp_fu_1948_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1952_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_ce;
    end else begin
        grp_fu_1952_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1956_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_ce;
    end else begin
        grp_fu_1956_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1960_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_ce;
    end else begin
        grp_fu_1960_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address0_local = 64'd1;
    end else begin
        output_differences_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address1_local = 64'd0;
    end else begin
        output_differences_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce0_local = 1'b1;
    end else begin
        output_differences_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce1_local = 1'b1;
    end else begin
        output_differences_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_10_address0_local = 64'd1;
    end else begin
        output_differences_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_10_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_10_address1_local = 64'd0;
    end else begin
        output_differences_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_10_ce0_local = 1'b1;
    end else begin
        output_differences_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_10_ce1_local = 1'b1;
    end else begin
        output_differences_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_11_address0_local = 64'd1;
    end else begin
        output_differences_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_11_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_11_address1_local = 64'd0;
    end else begin
        output_differences_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_11_ce0_local = 1'b1;
    end else begin
        output_differences_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_11_ce1_local = 1'b1;
    end else begin
        output_differences_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_12_address0_local = 64'd1;
    end else begin
        output_differences_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_12_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_12_address1_local = 64'd0;
    end else begin
        output_differences_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_12_ce0_local = 1'b1;
    end else begin
        output_differences_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_12_ce1_local = 1'b1;
    end else begin
        output_differences_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_13_address0_local = 64'd1;
    end else begin
        output_differences_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_13_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_13_address1_local = 64'd0;
    end else begin
        output_differences_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_13_ce0_local = 1'b1;
    end else begin
        output_differences_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_13_ce1_local = 1'b1;
    end else begin
        output_differences_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_14_address0_local = 64'd1;
    end else begin
        output_differences_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_14_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_14_address1_local = 64'd0;
    end else begin
        output_differences_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_14_ce0_local = 1'b1;
    end else begin
        output_differences_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_14_ce1_local = 1'b1;
    end else begin
        output_differences_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_15_address0_local = 64'd1;
    end else begin
        output_differences_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_15_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_15_address1_local = 64'd0;
    end else begin
        output_differences_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_15_ce0_local = 1'b1;
    end else begin
        output_differences_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_15_ce1_local = 1'b1;
    end else begin
        output_differences_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address0_local = 64'd1;
    end else begin
        output_differences_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address1_local = 64'd0;
    end else begin
        output_differences_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce0_local = 1'b1;
    end else begin
        output_differences_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce1_local = 1'b1;
    end else begin
        output_differences_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_2_address0_local = 64'd1;
    end else begin
        output_differences_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_2_address1_local = 64'd0;
    end else begin
        output_differences_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_2_ce0_local = 1'b1;
    end else begin
        output_differences_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_2_ce1_local = 1'b1;
    end else begin
        output_differences_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_3_address0_local = 64'd1;
    end else begin
        output_differences_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_3_address1_local = 64'd0;
    end else begin
        output_differences_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_3_ce0_local = 1'b1;
    end else begin
        output_differences_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_3_ce1_local = 1'b1;
    end else begin
        output_differences_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_4_address0_local = 64'd1;
    end else begin
        output_differences_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_4_address1_local = 64'd0;
    end else begin
        output_differences_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_4_ce0_local = 1'b1;
    end else begin
        output_differences_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_4_ce1_local = 1'b1;
    end else begin
        output_differences_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_5_address0_local = 64'd1;
    end else begin
        output_differences_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_5_address1_local = 64'd0;
    end else begin
        output_differences_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_5_ce0_local = 1'b1;
    end else begin
        output_differences_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_5_ce1_local = 1'b1;
    end else begin
        output_differences_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_6_address0_local = 64'd1;
    end else begin
        output_differences_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_6_address1_local = 64'd0;
    end else begin
        output_differences_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_6_ce0_local = 1'b1;
    end else begin
        output_differences_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_6_ce1_local = 1'b1;
    end else begin
        output_differences_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_7_address0_local = 64'd1;
    end else begin
        output_differences_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_7_address1_local = 64'd0;
    end else begin
        output_differences_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_7_ce0_local = 1'b1;
    end else begin
        output_differences_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_7_ce1_local = 1'b1;
    end else begin
        output_differences_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_8_address0_local = 64'd1;
    end else begin
        output_differences_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_8_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_8_address1_local = 64'd0;
    end else begin
        output_differences_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_8_ce0_local = 1'b1;
    end else begin
        output_differences_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_8_ce1_local = 1'b1;
    end else begin
        output_differences_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_9_address0_local = 64'd1;
    end else begin
        output_differences_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_9_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_9_address1_local = 64'd0;
    end else begin
        output_differences_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_9_ce0_local = 1'b1;
    end else begin
        output_differences_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_9_ce1_local = 1'b1;
    end else begin
        output_differences_9_ce1_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_0_ce0;
assign dactivations_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_address0;
assign dactivations_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_10_ce0;
assign dactivations_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_address0;
assign dactivations_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_11_ce0;
assign dactivations_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_address0;
assign dactivations_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_12_ce0;
assign dactivations_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_address0;
assign dactivations_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_13_ce0;
assign dactivations_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_address0;
assign dactivations_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_14_ce0;
assign dactivations_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_address0;
assign dactivations_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_15_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_1_ce0;
assign dactivations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_address0;
assign dactivations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_2_ce0;
assign dactivations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_address0;
assign dactivations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_3_ce0;
assign dactivations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_address0;
assign dactivations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_4_ce0;
assign dactivations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_address0;
assign dactivations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_5_ce0;
assign dactivations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_address0;
assign dactivations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_6_ce0;
assign dactivations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_address0;
assign dactivations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_7_ce0;
assign dactivations_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_address0;
assign dactivations_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_8_ce0;
assign dactivations_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_address0;
assign dactivations_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_dactivations_9_ce0;
assign grp_fu_4564_p_ce = grp_fu_1704_ce;
assign grp_fu_4564_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din0;
assign grp_fu_4564_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_din1;
assign grp_fu_4564_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1704_p_opcode;
assign grp_fu_4568_p_ce = grp_fu_1708_ce;
assign grp_fu_4568_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din0;
assign grp_fu_4568_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_din1;
assign grp_fu_4568_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1708_p_opcode;
assign grp_fu_4572_p_ce = grp_fu_1712_ce;
assign grp_fu_4572_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din0;
assign grp_fu_4572_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_din1;
assign grp_fu_4572_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1712_p_opcode;
assign grp_fu_4576_p_ce = grp_fu_1716_ce;
assign grp_fu_4576_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din0;
assign grp_fu_4576_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_din1;
assign grp_fu_4576_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1716_p_opcode;
assign grp_fu_4580_p_ce = grp_fu_1720_ce;
assign grp_fu_4580_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din0;
assign grp_fu_4580_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_din1;
assign grp_fu_4580_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1720_p_opcode;
assign grp_fu_4584_p_ce = grp_fu_1724_ce;
assign grp_fu_4584_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din0;
assign grp_fu_4584_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_din1;
assign grp_fu_4584_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1724_p_opcode;
assign grp_fu_4588_p_ce = grp_fu_1728_ce;
assign grp_fu_4588_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din0;
assign grp_fu_4588_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1728_p_din1;
assign grp_fu_4588_p_opcode = 2'd0;
assign grp_fu_4592_p_ce = grp_fu_1732_ce;
assign grp_fu_4592_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din0;
assign grp_fu_4592_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1732_p_din1;
assign grp_fu_4592_p_opcode = 2'd0;
assign grp_fu_4596_p_ce = grp_fu_1736_ce;
assign grp_fu_4596_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din0;
assign grp_fu_4596_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1736_p_din1;
assign grp_fu_4596_p_opcode = 2'd0;
assign grp_fu_4600_p_ce = grp_fu_1740_ce;
assign grp_fu_4600_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din0;
assign grp_fu_4600_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1740_p_din1;
assign grp_fu_4600_p_opcode = 2'd0;
assign grp_fu_4604_p_ce = grp_fu_1744_ce;
assign grp_fu_4604_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din0;
assign grp_fu_4604_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1744_p_din1;
assign grp_fu_4604_p_opcode = 2'd0;
assign grp_fu_4608_p_ce = grp_fu_1748_ce;
assign grp_fu_4608_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din0;
assign grp_fu_4608_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1748_p_din1;
assign grp_fu_4608_p_opcode = 2'd0;
assign grp_fu_4612_p_ce = grp_fu_1752_ce;
assign grp_fu_4612_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din0;
assign grp_fu_4612_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1752_p_din1;
assign grp_fu_4612_p_opcode = 2'd0;
assign grp_fu_4616_p_ce = grp_fu_1756_ce;
assign grp_fu_4616_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din0;
assign grp_fu_4616_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1756_p_din1;
assign grp_fu_4616_p_opcode = 2'd0;
assign grp_fu_4620_p_ce = grp_fu_1760_ce;
assign grp_fu_4620_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din0;
assign grp_fu_4620_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1760_p_din1;
assign grp_fu_4620_p_opcode = 2'd0;
assign grp_fu_4624_p_ce = grp_fu_1764_ce;
assign grp_fu_4624_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din0;
assign grp_fu_4624_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1764_p_din1;
assign grp_fu_4624_p_opcode = 2'd0;
assign grp_fu_4628_p_ce = grp_fu_1768_ce;
assign grp_fu_4628_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din0;
assign grp_fu_4628_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1768_p_din1;
assign grp_fu_4628_p_opcode = 2'd0;
assign grp_fu_4632_p_ce = grp_fu_1772_ce;
assign grp_fu_4632_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din0;
assign grp_fu_4632_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1772_p_din1;
assign grp_fu_4632_p_opcode = 2'd0;
assign grp_fu_4636_p_ce = grp_fu_1776_ce;
assign grp_fu_4636_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din0;
assign grp_fu_4636_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1776_p_din1;
assign grp_fu_4636_p_opcode = 2'd0;
assign grp_fu_4640_p_ce = grp_fu_1780_ce;
assign grp_fu_4640_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din0;
assign grp_fu_4640_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1780_p_din1;
assign grp_fu_4640_p_opcode = 2'd0;
assign grp_fu_4644_p_ce = grp_fu_1784_ce;
assign grp_fu_4644_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din0;
assign grp_fu_4644_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1784_p_din1;
assign grp_fu_4644_p_opcode = 2'd0;
assign grp_fu_4648_p_ce = grp_fu_1788_ce;
assign grp_fu_4648_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din0;
assign grp_fu_4648_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1788_p_din1;
assign grp_fu_4648_p_opcode = 2'd0;
assign grp_fu_4652_p_ce = grp_fu_1792_ce;
assign grp_fu_4652_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din0;
assign grp_fu_4652_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1792_p_din1;
assign grp_fu_4652_p_opcode = 2'd0;
assign grp_fu_4656_p_ce = grp_fu_1796_ce;
assign grp_fu_4656_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din0;
assign grp_fu_4656_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1796_p_din1;
assign grp_fu_4656_p_opcode = 2'd0;
assign grp_fu_4660_p_ce = grp_fu_1800_ce;
assign grp_fu_4660_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din0;
assign grp_fu_4660_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1800_p_din1;
assign grp_fu_4660_p_opcode = 2'd0;
assign grp_fu_4664_p_ce = grp_fu_1804_ce;
assign grp_fu_4664_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din0;
assign grp_fu_4664_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1804_p_din1;
assign grp_fu_4664_p_opcode = 2'd0;
assign grp_fu_4668_p_ce = grp_fu_1808_ce;
assign grp_fu_4668_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din0;
assign grp_fu_4668_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1808_p_din1;
assign grp_fu_4668_p_opcode = 2'd0;
assign grp_fu_4672_p_ce = grp_fu_1812_ce;
assign grp_fu_4672_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din0;
assign grp_fu_4672_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1812_p_din1;
assign grp_fu_4672_p_opcode = 2'd0;
assign grp_fu_4676_p_ce = grp_fu_1816_ce;
assign grp_fu_4676_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din0;
assign grp_fu_4676_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1816_p_din1;
assign grp_fu_4676_p_opcode = 2'd0;
assign grp_fu_4680_p_ce = grp_fu_1820_ce;
assign grp_fu_4680_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din0;
assign grp_fu_4680_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1820_p_din1;
assign grp_fu_4680_p_opcode = 2'd0;
assign grp_fu_4684_p_ce = grp_fu_1824_ce;
assign grp_fu_4684_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din0;
assign grp_fu_4684_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1824_p_din1;
assign grp_fu_4684_p_opcode = 2'd0;
assign grp_fu_4688_p_ce = grp_fu_1828_ce;
assign grp_fu_4688_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din0;
assign grp_fu_4688_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1828_p_din1;
assign grp_fu_4688_p_opcode = 2'd0;
assign grp_fu_4692_p_ce = grp_fu_1832_ce;
assign grp_fu_4692_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din0;
assign grp_fu_4692_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1832_p_din1;
assign grp_fu_4696_p_ce = grp_fu_1836_ce;
assign grp_fu_4696_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din0;
assign grp_fu_4696_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1836_p_din1;
assign grp_fu_4700_p_ce = grp_fu_1840_ce;
assign grp_fu_4700_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din0;
assign grp_fu_4700_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1840_p_din1;
assign grp_fu_4704_p_ce = grp_fu_1844_ce;
assign grp_fu_4704_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din0;
assign grp_fu_4704_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1844_p_din1;
assign grp_fu_4708_p_ce = grp_fu_1848_ce;
assign grp_fu_4708_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din0;
assign grp_fu_4708_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1848_p_din1;
assign grp_fu_4712_p_ce = grp_fu_1852_ce;
assign grp_fu_4712_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din0;
assign grp_fu_4712_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1852_p_din1;
assign grp_fu_4716_p_ce = grp_fu_1856_ce;
assign grp_fu_4716_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din0;
assign grp_fu_4716_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1856_p_din1;
assign grp_fu_4720_p_ce = grp_fu_1860_ce;
assign grp_fu_4720_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din0;
assign grp_fu_4720_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1860_p_din1;
assign grp_fu_4724_p_ce = grp_fu_1864_ce;
assign grp_fu_4724_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din0;
assign grp_fu_4724_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1864_p_din1;
assign grp_fu_4728_p_ce = grp_fu_1868_ce;
assign grp_fu_4728_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din0;
assign grp_fu_4728_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1868_p_din1;
assign grp_fu_4732_p_ce = grp_fu_1872_ce;
assign grp_fu_4732_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din0;
assign grp_fu_4732_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1872_p_din1;
assign grp_fu_4736_p_ce = grp_fu_1876_ce;
assign grp_fu_4736_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din0;
assign grp_fu_4736_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1876_p_din1;
assign grp_fu_4740_p_ce = grp_fu_1880_ce;
assign grp_fu_4740_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din0;
assign grp_fu_4740_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1880_p_din1;
assign grp_fu_4744_p_ce = grp_fu_1884_ce;
assign grp_fu_4744_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din0;
assign grp_fu_4744_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1884_p_din1;
assign grp_fu_4748_p_ce = grp_fu_1888_ce;
assign grp_fu_4748_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din0;
assign grp_fu_4748_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1888_p_din1;
assign grp_fu_4752_p_ce = grp_fu_1892_ce;
assign grp_fu_4752_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din0;
assign grp_fu_4752_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1892_p_din1;
assign grp_fu_4756_p_ce = grp_fu_1896_ce;
assign grp_fu_4756_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din0;
assign grp_fu_4756_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1896_p_din1;
assign grp_fu_4760_p_ce = grp_fu_1900_ce;
assign grp_fu_4760_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din0;
assign grp_fu_4760_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1900_p_din1;
assign grp_fu_4764_p_ce = grp_fu_1904_ce;
assign grp_fu_4764_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din0;
assign grp_fu_4764_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1904_p_din1;
assign grp_fu_4768_p_ce = grp_fu_1908_ce;
assign grp_fu_4768_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din0;
assign grp_fu_4768_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1908_p_din1;
assign grp_fu_4772_p_ce = grp_fu_1912_ce;
assign grp_fu_4772_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din0;
assign grp_fu_4772_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1912_p_din1;
assign grp_fu_4776_p_ce = grp_fu_1916_ce;
assign grp_fu_4776_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din0;
assign grp_fu_4776_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1916_p_din1;
assign grp_fu_4780_p_ce = grp_fu_1920_ce;
assign grp_fu_4780_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din0;
assign grp_fu_4780_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1920_p_din1;
assign grp_fu_4784_p_ce = grp_fu_1924_ce;
assign grp_fu_4784_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din0;
assign grp_fu_4784_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1924_p_din1;
assign grp_fu_4788_p_ce = grp_fu_1928_ce;
assign grp_fu_4788_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din0;
assign grp_fu_4788_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1928_p_din1;
assign grp_fu_4792_p_ce = grp_fu_1932_ce;
assign grp_fu_4792_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din0;
assign grp_fu_4792_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1932_p_din1;
assign grp_fu_4796_p_ce = grp_fu_1936_ce;
assign grp_fu_4796_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din0;
assign grp_fu_4796_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1936_p_din1;
assign grp_fu_4800_p_ce = grp_fu_1940_ce;
assign grp_fu_4800_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din0;
assign grp_fu_4800_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1940_p_din1;
assign grp_fu_4804_p_ce = grp_fu_1944_ce;
assign grp_fu_4804_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din0;
assign grp_fu_4804_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1944_p_din1;
assign grp_fu_4808_p_ce = grp_fu_1948_ce;
assign grp_fu_4808_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din0;
assign grp_fu_4808_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1948_p_din1;
assign grp_fu_4812_p_ce = grp_fu_1952_ce;
assign grp_fu_4812_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din0;
assign grp_fu_4812_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1952_p_din1;
assign grp_fu_4816_p_ce = grp_fu_1956_ce;
assign grp_fu_4816_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din0;
assign grp_fu_4816_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1956_p_din1;
assign grp_fu_4828_p_ce = grp_fu_1960_ce;
assign grp_fu_4828_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din0;
assign grp_fu_4828_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_grp_fu_1960_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_0_we0;
assign oracle_activations_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_address0;
assign oracle_activations_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_ce0;
assign oracle_activations_10_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_d0;
assign oracle_activations_10_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_10_we0;
assign oracle_activations_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_address0;
assign oracle_activations_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_ce0;
assign oracle_activations_11_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_d0;
assign oracle_activations_11_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_11_we0;
assign oracle_activations_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_address0;
assign oracle_activations_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_ce0;
assign oracle_activations_12_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_d0;
assign oracle_activations_12_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_12_we0;
assign oracle_activations_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_address0;
assign oracle_activations_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_ce0;
assign oracle_activations_13_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_d0;
assign oracle_activations_13_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_13_we0;
assign oracle_activations_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_address0;
assign oracle_activations_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_ce0;
assign oracle_activations_14_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_d0;
assign oracle_activations_14_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_14_we0;
assign oracle_activations_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_address0;
assign oracle_activations_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_ce0;
assign oracle_activations_15_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_d0;
assign oracle_activations_15_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_15_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_1_we0;
assign oracle_activations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_address0;
assign oracle_activations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_ce0;
assign oracle_activations_2_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_d0;
assign oracle_activations_2_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_2_we0;
assign oracle_activations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_address0;
assign oracle_activations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_ce0;
assign oracle_activations_3_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_d0;
assign oracle_activations_3_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_3_we0;
assign oracle_activations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_address0;
assign oracle_activations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_ce0;
assign oracle_activations_4_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_d0;
assign oracle_activations_4_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_4_we0;
assign oracle_activations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_address0;
assign oracle_activations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_ce0;
assign oracle_activations_5_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_d0;
assign oracle_activations_5_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_5_we0;
assign oracle_activations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_address0;
assign oracle_activations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_ce0;
assign oracle_activations_6_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_d0;
assign oracle_activations_6_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_6_we0;
assign oracle_activations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_address0;
assign oracle_activations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_ce0;
assign oracle_activations_7_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_d0;
assign oracle_activations_7_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_7_we0;
assign oracle_activations_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_address0;
assign oracle_activations_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_ce0;
assign oracle_activations_8_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_d0;
assign oracle_activations_8_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_8_we0;
assign oracle_activations_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_address0;
assign oracle_activations_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_ce0;
assign oracle_activations_9_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_d0;
assign oracle_activations_9_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_oracle_activations_9_we0;
assign output_differences_0_address0 = output_differences_0_address0_local;
assign output_differences_0_address1 = output_differences_0_address1_local;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_10_address0 = output_differences_10_address0_local;
assign output_differences_10_address1 = output_differences_10_address1_local;
assign output_differences_10_ce0 = output_differences_10_ce0_local;
assign output_differences_10_ce1 = output_differences_10_ce1_local;
assign output_differences_11_address0 = output_differences_11_address0_local;
assign output_differences_11_address1 = output_differences_11_address1_local;
assign output_differences_11_ce0 = output_differences_11_ce0_local;
assign output_differences_11_ce1 = output_differences_11_ce1_local;
assign output_differences_12_address0 = output_differences_12_address0_local;
assign output_differences_12_address1 = output_differences_12_address1_local;
assign output_differences_12_ce0 = output_differences_12_ce0_local;
assign output_differences_12_ce1 = output_differences_12_ce1_local;
assign output_differences_13_address0 = output_differences_13_address0_local;
assign output_differences_13_address1 = output_differences_13_address1_local;
assign output_differences_13_ce0 = output_differences_13_ce0_local;
assign output_differences_13_ce1 = output_differences_13_ce1_local;
assign output_differences_14_address0 = output_differences_14_address0_local;
assign output_differences_14_address1 = output_differences_14_address1_local;
assign output_differences_14_ce0 = output_differences_14_ce0_local;
assign output_differences_14_ce1 = output_differences_14_ce1_local;
assign output_differences_15_address0 = output_differences_15_address0_local;
assign output_differences_15_address1 = output_differences_15_address1_local;
assign output_differences_15_ce0 = output_differences_15_ce0_local;
assign output_differences_15_ce1 = output_differences_15_ce1_local;
assign output_differences_1_address0 = output_differences_1_address0_local;
assign output_differences_1_address1 = output_differences_1_address1_local;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign output_differences_2_address0 = output_differences_2_address0_local;
assign output_differences_2_address1 = output_differences_2_address1_local;
assign output_differences_2_ce0 = output_differences_2_ce0_local;
assign output_differences_2_ce1 = output_differences_2_ce1_local;
assign output_differences_3_address0 = output_differences_3_address0_local;
assign output_differences_3_address1 = output_differences_3_address1_local;
assign output_differences_3_ce0 = output_differences_3_ce0_local;
assign output_differences_3_ce1 = output_differences_3_ce1_local;
assign output_differences_4_address0 = output_differences_4_address0_local;
assign output_differences_4_address1 = output_differences_4_address1_local;
assign output_differences_4_ce0 = output_differences_4_ce0_local;
assign output_differences_4_ce1 = output_differences_4_ce1_local;
assign output_differences_5_address0 = output_differences_5_address0_local;
assign output_differences_5_address1 = output_differences_5_address1_local;
assign output_differences_5_ce0 = output_differences_5_ce0_local;
assign output_differences_5_ce1 = output_differences_5_ce1_local;
assign output_differences_6_address0 = output_differences_6_address0_local;
assign output_differences_6_address1 = output_differences_6_address1_local;
assign output_differences_6_ce0 = output_differences_6_ce0_local;
assign output_differences_6_ce1 = output_differences_6_ce1_local;
assign output_differences_7_address0 = output_differences_7_address0_local;
assign output_differences_7_address1 = output_differences_7_address1_local;
assign output_differences_7_ce0 = output_differences_7_ce0_local;
assign output_differences_7_ce1 = output_differences_7_ce1_local;
assign output_differences_8_address0 = output_differences_8_address0_local;
assign output_differences_8_address1 = output_differences_8_address1_local;
assign output_differences_8_ce0 = output_differences_8_ce0_local;
assign output_differences_8_ce1 = output_differences_8_ce1_local;
assign output_differences_9_address0 = output_differences_9_address0_local;
assign output_differences_9_address1 = output_differences_9_address1_local;
assign output_differences_9_ce0 = output_differences_9_ce0_local;
assign output_differences_9_ce1 = output_differences_9_ce1_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_0_ce1;
assign weights2_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address0;
assign weights2_10_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_address1;
assign weights2_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce0;
assign weights2_10_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_10_ce1;
assign weights2_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address0;
assign weights2_11_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_address1;
assign weights2_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce0;
assign weights2_11_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_11_ce1;
assign weights2_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address0;
assign weights2_12_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_address1;
assign weights2_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce0;
assign weights2_12_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_12_ce1;
assign weights2_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address0;
assign weights2_13_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_address1;
assign weights2_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce0;
assign weights2_13_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_13_ce1;
assign weights2_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address0;
assign weights2_14_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_address1;
assign weights2_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce0;
assign weights2_14_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_14_ce1;
assign weights2_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address0;
assign weights2_15_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_address1;
assign weights2_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce0;
assign weights2_15_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_15_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_3_ce1;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address0;
assign weights2_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_address1;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce0;
assign weights2_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_4_ce1;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address0;
assign weights2_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_address1;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce0;
assign weights2_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_5_ce1;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address0;
assign weights2_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_address1;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce0;
assign weights2_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_6_ce1;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address0;
assign weights2_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_address1;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce0;
assign weights2_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_7_ce1;
assign weights2_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address0;
assign weights2_8_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_address1;
assign weights2_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce0;
assign weights2_8_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_8_ce1;
assign weights2_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address0;
assign weights2_9_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_address1;
assign weights2_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce0;
assign weights2_9_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_868_weights2_9_ce1;
endmodule 
