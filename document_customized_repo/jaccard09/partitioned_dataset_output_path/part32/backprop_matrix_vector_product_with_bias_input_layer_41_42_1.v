
module backprop_matrix_vector_product_with_bias_input_layer_41_42_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_0_address0,biases1_0_ce0,biases1_0_q0,biases1_1_address0,biases1_1_ce0,biases1_1_q0,biases1_2_address0,biases1_2_ce0,biases1_2_q0,biases1_3_address0,biases1_3_ce0,biases1_3_q0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,weights1_2_address0,weights1_2_ce0,weights1_2_q0,weights1_2_address1,weights1_2_ce1,weights1_2_q1,weights1_3_address0,weights1_3_ce0,weights1_3_q0,weights1_3_address1,weights1_3_ce1,weights1_3_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_we1,activations_1_d1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_we1,activations_2_d1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_we1,activations_3_d1,activations_3_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_0_address1,training_data_0_ce1,training_data_0_q1,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_1_address1,training_data_1_ce1,training_data_1_q1,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_2_address1,training_data_2_ce1,training_data_2_q1,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_3_address1,training_data_3_ce1,training_data_3_q1,idx,grp_fu_3491_p_din0,grp_fu_3491_p_din1,grp_fu_3491_p_opcode,grp_fu_3491_p_dout0,grp_fu_3491_p_ce,grp_fu_3495_p_din0,grp_fu_3495_p_din1,grp_fu_3495_p_opcode,grp_fu_3495_p_dout0,grp_fu_3495_p_ce,grp_fu_3499_p_din0,grp_fu_3499_p_din1,grp_fu_3499_p_opcode,grp_fu_3499_p_dout0,grp_fu_3499_p_ce,grp_fu_3503_p_din0,grp_fu_3503_p_din1,grp_fu_3503_p_opcode,grp_fu_3503_p_dout0,grp_fu_3503_p_ce,grp_fu_3507_p_din0,grp_fu_3507_p_din1,grp_fu_3507_p_opcode,grp_fu_3507_p_dout0,grp_fu_3507_p_ce,grp_fu_3511_p_din0,grp_fu_3511_p_din1,grp_fu_3511_p_opcode,grp_fu_3511_p_dout0,grp_fu_3511_p_ce,grp_fu_3515_p_din0,grp_fu_3515_p_din1,grp_fu_3515_p_opcode,grp_fu_3515_p_dout0,grp_fu_3515_p_ce,grp_fu_3519_p_din0,grp_fu_3519_p_din1,grp_fu_3519_p_opcode,grp_fu_3519_p_dout0,grp_fu_3519_p_ce,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce,grp_fu_3523_p_din0,grp_fu_3523_p_din1,grp_fu_3523_p_dout0,grp_fu_3523_p_ce,grp_fu_3527_p_din0,grp_fu_3527_p_din1,grp_fu_3527_p_dout0,grp_fu_3527_p_ce,grp_fu_3531_p_din0,grp_fu_3531_p_din1,grp_fu_3531_p_dout0,grp_fu_3531_p_ce,grp_fu_3535_p_din0,grp_fu_3535_p_din1,grp_fu_3535_p_dout0,grp_fu_3535_p_ce,grp_fu_3539_p_din0,grp_fu_3539_p_din1,grp_fu_3539_p_dout0,grp_fu_3539_p_ce,grp_fu_3543_p_din0,grp_fu_3543_p_din1,grp_fu_3543_p_dout0,grp_fu_3543_p_ce,grp_fu_3547_p_din0,grp_fu_3547_p_din1,grp_fu_3547_p_dout0,grp_fu_3547_p_ce);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] biases1_0_address0;
output   biases1_0_ce0;
input  [63:0] biases1_0_q0;
output  [3:0] biases1_1_address0;
output   biases1_1_ce0;
input  [63:0] biases1_1_q0;
output  [3:0] biases1_2_address0;
output   biases1_2_ce0;
input  [63:0] biases1_2_q0;
output  [3:0] biases1_3_address0;
output   biases1_3_ce0;
input  [63:0] biases1_3_q0;
output  [7:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [7:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
output  [7:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [7:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [7:0] weights1_2_address0;
output   weights1_2_ce0;
input  [63:0] weights1_2_q0;
output  [7:0] weights1_2_address1;
output   weights1_2_ce1;
input  [63:0] weights1_2_q1;
output  [7:0] weights1_3_address0;
output   weights1_3_ce0;
input  [63:0] weights1_3_q0;
output  [7:0] weights1_3_address1;
output   weights1_3_ce1;
input  [63:0] weights1_3_q1;
output  [3:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [3:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [3:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [3:0] activations_1_address1;
output   activations_1_ce1;
output   activations_1_we1;
output  [63:0] activations_1_d1;
input  [63:0] activations_1_q1;
output  [3:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [3:0] activations_2_address1;
output   activations_2_ce1;
output   activations_2_we1;
output  [63:0] activations_2_d1;
input  [63:0] activations_2_q1;
output  [3:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [3:0] activations_3_address1;
output   activations_3_ce1;
output   activations_3_we1;
output  [63:0] activations_3_d1;
input  [63:0] activations_3_q1;
output  [9:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [9:0] training_data_0_address1;
output   training_data_0_ce1;
input  [63:0] training_data_0_q1;
output  [9:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [9:0] training_data_1_address1;
output   training_data_1_ce1;
input  [63:0] training_data_1_q1;
output  [9:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [9:0] training_data_2_address1;
output   training_data_2_ce1;
input  [63:0] training_data_2_q1;
output  [9:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [9:0] training_data_3_address1;
output   training_data_3_ce1;
input  [63:0] training_data_3_q1;
input  [11:0] idx;
output  [63:0] grp_fu_3491_p_din0;
output  [63:0] grp_fu_3491_p_din1;
output  [0:0] grp_fu_3491_p_opcode;
input  [63:0] grp_fu_3491_p_dout0;
output   grp_fu_3491_p_ce;
output  [63:0] grp_fu_3495_p_din0;
output  [63:0] grp_fu_3495_p_din1;
output  [0:0] grp_fu_3495_p_opcode;
input  [63:0] grp_fu_3495_p_dout0;
output   grp_fu_3495_p_ce;
output  [63:0] grp_fu_3499_p_din0;
output  [63:0] grp_fu_3499_p_din1;
output  [0:0] grp_fu_3499_p_opcode;
input  [63:0] grp_fu_3499_p_dout0;
output   grp_fu_3499_p_ce;
output  [63:0] grp_fu_3503_p_din0;
output  [63:0] grp_fu_3503_p_din1;
output  [0:0] grp_fu_3503_p_opcode;
input  [63:0] grp_fu_3503_p_dout0;
output   grp_fu_3503_p_ce;
output  [63:0] grp_fu_3507_p_din0;
output  [63:0] grp_fu_3507_p_din1;
output  [0:0] grp_fu_3507_p_opcode;
input  [63:0] grp_fu_3507_p_dout0;
output   grp_fu_3507_p_ce;
output  [63:0] grp_fu_3511_p_din0;
output  [63:0] grp_fu_3511_p_din1;
output  [0:0] grp_fu_3511_p_opcode;
input  [63:0] grp_fu_3511_p_dout0;
output   grp_fu_3511_p_ce;
output  [63:0] grp_fu_3515_p_din0;
output  [63:0] grp_fu_3515_p_din1;
output  [0:0] grp_fu_3515_p_opcode;
input  [63:0] grp_fu_3515_p_dout0;
output   grp_fu_3515_p_ce;
output  [63:0] grp_fu_3519_p_din0;
output  [63:0] grp_fu_3519_p_din1;
output  [0:0] grp_fu_3519_p_opcode;
input  [63:0] grp_fu_3519_p_dout0;
output   grp_fu_3519_p_ce;
output  [63:0] grp_fu_2070_p_din0;
output  [63:0] grp_fu_2070_p_din1;
input  [63:0] grp_fu_2070_p_dout0;
output   grp_fu_2070_p_ce;
output  [63:0] grp_fu_3523_p_din0;
output  [63:0] grp_fu_3523_p_din1;
input  [63:0] grp_fu_3523_p_dout0;
output   grp_fu_3523_p_ce;
output  [63:0] grp_fu_3527_p_din0;
output  [63:0] grp_fu_3527_p_din1;
input  [63:0] grp_fu_3527_p_dout0;
output   grp_fu_3527_p_ce;
output  [63:0] grp_fu_3531_p_din0;
output  [63:0] grp_fu_3531_p_din1;
input  [63:0] grp_fu_3531_p_dout0;
output   grp_fu_3531_p_ce;
output  [63:0] grp_fu_3535_p_din0;
output  [63:0] grp_fu_3535_p_din1;
input  [63:0] grp_fu_3535_p_dout0;
output   grp_fu_3535_p_ce;
output  [63:0] grp_fu_3539_p_din0;
output  [63:0] grp_fu_3539_p_din1;
input  [63:0] grp_fu_3539_p_dout0;
output   grp_fu_3539_p_ce;
output  [63:0] grp_fu_3543_p_din0;
output  [63:0] grp_fu_3543_p_din1;
input  [63:0] grp_fu_3543_p_dout0;
output   grp_fu_3543_p_ce;
output  [63:0] grp_fu_3547_p_din0;
output  [63:0] grp_fu_3547_p_din1;
input  [63:0] grp_fu_3547_p_dout0;
output   grp_fu_3547_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[3:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg[3:0] activations_1_address1;
reg activations_1_ce1;
reg activations_1_we1;
reg[3:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg[3:0] activations_2_address1;
reg activations_2_ce1;
reg activations_2_we1;
reg[3:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg[3:0] activations_3_address1;
reg activations_3_ce1;
reg activations_3_we1;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] empty_fu_605_p1;
reg   [1:0] empty_reg_1428;
wire   [63:0] tmp_fu_643_p11;
reg   [63:0] tmp_reg_1465;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_1_fu_728_p11;
reg   [63:0] tmp_1_reg_1510;
wire    ap_CS_fsm_state3;
wire   [63:0] tmp_2_fu_767_p11;
reg   [63:0] tmp_2_reg_1515;
wire   [63:0] tmp_3_fu_852_p11;
reg   [63:0] tmp_3_reg_1560;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_4_fu_891_p11;
reg   [63:0] tmp_4_reg_1565;
wire   [63:0] tmp_5_fu_976_p11;
reg   [63:0] tmp_5_reg_1610;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_6_fu_1015_p11;
reg   [63:0] tmp_6_reg_1615;
wire   [63:0] tmp_7_fu_1100_p11;
reg   [63:0] tmp_7_reg_1660;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_8_fu_1139_p11;
reg   [63:0] tmp_8_reg_1665;
wire   [63:0] tmp_9_fu_1224_p11;
reg   [63:0] tmp_9_reg_1710;
wire    ap_CS_fsm_state7;
wire   [63:0] tmp_s_fu_1263_p11;
reg   [63:0] tmp_s_reg_1715;
wire   [63:0] tmp_10_fu_1348_p11;
reg   [63:0] tmp_10_reg_1760;
wire    ap_CS_fsm_state8;
wire   [63:0] tmp_11_fu_1388_p11;
reg   [63:0] tmp_11_reg_1765;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_ready;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_d0;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce1;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_ce;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_ready;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln31_fu_619_p1;
wire   [63:0] p_cast_fu_681_p1;
wire   [63:0] p_cast5_fu_704_p1;
wire   [63:0] p_cast6_fu_805_p1;
wire   [63:0] p_cast7_fu_828_p1;
wire   [63:0] p_cast8_fu_929_p1;
wire   [63:0] p_cast9_fu_952_p1;
wire   [63:0] p_cast10_fu_1053_p1;
wire   [63:0] p_cast11_fu_1076_p1;
wire   [63:0] p_cast12_fu_1177_p1;
wire   [63:0] p_cast13_fu_1200_p1;
wire   [63:0] p_cast14_fu_1301_p1;
wire   [63:0] p_cast15_fu_1324_p1;
reg    training_data_0_ce0_local;
reg   [9:0] training_data_0_address0_local;
reg    training_data_0_ce1_local;
reg   [9:0] training_data_0_address1_local;
reg    training_data_1_ce0_local;
reg   [9:0] training_data_1_address0_local;
reg    training_data_1_ce1_local;
reg   [9:0] training_data_1_address1_local;
reg    training_data_2_ce0_local;
reg   [9:0] training_data_2_address0_local;
reg    training_data_2_ce1_local;
reg   [9:0] training_data_2_address1_local;
reg    training_data_3_ce0_local;
reg   [9:0] training_data_3_address0_local;
reg    training_data_3_ce1_local;
reg   [9:0] training_data_3_address1_local;
wire   [9:0] lshr_ln_fu_609_p4;
wire   [63:0] tmp_fu_643_p2;
wire   [63:0] tmp_fu_643_p4;
wire   [63:0] tmp_fu_643_p6;
wire   [63:0] tmp_fu_643_p8;
wire   [63:0] tmp_fu_643_p9;
wire   [11:0] p_sum_fu_666_p2;
wire   [9:0] tmp_14_fu_671_p4;
wire   [11:0] p_sum2_fu_689_p2;
wire   [9:0] tmp_15_fu_694_p4;
wire   [63:0] tmp_1_fu_728_p2;
wire   [63:0] tmp_1_fu_728_p4;
wire   [63:0] tmp_1_fu_728_p6;
wire   [63:0] tmp_1_fu_728_p8;
wire   [63:0] tmp_1_fu_728_p9;
wire   [63:0] tmp_2_fu_767_p2;
wire   [63:0] tmp_2_fu_767_p4;
wire   [63:0] tmp_2_fu_767_p6;
wire   [63:0] tmp_2_fu_767_p8;
wire   [63:0] tmp_2_fu_767_p9;
wire   [11:0] p_sum4_fu_790_p2;
wire   [9:0] tmp_16_fu_795_p4;
wire   [11:0] p_sum6_fu_813_p2;
wire   [9:0] tmp_17_fu_818_p4;
wire   [63:0] tmp_3_fu_852_p2;
wire   [63:0] tmp_3_fu_852_p4;
wire   [63:0] tmp_3_fu_852_p6;
wire   [63:0] tmp_3_fu_852_p8;
wire   [63:0] tmp_3_fu_852_p9;
wire   [63:0] tmp_4_fu_891_p2;
wire   [63:0] tmp_4_fu_891_p4;
wire   [63:0] tmp_4_fu_891_p6;
wire   [63:0] tmp_4_fu_891_p8;
wire   [63:0] tmp_4_fu_891_p9;
wire   [11:0] p_sum8_fu_914_p2;
wire   [9:0] tmp_18_fu_919_p4;
wire   [11:0] p_sum10_fu_937_p2;
wire   [9:0] tmp_19_fu_942_p4;
wire   [63:0] tmp_5_fu_976_p2;
wire   [63:0] tmp_5_fu_976_p4;
wire   [63:0] tmp_5_fu_976_p6;
wire   [63:0] tmp_5_fu_976_p8;
wire   [63:0] tmp_5_fu_976_p9;
wire   [63:0] tmp_6_fu_1015_p2;
wire   [63:0] tmp_6_fu_1015_p4;
wire   [63:0] tmp_6_fu_1015_p6;
wire   [63:0] tmp_6_fu_1015_p8;
wire   [63:0] tmp_6_fu_1015_p9;
wire   [11:0] p_sum12_fu_1038_p2;
wire   [9:0] tmp_20_fu_1043_p4;
wire   [11:0] p_sum14_fu_1061_p2;
wire   [9:0] tmp_21_fu_1066_p4;
wire   [63:0] tmp_7_fu_1100_p2;
wire   [63:0] tmp_7_fu_1100_p4;
wire   [63:0] tmp_7_fu_1100_p6;
wire   [63:0] tmp_7_fu_1100_p8;
wire   [63:0] tmp_7_fu_1100_p9;
wire   [63:0] tmp_8_fu_1139_p2;
wire   [63:0] tmp_8_fu_1139_p4;
wire   [63:0] tmp_8_fu_1139_p6;
wire   [63:0] tmp_8_fu_1139_p8;
wire   [63:0] tmp_8_fu_1139_p9;
wire   [11:0] p_sum16_fu_1162_p2;
wire   [9:0] tmp_22_fu_1167_p4;
wire   [11:0] p_sum18_fu_1185_p2;
wire   [9:0] tmp_23_fu_1190_p4;
wire   [63:0] tmp_9_fu_1224_p2;
wire   [63:0] tmp_9_fu_1224_p4;
wire   [63:0] tmp_9_fu_1224_p6;
wire   [63:0] tmp_9_fu_1224_p8;
wire   [63:0] tmp_9_fu_1224_p9;
wire   [63:0] tmp_s_fu_1263_p2;
wire   [63:0] tmp_s_fu_1263_p4;
wire   [63:0] tmp_s_fu_1263_p6;
wire   [63:0] tmp_s_fu_1263_p8;
wire   [63:0] tmp_s_fu_1263_p9;
wire   [11:0] p_sum20_fu_1286_p2;
wire   [9:0] tmp_24_fu_1291_p4;
wire   [11:0] p_sum22_fu_1309_p2;
wire   [9:0] tmp_25_fu_1314_p4;
wire   [63:0] tmp_10_fu_1348_p2;
wire   [63:0] tmp_10_fu_1348_p4;
wire   [63:0] tmp_10_fu_1348_p6;
wire   [63:0] tmp_10_fu_1348_p8;
wire   [63:0] tmp_10_fu_1348_p9;
wire   [63:0] tmp_11_fu_1388_p2;
wire   [63:0] tmp_11_fu_1388_p4;
wire   [63:0] tmp_11_fu_1388_p6;
wire   [63:0] tmp_11_fu_1388_p8;
wire   [63:0] tmp_11_fu_1388_p9;
reg   [63:0] grp_fu_1770_p0;
reg   [63:0] grp_fu_1770_p1;
reg   [1:0] grp_fu_1770_opcode;
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
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire   [1:0] tmp_fu_643_p1;
wire   [1:0] tmp_fu_643_p3;
wire  signed [1:0] tmp_fu_643_p5;
wire  signed [1:0] tmp_fu_643_p7;
wire  signed [1:0] tmp_1_fu_728_p1;
wire   [1:0] tmp_1_fu_728_p3;
wire   [1:0] tmp_1_fu_728_p5;
wire  signed [1:0] tmp_1_fu_728_p7;
wire  signed [1:0] tmp_2_fu_767_p1;
wire  signed [1:0] tmp_2_fu_767_p3;
wire   [1:0] tmp_2_fu_767_p5;
wire   [1:0] tmp_2_fu_767_p7;
wire   [1:0] tmp_3_fu_852_p1;
wire  signed [1:0] tmp_3_fu_852_p3;
wire  signed [1:0] tmp_3_fu_852_p5;
wire   [1:0] tmp_3_fu_852_p7;
wire   [1:0] tmp_4_fu_891_p1;
wire   [1:0] tmp_4_fu_891_p3;
wire  signed [1:0] tmp_4_fu_891_p5;
wire  signed [1:0] tmp_4_fu_891_p7;
wire  signed [1:0] tmp_5_fu_976_p1;
wire   [1:0] tmp_5_fu_976_p3;
wire   [1:0] tmp_5_fu_976_p5;
wire  signed [1:0] tmp_5_fu_976_p7;
wire  signed [1:0] tmp_6_fu_1015_p1;
wire  signed [1:0] tmp_6_fu_1015_p3;
wire   [1:0] tmp_6_fu_1015_p5;
wire   [1:0] tmp_6_fu_1015_p7;
wire   [1:0] tmp_7_fu_1100_p1;
wire  signed [1:0] tmp_7_fu_1100_p3;
wire  signed [1:0] tmp_7_fu_1100_p5;
wire   [1:0] tmp_7_fu_1100_p7;
wire   [1:0] tmp_8_fu_1139_p1;
wire   [1:0] tmp_8_fu_1139_p3;
wire  signed [1:0] tmp_8_fu_1139_p5;
wire  signed [1:0] tmp_8_fu_1139_p7;
wire  signed [1:0] tmp_9_fu_1224_p1;
wire   [1:0] tmp_9_fu_1224_p3;
wire   [1:0] tmp_9_fu_1224_p5;
wire  signed [1:0] tmp_9_fu_1224_p7;
wire  signed [1:0] tmp_s_fu_1263_p1;
wire  signed [1:0] tmp_s_fu_1263_p3;
wire   [1:0] tmp_s_fu_1263_p5;
wire   [1:0] tmp_s_fu_1263_p7;
wire   [1:0] tmp_10_fu_1348_p1;
wire  signed [1:0] tmp_10_fu_1348_p3;
wire  signed [1:0] tmp_10_fu_1348_p5;
wire   [1:0] tmp_10_fu_1348_p7;
wire   [1:0] tmp_11_fu_1388_p1;
wire   [1:0] tmp_11_fu_1388_p3;
wire  signed [1:0] tmp_11_fu_1388_p5;
wire  signed [1:0] tmp_11_fu_1388_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_ready),.activations_3_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce1),.activations_3_we1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we1),.activations_3_d1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d1),.activations_2_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce1),.activations_2_we1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we1),.activations_2_d1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce1),.activations_1_we1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we1),.activations_1_d1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_d0),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.tmp(tmp_reg_1465),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.tmp_1(tmp_1_reg_1510),.weights1_2_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address0),.weights1_2_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce0),.weights1_2_q0(weights1_2_q0),.weights1_2_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address1),.weights1_2_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce1),.weights1_2_q1(weights1_2_q1),.tmp_2(tmp_2_reg_1515),.weights1_3_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address0),.weights1_3_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce0),.weights1_3_q0(weights1_3_q0),.weights1_3_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address1),.weights1_3_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce1),.weights1_3_q1(weights1_3_q1),.tmp_3(tmp_3_reg_1560),.tmp_4(tmp_4_reg_1565),.tmp_5(tmp_5_reg_1610),.tmp_6(tmp_6_reg_1615),.tmp_7(tmp_7_reg_1660),.tmp_8(tmp_8_reg_1665),.tmp_9(tmp_9_reg_1710),.tmp_s(tmp_s_reg_1715),.tmp_10(tmp_10_reg_1760),.tmp_11(tmp_11_reg_1765),.grp_fu_1770_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din1),.grp_fu_1770_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_opcode),.grp_fu_1770_p_dout0(grp_fu_3491_p_dout0),.grp_fu_1770_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_ce),.grp_fu_1774_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din0),.grp_fu_1774_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din1),.grp_fu_1774_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_opcode),.grp_fu_1774_p_dout0(grp_fu_3495_p_dout0),.grp_fu_1774_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_ce),.grp_fu_1778_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din0),.grp_fu_1778_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din1),.grp_fu_1778_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_opcode),.grp_fu_1778_p_dout0(grp_fu_3499_p_dout0),.grp_fu_1778_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_ce),.grp_fu_1782_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din0),.grp_fu_1782_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din1),.grp_fu_1782_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_opcode),.grp_fu_1782_p_dout0(grp_fu_3503_p_dout0),.grp_fu_1782_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_ce),.grp_fu_1786_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din0),.grp_fu_1786_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din1),.grp_fu_1786_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_opcode),.grp_fu_1786_p_dout0(grp_fu_3507_p_dout0),.grp_fu_1786_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_ce),.grp_fu_1790_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din0),.grp_fu_1790_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din1),.grp_fu_1790_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_opcode),.grp_fu_1790_p_dout0(grp_fu_3511_p_dout0),.grp_fu_1790_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_ce),.grp_fu_1794_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din0),.grp_fu_1794_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din1),.grp_fu_1794_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_opcode),.grp_fu_1794_p_dout0(grp_fu_3515_p_dout0),.grp_fu_1794_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_ce),.grp_fu_1798_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din0),.grp_fu_1798_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din1),.grp_fu_1798_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_opcode),.grp_fu_1798_p_dout0(grp_fu_3519_p_dout0),.grp_fu_1798_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_ce),.grp_fu_1802_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din0),.grp_fu_1802_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din1),.grp_fu_1802_p_dout0(grp_fu_2070_p_dout0),.grp_fu_1802_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_ce),.grp_fu_1806_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din0),.grp_fu_1806_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din1),.grp_fu_1806_p_dout0(grp_fu_3523_p_dout0),.grp_fu_1806_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_ce),.grp_fu_1810_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din0),.grp_fu_1810_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din1),.grp_fu_1810_p_dout0(grp_fu_3527_p_dout0),.grp_fu_1810_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_ce),.grp_fu_1814_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din0),.grp_fu_1814_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din1),.grp_fu_1814_p_dout0(grp_fu_3531_p_dout0),.grp_fu_1814_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_ce),.grp_fu_1818_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din0),.grp_fu_1818_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din1),.grp_fu_1818_p_dout0(grp_fu_3535_p_dout0),.grp_fu_1818_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_ce),.grp_fu_1822_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din0),.grp_fu_1822_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din1),.grp_fu_1822_p_dout0(grp_fu_3539_p_dout0),.grp_fu_1822_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_ce),.grp_fu_1826_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din0),.grp_fu_1826_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din1),.grp_fu_1826_p_dout0(grp_fu_3543_p_dout0),.grp_fu_1826_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_ce),.grp_fu_1830_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din0),.grp_fu_1830_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din1),.grp_fu_1830_p_dout0(grp_fu_3547_p_dout0),.grp_fu_1830_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_ce));
backprop_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_ready),.activations_3_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.biases1_2_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_address0),.biases1_2_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_ce0),.biases1_2_q0(biases1_2_q0),.biases1_3_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_address0),.biases1_3_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_ce0),.biases1_3_q0(biases1_3_q0),.grp_fu_1770_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din1),.grp_fu_1770_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_opcode),.grp_fu_1770_p_dout0(grp_fu_3491_p_dout0),.grp_fu_1770_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U55(.din0(tmp_fu_643_p2),.din1(tmp_fu_643_p4),.din2(tmp_fu_643_p6),.din3(tmp_fu_643_p8),.def(tmp_fu_643_p9),.sel(empty_reg_1428),.dout(tmp_fu_643_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U56(.din0(tmp_1_fu_728_p2),.din1(tmp_1_fu_728_p4),.din2(tmp_1_fu_728_p6),.din3(tmp_1_fu_728_p8),.def(tmp_1_fu_728_p9),.sel(empty_reg_1428),.dout(tmp_1_fu_728_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U57(.din0(tmp_2_fu_767_p2),.din1(tmp_2_fu_767_p4),.din2(tmp_2_fu_767_p6),.din3(tmp_2_fu_767_p8),.def(tmp_2_fu_767_p9),.sel(empty_reg_1428),.dout(tmp_2_fu_767_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U58(.din0(tmp_3_fu_852_p2),.din1(tmp_3_fu_852_p4),.din2(tmp_3_fu_852_p6),.din3(tmp_3_fu_852_p8),.def(tmp_3_fu_852_p9),.sel(empty_reg_1428),.dout(tmp_3_fu_852_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U59(.din0(tmp_4_fu_891_p2),.din1(tmp_4_fu_891_p4),.din2(tmp_4_fu_891_p6),.din3(tmp_4_fu_891_p8),.def(tmp_4_fu_891_p9),.sel(empty_reg_1428),.dout(tmp_4_fu_891_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U60(.din0(tmp_5_fu_976_p2),.din1(tmp_5_fu_976_p4),.din2(tmp_5_fu_976_p6),.din3(tmp_5_fu_976_p8),.def(tmp_5_fu_976_p9),.sel(empty_reg_1428),.dout(tmp_5_fu_976_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U61(.din0(tmp_6_fu_1015_p2),.din1(tmp_6_fu_1015_p4),.din2(tmp_6_fu_1015_p6),.din3(tmp_6_fu_1015_p8),.def(tmp_6_fu_1015_p9),.sel(empty_reg_1428),.dout(tmp_6_fu_1015_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U62(.din0(tmp_7_fu_1100_p2),.din1(tmp_7_fu_1100_p4),.din2(tmp_7_fu_1100_p6),.din3(tmp_7_fu_1100_p8),.def(tmp_7_fu_1100_p9),.sel(empty_reg_1428),.dout(tmp_7_fu_1100_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U63(.din0(tmp_8_fu_1139_p2),.din1(tmp_8_fu_1139_p4),.din2(tmp_8_fu_1139_p6),.din3(tmp_8_fu_1139_p8),.def(tmp_8_fu_1139_p9),.sel(empty_reg_1428),.dout(tmp_8_fu_1139_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U64(.din0(tmp_9_fu_1224_p2),.din1(tmp_9_fu_1224_p4),.din2(tmp_9_fu_1224_p6),.din3(tmp_9_fu_1224_p8),.def(tmp_9_fu_1224_p9),.sel(empty_reg_1428),.dout(tmp_9_fu_1224_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U65(.din0(tmp_s_fu_1263_p2),.din1(tmp_s_fu_1263_p4),.din2(tmp_s_fu_1263_p6),.din3(tmp_s_fu_1263_p8),.def(tmp_s_fu_1263_p9),.sel(empty_reg_1428),.dout(tmp_s_fu_1263_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U66(.din0(tmp_10_fu_1348_p2),.din1(tmp_10_fu_1348_p4),.din2(tmp_10_fu_1348_p6),.din3(tmp_10_fu_1348_p8),.def(tmp_10_fu_1348_p9),.sel(empty_reg_1428),.dout(tmp_10_fu_1348_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U67(.din0(tmp_11_fu_1388_p2),.din1(tmp_11_fu_1388_p4),.din2(tmp_11_fu_1388_p6),.din3(tmp_11_fu_1388_p8),.def(tmp_11_fu_1388_p9),.sel(empty_reg_1428),.dout(tmp_11_fu_1388_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_1428 <= empty_fu_605_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_10_reg_1760 <= tmp_10_fu_1348_p11;
        tmp_11_reg_1765 <= tmp_11_fu_1388_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_1_reg_1510 <= tmp_1_fu_728_p11;
        tmp_2_reg_1515 <= tmp_2_fu_767_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_3_reg_1560 <= tmp_3_fu_852_p11;
        tmp_4_reg_1565 <= tmp_4_fu_891_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_5_reg_1610 <= tmp_5_fu_976_p11;
        tmp_6_reg_1615 <= tmp_6_fu_1015_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_7_reg_1660 <= tmp_7_fu_1100_p11;
        tmp_8_reg_1665 <= tmp_8_fu_1139_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_9_reg_1710 <= tmp_9_fu_1224_p11;
        tmp_s_reg_1715 <= tmp_s_fu_1263_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_reg_1465 <= tmp_fu_643_p11;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_address1;
    end else begin
        activations_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_we1;
    end else begin
        activations_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address0;
    end else begin
        activations_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_address1;
    end else begin
        activations_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce0;
    end else begin
        activations_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d0;
    end else begin
        activations_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we0;
    end else begin
        activations_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_we1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_we1;
    end else begin
        activations_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address0;
    end else begin
        activations_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_address1;
    end else begin
        activations_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce0;
    end else begin
        activations_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d0;
    end else begin
        activations_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we0;
    end else begin
        activations_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_we1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_we1;
    end else begin
        activations_3_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)))) begin
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
    if (((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1770_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1770_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1770_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1770_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_opcode;
    end else begin
        grp_fu_1770_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1770_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1770_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din0;
    end else begin
        grp_fu_1770_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1770_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1770_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1770_p_din1;
    end else begin
        grp_fu_1770_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1774_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_ce;
    end else begin
        grp_fu_1774_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1778_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_ce;
    end else begin
        grp_fu_1778_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1782_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_ce;
    end else begin
        grp_fu_1782_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1786_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_ce;
    end else begin
        grp_fu_1786_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1790_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_ce;
    end else begin
        grp_fu_1790_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1794_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_ce;
    end else begin
        grp_fu_1794_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1798_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_ce;
    end else begin
        grp_fu_1798_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1802_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_ce;
    end else begin
        grp_fu_1802_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1806_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_ce;
    end else begin
        grp_fu_1806_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1810_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_ce;
    end else begin
        grp_fu_1810_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1814_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_ce;
    end else begin
        grp_fu_1814_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1818_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_ce;
    end else begin
        grp_fu_1818_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1822_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_ce;
    end else begin
        grp_fu_1822_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1826_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_ce;
    end else begin
        grp_fu_1826_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1830_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_ce;
    end else begin
        grp_fu_1830_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_0_address0_local = p_cast14_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_0_address0_local = p_cast12_fu_1177_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_0_address0_local = p_cast10_fu_1053_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_0_address0_local = p_cast8_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_0_address0_local = p_cast6_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_0_address0_local = p_cast5_fu_704_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_0_address0_local = zext_ln31_fu_619_p1;
    end else begin
        training_data_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_0_address1_local = p_cast15_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_0_address1_local = p_cast13_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_0_address1_local = p_cast11_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_0_address1_local = p_cast9_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_0_address1_local = p_cast7_fu_828_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_0_address1_local = p_cast_fu_681_p1;
    end else begin
        training_data_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_0_ce1_local = 1'b1;
    end else begin
        training_data_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_1_address0_local = p_cast14_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_1_address0_local = p_cast12_fu_1177_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_1_address0_local = p_cast10_fu_1053_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_1_address0_local = p_cast8_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_1_address0_local = p_cast6_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_1_address0_local = p_cast5_fu_704_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_1_address0_local = zext_ln31_fu_619_p1;
    end else begin
        training_data_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_1_address1_local = p_cast15_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_1_address1_local = p_cast13_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_1_address1_local = p_cast11_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_1_address1_local = p_cast9_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_1_address1_local = p_cast7_fu_828_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_1_address1_local = p_cast_fu_681_p1;
    end else begin
        training_data_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_1_ce1_local = 1'b1;
    end else begin
        training_data_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_2_address0_local = p_cast14_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_2_address0_local = p_cast12_fu_1177_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_2_address0_local = p_cast10_fu_1053_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_2_address0_local = p_cast8_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_2_address0_local = p_cast6_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_2_address0_local = p_cast5_fu_704_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_2_address0_local = zext_ln31_fu_619_p1;
    end else begin
        training_data_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_2_address1_local = p_cast15_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_2_address1_local = p_cast13_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_2_address1_local = p_cast11_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_2_address1_local = p_cast9_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_2_address1_local = p_cast7_fu_828_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_2_address1_local = p_cast_fu_681_p1;
    end else begin
        training_data_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_2_ce1_local = 1'b1;
    end else begin
        training_data_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_3_address0_local = p_cast14_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_3_address0_local = p_cast12_fu_1177_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_3_address0_local = p_cast10_fu_1053_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_3_address0_local = p_cast8_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_3_address0_local = p_cast6_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_3_address0_local = p_cast5_fu_704_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_3_address0_local = zext_ln31_fu_619_p1;
    end else begin
        training_data_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_3_address1_local = p_cast15_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_3_address1_local = p_cast13_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_3_address1_local = p_cast11_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_3_address1_local = p_cast9_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_3_address1_local = p_cast7_fu_828_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_3_address1_local = p_cast_fu_681_p1;
    end else begin
        training_data_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_3_ce1_local = 1'b1;
    end else begin
        training_data_3_ce1_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_activations_0_address1;
assign activations_1_d1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_1_d1;
assign activations_2_d1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_2_d1;
assign activations_3_d1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_activations_3_d1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_address0;
assign biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_0_ce0;
assign biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_address0;
assign biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_1_ce0;
assign biases1_2_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_address0;
assign biases1_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_2_ce0;
assign biases1_3_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_address0;
assign biases1_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_biases1_3_ce0;
assign empty_fu_605_p1 = idx[1:0];
assign grp_fu_2070_p_ce = grp_fu_1802_ce;
assign grp_fu_2070_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din0;
assign grp_fu_2070_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1802_p_din1;
assign grp_fu_3491_p_ce = grp_fu_1770_ce;
assign grp_fu_3491_p_din0 = grp_fu_1770_p0;
assign grp_fu_3491_p_din1 = grp_fu_1770_p1;
assign grp_fu_3491_p_opcode = grp_fu_1770_opcode;
assign grp_fu_3495_p_ce = grp_fu_1774_ce;
assign grp_fu_3495_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din0;
assign grp_fu_3495_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_din1;
assign grp_fu_3495_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1774_p_opcode;
assign grp_fu_3499_p_ce = grp_fu_1778_ce;
assign grp_fu_3499_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din0;
assign grp_fu_3499_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_din1;
assign grp_fu_3499_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1778_p_opcode;
assign grp_fu_3503_p_ce = grp_fu_1782_ce;
assign grp_fu_3503_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din0;
assign grp_fu_3503_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_din1;
assign grp_fu_3503_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1782_p_opcode;
assign grp_fu_3507_p_ce = grp_fu_1786_ce;
assign grp_fu_3507_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din0;
assign grp_fu_3507_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_din1;
assign grp_fu_3507_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1786_p_opcode;
assign grp_fu_3511_p_ce = grp_fu_1790_ce;
assign grp_fu_3511_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din0;
assign grp_fu_3511_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_din1;
assign grp_fu_3511_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1790_p_opcode;
assign grp_fu_3515_p_ce = grp_fu_1794_ce;
assign grp_fu_3515_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din0;
assign grp_fu_3515_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_din1;
assign grp_fu_3515_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1794_p_opcode;
assign grp_fu_3519_p_ce = grp_fu_1798_ce;
assign grp_fu_3519_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din0;
assign grp_fu_3519_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_din1;
assign grp_fu_3519_p_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1798_p_opcode;
assign grp_fu_3523_p_ce = grp_fu_1806_ce;
assign grp_fu_3523_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din0;
assign grp_fu_3523_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1806_p_din1;
assign grp_fu_3527_p_ce = grp_fu_1810_ce;
assign grp_fu_3527_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din0;
assign grp_fu_3527_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1810_p_din1;
assign grp_fu_3531_p_ce = grp_fu_1814_ce;
assign grp_fu_3531_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din0;
assign grp_fu_3531_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1814_p_din1;
assign grp_fu_3535_p_ce = grp_fu_1818_ce;
assign grp_fu_3535_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din0;
assign grp_fu_3535_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1818_p_din1;
assign grp_fu_3539_p_ce = grp_fu_1822_ce;
assign grp_fu_3539_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din0;
assign grp_fu_3539_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1822_p_din1;
assign grp_fu_3543_p_ce = grp_fu_1826_ce;
assign grp_fu_3543_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din0;
assign grp_fu_3543_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1826_p_din1;
assign grp_fu_3547_p_ce = grp_fu_1830_ce;
assign grp_fu_3547_p_din0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din0;
assign grp_fu_3547_p_din1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_grp_fu_1830_p_din1;
assign grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_VITIS_LOOP_26_1_fu_585_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_ap_start_reg;
assign lshr_ln_fu_609_p4 = {{idx[11:2]}};
assign p_cast10_fu_1053_p1 = tmp_20_fu_1043_p4;
assign p_cast11_fu_1076_p1 = tmp_21_fu_1066_p4;
assign p_cast12_fu_1177_p1 = tmp_22_fu_1167_p4;
assign p_cast13_fu_1200_p1 = tmp_23_fu_1190_p4;
assign p_cast14_fu_1301_p1 = tmp_24_fu_1291_p4;
assign p_cast15_fu_1324_p1 = tmp_25_fu_1314_p4;
assign p_cast5_fu_704_p1 = tmp_15_fu_694_p4;
assign p_cast6_fu_805_p1 = tmp_16_fu_795_p4;
assign p_cast7_fu_828_p1 = tmp_17_fu_818_p4;
assign p_cast8_fu_929_p1 = tmp_18_fu_919_p4;
assign p_cast9_fu_952_p1 = tmp_19_fu_942_p4;
assign p_cast_fu_681_p1 = tmp_14_fu_671_p4;
assign p_sum10_fu_937_p2 = (idx + 12'd6);
assign p_sum12_fu_1038_p2 = (idx + 12'd7);
assign p_sum14_fu_1061_p2 = (idx + 12'd8);
assign p_sum16_fu_1162_p2 = (idx + 12'd9);
assign p_sum18_fu_1185_p2 = (idx + 12'd10);
assign p_sum20_fu_1286_p2 = (idx + 12'd11);
assign p_sum22_fu_1309_p2 = (idx + 12'd12);
assign p_sum2_fu_689_p2 = (idx + 12'd2);
assign p_sum4_fu_790_p2 = (idx + 12'd3);
assign p_sum6_fu_813_p2 = (idx + 12'd4);
assign p_sum8_fu_914_p2 = (idx + 12'd5);
assign p_sum_fu_666_p2 = (idx + 12'd1);
assign tmp_10_fu_1348_p2 = training_data_0_q0;
assign tmp_10_fu_1348_p4 = training_data_1_q0;
assign tmp_10_fu_1348_p6 = training_data_2_q0;
assign tmp_10_fu_1348_p8 = training_data_3_q0;
assign tmp_10_fu_1348_p9 = 'bx;
assign tmp_11_fu_1388_p2 = training_data_0_q1;
assign tmp_11_fu_1388_p4 = training_data_1_q1;
assign tmp_11_fu_1388_p6 = training_data_2_q1;
assign tmp_11_fu_1388_p8 = training_data_3_q1;
assign tmp_11_fu_1388_p9 = 'bx;
assign tmp_14_fu_671_p4 = {{p_sum_fu_666_p2[11:2]}};
assign tmp_15_fu_694_p4 = {{p_sum2_fu_689_p2[11:2]}};
assign tmp_16_fu_795_p4 = {{p_sum4_fu_790_p2[11:2]}};
assign tmp_17_fu_818_p4 = {{p_sum6_fu_813_p2[11:2]}};
assign tmp_18_fu_919_p4 = {{p_sum8_fu_914_p2[11:2]}};
assign tmp_19_fu_942_p4 = {{p_sum10_fu_937_p2[11:2]}};
assign tmp_1_fu_728_p2 = training_data_0_q1;
assign tmp_1_fu_728_p4 = training_data_1_q1;
assign tmp_1_fu_728_p6 = training_data_2_q1;
assign tmp_1_fu_728_p8 = training_data_3_q1;
assign tmp_1_fu_728_p9 = 'bx;
assign tmp_20_fu_1043_p4 = {{p_sum12_fu_1038_p2[11:2]}};
assign tmp_21_fu_1066_p4 = {{p_sum14_fu_1061_p2[11:2]}};
assign tmp_22_fu_1167_p4 = {{p_sum16_fu_1162_p2[11:2]}};
assign tmp_23_fu_1190_p4 = {{p_sum18_fu_1185_p2[11:2]}};
assign tmp_24_fu_1291_p4 = {{p_sum20_fu_1286_p2[11:2]}};
assign tmp_25_fu_1314_p4 = {{p_sum22_fu_1309_p2[11:2]}};
assign tmp_2_fu_767_p2 = training_data_0_q0;
assign tmp_2_fu_767_p4 = training_data_1_q0;
assign tmp_2_fu_767_p6 = training_data_2_q0;
assign tmp_2_fu_767_p8 = training_data_3_q0;
assign tmp_2_fu_767_p9 = 'bx;
assign tmp_3_fu_852_p2 = training_data_0_q0;
assign tmp_3_fu_852_p4 = training_data_1_q0;
assign tmp_3_fu_852_p6 = training_data_2_q0;
assign tmp_3_fu_852_p8 = training_data_3_q0;
assign tmp_3_fu_852_p9 = 'bx;
assign tmp_4_fu_891_p2 = training_data_0_q1;
assign tmp_4_fu_891_p4 = training_data_1_q1;
assign tmp_4_fu_891_p6 = training_data_2_q1;
assign tmp_4_fu_891_p8 = training_data_3_q1;
assign tmp_4_fu_891_p9 = 'bx;
assign tmp_5_fu_976_p2 = training_data_0_q0;
assign tmp_5_fu_976_p4 = training_data_1_q0;
assign tmp_5_fu_976_p6 = training_data_2_q0;
assign tmp_5_fu_976_p8 = training_data_3_q0;
assign tmp_5_fu_976_p9 = 'bx;
assign tmp_6_fu_1015_p2 = training_data_0_q1;
assign tmp_6_fu_1015_p4 = training_data_1_q1;
assign tmp_6_fu_1015_p6 = training_data_2_q1;
assign tmp_6_fu_1015_p8 = training_data_3_q1;
assign tmp_6_fu_1015_p9 = 'bx;
assign tmp_7_fu_1100_p2 = training_data_0_q0;
assign tmp_7_fu_1100_p4 = training_data_1_q0;
assign tmp_7_fu_1100_p6 = training_data_2_q0;
assign tmp_7_fu_1100_p8 = training_data_3_q0;
assign tmp_7_fu_1100_p9 = 'bx;
assign tmp_8_fu_1139_p2 = training_data_0_q1;
assign tmp_8_fu_1139_p4 = training_data_1_q1;
assign tmp_8_fu_1139_p6 = training_data_2_q1;
assign tmp_8_fu_1139_p8 = training_data_3_q1;
assign tmp_8_fu_1139_p9 = 'bx;
assign tmp_9_fu_1224_p2 = training_data_0_q0;
assign tmp_9_fu_1224_p4 = training_data_1_q0;
assign tmp_9_fu_1224_p6 = training_data_2_q0;
assign tmp_9_fu_1224_p8 = training_data_3_q0;
assign tmp_9_fu_1224_p9 = 'bx;
assign tmp_fu_643_p2 = training_data_0_q0;
assign tmp_fu_643_p4 = training_data_1_q0;
assign tmp_fu_643_p6 = training_data_2_q0;
assign tmp_fu_643_p8 = training_data_3_q0;
assign tmp_fu_643_p9 = 'bx;
assign tmp_s_fu_1263_p2 = training_data_0_q1;
assign tmp_s_fu_1263_p4 = training_data_1_q1;
assign tmp_s_fu_1263_p6 = training_data_2_q1;
assign tmp_s_fu_1263_p8 = training_data_3_q1;
assign tmp_s_fu_1263_p9 = 'bx;
assign training_data_0_address0 = training_data_0_address0_local;
assign training_data_0_address1 = training_data_0_address1_local;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_0_ce1 = training_data_0_ce1_local;
assign training_data_1_address0 = training_data_1_address0_local;
assign training_data_1_address1 = training_data_1_address1_local;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_1_ce1 = training_data_1_ce1_local;
assign training_data_2_address0 = training_data_2_address0_local;
assign training_data_2_address1 = training_data_2_address1_local;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_2_ce1 = training_data_2_ce1_local;
assign training_data_3_address0 = training_data_3_address0_local;
assign training_data_3_address1 = training_data_3_address1_local;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_3_ce1 = training_data_3_ce1_local;
assign weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address0;
assign weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_address1;
assign weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce0;
assign weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_0_ce1;
assign weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address0;
assign weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_address1;
assign weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce0;
assign weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_1_ce1;
assign weights1_2_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address0;
assign weights1_2_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_address1;
assign weights1_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce0;
assign weights1_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_2_ce1;
assign weights1_3_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address0;
assign weights1_3_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_address1;
assign weights1_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce0;
assign weights1_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l_fu_552_weights1_3_ce1;
assign zext_ln31_fu_619_p1 = lshr_ln_fu_609_p4;
endmodule 
