
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_dout0,grp_fu_4660_p_ce,grp_fu_4664_p_din0,grp_fu_4664_p_din1,grp_fu_4664_p_dout0,grp_fu_4664_p_ce,grp_fu_4668_p_din0,grp_fu_4668_p_din1,grp_fu_4668_p_dout0,grp_fu_4668_p_ce,grp_fu_4672_p_din0,grp_fu_4672_p_din1,grp_fu_4672_p_dout0,grp_fu_4672_p_ce,grp_fu_4676_p_din0,grp_fu_4676_p_din1,grp_fu_4676_p_dout0,grp_fu_4676_p_ce,grp_fu_4680_p_din0,grp_fu_4680_p_din1,grp_fu_4680_p_dout0,grp_fu_4680_p_ce,grp_fu_4684_p_din0,grp_fu_4684_p_din1,grp_fu_4684_p_dout0,grp_fu_4684_p_ce,grp_fu_4688_p_din0,grp_fu_4688_p_din1,grp_fu_4688_p_dout0,grp_fu_4688_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [63:0] grp_fu_4660_p_din0;
output  [63:0] grp_fu_4660_p_din1;
input  [63:0] grp_fu_4660_p_dout0;
output   grp_fu_4660_p_ce;
output  [63:0] grp_fu_4664_p_din0;
output  [63:0] grp_fu_4664_p_din1;
input  [63:0] grp_fu_4664_p_dout0;
output   grp_fu_4664_p_ce;
output  [63:0] grp_fu_4668_p_din0;
output  [63:0] grp_fu_4668_p_din1;
input  [63:0] grp_fu_4668_p_dout0;
output   grp_fu_4668_p_ce;
output  [63:0] grp_fu_4672_p_din0;
output  [63:0] grp_fu_4672_p_din1;
input  [63:0] grp_fu_4672_p_dout0;
output   grp_fu_4672_p_ce;
output  [63:0] grp_fu_4676_p_din0;
output  [63:0] grp_fu_4676_p_din1;
input  [63:0] grp_fu_4676_p_dout0;
output   grp_fu_4676_p_ce;
output  [63:0] grp_fu_4680_p_din0;
output  [63:0] grp_fu_4680_p_din1;
input  [63:0] grp_fu_4680_p_dout0;
output   grp_fu_4680_p_ce;
output  [63:0] grp_fu_4684_p_din0;
output  [63:0] grp_fu_4684_p_din1;
input  [63:0] grp_fu_4684_p_dout0;
output   grp_fu_4684_p_ce;
output  [63:0] grp_fu_4688_p_din0;
output  [63:0] grp_fu_4688_p_din1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1707;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1012;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1018;
reg   [63:0] reg_1024;
reg   [63:0] reg_1030;
reg   [63:0] reg_1036;
reg   [63:0] reg_1042;
reg   [63:0] reg_1048;
reg   [63:0] reg_1054;
reg   [63:0] reg_1060;
reg   [63:0] reg_1066;
reg   [63:0] reg_1072;
reg   [63:0] reg_1078;
reg   [63:0] reg_1084;
reg   [63:0] reg_1090;
reg   [63:0] reg_1096;
reg   [63:0] reg_1102;
reg   [63:0] reg_1108;
reg   [63:0] reg_1114;
reg   [63:0] reg_1120;
reg   [63:0] reg_1126;
reg   [63:0] reg_1132;
reg   [63:0] reg_1138;
reg   [63:0] reg_1144;
reg   [63:0] reg_1150;
reg   [6:0] i_13_reg_1701;
reg   [0:0] tmp_reg_1707_pp0_iter1_reg;
reg   [0:0] tmp_reg_1707_pp0_iter2_reg;
reg   [0:0] tmp_reg_1707_pp0_iter3_reg;
wire   [1:0] lshr_ln_fu_1172_p4;
reg   [1:0] lshr_ln_reg_1711;
reg   [1:0] lshr_ln_reg_1711_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_1711_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1711_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_1711_pp0_iter4_reg;
reg   [63:0] last_activations_0_load_reg_1797;
reg   [4:0] tmp_s_reg_1804;
reg   [4:0] tmp_s_reg_1804_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_1804_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_1804_pp0_iter3_reg;
reg   [63:0] last_activations_1_load_reg_1810;
reg   [63:0] last_activations_2_load_reg_1817;
reg   [63:0] last_activations_3_load_reg_1824;
reg   [63:0] last_activations_4_load_reg_1831;
reg   [63:0] last_activations_5_load_reg_1838;
reg   [63:0] last_activations_6_load_reg_1845;
reg   [63:0] last_activations_7_load_reg_1852;
reg   [63:0] last_activations_8_load_reg_1859;
reg   [63:0] last_activations_9_load_reg_1866;
reg   [63:0] last_activations_10_load_reg_1873;
reg   [63:0] last_activations_11_load_reg_1880;
reg   [63:0] last_activations_12_load_reg_1887;
reg   [63:0] last_activations_13_load_reg_1894;
reg   [63:0] last_activations_14_load_reg_1901;
reg   [63:0] last_activations_15_load_reg_1908;
wire   [7:0] empty_fu_1262_p2;
reg   [7:0] empty_reg_1915;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln72_fu_1182_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_1237_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_1_fu_1278_p1;
wire   [63:0] zext_ln75_2_fu_1301_p1;
wire   [63:0] zext_ln75_3_fu_1324_p1;
wire   [63:0] zext_ln75_4_fu_1347_p1;
wire   [63:0] zext_ln75_5_fu_1370_p1;
wire   [63:0] zext_ln75_6_fu_1391_p1;
wire   [63:0] zext_ln75_7_fu_1412_p1;
wire   [63:0] zext_ln75_8_fu_1433_p1;
wire   [63:0] zext_ln75_9_fu_1456_p1;
wire   [63:0] zext_ln75_10_fu_1478_p1;
wire   [63:0] zext_ln75_11_fu_1500_p1;
wire   [63:0] zext_ln75_12_fu_1522_p1;
wire   [63:0] zext_ln75_13_fu_1543_p1;
wire   [63:0] zext_ln75_14_fu_1563_p1;
wire   [63:0] zext_ln75_15_fu_1585_p1;
wire   [63:0] zext_ln75_16_fu_1607_p1;
wire   [63:0] zext_ln75_17_fu_1629_p1;
wire   [63:0] zext_ln75_18_fu_1651_p1;
reg   [6:0] i_fu_158;
wire   [6:0] add_ln73_fu_1211_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
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
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [3:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [3:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [3:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [3:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [3:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [3:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [3:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [3:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [3:0] delta_weights3_8_address0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [3:0] delta_weights3_9_address0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [3:0] delta_weights3_10_address0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [3:0] delta_weights3_11_address0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [3:0] delta_weights3_12_address0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [3:0] delta_weights3_13_address0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [3:0] delta_weights3_14_address0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [3:0] delta_weights3_15_address0_local;
reg    delta_weights3_15_we1_local;
reg    delta_weights3_15_ce1_local;
reg   [63:0] grp_fu_916_p0;
reg   [63:0] grp_fu_920_p0;
reg   [63:0] grp_fu_924_p0;
reg   [63:0] grp_fu_928_p0;
reg   [63:0] grp_fu_932_p0;
reg   [63:0] grp_fu_936_p0;
reg   [63:0] grp_fu_940_p0;
reg   [63:0] grp_fu_944_p0;
reg   [63:0] grp_fu_948_p0;
reg   [63:0] grp_fu_952_p0;
reg   [63:0] grp_fu_956_p0;
reg   [63:0] grp_fu_960_p0;
reg   [63:0] grp_fu_964_p0;
reg   [63:0] grp_fu_968_p0;
reg   [63:0] grp_fu_972_p0;
reg   [63:0] grp_fu_976_p0;
reg   [63:0] grp_fu_980_p0;
reg   [63:0] grp_fu_984_p0;
reg   [63:0] grp_fu_988_p0;
reg   [63:0] grp_fu_992_p0;
reg   [63:0] grp_fu_996_p0;
reg   [63:0] grp_fu_1000_p0;
reg   [63:0] grp_fu_1004_p0;
reg   [63:0] grp_fu_1008_p0;
wire   [3:0] p_shl5_fu_1224_p3;
wire   [3:0] zext_ln72_1_fu_1221_p1;
wire   [3:0] sub_ln75_fu_1231_p2;
wire   [5:0] or_ln_fu_1244_p3;
wire   [7:0] p_shl_fu_1255_p3;
wire   [7:0] or_ln73_cast_fu_1251_p1;
wire   [3:0] lshr_ln2_fu_1268_p4;
wire   [7:0] empty_283_fu_1285_p2;
wire   [3:0] lshr_ln75_1_fu_1291_p4;
wire   [7:0] empty_284_fu_1308_p2;
wire   [3:0] lshr_ln75_2_fu_1314_p4;
wire   [7:0] empty_285_fu_1331_p2;
wire   [3:0] lshr_ln75_3_fu_1337_p4;
wire   [7:0] empty_286_fu_1354_p2;
wire   [3:0] lshr_ln75_4_fu_1360_p4;
wire   [7:0] add_ln75_fu_1375_p2;
wire   [3:0] lshr_ln75_5_fu_1381_p4;
wire   [7:0] add_ln75_1_fu_1396_p2;
wire   [3:0] lshr_ln75_6_fu_1402_p4;
wire   [7:0] empty_287_fu_1417_p2;
wire   [3:0] lshr_ln75_7_fu_1423_p4;
wire   [7:0] empty_288_fu_1440_p2;
wire   [3:0] lshr_ln75_8_fu_1446_p4;
wire   [7:0] empty_289_fu_1463_p2;
wire   [3:0] lshr_ln75_9_fu_1468_p4;
wire   [7:0] empty_290_fu_1485_p2;
wire   [3:0] lshr_ln75_s_fu_1490_p4;
wire   [7:0] empty_291_fu_1507_p2;
wire   [3:0] lshr_ln75_10_fu_1512_p4;
wire   [7:0] add_ln75_2_fu_1528_p2;
wire   [3:0] lshr_ln75_11_fu_1533_p4;
wire   [7:0] empty_292_fu_1548_p2;
wire   [3:0] lshr_ln75_12_fu_1553_p4;
wire   [7:0] empty_293_fu_1570_p2;
wire   [3:0] lshr_ln75_13_fu_1575_p4;
wire   [7:0] empty_294_fu_1592_p2;
wire   [3:0] lshr_ln75_14_fu_1597_p4;
wire   [7:0] empty_295_fu_1614_p2;
wire   [3:0] lshr_ln75_15_fu_1619_p4;
wire   [7:0] empty_296_fu_1636_p2;
wire   [3:0] lshr_ln75_16_fu_1641_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_158 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_158 <= 7'd0;
    end else if (((tmp_reg_1707 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_158 <= add_ln73_fu_1211_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1915[7 : 1] <= empty_fu_1262_p2[7 : 1];
        last_activations_0_load_reg_1797 <= last_activations_0_q0;
        last_activations_10_load_reg_1873 <= last_activations_10_q0;
        last_activations_11_load_reg_1880 <= last_activations_11_q0;
        last_activations_12_load_reg_1887 <= last_activations_12_q0;
        last_activations_13_load_reg_1894 <= last_activations_13_q0;
        last_activations_14_load_reg_1901 <= last_activations_14_q0;
        last_activations_15_load_reg_1908 <= last_activations_15_q0;
        last_activations_1_load_reg_1810 <= last_activations_1_q0;
        last_activations_2_load_reg_1817 <= last_activations_2_q0;
        last_activations_3_load_reg_1824 <= last_activations_3_q0;
        last_activations_4_load_reg_1831 <= last_activations_4_q0;
        last_activations_5_load_reg_1838 <= last_activations_5_q0;
        last_activations_6_load_reg_1845 <= last_activations_6_q0;
        last_activations_7_load_reg_1852 <= last_activations_7_q0;
        last_activations_8_load_reg_1859 <= last_activations_8_q0;
        last_activations_9_load_reg_1866 <= last_activations_9_q0;
        tmp_s_reg_1804 <= {{i_13_reg_1701[5:1]}};
        tmp_s_reg_1804_pp0_iter1_reg <= tmp_s_reg_1804;
        tmp_s_reg_1804_pp0_iter2_reg <= tmp_s_reg_1804_pp0_iter1_reg;
        tmp_s_reg_1804_pp0_iter3_reg <= tmp_s_reg_1804_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_13_reg_1701 <= ap_sig_allocacmp_i_13;
        lshr_ln_reg_1711 <= {{ap_sig_allocacmp_i_13[5:4]}};
        lshr_ln_reg_1711_pp0_iter1_reg <= lshr_ln_reg_1711;
        lshr_ln_reg_1711_pp0_iter2_reg <= lshr_ln_reg_1711_pp0_iter1_reg;
        lshr_ln_reg_1711_pp0_iter3_reg <= lshr_ln_reg_1711_pp0_iter2_reg;
        lshr_ln_reg_1711_pp0_iter4_reg <= lshr_ln_reg_1711_pp0_iter3_reg;
        tmp_reg_1707 <= ap_sig_allocacmp_i_13[32'd6];
        tmp_reg_1707_pp0_iter1_reg <= tmp_reg_1707;
        tmp_reg_1707_pp0_iter2_reg <= tmp_reg_1707_pp0_iter1_reg;
        tmp_reg_1707_pp0_iter3_reg <= tmp_reg_1707_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1012 <= grp_fu_4672_p_dout0;
        reg_1018 <= grp_fu_4676_p_dout0;
        reg_1024 <= grp_fu_4680_p_dout0;
        reg_1030 <= grp_fu_4684_p_dout0;
        reg_1036 <= grp_fu_4688_p_dout0;
        reg_1042 <= grp_fu_4692_p_dout0;
        reg_1048 <= grp_fu_4696_p_dout0;
        reg_1054 <= grp_fu_4700_p_dout0;
        reg_1060 <= grp_fu_4704_p_dout0;
        reg_1066 <= grp_fu_4708_p_dout0;
        reg_1072 <= grp_fu_4712_p_dout0;
        reg_1078 <= grp_fu_4716_p_dout0;
        reg_1084 <= grp_fu_4720_p_dout0;
        reg_1090 <= grp_fu_4724_p_dout0;
        reg_1096 <= grp_fu_4728_p_dout0;
        reg_1102 <= grp_fu_4732_p_dout0;
        reg_1108 <= grp_fu_4736_p_dout0;
        reg_1114 <= grp_fu_4740_p_dout0;
        reg_1120 <= grp_fu_4744_p_dout0;
        reg_1126 <= grp_fu_4748_p_dout0;
        reg_1132 <= grp_fu_4752_p_dout0;
        reg_1138 <= grp_fu_4660_p_dout0;
        reg_1144 <= grp_fu_4664_p_dout0;
        reg_1150 <= grp_fu_4668_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1707 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_reg_1707_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_13_fu_1543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_6_fu_1391_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_d0_local = reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_d0_local = reg_1108;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_address0_local = zext_ln75_17_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_address0_local = zext_ln75_3_fu_1324_p1;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_d0_local = reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_d0_local = reg_1072;
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_address0_local = zext_ln75_17_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_address0_local = zext_ln75_3_fu_1324_p1;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_d0_local = reg_1126;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_d0_local = reg_1078;
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_address0_local = zext_ln75_17_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_address0_local = zext_ln75_4_fu_1347_p1;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_d0_local = reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_d0_local = reg_1084;
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_address0_local = zext_ln75_18_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_address0_local = zext_ln75_4_fu_1347_p1;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_d0_local = reg_1138;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_d0_local = reg_1090;
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_address0_local = zext_ln75_18_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_address0_local = zext_ln75_4_fu_1347_p1;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_d0_local = reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_d0_local = reg_1096;
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_address0_local = zext_ln75_18_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_address0_local = zext_ln75_5_fu_1370_p1;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_d0_local = reg_1150;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_d0_local = reg_1102;
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_14_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_7_fu_1412_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_d0_local = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_d0_local = reg_1114;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_address0_local = zext_ln75_14_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_address0_local = zext_ln75_8_fu_1433_p1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_d0_local = reg_1072;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_d0_local = reg_1120;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_address0_local = zext_ln75_14_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_address0_local = zext_ln75_8_fu_1433_p1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_d0_local = reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_d0_local = reg_1126;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_4_address0_local = zext_ln75_15_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_address0_local = zext_ln75_8_fu_1433_p1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_4_d0_local = reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_d0_local = reg_1132;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_5_address0_local = zext_ln75_15_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_address0_local = zext_ln75_9_fu_1456_p1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_5_d0_local = reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_d0_local = reg_1138;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_6_address0_local = zext_ln75_15_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_address0_local = zext_ln75_9_fu_1456_p1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_6_d0_local = reg_1096;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_d0_local = reg_1144;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_7_address0_local = zext_ln75_16_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_address0_local = zext_ln75_9_fu_1456_p1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_7_d0_local = reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_d0_local = reg_1150;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_address0_local = zext_ln75_16_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_address0_local = zext_ln75_2_fu_1301_p1;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_d0_local = reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_d0_local = reg_1060;
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_address0_local = zext_ln75_16_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_address0_local = zext_ln75_3_fu_1324_p1;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_d0_local = reg_1114;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_d0_local = reg_1066;
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1000_p0 = last_activations_15_load_reg_1908;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1000_p0 = last_activations_7_load_reg_1852;
        end else begin
            grp_fu_1000_p0 = 'bx;
        end
    end else begin
        grp_fu_1000_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1004_p0 = last_activations_15_load_reg_1908;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1004_p0 = last_activations_7_load_reg_1852;
        end else begin
            grp_fu_1004_p0 = 'bx;
        end
    end else begin
        grp_fu_1004_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1008_p0 = last_activations_15_load_reg_1908;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1008_p0 = last_activations_7_load_reg_1852;
        end else begin
            grp_fu_1008_p0 = 'bx;
        end
    end else begin
        grp_fu_1008_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_916_p0 = last_activations_8_load_reg_1859;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_916_p0 = last_activations_0_load_reg_1797;
        end else begin
            grp_fu_916_p0 = 'bx;
        end
    end else begin
        grp_fu_916_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_920_p0 = last_activations_8_load_reg_1859;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_920_p0 = last_activations_0_load_reg_1797;
        end else begin
            grp_fu_920_p0 = 'bx;
        end
    end else begin
        grp_fu_920_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_924_p0 = last_activations_8_load_reg_1859;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_924_p0 = last_activations_0_load_reg_1797;
        end else begin
            grp_fu_924_p0 = 'bx;
        end
    end else begin
        grp_fu_924_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_928_p0 = last_activations_9_load_reg_1866;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_928_p0 = last_activations_1_load_reg_1810;
        end else begin
            grp_fu_928_p0 = 'bx;
        end
    end else begin
        grp_fu_928_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_932_p0 = last_activations_9_load_reg_1866;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_932_p0 = last_activations_1_load_reg_1810;
        end else begin
            grp_fu_932_p0 = 'bx;
        end
    end else begin
        grp_fu_932_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_936_p0 = last_activations_9_load_reg_1866;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_936_p0 = last_activations_1_load_reg_1810;
        end else begin
            grp_fu_936_p0 = 'bx;
        end
    end else begin
        grp_fu_936_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_940_p0 = last_activations_10_load_reg_1873;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_940_p0 = last_activations_2_load_reg_1817;
        end else begin
            grp_fu_940_p0 = 'bx;
        end
    end else begin
        grp_fu_940_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_944_p0 = last_activations_10_load_reg_1873;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_944_p0 = last_activations_2_load_reg_1817;
        end else begin
            grp_fu_944_p0 = 'bx;
        end
    end else begin
        grp_fu_944_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_948_p0 = last_activations_10_load_reg_1873;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_948_p0 = last_activations_2_load_reg_1817;
        end else begin
            grp_fu_948_p0 = 'bx;
        end
    end else begin
        grp_fu_948_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_952_p0 = last_activations_11_load_reg_1880;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_952_p0 = last_activations_3_load_reg_1824;
        end else begin
            grp_fu_952_p0 = 'bx;
        end
    end else begin
        grp_fu_952_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_956_p0 = last_activations_11_load_reg_1880;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_956_p0 = last_activations_3_load_reg_1824;
        end else begin
            grp_fu_956_p0 = 'bx;
        end
    end else begin
        grp_fu_956_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_960_p0 = last_activations_11_load_reg_1880;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_960_p0 = last_activations_3_load_reg_1824;
        end else begin
            grp_fu_960_p0 = 'bx;
        end
    end else begin
        grp_fu_960_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_964_p0 = last_activations_12_load_reg_1887;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_964_p0 = last_activations_4_load_reg_1831;
        end else begin
            grp_fu_964_p0 = 'bx;
        end
    end else begin
        grp_fu_964_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_968_p0 = last_activations_12_load_reg_1887;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_968_p0 = last_activations_4_load_reg_1831;
        end else begin
            grp_fu_968_p0 = 'bx;
        end
    end else begin
        grp_fu_968_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_972_p0 = last_activations_12_load_reg_1887;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_972_p0 = last_activations_4_load_reg_1831;
        end else begin
            grp_fu_972_p0 = 'bx;
        end
    end else begin
        grp_fu_972_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_976_p0 = last_activations_13_load_reg_1894;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_976_p0 = last_activations_5_load_reg_1838;
        end else begin
            grp_fu_976_p0 = 'bx;
        end
    end else begin
        grp_fu_976_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_980_p0 = last_activations_13_load_reg_1894;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_980_p0 = last_activations_5_load_reg_1838;
        end else begin
            grp_fu_980_p0 = 'bx;
        end
    end else begin
        grp_fu_980_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_984_p0 = last_activations_13_load_reg_1894;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_984_p0 = last_activations_5_load_reg_1838;
        end else begin
            grp_fu_984_p0 = 'bx;
        end
    end else begin
        grp_fu_984_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_988_p0 = last_activations_14_load_reg_1901;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_988_p0 = last_activations_6_load_reg_1845;
        end else begin
            grp_fu_988_p0 = 'bx;
        end
    end else begin
        grp_fu_988_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_992_p0 = last_activations_14_load_reg_1901;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_992_p0 = last_activations_6_load_reg_1845;
        end else begin
            grp_fu_992_p0 = 'bx;
        end
    end else begin
        grp_fu_992_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_996_p0 = last_activations_14_load_reg_1901;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_996_p0 = last_activations_6_load_reg_1845;
        end else begin
            grp_fu_996_p0 = 'bx;
        end
    end else begin
        grp_fu_996_p0 = 'bx;
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
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln73_fu_1211_p2 = (i_13_reg_1701 + 7'd16);
assign add_ln75_1_fu_1396_p2 = (empty_fu_1262_p2 + 8'd14);
assign add_ln75_2_fu_1528_p2 = (empty_reg_1915 + 8'd29);
assign add_ln75_fu_1375_p2 = (empty_fu_1262_p2 + 8'd13);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = zext_ln75_fu_1237_p1;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = reg_1012;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = zext_ln75_10_fu_1478_p1;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_d1 = reg_1024;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_address1 = zext_ln75_11_fu_1500_p1;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_d1 = reg_1030;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = zext_ln75_11_fu_1500_p1;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_d1 = reg_1036;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = zext_ln75_11_fu_1500_p1;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_d1 = reg_1042;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = zext_ln75_12_fu_1522_p1;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_d1 = reg_1048;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_address1 = zext_ln75_12_fu_1522_p1;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_d1 = reg_1054;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = zext_ln75_fu_1237_p1;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = reg_1018;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = zext_ln75_fu_1237_p1;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = reg_1024;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = zext_ln75_1_fu_1278_p1;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = reg_1030;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = zext_ln75_1_fu_1278_p1;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = reg_1036;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = zext_ln75_1_fu_1278_p1;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = reg_1042;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = zext_ln75_2_fu_1301_p1;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = reg_1048;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = zext_ln75_2_fu_1301_p1;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_d1 = reg_1054;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = zext_ln75_10_fu_1478_p1;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_d1 = reg_1012;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = zext_ln75_10_fu_1478_p1;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_d1 = reg_1018;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign empty_283_fu_1285_p2 = (empty_fu_1262_p2 + 8'd3);
assign empty_284_fu_1308_p2 = (empty_fu_1262_p2 + 8'd6);
assign empty_285_fu_1331_p2 = (empty_fu_1262_p2 + 8'd9);
assign empty_286_fu_1354_p2 = (empty_fu_1262_p2 + 8'd12);
assign empty_287_fu_1417_p2 = (empty_fu_1262_p2 + 8'd15);
assign empty_288_fu_1440_p2 = (empty_fu_1262_p2 + 8'd18);
assign empty_289_fu_1463_p2 = (empty_reg_1915 + 8'd21);
assign empty_290_fu_1485_p2 = (empty_reg_1915 + 8'd24);
assign empty_291_fu_1507_p2 = (empty_reg_1915 + 8'd27);
assign empty_292_fu_1548_p2 = (empty_reg_1915 + 8'd30);
assign empty_293_fu_1570_p2 = (empty_reg_1915 + 8'd33);
assign empty_294_fu_1592_p2 = (empty_reg_1915 + 8'd36);
assign empty_295_fu_1614_p2 = (empty_reg_1915 + 8'd39);
assign empty_296_fu_1636_p2 = (empty_reg_1915 + 8'd42);
assign empty_fu_1262_p2 = (p_shl_fu_1255_p3 - or_ln73_cast_fu_1251_p1);
assign grp_fu_4660_p_ce = 1'b1;
assign grp_fu_4660_p_din0 = grp_fu_1000_p0;
assign grp_fu_4660_p_din1 = output_difference_0_0_val;
assign grp_fu_4664_p_ce = 1'b1;
assign grp_fu_4664_p_din0 = grp_fu_1004_p0;
assign grp_fu_4664_p_din1 = output_difference_0_1_val;
assign grp_fu_4668_p_ce = 1'b1;
assign grp_fu_4668_p_din0 = grp_fu_1008_p0;
assign grp_fu_4668_p_din1 = output_difference_0_2_val;
assign grp_fu_4672_p_ce = 1'b1;
assign grp_fu_4672_p_din0 = grp_fu_916_p0;
assign grp_fu_4672_p_din1 = output_difference_0_0_val;
assign grp_fu_4676_p_ce = 1'b1;
assign grp_fu_4676_p_din0 = grp_fu_920_p0;
assign grp_fu_4676_p_din1 = output_difference_0_1_val;
assign grp_fu_4680_p_ce = 1'b1;
assign grp_fu_4680_p_din0 = grp_fu_924_p0;
assign grp_fu_4680_p_din1 = output_difference_0_2_val;
assign grp_fu_4684_p_ce = 1'b1;
assign grp_fu_4684_p_din0 = grp_fu_928_p0;
assign grp_fu_4684_p_din1 = output_difference_0_0_val;
assign grp_fu_4688_p_ce = 1'b1;
assign grp_fu_4688_p_din0 = grp_fu_932_p0;
assign grp_fu_4688_p_din1 = output_difference_0_1_val;
assign grp_fu_4692_p_ce = 1'b1;
assign grp_fu_4692_p_din0 = grp_fu_936_p0;
assign grp_fu_4692_p_din1 = output_difference_0_2_val;
assign grp_fu_4696_p_ce = 1'b1;
assign grp_fu_4696_p_din0 = grp_fu_940_p0;
assign grp_fu_4696_p_din1 = output_difference_0_0_val;
assign grp_fu_4700_p_ce = 1'b1;
assign grp_fu_4700_p_din0 = grp_fu_944_p0;
assign grp_fu_4700_p_din1 = output_difference_0_1_val;
assign grp_fu_4704_p_ce = 1'b1;
assign grp_fu_4704_p_din0 = grp_fu_948_p0;
assign grp_fu_4704_p_din1 = output_difference_0_2_val;
assign grp_fu_4708_p_ce = 1'b1;
assign grp_fu_4708_p_din0 = grp_fu_952_p0;
assign grp_fu_4708_p_din1 = output_difference_0_0_val;
assign grp_fu_4712_p_ce = 1'b1;
assign grp_fu_4712_p_din0 = grp_fu_956_p0;
assign grp_fu_4712_p_din1 = output_difference_0_1_val;
assign grp_fu_4716_p_ce = 1'b1;
assign grp_fu_4716_p_din0 = grp_fu_960_p0;
assign grp_fu_4716_p_din1 = output_difference_0_2_val;
assign grp_fu_4720_p_ce = 1'b1;
assign grp_fu_4720_p_din0 = grp_fu_964_p0;
assign grp_fu_4720_p_din1 = output_difference_0_0_val;
assign grp_fu_4724_p_ce = 1'b1;
assign grp_fu_4724_p_din0 = grp_fu_968_p0;
assign grp_fu_4724_p_din1 = output_difference_0_1_val;
assign grp_fu_4728_p_ce = 1'b1;
assign grp_fu_4728_p_din0 = grp_fu_972_p0;
assign grp_fu_4728_p_din1 = output_difference_0_2_val;
assign grp_fu_4732_p_ce = 1'b1;
assign grp_fu_4732_p_din0 = grp_fu_976_p0;
assign grp_fu_4732_p_din1 = output_difference_0_0_val;
assign grp_fu_4736_p_ce = 1'b1;
assign grp_fu_4736_p_din0 = grp_fu_980_p0;
assign grp_fu_4736_p_din1 = output_difference_0_1_val;
assign grp_fu_4740_p_ce = 1'b1;
assign grp_fu_4740_p_din0 = grp_fu_984_p0;
assign grp_fu_4740_p_din1 = output_difference_0_2_val;
assign grp_fu_4744_p_ce = 1'b1;
assign grp_fu_4744_p_din0 = grp_fu_988_p0;
assign grp_fu_4744_p_din1 = output_difference_0_0_val;
assign grp_fu_4748_p_ce = 1'b1;
assign grp_fu_4748_p_din0 = grp_fu_992_p0;
assign grp_fu_4748_p_din1 = output_difference_0_1_val;
assign grp_fu_4752_p_ce = 1'b1;
assign grp_fu_4752_p_din0 = grp_fu_996_p0;
assign grp_fu_4752_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = zext_ln72_fu_1182_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln72_fu_1182_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln72_fu_1182_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln72_fu_1182_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln72_fu_1182_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln72_fu_1182_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln72_fu_1182_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = zext_ln72_fu_1182_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln72_fu_1182_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln72_fu_1182_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln72_fu_1182_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln72_fu_1182_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln72_fu_1182_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln72_fu_1182_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln72_fu_1182_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln72_fu_1182_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln2_fu_1268_p4 = {{empty_fu_1262_p2[7:4]}};
assign lshr_ln75_10_fu_1512_p4 = {{empty_291_fu_1507_p2[7:4]}};
assign lshr_ln75_11_fu_1533_p4 = {{add_ln75_2_fu_1528_p2[7:4]}};
assign lshr_ln75_12_fu_1553_p4 = {{empty_292_fu_1548_p2[7:4]}};
assign lshr_ln75_13_fu_1575_p4 = {{empty_293_fu_1570_p2[7:4]}};
assign lshr_ln75_14_fu_1597_p4 = {{empty_294_fu_1592_p2[7:4]}};
assign lshr_ln75_15_fu_1619_p4 = {{empty_295_fu_1614_p2[7:4]}};
assign lshr_ln75_16_fu_1641_p4 = {{empty_296_fu_1636_p2[7:4]}};
assign lshr_ln75_1_fu_1291_p4 = {{empty_283_fu_1285_p2[7:4]}};
assign lshr_ln75_2_fu_1314_p4 = {{empty_284_fu_1308_p2[7:4]}};
assign lshr_ln75_3_fu_1337_p4 = {{empty_285_fu_1331_p2[7:4]}};
assign lshr_ln75_4_fu_1360_p4 = {{empty_286_fu_1354_p2[7:4]}};
assign lshr_ln75_5_fu_1381_p4 = {{add_ln75_fu_1375_p2[7:4]}};
assign lshr_ln75_6_fu_1402_p4 = {{add_ln75_1_fu_1396_p2[7:4]}};
assign lshr_ln75_7_fu_1423_p4 = {{empty_287_fu_1417_p2[7:4]}};
assign lshr_ln75_8_fu_1446_p4 = {{empty_288_fu_1440_p2[7:4]}};
assign lshr_ln75_9_fu_1468_p4 = {{empty_289_fu_1463_p2[7:4]}};
assign lshr_ln75_s_fu_1490_p4 = {{empty_290_fu_1485_p2[7:4]}};
assign lshr_ln_fu_1172_p4 = {{ap_sig_allocacmp_i_13[5:4]}};
assign or_ln73_cast_fu_1251_p1 = or_ln_fu_1244_p3;
assign or_ln_fu_1244_p3 = {{tmp_s_reg_1804_pp0_iter3_reg}, {1'd1}};
assign p_shl5_fu_1224_p3 = {{lshr_ln_reg_1711_pp0_iter4_reg}, {2'd0}};
assign p_shl_fu_1255_p3 = {{tmp_s_reg_1804_pp0_iter3_reg}, {3'd4}};
assign sub_ln75_fu_1231_p2 = (p_shl5_fu_1224_p3 - zext_ln72_1_fu_1221_p1);
assign zext_ln72_1_fu_1221_p1 = lshr_ln_reg_1711_pp0_iter4_reg;
assign zext_ln72_fu_1182_p1 = lshr_ln_fu_1172_p4;
assign zext_ln75_10_fu_1478_p1 = lshr_ln75_9_fu_1468_p4;
assign zext_ln75_11_fu_1500_p1 = lshr_ln75_s_fu_1490_p4;
assign zext_ln75_12_fu_1522_p1 = lshr_ln75_10_fu_1512_p4;
assign zext_ln75_13_fu_1543_p1 = lshr_ln75_11_fu_1533_p4;
assign zext_ln75_14_fu_1563_p1 = lshr_ln75_12_fu_1553_p4;
assign zext_ln75_15_fu_1585_p1 = lshr_ln75_13_fu_1575_p4;
assign zext_ln75_16_fu_1607_p1 = lshr_ln75_14_fu_1597_p4;
assign zext_ln75_17_fu_1629_p1 = lshr_ln75_15_fu_1619_p4;
assign zext_ln75_18_fu_1651_p1 = lshr_ln75_16_fu_1641_p4;
assign zext_ln75_1_fu_1278_p1 = lshr_ln2_fu_1268_p4;
assign zext_ln75_2_fu_1301_p1 = lshr_ln75_1_fu_1291_p4;
assign zext_ln75_3_fu_1324_p1 = lshr_ln75_2_fu_1314_p4;
assign zext_ln75_4_fu_1347_p1 = lshr_ln75_3_fu_1337_p4;
assign zext_ln75_5_fu_1370_p1 = lshr_ln75_4_fu_1360_p4;
assign zext_ln75_6_fu_1391_p1 = lshr_ln75_5_fu_1381_p4;
assign zext_ln75_7_fu_1412_p1 = lshr_ln75_6_fu_1402_p4;
assign zext_ln75_8_fu_1433_p1 = lshr_ln75_7_fu_1423_p4;
assign zext_ln75_9_fu_1456_p1 = lshr_ln75_8_fu_1446_p4;
assign zext_ln75_fu_1237_p1 = sub_ln75_fu_1231_p2;
always @ (posedge ap_clk) begin
    empty_reg_1915[0] <= 1'b1;
end
endmodule 
