module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_q1,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_q1,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_q1,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_q1,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_8_address1,weights3_8_ce1,weights3_8_q1,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_9_address1,weights3_9_ce1,weights3_9_q1,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_10_address1,weights3_10_ce1,weights3_10_q1,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_11_address1,weights3_11_ce1,weights3_11_q1,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_12_address1,weights3_12_ce1,weights3_12_q1,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_13_address1,weights3_13_ce1,weights3_13_q1,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_14_address1,weights3_14_ce1,weights3_14_q1,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_15_address1,weights3_15_ce1,weights3_15_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,oracle_activations_8_address0,oracle_activations_8_ce0,oracle_activations_8_we0,oracle_activations_8_d0,oracle_activations_9_address0,oracle_activations_9_ce0,oracle_activations_9_we0,oracle_activations_9_d0,oracle_activations_10_address0,oracle_activations_10_ce0,oracle_activations_10_we0,oracle_activations_10_d0,oracle_activations_11_address0,oracle_activations_11_ce0,oracle_activations_11_we0,oracle_activations_11_d0,oracle_activations_12_address0,oracle_activations_12_ce0,oracle_activations_12_we0,oracle_activations_12_d0,oracle_activations_13_address0,oracle_activations_13_ce0,oracle_activations_13_we0,oracle_activations_13_d0,oracle_activations_14_address0,oracle_activations_14_ce0,oracle_activations_14_we0,oracle_activations_14_d0,oracle_activations_15_address0,oracle_activations_15_ce0,oracle_activations_15_we0,oracle_activations_15_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,dactivations_8_address0,dactivations_8_ce0,dactivations_8_q0,dactivations_9_address0,dactivations_9_ce0,dactivations_9_q0,dactivations_10_address0,dactivations_10_ce0,dactivations_10_q0,dactivations_11_address0,dactivations_11_ce0,dactivations_11_q0,dactivations_12_address0,dactivations_12_ce0,dactivations_12_q0,dactivations_13_address0,dactivations_13_ce0,dactivations_13_q0,dactivations_14_address0,dactivations_14_ce0,dactivations_14_q0,dactivations_15_address0,dactivations_15_ce0,dactivations_15_q0,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4568_p_din0,grp_fu_4568_p_din1,grp_fu_4568_p_opcode,grp_fu_4568_p_dout0,grp_fu_4568_p_ce,grp_fu_4572_p_din0,grp_fu_4572_p_din1,grp_fu_4572_p_opcode,grp_fu_4572_p_dout0,grp_fu_4572_p_ce,grp_fu_4576_p_din0,grp_fu_4576_p_din1,grp_fu_4576_p_opcode,grp_fu_4576_p_dout0,grp_fu_4576_p_ce,grp_fu_4580_p_din0,grp_fu_4580_p_din1,grp_fu_4580_p_opcode,grp_fu_4580_p_dout0,grp_fu_4580_p_ce,grp_fu_4584_p_din0,grp_fu_4584_p_din1,grp_fu_4584_p_opcode,grp_fu_4584_p_dout0,grp_fu_4584_p_ce,grp_fu_4588_p_din0,grp_fu_4588_p_din1,grp_fu_4588_p_opcode,grp_fu_4588_p_dout0,grp_fu_4588_p_ce,grp_fu_4592_p_din0,grp_fu_4592_p_din1,grp_fu_4592_p_opcode,grp_fu_4592_p_dout0,grp_fu_4592_p_ce,grp_fu_4596_p_din0,grp_fu_4596_p_din1,grp_fu_4596_p_opcode,grp_fu_4596_p_dout0,grp_fu_4596_p_ce,grp_fu_4600_p_din0,grp_fu_4600_p_din1,grp_fu_4600_p_opcode,grp_fu_4600_p_dout0,grp_fu_4600_p_ce,grp_fu_4604_p_din0,grp_fu_4604_p_din1,grp_fu_4604_p_opcode,grp_fu_4604_p_dout0,grp_fu_4604_p_ce,grp_fu_4608_p_din0,grp_fu_4608_p_din1,grp_fu_4608_p_opcode,grp_fu_4608_p_dout0,grp_fu_4608_p_ce,grp_fu_4612_p_din0,grp_fu_4612_p_din1,grp_fu_4612_p_opcode,grp_fu_4612_p_dout0,grp_fu_4612_p_ce,grp_fu_4616_p_din0,grp_fu_4616_p_din1,grp_fu_4616_p_opcode,grp_fu_4616_p_dout0,grp_fu_4616_p_ce,grp_fu_4620_p_din0,grp_fu_4620_p_din1,grp_fu_4620_p_opcode,grp_fu_4620_p_dout0,grp_fu_4620_p_ce,grp_fu_4624_p_din0,grp_fu_4624_p_din1,grp_fu_4624_p_opcode,grp_fu_4624_p_dout0,grp_fu_4624_p_ce,grp_fu_4628_p_din0,grp_fu_4628_p_din1,grp_fu_4628_p_opcode,grp_fu_4628_p_dout0,grp_fu_4628_p_ce,grp_fu_4632_p_din0,grp_fu_4632_p_din1,grp_fu_4632_p_opcode,grp_fu_4632_p_dout0,grp_fu_4632_p_ce,grp_fu_4636_p_din0,grp_fu_4636_p_din1,grp_fu_4636_p_opcode,grp_fu_4636_p_dout0,grp_fu_4636_p_ce,grp_fu_4640_p_din0,grp_fu_4640_p_din1,grp_fu_4640_p_opcode,grp_fu_4640_p_dout0,grp_fu_4640_p_ce,grp_fu_4644_p_din0,grp_fu_4644_p_din1,grp_fu_4644_p_opcode,grp_fu_4644_p_dout0,grp_fu_4644_p_ce,grp_fu_4648_p_din0,grp_fu_4648_p_din1,grp_fu_4648_p_opcode,grp_fu_4648_p_dout0,grp_fu_4648_p_ce,grp_fu_4652_p_din0,grp_fu_4652_p_din1,grp_fu_4652_p_opcode,grp_fu_4652_p_dout0,grp_fu_4652_p_ce,grp_fu_4656_p_din0,grp_fu_4656_p_din1,grp_fu_4656_p_opcode,grp_fu_4656_p_dout0,grp_fu_4656_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce,grp_fu_4760_p_din0,grp_fu_4760_p_din1,grp_fu_4760_p_dout0,grp_fu_4760_p_ce,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_4768_p_din0,grp_fu_4768_p_din1,grp_fu_4768_p_dout0,grp_fu_4768_p_ce,grp_fu_4772_p_din0,grp_fu_4772_p_din1,grp_fu_4772_p_dout0,grp_fu_4772_p_ce,grp_fu_4776_p_din0,grp_fu_4776_p_din1,grp_fu_4776_p_dout0,grp_fu_4776_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
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
output  [1:0] grp_fu_4568_p_opcode;
input  [63:0] grp_fu_4568_p_dout0;
output   grp_fu_4568_p_ce;
output  [63:0] grp_fu_4572_p_din0;
output  [63:0] grp_fu_4572_p_din1;
output  [0:0] grp_fu_4572_p_opcode;
input  [63:0] grp_fu_4572_p_dout0;
output   grp_fu_4572_p_ce;
output  [63:0] grp_fu_4576_p_din0;
output  [63:0] grp_fu_4576_p_din1;
output  [1:0] grp_fu_4576_p_opcode;
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
output  [0:0] grp_fu_4592_p_opcode;
input  [63:0] grp_fu_4592_p_dout0;
output   grp_fu_4592_p_ce;
output  [63:0] grp_fu_4596_p_din0;
output  [63:0] grp_fu_4596_p_din1;
output  [1:0] grp_fu_4596_p_opcode;
input  [63:0] grp_fu_4596_p_dout0;
output   grp_fu_4596_p_ce;
output  [63:0] grp_fu_4600_p_din0;
output  [63:0] grp_fu_4600_p_din1;
output  [0:0] grp_fu_4600_p_opcode;
input  [63:0] grp_fu_4600_p_dout0;
output   grp_fu_4600_p_ce;
output  [63:0] grp_fu_4604_p_din0;
output  [63:0] grp_fu_4604_p_din1;
output  [0:0] grp_fu_4604_p_opcode;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_2246;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1400;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1405;
reg   [63:0] reg_1410;
reg   [63:0] reg_1415;
reg   [63:0] reg_1420;
reg   [63:0] reg_1425;
reg   [63:0] reg_1430;
reg   [63:0] reg_1435;
reg   [63:0] reg_1440;
reg   [63:0] reg_1445;
reg   [63:0] reg_1450;
reg   [63:0] reg_1455;
reg   [63:0] reg_1460;
reg   [63:0] reg_1465;
reg   [63:0] reg_1470;
reg   [63:0] reg_1475;
reg   [6:0] i_11_reg_2241;
wire   [1:0] lshr_ln_fu_1496_p4;
reg   [1:0] lshr_ln_reg_2250;
reg   [1:0] lshr_ln_reg_2250_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter7_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter8_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter9_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter10_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter11_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter12_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter13_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter14_reg;
reg   [1:0] lshr_ln_reg_2250_pp0_iter15_reg;
wire   [7:0] empty_fu_1561_p2;
reg   [7:0] empty_reg_2270;
wire   [63:0] zext_ln87_1_fu_1599_p1;
reg   [63:0] zext_ln87_1_reg_2306;
wire   [63:0] zext_ln87_2_fu_1620_p1;
reg   [63:0] zext_ln87_2_reg_2311;
wire   [63:0] zext_ln87_3_fu_1641_p1;
reg   [63:0] zext_ln87_3_reg_2316;
wire   [63:0] zext_ln87_6_fu_1744_p1;
reg   [63:0] zext_ln87_6_reg_2321;
wire   [63:0] zext_ln87_7_fu_1765_p1;
reg   [63:0] zext_ln87_7_reg_2326;
wire   [63:0] zext_ln87_8_fu_1786_p1;
reg   [63:0] zext_ln87_8_reg_2331;
wire   [63:0] zext_ln87_11_fu_1870_p1;
reg   [63:0] zext_ln87_11_reg_2336;
wire   [63:0] zext_ln87_12_fu_1891_p1;
reg   [63:0] zext_ln87_12_reg_2341;
wire   [63:0] zext_ln87_13_fu_1912_p1;
reg   [63:0] zext_ln87_13_reg_2346;
wire   [63:0] zext_ln85_4_fu_1933_p1;
reg   [63:0] zext_ln85_4_reg_2351;
wire   [63:0] bitcast_ln85_fu_1949_p1;
wire   [63:0] bitcast_ln85_1_fu_1954_p1;
wire   [63:0] bitcast_ln85_2_fu_1959_p1;
wire   [63:0] bitcast_ln85_3_fu_1964_p1;
wire   [63:0] bitcast_ln85_4_fu_1969_p1;
wire   [63:0] bitcast_ln85_5_fu_1974_p1;
reg   [63:0] weights3_6_load_5_reg_2561;
reg   [63:0] weights3_9_load_5_reg_2571;
reg   [63:0] weights3_12_load_5_reg_2581;
reg   [63:0] weights3_15_load_5_reg_2591;
reg   [63:0] weights3_0_load_6_reg_2596;
reg   [63:0] weights3_1_load_6_reg_2601;
reg   [63:0] weights3_2_load_6_reg_2606;
reg   [63:0] weights3_3_load_6_reg_2611;
reg   [63:0] weights3_4_load_6_reg_2616;
reg   [63:0] weights3_5_load_6_reg_2621;
reg   [63:0] weights3_7_load_6_reg_2631;
reg   [63:0] weights3_8_load_6_reg_2636;
reg   [63:0] weights3_10_load_6_reg_2646;
reg   [63:0] weights3_11_load_6_reg_2651;
reg   [63:0] weights3_13_load_6_reg_2661;
reg   [63:0] weights3_14_load_6_reg_2666;
wire   [63:0] bitcast_ln85_6_fu_1979_p1;
wire   [63:0] bitcast_ln85_7_fu_1984_p1;
wire   [63:0] bitcast_ln85_9_fu_1989_p1;
wire   [63:0] bitcast_ln85_10_fu_1994_p1;
wire   [63:0] bitcast_ln85_12_fu_1999_p1;
wire   [63:0] bitcast_ln85_13_fu_2004_p1;
wire   [63:0] bitcast_ln85_15_fu_2009_p1;
wire   [63:0] bitcast_ln85_16_fu_2014_p1;
wire   [63:0] bitcast_ln85_17_fu_2019_p1;
wire   [63:0] bitcast_ln85_18_fu_2024_p1;
wire   [63:0] bitcast_ln85_19_fu_2029_p1;
wire   [63:0] bitcast_ln85_20_fu_2034_p1;
wire   [63:0] bitcast_ln85_21_fu_2039_p1;
wire   [63:0] bitcast_ln85_22_fu_2044_p1;
wire   [63:0] bitcast_ln85_24_fu_2048_p1;
wire   [63:0] bitcast_ln85_25_fu_2053_p1;
wire   [63:0] bitcast_ln85_27_fu_2057_p1;
wire   [63:0] bitcast_ln85_28_fu_2062_p1;
wire   [63:0] bitcast_ln85_30_fu_2066_p1;
wire   [63:0] bitcast_ln85_31_fu_2071_p1;
wire   [63:0] bitcast_ln85_32_fu_2075_p1;
wire   [63:0] bitcast_ln85_33_fu_2079_p1;
wire   [63:0] bitcast_ln85_34_fu_2083_p1;
wire   [63:0] bitcast_ln85_35_fu_2087_p1;
wire   [63:0] bitcast_ln85_36_fu_2091_p1;
wire   [63:0] bitcast_ln85_37_fu_2095_p1;
wire   [63:0] bitcast_ln85_39_fu_2099_p1;
wire   [63:0] bitcast_ln85_40_fu_2103_p1;
wire   [63:0] bitcast_ln85_42_fu_2107_p1;
wire   [63:0] bitcast_ln85_43_fu_2111_p1;
wire   [63:0] bitcast_ln85_45_fu_2115_p1;
wire   [63:0] bitcast_ln85_46_fu_2119_p1;
wire   [63:0] bitcast_ln85_8_fu_2123_p1;
wire   [63:0] bitcast_ln85_11_fu_2128_p1;
wire   [63:0] bitcast_ln85_14_fu_2133_p1;
wire   [63:0] bitcast_ln85_23_fu_2138_p1;
wire   [63:0] bitcast_ln85_26_fu_2143_p1;
wire   [63:0] bitcast_ln85_29_fu_2148_p1;
wire   [63:0] bitcast_ln85_38_fu_2153_p1;
wire   [63:0] bitcast_ln85_41_fu_2158_p1;
wire   [63:0] bitcast_ln85_44_fu_2163_p1;
wire   [63:0] bitcast_ln85_47_fu_2168_p1;
reg   [63:0] mul8_reg_2886;
reg   [63:0] mul8_s_reg_2891;
reg   [63:0] mul8_s_reg_2891_pp0_iter5_reg;
reg   [63:0] mul8_s_reg_2891_pp0_iter6_reg;
reg   [63:0] mul8_s_reg_2891_pp0_iter7_reg;
reg   [63:0] mul8_s_reg_2891_pp0_iter8_reg;
reg   [63:0] mul8_27_reg_2896;
reg   [63:0] mul8_27_reg_2896_pp0_iter5_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter6_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter7_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter8_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter9_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter10_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter11_reg;
reg   [63:0] mul8_27_reg_2896_pp0_iter12_reg;
reg   [63:0] mul8_1_reg_2901;
reg   [63:0] mul8_1_1_reg_2906;
reg   [63:0] mul8_1_1_reg_2906_pp0_iter5_reg;
reg   [63:0] mul8_1_1_reg_2906_pp0_iter6_reg;
reg   [63:0] mul8_1_1_reg_2906_pp0_iter7_reg;
reg   [63:0] mul8_1_1_reg_2906_pp0_iter8_reg;
reg   [63:0] mul8_1_2_reg_2911;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter5_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter6_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter7_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter8_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter9_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter10_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter11_reg;
reg   [63:0] mul8_1_2_reg_2911_pp0_iter12_reg;
reg   [63:0] mul8_2_reg_2916;
reg   [63:0] mul8_2_1_reg_2921;
reg   [63:0] mul8_2_1_reg_2921_pp0_iter5_reg;
reg   [63:0] mul8_2_1_reg_2921_pp0_iter6_reg;
reg   [63:0] mul8_2_1_reg_2921_pp0_iter7_reg;
reg   [63:0] mul8_2_1_reg_2921_pp0_iter8_reg;
reg   [63:0] mul8_3_reg_2926;
reg   [63:0] mul8_3_1_reg_2931;
reg   [63:0] mul8_3_1_reg_2931_pp0_iter5_reg;
reg   [63:0] mul8_3_1_reg_2931_pp0_iter6_reg;
reg   [63:0] mul8_3_1_reg_2931_pp0_iter7_reg;
reg   [63:0] mul8_3_1_reg_2931_pp0_iter8_reg;
reg   [63:0] mul8_4_reg_2936;
reg   [63:0] mul8_4_1_reg_2941;
reg   [63:0] mul8_4_1_reg_2941_pp0_iter5_reg;
reg   [63:0] mul8_4_1_reg_2941_pp0_iter6_reg;
reg   [63:0] mul8_4_1_reg_2941_pp0_iter7_reg;
reg   [63:0] mul8_4_1_reg_2941_pp0_iter8_reg;
wire   [63:0] grp_fu_1296_p2;
reg   [63:0] mul8_5_reg_2946;
wire   [63:0] grp_fu_1300_p2;
reg   [63:0] mul8_5_1_reg_2951;
reg   [63:0] mul8_5_1_reg_2951_pp0_iter5_reg;
reg   [63:0] mul8_5_1_reg_2951_pp0_iter6_reg;
reg   [63:0] mul8_5_1_reg_2951_pp0_iter7_reg;
reg   [63:0] mul8_5_1_reg_2951_pp0_iter8_reg;
wire   [63:0] grp_fu_1304_p2;
reg   [63:0] mul8_5_2_reg_2956;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter5_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter6_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter7_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter8_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter9_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter10_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter11_reg;
reg   [63:0] mul8_5_2_reg_2956_pp0_iter12_reg;
wire   [63:0] grp_fu_1308_p2;
reg   [63:0] mul8_6_reg_2961;
wire   [63:0] grp_fu_1312_p2;
reg   [63:0] mul8_6_1_reg_2966;
reg   [63:0] mul8_6_1_reg_2966_pp0_iter5_reg;
reg   [63:0] mul8_6_1_reg_2966_pp0_iter6_reg;
reg   [63:0] mul8_6_1_reg_2966_pp0_iter7_reg;
reg   [63:0] mul8_6_1_reg_2966_pp0_iter8_reg;
wire   [63:0] grp_fu_1316_p2;
reg   [63:0] mul8_6_2_reg_2971;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter5_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter6_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter7_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter8_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter9_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter10_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter11_reg;
reg   [63:0] mul8_6_2_reg_2971_pp0_iter12_reg;
wire   [63:0] grp_fu_1320_p2;
reg   [63:0] mul8_7_reg_2976;
wire   [63:0] grp_fu_1324_p2;
reg   [63:0] mul8_7_1_reg_2981;
reg   [63:0] mul8_7_1_reg_2981_pp0_iter5_reg;
reg   [63:0] mul8_7_1_reg_2981_pp0_iter6_reg;
reg   [63:0] mul8_7_1_reg_2981_pp0_iter7_reg;
reg   [63:0] mul8_7_1_reg_2981_pp0_iter8_reg;
wire   [63:0] grp_fu_1328_p2;
reg   [63:0] mul8_8_reg_2986;
wire   [63:0] grp_fu_1332_p2;
reg   [63:0] mul8_8_1_reg_2991;
reg   [63:0] mul8_8_1_reg_2991_pp0_iter5_reg;
reg   [63:0] mul8_8_1_reg_2991_pp0_iter6_reg;
reg   [63:0] mul8_8_1_reg_2991_pp0_iter7_reg;
reg   [63:0] mul8_8_1_reg_2991_pp0_iter8_reg;
wire   [63:0] grp_fu_1336_p2;
reg   [63:0] mul8_9_reg_2996;
wire   [63:0] grp_fu_1340_p2;
reg   [63:0] mul8_9_1_reg_3001;
reg   [63:0] mul8_9_1_reg_3001_pp0_iter5_reg;
reg   [63:0] mul8_9_1_reg_3001_pp0_iter6_reg;
reg   [63:0] mul8_9_1_reg_3001_pp0_iter7_reg;
reg   [63:0] mul8_9_1_reg_3001_pp0_iter8_reg;
wire   [63:0] grp_fu_1344_p2;
reg   [63:0] mul8_10_reg_3006;
wire   [63:0] grp_fu_1348_p2;
reg   [63:0] mul8_10_1_reg_3011;
reg   [63:0] mul8_10_1_reg_3011_pp0_iter5_reg;
reg   [63:0] mul8_10_1_reg_3011_pp0_iter6_reg;
reg   [63:0] mul8_10_1_reg_3011_pp0_iter7_reg;
reg   [63:0] mul8_10_1_reg_3011_pp0_iter8_reg;
wire   [63:0] grp_fu_1352_p2;
reg   [63:0] mul8_10_2_reg_3016;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter5_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter6_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter7_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter8_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter9_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter10_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter11_reg;
reg   [63:0] mul8_10_2_reg_3016_pp0_iter12_reg;
wire   [63:0] grp_fu_1356_p2;
reg   [63:0] mul8_11_reg_3021;
wire   [63:0] grp_fu_1360_p2;
reg   [63:0] mul8_11_1_reg_3026;
reg   [63:0] mul8_11_1_reg_3026_pp0_iter5_reg;
reg   [63:0] mul8_11_1_reg_3026_pp0_iter6_reg;
reg   [63:0] mul8_11_1_reg_3026_pp0_iter7_reg;
reg   [63:0] mul8_11_1_reg_3026_pp0_iter8_reg;
wire   [63:0] grp_fu_1364_p2;
reg   [63:0] mul8_11_2_reg_3031;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter5_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter6_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter7_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter8_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter9_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter10_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter11_reg;
reg   [63:0] mul8_11_2_reg_3031_pp0_iter12_reg;
wire   [63:0] grp_fu_1368_p2;
reg   [63:0] mul8_12_reg_3036;
wire   [63:0] grp_fu_1372_p2;
reg   [63:0] mul8_12_1_reg_3041;
reg   [63:0] mul8_12_1_reg_3041_pp0_iter5_reg;
reg   [63:0] mul8_12_1_reg_3041_pp0_iter6_reg;
reg   [63:0] mul8_12_1_reg_3041_pp0_iter7_reg;
reg   [63:0] mul8_12_1_reg_3041_pp0_iter8_reg;
wire   [63:0] grp_fu_1376_p2;
reg   [63:0] mul8_13_reg_3046;
wire   [63:0] grp_fu_1380_p2;
reg   [63:0] mul8_13_1_reg_3051;
reg   [63:0] mul8_13_1_reg_3051_pp0_iter5_reg;
reg   [63:0] mul8_13_1_reg_3051_pp0_iter6_reg;
reg   [63:0] mul8_13_1_reg_3051_pp0_iter7_reg;
reg   [63:0] mul8_13_1_reg_3051_pp0_iter8_reg;
wire   [63:0] grp_fu_1384_p2;
reg   [63:0] mul8_14_reg_3056;
wire   [63:0] grp_fu_1388_p2;
reg   [63:0] mul8_14_1_reg_3061;
reg   [63:0] mul8_14_1_reg_3061_pp0_iter5_reg;
reg   [63:0] mul8_14_1_reg_3061_pp0_iter6_reg;
reg   [63:0] mul8_14_1_reg_3061_pp0_iter7_reg;
reg   [63:0] mul8_14_1_reg_3061_pp0_iter8_reg;
wire   [63:0] grp_fu_1392_p2;
reg   [63:0] mul8_15_reg_3066;
wire   [63:0] grp_fu_1396_p2;
reg   [63:0] mul8_15_1_reg_3071;
reg   [63:0] mul8_15_1_reg_3071_pp0_iter5_reg;
reg   [63:0] mul8_15_1_reg_3071_pp0_iter6_reg;
reg   [63:0] mul8_15_1_reg_3071_pp0_iter7_reg;
reg   [63:0] mul8_15_1_reg_3071_pp0_iter8_reg;
reg   [63:0] mul8_2_2_reg_3076;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter6_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter7_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter8_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter9_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter10_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter11_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter12_reg;
reg   [63:0] mul8_2_2_reg_3076_pp0_iter13_reg;
reg   [63:0] mul8_3_2_reg_3081;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter6_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter7_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter8_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter9_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter10_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter11_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter12_reg;
reg   [63:0] mul8_3_2_reg_3081_pp0_iter13_reg;
reg   [63:0] mul8_4_2_reg_3086;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter6_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter7_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter8_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter9_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter10_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter11_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter12_reg;
reg   [63:0] mul8_4_2_reg_3086_pp0_iter13_reg;
reg   [63:0] mul8_7_2_reg_3091;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter6_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter7_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter8_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter9_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter10_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter11_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter12_reg;
reg   [63:0] mul8_7_2_reg_3091_pp0_iter13_reg;
reg   [63:0] mul8_8_2_reg_3096;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter6_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter7_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter8_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter9_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter10_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter11_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter12_reg;
reg   [63:0] mul8_8_2_reg_3096_pp0_iter13_reg;
reg   [63:0] mul8_9_2_reg_3101;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter6_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter7_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter8_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter9_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter10_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter11_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter12_reg;
reg   [63:0] mul8_9_2_reg_3101_pp0_iter13_reg;
reg   [63:0] mul8_12_2_reg_3106;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter6_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter7_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter8_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter9_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter10_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter11_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter12_reg;
reg   [63:0] mul8_12_2_reg_3106_pp0_iter13_reg;
reg   [63:0] mul8_13_2_reg_3111;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter6_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter7_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter8_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter9_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter10_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter11_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter12_reg;
reg   [63:0] mul8_13_2_reg_3111_pp0_iter13_reg;
reg   [63:0] mul8_14_2_reg_3116;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter6_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter7_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter8_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter9_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter10_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter11_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter12_reg;
reg   [63:0] mul8_14_2_reg_3116_pp0_iter13_reg;
reg   [63:0] mul8_15_2_reg_3121;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter6_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter7_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter8_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter9_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter10_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter11_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter12_reg;
reg   [63:0] mul8_15_2_reg_3121_pp0_iter13_reg;
reg   [63:0] add_reg_3126;
reg   [63:0] add11_1_reg_3131;
reg   [63:0] add11_2_reg_3136;
reg   [63:0] add11_3_reg_3141;
reg   [63:0] add11_4_reg_3146;
reg   [63:0] add11_5_reg_3151;
reg   [63:0] add11_6_reg_3156;
reg   [63:0] add11_7_reg_3161;
reg   [63:0] add11_8_reg_3166;
reg   [63:0] add11_9_reg_3171;
reg   [63:0] add11_10_reg_3176;
reg   [63:0] add11_11_reg_3181;
reg   [63:0] add11_12_reg_3186;
reg   [63:0] add11_13_reg_3191;
reg   [63:0] add11_14_reg_3196;
reg   [63:0] add11_15_reg_3201;
reg   [63:0] add11_s_reg_3206;
reg   [63:0] add11_1_1_reg_3211;
reg   [63:0] add11_2_1_reg_3216;
reg   [63:0] add11_3_1_reg_3221;
reg   [63:0] add11_4_1_reg_3226;
reg   [63:0] add11_5_1_reg_3231;
reg   [63:0] add11_6_1_reg_3236;
reg   [63:0] add11_7_1_reg_3241;
reg   [63:0] add11_8_1_reg_3246;
reg   [63:0] add11_9_1_reg_3251;
reg   [63:0] add11_10_1_reg_3256;
reg   [63:0] add11_11_1_reg_3261;
reg   [63:0] add11_12_1_reg_3266;
reg   [63:0] add11_13_1_reg_3271;
reg   [63:0] add11_14_1_reg_3276;
reg   [63:0] add11_15_1_reg_3281;
wire   [63:0] zext_ln81_fu_2173_p1;
reg   [63:0] zext_ln81_reg_3286;
reg   [63:0] zext_ln81_reg_3286_pp0_iter17_reg;
reg   [63:0] zext_ln81_reg_3286_pp0_iter18_reg;
reg   [63:0] zext_ln81_reg_3286_pp0_iter19_reg;
reg   [63:0] zext_ln81_reg_3286_pp0_iter20_reg;
reg   [63:0] zext_ln81_reg_3286_pp0_iter21_reg;
reg   [63:0] add11_27_reg_3320;
reg   [63:0] add11_1_2_reg_3335;
reg   [63:0] dactivations_0_load_reg_3340;
reg   [63:0] dactivations_1_load_reg_3345;
reg   [63:0] add11_2_2_reg_3415;
reg   [63:0] add11_3_2_reg_3420;
reg   [63:0] add11_4_2_reg_3425;
reg   [63:0] add11_5_2_reg_3430;
reg   [63:0] add11_6_2_reg_3435;
reg   [63:0] add11_7_2_reg_3440;
reg   [63:0] add11_8_2_reg_3445;
reg   [63:0] add11_9_2_reg_3450;
reg   [63:0] add11_10_2_reg_3455;
reg   [63:0] add11_11_2_reg_3460;
reg   [63:0] add11_12_2_reg_3465;
reg   [63:0] add11_13_2_reg_3470;
reg   [63:0] add11_14_2_reg_3475;
reg   [63:0] add11_15_2_reg_3480;
reg   [63:0] dactivations_2_load_reg_3490;
reg   [63:0] dactivations_3_load_reg_3495;
reg   [63:0] dactivations_4_load_reg_3500;
reg   [63:0] dactivations_5_load_reg_3505;
reg   [63:0] dactivations_6_load_reg_3510;
reg   [63:0] dactivations_7_load_reg_3515;
reg   [63:0] dactivations_8_load_reg_3520;
reg   [63:0] dactivations_9_load_reg_3525;
reg   [63:0] dactivations_10_load_reg_3530;
reg   [63:0] dactivations_11_load_reg_3535;
reg   [63:0] dactivations_12_load_reg_3540;
reg   [63:0] dactivations_13_load_reg_3545;
reg   [63:0] dactivations_14_load_reg_3550;
reg   [63:0] dactivations_15_load_reg_3555;
reg   [63:0] mul_reg_3560;
reg   [63:0] mul16_1_reg_3565;
reg   [63:0] mul16_2_reg_3570;
reg   [63:0] mul16_3_reg_3575;
reg   [63:0] mul16_4_reg_3580;
reg   [63:0] mul16_5_reg_3585;
reg   [63:0] mul16_6_reg_3590;
reg   [63:0] mul16_7_reg_3595;
reg   [63:0] mul16_8_reg_3600;
reg   [63:0] mul16_9_reg_3605;
reg   [63:0] mul16_s_reg_3610;
reg   [63:0] mul16_10_reg_3615;
reg   [63:0] mul16_11_reg_3620;
reg   [63:0] mul16_12_reg_3625;
reg   [63:0] mul16_13_reg_3630;
reg   [63:0] mul16_14_reg_3635;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_1524_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln87_fu_1577_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_1_fu_1662_p1;
wire   [63:0] zext_ln85_2_fu_1682_p1;
wire   [63:0] zext_ln87_4_fu_1702_p1;
wire   [63:0] zext_ln87_5_fu_1722_p1;
wire   [63:0] zext_ln85_3_fu_1807_p1;
wire   [63:0] zext_ln87_9_fu_1828_p1;
wire   [63:0] zext_ln87_10_fu_1848_p1;
reg   [6:0] i_fu_196;
wire   [6:0] add_ln82_fu_1939_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
reg    weights3_0_ce0_local;
reg   [3:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg    weights3_1_ce0_local;
reg   [3:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg    weights3_2_ce0_local;
reg   [3:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg    weights3_3_ce0_local;
reg   [3:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg    weights3_4_ce0_local;
reg   [3:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg    weights3_5_ce0_local;
reg   [3:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg    weights3_6_ce1_local;
reg    weights3_6_ce0_local;
reg   [3:0] weights3_6_address0_local;
reg    weights3_7_ce1_local;
reg    weights3_7_ce0_local;
reg   [3:0] weights3_7_address0_local;
reg    weights3_9_ce1_local;
reg    weights3_9_ce0_local;
reg   [3:0] weights3_9_address0_local;
reg    weights3_10_ce1_local;
reg    weights3_10_ce0_local;
reg   [3:0] weights3_10_address0_local;
reg    weights3_12_ce1_local;
reg    weights3_12_ce0_local;
reg   [3:0] weights3_12_address0_local;
reg    weights3_13_ce1_local;
reg    weights3_13_ce0_local;
reg   [3:0] weights3_13_address0_local;
reg    weights3_15_ce1_local;
reg    weights3_15_ce0_local;
reg   [3:0] weights3_15_address0_local;
reg    weights3_8_ce1_local;
reg    weights3_8_ce0_local;
reg   [3:0] weights3_8_address0_local;
reg    weights3_11_ce1_local;
reg    weights3_11_ce0_local;
reg   [3:0] weights3_11_address0_local;
reg    weights3_14_ce1_local;
reg    weights3_14_ce0_local;
reg   [3:0] weights3_14_address0_local;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce0_local;
reg    dactivations_4_ce0_local;
reg    dactivations_5_ce0_local;
reg    dactivations_6_ce0_local;
reg    dactivations_7_ce0_local;
reg    dactivations_8_ce0_local;
reg    dactivations_9_ce0_local;
reg    dactivations_10_ce0_local;
reg    dactivations_11_ce0_local;
reg    dactivations_12_ce0_local;
reg    dactivations_13_ce0_local;
reg    dactivations_14_ce0_local;
reg    dactivations_15_ce0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg    oracle_activations_4_we0_local;
reg    oracle_activations_4_ce0_local;
reg    oracle_activations_5_we0_local;
reg    oracle_activations_5_ce0_local;
reg    oracle_activations_6_we0_local;
reg    oracle_activations_6_ce0_local;
reg    oracle_activations_7_we0_local;
reg    oracle_activations_7_ce0_local;
reg    oracle_activations_8_we0_local;
reg    oracle_activations_8_ce0_local;
reg    oracle_activations_9_we0_local;
reg    oracle_activations_9_ce0_local;
reg    oracle_activations_10_we0_local;
reg    oracle_activations_10_ce0_local;
reg    oracle_activations_11_we0_local;
reg    oracle_activations_11_ce0_local;
reg    oracle_activations_12_we0_local;
reg    oracle_activations_12_ce0_local;
reg    oracle_activations_13_we0_local;
reg    oracle_activations_13_ce0_local;
reg    oracle_activations_14_we0_local;
reg    oracle_activations_14_ce0_local;
reg    oracle_activations_15_we0_local;
reg    oracle_activations_15_ce0_local;
reg   [63:0] grp_fu_1162_p0;
reg   [63:0] grp_fu_1167_p0;
reg   [63:0] grp_fu_1172_p0;
reg   [63:0] grp_fu_1172_p1;
reg   [63:0] grp_fu_1177_p0;
reg   [63:0] grp_fu_1177_p1;
reg   [63:0] grp_fu_1182_p0;
reg   [63:0] grp_fu_1182_p1;
reg   [63:0] grp_fu_1187_p0;
reg   [63:0] grp_fu_1187_p1;
reg   [63:0] grp_fu_1192_p0;
reg   [63:0] grp_fu_1192_p1;
reg   [63:0] grp_fu_1197_p0;
reg   [63:0] grp_fu_1197_p1;
reg   [63:0] grp_fu_1202_p0;
reg   [63:0] grp_fu_1202_p1;
reg   [63:0] grp_fu_1207_p0;
reg   [63:0] grp_fu_1207_p1;
reg   [63:0] grp_fu_1212_p0;
reg   [63:0] grp_fu_1212_p1;
reg   [63:0] grp_fu_1217_p0;
reg   [63:0] grp_fu_1217_p1;
reg   [63:0] grp_fu_1222_p0;
reg   [63:0] grp_fu_1222_p1;
reg   [63:0] grp_fu_1227_p0;
reg   [63:0] grp_fu_1227_p1;
reg   [63:0] grp_fu_1232_p0;
reg   [63:0] grp_fu_1232_p1;
reg   [63:0] grp_fu_1236_p0;
reg   [63:0] grp_fu_1236_p1;
reg   [63:0] grp_fu_1240_p0;
reg   [63:0] grp_fu_1240_p1;
reg   [63:0] grp_fu_1244_p0;
reg   [63:0] grp_fu_1244_p1;
reg   [63:0] grp_fu_1248_p0;
reg   [63:0] grp_fu_1248_p1;
reg   [63:0] grp_fu_1252_p0;
reg   [63:0] grp_fu_1252_p1;
reg   [63:0] grp_fu_1256_p0;
reg   [63:0] grp_fu_1256_p1;
reg   [63:0] grp_fu_1260_p0;
reg   [63:0] grp_fu_1260_p1;
reg   [63:0] grp_fu_1264_p0;
reg   [63:0] grp_fu_1264_p1;
reg   [63:0] grp_fu_1268_p0;
reg   [63:0] grp_fu_1268_p1;
reg   [63:0] grp_fu_1272_p0;
reg   [63:0] grp_fu_1276_p0;
reg   [63:0] grp_fu_1280_p0;
reg   [63:0] grp_fu_1280_p1;
reg   [63:0] grp_fu_1284_p0;
reg   [63:0] grp_fu_1284_p1;
reg   [63:0] grp_fu_1288_p0;
reg   [63:0] grp_fu_1288_p1;
reg   [63:0] grp_fu_1292_p0;
reg   [63:0] grp_fu_1292_p1;
reg   [63:0] grp_fu_1296_p0;
reg   [63:0] grp_fu_1296_p1;
reg   [63:0] grp_fu_1300_p0;
reg   [63:0] grp_fu_1300_p1;
reg   [63:0] grp_fu_1304_p0;
reg   [63:0] grp_fu_1308_p0;
reg   [63:0] grp_fu_1308_p1;
reg   [63:0] grp_fu_1312_p0;
reg   [63:0] grp_fu_1312_p1;
reg   [63:0] grp_fu_1316_p0;
reg   [63:0] grp_fu_1320_p0;
reg   [63:0] grp_fu_1320_p1;
reg   [63:0] grp_fu_1324_p0;
reg   [63:0] grp_fu_1324_p1;
reg   [63:0] grp_fu_1328_p0;
reg   [63:0] grp_fu_1328_p1;
reg   [63:0] grp_fu_1332_p0;
reg   [63:0] grp_fu_1332_p1;
reg   [63:0] grp_fu_1336_p0;
reg   [63:0] grp_fu_1336_p1;
reg   [63:0] grp_fu_1340_p0;
reg   [63:0] grp_fu_1340_p1;
reg   [63:0] grp_fu_1344_p0;
reg   [63:0] grp_fu_1344_p1;
reg   [63:0] grp_fu_1348_p0;
reg   [63:0] grp_fu_1348_p1;
reg   [63:0] grp_fu_1352_p0;
reg   [63:0] grp_fu_1352_p1;
reg   [63:0] grp_fu_1356_p0;
reg   [63:0] grp_fu_1356_p1;
reg   [63:0] grp_fu_1360_p0;
reg   [63:0] grp_fu_1360_p1;
reg   [63:0] grp_fu_1364_p0;
reg   [63:0] grp_fu_1364_p1;
reg   [63:0] grp_fu_1368_p0;
reg   [63:0] grp_fu_1368_p1;
reg   [63:0] grp_fu_1372_p0;
reg   [63:0] grp_fu_1372_p1;
reg   [63:0] grp_fu_1376_p0;
reg   [63:0] grp_fu_1376_p1;
reg   [63:0] grp_fu_1380_p0;
reg   [63:0] grp_fu_1380_p1;
reg   [63:0] grp_fu_1384_p0;
reg   [63:0] grp_fu_1384_p1;
reg   [63:0] grp_fu_1388_p0;
reg   [63:0] grp_fu_1388_p1;
reg   [63:0] grp_fu_1392_p0;
reg   [63:0] grp_fu_1392_p1;
reg   [63:0] grp_fu_1396_p0;
reg   [63:0] grp_fu_1396_p1;
wire   [3:0] p_shl5_fu_1510_p3;
wire   [3:0] zext_ln81_1_fu_1506_p1;
wire   [3:0] sub_ln85_fu_1518_p2;
wire   [4:0] tmp_s_fu_1531_p4;
wire   [5:0] or_ln_fu_1541_p3;
wire   [7:0] p_shl_fu_1553_p3;
wire   [7:0] zext_ln83_fu_1549_p1;
wire   [3:0] lshr_ln1_fu_1567_p4;
wire   [7:0] empty_269_fu_1584_p2;
wire   [3:0] lshr_ln85_1_fu_1589_p4;
wire   [7:0] empty_270_fu_1605_p2;
wire   [3:0] lshr_ln85_2_fu_1610_p4;
wire   [7:0] empty_271_fu_1626_p2;
wire   [3:0] lshr_ln85_3_fu_1631_p4;
wire   [7:0] empty_272_fu_1647_p2;
wire   [3:0] lshr_ln85_4_fu_1652_p4;
wire   [7:0] add_ln85_fu_1667_p2;
wire   [3:0] lshr_ln85_5_fu_1672_p4;
wire   [7:0] add_ln85_1_fu_1687_p2;
wire   [3:0] lshr_ln85_6_fu_1692_p4;
wire   [7:0] empty_273_fu_1707_p2;
wire   [3:0] lshr_ln85_7_fu_1712_p4;
wire   [7:0] empty_274_fu_1729_p2;
wire   [3:0] lshr_ln85_8_fu_1734_p4;
wire   [7:0] empty_275_fu_1750_p2;
wire   [3:0] lshr_ln85_9_fu_1755_p4;
wire   [7:0] empty_276_fu_1771_p2;
wire   [3:0] lshr_ln85_s_fu_1776_p4;
wire   [7:0] empty_277_fu_1792_p2;
wire   [3:0] lshr_ln85_10_fu_1797_p4;
wire   [7:0] add_ln85_2_fu_1813_p2;
wire   [3:0] lshr_ln85_11_fu_1818_p4;
wire   [7:0] empty_278_fu_1833_p2;
wire   [3:0] lshr_ln85_12_fu_1838_p4;
wire   [7:0] empty_279_fu_1855_p2;
wire   [3:0] lshr_ln85_13_fu_1860_p4;
wire   [7:0] empty_280_fu_1876_p2;
wire   [3:0] lshr_ln85_14_fu_1881_p4;
wire   [7:0] empty_281_fu_1897_p2;
wire   [3:0] lshr_ln85_15_fu_1902_p4;
wire   [7:0] empty_282_fu_1918_p2;
wire   [3:0] lshr_ln85_16_fu_1923_p4;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
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
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to21;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_196 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U750(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1296_p0),.din1(grp_fu_1296_p1),.ce(1'b1),.dout(grp_fu_1296_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U751(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1300_p0),.din1(grp_fu_1300_p1),.ce(1'b1),.dout(grp_fu_1300_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U752(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(output_differences_0_2_val),.ce(1'b1),.dout(grp_fu_1304_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U753(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1308_p0),.din1(grp_fu_1308_p1),.ce(1'b1),.dout(grp_fu_1308_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U754(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1312_p0),.din1(grp_fu_1312_p1),.ce(1'b1),.dout(grp_fu_1312_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U755(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1316_p0),.din1(output_differences_0_2_val),.ce(1'b1),.dout(grp_fu_1316_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U756(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1320_p0),.din1(grp_fu_1320_p1),.ce(1'b1),.dout(grp_fu_1320_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U757(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1324_p0),.din1(grp_fu_1324_p1),.ce(1'b1),.dout(grp_fu_1324_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U758(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1328_p0),.din1(grp_fu_1328_p1),.ce(1'b1),.dout(grp_fu_1328_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U759(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1332_p0),.din1(grp_fu_1332_p1),.ce(1'b1),.dout(grp_fu_1332_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U760(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1336_p0),.din1(grp_fu_1336_p1),.ce(1'b1),.dout(grp_fu_1336_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U761(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1340_p0),.din1(grp_fu_1340_p1),.ce(1'b1),.dout(grp_fu_1340_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U762(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1344_p0),.din1(grp_fu_1344_p1),.ce(1'b1),.dout(grp_fu_1344_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U763(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1348_p0),.din1(grp_fu_1348_p1),.ce(1'b1),.dout(grp_fu_1348_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U764(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1352_p0),.din1(grp_fu_1352_p1),.ce(1'b1),.dout(grp_fu_1352_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U765(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1356_p0),.din1(grp_fu_1356_p1),.ce(1'b1),.dout(grp_fu_1356_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U766(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1360_p0),.din1(grp_fu_1360_p1),.ce(1'b1),.dout(grp_fu_1360_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U767(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1364_p0),.din1(grp_fu_1364_p1),.ce(1'b1),.dout(grp_fu_1364_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U768(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1368_p0),.din1(grp_fu_1368_p1),.ce(1'b1),.dout(grp_fu_1368_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U769(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1372_p0),.din1(grp_fu_1372_p1),.ce(1'b1),.dout(grp_fu_1372_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U770(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1376_p0),.din1(grp_fu_1376_p1),.ce(1'b1),.dout(grp_fu_1376_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U771(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1380_p0),.din1(grp_fu_1380_p1),.ce(1'b1),.dout(grp_fu_1380_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U772(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1384_p0),.din1(grp_fu_1384_p1),.ce(1'b1),.dout(grp_fu_1384_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U773(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1388_p0),.din1(grp_fu_1388_p1),.ce(1'b1),.dout(grp_fu_1388_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U774(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1392_p0),.din1(grp_fu_1392_p1),.ce(1'b1),.dout(grp_fu_1392_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U775(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1396_p0),.din1(grp_fu_1396_p1),.ce(1'b1),.dout(grp_fu_1396_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_196 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_2246 == 1'd0))) begin
        i_fu_196 <= add_ln82_fu_1939_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1400 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1400 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1405 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1405 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1410 <= weights3_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1410 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1415 <= weights3_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1415 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1420 <= weights3_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1420 <= weights3_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1425 <= weights3_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1425 <= weights3_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1430 <= weights3_6_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1430 <= weights3_6_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1435 <= weights3_7_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1435 <= weights3_7_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1440 <= weights3_9_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1440 <= weights3_9_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1445 <= weights3_10_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1445 <= weights3_10_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1450 <= weights3_12_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1450 <= weights3_12_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1455 <= weights3_13_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1455 <= weights3_13_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1460 <= weights3_15_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1460 <= weights3_15_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1465 <= weights3_8_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1465 <= weights3_8_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1470 <= weights3_11_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1470 <= weights3_11_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1475 <= weights3_14_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_1475 <= weights3_14_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_10_1_reg_3256 <= grp_fu_4652_p_dout0;
        add11_11_1_reg_3261 <= grp_fu_4656_p_dout0;
        add11_2_1_reg_3216 <= grp_fu_4620_p_dout0;
        add11_3_1_reg_3221 <= grp_fu_4624_p_dout0;
        add11_4_1_reg_3226 <= grp_fu_4628_p_dout0;
        add11_5_1_reg_3231 <= grp_fu_4632_p_dout0;
        add11_6_1_reg_3236 <= grp_fu_4636_p_dout0;
        add11_7_1_reg_3241 <= grp_fu_4640_p_dout0;
        add11_8_1_reg_3246 <= grp_fu_4644_p_dout0;
        add11_9_1_reg_3251 <= grp_fu_4648_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_10_2_reg_3455 <= grp_fu_4636_p_dout0;
        add11_11_2_reg_3460 <= grp_fu_4640_p_dout0;
        add11_12_2_reg_3465 <= grp_fu_4644_p_dout0;
        add11_13_2_reg_3470 <= grp_fu_4648_p_dout0;
        add11_14_2_reg_3475 <= grp_fu_4652_p_dout0;
        add11_15_2_reg_3480 <= grp_fu_4656_p_dout0;
        add11_2_2_reg_3415 <= grp_fu_4604_p_dout0;
        add11_3_2_reg_3420 <= grp_fu_4608_p_dout0;
        add11_4_2_reg_3425 <= grp_fu_4612_p_dout0;
        add11_5_2_reg_3430 <= grp_fu_4616_p_dout0;
        add11_6_2_reg_3435 <= grp_fu_4620_p_dout0;
        add11_7_2_reg_3440 <= grp_fu_4624_p_dout0;
        add11_8_2_reg_3445 <= grp_fu_4628_p_dout0;
        add11_9_2_reg_3450 <= grp_fu_4632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_10_reg_3176 <= grp_fu_4596_p_dout0;
        add11_11_reg_3181 <= grp_fu_4600_p_dout0;
        add11_12_reg_3186 <= grp_fu_4604_p_dout0;
        add11_13_reg_3191 <= grp_fu_4608_p_dout0;
        add11_14_reg_3196 <= grp_fu_4612_p_dout0;
        add11_15_reg_3201 <= grp_fu_4616_p_dout0;
        add11_2_reg_3136 <= grp_fu_4564_p_dout0;
        add11_3_reg_3141 <= grp_fu_4568_p_dout0;
        add11_4_reg_3146 <= grp_fu_4572_p_dout0;
        add11_5_reg_3151 <= grp_fu_4576_p_dout0;
        add11_6_reg_3156 <= grp_fu_4580_p_dout0;
        add11_7_reg_3161 <= grp_fu_4584_p_dout0;
        add11_8_reg_3166 <= grp_fu_4588_p_dout0;
        add11_9_reg_3171 <= grp_fu_4592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_12_1_reg_3266 <= grp_fu_4580_p_dout0;
        add11_13_1_reg_3271 <= grp_fu_4584_p_dout0;
        add11_14_1_reg_3276 <= grp_fu_4588_p_dout0;
        add11_15_1_reg_3281 <= grp_fu_4592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_3211 <= grp_fu_4576_p_dout0;
        add11_s_reg_3206 <= grp_fu_4572_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_2_reg_3335 <= grp_fu_4600_p_dout0;
        add11_27_reg_3320 <= grp_fu_4596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_reg_3131 <= grp_fu_4568_p_dout0;
        add_reg_3126 <= grp_fu_4564_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        dactivations_0_load_reg_3340 <= dactivations_0_q0;
        dactivations_10_load_reg_3530 <= dactivations_10_q0;
        dactivations_11_load_reg_3535 <= dactivations_11_q0;
        dactivations_12_load_reg_3540 <= dactivations_12_q0;
        dactivations_13_load_reg_3545 <= dactivations_13_q0;
        dactivations_14_load_reg_3550 <= dactivations_14_q0;
        dactivations_15_load_reg_3555 <= dactivations_15_q0;
        dactivations_1_load_reg_3345 <= dactivations_1_q0;
        dactivations_2_load_reg_3490 <= dactivations_2_q0;
        dactivations_3_load_reg_3495 <= dactivations_3_q0;
        dactivations_4_load_reg_3500 <= dactivations_4_q0;
        dactivations_5_load_reg_3505 <= dactivations_5_q0;
        dactivations_6_load_reg_3510 <= dactivations_6_q0;
        dactivations_7_load_reg_3515 <= dactivations_7_q0;
        dactivations_8_load_reg_3520 <= dactivations_8_q0;
        dactivations_9_load_reg_3525 <= dactivations_9_q0;
        mul8_10_1_reg_3011_pp0_iter5_reg <= mul8_10_1_reg_3011;
        mul8_10_1_reg_3011_pp0_iter6_reg <= mul8_10_1_reg_3011_pp0_iter5_reg;
        mul8_10_1_reg_3011_pp0_iter7_reg <= mul8_10_1_reg_3011_pp0_iter6_reg;
        mul8_10_1_reg_3011_pp0_iter8_reg <= mul8_10_1_reg_3011_pp0_iter7_reg;
        mul8_10_2_reg_3016_pp0_iter10_reg <= mul8_10_2_reg_3016_pp0_iter9_reg;
        mul8_10_2_reg_3016_pp0_iter11_reg <= mul8_10_2_reg_3016_pp0_iter10_reg;
        mul8_10_2_reg_3016_pp0_iter12_reg <= mul8_10_2_reg_3016_pp0_iter11_reg;
        mul8_10_2_reg_3016_pp0_iter5_reg <= mul8_10_2_reg_3016;
        mul8_10_2_reg_3016_pp0_iter6_reg <= mul8_10_2_reg_3016_pp0_iter5_reg;
        mul8_10_2_reg_3016_pp0_iter7_reg <= mul8_10_2_reg_3016_pp0_iter6_reg;
        mul8_10_2_reg_3016_pp0_iter8_reg <= mul8_10_2_reg_3016_pp0_iter7_reg;
        mul8_10_2_reg_3016_pp0_iter9_reg <= mul8_10_2_reg_3016_pp0_iter8_reg;
        mul8_11_1_reg_3026_pp0_iter5_reg <= mul8_11_1_reg_3026;
        mul8_11_1_reg_3026_pp0_iter6_reg <= mul8_11_1_reg_3026_pp0_iter5_reg;
        mul8_11_1_reg_3026_pp0_iter7_reg <= mul8_11_1_reg_3026_pp0_iter6_reg;
        mul8_11_1_reg_3026_pp0_iter8_reg <= mul8_11_1_reg_3026_pp0_iter7_reg;
        mul8_11_2_reg_3031_pp0_iter10_reg <= mul8_11_2_reg_3031_pp0_iter9_reg;
        mul8_11_2_reg_3031_pp0_iter11_reg <= mul8_11_2_reg_3031_pp0_iter10_reg;
        mul8_11_2_reg_3031_pp0_iter12_reg <= mul8_11_2_reg_3031_pp0_iter11_reg;
        mul8_11_2_reg_3031_pp0_iter5_reg <= mul8_11_2_reg_3031;
        mul8_11_2_reg_3031_pp0_iter6_reg <= mul8_11_2_reg_3031_pp0_iter5_reg;
        mul8_11_2_reg_3031_pp0_iter7_reg <= mul8_11_2_reg_3031_pp0_iter6_reg;
        mul8_11_2_reg_3031_pp0_iter8_reg <= mul8_11_2_reg_3031_pp0_iter7_reg;
        mul8_11_2_reg_3031_pp0_iter9_reg <= mul8_11_2_reg_3031_pp0_iter8_reg;
        mul8_12_1_reg_3041_pp0_iter5_reg <= mul8_12_1_reg_3041;
        mul8_12_1_reg_3041_pp0_iter6_reg <= mul8_12_1_reg_3041_pp0_iter5_reg;
        mul8_12_1_reg_3041_pp0_iter7_reg <= mul8_12_1_reg_3041_pp0_iter6_reg;
        mul8_12_1_reg_3041_pp0_iter8_reg <= mul8_12_1_reg_3041_pp0_iter7_reg;
        mul8_13_1_reg_3051_pp0_iter5_reg <= mul8_13_1_reg_3051;
        mul8_13_1_reg_3051_pp0_iter6_reg <= mul8_13_1_reg_3051_pp0_iter5_reg;
        mul8_13_1_reg_3051_pp0_iter7_reg <= mul8_13_1_reg_3051_pp0_iter6_reg;
        mul8_13_1_reg_3051_pp0_iter8_reg <= mul8_13_1_reg_3051_pp0_iter7_reg;
        mul8_14_1_reg_3061_pp0_iter5_reg <= mul8_14_1_reg_3061;
        mul8_14_1_reg_3061_pp0_iter6_reg <= mul8_14_1_reg_3061_pp0_iter5_reg;
        mul8_14_1_reg_3061_pp0_iter7_reg <= mul8_14_1_reg_3061_pp0_iter6_reg;
        mul8_14_1_reg_3061_pp0_iter8_reg <= mul8_14_1_reg_3061_pp0_iter7_reg;
        mul8_15_1_reg_3071_pp0_iter5_reg <= mul8_15_1_reg_3071;
        mul8_15_1_reg_3071_pp0_iter6_reg <= mul8_15_1_reg_3071_pp0_iter5_reg;
        mul8_15_1_reg_3071_pp0_iter7_reg <= mul8_15_1_reg_3071_pp0_iter6_reg;
        mul8_15_1_reg_3071_pp0_iter8_reg <= mul8_15_1_reg_3071_pp0_iter7_reg;
        mul8_2_1_reg_2921_pp0_iter5_reg <= mul8_2_1_reg_2921;
        mul8_2_1_reg_2921_pp0_iter6_reg <= mul8_2_1_reg_2921_pp0_iter5_reg;
        mul8_2_1_reg_2921_pp0_iter7_reg <= mul8_2_1_reg_2921_pp0_iter6_reg;
        mul8_2_1_reg_2921_pp0_iter8_reg <= mul8_2_1_reg_2921_pp0_iter7_reg;
        mul8_3_1_reg_2931_pp0_iter5_reg <= mul8_3_1_reg_2931;
        mul8_3_1_reg_2931_pp0_iter6_reg <= mul8_3_1_reg_2931_pp0_iter5_reg;
        mul8_3_1_reg_2931_pp0_iter7_reg <= mul8_3_1_reg_2931_pp0_iter6_reg;
        mul8_3_1_reg_2931_pp0_iter8_reg <= mul8_3_1_reg_2931_pp0_iter7_reg;
        mul8_4_1_reg_2941_pp0_iter5_reg <= mul8_4_1_reg_2941;
        mul8_4_1_reg_2941_pp0_iter6_reg <= mul8_4_1_reg_2941_pp0_iter5_reg;
        mul8_4_1_reg_2941_pp0_iter7_reg <= mul8_4_1_reg_2941_pp0_iter6_reg;
        mul8_4_1_reg_2941_pp0_iter8_reg <= mul8_4_1_reg_2941_pp0_iter7_reg;
        mul8_5_1_reg_2951_pp0_iter5_reg <= mul8_5_1_reg_2951;
        mul8_5_1_reg_2951_pp0_iter6_reg <= mul8_5_1_reg_2951_pp0_iter5_reg;
        mul8_5_1_reg_2951_pp0_iter7_reg <= mul8_5_1_reg_2951_pp0_iter6_reg;
        mul8_5_1_reg_2951_pp0_iter8_reg <= mul8_5_1_reg_2951_pp0_iter7_reg;
        mul8_5_2_reg_2956_pp0_iter10_reg <= mul8_5_2_reg_2956_pp0_iter9_reg;
        mul8_5_2_reg_2956_pp0_iter11_reg <= mul8_5_2_reg_2956_pp0_iter10_reg;
        mul8_5_2_reg_2956_pp0_iter12_reg <= mul8_5_2_reg_2956_pp0_iter11_reg;
        mul8_5_2_reg_2956_pp0_iter5_reg <= mul8_5_2_reg_2956;
        mul8_5_2_reg_2956_pp0_iter6_reg <= mul8_5_2_reg_2956_pp0_iter5_reg;
        mul8_5_2_reg_2956_pp0_iter7_reg <= mul8_5_2_reg_2956_pp0_iter6_reg;
        mul8_5_2_reg_2956_pp0_iter8_reg <= mul8_5_2_reg_2956_pp0_iter7_reg;
        mul8_5_2_reg_2956_pp0_iter9_reg <= mul8_5_2_reg_2956_pp0_iter8_reg;
        mul8_6_1_reg_2966_pp0_iter5_reg <= mul8_6_1_reg_2966;
        mul8_6_1_reg_2966_pp0_iter6_reg <= mul8_6_1_reg_2966_pp0_iter5_reg;
        mul8_6_1_reg_2966_pp0_iter7_reg <= mul8_6_1_reg_2966_pp0_iter6_reg;
        mul8_6_1_reg_2966_pp0_iter8_reg <= mul8_6_1_reg_2966_pp0_iter7_reg;
        mul8_6_2_reg_2971_pp0_iter10_reg <= mul8_6_2_reg_2971_pp0_iter9_reg;
        mul8_6_2_reg_2971_pp0_iter11_reg <= mul8_6_2_reg_2971_pp0_iter10_reg;
        mul8_6_2_reg_2971_pp0_iter12_reg <= mul8_6_2_reg_2971_pp0_iter11_reg;
        mul8_6_2_reg_2971_pp0_iter5_reg <= mul8_6_2_reg_2971;
        mul8_6_2_reg_2971_pp0_iter6_reg <= mul8_6_2_reg_2971_pp0_iter5_reg;
        mul8_6_2_reg_2971_pp0_iter7_reg <= mul8_6_2_reg_2971_pp0_iter6_reg;
        mul8_6_2_reg_2971_pp0_iter8_reg <= mul8_6_2_reg_2971_pp0_iter7_reg;
        mul8_6_2_reg_2971_pp0_iter9_reg <= mul8_6_2_reg_2971_pp0_iter8_reg;
        mul8_7_1_reg_2981_pp0_iter5_reg <= mul8_7_1_reg_2981;
        mul8_7_1_reg_2981_pp0_iter6_reg <= mul8_7_1_reg_2981_pp0_iter5_reg;
        mul8_7_1_reg_2981_pp0_iter7_reg <= mul8_7_1_reg_2981_pp0_iter6_reg;
        mul8_7_1_reg_2981_pp0_iter8_reg <= mul8_7_1_reg_2981_pp0_iter7_reg;
        mul8_8_1_reg_2991_pp0_iter5_reg <= mul8_8_1_reg_2991;
        mul8_8_1_reg_2991_pp0_iter6_reg <= mul8_8_1_reg_2991_pp0_iter5_reg;
        mul8_8_1_reg_2991_pp0_iter7_reg <= mul8_8_1_reg_2991_pp0_iter6_reg;
        mul8_8_1_reg_2991_pp0_iter8_reg <= mul8_8_1_reg_2991_pp0_iter7_reg;
        mul8_9_1_reg_3001_pp0_iter5_reg <= mul8_9_1_reg_3001;
        mul8_9_1_reg_3001_pp0_iter6_reg <= mul8_9_1_reg_3001_pp0_iter5_reg;
        mul8_9_1_reg_3001_pp0_iter7_reg <= mul8_9_1_reg_3001_pp0_iter6_reg;
        mul8_9_1_reg_3001_pp0_iter8_reg <= mul8_9_1_reg_3001_pp0_iter7_reg;
        zext_ln85_4_reg_2351[3 : 0] <= zext_ln85_4_fu_1933_p1[3 : 0];
        zext_ln87_11_reg_2336[3 : 0] <= zext_ln87_11_fu_1870_p1[3 : 0];
        zext_ln87_12_reg_2341[3 : 0] <= zext_ln87_12_fu_1891_p1[3 : 0];
        zext_ln87_13_reg_2346[3 : 0] <= zext_ln87_13_fu_1912_p1[3 : 0];
        zext_ln87_1_reg_2306[3 : 0] <= zext_ln87_1_fu_1599_p1[3 : 0];
        zext_ln87_2_reg_2311[3 : 0] <= zext_ln87_2_fu_1620_p1[3 : 0];
        zext_ln87_3_reg_2316[3 : 0] <= zext_ln87_3_fu_1641_p1[3 : 0];
        zext_ln87_6_reg_2321[3 : 0] <= zext_ln87_6_fu_1744_p1[3 : 0];
        zext_ln87_7_reg_2326[3 : 0] <= zext_ln87_7_fu_1765_p1[3 : 0];
        zext_ln87_8_reg_2331[3 : 0] <= zext_ln87_8_fu_1786_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_2270[7 : 1] <= empty_fu_1561_p2[7 : 1];
        i_11_reg_2241 <= ap_sig_allocacmp_i_11;
        lshr_ln_reg_2250 <= {{ap_sig_allocacmp_i_11[5:4]}};
        lshr_ln_reg_2250_pp0_iter10_reg <= lshr_ln_reg_2250_pp0_iter9_reg;
        lshr_ln_reg_2250_pp0_iter11_reg <= lshr_ln_reg_2250_pp0_iter10_reg;
        lshr_ln_reg_2250_pp0_iter12_reg <= lshr_ln_reg_2250_pp0_iter11_reg;
        lshr_ln_reg_2250_pp0_iter13_reg <= lshr_ln_reg_2250_pp0_iter12_reg;
        lshr_ln_reg_2250_pp0_iter14_reg <= lshr_ln_reg_2250_pp0_iter13_reg;
        lshr_ln_reg_2250_pp0_iter15_reg <= lshr_ln_reg_2250_pp0_iter14_reg;
        lshr_ln_reg_2250_pp0_iter1_reg <= lshr_ln_reg_2250;
        lshr_ln_reg_2250_pp0_iter2_reg <= lshr_ln_reg_2250_pp0_iter1_reg;
        lshr_ln_reg_2250_pp0_iter3_reg <= lshr_ln_reg_2250_pp0_iter2_reg;
        lshr_ln_reg_2250_pp0_iter4_reg <= lshr_ln_reg_2250_pp0_iter3_reg;
        lshr_ln_reg_2250_pp0_iter5_reg <= lshr_ln_reg_2250_pp0_iter4_reg;
        lshr_ln_reg_2250_pp0_iter6_reg <= lshr_ln_reg_2250_pp0_iter5_reg;
        lshr_ln_reg_2250_pp0_iter7_reg <= lshr_ln_reg_2250_pp0_iter6_reg;
        lshr_ln_reg_2250_pp0_iter8_reg <= lshr_ln_reg_2250_pp0_iter7_reg;
        lshr_ln_reg_2250_pp0_iter9_reg <= lshr_ln_reg_2250_pp0_iter8_reg;
        mul8_12_2_reg_3106_pp0_iter10_reg <= mul8_12_2_reg_3106_pp0_iter9_reg;
        mul8_12_2_reg_3106_pp0_iter11_reg <= mul8_12_2_reg_3106_pp0_iter10_reg;
        mul8_12_2_reg_3106_pp0_iter12_reg <= mul8_12_2_reg_3106_pp0_iter11_reg;
        mul8_12_2_reg_3106_pp0_iter13_reg <= mul8_12_2_reg_3106_pp0_iter12_reg;
        mul8_12_2_reg_3106_pp0_iter6_reg <= mul8_12_2_reg_3106;
        mul8_12_2_reg_3106_pp0_iter7_reg <= mul8_12_2_reg_3106_pp0_iter6_reg;
        mul8_12_2_reg_3106_pp0_iter8_reg <= mul8_12_2_reg_3106_pp0_iter7_reg;
        mul8_12_2_reg_3106_pp0_iter9_reg <= mul8_12_2_reg_3106_pp0_iter8_reg;
        mul8_13_2_reg_3111_pp0_iter10_reg <= mul8_13_2_reg_3111_pp0_iter9_reg;
        mul8_13_2_reg_3111_pp0_iter11_reg <= mul8_13_2_reg_3111_pp0_iter10_reg;
        mul8_13_2_reg_3111_pp0_iter12_reg <= mul8_13_2_reg_3111_pp0_iter11_reg;
        mul8_13_2_reg_3111_pp0_iter13_reg <= mul8_13_2_reg_3111_pp0_iter12_reg;
        mul8_13_2_reg_3111_pp0_iter6_reg <= mul8_13_2_reg_3111;
        mul8_13_2_reg_3111_pp0_iter7_reg <= mul8_13_2_reg_3111_pp0_iter6_reg;
        mul8_13_2_reg_3111_pp0_iter8_reg <= mul8_13_2_reg_3111_pp0_iter7_reg;
        mul8_13_2_reg_3111_pp0_iter9_reg <= mul8_13_2_reg_3111_pp0_iter8_reg;
        mul8_14_2_reg_3116_pp0_iter10_reg <= mul8_14_2_reg_3116_pp0_iter9_reg;
        mul8_14_2_reg_3116_pp0_iter11_reg <= mul8_14_2_reg_3116_pp0_iter10_reg;
        mul8_14_2_reg_3116_pp0_iter12_reg <= mul8_14_2_reg_3116_pp0_iter11_reg;
        mul8_14_2_reg_3116_pp0_iter13_reg <= mul8_14_2_reg_3116_pp0_iter12_reg;
        mul8_14_2_reg_3116_pp0_iter6_reg <= mul8_14_2_reg_3116;
        mul8_14_2_reg_3116_pp0_iter7_reg <= mul8_14_2_reg_3116_pp0_iter6_reg;
        mul8_14_2_reg_3116_pp0_iter8_reg <= mul8_14_2_reg_3116_pp0_iter7_reg;
        mul8_14_2_reg_3116_pp0_iter9_reg <= mul8_14_2_reg_3116_pp0_iter8_reg;
        mul8_15_2_reg_3121_pp0_iter10_reg <= mul8_15_2_reg_3121_pp0_iter9_reg;
        mul8_15_2_reg_3121_pp0_iter11_reg <= mul8_15_2_reg_3121_pp0_iter10_reg;
        mul8_15_2_reg_3121_pp0_iter12_reg <= mul8_15_2_reg_3121_pp0_iter11_reg;
        mul8_15_2_reg_3121_pp0_iter13_reg <= mul8_15_2_reg_3121_pp0_iter12_reg;
        mul8_15_2_reg_3121_pp0_iter6_reg <= mul8_15_2_reg_3121;
        mul8_15_2_reg_3121_pp0_iter7_reg <= mul8_15_2_reg_3121_pp0_iter6_reg;
        mul8_15_2_reg_3121_pp0_iter8_reg <= mul8_15_2_reg_3121_pp0_iter7_reg;
        mul8_15_2_reg_3121_pp0_iter9_reg <= mul8_15_2_reg_3121_pp0_iter8_reg;
        mul8_1_1_reg_2906_pp0_iter5_reg <= mul8_1_1_reg_2906;
        mul8_1_1_reg_2906_pp0_iter6_reg <= mul8_1_1_reg_2906_pp0_iter5_reg;
        mul8_1_1_reg_2906_pp0_iter7_reg <= mul8_1_1_reg_2906_pp0_iter6_reg;
        mul8_1_1_reg_2906_pp0_iter8_reg <= mul8_1_1_reg_2906_pp0_iter7_reg;
        mul8_1_2_reg_2911_pp0_iter10_reg <= mul8_1_2_reg_2911_pp0_iter9_reg;
        mul8_1_2_reg_2911_pp0_iter11_reg <= mul8_1_2_reg_2911_pp0_iter10_reg;
        mul8_1_2_reg_2911_pp0_iter12_reg <= mul8_1_2_reg_2911_pp0_iter11_reg;
        mul8_1_2_reg_2911_pp0_iter5_reg <= mul8_1_2_reg_2911;
        mul8_1_2_reg_2911_pp0_iter6_reg <= mul8_1_2_reg_2911_pp0_iter5_reg;
        mul8_1_2_reg_2911_pp0_iter7_reg <= mul8_1_2_reg_2911_pp0_iter6_reg;
        mul8_1_2_reg_2911_pp0_iter8_reg <= mul8_1_2_reg_2911_pp0_iter7_reg;
        mul8_1_2_reg_2911_pp0_iter9_reg <= mul8_1_2_reg_2911_pp0_iter8_reg;
        mul8_27_reg_2896_pp0_iter10_reg <= mul8_27_reg_2896_pp0_iter9_reg;
        mul8_27_reg_2896_pp0_iter11_reg <= mul8_27_reg_2896_pp0_iter10_reg;
        mul8_27_reg_2896_pp0_iter12_reg <= mul8_27_reg_2896_pp0_iter11_reg;
        mul8_27_reg_2896_pp0_iter5_reg <= mul8_27_reg_2896;
        mul8_27_reg_2896_pp0_iter6_reg <= mul8_27_reg_2896_pp0_iter5_reg;
        mul8_27_reg_2896_pp0_iter7_reg <= mul8_27_reg_2896_pp0_iter6_reg;
        mul8_27_reg_2896_pp0_iter8_reg <= mul8_27_reg_2896_pp0_iter7_reg;
        mul8_27_reg_2896_pp0_iter9_reg <= mul8_27_reg_2896_pp0_iter8_reg;
        mul8_2_2_reg_3076_pp0_iter10_reg <= mul8_2_2_reg_3076_pp0_iter9_reg;
        mul8_2_2_reg_3076_pp0_iter11_reg <= mul8_2_2_reg_3076_pp0_iter10_reg;
        mul8_2_2_reg_3076_pp0_iter12_reg <= mul8_2_2_reg_3076_pp0_iter11_reg;
        mul8_2_2_reg_3076_pp0_iter13_reg <= mul8_2_2_reg_3076_pp0_iter12_reg;
        mul8_2_2_reg_3076_pp0_iter6_reg <= mul8_2_2_reg_3076;
        mul8_2_2_reg_3076_pp0_iter7_reg <= mul8_2_2_reg_3076_pp0_iter6_reg;
        mul8_2_2_reg_3076_pp0_iter8_reg <= mul8_2_2_reg_3076_pp0_iter7_reg;
        mul8_2_2_reg_3076_pp0_iter9_reg <= mul8_2_2_reg_3076_pp0_iter8_reg;
        mul8_3_2_reg_3081_pp0_iter10_reg <= mul8_3_2_reg_3081_pp0_iter9_reg;
        mul8_3_2_reg_3081_pp0_iter11_reg <= mul8_3_2_reg_3081_pp0_iter10_reg;
        mul8_3_2_reg_3081_pp0_iter12_reg <= mul8_3_2_reg_3081_pp0_iter11_reg;
        mul8_3_2_reg_3081_pp0_iter13_reg <= mul8_3_2_reg_3081_pp0_iter12_reg;
        mul8_3_2_reg_3081_pp0_iter6_reg <= mul8_3_2_reg_3081;
        mul8_3_2_reg_3081_pp0_iter7_reg <= mul8_3_2_reg_3081_pp0_iter6_reg;
        mul8_3_2_reg_3081_pp0_iter8_reg <= mul8_3_2_reg_3081_pp0_iter7_reg;
        mul8_3_2_reg_3081_pp0_iter9_reg <= mul8_3_2_reg_3081_pp0_iter8_reg;
        mul8_4_2_reg_3086_pp0_iter10_reg <= mul8_4_2_reg_3086_pp0_iter9_reg;
        mul8_4_2_reg_3086_pp0_iter11_reg <= mul8_4_2_reg_3086_pp0_iter10_reg;
        mul8_4_2_reg_3086_pp0_iter12_reg <= mul8_4_2_reg_3086_pp0_iter11_reg;
        mul8_4_2_reg_3086_pp0_iter13_reg <= mul8_4_2_reg_3086_pp0_iter12_reg;
        mul8_4_2_reg_3086_pp0_iter6_reg <= mul8_4_2_reg_3086;
        mul8_4_2_reg_3086_pp0_iter7_reg <= mul8_4_2_reg_3086_pp0_iter6_reg;
        mul8_4_2_reg_3086_pp0_iter8_reg <= mul8_4_2_reg_3086_pp0_iter7_reg;
        mul8_4_2_reg_3086_pp0_iter9_reg <= mul8_4_2_reg_3086_pp0_iter8_reg;
        mul8_7_2_reg_3091_pp0_iter10_reg <= mul8_7_2_reg_3091_pp0_iter9_reg;
        mul8_7_2_reg_3091_pp0_iter11_reg <= mul8_7_2_reg_3091_pp0_iter10_reg;
        mul8_7_2_reg_3091_pp0_iter12_reg <= mul8_7_2_reg_3091_pp0_iter11_reg;
        mul8_7_2_reg_3091_pp0_iter13_reg <= mul8_7_2_reg_3091_pp0_iter12_reg;
        mul8_7_2_reg_3091_pp0_iter6_reg <= mul8_7_2_reg_3091;
        mul8_7_2_reg_3091_pp0_iter7_reg <= mul8_7_2_reg_3091_pp0_iter6_reg;
        mul8_7_2_reg_3091_pp0_iter8_reg <= mul8_7_2_reg_3091_pp0_iter7_reg;
        mul8_7_2_reg_3091_pp0_iter9_reg <= mul8_7_2_reg_3091_pp0_iter8_reg;
        mul8_8_2_reg_3096_pp0_iter10_reg <= mul8_8_2_reg_3096_pp0_iter9_reg;
        mul8_8_2_reg_3096_pp0_iter11_reg <= mul8_8_2_reg_3096_pp0_iter10_reg;
        mul8_8_2_reg_3096_pp0_iter12_reg <= mul8_8_2_reg_3096_pp0_iter11_reg;
        mul8_8_2_reg_3096_pp0_iter13_reg <= mul8_8_2_reg_3096_pp0_iter12_reg;
        mul8_8_2_reg_3096_pp0_iter6_reg <= mul8_8_2_reg_3096;
        mul8_8_2_reg_3096_pp0_iter7_reg <= mul8_8_2_reg_3096_pp0_iter6_reg;
        mul8_8_2_reg_3096_pp0_iter8_reg <= mul8_8_2_reg_3096_pp0_iter7_reg;
        mul8_8_2_reg_3096_pp0_iter9_reg <= mul8_8_2_reg_3096_pp0_iter8_reg;
        mul8_9_2_reg_3101_pp0_iter10_reg <= mul8_9_2_reg_3101_pp0_iter9_reg;
        mul8_9_2_reg_3101_pp0_iter11_reg <= mul8_9_2_reg_3101_pp0_iter10_reg;
        mul8_9_2_reg_3101_pp0_iter12_reg <= mul8_9_2_reg_3101_pp0_iter11_reg;
        mul8_9_2_reg_3101_pp0_iter13_reg <= mul8_9_2_reg_3101_pp0_iter12_reg;
        mul8_9_2_reg_3101_pp0_iter6_reg <= mul8_9_2_reg_3101;
        mul8_9_2_reg_3101_pp0_iter7_reg <= mul8_9_2_reg_3101_pp0_iter6_reg;
        mul8_9_2_reg_3101_pp0_iter8_reg <= mul8_9_2_reg_3101_pp0_iter7_reg;
        mul8_9_2_reg_3101_pp0_iter9_reg <= mul8_9_2_reg_3101_pp0_iter8_reg;
        mul8_s_reg_2891_pp0_iter5_reg <= mul8_s_reg_2891;
        mul8_s_reg_2891_pp0_iter6_reg <= mul8_s_reg_2891_pp0_iter5_reg;
        mul8_s_reg_2891_pp0_iter7_reg <= mul8_s_reg_2891_pp0_iter6_reg;
        mul8_s_reg_2891_pp0_iter8_reg <= mul8_s_reg_2891_pp0_iter7_reg;
        tmp_reg_2246 <= ap_sig_allocacmp_i_11[32'd6];
        zext_ln81_reg_3286[1 : 0] <= zext_ln81_fu_2173_p1[1 : 0];
        zext_ln81_reg_3286_pp0_iter17_reg[1 : 0] <= zext_ln81_reg_3286[1 : 0];
        zext_ln81_reg_3286_pp0_iter18_reg[1 : 0] <= zext_ln81_reg_3286_pp0_iter17_reg[1 : 0];
        zext_ln81_reg_3286_pp0_iter19_reg[1 : 0] <= zext_ln81_reg_3286_pp0_iter18_reg[1 : 0];
        zext_ln81_reg_3286_pp0_iter20_reg[1 : 0] <= zext_ln81_reg_3286_pp0_iter19_reg[1 : 0];
        zext_ln81_reg_3286_pp0_iter21_reg[1 : 0] <= zext_ln81_reg_3286_pp0_iter20_reg[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul16_10_reg_3615 <= grp_fu_1380_p2;
        mul16_11_reg_3620 <= grp_fu_1384_p2;
        mul16_12_reg_3625 <= grp_fu_1388_p2;
        mul16_13_reg_3630 <= grp_fu_1392_p2;
        mul16_14_reg_3635 <= grp_fu_1396_p2;
        mul16_2_reg_3570 <= grp_fu_1344_p2;
        mul16_3_reg_3575 <= grp_fu_1348_p2;
        mul16_4_reg_3580 <= grp_fu_1352_p2;
        mul16_5_reg_3585 <= grp_fu_1356_p2;
        mul16_6_reg_3590 <= grp_fu_1360_p2;
        mul16_7_reg_3595 <= grp_fu_1364_p2;
        mul16_8_reg_3600 <= grp_fu_1368_p2;
        mul16_9_reg_3605 <= grp_fu_1372_p2;
        mul16_s_reg_3610 <= grp_fu_1376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul16_1_reg_3565 <= grp_fu_1340_p2;
        mul_reg_3560 <= grp_fu_1336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_10_1_reg_3011 <= grp_fu_1348_p2;
        mul8_10_2_reg_3016 <= grp_fu_1352_p2;
        mul8_10_reg_3006 <= grp_fu_1344_p2;
        mul8_11_1_reg_3026 <= grp_fu_1360_p2;
        mul8_11_2_reg_3031 <= grp_fu_1364_p2;
        mul8_11_reg_3021 <= grp_fu_1356_p2;
        mul8_12_1_reg_3041 <= grp_fu_1372_p2;
        mul8_12_reg_3036 <= grp_fu_1368_p2;
        mul8_13_1_reg_3051 <= grp_fu_1380_p2;
        mul8_13_reg_3046 <= grp_fu_1376_p2;
        mul8_14_1_reg_3061 <= grp_fu_1388_p2;
        mul8_14_reg_3056 <= grp_fu_1384_p2;
        mul8_15_1_reg_3071 <= grp_fu_1396_p2;
        mul8_15_reg_3066 <= grp_fu_1392_p2;
        mul8_2_1_reg_2921 <= grp_fu_4760_p_dout0;
        mul8_2_reg_2916 <= grp_fu_4756_p_dout0;
        mul8_3_1_reg_2931 <= grp_fu_4768_p_dout0;
        mul8_3_reg_2926 <= grp_fu_4764_p_dout0;
        mul8_4_1_reg_2941 <= grp_fu_4776_p_dout0;
        mul8_4_reg_2936 <= grp_fu_4772_p_dout0;
        mul8_5_1_reg_2951 <= grp_fu_1300_p2;
        mul8_5_2_reg_2956 <= grp_fu_1304_p2;
        mul8_5_reg_2946 <= grp_fu_1296_p2;
        mul8_6_1_reg_2966 <= grp_fu_1312_p2;
        mul8_6_2_reg_2971 <= grp_fu_1316_p2;
        mul8_6_reg_2961 <= grp_fu_1308_p2;
        mul8_7_1_reg_2981 <= grp_fu_1324_p2;
        mul8_7_reg_2976 <= grp_fu_1320_p2;
        mul8_8_1_reg_2991 <= grp_fu_1332_p2;
        mul8_8_reg_2986 <= grp_fu_1328_p2;
        mul8_9_1_reg_3001 <= grp_fu_1340_p2;
        mul8_9_reg_2996 <= grp_fu_1336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_12_2_reg_3106 <= grp_fu_1320_p2;
        mul8_13_2_reg_3111 <= grp_fu_1324_p2;
        mul8_14_2_reg_3116 <= grp_fu_1328_p2;
        mul8_15_2_reg_3121 <= grp_fu_1332_p2;
        mul8_2_2_reg_3076 <= grp_fu_1296_p2;
        mul8_3_2_reg_3081 <= grp_fu_1300_p2;
        mul8_4_2_reg_3086 <= grp_fu_1304_p2;
        mul8_7_2_reg_3091 <= grp_fu_1308_p2;
        mul8_8_2_reg_3096 <= grp_fu_1312_p2;
        mul8_9_2_reg_3101 <= grp_fu_1316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_1_reg_2906 <= grp_fu_4772_p_dout0;
        mul8_1_2_reg_2911 <= grp_fu_4776_p_dout0;
        mul8_1_reg_2901 <= grp_fu_4768_p_dout0;
        mul8_27_reg_2896 <= grp_fu_4764_p_dout0;
        mul8_reg_2886 <= grp_fu_4756_p_dout0;
        mul8_s_reg_2891 <= grp_fu_4760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_load_6_reg_2596 <= weights3_0_q0;
        weights3_10_load_6_reg_2646 <= weights3_10_q0;
        weights3_11_load_6_reg_2651 <= weights3_11_q0;
        weights3_12_load_5_reg_2581 <= weights3_12_q0;
        weights3_13_load_6_reg_2661 <= weights3_13_q0;
        weights3_14_load_6_reg_2666 <= weights3_14_q0;
        weights3_15_load_5_reg_2591 <= weights3_15_q0;
        weights3_1_load_6_reg_2601 <= weights3_1_q0;
        weights3_2_load_6_reg_2606 <= weights3_2_q0;
        weights3_3_load_6_reg_2611 <= weights3_3_q0;
        weights3_4_load_6_reg_2616 <= weights3_4_q0;
        weights3_5_load_6_reg_2621 <= weights3_5_q0;
        weights3_6_load_5_reg_2561 <= weights3_6_q0;
        weights3_7_load_6_reg_2631 <= weights3_7_q0;
        weights3_8_load_6_reg_2636 <= weights3_8_q0;
        weights3_9_load_5_reg_2571 <= weights3_9_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_2246 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to21 = 1'b1;
    end else begin
        ap_idle_pp0_1to21 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_10_ce0_local = 1'b1;
    end else begin
        dactivations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_11_ce0_local = 1'b1;
    end else begin
        dactivations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_12_ce0_local = 1'b1;
    end else begin
        dactivations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_13_ce0_local = 1'b1;
    end else begin
        dactivations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_14_ce0_local = 1'b1;
    end else begin
        dactivations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_15_ce0_local = 1'b1;
    end else begin
        dactivations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_8_ce0_local = 1'b1;
    end else begin
        dactivations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_9_ce0_local = 1'b1;
    end else begin
        dactivations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1162_p0 = mul8_2_reg_2916;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1162_p0 = mul8_reg_2886;
    end else begin
        grp_fu_1162_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1167_p0 = mul8_3_reg_2926;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1167_p0 = mul8_1_reg_2901;
    end else begin
        grp_fu_1167_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1172_p0 = add_reg_3126;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1172_p0 = mul8_4_reg_2936;
    end else begin
        grp_fu_1172_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1172_p1 = mul8_s_reg_2891_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1172_p1 = 64'd0;
    end else begin
        grp_fu_1172_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1177_p0 = add11_1_reg_3131;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1177_p0 = mul8_5_reg_2946;
    end else begin
        grp_fu_1177_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1177_p1 = mul8_1_1_reg_2906_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1177_p1 = 64'd0;
    end else begin
        grp_fu_1177_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1182_p0 = add11_12_reg_3186;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1182_p0 = mul8_6_reg_2961;
    end else begin
        grp_fu_1182_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1182_p1 = mul8_12_1_reg_3041_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1182_p1 = 64'd0;
    end else begin
        grp_fu_1182_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1187_p0 = add11_13_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1187_p0 = mul8_7_reg_2976;
    end else begin
        grp_fu_1187_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1187_p1 = mul8_13_1_reg_3051_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1187_p1 = 64'd0;
    end else begin
        grp_fu_1187_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1192_p0 = add11_14_reg_3196;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1192_p0 = mul8_8_reg_2986;
    end else begin
        grp_fu_1192_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1192_p1 = mul8_14_1_reg_3061_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1192_p1 = 64'd0;
    end else begin
        grp_fu_1192_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1197_p0 = add11_15_reg_3201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1197_p0 = mul8_9_reg_2996;
    end else begin
        grp_fu_1197_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1197_p1 = mul8_15_1_reg_3071_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1197_p1 = 64'd0;
    end else begin
        grp_fu_1197_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p0 = add11_s_reg_3206;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p0 = mul8_10_reg_3006;
    end else begin
        grp_fu_1202_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p1 = mul8_27_reg_2896_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p1 = 64'd0;
    end else begin
        grp_fu_1202_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1207_p0 = add11_1_1_reg_3211;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1207_p0 = mul8_11_reg_3021;
    end else begin
        grp_fu_1207_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1207_p1 = mul8_1_2_reg_2911_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1207_p1 = 64'd0;
    end else begin
        grp_fu_1207_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1212_p0 = add11_2_1_reg_3216;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1212_p0 = mul8_12_reg_3036;
    end else begin
        grp_fu_1212_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1212_p1 = mul8_2_2_reg_3076_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1212_p1 = 64'd0;
    end else begin
        grp_fu_1212_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1217_p0 = add11_3_1_reg_3221;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1217_p0 = mul8_13_reg_3046;
    end else begin
        grp_fu_1217_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1217_p1 = mul8_3_2_reg_3081_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1217_p1 = 64'd0;
    end else begin
        grp_fu_1217_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1222_p0 = add11_4_1_reg_3226;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1222_p0 = mul8_14_reg_3056;
    end else begin
        grp_fu_1222_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1222_p1 = mul8_4_2_reg_3086_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1222_p1 = 64'd0;
    end else begin
        grp_fu_1222_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1227_p0 = add11_5_1_reg_3231;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1227_p0 = mul8_15_reg_3066;
    end else begin
        grp_fu_1227_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1227_p1 = mul8_5_2_reg_2956_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1227_p1 = 64'd0;
    end else begin
        grp_fu_1227_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1232_p0 = add11_6_1_reg_3236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1232_p0 = add11_2_reg_3136;
    end else begin
        grp_fu_1232_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1232_p1 = mul8_6_2_reg_2971_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1232_p1 = mul8_2_1_reg_2921_pp0_iter8_reg;
    end else begin
        grp_fu_1232_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1236_p0 = add11_7_1_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1236_p0 = add11_3_reg_3141;
    end else begin
        grp_fu_1236_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1236_p1 = mul8_7_2_reg_3091_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1236_p1 = mul8_3_1_reg_2931_pp0_iter8_reg;
    end else begin
        grp_fu_1236_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1240_p0 = add11_8_1_reg_3246;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1240_p0 = add11_4_reg_3146;
    end else begin
        grp_fu_1240_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1240_p1 = mul8_8_2_reg_3096_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1240_p1 = mul8_4_1_reg_2941_pp0_iter8_reg;
    end else begin
        grp_fu_1240_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1244_p0 = add11_9_1_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1244_p0 = add11_5_reg_3151;
    end else begin
        grp_fu_1244_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1244_p1 = mul8_9_2_reg_3101_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1244_p1 = mul8_5_1_reg_2951_pp0_iter8_reg;
    end else begin
        grp_fu_1244_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1248_p0 = add11_10_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1248_p0 = add11_6_reg_3156;
    end else begin
        grp_fu_1248_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1248_p1 = mul8_10_2_reg_3016_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1248_p1 = mul8_6_1_reg_2966_pp0_iter8_reg;
    end else begin
        grp_fu_1248_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1252_p0 = add11_11_1_reg_3261;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1252_p0 = add11_7_reg_3161;
    end else begin
        grp_fu_1252_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1252_p1 = mul8_11_2_reg_3031_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1252_p1 = mul8_7_1_reg_2981_pp0_iter8_reg;
    end else begin
        grp_fu_1252_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1256_p0 = add11_12_1_reg_3266;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1256_p0 = add11_8_reg_3166;
    end else begin
        grp_fu_1256_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1256_p1 = mul8_12_2_reg_3106_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1256_p1 = mul8_8_1_reg_2991_pp0_iter8_reg;
    end else begin
        grp_fu_1256_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1260_p0 = add11_13_1_reg_3271;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1260_p0 = add11_9_reg_3171;
    end else begin
        grp_fu_1260_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1260_p1 = mul8_13_2_reg_3111_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1260_p1 = mul8_9_1_reg_3001_pp0_iter8_reg;
    end else begin
        grp_fu_1260_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1264_p0 = add11_14_1_reg_3276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1264_p0 = add11_10_reg_3176;
    end else begin
        grp_fu_1264_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1264_p1 = mul8_14_2_reg_3116_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1264_p1 = mul8_10_1_reg_3011_pp0_iter8_reg;
    end else begin
        grp_fu_1264_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1268_p0 = add11_15_1_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1268_p0 = add11_11_reg_3181;
    end else begin
        grp_fu_1268_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1268_p1 = mul8_15_2_reg_3121_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1268_p1 = mul8_11_1_reg_3026_pp0_iter8_reg;
    end else begin
        grp_fu_1268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1272_p0 = bitcast_ln85_6_fu_1979_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1272_p0 = bitcast_ln85_fu_1949_p1;
        end else begin
            grp_fu_1272_p0 = 'bx;
        end
    end else begin
        grp_fu_1272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1276_p0 = bitcast_ln85_7_fu_1984_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1276_p0 = bitcast_ln85_1_fu_1954_p1;
        end else begin
            grp_fu_1276_p0 = 'bx;
        end
    end else begin
        grp_fu_1276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1280_p0 = bitcast_ln85_9_fu_1989_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1280_p0 = bitcast_ln85_2_fu_1959_p1;
        end else begin
            grp_fu_1280_p0 = 'bx;
        end
    end else begin
        grp_fu_1280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1280_p1 = output_differences_0_0_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1280_p1 = output_differences_0_2_val;
        end else begin
            grp_fu_1280_p1 = 'bx;
        end
    end else begin
        grp_fu_1280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1284_p0 = bitcast_ln85_10_fu_1994_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1284_p0 = bitcast_ln85_3_fu_1964_p1;
        end else begin
            grp_fu_1284_p0 = 'bx;
        end
    end else begin
        grp_fu_1284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1284_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1284_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1284_p1 = 'bx;
        end
    end else begin
        grp_fu_1284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1288_p0 = bitcast_ln85_12_fu_1999_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1288_p0 = bitcast_ln85_4_fu_1969_p1;
        end else begin
            grp_fu_1288_p0 = 'bx;
        end
    end else begin
        grp_fu_1288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1288_p1 = output_differences_0_0_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1288_p1 = output_differences_0_1_val;
        end else begin
            grp_fu_1288_p1 = 'bx;
        end
    end else begin
        grp_fu_1288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1292_p0 = bitcast_ln85_13_fu_2004_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1292_p0 = bitcast_ln85_5_fu_1974_p1;
        end else begin
            grp_fu_1292_p0 = 'bx;
        end
    end else begin
        grp_fu_1292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1292_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1292_p1 = output_differences_0_2_val;
        end else begin
            grp_fu_1292_p1 = 'bx;
        end
    end else begin
        grp_fu_1292_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1296_p0 = bitcast_ln85_8_fu_2123_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1296_p0 = bitcast_ln85_15_fu_2009_p1;
    end else begin
        grp_fu_1296_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1296_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1296_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1296_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1300_p0 = bitcast_ln85_11_fu_2128_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1300_p0 = bitcast_ln85_16_fu_2014_p1;
    end else begin
        grp_fu_1300_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1300_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1300_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1300_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1304_p0 = bitcast_ln85_14_fu_2133_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1304_p0 = bitcast_ln85_17_fu_2019_p1;
    end else begin
        grp_fu_1304_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1308_p0 = bitcast_ln85_23_fu_2138_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1308_p0 = bitcast_ln85_18_fu_2024_p1;
    end else begin
        grp_fu_1308_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1308_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1308_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1308_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1312_p0 = bitcast_ln85_26_fu_2143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1312_p0 = bitcast_ln85_19_fu_2029_p1;
    end else begin
        grp_fu_1312_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1312_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1312_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1312_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1316_p0 = bitcast_ln85_29_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1316_p0 = bitcast_ln85_20_fu_2034_p1;
    end else begin
        grp_fu_1316_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1320_p0 = bitcast_ln85_38_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1320_p0 = bitcast_ln85_21_fu_2039_p1;
    end else begin
        grp_fu_1320_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1320_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1320_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1320_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1324_p0 = bitcast_ln85_41_fu_2158_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1324_p0 = bitcast_ln85_22_fu_2044_p1;
    end else begin
        grp_fu_1324_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1324_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1324_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1324_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1328_p0 = bitcast_ln85_44_fu_2163_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1328_p0 = bitcast_ln85_24_fu_2048_p1;
    end else begin
        grp_fu_1328_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1328_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1328_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1328_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1332_p0 = bitcast_ln85_47_fu_2168_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1332_p0 = bitcast_ln85_25_fu_2053_p1;
    end else begin
        grp_fu_1332_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1332_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1332_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1332_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1336_p0 = add11_27_reg_3320;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1336_p0 = bitcast_ln85_27_fu_2057_p1;
    end else begin
        grp_fu_1336_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1336_p1 = dactivations_0_load_reg_3340;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1336_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1340_p0 = add11_1_2_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1340_p0 = bitcast_ln85_28_fu_2062_p1;
    end else begin
        grp_fu_1340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1340_p1 = dactivations_1_load_reg_3345;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1340_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1344_p0 = add11_2_2_reg_3415;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1344_p0 = bitcast_ln85_30_fu_2066_p1;
    end else begin
        grp_fu_1344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1344_p1 = dactivations_2_load_reg_3490;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1344_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1344_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1348_p0 = add11_3_2_reg_3420;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1348_p0 = bitcast_ln85_31_fu_2071_p1;
    end else begin
        grp_fu_1348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1348_p1 = dactivations_3_load_reg_3495;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1348_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1352_p0 = add11_4_2_reg_3425;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1352_p0 = bitcast_ln85_32_fu_2075_p1;
    end else begin
        grp_fu_1352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1352_p1 = dactivations_4_load_reg_3500;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1352_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1352_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1356_p0 = add11_5_2_reg_3430;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1356_p0 = bitcast_ln85_33_fu_2079_p1;
    end else begin
        grp_fu_1356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1356_p1 = dactivations_5_load_reg_3505;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1356_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1356_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1360_p0 = add11_6_2_reg_3435;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1360_p0 = bitcast_ln85_34_fu_2083_p1;
    end else begin
        grp_fu_1360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1360_p1 = dactivations_6_load_reg_3510;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1360_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1360_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1364_p0 = add11_7_2_reg_3440;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1364_p0 = bitcast_ln85_35_fu_2087_p1;
    end else begin
        grp_fu_1364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1364_p1 = dactivations_7_load_reg_3515;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1364_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1364_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1368_p0 = add11_8_2_reg_3445;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1368_p0 = bitcast_ln85_36_fu_2091_p1;
    end else begin
        grp_fu_1368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1368_p1 = dactivations_8_load_reg_3520;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1368_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1372_p0 = add11_9_2_reg_3450;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1372_p0 = bitcast_ln85_37_fu_2095_p1;
    end else begin
        grp_fu_1372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1372_p1 = dactivations_9_load_reg_3525;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1372_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1372_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1376_p0 = add11_10_2_reg_3455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1376_p0 = bitcast_ln85_39_fu_2099_p1;
    end else begin
        grp_fu_1376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1376_p1 = dactivations_10_load_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1376_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1376_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1380_p0 = add11_11_2_reg_3460;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1380_p0 = bitcast_ln85_40_fu_2103_p1;
    end else begin
        grp_fu_1380_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1380_p1 = dactivations_11_load_reg_3535;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1380_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1380_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1384_p0 = add11_12_2_reg_3465;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1384_p0 = bitcast_ln85_42_fu_2107_p1;
    end else begin
        grp_fu_1384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1384_p1 = dactivations_12_load_reg_3540;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1384_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1384_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1388_p0 = add11_13_2_reg_3470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1388_p0 = bitcast_ln85_43_fu_2111_p1;
    end else begin
        grp_fu_1388_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1388_p1 = dactivations_13_load_reg_3545;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1388_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1388_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1392_p0 = add11_14_2_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1392_p0 = bitcast_ln85_45_fu_2115_p1;
    end else begin
        grp_fu_1392_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1392_p1 = dactivations_14_load_reg_3550;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1392_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1392_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1396_p0 = add11_15_2_reg_3480;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1396_p0 = bitcast_ln85_46_fu_2119_p1;
    end else begin
        grp_fu_1396_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1396_p1 = dactivations_15_load_reg_3555;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1396_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1396_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_10_ce0_local = 1'b1;
    end else begin
        oracle_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_10_we0_local = 1'b1;
    end else begin
        oracle_activations_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_11_ce0_local = 1'b1;
    end else begin
        oracle_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_11_we0_local = 1'b1;
    end else begin
        oracle_activations_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_12_ce0_local = 1'b1;
    end else begin
        oracle_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_12_we0_local = 1'b1;
    end else begin
        oracle_activations_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_13_ce0_local = 1'b1;
    end else begin
        oracle_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_13_we0_local = 1'b1;
    end else begin
        oracle_activations_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_14_ce0_local = 1'b1;
    end else begin
        oracle_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_14_we0_local = 1'b1;
    end else begin
        oracle_activations_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_15_ce0_local = 1'b1;
    end else begin
        oracle_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_15_we0_local = 1'b1;
    end else begin
        oracle_activations_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_8_ce0_local = 1'b1;
    end else begin
        oracle_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_8_we0_local = 1'b1;
    end else begin
        oracle_activations_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_9_ce0_local = 1'b1;
    end else begin
        oracle_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_9_we0_local = 1'b1;
    end else begin
        oracle_activations_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln87_9_fu_1828_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_fu_1524_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_10_address0_local = zext_ln87_7_reg_2326;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_10_address0_local = zext_ln87_13_fu_1912_p1;
    end else begin
        weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_10_ce1_local = 1'b1;
    end else begin
        weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_11_address0_local = zext_ln87_2_reg_2311;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_11_address0_local = zext_ln87_13_fu_1912_p1;
    end else begin
        weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_11_ce1_local = 1'b1;
    end else begin
        weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_12_address0_local = zext_ln87_13_reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_12_address0_local = zext_ln87_8_fu_1786_p1;
    end else begin
        weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_12_ce1_local = 1'b1;
    end else begin
        weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_13_address0_local = zext_ln87_8_reg_2331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_13_address0_local = zext_ln85_4_fu_1933_p1;
    end else begin
        weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_13_ce1_local = 1'b1;
    end else begin
        weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_14_address0_local = zext_ln87_3_reg_2316;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_14_address0_local = zext_ln85_4_fu_1933_p1;
    end else begin
        weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_14_ce1_local = 1'b1;
    end else begin
        weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_15_address0_local = zext_ln85_4_reg_2351;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_15_address0_local = zext_ln85_3_fu_1807_p1;
    end else begin
        weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_15_ce1_local = 1'b1;
    end else begin
        weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln87_10_fu_1848_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_fu_1524_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln87_10_fu_1848_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln85_fu_1524_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln87_10_fu_1848_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln87_fu_1577_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln87_11_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln87_fu_1577_p1;
        end else begin
            weights3_4_address0_local = 'bx;
        end
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln87_11_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln87_fu_1577_p1;
        end else begin
            weights3_5_address0_local = 'bx;
        end
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address0_local = zext_ln87_11_reg_2336;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = zext_ln87_6_fu_1744_p1;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address0_local = zext_ln87_6_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln87_12_fu_1891_p1;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_8_address0_local = zext_ln87_1_reg_2306;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_8_address0_local = zext_ln87_12_fu_1891_p1;
    end else begin
        weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_8_ce1_local = 1'b1;
    end else begin
        weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_9_address0_local = zext_ln87_12_reg_2341;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_9_address0_local = zext_ln87_7_fu_1765_p1;
    end else begin
        weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_9_ce1_local = 1'b1;
    end else begin
        weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to21 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_1939_p2 = (i_11_reg_2241 + 7'd16);
assign add_ln85_1_fu_1687_p2 = (empty_reg_2270 + 8'd14);
assign add_ln85_2_fu_1813_p2 = (empty_reg_2270 + 8'd29);
assign add_ln85_fu_1667_p2 = (empty_reg_2270 + 8'd13);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_1994_p1 = reg_1445;
assign bitcast_ln85_11_fu_2128_p1 = reg_1470;
assign bitcast_ln85_12_fu_1999_p1 = reg_1450;
assign bitcast_ln85_13_fu_2004_p1 = reg_1455;
assign bitcast_ln85_14_fu_2133_p1 = reg_1475;
assign bitcast_ln85_15_fu_2009_p1 = reg_1460;
assign bitcast_ln85_16_fu_2014_p1 = reg_1400;
assign bitcast_ln85_17_fu_2019_p1 = reg_1405;
assign bitcast_ln85_18_fu_2024_p1 = reg_1410;
assign bitcast_ln85_19_fu_2029_p1 = reg_1415;
assign bitcast_ln85_1_fu_1954_p1 = reg_1405;
assign bitcast_ln85_20_fu_2034_p1 = reg_1420;
assign bitcast_ln85_21_fu_2039_p1 = reg_1425;
assign bitcast_ln85_22_fu_2044_p1 = weights3_6_load_5_reg_2561;
assign bitcast_ln85_23_fu_2138_p1 = reg_1435;
assign bitcast_ln85_24_fu_2048_p1 = reg_1465;
assign bitcast_ln85_25_fu_2053_p1 = weights3_9_load_5_reg_2571;
assign bitcast_ln85_26_fu_2143_p1 = reg_1445;
assign bitcast_ln85_27_fu_2057_p1 = reg_1470;
assign bitcast_ln85_28_fu_2062_p1 = weights3_12_load_5_reg_2581;
assign bitcast_ln85_29_fu_2148_p1 = reg_1455;
assign bitcast_ln85_2_fu_1959_p1 = reg_1410;
assign bitcast_ln85_30_fu_2066_p1 = reg_1475;
assign bitcast_ln85_31_fu_2071_p1 = weights3_15_load_5_reg_2591;
assign bitcast_ln85_32_fu_2075_p1 = weights3_0_load_6_reg_2596;
assign bitcast_ln85_33_fu_2079_p1 = weights3_1_load_6_reg_2601;
assign bitcast_ln85_34_fu_2083_p1 = weights3_2_load_6_reg_2606;
assign bitcast_ln85_35_fu_2087_p1 = weights3_3_load_6_reg_2611;
assign bitcast_ln85_36_fu_2091_p1 = weights3_4_load_6_reg_2616;
assign bitcast_ln85_37_fu_2095_p1 = weights3_5_load_6_reg_2621;
assign bitcast_ln85_38_fu_2153_p1 = reg_1430;
assign bitcast_ln85_39_fu_2099_p1 = weights3_7_load_6_reg_2631;
assign bitcast_ln85_3_fu_1964_p1 = reg_1415;
assign bitcast_ln85_40_fu_2103_p1 = weights3_8_load_6_reg_2636;
assign bitcast_ln85_41_fu_2158_p1 = reg_1440;
assign bitcast_ln85_42_fu_2107_p1 = weights3_10_load_6_reg_2646;
assign bitcast_ln85_43_fu_2111_p1 = weights3_11_load_6_reg_2651;
assign bitcast_ln85_44_fu_2163_p1 = reg_1450;
assign bitcast_ln85_45_fu_2115_p1 = weights3_13_load_6_reg_2661;
assign bitcast_ln85_46_fu_2119_p1 = weights3_14_load_6_reg_2666;
assign bitcast_ln85_47_fu_2168_p1 = reg_1460;
assign bitcast_ln85_4_fu_1969_p1 = reg_1420;
assign bitcast_ln85_5_fu_1974_p1 = reg_1425;
assign bitcast_ln85_6_fu_1979_p1 = reg_1430;
assign bitcast_ln85_7_fu_1984_p1 = reg_1435;
assign bitcast_ln85_8_fu_2123_p1 = reg_1465;
assign bitcast_ln85_9_fu_1989_p1 = reg_1440;
assign bitcast_ln85_fu_1949_p1 = reg_1400;
assign dactivations_0_address0 = zext_ln81_fu_2173_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_10_address0 = zext_ln81_reg_3286;
assign dactivations_10_ce0 = dactivations_10_ce0_local;
assign dactivations_11_address0 = zext_ln81_reg_3286;
assign dactivations_11_ce0 = dactivations_11_ce0_local;
assign dactivations_12_address0 = zext_ln81_reg_3286;
assign dactivations_12_ce0 = dactivations_12_ce0_local;
assign dactivations_13_address0 = zext_ln81_reg_3286;
assign dactivations_13_ce0 = dactivations_13_ce0_local;
assign dactivations_14_address0 = zext_ln81_reg_3286;
assign dactivations_14_ce0 = dactivations_14_ce0_local;
assign dactivations_15_address0 = zext_ln81_reg_3286;
assign dactivations_15_ce0 = dactivations_15_ce0_local;
assign dactivations_1_address0 = zext_ln81_fu_2173_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_2_address0 = zext_ln81_reg_3286;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_3_address0 = zext_ln81_reg_3286;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = zext_ln81_reg_3286;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = zext_ln81_reg_3286;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = zext_ln81_reg_3286;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = zext_ln81_reg_3286;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign dactivations_8_address0 = zext_ln81_reg_3286;
assign dactivations_8_ce0 = dactivations_8_ce0_local;
assign dactivations_9_address0 = zext_ln81_reg_3286;
assign dactivations_9_ce0 = dactivations_9_ce0_local;
assign empty_269_fu_1584_p2 = (empty_reg_2270 + 8'd3);
assign empty_270_fu_1605_p2 = (empty_reg_2270 + 8'd6);
assign empty_271_fu_1626_p2 = (empty_reg_2270 + 8'd9);
assign empty_272_fu_1647_p2 = (empty_reg_2270 + 8'd12);
assign empty_273_fu_1707_p2 = (empty_reg_2270 + 8'd15);
assign empty_274_fu_1729_p2 = (empty_reg_2270 + 8'd18);
assign empty_275_fu_1750_p2 = (empty_reg_2270 + 8'd21);
assign empty_276_fu_1771_p2 = (empty_reg_2270 + 8'd24);
assign empty_277_fu_1792_p2 = (empty_reg_2270 + 8'd27);
assign empty_278_fu_1833_p2 = (empty_reg_2270 + 8'd30);
assign empty_279_fu_1855_p2 = (empty_reg_2270 + 8'd33);
assign empty_280_fu_1876_p2 = (empty_reg_2270 + 8'd36);
assign empty_281_fu_1897_p2 = (empty_reg_2270 + 8'd39);
assign empty_282_fu_1918_p2 = (empty_reg_2270 + 8'd42);
assign empty_fu_1561_p2 = (p_shl_fu_1553_p3 - zext_ln83_fu_1549_p1);
assign grp_fu_4564_p_ce = 1'b1;
assign grp_fu_4564_p_din0 = grp_fu_1162_p0;
assign grp_fu_4564_p_din1 = 64'd0;
assign grp_fu_4564_p_opcode = 2'd0;
assign grp_fu_4568_p_ce = 1'b1;
assign grp_fu_4568_p_din0 = grp_fu_1167_p0;
assign grp_fu_4568_p_din1 = 64'd0;
assign grp_fu_4568_p_opcode = 2'd0;
assign grp_fu_4572_p_ce = 1'b1;
assign grp_fu_4572_p_din0 = grp_fu_1172_p0;
assign grp_fu_4572_p_din1 = grp_fu_1172_p1;
assign grp_fu_4572_p_opcode = 2'd0;
assign grp_fu_4576_p_ce = 1'b1;
assign grp_fu_4576_p_din0 = grp_fu_1177_p0;
assign grp_fu_4576_p_din1 = grp_fu_1177_p1;
assign grp_fu_4576_p_opcode = 2'd0;
assign grp_fu_4580_p_ce = 1'b1;
assign grp_fu_4580_p_din0 = grp_fu_1182_p0;
assign grp_fu_4580_p_din1 = grp_fu_1182_p1;
assign grp_fu_4580_p_opcode = 2'd0;
assign grp_fu_4584_p_ce = 1'b1;
assign grp_fu_4584_p_din0 = grp_fu_1187_p0;
assign grp_fu_4584_p_din1 = grp_fu_1187_p1;
assign grp_fu_4584_p_opcode = 2'd0;
assign grp_fu_4588_p_ce = 1'b1;
assign grp_fu_4588_p_din0 = grp_fu_1192_p0;
assign grp_fu_4588_p_din1 = grp_fu_1192_p1;
assign grp_fu_4588_p_opcode = 2'd0;
assign grp_fu_4592_p_ce = 1'b1;
assign grp_fu_4592_p_din0 = grp_fu_1197_p0;
assign grp_fu_4592_p_din1 = grp_fu_1197_p1;
assign grp_fu_4592_p_opcode = 2'd0;
assign grp_fu_4596_p_ce = 1'b1;
assign grp_fu_4596_p_din0 = grp_fu_1202_p0;
assign grp_fu_4596_p_din1 = grp_fu_1202_p1;
assign grp_fu_4596_p_opcode = 2'd0;
assign grp_fu_4600_p_ce = 1'b1;
assign grp_fu_4600_p_din0 = grp_fu_1207_p0;
assign grp_fu_4600_p_din1 = grp_fu_1207_p1;
assign grp_fu_4600_p_opcode = 2'd0;
assign grp_fu_4604_p_ce = 1'b1;
assign grp_fu_4604_p_din0 = grp_fu_1212_p0;
assign grp_fu_4604_p_din1 = grp_fu_1212_p1;
assign grp_fu_4604_p_opcode = 2'd0;
assign grp_fu_4608_p_ce = 1'b1;
assign grp_fu_4608_p_din0 = grp_fu_1217_p0;
assign grp_fu_4608_p_din1 = grp_fu_1217_p1;
assign grp_fu_4608_p_opcode = 2'd0;
assign grp_fu_4612_p_ce = 1'b1;
assign grp_fu_4612_p_din0 = grp_fu_1222_p0;
assign grp_fu_4612_p_din1 = grp_fu_1222_p1;
assign grp_fu_4612_p_opcode = 2'd0;
assign grp_fu_4616_p_ce = 1'b1;
assign grp_fu_4616_p_din0 = grp_fu_1227_p0;
assign grp_fu_4616_p_din1 = grp_fu_1227_p1;
assign grp_fu_4616_p_opcode = 2'd0;
assign grp_fu_4620_p_ce = 1'b1;
assign grp_fu_4620_p_din0 = grp_fu_1232_p0;
assign grp_fu_4620_p_din1 = grp_fu_1232_p1;
assign grp_fu_4620_p_opcode = 2'd0;
assign grp_fu_4624_p_ce = 1'b1;
assign grp_fu_4624_p_din0 = grp_fu_1236_p0;
assign grp_fu_4624_p_din1 = grp_fu_1236_p1;
assign grp_fu_4624_p_opcode = 2'd0;
assign grp_fu_4628_p_ce = 1'b1;
assign grp_fu_4628_p_din0 = grp_fu_1240_p0;
assign grp_fu_4628_p_din1 = grp_fu_1240_p1;
assign grp_fu_4628_p_opcode = 2'd0;
assign grp_fu_4632_p_ce = 1'b1;
assign grp_fu_4632_p_din0 = grp_fu_1244_p0;
assign grp_fu_4632_p_din1 = grp_fu_1244_p1;
assign grp_fu_4632_p_opcode = 2'd0;
assign grp_fu_4636_p_ce = 1'b1;
assign grp_fu_4636_p_din0 = grp_fu_1248_p0;
assign grp_fu_4636_p_din1 = grp_fu_1248_p1;
assign grp_fu_4636_p_opcode = 2'd0;
assign grp_fu_4640_p_ce = 1'b1;
assign grp_fu_4640_p_din0 = grp_fu_1252_p0;
assign grp_fu_4640_p_din1 = grp_fu_1252_p1;
assign grp_fu_4640_p_opcode = 2'd0;
assign grp_fu_4644_p_ce = 1'b1;
assign grp_fu_4644_p_din0 = grp_fu_1256_p0;
assign grp_fu_4644_p_din1 = grp_fu_1256_p1;
assign grp_fu_4644_p_opcode = 2'd0;
assign grp_fu_4648_p_ce = 1'b1;
assign grp_fu_4648_p_din0 = grp_fu_1260_p0;
assign grp_fu_4648_p_din1 = grp_fu_1260_p1;
assign grp_fu_4648_p_opcode = 2'd0;
assign grp_fu_4652_p_ce = 1'b1;
assign grp_fu_4652_p_din0 = grp_fu_1264_p0;
assign grp_fu_4652_p_din1 = grp_fu_1264_p1;
assign grp_fu_4652_p_opcode = 2'd0;
assign grp_fu_4656_p_ce = 1'b1;
assign grp_fu_4656_p_din0 = grp_fu_1268_p0;
assign grp_fu_4656_p_din1 = grp_fu_1268_p1;
assign grp_fu_4656_p_opcode = 2'd0;
assign grp_fu_4756_p_ce = 1'b1;
assign grp_fu_4756_p_din0 = grp_fu_1272_p0;
assign grp_fu_4756_p_din1 = output_differences_0_0_val;
assign grp_fu_4760_p_ce = 1'b1;
assign grp_fu_4760_p_din0 = grp_fu_1276_p0;
assign grp_fu_4760_p_din1 = output_differences_0_1_val;
assign grp_fu_4764_p_ce = 1'b1;
assign grp_fu_4764_p_din0 = grp_fu_1280_p0;
assign grp_fu_4764_p_din1 = grp_fu_1280_p1;
assign grp_fu_4768_p_ce = 1'b1;
assign grp_fu_4768_p_din0 = grp_fu_1284_p0;
assign grp_fu_4768_p_din1 = grp_fu_1284_p1;
assign grp_fu_4772_p_ce = 1'b1;
assign grp_fu_4772_p_din0 = grp_fu_1288_p0;
assign grp_fu_4772_p_din1 = grp_fu_1288_p1;
assign grp_fu_4776_p_ce = 1'b1;
assign grp_fu_4776_p_din0 = grp_fu_1292_p0;
assign grp_fu_4776_p_din1 = grp_fu_1292_p1;
assign lshr_ln1_fu_1567_p4 = {{empty_fu_1561_p2[7:4]}};
assign lshr_ln85_10_fu_1797_p4 = {{empty_277_fu_1792_p2[7:4]}};
assign lshr_ln85_11_fu_1818_p4 = {{add_ln85_2_fu_1813_p2[7:4]}};
assign lshr_ln85_12_fu_1838_p4 = {{empty_278_fu_1833_p2[7:4]}};
assign lshr_ln85_13_fu_1860_p4 = {{empty_279_fu_1855_p2[7:4]}};
assign lshr_ln85_14_fu_1881_p4 = {{empty_280_fu_1876_p2[7:4]}};
assign lshr_ln85_15_fu_1902_p4 = {{empty_281_fu_1897_p2[7:4]}};
assign lshr_ln85_16_fu_1923_p4 = {{empty_282_fu_1918_p2[7:4]}};
assign lshr_ln85_1_fu_1589_p4 = {{empty_269_fu_1584_p2[7:4]}};
assign lshr_ln85_2_fu_1610_p4 = {{empty_270_fu_1605_p2[7:4]}};
assign lshr_ln85_3_fu_1631_p4 = {{empty_271_fu_1626_p2[7:4]}};
assign lshr_ln85_4_fu_1652_p4 = {{empty_272_fu_1647_p2[7:4]}};
assign lshr_ln85_5_fu_1672_p4 = {{add_ln85_fu_1667_p2[7:4]}};
assign lshr_ln85_6_fu_1692_p4 = {{add_ln85_1_fu_1687_p2[7:4]}};
assign lshr_ln85_7_fu_1712_p4 = {{empty_273_fu_1707_p2[7:4]}};
assign lshr_ln85_8_fu_1734_p4 = {{empty_274_fu_1729_p2[7:4]}};
assign lshr_ln85_9_fu_1755_p4 = {{empty_275_fu_1750_p2[7:4]}};
assign lshr_ln85_s_fu_1776_p4 = {{empty_276_fu_1771_p2[7:4]}};
assign lshr_ln_fu_1496_p4 = {{ap_sig_allocacmp_i_11[5:4]}};
assign or_ln_fu_1541_p3 = {{tmp_s_fu_1531_p4}, {1'd1}};
assign oracle_activations_0_address0 = zext_ln81_reg_3286_pp0_iter20_reg;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_3560;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_10_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_10_ce0 = oracle_activations_10_ce0_local;
assign oracle_activations_10_d0 = mul16_s_reg_3610;
assign oracle_activations_10_we0 = oracle_activations_10_we0_local;
assign oracle_activations_11_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_11_ce0 = oracle_activations_11_ce0_local;
assign oracle_activations_11_d0 = mul16_10_reg_3615;
assign oracle_activations_11_we0 = oracle_activations_11_we0_local;
assign oracle_activations_12_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_12_ce0 = oracle_activations_12_ce0_local;
assign oracle_activations_12_d0 = mul16_11_reg_3620;
assign oracle_activations_12_we0 = oracle_activations_12_we0_local;
assign oracle_activations_13_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_13_ce0 = oracle_activations_13_ce0_local;
assign oracle_activations_13_d0 = mul16_12_reg_3625;
assign oracle_activations_13_we0 = oracle_activations_13_we0_local;
assign oracle_activations_14_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_14_ce0 = oracle_activations_14_ce0_local;
assign oracle_activations_14_d0 = mul16_13_reg_3630;
assign oracle_activations_14_we0 = oracle_activations_14_we0_local;
assign oracle_activations_15_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_15_ce0 = oracle_activations_15_ce0_local;
assign oracle_activations_15_d0 = mul16_14_reg_3635;
assign oracle_activations_15_we0 = oracle_activations_15_we0_local;
assign oracle_activations_1_address0 = zext_ln81_reg_3286_pp0_iter20_reg;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul16_1_reg_3565;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = mul16_2_reg_3570;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = mul16_3_reg_3575;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = mul16_4_reg_3580;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = mul16_5_reg_3585;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = mul16_6_reg_3590;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = mul16_7_reg_3595;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign oracle_activations_8_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_8_ce0 = oracle_activations_8_ce0_local;
assign oracle_activations_8_d0 = mul16_8_reg_3600;
assign oracle_activations_8_we0 = oracle_activations_8_we0_local;
assign oracle_activations_9_address0 = zext_ln81_reg_3286_pp0_iter21_reg;
assign oracle_activations_9_ce0 = oracle_activations_9_ce0_local;
assign oracle_activations_9_d0 = mul16_9_reg_3605;
assign oracle_activations_9_we0 = oracle_activations_9_we0_local;
assign p_shl5_fu_1510_p3 = {{lshr_ln_fu_1496_p4}, {2'd0}};
assign p_shl_fu_1553_p3 = {{tmp_s_fu_1531_p4}, {3'd4}};
assign sub_ln85_fu_1518_p2 = (p_shl5_fu_1510_p3 - zext_ln81_1_fu_1506_p1);
assign tmp_s_fu_1531_p4 = {{ap_sig_allocacmp_i_11[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = zext_ln85_2_fu_1682_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_10_address0 = weights3_10_address0_local;
assign weights3_10_address1 = zext_ln87_2_fu_1620_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_10_ce1 = weights3_10_ce1_local;
assign weights3_11_address0 = weights3_11_address0_local;
assign weights3_11_address1 = zext_ln87_8_fu_1786_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_11_ce1 = weights3_11_ce1_local;
assign weights3_12_address0 = weights3_12_address0_local;
assign weights3_12_address1 = zext_ln87_3_fu_1641_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_12_ce1 = weights3_12_ce1_local;
assign weights3_13_address0 = weights3_13_address0_local;
assign weights3_13_address1 = zext_ln87_3_fu_1641_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_13_ce1 = weights3_13_ce1_local;
assign weights3_14_address0 = weights3_14_address0_local;
assign weights3_14_address1 = zext_ln85_3_fu_1807_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_14_ce1 = weights3_14_ce1_local;
assign weights3_15_address0 = weights3_15_address0_local;
assign weights3_15_address1 = zext_ln85_1_fu_1662_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_15_ce1 = weights3_15_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = zext_ln87_4_fu_1702_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = zext_ln87_5_fu_1722_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = zext_ln87_5_fu_1722_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = zext_ln87_5_fu_1722_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = zext_ln87_6_fu_1744_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = zext_ln87_1_fu_1599_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = zext_ln87_1_fu_1599_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_8_address0 = weights3_8_address0_local;
assign weights3_8_address1 = zext_ln87_7_fu_1765_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_8_ce1 = weights3_8_ce1_local;
assign weights3_9_address0 = weights3_9_address0_local;
assign weights3_9_address1 = zext_ln87_2_fu_1620_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign weights3_9_ce1 = weights3_9_ce1_local;
assign zext_ln81_1_fu_1506_p1 = lshr_ln_fu_1496_p4;
assign zext_ln81_fu_2173_p1 = lshr_ln_reg_2250_pp0_iter15_reg;
assign zext_ln83_fu_1549_p1 = or_ln_fu_1541_p3;
assign zext_ln85_1_fu_1662_p1 = lshr_ln85_4_fu_1652_p4;
assign zext_ln85_2_fu_1682_p1 = lshr_ln85_5_fu_1672_p4;
assign zext_ln85_3_fu_1807_p1 = lshr_ln85_10_fu_1797_p4;
assign zext_ln85_4_fu_1933_p1 = lshr_ln85_16_fu_1923_p4;
assign zext_ln85_fu_1524_p1 = sub_ln85_fu_1518_p2;
assign zext_ln87_10_fu_1848_p1 = lshr_ln85_12_fu_1838_p4;
assign zext_ln87_11_fu_1870_p1 = lshr_ln85_13_fu_1860_p4;
assign zext_ln87_12_fu_1891_p1 = lshr_ln85_14_fu_1881_p4;
assign zext_ln87_13_fu_1912_p1 = lshr_ln85_15_fu_1902_p4;
assign zext_ln87_1_fu_1599_p1 = lshr_ln85_1_fu_1589_p4;
assign zext_ln87_2_fu_1620_p1 = lshr_ln85_2_fu_1610_p4;
assign zext_ln87_3_fu_1641_p1 = lshr_ln85_3_fu_1631_p4;
assign zext_ln87_4_fu_1702_p1 = lshr_ln85_6_fu_1692_p4;
assign zext_ln87_5_fu_1722_p1 = lshr_ln85_7_fu_1712_p4;
assign zext_ln87_6_fu_1744_p1 = lshr_ln85_8_fu_1734_p4;
assign zext_ln87_7_fu_1765_p1 = lshr_ln85_9_fu_1755_p4;
assign zext_ln87_8_fu_1786_p1 = lshr_ln85_s_fu_1776_p4;
assign zext_ln87_9_fu_1828_p1 = lshr_ln85_11_fu_1818_p4;
assign zext_ln87_fu_1577_p1 = lshr_ln1_fu_1567_p4;
always @ (posedge ap_clk) begin
    empty_reg_2270[0] <= 1'b1;
    zext_ln87_1_reg_2306[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_2_reg_2311[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_3_reg_2316[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_6_reg_2321[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_7_reg_2326[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_8_reg_2331[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_11_reg_2336[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_12_reg_2341[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_13_reg_2346[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln85_4_reg_2351[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286_pp0_iter17_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286_pp0_iter18_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286_pp0_iter19_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286_pp0_iter20_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3286_pp0_iter21_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
end
endmodule 