module backprop_matrix_vector_product_with_bias_input_layer_56_57_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_0_address0,biases1_0_ce0,biases1_0_q0,biases1_1_address0,biases1_1_ce0,biases1_1_q0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_we1,activations_0_d1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_we1,activations_1_d1,activations_1_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,idx,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_opcode,grp_fu_2832_p_dout0,grp_fu_2832_p_ce,grp_fu_2836_p_din0,grp_fu_2836_p_din1,grp_fu_2836_p_opcode,grp_fu_2836_p_dout0,grp_fu_2836_p_ce,grp_fu_2840_p_din0,grp_fu_2840_p_din1,grp_fu_2840_p_opcode,grp_fu_2840_p_dout0,grp_fu_2840_p_ce,grp_fu_2844_p_din0,grp_fu_2844_p_din1,grp_fu_2844_p_opcode,grp_fu_2844_p_dout0,grp_fu_2844_p_ce,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce); 
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
output  [4:0] biases1_0_address0;
output   biases1_0_ce0;
input  [63:0] biases1_0_q0;
output  [4:0] biases1_1_address0;
output   biases1_1_ce0;
input  [63:0] biases1_1_q0;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [4:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [4:0] activations_0_address1;
output   activations_0_ce1;
output   activations_0_we1;
output  [63:0] activations_0_d1;
input  [63:0] activations_0_q1;
output  [4:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [4:0] activations_1_address1;
output   activations_1_ce1;
output   activations_1_we1;
output  [63:0] activations_1_d1;
input  [63:0] activations_1_q1;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
input  [11:0] idx;
output  [63:0] grp_fu_2832_p_din0;
output  [63:0] grp_fu_2832_p_din1;
output  [0:0] grp_fu_2832_p_opcode;
input  [63:0] grp_fu_2832_p_dout0;
output   grp_fu_2832_p_ce;
output  [63:0] grp_fu_2836_p_din0;
output  [63:0] grp_fu_2836_p_din1;
output  [0:0] grp_fu_2836_p_opcode;
input  [63:0] grp_fu_2836_p_dout0;
output   grp_fu_2836_p_ce;
output  [63:0] grp_fu_2840_p_din0;
output  [63:0] grp_fu_2840_p_din1;
output  [0:0] grp_fu_2840_p_opcode;
input  [63:0] grp_fu_2840_p_dout0;
output   grp_fu_2840_p_ce;
output  [63:0] grp_fu_2844_p_din0;
output  [63:0] grp_fu_2844_p_din1;
output  [0:0] grp_fu_2844_p_opcode;
input  [63:0] grp_fu_2844_p_dout0;
output   grp_fu_2844_p_ce;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
output  [63:0] grp_fu_2852_p_din0;
output  [63:0] grp_fu_2852_p_din1;
input  [63:0] grp_fu_2852_p_dout0;
output   grp_fu_2852_p_ce;
output  [63:0] grp_fu_2856_p_din0;
output  [63:0] grp_fu_2856_p_din1;
input  [63:0] grp_fu_2856_p_dout0;
output   grp_fu_2856_p_ce;
output  [63:0] grp_fu_2860_p_din0;
output  [63:0] grp_fu_2860_p_din1;
input  [63:0] grp_fu_2860_p_dout0;
output   grp_fu_2860_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg[4:0] activations_0_address1;
reg activations_0_ce1;
reg activations_0_we1;
reg[4:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg[4:0] activations_1_address1;
reg activations_1_ce1;
reg activations_1_we1;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] empty_fu_341_p1;
reg   [0:0] empty_reg_683;
wire   [63:0] grp_fu_327_p3;
reg   [63:0] tmp_v_reg_699;
wire    ap_CS_fsm_state2;
wire   [63:0] grp_fu_334_p3;
reg   [63:0] tmp_v_42_reg_724;
wire    ap_CS_fsm_state3;
reg   [63:0] tmp_15_v_reg_729;
reg   [63:0] tmp_16_v_reg_754;
wire    ap_CS_fsm_state4;
reg   [63:0] tmp_17_v_reg_759;
reg   [63:0] tmp_18_v_reg_784;
wire    ap_CS_fsm_state5;
reg   [63:0] tmp_19_v_reg_789;
reg   [63:0] tmp_20_v_reg_814;
wire    ap_CS_fsm_state6;
reg   [63:0] tmp_21_v_reg_819;
reg   [63:0] tmp_22_v_reg_844;
wire    ap_CS_fsm_state7;
reg   [63:0] tmp_23_v_reg_849;
wire   [63:0] tmp_fu_613_p1;
reg   [63:0] tmp_reg_874;
wire    ap_CS_fsm_state8;
wire   [63:0] tmp_s_fu_617_p1;
reg   [63:0] tmp_s_reg_879;
wire   [63:0] tmp_15_fu_621_p1;
reg   [63:0] tmp_15_reg_884;
wire   [63:0] tmp_16_fu_625_p1;
reg   [63:0] tmp_16_reg_889;
wire   [63:0] tmp_17_fu_629_p1;
reg   [63:0] tmp_17_reg_894;
wire   [63:0] tmp_18_fu_633_p1;
reg   [63:0] tmp_18_reg_899;
wire   [63:0] tmp_19_fu_637_p1;
reg   [63:0] tmp_19_reg_904;
wire   [63:0] tmp_20_fu_641_p1;
reg   [63:0] tmp_20_reg_909;
wire   [63:0] tmp_21_fu_645_p1;
reg   [63:0] tmp_21_reg_914;
wire   [63:0] tmp_22_fu_649_p1;
reg   [63:0] tmp_22_reg_919;
wire   [63:0] tmp_23_fu_653_p1;
reg   [63:0] tmp_23_reg_924;
wire   [63:0] tmp_24_fu_657_p1;
reg   [63:0] tmp_24_reg_929;
wire   [63:0] tmp_25_fu_662_p1;
reg   [63:0] tmp_25_reg_934;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d1;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_ce;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln31_fu_355_p1;
wire   [63:0] p_cast_fu_376_p1;
wire   [63:0] p_cast5_fu_397_p1;
wire   [63:0] p_cast6_fu_418_p1;
wire   [63:0] p_cast7_fu_439_p1;
wire   [63:0] p_cast8_fu_460_p1;
wire   [63:0] p_cast9_fu_481_p1;
wire   [63:0] p_cast10_fu_502_p1;
wire   [63:0] p_cast11_fu_523_p1;
wire   [63:0] p_cast12_fu_544_p1;
wire   [63:0] p_cast13_fu_565_p1;
wire   [63:0] p_cast14_fu_586_p1;
wire   [63:0] p_cast15_fu_607_p1;
reg    training_data_0_ce0_local;
reg   [10:0] training_data_0_address0_local;
reg    training_data_1_ce0_local;
reg   [10:0] training_data_1_address0_local;
wire   [10:0] lshr_ln_fu_345_p4;
wire   [11:0] p_sum_fu_361_p2;
wire   [10:0] tmp_14_fu_366_p4;
wire   [11:0] p_sum2_fu_382_p2;
wire   [10:0] tmp_26_fu_387_p4;
wire   [11:0] p_sum4_fu_403_p2;
wire   [10:0] tmp_27_fu_408_p4;
wire   [11:0] p_sum6_fu_424_p2;
wire   [10:0] tmp_28_fu_429_p4;
wire   [11:0] p_sum8_fu_445_p2;
wire   [10:0] tmp_29_fu_450_p4;
wire   [11:0] p_sum10_fu_466_p2;
wire   [10:0] tmp_30_fu_471_p4;
wire   [11:0] p_sum12_fu_487_p2;
wire   [10:0] tmp_31_fu_492_p4;
wire   [11:0] p_sum14_fu_508_p2;
wire   [10:0] tmp_32_fu_513_p4;
wire   [11:0] p_sum16_fu_529_p2;
wire   [10:0] tmp_33_fu_534_p4;
wire   [11:0] p_sum18_fu_550_p2;
wire   [10:0] tmp_34_fu_555_p4;
wire   [11:0] p_sum20_fu_571_p2;
wire   [10:0] tmp_35_fu_576_p4;
wire   [11:0] p_sum22_fu_592_p2;
wire   [10:0] tmp_36_fu_597_p4;
reg   [63:0] grp_fu_939_p0;
reg   [63:0] grp_fu_939_p1;
reg   [1:0] grp_fu_939_opcode;
reg    grp_fu_939_ce;
reg    grp_fu_943_ce;
reg    grp_fu_947_ce;
reg    grp_fu_951_ce;
reg    grp_fu_955_ce;
reg    grp_fu_959_ce;
reg    grp_fu_963_ce;
reg    grp_fu_967_ce;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_ready),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce1),.activations_1_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we1),.activations_1_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce1),.activations_0_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we1),.activations_0_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d1),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.tmp(tmp_reg_874),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.tmp_s(tmp_s_reg_879),.tmp_15(tmp_15_reg_884),.tmp_16(tmp_16_reg_889),.tmp_17(tmp_17_reg_894),.tmp_18(tmp_18_reg_899),.tmp_19(tmp_19_reg_904),.tmp_20(tmp_20_reg_909),.tmp_21(tmp_21_reg_914),.tmp_22(tmp_22_reg_919),.tmp_23(tmp_23_reg_924),.tmp_24(tmp_24_reg_929),.tmp_25(tmp_25_reg_934),.grp_fu_939_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din0),.grp_fu_939_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din1),.grp_fu_939_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_opcode),.grp_fu_939_p_dout0(grp_fu_2832_p_dout0),.grp_fu_939_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_ce),.grp_fu_943_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din0),.grp_fu_943_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din1),.grp_fu_943_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_opcode),.grp_fu_943_p_dout0(grp_fu_2836_p_dout0),.grp_fu_943_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_ce),.grp_fu_947_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din0),.grp_fu_947_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din1),.grp_fu_947_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_opcode),.grp_fu_947_p_dout0(grp_fu_2840_p_dout0),.grp_fu_947_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_ce),.grp_fu_951_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din0),.grp_fu_951_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din1),.grp_fu_951_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_opcode),.grp_fu_951_p_dout0(grp_fu_2844_p_dout0),.grp_fu_951_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_ce),.grp_fu_955_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din0),.grp_fu_955_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din1),.grp_fu_955_p_dout0(grp_fu_2848_p_dout0),.grp_fu_955_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_ce),.grp_fu_959_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din0),.grp_fu_959_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din1),.grp_fu_959_p_dout0(grp_fu_2852_p_dout0),.grp_fu_959_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_ce),.grp_fu_963_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din0),.grp_fu_963_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din1),.grp_fu_963_p_dout0(grp_fu_2856_p_dout0),.grp_fu_963_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_ce),.grp_fu_967_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din0),.grp_fu_967_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din1),.grp_fu_967_p_dout0(grp_fu_2860_p_dout0),.grp_fu_967_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_ce));
backprop_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_ready),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.grp_fu_939_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din0),.grp_fu_939_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din1),.grp_fu_939_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_opcode),.grp_fu_939_p_dout0(grp_fu_2832_p_dout0),.grp_fu_939_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_683 <= empty_fu_341_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_15_reg_884 <= tmp_15_fu_621_p1;
        tmp_16_reg_889 <= tmp_16_fu_625_p1;
        tmp_17_reg_894 <= tmp_17_fu_629_p1;
        tmp_18_reg_899 <= tmp_18_fu_633_p1;
        tmp_19_reg_904 <= tmp_19_fu_637_p1;
        tmp_20_reg_909 <= tmp_20_fu_641_p1;
        tmp_21_reg_914 <= tmp_21_fu_645_p1;
        tmp_22_reg_919 <= tmp_22_fu_649_p1;
        tmp_23_reg_924 <= tmp_23_fu_653_p1;
        tmp_24_reg_929 <= tmp_24_fu_657_p1;
        tmp_25_reg_934 <= tmp_25_fu_662_p1;
        tmp_reg_874 <= tmp_fu_613_p1;
        tmp_s_reg_879 <= tmp_s_fu_617_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_15_v_reg_729 <= grp_fu_327_p3;
        tmp_v_42_reg_724 <= grp_fu_334_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_16_v_reg_754 <= grp_fu_334_p3;
        tmp_17_v_reg_759 <= grp_fu_327_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_18_v_reg_784 <= grp_fu_334_p3;
        tmp_19_v_reg_789 <= grp_fu_327_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_20_v_reg_814 <= grp_fu_334_p3;
        tmp_21_v_reg_819 <= grp_fu_327_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_22_v_reg_844 <= grp_fu_334_p3;
        tmp_23_v_reg_849 <= grp_fu_327_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_v_reg_699 <= grp_fu_327_p3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_address1;
    end else begin
        activations_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_we1;
    end else begin
        activations_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_address1;
    end else begin
        activations_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_we1;
    end else begin
        activations_1_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done == 1'b0)) begin
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
    if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_939_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_939_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_ce;
    end else begin
        grp_fu_939_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_939_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_939_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_opcode;
    end else begin
        grp_fu_939_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_939_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_939_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din0;
    end else begin
        grp_fu_939_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_939_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_grp_fu_939_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_939_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_939_p_din1;
    end else begin
        grp_fu_939_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_943_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_ce;
    end else begin
        grp_fu_943_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_947_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_ce;
    end else begin
        grp_fu_947_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_951_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_ce;
    end else begin
        grp_fu_951_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_955_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_ce;
    end else begin
        grp_fu_955_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_959_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_ce;
    end else begin
        grp_fu_959_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_963_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_ce;
    end else begin
        grp_fu_963_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_967_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_ce;
    end else begin
        grp_fu_967_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast15_fu_607_p1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast14_fu_586_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast13_fu_565_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast12_fu_544_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast11_fu_523_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast10_fu_502_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast9_fu_481_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast8_fu_460_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast7_fu_439_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast6_fu_418_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd0))) begin
        training_data_0_address0_local = p_cast5_fu_397_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd1))) begin
        training_data_0_address0_local = p_cast_fu_376_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_0_address0_local = zext_ln31_fu_355_p1;
    end else begin
        training_data_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd1)))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast15_fu_607_p1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast14_fu_586_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast13_fu_565_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast12_fu_544_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast11_fu_523_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast10_fu_502_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast9_fu_481_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast8_fu_460_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast7_fu_439_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast6_fu_418_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd1))) begin
        training_data_1_address0_local = p_cast5_fu_397_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd0))) begin
        training_data_1_address0_local = p_cast_fu_376_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_1_address0_local = zext_ln31_fu_355_p1;
    end else begin
        training_data_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state7) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state3) & (empty_reg_683 == 1'd1)) | ((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd0)) | ((1'b1 == ap_CS_fsm_state2) & (empty_reg_683 == 1'd1)))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
assign activations_0_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_0_d1;
assign activations_1_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_activations_1_d1;
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
assign biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_address0;
assign biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_0_ce0;
assign biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_address0;
assign biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_biases1_1_ce0;
assign empty_fu_341_p1 = idx[0:0];
assign grp_fu_2832_p_ce = grp_fu_939_ce;
assign grp_fu_2832_p_din0 = grp_fu_939_p0;
assign grp_fu_2832_p_din1 = grp_fu_939_p1;
assign grp_fu_2832_p_opcode = grp_fu_939_opcode;
assign grp_fu_2836_p_ce = grp_fu_943_ce;
assign grp_fu_2836_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din0;
assign grp_fu_2836_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_din1;
assign grp_fu_2836_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_943_p_opcode;
assign grp_fu_2840_p_ce = grp_fu_947_ce;
assign grp_fu_2840_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din0;
assign grp_fu_2840_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_din1;
assign grp_fu_2840_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_947_p_opcode;
assign grp_fu_2844_p_ce = grp_fu_951_ce;
assign grp_fu_2844_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din0;
assign grp_fu_2844_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_din1;
assign grp_fu_2844_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_951_p_opcode;
assign grp_fu_2848_p_ce = grp_fu_955_ce;
assign grp_fu_2848_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din0;
assign grp_fu_2848_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_955_p_din1;
assign grp_fu_2852_p_ce = grp_fu_959_ce;
assign grp_fu_2852_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din0;
assign grp_fu_2852_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_959_p_din1;
assign grp_fu_2856_p_ce = grp_fu_963_ce;
assign grp_fu_2856_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din0;
assign grp_fu_2856_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_963_p_din1;
assign grp_fu_2860_p_ce = grp_fu_967_ce;
assign grp_fu_2860_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din0;
assign grp_fu_2860_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_grp_fu_967_p_din1;
assign grp_fu_327_p3 = ((empty_reg_683[0:0] == 1'b1) ? training_data_1_q0 : training_data_0_q0);
assign grp_fu_334_p3 = ((empty_reg_683[0:0] == 1'b1) ? training_data_0_q0 : training_data_1_q0);
assign grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_315_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_ap_start_reg;
assign lshr_ln_fu_345_p4 = {{idx[11:1]}};
assign p_cast10_fu_502_p1 = tmp_31_fu_492_p4;
assign p_cast11_fu_523_p1 = tmp_32_fu_513_p4;
assign p_cast12_fu_544_p1 = tmp_33_fu_534_p4;
assign p_cast13_fu_565_p1 = tmp_34_fu_555_p4;
assign p_cast14_fu_586_p1 = tmp_35_fu_576_p4;
assign p_cast15_fu_607_p1 = tmp_36_fu_597_p4;
assign p_cast5_fu_397_p1 = tmp_26_fu_387_p4;
assign p_cast6_fu_418_p1 = tmp_27_fu_408_p4;
assign p_cast7_fu_439_p1 = tmp_28_fu_429_p4;
assign p_cast8_fu_460_p1 = tmp_29_fu_450_p4;
assign p_cast9_fu_481_p1 = tmp_30_fu_471_p4;
assign p_cast_fu_376_p1 = tmp_14_fu_366_p4;
assign p_sum10_fu_466_p2 = (idx + 12'd6);
assign p_sum12_fu_487_p2 = (idx + 12'd7);
assign p_sum14_fu_508_p2 = (idx + 12'd8);
assign p_sum16_fu_529_p2 = (idx + 12'd9);
assign p_sum18_fu_550_p2 = (idx + 12'd10);
assign p_sum20_fu_571_p2 = (idx + 12'd11);
assign p_sum22_fu_592_p2 = (idx + 12'd12);
assign p_sum2_fu_382_p2 = (idx + 12'd2);
assign p_sum4_fu_403_p2 = (idx + 12'd3);
assign p_sum6_fu_424_p2 = (idx + 12'd4);
assign p_sum8_fu_445_p2 = (idx + 12'd5);
assign p_sum_fu_361_p2 = (idx + 12'd1);
assign tmp_14_fu_366_p4 = {{p_sum_fu_361_p2[11:1]}};
assign tmp_15_fu_621_p1 = tmp_15_v_reg_729;
assign tmp_16_fu_625_p1 = tmp_16_v_reg_754;
assign tmp_17_fu_629_p1 = tmp_17_v_reg_759;
assign tmp_18_fu_633_p1 = tmp_18_v_reg_784;
assign tmp_19_fu_637_p1 = tmp_19_v_reg_789;
assign tmp_20_fu_641_p1 = tmp_20_v_reg_814;
assign tmp_21_fu_645_p1 = tmp_21_v_reg_819;
assign tmp_22_fu_649_p1 = tmp_22_v_reg_844;
assign tmp_23_fu_653_p1 = tmp_23_v_reg_849;
assign tmp_24_fu_657_p1 = grp_fu_334_p3;
assign tmp_25_fu_662_p1 = grp_fu_327_p3;
assign tmp_26_fu_387_p4 = {{p_sum2_fu_382_p2[11:1]}};
assign tmp_27_fu_408_p4 = {{p_sum4_fu_403_p2[11:1]}};
assign tmp_28_fu_429_p4 = {{p_sum6_fu_424_p2[11:1]}};
assign tmp_29_fu_450_p4 = {{p_sum8_fu_445_p2[11:1]}};
assign tmp_30_fu_471_p4 = {{p_sum10_fu_466_p2[11:1]}};
assign tmp_31_fu_492_p4 = {{p_sum12_fu_487_p2[11:1]}};
assign tmp_32_fu_513_p4 = {{p_sum14_fu_508_p2[11:1]}};
assign tmp_33_fu_534_p4 = {{p_sum16_fu_529_p2[11:1]}};
assign tmp_34_fu_555_p4 = {{p_sum18_fu_550_p2[11:1]}};
assign tmp_35_fu_576_p4 = {{p_sum20_fu_571_p2[11:1]}};
assign tmp_36_fu_597_p4 = {{p_sum22_fu_592_p2[11:1]}};
assign tmp_fu_613_p1 = tmp_v_reg_699;
assign tmp_s_fu_617_p1 = tmp_v_42_reg_724;
assign training_data_0_address0 = training_data_0_address0_local;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = training_data_1_address0_local;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address0;
assign weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_address1;
assign weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce0;
assign weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_0_ce1;
assign weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address0;
assign weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_address1;
assign weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce0;
assign weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_290_weights1_1_ce1;
assign zext_ln31_fu_355_p1 = lshr_ln_fu_345_p4;
endmodule 