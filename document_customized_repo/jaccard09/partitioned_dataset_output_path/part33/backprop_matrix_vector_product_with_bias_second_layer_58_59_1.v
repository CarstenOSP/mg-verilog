
module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,biases2_8_address0,biases2_8_ce0,biases2_8_q0,biases2_9_address0,biases2_9_ce0,biases2_9_q0,biases2_10_address0,biases2_10_ce0,biases2_10_q0,biases2_11_address0,biases2_11_ce0,biases2_11_q0,biases2_12_address0,biases2_12_ce0,biases2_12_q0,biases2_13_address0,biases2_13_ce0,biases2_13_q0,biases2_14_address0,biases2_14_ce0,biases2_14_q0,biases2_15_address0,biases2_15_ce0,biases2_15_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_q1,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_q1,activations_8_address0,activations_8_ce0,activations_8_we0,activations_8_d0,activations_8_address1,activations_8_ce1,activations_8_q1,activations_9_address0,activations_9_ce0,activations_9_we0,activations_9_d0,activations_9_address1,activations_9_ce1,activations_9_q1,activations_10_address0,activations_10_ce0,activations_10_we0,activations_10_d0,activations_10_address1,activations_10_ce1,activations_10_q1,activations_11_address0,activations_11_ce0,activations_11_we0,activations_11_d0,activations_11_address1,activations_11_ce1,activations_11_q1,activations_12_address0,activations_12_ce0,activations_12_we0,activations_12_d0,activations_12_address1,activations_12_ce1,activations_12_q1,activations_13_address0,activations_13_ce0,activations_13_we0,activations_13_d0,activations_13_address1,activations_13_ce1,activations_13_q1,activations_14_address0,activations_14_ce0,activations_14_we0,activations_14_d0,activations_14_address1,activations_14_ce1,activations_14_q1,activations_15_address0,activations_15_ce0,activations_15_we0,activations_15_d0,activations_15_address1,activations_15_ce1,activations_15_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_8_address0,input_activations_8_ce0,input_activations_8_q0,input_activations_9_address0,input_activations_9_ce0,input_activations_9_q0,input_activations_10_address0,input_activations_10_ce0,input_activations_10_q0,input_activations_11_address0,input_activations_11_ce0,input_activations_11_q0,input_activations_12_address0,input_activations_12_ce0,input_activations_12_q0,input_activations_13_address0,input_activations_13_ce0,input_activations_13_q0,input_activations_14_address0,input_activations_14_ce0,input_activations_14_q0,input_activations_15_address0,input_activations_15_ce0,input_activations_15_q0,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_dout0,grp_fu_4660_p_ce);  
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
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
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
output  [1:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [1:0] input_activations_2_address0;
output   input_activations_2_ce0;
input  [63:0] input_activations_2_q0;
output  [1:0] input_activations_3_address0;
output   input_activations_3_ce0;
input  [63:0] input_activations_3_q0;
output  [1:0] input_activations_4_address0;
output   input_activations_4_ce0;
input  [63:0] input_activations_4_q0;
output  [1:0] input_activations_5_address0;
output   input_activations_5_ce0;
input  [63:0] input_activations_5_q0;
output  [1:0] input_activations_6_address0;
output   input_activations_6_ce0;
input  [63:0] input_activations_6_q0;
output  [1:0] input_activations_7_address0;
output   input_activations_7_ce0;
input  [63:0] input_activations_7_q0;
output  [1:0] input_activations_8_address0;
output   input_activations_8_ce0;
input  [63:0] input_activations_8_q0;
output  [1:0] input_activations_9_address0;
output   input_activations_9_ce0;
input  [63:0] input_activations_9_q0;
output  [1:0] input_activations_10_address0;
output   input_activations_10_ce0;
input  [63:0] input_activations_10_q0;
output  [1:0] input_activations_11_address0;
output   input_activations_11_ce0;
input  [63:0] input_activations_11_q0;
output  [1:0] input_activations_12_address0;
output   input_activations_12_ce0;
input  [63:0] input_activations_12_q0;
output  [1:0] input_activations_13_address0;
output   input_activations_13_ce0;
input  [63:0] input_activations_13_q0;
output  [1:0] input_activations_14_address0;
output   input_activations_14_ce0;
input  [63:0] input_activations_14_q0;
output  [1:0] input_activations_15_address0;
output   input_activations_15_ce0;
input  [63:0] input_activations_15_q0;
output  [63:0] grp_fu_4564_p_din0;
output  [63:0] grp_fu_4564_p_din1;
output  [0:0] grp_fu_4564_p_opcode;
input  [63:0] grp_fu_4564_p_dout0;
output   grp_fu_4564_p_ce;
output  [63:0] grp_fu_4660_p_din0;
output  [63:0] grp_fu_4660_p_din1;
input  [63:0] grp_fu_4660_p_dout0;
output   grp_fu_4660_p_ce;
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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln44_fu_566_p2;
reg   [6:0] add_ln44_reg_649;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln44_fu_572_p1;
reg   [5:0] trunc_ln44_reg_654;
wire   [3:0] trunc_ln44_1_fu_577_p1;
reg   [3:0] trunc_ln44_1_reg_659;
reg   [1:0] lshr_ln43_1_reg_663;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_ready;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_ready;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_d0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_ce0;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg;
wire   [0:0] icmp_ln44_fu_560_p2;
wire    ap_CS_fsm_state3;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln45_fu_610_p1;
wire    ap_CS_fsm_state4;
reg   [6:0] i_fu_198;
reg    activations_14_we0_local;
reg    activations_14_ce0_local;
reg    activations_13_we0_local;
reg    activations_13_ce0_local;
reg    activations_12_we0_local;
reg    activations_12_ce0_local;
reg    activations_11_we0_local;
reg    activations_11_ce0_local;
reg    activations_10_we0_local;
reg    activations_10_ce0_local;
reg    activations_9_we0_local;
reg    activations_9_ce0_local;
reg    activations_8_we0_local;
reg    activations_8_ce0_local;
reg    activations_7_we0_local;
reg    activations_7_ce0_local;
reg    activations_6_we0_local;
reg    activations_6_ce0_local;
reg    activations_5_we0_local;
reg    activations_5_ce0_local;
reg    activations_4_we0_local;
reg    activations_4_ce0_local;
reg    activations_3_we0_local;
reg    activations_3_ce0_local;
reg    activations_2_we0_local;
reg    activations_2_ce0_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_15_we0_local;
reg    activations_15_ce0_local;
reg   [63:0] grp_fu_668_p0;
reg   [63:0] grp_fu_668_p1;
reg   [1:0] grp_fu_668_opcode;
reg    grp_fu_668_ce;
reg    grp_fu_672_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg = 1'b0;
#0 i_fu_198 = 7'd0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_ready),.i(trunc_ln44_reg_654),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.input_activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_ce0),.input_activations_0_q0(input_activations_0_q0),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.input_activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_ce0),.input_activations_1_q0(input_activations_1_q0),.weights2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_address0),.weights2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.input_activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_address0),.input_activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_ce0),.input_activations_2_q0(input_activations_2_q0),.weights2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_address0),.weights2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.input_activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_address0),.input_activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_ce0),.input_activations_3_q0(input_activations_3_q0),.weights2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_address0),.weights2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.input_activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_address0),.input_activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_ce0),.input_activations_4_q0(input_activations_4_q0),.weights2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_address0),.weights2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.input_activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_address0),.input_activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_ce0),.input_activations_5_q0(input_activations_5_q0),.weights2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_address0),.weights2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.input_activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_address0),.input_activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_ce0),.input_activations_6_q0(input_activations_6_q0),.weights2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_address0),.weights2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.input_activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_address0),.input_activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_ce0),.input_activations_7_q0(input_activations_7_q0),.weights2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_address0),.weights2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.input_activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_address0),.input_activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_ce0),.input_activations_8_q0(input_activations_8_q0),.weights2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_address0),.weights2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.input_activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_address0),.input_activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_ce0),.input_activations_9_q0(input_activations_9_q0),.weights2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_address0),.weights2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.input_activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_address0),.input_activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_ce0),.input_activations_10_q0(input_activations_10_q0),.weights2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_address0),.weights2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.input_activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_address0),.input_activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_ce0),.input_activations_11_q0(input_activations_11_q0),.weights2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_address0),.weights2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.input_activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_address0),.input_activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_ce0),.input_activations_12_q0(input_activations_12_q0),.weights2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_address0),.weights2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.input_activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_address0),.input_activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_ce0),.input_activations_13_q0(input_activations_13_q0),.weights2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_address0),.weights2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.input_activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_address0),.input_activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_ce0),.input_activations_14_q0(input_activations_14_q0),.weights2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_address0),.weights2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.input_activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_address0),.input_activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_ce0),.input_activations_15_q0(input_activations_15_q0),.add114_out(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out),.add114_out_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out_ap_vld),.grp_fu_668_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din0),.grp_fu_668_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din1),.grp_fu_668_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_opcode),.grp_fu_668_p_dout0(grp_fu_4564_p_dout0),.grp_fu_668_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_ce),.grp_fu_672_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din0),.grp_fu_672_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din1),.grp_fu_672_p_dout0(grp_fu_4660_p_dout0),.grp_fu_672_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_ready),.activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address0),.activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce0),.activations_15_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_we0),.activations_15_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_d0),.activations_15_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address1),.activations_15_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce1),.activations_15_q1(activations_15_q1),.activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address0),.activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce0),.activations_14_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_we0),.activations_14_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_d0),.activations_14_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address1),.activations_14_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce1),.activations_14_q1(activations_14_q1),.activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address0),.activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce0),.activations_13_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_we0),.activations_13_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_d0),.activations_13_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address1),.activations_13_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce1),.activations_13_q1(activations_13_q1),.activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address0),.activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce0),.activations_12_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_we0),.activations_12_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_d0),.activations_12_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address1),.activations_12_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce1),.activations_12_q1(activations_12_q1),.activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address0),.activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce0),.activations_11_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_we0),.activations_11_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_d0),.activations_11_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address1),.activations_11_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce1),.activations_11_q1(activations_11_q1),.activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address0),.activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce0),.activations_10_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_we0),.activations_10_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_d0),.activations_10_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address1),.activations_10_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce1),.activations_10_q1(activations_10_q1),.activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address0),.activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce0),.activations_9_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_we0),.activations_9_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_d0),.activations_9_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address1),.activations_9_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce1),.activations_9_q1(activations_9_q1),.activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address0),.activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce0),.activations_8_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_we0),.activations_8_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_d0),.activations_8_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address1),.activations_8_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce1),.activations_8_q1(activations_8_q1),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce1),.activations_7_q1(activations_7_q1),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce1),.activations_6_q1(activations_6_q1),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce1),.activations_5_q1(activations_5_q1),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce1),.activations_4_q1(activations_4_q1),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.biases2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_address0),.biases2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_ce0),.biases2_2_q0(biases2_2_q0),.biases2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_address0),.biases2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_ce0),.biases2_3_q0(biases2_3_q0),.biases2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_address0),.biases2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_ce0),.biases2_4_q0(biases2_4_q0),.biases2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_address0),.biases2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_ce0),.biases2_5_q0(biases2_5_q0),.biases2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_address0),.biases2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_ce0),.biases2_6_q0(biases2_6_q0),.biases2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_address0),.biases2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_ce0),.biases2_7_q0(biases2_7_q0),.biases2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_address0),.biases2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_ce0),.biases2_8_q0(biases2_8_q0),.biases2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_address0),.biases2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_ce0),.biases2_9_q0(biases2_9_q0),.biases2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_address0),.biases2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_ce0),.biases2_10_q0(biases2_10_q0),.biases2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_address0),.biases2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_ce0),.biases2_11_q0(biases2_11_q0),.biases2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_address0),.biases2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_ce0),.biases2_12_q0(biases2_12_q0),.biases2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_address0),.biases2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_ce0),.biases2_13_q0(biases2_13_q0),.biases2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_address0),.biases2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_ce0),.biases2_14_q0(biases2_14_q0),.biases2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_address0),.biases2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_ce0),.biases2_15_q0(biases2_15_q0),.grp_fu_668_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din0),.grp_fu_668_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din1),.grp_fu_668_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_opcode),.grp_fu_668_p_dout0(grp_fu_4564_p_dout0),.grp_fu_668_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_fu_560_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_198 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_198 <= add_ln44_reg_649;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln44_reg_649 <= add_ln44_fu_566_p2;
        lshr_ln43_1_reg_663 <= {{i_fu_198[5:4]}};
        trunc_ln44_1_reg_659 <= trunc_ln44_1_fu_577_p1;
        trunc_ln44_reg_654 <= trunc_ln44_fu_572_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address0;
    end else begin
        activations_0_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce0;
    end else begin
        activations_0_ce0 = activations_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_d0;
    end else begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_we0;
    end else begin
        activations_0_we0 = activations_0_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address0;
    end else begin
        activations_10_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce0;
    end else begin
        activations_10_ce0 = activations_10_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_10_ce0_local = 1'b1;
    end else begin
        activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_ce1;
    end else begin
        activations_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_d0;
    end else begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_we0;
    end else begin
        activations_10_we0 = activations_10_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd10) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_10_we0_local = 1'b1;
    end else begin
        activations_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address0;
    end else begin
        activations_11_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce0;
    end else begin
        activations_11_ce0 = activations_11_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_11_ce0_local = 1'b1;
    end else begin
        activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_ce1;
    end else begin
        activations_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_d0;
    end else begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_we0;
    end else begin
        activations_11_we0 = activations_11_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd11) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_11_we0_local = 1'b1;
    end else begin
        activations_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address0;
    end else begin
        activations_12_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce0;
    end else begin
        activations_12_ce0 = activations_12_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_12_ce0_local = 1'b1;
    end else begin
        activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_ce1;
    end else begin
        activations_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_d0;
    end else begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_we0;
    end else begin
        activations_12_we0 = activations_12_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd12) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_12_we0_local = 1'b1;
    end else begin
        activations_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address0;
    end else begin
        activations_13_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce0;
    end else begin
        activations_13_ce0 = activations_13_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_13_ce0_local = 1'b1;
    end else begin
        activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_ce1;
    end else begin
        activations_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_d0;
    end else begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_we0;
    end else begin
        activations_13_we0 = activations_13_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd13) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_13_we0_local = 1'b1;
    end else begin
        activations_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address0;
    end else begin
        activations_14_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce0;
    end else begin
        activations_14_ce0 = activations_14_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_14_ce0_local = 1'b1;
    end else begin
        activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_ce1;
    end else begin
        activations_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_d0;
    end else begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_we0;
    end else begin
        activations_14_we0 = activations_14_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd14) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_14_we0_local = 1'b1;
    end else begin
        activations_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address0;
    end else begin
        activations_15_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce0;
    end else begin
        activations_15_ce0 = activations_15_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_15_ce0_local = 1'b1;
    end else begin
        activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_ce1;
    end else begin
        activations_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_d0;
    end else begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_we0;
    end else begin
        activations_15_we0 = activations_15_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd15) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_15_we0_local = 1'b1;
    end else begin
        activations_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address0;
    end else begin
        activations_1_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce0;
    end else begin
        activations_1_ce0 = activations_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_d0;
    end else begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_we0;
    end else begin
        activations_1_we0 = activations_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address0;
    end else begin
        activations_2_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce0;
    end else begin
        activations_2_ce0 = activations_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_ce0_local = 1'b1;
    end else begin
        activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_d0;
    end else begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_we0;
    end else begin
        activations_2_we0 = activations_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd2) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_2_we0_local = 1'b1;
    end else begin
        activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address0;
    end else begin
        activations_3_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce0;
    end else begin
        activations_3_ce0 = activations_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_3_ce0_local = 1'b1;
    end else begin
        activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_d0;
    end else begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_we0;
    end else begin
        activations_3_we0 = activations_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd3) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_3_we0_local = 1'b1;
    end else begin
        activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address0;
    end else begin
        activations_4_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce0;
    end else begin
        activations_4_ce0 = activations_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_4_ce0_local = 1'b1;
    end else begin
        activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_ce1;
    end else begin
        activations_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_d0;
    end else begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_we0;
    end else begin
        activations_4_we0 = activations_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd4) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_4_we0_local = 1'b1;
    end else begin
        activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address0;
    end else begin
        activations_5_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce0;
    end else begin
        activations_5_ce0 = activations_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_5_ce0_local = 1'b1;
    end else begin
        activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_ce1;
    end else begin
        activations_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_d0;
    end else begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_we0;
    end else begin
        activations_5_we0 = activations_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd5) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_5_we0_local = 1'b1;
    end else begin
        activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address0;
    end else begin
        activations_6_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce0;
    end else begin
        activations_6_ce0 = activations_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_6_ce0_local = 1'b1;
    end else begin
        activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_ce1;
    end else begin
        activations_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_d0;
    end else begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_we0;
    end else begin
        activations_6_we0 = activations_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd6) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_6_we0_local = 1'b1;
    end else begin
        activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address0;
    end else begin
        activations_7_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce0;
    end else begin
        activations_7_ce0 = activations_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_7_ce0_local = 1'b1;
    end else begin
        activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_ce1;
    end else begin
        activations_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_d0;
    end else begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_we0;
    end else begin
        activations_7_we0 = activations_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd7) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_7_we0_local = 1'b1;
    end else begin
        activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address0;
    end else begin
        activations_8_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce0;
    end else begin
        activations_8_ce0 = activations_8_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_8_ce0_local = 1'b1;
    end else begin
        activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_ce1;
    end else begin
        activations_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_d0;
    end else begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_we0;
    end else begin
        activations_8_we0 = activations_8_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd8) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_8_we0_local = 1'b1;
    end else begin
        activations_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address0;
    end else begin
        activations_9_address0 = zext_ln45_fu_610_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce0;
    end else begin
        activations_9_ce0 = activations_9_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_9_ce0_local = 1'b1;
    end else begin
        activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_ce1;
    end else begin
        activations_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_d0;
    end else begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_we0;
    end else begin
        activations_9_we0 = activations_9_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln44_1_reg_659 == 4'd9) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_9_we0_local = 1'b1;
    end else begin
        activations_9_we0_local = 1'b0;
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_668_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_668_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_ce;
    end else begin
        grp_fu_668_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_668_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_668_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_opcode;
    end else begin
        grp_fu_668_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_668_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_668_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din0;
    end else begin
        grp_fu_668_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_668_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_grp_fu_668_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_668_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_668_p_din1;
    end else begin
        grp_fu_668_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_672_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_ce;
    end else begin
        grp_fu_672_ce = 1'b1;
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
            if (((icmp_ln44_fu_560_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_0_address1;
assign activations_10_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_10_address1;
assign activations_11_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_11_address1;
assign activations_12_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_12_address1;
assign activations_13_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_13_address1;
assign activations_14_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_14_address1;
assign activations_15_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_15_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_1_address1;
assign activations_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_2_address1;
assign activations_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_3_address1;
assign activations_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_4_address1;
assign activations_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_5_address1;
assign activations_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_6_address1;
assign activations_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_7_address1;
assign activations_8_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_8_address1;
assign activations_9_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_activations_9_address1;
assign add_ln44_fu_566_p2 = (i_fu_198 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_0_ce0;
assign biases2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_address0;
assign biases2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_10_ce0;
assign biases2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_address0;
assign biases2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_11_ce0;
assign biases2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_address0;
assign biases2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_12_ce0;
assign biases2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_address0;
assign biases2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_13_ce0;
assign biases2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_address0;
assign biases2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_14_ce0;
assign biases2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_address0;
assign biases2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_15_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_1_ce0;
assign biases2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_address0;
assign biases2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_2_ce0;
assign biases2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_address0;
assign biases2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_3_ce0;
assign biases2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_address0;
assign biases2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_4_ce0;
assign biases2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_address0;
assign biases2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_5_ce0;
assign biases2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_address0;
assign biases2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_6_ce0;
assign biases2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_address0;
assign biases2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_7_ce0;
assign biases2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_address0;
assign biases2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_8_ce0;
assign biases2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_address0;
assign biases2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_biases2_9_ce0;
assign grp_fu_4564_p_ce = grp_fu_668_ce;
assign grp_fu_4564_p_din0 = grp_fu_668_p0;
assign grp_fu_4564_p_din1 = grp_fu_668_p1;
assign grp_fu_4564_p_opcode = grp_fu_668_opcode;
assign grp_fu_4660_p_ce = grp_fu_672_ce;
assign grp_fu_4660_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din0;
assign grp_fu_4660_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_grp_fu_672_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_484_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_ap_start_reg;
assign icmp_ln44_fu_560_p2 = ((i_fu_198 == 7'd64) ? 1'b1 : 1'b0);
assign input_activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_address0;
assign input_activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_0_ce0;
assign input_activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_address0;
assign input_activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_10_ce0;
assign input_activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_address0;
assign input_activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_11_ce0;
assign input_activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_address0;
assign input_activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_12_ce0;
assign input_activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_address0;
assign input_activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_13_ce0;
assign input_activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_address0;
assign input_activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_14_ce0;
assign input_activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_address0;
assign input_activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_15_ce0;
assign input_activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_address0;
assign input_activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_1_ce0;
assign input_activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_address0;
assign input_activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_2_ce0;
assign input_activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_address0;
assign input_activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_3_ce0;
assign input_activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_address0;
assign input_activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_4_ce0;
assign input_activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_address0;
assign input_activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_5_ce0;
assign input_activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_address0;
assign input_activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_6_ce0;
assign input_activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_address0;
assign input_activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_7_ce0;
assign input_activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_address0;
assign input_activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_8_ce0;
assign input_activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_address0;
assign input_activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_input_activations_9_ce0;
assign trunc_ln44_1_fu_577_p1 = i_fu_198[3:0];
assign trunc_ln44_fu_572_p1 = i_fu_198[5:0];
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_address0;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_0_ce0;
assign weights2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_address0;
assign weights2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_10_ce0;
assign weights2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_address0;
assign weights2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_11_ce0;
assign weights2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_address0;
assign weights2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_12_ce0;
assign weights2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_address0;
assign weights2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_13_ce0;
assign weights2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_address0;
assign weights2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_14_ce0;
assign weights2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_address0;
assign weights2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_15_ce0;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_address0;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_1_ce0;
assign weights2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_address0;
assign weights2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_2_ce0;
assign weights2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_address0;
assign weights2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_3_ce0;
assign weights2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_address0;
assign weights2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_4_ce0;
assign weights2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_address0;
assign weights2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_5_ce0;
assign weights2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_address0;
assign weights2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_6_ce0;
assign weights2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_address0;
assign weights2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_7_ce0;
assign weights2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_address0;
assign weights2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_8_ce0;
assign weights2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_address0;
assign weights2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_414_weights2_9_ce0;
assign zext_ln45_fu_610_p1 = lshr_ln43_1_reg_663;
endmodule 
