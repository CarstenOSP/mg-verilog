module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce,grp_fu_5677_p_din0,grp_fu_5677_p_din1,grp_fu_5677_p_dout0,grp_fu_5677_p_ce,grp_fu_5681_p_din0,grp_fu_5681_p_din1,grp_fu_5681_p_dout0,grp_fu_5681_p_ce,grp_fu_5685_p_din0,grp_fu_5685_p_din1,grp_fu_5685_p_dout0,grp_fu_5685_p_ce,grp_fu_5689_p_din0,grp_fu_5689_p_din1,grp_fu_5689_p_dout0,grp_fu_5689_p_ce,grp_fu_5693_p_din0,grp_fu_5693_p_din1,grp_fu_5693_p_dout0,grp_fu_5693_p_ce,grp_fu_5697_p_din0,grp_fu_5697_p_din1,grp_fu_5697_p_dout0,grp_fu_5697_p_ce,grp_fu_5701_p_din0,grp_fu_5701_p_din1,grp_fu_5701_p_dout0,grp_fu_5701_p_ce,grp_fu_5705_p_din0,grp_fu_5705_p_din1,grp_fu_5705_p_dout0,grp_fu_5705_p_ce,grp_fu_5709_p_din0,grp_fu_5709_p_din1,grp_fu_5709_p_dout0,grp_fu_5709_p_ce,grp_fu_5713_p_din0,grp_fu_5713_p_din1,grp_fu_5713_p_dout0,grp_fu_5713_p_ce,grp_fu_5717_p_din0,grp_fu_5717_p_din1,grp_fu_5717_p_dout0,grp_fu_5717_p_ce,grp_fu_5721_p_din0,grp_fu_5721_p_din1,grp_fu_5721_p_dout0,grp_fu_5721_p_ce,grp_fu_5725_p_din0,grp_fu_5725_p_din1,grp_fu_5725_p_dout0,grp_fu_5725_p_ce,grp_fu_5729_p_din0,grp_fu_5729_p_din1,grp_fu_5729_p_dout0,grp_fu_5729_p_ce,grp_fu_5733_p_din0,grp_fu_5733_p_din1,grp_fu_5733_p_dout0,grp_fu_5733_p_ce,grp_fu_5737_p_din0,grp_fu_5737_p_din1,grp_fu_5737_p_dout0,grp_fu_5737_p_ce,grp_fu_5741_p_din0,grp_fu_5741_p_din1,grp_fu_5741_p_dout0,grp_fu_5741_p_ce,grp_fu_5745_p_din0,grp_fu_5745_p_din1,grp_fu_5745_p_dout0,grp_fu_5745_p_ce,grp_fu_5749_p_din0,grp_fu_5749_p_din1,grp_fu_5749_p_dout0,grp_fu_5749_p_ce,grp_fu_5753_p_din0,grp_fu_5753_p_din1,grp_fu_5753_p_dout0,grp_fu_5753_p_ce,grp_fu_5757_p_din0,grp_fu_5757_p_din1,grp_fu_5757_p_dout0,grp_fu_5757_p_ce,grp_fu_5761_p_din0,grp_fu_5761_p_din1,grp_fu_5761_p_dout0,grp_fu_5761_p_ce,grp_fu_5765_p_din0,grp_fu_5765_p_din1,grp_fu_5765_p_dout0,grp_fu_5765_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [63:0] grp_fu_3932_p_din0;
output  [63:0] grp_fu_3932_p_din1;
input  [63:0] grp_fu_3932_p_dout0;
output   grp_fu_3932_p_ce;
output  [63:0] grp_fu_5677_p_din0;
output  [63:0] grp_fu_5677_p_din1;
input  [63:0] grp_fu_5677_p_dout0;
output   grp_fu_5677_p_ce;
output  [63:0] grp_fu_5681_p_din0;
output  [63:0] grp_fu_5681_p_din1;
input  [63:0] grp_fu_5681_p_dout0;
output   grp_fu_5681_p_ce;
output  [63:0] grp_fu_5685_p_din0;
output  [63:0] grp_fu_5685_p_din1;
input  [63:0] grp_fu_5685_p_dout0;
output   grp_fu_5685_p_ce;
output  [63:0] grp_fu_5689_p_din0;
output  [63:0] grp_fu_5689_p_din1;
input  [63:0] grp_fu_5689_p_dout0;
output   grp_fu_5689_p_ce;
output  [63:0] grp_fu_5693_p_din0;
output  [63:0] grp_fu_5693_p_din1;
input  [63:0] grp_fu_5693_p_dout0;
output   grp_fu_5693_p_ce;
output  [63:0] grp_fu_5697_p_din0;
output  [63:0] grp_fu_5697_p_din1;
input  [63:0] grp_fu_5697_p_dout0;
output   grp_fu_5697_p_ce;
output  [63:0] grp_fu_5701_p_din0;
output  [63:0] grp_fu_5701_p_din1;
input  [63:0] grp_fu_5701_p_dout0;
output   grp_fu_5701_p_ce;
output  [63:0] grp_fu_5705_p_din0;
output  [63:0] grp_fu_5705_p_din1;
input  [63:0] grp_fu_5705_p_dout0;
output   grp_fu_5705_p_ce;
output  [63:0] grp_fu_5709_p_din0;
output  [63:0] grp_fu_5709_p_din1;
input  [63:0] grp_fu_5709_p_dout0;
output   grp_fu_5709_p_ce;
output  [63:0] grp_fu_5713_p_din0;
output  [63:0] grp_fu_5713_p_din1;
input  [63:0] grp_fu_5713_p_dout0;
output   grp_fu_5713_p_ce;
output  [63:0] grp_fu_5717_p_din0;
output  [63:0] grp_fu_5717_p_din1;
input  [63:0] grp_fu_5717_p_dout0;
output   grp_fu_5717_p_ce;
output  [63:0] grp_fu_5721_p_din0;
output  [63:0] grp_fu_5721_p_din1;
input  [63:0] grp_fu_5721_p_dout0;
output   grp_fu_5721_p_ce;
output  [63:0] grp_fu_5725_p_din0;
output  [63:0] grp_fu_5725_p_din1;
input  [63:0] grp_fu_5725_p_dout0;
output   grp_fu_5725_p_ce;
output  [63:0] grp_fu_5729_p_din0;
output  [63:0] grp_fu_5729_p_din1;
input  [63:0] grp_fu_5729_p_dout0;
output   grp_fu_5729_p_ce;
output  [63:0] grp_fu_5733_p_din0;
output  [63:0] grp_fu_5733_p_din1;
input  [63:0] grp_fu_5733_p_dout0;
output   grp_fu_5733_p_ce;
output  [63:0] grp_fu_5737_p_din0;
output  [63:0] grp_fu_5737_p_din1;
input  [63:0] grp_fu_5737_p_dout0;
output   grp_fu_5737_p_ce;
output  [63:0] grp_fu_5741_p_din0;
output  [63:0] grp_fu_5741_p_din1;
input  [63:0] grp_fu_5741_p_dout0;
output   grp_fu_5741_p_ce;
output  [63:0] grp_fu_5745_p_din0;
output  [63:0] grp_fu_5745_p_din1;
input  [63:0] grp_fu_5745_p_dout0;
output   grp_fu_5745_p_ce;
output  [63:0] grp_fu_5749_p_din0;
output  [63:0] grp_fu_5749_p_din1;
input  [63:0] grp_fu_5749_p_dout0;
output   grp_fu_5749_p_ce;
output  [63:0] grp_fu_5753_p_din0;
output  [63:0] grp_fu_5753_p_din1;
input  [63:0] grp_fu_5753_p_dout0;
output   grp_fu_5753_p_ce;
output  [63:0] grp_fu_5757_p_din0;
output  [63:0] grp_fu_5757_p_din1;
input  [63:0] grp_fu_5757_p_dout0;
output   grp_fu_5757_p_ce;
output  [63:0] grp_fu_5761_p_din0;
output  [63:0] grp_fu_5761_p_din1;
input  [63:0] grp_fu_5761_p_dout0;
output   grp_fu_5761_p_ce;
output  [63:0] grp_fu_5765_p_din0;
output  [63:0] grp_fu_5765_p_din1;
input  [63:0] grp_fu_5765_p_dout0;
output   grp_fu_5765_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_14_fu_1018_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_9_reg_1665;
reg   [6:0] i_9_reg_1665_pp0_iter1_reg;
reg   [6:0] i_9_reg_1665_pp0_iter2_reg;
reg   [6:0] i_9_reg_1665_pp0_iter3_reg;
reg   [6:0] i_9_reg_1665_pp0_iter4_reg;
reg   [6:0] i_9_reg_1665_pp0_iter5_reg;
reg   [6:0] i_9_reg_1665_pp0_iter6_reg;
reg   [6:0] i_9_reg_1665_pp0_iter7_reg;
reg   [6:0] i_9_reg_1665_pp0_iter8_reg;
wire   [63:0] tmp_fu_1076_p3;
reg   [63:0] tmp_reg_1756;
wire   [63:0] tmp_s_fu_1084_p3;
reg   [63:0] tmp_s_reg_1763;
wire   [63:0] tmp_315_fu_1092_p3;
reg   [63:0] tmp_315_reg_1770;
wire   [63:0] tmp_316_fu_1100_p3;
reg   [63:0] tmp_316_reg_1777;
wire   [63:0] tmp_317_fu_1108_p3;
reg   [63:0] tmp_317_reg_1784;
wire   [63:0] tmp_318_fu_1116_p3;
reg   [63:0] tmp_318_reg_1791;
wire   [63:0] tmp_319_fu_1124_p3;
reg   [63:0] tmp_319_reg_1798;
reg   [63:0] tmp_319_reg_1798_pp0_iter2_reg;
wire   [63:0] tmp_320_fu_1132_p3;
reg   [63:0] tmp_320_reg_1805;
wire   [0:0] icmp_ln75_fu_1140_p2;
reg   [0:0] icmp_ln75_reg_1812;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter2_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter3_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter4_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter5_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter6_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter7_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter8_reg;
reg   [0:0] icmp_ln75_reg_1812_pp0_iter9_reg;
reg   [63:0] mul_reg_1816;
reg   [63:0] mul_s_reg_1822;
reg   [63:0] mul_8_reg_1828;
reg   [63:0] mul_1_reg_1834;
reg   [63:0] mul_1_1_reg_1840;
reg   [63:0] mul_1_2_reg_1846;
reg   [63:0] mul_2_reg_1852;
reg   [63:0] mul_2_1_reg_1858;
reg   [63:0] mul_2_2_reg_1864;
reg   [63:0] mul_3_reg_1870;
reg   [63:0] mul_3_1_reg_1876;
reg   [63:0] mul_3_2_reg_1882;
reg   [63:0] mul_4_reg_1888;
reg   [63:0] mul_4_1_reg_1894;
reg   [63:0] mul_4_2_reg_1900;
reg   [63:0] mul_5_reg_1906;
reg   [63:0] mul_5_1_reg_1912;
reg   [63:0] mul_5_1_reg_1912_pp0_iter9_reg;
reg   [63:0] mul_5_2_reg_1918;
reg   [63:0] mul_5_2_reg_1918_pp0_iter9_reg;
reg   [63:0] mul_6_2_reg_1924;
reg   [63:0] mul_6_2_reg_1924_pp0_iter9_reg;
reg   [63:0] mul_7_reg_1930;
reg   [63:0] mul_7_reg_1930_pp0_iter9_reg;
reg   [63:0] mul_7_1_reg_1936;
reg   [63:0] mul_7_1_reg_1936_pp0_iter9_reg;
reg   [63:0] mul_7_2_reg_1942;
reg   [63:0] mul_7_2_reg_1942_pp0_iter9_reg;
wire   [7:0] tmp_25_fu_1200_p3;
reg   [7:0] tmp_25_reg_1948;
reg   [3:0] delta_weights3_8_addr_2_reg_1956;
reg   [3:0] delta_weights3_12_addr_2_reg_1961;
reg   [63:0] mul_6_reg_1966;
reg   [63:0] mul_6_1_reg_1972;
reg   [3:0] delta_weights3_13_addr_2_reg_1978;
reg   [3:0] delta_weights3_14_addr_2_reg_1983;
wire   [63:0] zext_ln72_fu_1036_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_1176_p1;
wire   [63:0] zext_ln75_2_fu_1224_p1;
wire   [63:0] zext_ln75_3_fu_1246_p1;
wire   [63:0] zext_ln75_4_fu_1268_p1;
wire   [63:0] zext_ln75_5_fu_1290_p1;
wire   [63:0] zext_ln75_6_fu_1312_p1;
wire   [63:0] zext_ln75_7_fu_1334_p1;
wire   [63:0] zext_ln75_8_fu_1356_p1;
wire   [63:0] zext_ln75_9_fu_1378_p1;
wire   [63:0] zext_ln75_10_fu_1400_p1;
wire   [63:0] zext_ln75_11_fu_1422_p1;
wire   [63:0] zext_ln75_12_fu_1444_p1;
wire   [63:0] zext_ln75_13_fu_1466_p1;
wire   [63:0] zext_ln75_17_fu_1488_p1;
wire   [63:0] zext_ln75_18_fu_1510_p1;
wire   [63:0] zext_ln75_19_fu_1532_p1;
wire   [63:0] zext_ln75_14_fu_1553_p1;
wire   [63:0] zext_ln75_15_fu_1574_p1;
wire   [63:0] zext_ln75_16_fu_1595_p1;
wire   [63:0] zext_ln75_20_fu_1616_p1;
reg   [6:0] i_fu_160;
wire   [6:0] add_ln73_fu_1056_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    last_activations_0_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_15_ce0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [3:0] delta_weights3_0_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [3:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [3:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [3:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [3:0] delta_weights3_4_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [3:0] delta_weights3_5_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [3:0] delta_weights3_6_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [3:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg    delta_weights3_8_we1_local;
reg   [63:0] delta_weights3_8_d1_local;
reg    delta_weights3_8_ce1_local;
reg   [3:0] delta_weights3_8_address1_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg    delta_weights3_9_we1_local;
reg   [63:0] delta_weights3_9_d1_local;
reg    delta_weights3_9_ce1_local;
reg   [3:0] delta_weights3_9_address1_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg    delta_weights3_10_we1_local;
reg   [63:0] delta_weights3_10_d1_local;
reg    delta_weights3_10_ce1_local;
reg   [3:0] delta_weights3_10_address1_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg    delta_weights3_11_we1_local;
reg   [63:0] delta_weights3_11_d1_local;
reg    delta_weights3_11_ce1_local;
reg   [3:0] delta_weights3_11_address1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg    delta_weights3_12_we1_local;
reg   [63:0] delta_weights3_12_d1_local;
reg    delta_weights3_12_ce1_local;
reg   [3:0] delta_weights3_12_address1_local;
reg    delta_weights3_12_we0_local;
reg    delta_weights3_12_ce0_local;
reg    delta_weights3_13_we1_local;
reg   [63:0] delta_weights3_13_d1_local;
reg    delta_weights3_13_ce1_local;
reg   [3:0] delta_weights3_13_address1_local;
reg    delta_weights3_13_we0_local;
reg    delta_weights3_13_ce0_local;
reg    delta_weights3_14_we1_local;
reg   [63:0] delta_weights3_14_d1_local;
reg    delta_weights3_14_ce1_local;
reg   [3:0] delta_weights3_14_address1_local;
reg    delta_weights3_14_we0_local;
reg    delta_weights3_14_ce0_local;
reg    delta_weights3_15_we1_local;
reg   [63:0] delta_weights3_15_d1_local;
reg    delta_weights3_15_ce1_local;
reg   [3:0] delta_weights3_15_address1_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
wire   [1:0] lshr_ln_fu_1026_p4;
wire   [3:0] trunc_ln73_fu_1067_p1;
wire   [0:0] empty_fu_1070_p2;
wire   [5:0] trunc_ln75_fu_1149_p1;
wire   [7:0] p_shl_fu_1152_p3;
wire   [7:0] zext_ln75_fu_1146_p1;
wire   [7:0] sub_ln75_fu_1160_p2;
wire   [3:0] lshr_ln2_fu_1166_p4;
wire   [5:0] tmp_24_fu_1190_p4;
wire   [7:0] add_ln75_fu_1208_p2;
wire   [3:0] lshr_ln75_1_fu_1214_p4;
wire   [7:0] add_ln75_1_fu_1230_p2;
wire   [3:0] lshr_ln75_2_fu_1236_p4;
wire   [7:0] empty_266_fu_1252_p2;
wire   [3:0] lshr_ln75_3_fu_1258_p4;
wire   [7:0] add_ln75_2_fu_1274_p2;
wire   [3:0] lshr_ln75_4_fu_1280_p4;
wire   [7:0] empty_267_fu_1296_p2;
wire   [3:0] lshr_ln75_5_fu_1302_p4;
wire   [7:0] add_ln75_3_fu_1318_p2;
wire   [3:0] lshr_ln75_6_fu_1324_p4;
wire   [7:0] add_ln75_4_fu_1340_p2;
wire   [3:0] lshr_ln75_7_fu_1346_p4;
wire   [7:0] empty_268_fu_1362_p2;
wire   [3:0] lshr_ln75_8_fu_1368_p4;
wire   [7:0] add_ln75_5_fu_1384_p2;
wire   [3:0] lshr_ln75_9_fu_1390_p4;
wire   [7:0] add_ln75_6_fu_1406_p2;
wire   [3:0] lshr_ln75_s_fu_1412_p4;
wire   [7:0] empty_269_fu_1428_p2;
wire   [3:0] lshr_ln75_10_fu_1434_p4;
wire   [7:0] add_ln75_7_fu_1450_p2;
wire   [3:0] lshr_ln75_11_fu_1456_p4;
wire   [7:0] add_ln75_10_fu_1472_p2;
wire   [3:0] lshr_ln75_15_fu_1478_p4;
wire   [7:0] empty_271_fu_1494_p2;
wire   [3:0] lshr_ln75_16_fu_1500_p4;
wire   [7:0] add_ln75_11_fu_1516_p2;
wire   [3:0] lshr_ln75_17_fu_1522_p4;
wire   [7:0] add_ln75_8_fu_1538_p2;
wire   [3:0] lshr_ln75_12_fu_1543_p4;
wire   [7:0] empty_270_fu_1559_p2;
wire   [3:0] lshr_ln75_13_fu_1564_p4;
wire   [7:0] add_ln75_9_fu_1580_p2;
wire   [3:0] lshr_ln75_14_fu_1585_p4;
wire   [7:0] add_ln75_12_fu_1601_p2;
wire   [3:0] lshr_ln75_18_fu_1606_p4;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
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
#0 i_fu_160 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((tmp_14_fu_1018_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_160 <= add_ln73_fu_1056_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_160 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_9_reg_1665 <= ap_sig_allocacmp_i_9;
        i_9_reg_1665_pp0_iter1_reg <= i_9_reg_1665;
        icmp_ln75_reg_1812 <= icmp_ln75_fu_1140_p2;
        tmp_315_reg_1770 <= tmp_315_fu_1092_p3;
        tmp_316_reg_1777 <= tmp_316_fu_1100_p3;
        tmp_317_reg_1784 <= tmp_317_fu_1108_p3;
        tmp_318_reg_1791 <= tmp_318_fu_1116_p3;
        tmp_319_reg_1798 <= tmp_319_fu_1124_p3;
        tmp_320_reg_1805 <= tmp_320_fu_1132_p3;
        tmp_reg_1756 <= tmp_fu_1076_p3;
        tmp_s_reg_1763 <= tmp_s_fu_1084_p3;
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
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        delta_weights3_12_addr_2_reg_1961 <= zext_ln75_17_fu_1488_p1;
        delta_weights3_13_addr_2_reg_1978 <= zext_ln75_18_fu_1510_p1;
        delta_weights3_14_addr_2_reg_1983 <= zext_ln75_19_fu_1532_p1;
        delta_weights3_8_addr_2_reg_1956 <= zext_ln75_13_fu_1466_p1;
        i_9_reg_1665_pp0_iter2_reg <= i_9_reg_1665_pp0_iter1_reg;
        i_9_reg_1665_pp0_iter3_reg <= i_9_reg_1665_pp0_iter2_reg;
        i_9_reg_1665_pp0_iter4_reg <= i_9_reg_1665_pp0_iter3_reg;
        i_9_reg_1665_pp0_iter5_reg <= i_9_reg_1665_pp0_iter4_reg;
        i_9_reg_1665_pp0_iter6_reg <= i_9_reg_1665_pp0_iter5_reg;
        i_9_reg_1665_pp0_iter7_reg <= i_9_reg_1665_pp0_iter6_reg;
        i_9_reg_1665_pp0_iter8_reg <= i_9_reg_1665_pp0_iter7_reg;
        icmp_ln75_reg_1812_pp0_iter2_reg <= icmp_ln75_reg_1812;
        icmp_ln75_reg_1812_pp0_iter3_reg <= icmp_ln75_reg_1812_pp0_iter2_reg;
        icmp_ln75_reg_1812_pp0_iter4_reg <= icmp_ln75_reg_1812_pp0_iter3_reg;
        icmp_ln75_reg_1812_pp0_iter5_reg <= icmp_ln75_reg_1812_pp0_iter4_reg;
        icmp_ln75_reg_1812_pp0_iter6_reg <= icmp_ln75_reg_1812_pp0_iter5_reg;
        icmp_ln75_reg_1812_pp0_iter7_reg <= icmp_ln75_reg_1812_pp0_iter6_reg;
        icmp_ln75_reg_1812_pp0_iter8_reg <= icmp_ln75_reg_1812_pp0_iter7_reg;
        icmp_ln75_reg_1812_pp0_iter9_reg <= icmp_ln75_reg_1812_pp0_iter8_reg;
        mul_1_1_reg_1840 <= grp_fu_5697_p_dout0;
        mul_1_2_reg_1846 <= grp_fu_5701_p_dout0;
        mul_1_reg_1834 <= grp_fu_5693_p_dout0;
        mul_2_1_reg_1858 <= grp_fu_5709_p_dout0;
        mul_2_2_reg_1864 <= grp_fu_5713_p_dout0;
        mul_2_reg_1852 <= grp_fu_5705_p_dout0;
        mul_3_1_reg_1876 <= grp_fu_5721_p_dout0;
        mul_3_2_reg_1882 <= grp_fu_5725_p_dout0;
        mul_3_reg_1870 <= grp_fu_5717_p_dout0;
        mul_4_1_reg_1894 <= grp_fu_5733_p_dout0;
        mul_4_2_reg_1900 <= grp_fu_5737_p_dout0;
        mul_4_reg_1888 <= grp_fu_5729_p_dout0;
        mul_5_1_reg_1912 <= grp_fu_5745_p_dout0;
        mul_5_1_reg_1912_pp0_iter9_reg <= mul_5_1_reg_1912;
        mul_5_2_reg_1918 <= grp_fu_5749_p_dout0;
        mul_5_2_reg_1918_pp0_iter9_reg <= mul_5_2_reg_1918;
        mul_5_reg_1906 <= grp_fu_5741_p_dout0;
        mul_6_1_reg_1972 <= grp_fu_5677_p_dout0;
        mul_6_2_reg_1924 <= grp_fu_5753_p_dout0;
        mul_6_2_reg_1924_pp0_iter9_reg <= mul_6_2_reg_1924;
        mul_6_reg_1966 <= grp_fu_3932_p_dout0;
        mul_7_1_reg_1936 <= grp_fu_5761_p_dout0;
        mul_7_1_reg_1936_pp0_iter9_reg <= mul_7_1_reg_1936;
        mul_7_2_reg_1942 <= grp_fu_5765_p_dout0;
        mul_7_2_reg_1942_pp0_iter9_reg <= mul_7_2_reg_1942;
        mul_7_reg_1930 <= grp_fu_5757_p_dout0;
        mul_7_reg_1930_pp0_iter9_reg <= mul_7_reg_1930;
        mul_8_reg_1828 <= grp_fu_5689_p_dout0;
        mul_reg_1816 <= grp_fu_5681_p_dout0;
        mul_s_reg_1822 <= grp_fu_5685_p_dout0;
        tmp_25_reg_1948[7 : 2] <= tmp_25_fu_1200_p3[7 : 2];
        tmp_319_reg_1798_pp0_iter2_reg <= tmp_319_reg_1798;
    end
end
always @ (*) begin
    if (((tmp_14_fu_1018_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_0_address0_local = zext_ln75_13_fu_1466_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_0_address0_local = zext_ln75_5_fu_1290_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_0_d0_local = mul_5_1_reg_1912;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_0_d0_local = mul_2_2_reg_1864;
        end else begin
            delta_weights3_0_d0_local = 'bx;
        end
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_10_address1_local = zext_ln75_7_fu_1334_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_10_address1_local = zext_ln75_1_fu_1176_p1;
        end else begin
            delta_weights3_10_address1_local = 'bx;
        end
    end else begin
        delta_weights3_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_10_d1_local = mul_3_1_reg_1876;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_10_d1_local = mul_8_reg_1828;
        end else begin
            delta_weights3_10_d1_local = 'bx;
        end
    end else begin
        delta_weights3_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_11_address1_local = zext_ln75_8_fu_1356_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_11_address1_local = zext_ln75_1_fu_1176_p1;
        end else begin
            delta_weights3_11_address1_local = 'bx;
        end
    end else begin
        delta_weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_11_d1_local = mul_3_2_reg_1882;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_11_d1_local = mul_1_reg_1834;
        end else begin
            delta_weights3_11_d1_local = 'bx;
        end
    end else begin
        delta_weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_12_address1_local = zext_ln75_9_fu_1378_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_12_address1_local = zext_ln75_2_fu_1224_p1;
        end else begin
            delta_weights3_12_address1_local = 'bx;
        end
    end else begin
        delta_weights3_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_12_d1_local = mul_4_reg_1888;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_12_d1_local = mul_1_1_reg_1840;
        end else begin
            delta_weights3_12_d1_local = 'bx;
        end
    end else begin
        delta_weights3_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_13_address1_local = zext_ln75_10_fu_1400_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_13_address1_local = zext_ln75_3_fu_1246_p1;
        end else begin
            delta_weights3_13_address1_local = 'bx;
        end
    end else begin
        delta_weights3_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_13_d1_local = mul_4_1_reg_1894;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_13_d1_local = mul_1_2_reg_1846;
        end else begin
            delta_weights3_13_d1_local = 'bx;
        end
    end else begin
        delta_weights3_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_14_address1_local = zext_ln75_11_fu_1422_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_14_address1_local = zext_ln75_4_fu_1268_p1;
        end else begin
            delta_weights3_14_address1_local = 'bx;
        end
    end else begin
        delta_weights3_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_14_d1_local = mul_4_2_reg_1900;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_14_d1_local = mul_2_reg_1852;
        end else begin
            delta_weights3_14_d1_local = 'bx;
        end
    end else begin
        delta_weights3_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_15_address1_local = zext_ln75_12_fu_1444_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_15_address1_local = zext_ln75_1_fu_1176_p1;
        end else begin
            delta_weights3_15_address1_local = 'bx;
        end
    end else begin
        delta_weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_15_d1_local = mul_5_reg_1906;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_15_d1_local = mul_2_1_reg_1858;
        end else begin
            delta_weights3_15_d1_local = 'bx;
        end
    end else begin
        delta_weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_address1_local = zext_ln75_1_fu_1176_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_address1_local = zext_ln75_6_fu_1312_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_d1_local = mul_s_reg_1822;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_d1_local = mul_3_reg_1870;
        end else begin
            delta_weights3_1_d1_local = 'bx;
        end
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd1) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_address1_local = zext_ln75_1_fu_1176_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_address1_local = zext_ln75_7_fu_1334_p1;
        end else begin
            delta_weights3_2_address1_local = 'bx;
        end
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_d1_local = mul_8_reg_1828;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_d1_local = mul_3_1_reg_1876;
        end else begin
            delta_weights3_2_d1_local = 'bx;
        end
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd1) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_1176_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_address1_local = zext_ln75_8_fu_1356_p1;
        end else begin
            delta_weights3_3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_d1_local = mul_1_reg_1834;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_d1_local = mul_3_2_reg_1882;
        end else begin
            delta_weights3_3_d1_local = 'bx;
        end
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd1) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_address0_local = zext_ln75_17_fu_1488_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_address0_local = zext_ln75_9_fu_1378_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_d0_local = mul_6_2_reg_1924;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_d0_local = mul_4_reg_1888;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_address0_local = zext_ln75_18_fu_1510_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_address0_local = zext_ln75_10_fu_1400_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_d0_local = mul_7_reg_1930;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_d0_local = mul_4_1_reg_1894;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_address0_local = zext_ln75_19_fu_1532_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_address0_local = zext_ln75_11_fu_1422_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_d0_local = mul_7_1_reg_1936;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_d0_local = mul_4_2_reg_1900;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_address1_local = zext_ln75_1_fu_1176_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_address1_local = zext_ln75_12_fu_1444_p1;
        end else begin
            delta_weights3_7_address1_local = 'bx;
        end
    end else begin
        delta_weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_d1_local = mul_2_1_reg_1858;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_d1_local = mul_5_reg_1906;
        end else begin
            delta_weights3_7_d1_local = 'bx;
        end
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd1) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_8_address1_local = zext_ln75_5_fu_1290_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_8_address1_local = zext_ln75_1_fu_1176_p1;
        end else begin
            delta_weights3_8_address1_local = 'bx;
        end
    end else begin
        delta_weights3_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_8_d1_local = mul_2_2_reg_1864;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_8_d1_local = mul_reg_1816;
        end else begin
            delta_weights3_8_d1_local = 'bx;
        end
    end else begin
        delta_weights3_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_9_address1_local = zext_ln75_6_fu_1312_p1;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_9_address1_local = zext_ln75_1_fu_1176_p1;
        end else begin
            delta_weights3_9_address1_local = 'bx;
        end
    end else begin
        delta_weights3_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_9_d1_local = mul_3_reg_1870;
        end else if ((icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_9_d1_local = mul_s_reg_1822;
        end else begin
            delta_weights3_9_d1_local = 'bx;
        end
    end else begin
        delta_weights3_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter9_reg == 1'd0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln75_reg_1812_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_1056_p2 = (ap_sig_allocacmp_i_9 + 7'd8);
assign add_ln75_10_fu_1472_p2 = (tmp_25_fu_1200_p3 + 8'd17);
assign add_ln75_11_fu_1516_p2 = (tmp_25_fu_1200_p3 + 8'd19);
assign add_ln75_12_fu_1601_p2 = (tmp_25_reg_1948 + 8'd20);
assign add_ln75_1_fu_1230_p2 = (tmp_25_fu_1200_p3 + 8'd2);
assign add_ln75_2_fu_1274_p2 = (tmp_25_fu_1200_p3 + 8'd5);
assign add_ln75_3_fu_1318_p2 = (tmp_25_fu_1200_p3 + 8'd7);
assign add_ln75_4_fu_1340_p2 = (tmp_25_fu_1200_p3 + 8'd8);
assign add_ln75_5_fu_1384_p2 = (tmp_25_fu_1200_p3 + 8'd10);
assign add_ln75_6_fu_1406_p2 = (tmp_25_fu_1200_p3 + 8'd11);
assign add_ln75_7_fu_1450_p2 = (tmp_25_fu_1200_p3 + 8'd13);
assign add_ln75_8_fu_1538_p2 = (tmp_25_reg_1948 + 8'd14);
assign add_ln75_9_fu_1580_p2 = (tmp_25_reg_1948 + 8'd16);
assign add_ln75_fu_1208_p2 = (tmp_25_fu_1200_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = zext_ln75_1_fu_1176_p1;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = mul_reg_1816;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = zext_ln75_15_fu_1574_p1;
assign delta_weights3_10_address1 = delta_weights3_10_address1_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = mul_6_reg_1966;
assign delta_weights3_10_d1 = delta_weights3_10_d1_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = zext_ln75_16_fu_1595_p1;
assign delta_weights3_11_address1 = delta_weights3_11_address1_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = mul_6_1_reg_1972;
assign delta_weights3_11_d1 = delta_weights3_11_d1_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_addr_2_reg_1961;
assign delta_weights3_12_address1 = delta_weights3_12_address1_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = mul_6_2_reg_1924_pp0_iter9_reg;
assign delta_weights3_12_d1 = delta_weights3_12_d1_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_addr_2_reg_1978;
assign delta_weights3_13_address1 = delta_weights3_13_address1_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = mul_7_reg_1930_pp0_iter9_reg;
assign delta_weights3_13_d1 = delta_weights3_13_d1_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_addr_2_reg_1983;
assign delta_weights3_14_address1 = delta_weights3_14_address1_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = mul_7_1_reg_1936_pp0_iter9_reg;
assign delta_weights3_14_d1 = delta_weights3_14_d1_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = zext_ln75_20_fu_1616_p1;
assign delta_weights3_15_address1 = delta_weights3_15_address1_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = mul_7_2_reg_1942_pp0_iter9_reg;
assign delta_weights3_15_d1 = delta_weights3_15_d1_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_1_address0 = zext_ln75_14_fu_1553_p1;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_5_2_reg_1918_pp0_iter9_reg;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = zext_ln75_15_fu_1574_p1;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_6_reg_1966;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = zext_ln75_16_fu_1595_p1;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_6_1_reg_1972;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = zext_ln75_2_fu_1224_p1;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = mul_1_1_reg_1840;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = zext_ln75_3_fu_1246_p1;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = mul_1_2_reg_1846;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = zext_ln75_4_fu_1268_p1;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = mul_2_reg_1852;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = zext_ln75_20_fu_1616_p1;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_7_2_reg_1942_pp0_iter9_reg;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_addr_2_reg_1956;
assign delta_weights3_8_address1 = delta_weights3_8_address1_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = mul_5_1_reg_1912_pp0_iter9_reg;
assign delta_weights3_8_d1 = delta_weights3_8_d1_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = zext_ln75_14_fu_1553_p1;
assign delta_weights3_9_address1 = delta_weights3_9_address1_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = mul_5_2_reg_1918_pp0_iter9_reg;
assign delta_weights3_9_d1 = delta_weights3_9_d1_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign empty_266_fu_1252_p2 = (tmp_25_fu_1200_p3 + 8'd3);
assign empty_267_fu_1296_p2 = (tmp_25_fu_1200_p3 + 8'd6);
assign empty_268_fu_1362_p2 = (tmp_25_fu_1200_p3 + 8'd9);
assign empty_269_fu_1428_p2 = (tmp_25_fu_1200_p3 + 8'd12);
assign empty_270_fu_1559_p2 = (tmp_25_reg_1948 + 8'd15);
assign empty_271_fu_1494_p2 = (tmp_25_fu_1200_p3 + 8'd18);
assign empty_fu_1070_p2 = ((trunc_ln73_fu_1067_p1 != 4'd0) ? 1'b1 : 1'b0);
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = tmp_319_reg_1798_pp0_iter2_reg;
assign grp_fu_3932_p_din1 = output_difference_0_0_val;
assign grp_fu_5677_p_ce = 1'b1;
assign grp_fu_5677_p_din0 = tmp_319_reg_1798_pp0_iter2_reg;
assign grp_fu_5677_p_din1 = output_difference_0_1_val;
assign grp_fu_5681_p_ce = 1'b1;
assign grp_fu_5681_p_din0 = tmp_reg_1756;
assign grp_fu_5681_p_din1 = output_difference_0_0_val;
assign grp_fu_5685_p_ce = 1'b1;
assign grp_fu_5685_p_din0 = tmp_reg_1756;
assign grp_fu_5685_p_din1 = output_difference_0_1_val;
assign grp_fu_5689_p_ce = 1'b1;
assign grp_fu_5689_p_din0 = tmp_reg_1756;
assign grp_fu_5689_p_din1 = output_difference_0_2_val;
assign grp_fu_5693_p_ce = 1'b1;
assign grp_fu_5693_p_din0 = tmp_s_reg_1763;
assign grp_fu_5693_p_din1 = output_difference_0_0_val;
assign grp_fu_5697_p_ce = 1'b1;
assign grp_fu_5697_p_din0 = tmp_s_reg_1763;
assign grp_fu_5697_p_din1 = output_difference_0_1_val;
assign grp_fu_5701_p_ce = 1'b1;
assign grp_fu_5701_p_din0 = tmp_s_reg_1763;
assign grp_fu_5701_p_din1 = output_difference_0_2_val;
assign grp_fu_5705_p_ce = 1'b1;
assign grp_fu_5705_p_din0 = tmp_315_reg_1770;
assign grp_fu_5705_p_din1 = output_difference_0_0_val;
assign grp_fu_5709_p_ce = 1'b1;
assign grp_fu_5709_p_din0 = tmp_315_reg_1770;
assign grp_fu_5709_p_din1 = output_difference_0_1_val;
assign grp_fu_5713_p_ce = 1'b1;
assign grp_fu_5713_p_din0 = tmp_315_reg_1770;
assign grp_fu_5713_p_din1 = output_difference_0_2_val;
assign grp_fu_5717_p_ce = 1'b1;
assign grp_fu_5717_p_din0 = tmp_316_reg_1777;
assign grp_fu_5717_p_din1 = output_difference_0_0_val;
assign grp_fu_5721_p_ce = 1'b1;
assign grp_fu_5721_p_din0 = tmp_316_reg_1777;
assign grp_fu_5721_p_din1 = output_difference_0_1_val;
assign grp_fu_5725_p_ce = 1'b1;
assign grp_fu_5725_p_din0 = tmp_316_reg_1777;
assign grp_fu_5725_p_din1 = output_difference_0_2_val;
assign grp_fu_5729_p_ce = 1'b1;
assign grp_fu_5729_p_din0 = tmp_317_reg_1784;
assign grp_fu_5729_p_din1 = output_difference_0_0_val;
assign grp_fu_5733_p_ce = 1'b1;
assign grp_fu_5733_p_din0 = tmp_317_reg_1784;
assign grp_fu_5733_p_din1 = output_difference_0_1_val;
assign grp_fu_5737_p_ce = 1'b1;
assign grp_fu_5737_p_din0 = tmp_317_reg_1784;
assign grp_fu_5737_p_din1 = output_difference_0_2_val;
assign grp_fu_5741_p_ce = 1'b1;
assign grp_fu_5741_p_din0 = tmp_318_reg_1791;
assign grp_fu_5741_p_din1 = output_difference_0_0_val;
assign grp_fu_5745_p_ce = 1'b1;
assign grp_fu_5745_p_din0 = tmp_318_reg_1791;
assign grp_fu_5745_p_din1 = output_difference_0_1_val;
assign grp_fu_5749_p_ce = 1'b1;
assign grp_fu_5749_p_din0 = tmp_318_reg_1791;
assign grp_fu_5749_p_din1 = output_difference_0_2_val;
assign grp_fu_5753_p_ce = 1'b1;
assign grp_fu_5753_p_din0 = tmp_319_reg_1798;
assign grp_fu_5753_p_din1 = output_difference_0_2_val;
assign grp_fu_5757_p_ce = 1'b1;
assign grp_fu_5757_p_din0 = tmp_320_reg_1805;
assign grp_fu_5757_p_din1 = output_difference_0_0_val;
assign grp_fu_5761_p_ce = 1'b1;
assign grp_fu_5761_p_din0 = tmp_320_reg_1805;
assign grp_fu_5761_p_din1 = output_difference_0_1_val;
assign grp_fu_5765_p_ce = 1'b1;
assign grp_fu_5765_p_din0 = tmp_320_reg_1805;
assign grp_fu_5765_p_din1 = output_difference_0_2_val;
assign icmp_ln75_fu_1140_p2 = ((trunc_ln73_fu_1067_p1 == 4'd0) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln72_fu_1036_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln72_fu_1036_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln72_fu_1036_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln72_fu_1036_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln72_fu_1036_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln72_fu_1036_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln72_fu_1036_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = zext_ln72_fu_1036_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln72_fu_1036_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln72_fu_1036_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln72_fu_1036_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln72_fu_1036_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln72_fu_1036_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln72_fu_1036_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln72_fu_1036_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln72_fu_1036_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln2_fu_1166_p4 = {{sub_ln75_fu_1160_p2[7:4]}};
assign lshr_ln75_10_fu_1434_p4 = {{empty_269_fu_1428_p2[7:4]}};
assign lshr_ln75_11_fu_1456_p4 = {{add_ln75_7_fu_1450_p2[7:4]}};
assign lshr_ln75_12_fu_1543_p4 = {{add_ln75_8_fu_1538_p2[7:4]}};
assign lshr_ln75_13_fu_1564_p4 = {{empty_270_fu_1559_p2[7:4]}};
assign lshr_ln75_14_fu_1585_p4 = {{add_ln75_9_fu_1580_p2[7:4]}};
assign lshr_ln75_15_fu_1478_p4 = {{add_ln75_10_fu_1472_p2[7:4]}};
assign lshr_ln75_16_fu_1500_p4 = {{empty_271_fu_1494_p2[7:4]}};
assign lshr_ln75_17_fu_1522_p4 = {{add_ln75_11_fu_1516_p2[7:4]}};
assign lshr_ln75_18_fu_1606_p4 = {{add_ln75_12_fu_1601_p2[7:4]}};
assign lshr_ln75_1_fu_1214_p4 = {{add_ln75_fu_1208_p2[7:4]}};
assign lshr_ln75_2_fu_1236_p4 = {{add_ln75_1_fu_1230_p2[7:4]}};
assign lshr_ln75_3_fu_1258_p4 = {{empty_266_fu_1252_p2[7:4]}};
assign lshr_ln75_4_fu_1280_p4 = {{add_ln75_2_fu_1274_p2[7:4]}};
assign lshr_ln75_5_fu_1302_p4 = {{empty_267_fu_1296_p2[7:4]}};
assign lshr_ln75_6_fu_1324_p4 = {{add_ln75_3_fu_1318_p2[7:4]}};
assign lshr_ln75_7_fu_1346_p4 = {{add_ln75_4_fu_1340_p2[7:4]}};
assign lshr_ln75_8_fu_1368_p4 = {{empty_268_fu_1362_p2[7:4]}};
assign lshr_ln75_9_fu_1390_p4 = {{add_ln75_5_fu_1384_p2[7:4]}};
assign lshr_ln75_s_fu_1412_p4 = {{add_ln75_6_fu_1406_p2[7:4]}};
assign lshr_ln_fu_1026_p4 = {{ap_sig_allocacmp_i_9[5:4]}};
assign p_shl_fu_1152_p3 = {{trunc_ln75_fu_1149_p1}, {2'd0}};
assign sub_ln75_fu_1160_p2 = (p_shl_fu_1152_p3 - zext_ln75_fu_1146_p1);
assign tmp_14_fu_1018_p3 = ap_sig_allocacmp_i_9[32'd6];
assign tmp_24_fu_1190_p4 = {{sub_ln75_fu_1160_p2[7:2]}};
assign tmp_25_fu_1200_p3 = {{tmp_24_fu_1190_p4}, {2'd3}};
assign tmp_315_fu_1092_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_10_q0 : last_activations_2_q0);
assign tmp_316_fu_1100_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_11_q0 : last_activations_3_q0);
assign tmp_317_fu_1108_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_12_q0 : last_activations_4_q0);
assign tmp_318_fu_1116_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_13_q0 : last_activations_5_q0);
assign tmp_319_fu_1124_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_14_q0 : last_activations_6_q0);
assign tmp_320_fu_1132_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_15_q0 : last_activations_7_q0);
assign tmp_fu_1076_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_8_q0 : last_activations_0_q0);
assign tmp_s_fu_1084_p3 = ((empty_fu_1070_p2[0:0] == 1'b1) ? last_activations_9_q0 : last_activations_1_q0);
assign trunc_ln73_fu_1067_p1 = i_9_reg_1665[3:0];
assign trunc_ln75_fu_1149_p1 = i_9_reg_1665_pp0_iter8_reg[5:0];
assign zext_ln72_fu_1036_p1 = lshr_ln_fu_1026_p4;
assign zext_ln75_10_fu_1400_p1 = lshr_ln75_9_fu_1390_p4;
assign zext_ln75_11_fu_1422_p1 = lshr_ln75_s_fu_1412_p4;
assign zext_ln75_12_fu_1444_p1 = lshr_ln75_10_fu_1434_p4;
assign zext_ln75_13_fu_1466_p1 = lshr_ln75_11_fu_1456_p4;
assign zext_ln75_14_fu_1553_p1 = lshr_ln75_12_fu_1543_p4;
assign zext_ln75_15_fu_1574_p1 = lshr_ln75_13_fu_1564_p4;
assign zext_ln75_16_fu_1595_p1 = lshr_ln75_14_fu_1585_p4;
assign zext_ln75_17_fu_1488_p1 = lshr_ln75_15_fu_1478_p4;
assign zext_ln75_18_fu_1510_p1 = lshr_ln75_16_fu_1500_p4;
assign zext_ln75_19_fu_1532_p1 = lshr_ln75_17_fu_1522_p4;
assign zext_ln75_1_fu_1176_p1 = lshr_ln2_fu_1166_p4;
assign zext_ln75_20_fu_1616_p1 = lshr_ln75_18_fu_1606_p4;
assign zext_ln75_2_fu_1224_p1 = lshr_ln75_1_fu_1214_p4;
assign zext_ln75_3_fu_1246_p1 = lshr_ln75_2_fu_1236_p4;
assign zext_ln75_4_fu_1268_p1 = lshr_ln75_3_fu_1258_p4;
assign zext_ln75_5_fu_1290_p1 = lshr_ln75_4_fu_1280_p4;
assign zext_ln75_6_fu_1312_p1 = lshr_ln75_5_fu_1302_p4;
assign zext_ln75_7_fu_1334_p1 = lshr_ln75_6_fu_1324_p4;
assign zext_ln75_8_fu_1356_p1 = lshr_ln75_7_fu_1346_p4;
assign zext_ln75_9_fu_1378_p1 = lshr_ln75_8_fu_1368_p4;
assign zext_ln75_fu_1146_p1 = i_9_reg_1665_pp0_iter8_reg;
always @ (posedge ap_clk) begin
    tmp_25_reg_1948[1:0] <= 2'b11;
end
endmodule 