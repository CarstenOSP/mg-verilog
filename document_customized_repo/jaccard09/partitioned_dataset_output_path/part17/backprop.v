
module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_address0,training_data_ce0,training_data_q0,training_data_address1,training_data_ce1,training_data_q1,training_targets_address0,training_targets_ce0,training_targets_q0);  
parameter    ap_ST_fsm_state1 = 65'd1;
parameter    ap_ST_fsm_state2 = 65'd2;
parameter    ap_ST_fsm_state3 = 65'd4;
parameter    ap_ST_fsm_state4 = 65'd8;
parameter    ap_ST_fsm_state5 = 65'd16;
parameter    ap_ST_fsm_state6 = 65'd32;
parameter    ap_ST_fsm_state7 = 65'd64;
parameter    ap_ST_fsm_state8 = 65'd128;
parameter    ap_ST_fsm_state9 = 65'd256;
parameter    ap_ST_fsm_state10 = 65'd512;
parameter    ap_ST_fsm_state11 = 65'd1024;
parameter    ap_ST_fsm_state12 = 65'd2048;
parameter    ap_ST_fsm_state13 = 65'd4096;
parameter    ap_ST_fsm_state14 = 65'd8192;
parameter    ap_ST_fsm_state15 = 65'd16384;
parameter    ap_ST_fsm_state16 = 65'd32768;
parameter    ap_ST_fsm_state17 = 65'd65536;
parameter    ap_ST_fsm_state18 = 65'd131072;
parameter    ap_ST_fsm_state19 = 65'd262144;
parameter    ap_ST_fsm_state20 = 65'd524288;
parameter    ap_ST_fsm_state21 = 65'd1048576;
parameter    ap_ST_fsm_state22 = 65'd2097152;
parameter    ap_ST_fsm_state23 = 65'd4194304;
parameter    ap_ST_fsm_state24 = 65'd8388608;
parameter    ap_ST_fsm_state25 = 65'd16777216;
parameter    ap_ST_fsm_state26 = 65'd33554432;
parameter    ap_ST_fsm_state27 = 65'd67108864;
parameter    ap_ST_fsm_state28 = 65'd134217728;
parameter    ap_ST_fsm_state29 = 65'd268435456;
parameter    ap_ST_fsm_state30 = 65'd536870912;
parameter    ap_ST_fsm_state31 = 65'd1073741824;
parameter    ap_ST_fsm_state32 = 65'd2147483648;
parameter    ap_ST_fsm_state33 = 65'd4294967296;
parameter    ap_ST_fsm_state34 = 65'd8589934592;
parameter    ap_ST_fsm_state35 = 65'd17179869184;
parameter    ap_ST_fsm_state36 = 65'd34359738368;
parameter    ap_ST_fsm_state37 = 65'd68719476736;
parameter    ap_ST_fsm_state38 = 65'd137438953472;
parameter    ap_ST_fsm_state39 = 65'd274877906944;
parameter    ap_ST_fsm_state40 = 65'd549755813888;
parameter    ap_ST_fsm_state41 = 65'd1099511627776;
parameter    ap_ST_fsm_state42 = 65'd2199023255552;
parameter    ap_ST_fsm_state43 = 65'd4398046511104;
parameter    ap_ST_fsm_state44 = 65'd8796093022208;
parameter    ap_ST_fsm_state45 = 65'd17592186044416;
parameter    ap_ST_fsm_state46 = 65'd35184372088832;
parameter    ap_ST_fsm_state47 = 65'd70368744177664;
parameter    ap_ST_fsm_state48 = 65'd140737488355328;
parameter    ap_ST_fsm_state49 = 65'd281474976710656;
parameter    ap_ST_fsm_state50 = 65'd562949953421312;
parameter    ap_ST_fsm_state51 = 65'd1125899906842624;
parameter    ap_ST_fsm_state52 = 65'd2251799813685248;
parameter    ap_ST_fsm_state53 = 65'd4503599627370496;
parameter    ap_ST_fsm_state54 = 65'd9007199254740992;
parameter    ap_ST_fsm_state55 = 65'd18014398509481984;
parameter    ap_ST_fsm_state56 = 65'd36028797018963968;
parameter    ap_ST_fsm_state57 = 65'd72057594037927936;
parameter    ap_ST_fsm_state58 = 65'd144115188075855872;
parameter    ap_ST_fsm_state59 = 65'd288230376151711744;
parameter    ap_ST_fsm_state60 = 65'd576460752303423488;
parameter    ap_ST_fsm_state61 = 65'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 65'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 65'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 65'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 65'd18446744073709551616;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
output  [5:0] biases1_address0;
output   biases1_ce0;
output   biases1_we0;
output  [63:0] biases1_d0;
input  [63:0] biases1_q0;
output  [5:0] biases1_address1;
output   biases1_ce1;
output   biases1_we1;
output  [63:0] biases1_d1;
input  [63:0] biases1_q1;
output  [5:0] biases2_address0;
output   biases2_ce0;
output   biases2_we0;
output  [63:0] biases2_d0;
input  [63:0] biases2_q0;
output  [5:0] biases2_address1;
output   biases2_ce1;
output   biases2_we1;
output  [63:0] biases2_d1;
input  [63:0] biases2_q1;
output  [1:0] biases3_address0;
output   biases3_ce0;
output   biases3_we0;
output  [63:0] biases3_d0;
input  [63:0] biases3_q0;
output  [1:0] biases3_address1;
output   biases3_ce1;
input  [63:0] biases3_q1;
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
output  [11:0] training_data_address1;
output   training_data_ce1;
input  [63:0] training_data_q1;
output  [8:0] training_targets_address0;
output   training_targets_ce0;
input  [63:0] training_targets_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] weights1_address0;
reg weights1_ce0;
reg weights1_we0;
reg[9:0] weights1_address1;
reg weights1_ce1;
reg weights1_we1;
reg[11:0] weights2_address0;
reg weights2_ce0;
reg weights2_we0;
reg[11:0] weights2_address1;
reg weights2_ce1;
reg weights2_we1;
reg[7:0] weights3_address0;
reg weights3_ce0;
reg weights3_we0;
reg[7:0] weights3_address1;
reg weights3_ce1;
reg weights3_we1;
reg[5:0] biases1_address0;
reg biases1_ce0;
reg biases1_we0;
reg biases1_ce1;
reg biases1_we1;
reg[5:0] biases2_address0;
reg biases2_ce0;
reg biases2_we0;
reg biases2_ce1;
reg biases2_we1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg biases3_ce1;
reg[11:0] training_data_address0;
reg training_data_ce0;
reg training_data_ce1;
(* fsm_encoding = "none" *) reg   [64:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] phi_mul_load_reg_2777;
wire    ap_CS_fsm_state2;
reg   [7:0] i_17_reg_2783;
wire   [8:0] sub_ln66_fu_1805_p2;
reg   [8:0] sub_ln66_reg_2822;
wire    ap_CS_fsm_state53;
reg   [5:0] activations1_address0;
reg    activations1_ce0;
reg    activations1_we0;
reg   [63:0] activations1_d0;
wire   [63:0] activations1_q0;
reg   [5:0] activations1_address1;
reg    activations1_ce1;
reg    activations1_we1;
reg   [63:0] activations1_d1;
wire   [63:0] activations1_q1;
reg   [4:0] activations2_address0;
reg    activations2_ce0;
reg    activations2_we0;
reg   [63:0] activations2_d0;
wire   [63:0] activations2_q0;
reg   [4:0] activations2_address1;
reg    activations2_ce1;
wire   [63:0] activations2_q1;
reg   [4:0] activations2_1_address0;
reg    activations2_1_ce0;
reg    activations2_1_we0;
reg   [63:0] activations2_1_d0;
wire   [63:0] activations2_1_q0;
reg   [4:0] activations2_1_address1;
reg    activations2_1_ce1;
wire   [63:0] activations2_1_q1;
reg   [5:0] dactivations1_address0;
reg    dactivations1_ce0;
reg    dactivations1_we0;
wire   [63:0] dactivations1_q0;
reg   [5:0] dactivations2_address0;
reg    dactivations2_ce0;
reg    dactivations2_we0;
wire   [63:0] dactivations2_q0;
reg    dactivations2_ce1;
wire   [63:0] dactivations2_q1;
reg   [8:0] delta_weights1_address0;
reg    delta_weights1_ce0;
reg    delta_weights1_we0;
wire   [63:0] delta_weights1_q0;
reg   [8:0] delta_weights1_address1;
reg    delta_weights1_ce1;
reg    delta_weights1_we1;
wire   [63:0] delta_weights1_q1;
reg   [8:0] delta_weights1_1_address0;
reg    delta_weights1_1_ce0;
reg    delta_weights1_1_we0;
wire   [63:0] delta_weights1_1_q0;
reg   [8:0] delta_weights1_1_address1;
reg    delta_weights1_1_ce1;
reg    delta_weights1_1_we1;
wire   [63:0] delta_weights1_1_q1;
reg   [10:0] delta_weights2_address0;
reg    delta_weights2_ce0;
reg    delta_weights2_we0;
wire   [63:0] delta_weights2_q0;
reg   [10:0] delta_weights2_address1;
reg    delta_weights2_ce1;
reg    delta_weights2_we1;
wire   [63:0] delta_weights2_q1;
reg   [10:0] delta_weights2_1_address0;
reg    delta_weights2_1_ce0;
reg    delta_weights2_1_we0;
wire   [63:0] delta_weights2_1_q0;
reg   [10:0] delta_weights2_1_address1;
reg    delta_weights2_1_ce1;
reg    delta_weights2_1_we1;
wire   [63:0] delta_weights2_1_q1;
reg   [4:0] delta_weights3_address0;
reg    delta_weights3_ce0;
reg    delta_weights3_we0;
wire   [63:0] delta_weights3_q0;
reg    delta_weights3_ce1;
reg    delta_weights3_we1;
reg   [4:0] delta_weights3_1_address0;
reg    delta_weights3_1_ce0;
reg    delta_weights3_1_we0;
wire   [63:0] delta_weights3_1_q0;
reg    delta_weights3_1_ce1;
reg    delta_weights3_1_we1;
reg   [4:0] delta_weights3_2_address0;
reg    delta_weights3_2_ce0;
reg    delta_weights3_2_we0;
wire   [63:0] delta_weights3_2_q0;
reg    delta_weights3_2_ce1;
reg    delta_weights3_2_we1;
reg   [4:0] delta_weights3_3_address0;
reg    delta_weights3_3_ce0;
reg    delta_weights3_3_we0;
wire   [63:0] delta_weights3_3_q0;
reg    delta_weights3_3_ce1;
reg    delta_weights3_3_we1;
reg   [4:0] delta_weights3_4_address0;
reg    delta_weights3_4_ce0;
reg    delta_weights3_4_we0;
wire   [63:0] delta_weights3_4_q0;
reg    delta_weights3_4_ce1;
reg    delta_weights3_4_we1;
reg   [4:0] delta_weights3_5_address0;
reg    delta_weights3_5_ce0;
reg    delta_weights3_5_we0;
wire   [63:0] delta_weights3_5_q0;
reg    delta_weights3_5_ce1;
reg    delta_weights3_5_we1;
reg   [4:0] oracle_activations1_address0;
reg    oracle_activations1_ce0;
reg    oracle_activations1_we0;
wire   [63:0] oracle_activations1_q0;
reg   [4:0] oracle_activations1_address1;
reg    oracle_activations1_ce1;
wire   [63:0] oracle_activations1_q1;
reg   [4:0] oracle_activations1_1_address0;
reg    oracle_activations1_1_ce0;
reg    oracle_activations1_1_we0;
wire   [63:0] oracle_activations1_1_q0;
reg   [4:0] oracle_activations1_1_address1;
reg    oracle_activations1_1_ce1;
wire   [63:0] oracle_activations1_1_q1;
reg   [4:0] oracle_activations2_address0;
reg    oracle_activations2_ce0;
reg    oracle_activations2_we0;
wire   [63:0] oracle_activations2_q0;
reg   [4:0] oracle_activations2_address1;
reg    oracle_activations2_ce1;
wire   [63:0] oracle_activations2_q1;
reg   [4:0] oracle_activations2_1_address0;
reg    oracle_activations2_1_ce0;
reg    oracle_activations2_1_we0;
wire   [63:0] oracle_activations2_1_q0;
reg   [4:0] oracle_activations2_1_address1;
reg    oracle_activations2_1_ce1;
wire   [63:0] oracle_activations2_1_q1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_ready;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce1;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d0;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d1;
wire   [11:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce0;
wire   [11:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o_ap_vld;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_ready;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_ce;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_done;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_idle;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_ready;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_ce;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_ce;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_ap_done;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_ap_idle;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_ap_ready;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_d0;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce1;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce0;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce1;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_ce0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d1;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce1;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_ce0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d1;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_ce;
wire    grp_update_weights_1_fu_1659_ap_start;
wire    grp_update_weights_1_fu_1659_ap_done;
wire    grp_update_weights_1_fu_1659_ap_idle;
wire    grp_update_weights_1_fu_1659_ap_ready;
wire   [9:0] grp_update_weights_1_fu_1659_weights1_address0;
wire    grp_update_weights_1_fu_1659_weights1_ce0;
wire    grp_update_weights_1_fu_1659_weights1_we0;
wire   [63:0] grp_update_weights_1_fu_1659_weights1_d0;
wire   [9:0] grp_update_weights_1_fu_1659_weights1_address1;
wire    grp_update_weights_1_fu_1659_weights1_ce1;
wire    grp_update_weights_1_fu_1659_weights1_we1;
wire   [63:0] grp_update_weights_1_fu_1659_weights1_d1;
wire   [11:0] grp_update_weights_1_fu_1659_weights2_address0;
wire    grp_update_weights_1_fu_1659_weights2_ce0;
wire    grp_update_weights_1_fu_1659_weights2_we0;
wire   [63:0] grp_update_weights_1_fu_1659_weights2_d0;
wire   [11:0] grp_update_weights_1_fu_1659_weights2_address1;
wire    grp_update_weights_1_fu_1659_weights2_ce1;
wire    grp_update_weights_1_fu_1659_weights2_we1;
wire   [63:0] grp_update_weights_1_fu_1659_weights2_d1;
wire   [7:0] grp_update_weights_1_fu_1659_weights3_address0;
wire    grp_update_weights_1_fu_1659_weights3_ce0;
wire    grp_update_weights_1_fu_1659_weights3_we0;
wire   [63:0] grp_update_weights_1_fu_1659_weights3_d0;
wire   [7:0] grp_update_weights_1_fu_1659_weights3_address1;
wire    grp_update_weights_1_fu_1659_weights3_ce1;
wire    grp_update_weights_1_fu_1659_weights3_we1;
wire   [63:0] grp_update_weights_1_fu_1659_weights3_d1;
wire   [8:0] grp_update_weights_1_fu_1659_d_weights1_0_address0;
wire    grp_update_weights_1_fu_1659_d_weights1_0_ce0;
wire   [8:0] grp_update_weights_1_fu_1659_d_weights1_0_address1;
wire    grp_update_weights_1_fu_1659_d_weights1_0_ce1;
wire   [8:0] grp_update_weights_1_fu_1659_d_weights1_1_address0;
wire    grp_update_weights_1_fu_1659_d_weights1_1_ce0;
wire   [8:0] grp_update_weights_1_fu_1659_d_weights1_1_address1;
wire    grp_update_weights_1_fu_1659_d_weights1_1_ce1;
wire   [10:0] grp_update_weights_1_fu_1659_d_weights2_0_address0;
wire    grp_update_weights_1_fu_1659_d_weights2_0_ce0;
wire   [10:0] grp_update_weights_1_fu_1659_d_weights2_0_address1;
wire    grp_update_weights_1_fu_1659_d_weights2_0_ce1;
wire   [10:0] grp_update_weights_1_fu_1659_d_weights2_1_address0;
wire    grp_update_weights_1_fu_1659_d_weights2_1_ce0;
wire   [10:0] grp_update_weights_1_fu_1659_d_weights2_1_address1;
wire    grp_update_weights_1_fu_1659_d_weights2_1_ce1;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_0_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_0_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_1_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_1_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_2_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_2_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_3_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_3_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_4_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_4_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_weights3_5_address0;
wire    grp_update_weights_1_fu_1659_d_weights3_5_ce0;
wire   [5:0] grp_update_weights_1_fu_1659_biases1_address0;
wire    grp_update_weights_1_fu_1659_biases1_ce0;
wire    grp_update_weights_1_fu_1659_biases1_we0;
wire   [63:0] grp_update_weights_1_fu_1659_biases1_d0;
wire   [5:0] grp_update_weights_1_fu_1659_biases1_address1;
wire    grp_update_weights_1_fu_1659_biases1_ce1;
wire    grp_update_weights_1_fu_1659_biases1_we1;
wire   [63:0] grp_update_weights_1_fu_1659_biases1_d1;
wire   [5:0] grp_update_weights_1_fu_1659_biases2_address0;
wire    grp_update_weights_1_fu_1659_biases2_ce0;
wire    grp_update_weights_1_fu_1659_biases2_we0;
wire   [63:0] grp_update_weights_1_fu_1659_biases2_d0;
wire   [5:0] grp_update_weights_1_fu_1659_biases2_address1;
wire    grp_update_weights_1_fu_1659_biases2_ce1;
wire    grp_update_weights_1_fu_1659_biases2_we1;
wire   [63:0] grp_update_weights_1_fu_1659_biases2_d1;
wire   [1:0] grp_update_weights_1_fu_1659_biases3_address0;
wire    grp_update_weights_1_fu_1659_biases3_ce0;
wire    grp_update_weights_1_fu_1659_biases3_we0;
wire   [63:0] grp_update_weights_1_fu_1659_biases3_d0;
wire   [1:0] grp_update_weights_1_fu_1659_biases3_address1;
wire    grp_update_weights_1_fu_1659_biases3_ce1;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases1_0_address0;
wire    grp_update_weights_1_fu_1659_d_biases1_0_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases1_0_address1;
wire    grp_update_weights_1_fu_1659_d_biases1_0_ce1;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases1_1_address0;
wire    grp_update_weights_1_fu_1659_d_biases1_1_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases1_1_address1;
wire    grp_update_weights_1_fu_1659_d_biases1_1_ce1;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases2_0_address0;
wire    grp_update_weights_1_fu_1659_d_biases2_0_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases2_0_address1;
wire    grp_update_weights_1_fu_1659_d_biases2_0_ce1;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases2_1_address0;
wire    grp_update_weights_1_fu_1659_d_biases2_1_ce0;
wire   [4:0] grp_update_weights_1_fu_1659_d_biases2_1_address1;
wire    grp_update_weights_1_fu_1659_d_biases2_1_ce1;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2881_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2881_p_din1;
wire   [1:0] grp_update_weights_1_fu_1659_grp_fu_2881_p_opcode;
wire    grp_update_weights_1_fu_1659_grp_fu_2881_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2885_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2885_p_din1;
wire   [0:0] grp_update_weights_1_fu_1659_grp_fu_2885_p_opcode;
wire    grp_update_weights_1_fu_1659_grp_fu_2885_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2889_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2889_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2889_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2905_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2905_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2905_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2897_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2897_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2897_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2893_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2893_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2893_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2909_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2909_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2909_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2913_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2913_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2913_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2917_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2917_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2917_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2921_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2921_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2921_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2925_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2925_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2925_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2929_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2929_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2929_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2933_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2933_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2933_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2937_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2937_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2937_p_ce;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2941_p_din0;
wire   [63:0] grp_update_weights_1_fu_1659_grp_fu_2941_p_din1;
wire    grp_update_weights_1_fu_1659_grp_fu_2941_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
reg    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
reg   [63:0] activations3_2_fu_348;
reg   [63:0] activations3_fu_340;
reg   [63:0] activations3_1_fu_344;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg;
wire    ap_CS_fsm_state52;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg;
wire    ap_CS_fsm_state54;
wire    ap_CS_fsm_state55;
reg    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg;
wire    ap_CS_fsm_state56;
wire    ap_CS_fsm_state57;
reg    grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg;
reg    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg;
wire    ap_CS_fsm_state58;
wire    ap_CS_fsm_state59;
reg    grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg;
wire    ap_CS_fsm_state60;
wire    ap_CS_fsm_state61;
reg    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg;
wire    ap_CS_fsm_state62;
wire    ap_CS_fsm_state63;
reg    grp_update_weights_1_fu_1659_ap_start_reg;
wire    ap_CS_fsm_state64;
wire    ap_CS_fsm_state65;
reg   [11:0] phi_mul_fu_220;
wire   [11:0] add_ln220_1_fu_1708_p2;
wire   [0:0] icmp_ln220_fu_1714_p2;
reg   [7:0] i_fu_224;
wire   [7:0] add_ln220_fu_1720_p2;
reg   [63:0] mux_case_05784_fu_228;
reg   [63:0] mux_case_15888_fu_232;
reg   [63:0] mux_case_25992_fu_236;
reg   [63:0] mux_case_06096_fu_240;
reg   [63:0] mux_case_161100_fu_244;
reg   [63:0] mux_case_262104_fu_248;
reg   [63:0] empty_fu_252;
reg   [63:0] empty_91_fu_256;
reg   [63:0] empty_92_fu_260;
reg   [63:0] output_difference_1_promoted_fu_264;
reg   [63:0] output_difference_0_promoted_fu_268;
reg   [63:0] output_difference_2_promoted_fu_272;
reg    activations1_we1_local;
reg    activations1_ce1_local;
reg   [5:0] activations1_address1_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg   [5:0] activations1_address0_local;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
reg    activations2_we1_local;
reg    activations2_ce1_local;
reg   [4:0] activations2_address1_local;
reg    activations2_we0_local;
reg    activations2_ce0_local;
reg   [4:0] activations2_address0_local;
reg    activations2_1_we1_local;
reg    activations2_1_ce1_local;
reg   [4:0] activations2_1_address1_local;
reg    activations2_1_we0_local;
reg    activations2_1_ce0_local;
reg   [4:0] activations2_1_address0_local;
wire   [6:0] trunc_ln66_fu_1794_p1;
wire   [8:0] p_shl_fu_1797_p3;
wire   [8:0] zext_ln66_fu_1791_p1;
wire   [63:0] grp_fu_2881_p2;
reg   [63:0] grp_fu_2881_p0;
reg   [63:0] grp_fu_2881_p1;
reg   [1:0] grp_fu_2881_opcode;
reg    grp_fu_2881_ce;
wire   [63:0] grp_fu_2885_p2;
reg   [63:0] grp_fu_2885_p0;
reg   [63:0] grp_fu_2885_p1;
reg   [1:0] grp_fu_2885_opcode;
reg    grp_fu_2885_ce;
wire   [63:0] grp_fu_2889_p2;
reg   [63:0] grp_fu_2889_p0;
reg   [63:0] grp_fu_2889_p1;
reg    grp_fu_2889_ce;
wire   [63:0] grp_fu_2893_p2;
reg   [63:0] grp_fu_2893_p0;
reg   [63:0] grp_fu_2893_p1;
reg    grp_fu_2893_ce;
wire   [63:0] grp_fu_2897_p2;
reg   [63:0] grp_fu_2897_p0;
reg   [63:0] grp_fu_2897_p1;
reg    grp_fu_2897_ce;
wire   [63:0] grp_fu_2901_p2;
reg   [63:0] grp_fu_2901_p0;
reg   [63:0] grp_fu_2901_p1;
reg    grp_fu_2901_ce;
wire   [63:0] grp_fu_2905_p2;
reg   [63:0] grp_fu_2905_p0;
reg   [63:0] grp_fu_2905_p1;
reg    grp_fu_2905_ce;
wire   [63:0] grp_fu_2909_p2;
reg   [63:0] grp_fu_2909_p0;
reg   [63:0] grp_fu_2909_p1;
reg    grp_fu_2909_ce;
wire   [63:0] grp_fu_2913_p2;
reg   [63:0] grp_fu_2913_p0;
reg   [63:0] grp_fu_2913_p1;
reg    grp_fu_2913_ce;
wire   [63:0] grp_fu_2917_p2;
reg   [63:0] grp_fu_2917_p0;
reg   [63:0] grp_fu_2917_p1;
reg    grp_fu_2917_ce;
wire   [63:0] grp_fu_2921_p2;
reg   [63:0] grp_fu_2921_p0;
reg   [63:0] grp_fu_2921_p1;
reg    grp_fu_2921_ce;
wire   [63:0] grp_fu_2925_p2;
reg   [63:0] grp_fu_2925_p0;
reg   [63:0] grp_fu_2925_p1;
reg    grp_fu_2925_ce;
wire   [63:0] grp_fu_2929_p2;
reg   [63:0] grp_fu_2929_p0;
reg   [63:0] grp_fu_2929_p1;
reg    grp_fu_2929_ce;
wire   [63:0] grp_fu_2933_p2;
reg   [63:0] grp_fu_2933_p0;
reg   [63:0] grp_fu_2933_p1;
reg    grp_fu_2933_ce;
wire   [63:0] grp_fu_2937_p2;
reg   [63:0] grp_fu_2937_p0;
reg   [63:0] grp_fu_2937_p1;
reg    grp_fu_2937_ce;
wire   [63:0] grp_fu_2941_p2;
reg   [63:0] grp_fu_2941_p0;
reg   [63:0] grp_fu_2941_p1;
reg    grp_fu_2941_ce;
reg   [64:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
reg    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
reg    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
reg    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
reg    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
reg    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
reg    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
reg    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
reg    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
reg    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
reg    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
reg    ap_block_state57_on_subcall_done;
reg    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
reg    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
reg    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
reg    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
reg    ap_ST_fsm_state65_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 65'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg = 1'b0;
#0 activations3_2_fu_348 = 64'd0;
#0 activations3_fu_340 = 64'd0;
#0 activations3_1_fu_344 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg = 1'b0;
#0 grp_update_weights_1_fu_1659_ap_start_reg = 1'b0;
#0 phi_mul_fu_220 = 12'd0;
#0 i_fu_224 = 8'd0;
#0 mux_case_05784_fu_228 = 64'd0;
#0 mux_case_15888_fu_232 = 64'd0;
#0 mux_case_25992_fu_236 = 64'd0;
#0 mux_case_06096_fu_240 = 64'd0;
#0 mux_case_161100_fu_244 = 64'd0;
#0 mux_case_262104_fu_248 = 64'd0;
#0 empty_fu_252 = 64'd0;
#0 empty_91_fu_256 = 64'd0;
#0 empty_92_fu_260 = 64'd0;
#0 output_difference_1_promoted_fu_264 = 64'd0;
#0 output_difference_0_promoted_fu_268 = 64'd0;
#0 output_difference_2_promoted_fu_272 = 64'd0;
end
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_address0),.ce0(activations1_ce0),.we0(activations1_we0),.d0(activations1_d0),.q0(activations1_q0),.address1(activations1_address1),.ce1(activations1_ce1),.we1(activations1_we1),.d1(activations1_d1),.q1(activations1_q1));
backprop_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_address0),.ce0(activations2_ce0),.we0(activations2_we0),.d0(activations2_d0),.q0(activations2_q0),.address1(activations2_address1),.ce1(activations2_ce1),.we1(activations2_we1_local),.d1(64'd0),.q1(activations2_q1));
backprop_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_1_address0),.ce0(activations2_1_ce0),.we0(activations2_1_we0),.d0(activations2_1_d0),.q0(activations2_1_q0),.address1(activations2_1_address1),.ce1(activations2_1_ce1),.we1(activations2_1_we1_local),.d1(64'd0),.q1(activations2_1_q1));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_d0),.q0(dactivations2_q0),.address1(grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address1),.ce1(dactivations2_ce1),.q1(dactivations2_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d0),.q0(delta_weights1_q0),.address1(delta_weights1_address1),.ce1(delta_weights1_ce1),.we1(delta_weights1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d1),.q1(delta_weights1_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_1_address0),.ce0(delta_weights1_1_ce0),.we0(delta_weights1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d0),.q0(delta_weights1_1_q0),.address1(delta_weights1_1_address1),.ce1(delta_weights1_1_ce1),.we1(delta_weights1_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d1),.q1(delta_weights1_1_q1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d0),.q0(delta_weights2_q0),.address1(delta_weights2_address1),.ce1(delta_weights2_ce1),.we1(delta_weights2_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d1),.q1(delta_weights2_q1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_1_address0),.ce0(delta_weights2_1_ce0),.we0(delta_weights2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d0),.q0(delta_weights2_1_q0),.address1(delta_weights2_1_address1),.ce1(delta_weights2_1_ce1),.we1(delta_weights2_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d1),.q1(delta_weights2_1_q1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d0),.q0(delta_weights3_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address1),.ce1(delta_weights3_ce1),.we1(delta_weights3_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_1_address0),.ce0(delta_weights3_1_ce0),.we0(delta_weights3_1_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d0),.q0(delta_weights3_1_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address1),.ce1(delta_weights3_1_ce1),.we1(delta_weights3_1_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_2_address0),.ce0(delta_weights3_2_ce0),.we0(delta_weights3_2_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d0),.q0(delta_weights3_2_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address1),.ce1(delta_weights3_2_ce1),.we1(delta_weights3_2_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_3_address0),.ce0(delta_weights3_3_ce0),.we0(delta_weights3_3_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d0),.q0(delta_weights3_3_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address1),.ce1(delta_weights3_3_ce1),.we1(delta_weights3_3_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_4_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_4_address0),.ce0(delta_weights3_4_ce0),.we0(delta_weights3_4_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d0),.q0(delta_weights3_4_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address1),.ce1(delta_weights3_4_ce1),.we1(delta_weights3_4_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
delta_weights3_5_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_5_address0),.ce0(delta_weights3_5_ce0),.we0(delta_weights3_5_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d0),.q0(delta_weights3_5_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address1),.ce1(delta_weights3_5_ce1),.we1(delta_weights3_5_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d1));
backprop_oracle_activations1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_d0),.q0(oracle_activations1_q0),.address1(oracle_activations1_address1),.ce1(oracle_activations1_ce1),.q1(oracle_activations1_q1));
backprop_oracle_activations1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_1_address0),.ce0(oracle_activations1_1_ce0),.we0(oracle_activations1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_d0),.q0(oracle_activations1_1_q0),.address1(oracle_activations1_1_address1),.ce1(oracle_activations1_1_ce1),.q1(oracle_activations1_1_q1));
backprop_oracle_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1),.ce1(oracle_activations2_ce1),.q1(oracle_activations2_q1));
backprop_oracle_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_1_address0),.ce0(oracle_activations2_1_ce0),.we0(oracle_activations2_1_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_d0),.q0(oracle_activations2_1_q0),.address1(oracle_activations2_1_address1),.ce1(oracle_activations2_1_ce1),.q1(oracle_activations2_1_q1));
backprop_matrix_vector_product_with_bias_input_layer_1 grp_matrix_vector_product_with_bias_input_layer_1_fu_1473(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_ready),.biases1_address0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_address0),.biases1_ce0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_ce0),.biases1_q0(biases1_q0),.weights1_address0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address0),.weights1_ce0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce0),.weights1_q0(weights1_q0),.weights1_address1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address1),.weights1_ce1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce1),.weights1_q1(weights1_q1),.activations_address0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address0),.activations_ce0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce0),.activations_we0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we0),.activations_d0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d0),.activations_address1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address1),.activations_ce1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce1),.activations_we1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we1),.activations_d1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d1),.activations_q1(activations1_q1),.training_data_address0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address0),.training_data_ce0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce0),.training_data_q0(training_data_q0),.training_data_address1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address1),.training_data_ce1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce1),.training_data_q1(training_data_q1),.idx(phi_mul_load_reg_2777),.grp_fu_2881_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_ce),.grp_fu_2885_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_ce),.grp_fu_2889_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_ce),.grp_fu_2893_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din0),.grp_fu_2893_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din1),.grp_fu_2893_p_dout0(grp_fu_2893_p2),.grp_fu_2893_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce1),.activations1_q1(activations1_q1),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_d0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_ce),.grp_fu_2885_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_ce),.grp_fu_2897_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din0),.grp_fu_2897_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din1),.grp_fu_2897_p_dout0(grp_fu_2897_p2),.grp_fu_2897_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_ce),.grp_fu_2901_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din0),.grp_fu_2901_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din1),.grp_fu_2901_p_dout0(grp_fu_2901_p2),.grp_fu_2901_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2 grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_ready),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce1),.weights2_q1(weights2_q1),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce0),.activations1_q0(activations1_q0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce1),.activations1_q1(activations1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_d0),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_d0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_1 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_ready),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce1),.activations2_q1(activations2_q1),.biases2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_address0),.biases2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_ce0),.biases2_q0(biases2_q0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_11 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_ready),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce1),.activations2_q1(activations2_q1),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_d0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_ce),.grp_fu_2897_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din0),.grp_fu_2897_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din1),.grp_fu_2897_p_dout0(grp_fu_2897_p2),.grp_fu_2897_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_ce),.grp_fu_2901_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din0),.grp_fu_2901_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din1),.grp_fu_2901_p_dout0(grp_fu_2901_p2),.grp_fu_2901_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_ce),.grp_fu_2885_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_ready),.activations3_2_load(64'd0),.activations3_load(64'd0),.activations3_1_load(64'd0),.weights3_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce1),.weights3_q1(weights3_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce0),.activations2_q0(activations2_q0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce1),.activations2_q1(activations2_q1),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce0),.activations2_1_q0(activations2_1_q0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations3_10_out_i(activations3_2_fu_348),.activations3_10_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o),.activations3_10_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o_ap_vld),.activations3_9_out_i(activations3_fu_340),.activations3_9_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o),.activations3_9_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o_ap_vld),.activations3_8_out_i(activations3_1_fu_344),.activations3_8_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o),.activations3_8_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o_ap_vld),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_12 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_ready),.activations3_i(activations3_fu_340),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_348),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_344),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o_ap_vld),.biases3_address0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_address0),.biases3_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_13 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_ready),.mux_case_262104(mux_case_262104_fu_248),.mux_case_161100(mux_case_161100_fu_244),.mux_case_06096(mux_case_06096_fu_240),.activations3_i(activations3_fu_340),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_348),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_344),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o_ap_vld),.mux_case_262102_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out),.mux_case_262102_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out_ap_vld),.mux_case_16198_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out),.mux_case_16198_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out_ap_vld),.mux_case_06094_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out),.mux_case_06094_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out_ap_vld),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_ce),.grp_fu_2885_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_ce),.grp_fu_2897_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din0),.grp_fu_2897_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din1),.grp_fu_2897_p_dout0(grp_fu_2897_p2),.grp_fu_2897_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_ce),.grp_fu_2901_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din0),.grp_fu_2901_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din1),.grp_fu_2901_p_dout0(grp_fu_2901_p2),.grp_fu_2901_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_ready),.activations3_load_2(activations3_fu_340),.activations3_1_load_2(activations3_1_fu_344),.activations3_2_load_2(activations3_2_fu_348),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_sum_out_ap_vld),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_ce),.grp_fu_2901_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din0),.grp_fu_2901_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din1),.grp_fu_2901_p_dout0(grp_fu_2901_p2),.grp_fu_2901_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_ready),.mux_case_25992(mux_case_25992_fu_236),.mux_case_15888(mux_case_15888_fu_232),.mux_case_05784(mux_case_05784_fu_228),.activations3_load_2(activations3_fu_340),.activations3_1_load_2(activations3_1_fu_344),.activations3_2_load_2(activations3_2_fu_348),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_sum_out),.mux_case_25990_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out),.mux_case_25990_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out_ap_vld),.mux_case_15886_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out),.mux_case_15886_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out_ap_vld),.mux_case_05782_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out),.mux_case_05782_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out_ap_vld),.grp_fu_2897_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din0),.grp_fu_2897_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din1),.grp_fu_2897_p_dout0(grp_fu_2897_p2),.grp_fu_2897_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_ce),.grp_fu_2901_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din0),.grp_fu_2901_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din1),.grp_fu_2901_p_dout0(grp_fu_2901_p2),.grp_fu_2901_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_272),.output_difference_0_promoted(output_difference_0_promoted_fu_268),.output_difference_1_promoted(output_difference_1_promoted_fu_264),.empty_40(empty_92_fu_260),.empty_41(empty_91_fu_256),.empty(empty_fu_252),.mux_case_05782_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out),.mux_case_15886_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out),.mux_case_25990_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out),.mul_ln66(sub_ln66_reg_2822),.training_targets_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_address0),.training_targets_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_ce0),.training_targets_q0(training_targets_q0),.mux_case_06094_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out),.mux_case_16198_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out),.mux_case_262102_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out_ap_vld),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out_ap_vld),.p_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out),.p_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out_ap_vld),.p_out1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1),.p_out1_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1_ap_vld),.p_out2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2),.p_out2_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2_ap_vld),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_ce));
backprop_backprop_Pipeline_delta_matrix_weights3_loop grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start),.ap_done(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_done),.ap_idle(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_idle),.ap_ready(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_ready),.delta_weights3_5_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address0),.delta_weights3_5_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce0),.delta_weights3_5_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we0),.delta_weights3_5_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d0),.delta_weights3_5_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address1),.delta_weights3_5_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce1),.delta_weights3_5_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we1),.delta_weights3_5_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_d1),.delta_weights3_4_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address0),.delta_weights3_4_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce0),.delta_weights3_4_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we0),.delta_weights3_4_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d0),.delta_weights3_4_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address1),.delta_weights3_4_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce1),.delta_weights3_4_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we1),.delta_weights3_4_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_d1),.delta_weights3_3_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address0),.delta_weights3_3_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce0),.delta_weights3_3_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we0),.delta_weights3_3_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d0),.delta_weights3_3_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address1),.delta_weights3_3_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce1),.delta_weights3_3_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we1),.delta_weights3_3_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_d1),.delta_weights3_2_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address0),.delta_weights3_2_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce0),.delta_weights3_2_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we0),.delta_weights3_2_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d0),.delta_weights3_2_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address1),.delta_weights3_2_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce1),.delta_weights3_2_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we1),.delta_weights3_2_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_d1),.delta_weights3_1_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address0),.delta_weights3_1_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce0),.delta_weights3_1_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we0),.delta_weights3_1_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d0),.delta_weights3_1_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address1),.delta_weights3_1_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce1),.delta_weights3_1_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we1),.delta_weights3_1_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_d1),.delta_weights3_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address0),.delta_weights3_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce0),.delta_weights3_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we0),.delta_weights3_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d0),.delta_weights3_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address1),.delta_weights3_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce1),.delta_weights3_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we1),.delta_weights3_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_d1),.activations2_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce0),.activations2_q0(activations2_q0),.activations2_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce1),.activations2_q1(activations2_q1),.p_reload114(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2),.p_reload113(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1),.p_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out),.activations2_1_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce0),.activations2_1_q0(activations2_1_q0),.activations2_1_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.grp_fu_2905_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din0),.grp_fu_2905_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din1),.grp_fu_2905_p_dout0(grp_fu_2905_p2),.grp_fu_2905_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_ce),.grp_fu_2909_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din0),.grp_fu_2909_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din1),.grp_fu_2909_p_dout0(grp_fu_2909_p2),.grp_fu_2909_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_ce),.grp_fu_2913_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din0),.grp_fu_2913_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din1),.grp_fu_2913_p_dout0(grp_fu_2913_p2),.grp_fu_2913_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_ce),.grp_fu_2917_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din0),.grp_fu_2917_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din1),.grp_fu_2917_p_dout0(grp_fu_2917_p2),.grp_fu_2917_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_ce),.grp_fu_2921_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din0),.grp_fu_2921_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din1),.grp_fu_2921_p_dout0(grp_fu_2921_p2),.grp_fu_2921_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_ce),.grp_fu_2925_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din0),.grp_fu_2925_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din1),.grp_fu_2925_p_dout0(grp_fu_2925_p2),.grp_fu_2925_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_ce),.grp_fu_2929_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din0),.grp_fu_2929_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din1),.grp_fu_2929_p_dout0(grp_fu_2929_p2),.grp_fu_2929_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_ce),.grp_fu_2933_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din0),.grp_fu_2933_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din1),.grp_fu_2933_p_dout0(grp_fu_2933_p2),.grp_fu_2933_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_ce),.grp_fu_2937_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din0),.grp_fu_2937_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din1),.grp_fu_2937_p_dout0(grp_fu_2937_p2),.grp_fu_2937_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_ce));
backprop_backprop_Pipeline_activations2_loop grp_backprop_Pipeline_activations2_loop_fu_1616(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start),.ap_done(grp_backprop_Pipeline_activations2_loop_fu_1616_ap_done),.ap_idle(grp_backprop_Pipeline_activations2_loop_fu_1616_ap_idle),.ap_ready(grp_backprop_Pipeline_activations2_loop_fu_1616_ap_ready),.oracle_activations2_1_address0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_ce0),.oracle_activations2_1_we0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_we0),.oracle_activations2_1_d0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_d0),.oracle_activations2_address0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_ce0),.oracle_activations2_we0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_we0),.oracle_activations2_d0(grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_d0),.weights3_address0(grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce1),.weights3_q1(weights3_q1),.p_reload114(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2),.p_reload113(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1),.p_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out),.dactivations2_address0(grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce0),.dactivations2_q0(dactivations2_q0),.dactivations2_address1(grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address1),.dactivations2_ce1(grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce1),.dactivations2_q1(dactivations2_q1),.grp_fu_2881_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_ce),.grp_fu_2885_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_ce),.grp_fu_2893_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din0),.grp_fu_2893_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din1),.grp_fu_2893_p_dout0(grp_fu_2893_p2),.grp_fu_2893_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_ce),.grp_fu_2941_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din1),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_ce0),.activations1_q0(activations1_q0),.delta_weights2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we0),.delta_weights2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d0),.delta_weights2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we1),.delta_weights2_1_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_d1),.delta_weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address0),.delta_weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce0),.delta_weights2_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we0),.delta_weights2_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d0),.delta_weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address1),.delta_weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce1),.delta_weights2_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we1),.delta_weights2_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_d1),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_ce),.grp_fu_2893_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din0),.grp_fu_2893_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din1),.grp_fu_2893_p_dout0(grp_fu_2893_p2),.grp_fu_2893_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_ce),.grp_fu_2941_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din1),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_ce),.grp_fu_2905_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din0),.grp_fu_2905_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din1),.grp_fu_2905_p_dout0(grp_fu_2905_p2),.grp_fu_2905_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_ready),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce1),.weights2_q1(weights2_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_ce0),.oracle_activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_we0),.oracle_activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_d0),.oracle_activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_address0),.oracle_activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_ce0),.oracle_activations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_we0),.oracle_activations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_ce0),.dactivations1_q0(dactivations1_q0),.grp_fu_2881_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_ce),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_ready),.phi_mul(phi_mul_load_reg_2777),.training_data_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_address0),.training_data_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_ce0),.training_data_q0(training_data_q0),.delta_weights1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we0),.delta_weights1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d0),.delta_weights1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we1),.delta_weights1_1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_d1),.delta_weights1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address0),.delta_weights1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce0),.delta_weights1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we0),.delta_weights1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d0),.delta_weights1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address1),.delta_weights1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce1),.delta_weights1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we1),.delta_weights1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_d1),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce0),.oracle_activations1_q0(oracle_activations1_q0),.oracle_activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address1),.oracle_activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce1),.oracle_activations1_q1(oracle_activations1_q1),.oracle_activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address0),.oracle_activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce0),.oracle_activations1_1_q0(oracle_activations1_1_q0),.oracle_activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address1),.oracle_activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce1),.oracle_activations1_1_q1(oracle_activations1_1_q1),.grp_fu_2889_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_ce),.grp_fu_2893_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din0),.grp_fu_2893_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din1),.grp_fu_2893_p_dout0(grp_fu_2893_p2),.grp_fu_2893_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_ce),.grp_fu_2941_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din1),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_ce),.grp_fu_2905_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din0),.grp_fu_2905_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din1),.grp_fu_2905_p_dout0(grp_fu_2905_p2),.grp_fu_2905_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_ce));
backprop_update_weights_1 grp_update_weights_1_fu_1659(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_fu_1659_ap_start),.ap_done(grp_update_weights_1_fu_1659_ap_done),.ap_idle(grp_update_weights_1_fu_1659_ap_idle),.ap_ready(grp_update_weights_1_fu_1659_ap_ready),.weights1_address0(grp_update_weights_1_fu_1659_weights1_address0),.weights1_ce0(grp_update_weights_1_fu_1659_weights1_ce0),.weights1_we0(grp_update_weights_1_fu_1659_weights1_we0),.weights1_d0(grp_update_weights_1_fu_1659_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_fu_1659_weights1_address1),.weights1_ce1(grp_update_weights_1_fu_1659_weights1_ce1),.weights1_we1(grp_update_weights_1_fu_1659_weights1_we1),.weights1_d1(grp_update_weights_1_fu_1659_weights1_d1),.weights1_q1(weights1_q1),.weights2_address0(grp_update_weights_1_fu_1659_weights2_address0),.weights2_ce0(grp_update_weights_1_fu_1659_weights2_ce0),.weights2_we0(grp_update_weights_1_fu_1659_weights2_we0),.weights2_d0(grp_update_weights_1_fu_1659_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_fu_1659_weights2_address1),.weights2_ce1(grp_update_weights_1_fu_1659_weights2_ce1),.weights2_we1(grp_update_weights_1_fu_1659_weights2_we1),.weights2_d1(grp_update_weights_1_fu_1659_weights2_d1),.weights2_q1(weights2_q1),.weights3_address0(grp_update_weights_1_fu_1659_weights3_address0),.weights3_ce0(grp_update_weights_1_fu_1659_weights3_ce0),.weights3_we0(grp_update_weights_1_fu_1659_weights3_we0),.weights3_d0(grp_update_weights_1_fu_1659_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_fu_1659_weights3_address1),.weights3_ce1(grp_update_weights_1_fu_1659_weights3_ce1),.weights3_we1(grp_update_weights_1_fu_1659_weights3_we1),.weights3_d1(grp_update_weights_1_fu_1659_weights3_d1),.weights3_q1(weights3_q1),.d_weights1_0_address0(grp_update_weights_1_fu_1659_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_1_fu_1659_d_weights1_0_ce0),.d_weights1_0_q0(delta_weights1_q0),.d_weights1_0_address1(grp_update_weights_1_fu_1659_d_weights1_0_address1),.d_weights1_0_ce1(grp_update_weights_1_fu_1659_d_weights1_0_ce1),.d_weights1_0_q1(delta_weights1_q1),.d_weights1_1_address0(grp_update_weights_1_fu_1659_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_1_fu_1659_d_weights1_1_ce0),.d_weights1_1_q0(delta_weights1_1_q0),.d_weights1_1_address1(grp_update_weights_1_fu_1659_d_weights1_1_address1),.d_weights1_1_ce1(grp_update_weights_1_fu_1659_d_weights1_1_ce1),.d_weights1_1_q1(delta_weights1_1_q1),.d_weights2_0_address0(grp_update_weights_1_fu_1659_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_1_fu_1659_d_weights2_0_ce0),.d_weights2_0_q0(delta_weights2_q0),.d_weights2_0_address1(grp_update_weights_1_fu_1659_d_weights2_0_address1),.d_weights2_0_ce1(grp_update_weights_1_fu_1659_d_weights2_0_ce1),.d_weights2_0_q1(delta_weights2_q1),.d_weights2_1_address0(grp_update_weights_1_fu_1659_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_1_fu_1659_d_weights2_1_ce0),.d_weights2_1_q0(delta_weights2_1_q0),.d_weights2_1_address1(grp_update_weights_1_fu_1659_d_weights2_1_address1),.d_weights2_1_ce1(grp_update_weights_1_fu_1659_d_weights2_1_ce1),.d_weights2_1_q1(delta_weights2_1_q1),.d_weights3_0_address0(grp_update_weights_1_fu_1659_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_1_fu_1659_d_weights3_0_ce0),.d_weights3_0_q0(delta_weights3_q0),.d_weights3_1_address0(grp_update_weights_1_fu_1659_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_1_fu_1659_d_weights3_1_ce0),.d_weights3_1_q0(delta_weights3_1_q0),.d_weights3_2_address0(grp_update_weights_1_fu_1659_d_weights3_2_address0),.d_weights3_2_ce0(grp_update_weights_1_fu_1659_d_weights3_2_ce0),.d_weights3_2_q0(delta_weights3_2_q0),.d_weights3_3_address0(grp_update_weights_1_fu_1659_d_weights3_3_address0),.d_weights3_3_ce0(grp_update_weights_1_fu_1659_d_weights3_3_ce0),.d_weights3_3_q0(delta_weights3_3_q0),.d_weights3_4_address0(grp_update_weights_1_fu_1659_d_weights3_4_address0),.d_weights3_4_ce0(grp_update_weights_1_fu_1659_d_weights3_4_ce0),.d_weights3_4_q0(delta_weights3_4_q0),.d_weights3_5_address0(grp_update_weights_1_fu_1659_d_weights3_5_address0),.d_weights3_5_ce0(grp_update_weights_1_fu_1659_d_weights3_5_ce0),.d_weights3_5_q0(delta_weights3_5_q0),.biases1_address0(grp_update_weights_1_fu_1659_biases1_address0),.biases1_ce0(grp_update_weights_1_fu_1659_biases1_ce0),.biases1_we0(grp_update_weights_1_fu_1659_biases1_we0),.biases1_d0(grp_update_weights_1_fu_1659_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_fu_1659_biases1_address1),.biases1_ce1(grp_update_weights_1_fu_1659_biases1_ce1),.biases1_we1(grp_update_weights_1_fu_1659_biases1_we1),.biases1_d1(grp_update_weights_1_fu_1659_biases1_d1),.biases1_q1(biases1_q1),.biases2_address0(grp_update_weights_1_fu_1659_biases2_address0),.biases2_ce0(grp_update_weights_1_fu_1659_biases2_ce0),.biases2_we0(grp_update_weights_1_fu_1659_biases2_we0),.biases2_d0(grp_update_weights_1_fu_1659_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_fu_1659_biases2_address1),.biases2_ce1(grp_update_weights_1_fu_1659_biases2_ce1),.biases2_we1(grp_update_weights_1_fu_1659_biases2_we1),.biases2_d1(grp_update_weights_1_fu_1659_biases2_d1),.biases2_q1(biases2_q1),.biases3_address0(grp_update_weights_1_fu_1659_biases3_address0),.biases3_ce0(grp_update_weights_1_fu_1659_biases3_ce0),.biases3_we0(grp_update_weights_1_fu_1659_biases3_we0),.biases3_d0(grp_update_weights_1_fu_1659_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_1_fu_1659_biases3_address1),.biases3_ce1(grp_update_weights_1_fu_1659_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_0_address0(grp_update_weights_1_fu_1659_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_1_fu_1659_d_biases1_0_ce0),.d_biases1_0_q0(oracle_activations1_q0),.d_biases1_0_address1(grp_update_weights_1_fu_1659_d_biases1_0_address1),.d_biases1_0_ce1(grp_update_weights_1_fu_1659_d_biases1_0_ce1),.d_biases1_0_q1(oracle_activations1_q1),.d_biases1_1_address0(grp_update_weights_1_fu_1659_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_1_fu_1659_d_biases1_1_ce0),.d_biases1_1_q0(oracle_activations1_1_q0),.d_biases1_1_address1(grp_update_weights_1_fu_1659_d_biases1_1_address1),.d_biases1_1_ce1(grp_update_weights_1_fu_1659_d_biases1_1_ce1),.d_biases1_1_q1(oracle_activations1_1_q1),.d_biases2_0_address0(grp_update_weights_1_fu_1659_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_1_fu_1659_d_biases2_0_ce0),.d_biases2_0_q0(oracle_activations2_q0),.d_biases2_0_address1(grp_update_weights_1_fu_1659_d_biases2_0_address1),.d_biases2_0_ce1(grp_update_weights_1_fu_1659_d_biases2_0_ce1),.d_biases2_0_q1(oracle_activations2_q1),.d_biases2_1_address0(grp_update_weights_1_fu_1659_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_1_fu_1659_d_biases2_1_ce0),.d_biases2_1_q0(oracle_activations2_1_q0),.d_biases2_1_address1(grp_update_weights_1_fu_1659_d_biases2_1_address1),.d_biases2_1_ce1(grp_update_weights_1_fu_1659_d_biases2_1_ce1),.d_biases2_1_q1(oracle_activations2_1_q1),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out),.grp_fu_2881_p_din0(grp_update_weights_1_fu_1659_grp_fu_2881_p_din0),.grp_fu_2881_p_din1(grp_update_weights_1_fu_1659_grp_fu_2881_p_din1),.grp_fu_2881_p_opcode(grp_update_weights_1_fu_1659_grp_fu_2881_p_opcode),.grp_fu_2881_p_dout0(grp_fu_2881_p2),.grp_fu_2881_p_ce(grp_update_weights_1_fu_1659_grp_fu_2881_p_ce),.grp_fu_2885_p_din0(grp_update_weights_1_fu_1659_grp_fu_2885_p_din0),.grp_fu_2885_p_din1(grp_update_weights_1_fu_1659_grp_fu_2885_p_din1),.grp_fu_2885_p_opcode(grp_update_weights_1_fu_1659_grp_fu_2885_p_opcode),.grp_fu_2885_p_dout0(grp_fu_2885_p2),.grp_fu_2885_p_ce(grp_update_weights_1_fu_1659_grp_fu_2885_p_ce),.grp_fu_2889_p_din0(grp_update_weights_1_fu_1659_grp_fu_2889_p_din0),.grp_fu_2889_p_din1(grp_update_weights_1_fu_1659_grp_fu_2889_p_din1),.grp_fu_2889_p_dout0(grp_fu_2889_p2),.grp_fu_2889_p_ce(grp_update_weights_1_fu_1659_grp_fu_2889_p_ce),.grp_fu_2905_p_din0(grp_update_weights_1_fu_1659_grp_fu_2905_p_din0),.grp_fu_2905_p_din1(grp_update_weights_1_fu_1659_grp_fu_2905_p_din1),.grp_fu_2905_p_dout0(grp_fu_2905_p2),.grp_fu_2905_p_ce(grp_update_weights_1_fu_1659_grp_fu_2905_p_ce),.grp_fu_2897_p_din0(grp_update_weights_1_fu_1659_grp_fu_2897_p_din0),.grp_fu_2897_p_din1(grp_update_weights_1_fu_1659_grp_fu_2897_p_din1),.grp_fu_2897_p_dout0(grp_fu_2897_p2),.grp_fu_2897_p_ce(grp_update_weights_1_fu_1659_grp_fu_2897_p_ce),.grp_fu_2893_p_din0(grp_update_weights_1_fu_1659_grp_fu_2893_p_din0),.grp_fu_2893_p_din1(grp_update_weights_1_fu_1659_grp_fu_2893_p_din1),.grp_fu_2893_p_dout0(grp_fu_2893_p2),.grp_fu_2893_p_ce(grp_update_weights_1_fu_1659_grp_fu_2893_p_ce),.grp_fu_2909_p_din0(grp_update_weights_1_fu_1659_grp_fu_2909_p_din0),.grp_fu_2909_p_din1(grp_update_weights_1_fu_1659_grp_fu_2909_p_din1),.grp_fu_2909_p_dout0(grp_fu_2909_p2),.grp_fu_2909_p_ce(grp_update_weights_1_fu_1659_grp_fu_2909_p_ce),.grp_fu_2913_p_din0(grp_update_weights_1_fu_1659_grp_fu_2913_p_din0),.grp_fu_2913_p_din1(grp_update_weights_1_fu_1659_grp_fu_2913_p_din1),.grp_fu_2913_p_dout0(grp_fu_2913_p2),.grp_fu_2913_p_ce(grp_update_weights_1_fu_1659_grp_fu_2913_p_ce),.grp_fu_2917_p_din0(grp_update_weights_1_fu_1659_grp_fu_2917_p_din0),.grp_fu_2917_p_din1(grp_update_weights_1_fu_1659_grp_fu_2917_p_din1),.grp_fu_2917_p_dout0(grp_fu_2917_p2),.grp_fu_2917_p_ce(grp_update_weights_1_fu_1659_grp_fu_2917_p_ce),.grp_fu_2921_p_din0(grp_update_weights_1_fu_1659_grp_fu_2921_p_din0),.grp_fu_2921_p_din1(grp_update_weights_1_fu_1659_grp_fu_2921_p_din1),.grp_fu_2921_p_dout0(grp_fu_2921_p2),.grp_fu_2921_p_ce(grp_update_weights_1_fu_1659_grp_fu_2921_p_ce),.grp_fu_2925_p_din0(grp_update_weights_1_fu_1659_grp_fu_2925_p_din0),.grp_fu_2925_p_din1(grp_update_weights_1_fu_1659_grp_fu_2925_p_din1),.grp_fu_2925_p_dout0(grp_fu_2925_p2),.grp_fu_2925_p_ce(grp_update_weights_1_fu_1659_grp_fu_2925_p_ce),.grp_fu_2929_p_din0(grp_update_weights_1_fu_1659_grp_fu_2929_p_din0),.grp_fu_2929_p_din1(grp_update_weights_1_fu_1659_grp_fu_2929_p_din1),.grp_fu_2929_p_dout0(grp_fu_2929_p2),.grp_fu_2929_p_ce(grp_update_weights_1_fu_1659_grp_fu_2929_p_ce),.grp_fu_2933_p_din0(grp_update_weights_1_fu_1659_grp_fu_2933_p_din0),.grp_fu_2933_p_din1(grp_update_weights_1_fu_1659_grp_fu_2933_p_din1),.grp_fu_2933_p_dout0(grp_fu_2933_p2),.grp_fu_2933_p_ce(grp_update_weights_1_fu_1659_grp_fu_2933_p_ce),.grp_fu_2937_p_din0(grp_update_weights_1_fu_1659_grp_fu_2937_p_din0),.grp_fu_2937_p_din1(grp_update_weights_1_fu_1659_grp_fu_2937_p_din1),.grp_fu_2937_p_dout0(grp_fu_2937_p2),.grp_fu_2937_p_ce(grp_update_weights_1_fu_1659_grp_fu_2937_p_ce),.grp_fu_2941_p_din0(grp_update_weights_1_fu_1659_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_update_weights_1_fu_1659_grp_fu_2941_p_din1),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_update_weights_1_fu_1659_grp_fu_2941_p_ce));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U321(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2881_p0),.din1(grp_fu_2881_p1),.opcode(grp_fu_2881_opcode),.ce(grp_fu_2881_ce),.dout(grp_fu_2881_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U322(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2885_p0),.din1(grp_fu_2885_p1),.opcode(grp_fu_2885_opcode),.ce(grp_fu_2885_ce),.dout(grp_fu_2885_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U323(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2889_p0),.din1(grp_fu_2889_p1),.ce(grp_fu_2889_ce),.dout(grp_fu_2889_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U324(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2893_p0),.din1(grp_fu_2893_p1),.ce(grp_fu_2893_ce),.dout(grp_fu_2893_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2897_p0),.din1(grp_fu_2897_p1),.ce(grp_fu_2897_ce),.dout(grp_fu_2897_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2901_p0),.din1(grp_fu_2901_p1),.ce(grp_fu_2901_ce),.dout(grp_fu_2901_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2905_p0),.din1(grp_fu_2905_p1),.ce(grp_fu_2905_ce),.dout(grp_fu_2905_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2909_p0),.din1(grp_fu_2909_p1),.ce(grp_fu_2909_ce),.dout(grp_fu_2909_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2913_p0),.din1(grp_fu_2913_p1),.ce(grp_fu_2913_ce),.dout(grp_fu_2913_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2917_p0),.din1(grp_fu_2917_p1),.ce(grp_fu_2917_ce),.dout(grp_fu_2917_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U331(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2921_p0),.din1(grp_fu_2921_p1),.ce(grp_fu_2921_ce),.dout(grp_fu_2921_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2925_p0),.din1(grp_fu_2925_p1),.ce(grp_fu_2925_ce),.dout(grp_fu_2925_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2929_p0),.din1(grp_fu_2929_p1),.ce(grp_fu_2929_ce),.dout(grp_fu_2929_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2933_p0),.din1(grp_fu_2933_p1),.ce(grp_fu_2933_ce),.dout(grp_fu_2933_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2937_p0),.din1(grp_fu_2937_p1),.ce(grp_fu_2937_ce),.dout(grp_fu_2937_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2941_p0),.din1(grp_fu_2941_p1),.ce(grp_fu_2941_ce),.dout(grp_fu_2941_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state60)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state62)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state52)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state46)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state44)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state54)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state50)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state58)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state56)) begin
            grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations2_loop_fu_1616_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state56)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_fu_1659_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state64)) begin
            grp_update_weights_1_fu_1659_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_fu_1659_ap_ready == 1'b1)) begin
            grp_update_weights_1_fu_1659_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0))) begin
        activations3_1_fu_344 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state49) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_344 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state47) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_344 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_1_o;
    end else if (((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state45))) begin
        activations3_1_fu_344 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_8_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0))) begin
        activations3_2_fu_348 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state49) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_348 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state47) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_348 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_2_o;
    end else if (((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state45))) begin
        activations3_2_fu_348 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_10_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0))) begin
        activations3_fu_340 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state49) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_340 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_activations3_o;
    end else if (((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state47))) begin
        activations3_fu_340 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_activations3_o;
    end else if (((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state45))) begin
        activations3_fu_340 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations3_9_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_224 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0))) begin
        i_fu_224 <= add_ln220_fu_1720_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_220 <= 12'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0))) begin
        phi_mul_fu_220 <= add_ln220_1_fu_1708_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        empty_91_fu_256 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out1;
        empty_92_fu_260 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out;
        empty_fu_252 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_p_out2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_17_reg_2783 <= i_fu_224;
        phi_mul_load_reg_2777 <= phi_mul_fu_220;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        mux_case_05784_fu_228 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_05782_out;
        mux_case_06096_fu_240 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_06094_out;
        mux_case_15888_fu_232 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_15886_out;
        mux_case_161100_fu_244 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_16198_out;
        mux_case_25992_fu_236 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_mux_case_25990_out;
        mux_case_262104_fu_248 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_mux_case_262102_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        output_difference_0_promoted_fu_268 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_1_out;
        output_difference_1_promoted_fu_264 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_2_out;
        output_difference_2_promoted_fu_272 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_output_difference_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        sub_ln66_reg_2822 <= sub_ln66_fu_1805_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address0;
    end else begin
        activations1_address0 = activations1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        activations1_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        activations1_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        activations1_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        activations1_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations1_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        activations1_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations1_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        activations1_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        activations1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        activations1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        activations1_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        activations1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations1_address0_local = 64'd1;
    end else begin
        activations1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_address1;
    end else begin
        activations1_address1 = activations1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        activations1_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        activations1_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        activations1_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        activations1_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations1_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        activations1_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations1_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        activations1_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations1_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        activations1_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        activations1_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        activations1_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations1_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        activations1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations1_address1_local = 64'd0;
    end else begin
        activations1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce0;
    end else begin
        activations1_ce0 = activations1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_ce1;
    end else begin
        activations1_ce1 = activations1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce1_local = 1'b1;
    end else begin
        activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_d0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_d1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_d1;
    end else begin
        activations1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_we0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_we1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_activations_we1;
    end else begin
        activations1_we1 = activations1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_1_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_address0;
    end else begin
        activations2_1_address0 = activations2_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_1_address0_local = 64'd1;
    end else begin
        activations2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_1_address1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_address1;
    end else begin
        activations2_1_address1 = activations2_1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_1_address1_local = 64'd0;
    end else begin
        activations2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_ce0;
    end else begin
        activations2_1_ce0 = activations2_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_ce1;
    end else begin
        activations2_1_ce1 = activations2_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_1_ce1_local = 1'b1;
    end else begin
        activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_d0;
    end else begin
        activations2_1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_1_we0;
    end else begin
        activations2_1_we0 = activations2_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations2_1_we1_local = 1'b1;
    end else begin
        activations2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_address0;
    end else begin
        activations2_address0 = activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_address0_local = 64'd1;
    end else begin
        activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_address1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_address1;
    end else begin
        activations2_address1 = activations2_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_address1_local = 64'd0;
    end else begin
        activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations2_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_ce1;
    end else begin
        activations2_ce1 = activations2_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_d0;
    end else begin
        activations2_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_activations2_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd0)))) begin
        activations2_we1_local = 1'b1;
    end else begin
        activations2_we1_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_done == 1'b0)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end
assign ap_ST_fsm_state42_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_done == 1'b0)) begin
        ap_ST_fsm_state45_blk = 1'b1;
    end else begin
        ap_ST_fsm_state45_blk = 1'b0;
    end
end
assign ap_ST_fsm_state46_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_done == 1'b0)) begin
        ap_ST_fsm_state47_blk = 1'b1;
    end else begin
        ap_ST_fsm_state47_blk = 1'b0;
    end
end
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_done == 1'b0)) begin
        ap_ST_fsm_state49_blk = 1'b1;
    end else begin
        ap_ST_fsm_state49_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_done == 1'b0)) begin
        ap_ST_fsm_state51_blk = 1'b1;
    end else begin
        ap_ST_fsm_state51_blk = 1'b0;
    end
end
assign ap_ST_fsm_state52_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_done == 1'b0)) begin
        ap_ST_fsm_state53_blk = 1'b1;
    end else begin
        ap_ST_fsm_state53_blk = 1'b0;
    end
end
assign ap_ST_fsm_state54_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_done == 1'b0)) begin
        ap_ST_fsm_state55_blk = 1'b1;
    end else begin
        ap_ST_fsm_state55_blk = 1'b0;
    end
end
assign ap_ST_fsm_state56_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state57_on_subcall_done)) begin
        ap_ST_fsm_state57_blk = 1'b1;
    end else begin
        ap_ST_fsm_state57_blk = 1'b0;
    end
end
assign ap_ST_fsm_state58_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_done == 1'b0)) begin
        ap_ST_fsm_state59_blk = 1'b1;
    end else begin
        ap_ST_fsm_state59_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state60_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_done == 1'b0)) begin
        ap_ST_fsm_state61_blk = 1'b1;
    end else begin
        ap_ST_fsm_state61_blk = 1'b0;
    end
end
assign ap_ST_fsm_state62_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_done == 1'b0)) begin
        ap_ST_fsm_state63_blk = 1'b1;
    end else begin
        ap_ST_fsm_state63_blk = 1'b0;
    end
end
assign ap_ST_fsm_state64_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_1_fu_1659_ap_done == 1'b0)) begin
        ap_ST_fsm_state65_blk = 1'b1;
    end else begin
        ap_ST_fsm_state65_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases1_address0 = grp_update_weights_1_fu_1659_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases1_address0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases1_ce0 = grp_update_weights_1_fu_1659_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases1_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases1_ce1 = grp_update_weights_1_fu_1659_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases1_we0 = grp_update_weights_1_fu_1659_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases1_we1 = grp_update_weights_1_fu_1659_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases2_address0 = grp_update_weights_1_fu_1659_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        biases2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases2_ce0 = grp_update_weights_1_fu_1659_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        biases2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases2_ce1 = grp_update_weights_1_fu_1659_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases2_we0 = grp_update_weights_1_fu_1659_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases2_we1 = grp_update_weights_1_fu_1659_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases3_address0 = grp_update_weights_1_fu_1659_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        biases3_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases3_ce0 = grp_update_weights_1_fu_1659_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        biases3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases3_ce1 = grp_update_weights_1_fu_1659_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        biases3_we0 = grp_update_weights_1_fu_1659_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_address0;
    end else begin
        dactivations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_dactivations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations2_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1616_dactivations2_ce1;
    end else begin
        dactivations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_1_address0 = grp_update_weights_1_fu_1659_d_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address0;
    end else begin
        delta_weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_1_address1 = grp_update_weights_1_fu_1659_d_weights1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_address1;
    end else begin
        delta_weights1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_1_ce0 = grp_update_weights_1_fu_1659_d_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce0;
    end else begin
        delta_weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_1_ce1 = grp_update_weights_1_fu_1659_d_weights1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_ce1;
    end else begin
        delta_weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we0;
    end else begin
        delta_weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_1_we1;
    end else begin
        delta_weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_address0 = grp_update_weights_1_fu_1659_d_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_address1 = grp_update_weights_1_fu_1659_d_weights1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_address1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_address1;
    end else begin
        delta_weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_ce0 = grp_update_weights_1_fu_1659_d_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights1_ce1 = grp_update_weights_1_fu_1659_d_weights1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        delta_weights1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_delta_weights1_we1;
    end else begin
        delta_weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_1_address0 = grp_update_weights_1_fu_1659_d_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address0;
    end else begin
        delta_weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_1_address1 = grp_update_weights_1_fu_1659_d_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_address1;
    end else begin
        delta_weights2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_1_ce0 = grp_update_weights_1_fu_1659_d_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce0;
    end else begin
        delta_weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_1_ce1 = grp_update_weights_1_fu_1659_d_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_ce1;
    end else begin
        delta_weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we0;
    end else begin
        delta_weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_1_we1;
    end else begin
        delta_weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_address0 = grp_update_weights_1_fu_1659_d_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_address1 = grp_update_weights_1_fu_1659_d_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_address1;
    end else begin
        delta_weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_ce0 = grp_update_weights_1_fu_1659_d_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights2_ce1 = grp_update_weights_1_fu_1659_d_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        delta_weights2_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_delta_weights2_we1;
    end else begin
        delta_weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_1_address0 = grp_update_weights_1_fu_1659_d_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_address0;
    end else begin
        delta_weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_1_ce0 = grp_update_weights_1_fu_1659_d_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce0;
    end else begin
        delta_weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_ce1;
    end else begin
        delta_weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we0;
    end else begin
        delta_weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_1_we1;
    end else begin
        delta_weights3_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_2_address0 = grp_update_weights_1_fu_1659_d_weights3_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_address0;
    end else begin
        delta_weights3_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_2_ce0 = grp_update_weights_1_fu_1659_d_weights3_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce0;
    end else begin
        delta_weights3_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_ce1;
    end else begin
        delta_weights3_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we0;
    end else begin
        delta_weights3_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_2_we1;
    end else begin
        delta_weights3_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_3_address0 = grp_update_weights_1_fu_1659_d_weights3_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_address0;
    end else begin
        delta_weights3_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_3_ce0 = grp_update_weights_1_fu_1659_d_weights3_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce0;
    end else begin
        delta_weights3_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_ce1;
    end else begin
        delta_weights3_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we0;
    end else begin
        delta_weights3_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_3_we1;
    end else begin
        delta_weights3_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_4_address0 = grp_update_weights_1_fu_1659_d_weights3_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_4_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_address0;
    end else begin
        delta_weights3_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_4_ce0 = grp_update_weights_1_fu_1659_d_weights3_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_4_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce0;
    end else begin
        delta_weights3_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_4_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_ce1;
    end else begin
        delta_weights3_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_4_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we0;
    end else begin
        delta_weights3_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_4_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_4_we1;
    end else begin
        delta_weights3_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_5_address0 = grp_update_weights_1_fu_1659_d_weights3_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_5_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_address0;
    end else begin
        delta_weights3_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_5_ce0 = grp_update_weights_1_fu_1659_d_weights3_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_5_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce0;
    end else begin
        delta_weights3_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_5_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_ce1;
    end else begin
        delta_weights3_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_5_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we0;
    end else begin
        delta_weights3_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_5_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_5_we1;
    end else begin
        delta_weights3_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_address0 = grp_update_weights_1_fu_1659_d_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        delta_weights3_ce0 = grp_update_weights_1_fu_1659_d_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_delta_weights3_we1;
    end else begin
        delta_weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2881_ce = grp_update_weights_1_fu_1659_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2881_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2881_ce = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_ce;
    end else begin
        grp_fu_2881_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2881_opcode = grp_update_weights_1_fu_1659_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2881_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2881_opcode = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_opcode;
    end else begin
        grp_fu_2881_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2881_p0 = grp_update_weights_1_fu_1659_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2881_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2881_p0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din0;
    end else begin
        grp_fu_2881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2881_p1 = grp_update_weights_1_fu_1659_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2881_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2881_p1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2881_p_din1;
    end else begin
        grp_fu_2881_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2885_ce = grp_update_weights_1_fu_1659_grp_fu_2885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2885_ce = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2885_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2885_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2885_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2885_ce = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_ce;
    end else begin
        grp_fu_2885_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2885_opcode = grp_update_weights_1_fu_1659_grp_fu_2885_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2885_opcode = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2885_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2885_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2885_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2885_opcode = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_opcode;
    end else begin
        grp_fu_2885_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2885_p0 = grp_update_weights_1_fu_1659_grp_fu_2885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2885_p0 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2885_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2885_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2885_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2885_p0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din0;
    end else begin
        grp_fu_2885_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2885_p1 = grp_update_weights_1_fu_1659_grp_fu_2885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2885_p1 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2885_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2885_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2885_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2885_p1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2885_p_din1;
    end else begin
        grp_fu_2885_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2889_ce = grp_update_weights_1_fu_1659_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2889_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2889_ce = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_ce;
    end else begin
        grp_fu_2889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2889_p0 = grp_update_weights_1_fu_1659_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2889_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2889_p0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din0;
    end else begin
        grp_fu_2889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2889_p1 = grp_update_weights_1_fu_1659_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2889_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2889_p1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2889_p_din1;
    end else begin
        grp_fu_2889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2893_ce = grp_update_weights_1_fu_1659_grp_fu_2893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2893_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2893_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2893_ce = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2893_ce = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_ce;
    end else begin
        grp_fu_2893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2893_p0 = grp_update_weights_1_fu_1659_grp_fu_2893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2893_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2893_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2893_p0 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2893_p0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din0;
    end else begin
        grp_fu_2893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2893_p1 = grp_update_weights_1_fu_1659_grp_fu_2893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2893_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2893_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2893_p1 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2893_p1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_grp_fu_2893_p_din1;
    end else begin
        grp_fu_2893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2897_ce = grp_update_weights_1_fu_1659_grp_fu_2897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2897_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2897_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2897_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2897_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_ce;
    end else begin
        grp_fu_2897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2897_p0 = grp_update_weights_1_fu_1659_grp_fu_2897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2897_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2897_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2897_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2897_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din0;
    end else begin
        grp_fu_2897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2897_p1 = grp_update_weights_1_fu_1659_grp_fu_2897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2897_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2897_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2897_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2897_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2897_p_din1;
    end else begin
        grp_fu_2897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2901_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2901_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2901_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2901_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2901_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_ce;
    end else begin
        grp_fu_2901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2901_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2901_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2901_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2901_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2901_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din0;
    end else begin
        grp_fu_2901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2901_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_grp_fu_2901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2901_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_grp_fu_2901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2901_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_grp_fu_2901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2901_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_grp_fu_2901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2901_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_grp_fu_2901_p_din1;
    end else begin
        grp_fu_2901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2905_ce = grp_update_weights_1_fu_1659_grp_fu_2905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2905_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2905_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2905_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_ce;
    end else begin
        grp_fu_2905_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2905_p0 = grp_update_weights_1_fu_1659_grp_fu_2905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2905_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2905_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2905_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din0;
    end else begin
        grp_fu_2905_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2905_p1 = grp_update_weights_1_fu_1659_grp_fu_2905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2905_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2905_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2905_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2905_p_din1;
    end else begin
        grp_fu_2905_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2909_ce = grp_update_weights_1_fu_1659_grp_fu_2909_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2909_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_ce;
    end else begin
        grp_fu_2909_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2909_p0 = grp_update_weights_1_fu_1659_grp_fu_2909_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2909_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din0;
    end else begin
        grp_fu_2909_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2909_p1 = grp_update_weights_1_fu_1659_grp_fu_2909_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2909_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2909_p_din1;
    end else begin
        grp_fu_2909_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2913_ce = grp_update_weights_1_fu_1659_grp_fu_2913_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2913_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_ce;
    end else begin
        grp_fu_2913_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2913_p0 = grp_update_weights_1_fu_1659_grp_fu_2913_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2913_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din0;
    end else begin
        grp_fu_2913_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2913_p1 = grp_update_weights_1_fu_1659_grp_fu_2913_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2913_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2913_p_din1;
    end else begin
        grp_fu_2913_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2917_ce = grp_update_weights_1_fu_1659_grp_fu_2917_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2917_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_ce;
    end else begin
        grp_fu_2917_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2917_p0 = grp_update_weights_1_fu_1659_grp_fu_2917_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2917_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din0;
    end else begin
        grp_fu_2917_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2917_p1 = grp_update_weights_1_fu_1659_grp_fu_2917_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2917_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2917_p_din1;
    end else begin
        grp_fu_2917_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2921_ce = grp_update_weights_1_fu_1659_grp_fu_2921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2921_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_ce;
    end else begin
        grp_fu_2921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2921_p0 = grp_update_weights_1_fu_1659_grp_fu_2921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2921_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din0;
    end else begin
        grp_fu_2921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2921_p1 = grp_update_weights_1_fu_1659_grp_fu_2921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2921_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2921_p_din1;
    end else begin
        grp_fu_2921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2925_ce = grp_update_weights_1_fu_1659_grp_fu_2925_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2925_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_ce;
    end else begin
        grp_fu_2925_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2925_p0 = grp_update_weights_1_fu_1659_grp_fu_2925_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2925_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din0;
    end else begin
        grp_fu_2925_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2925_p1 = grp_update_weights_1_fu_1659_grp_fu_2925_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2925_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2925_p_din1;
    end else begin
        grp_fu_2925_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2929_ce = grp_update_weights_1_fu_1659_grp_fu_2929_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2929_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_ce;
    end else begin
        grp_fu_2929_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2929_p0 = grp_update_weights_1_fu_1659_grp_fu_2929_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2929_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din0;
    end else begin
        grp_fu_2929_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2929_p1 = grp_update_weights_1_fu_1659_grp_fu_2929_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2929_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2929_p_din1;
    end else begin
        grp_fu_2929_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2933_ce = grp_update_weights_1_fu_1659_grp_fu_2933_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2933_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_ce;
    end else begin
        grp_fu_2933_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2933_p0 = grp_update_weights_1_fu_1659_grp_fu_2933_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2933_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din0;
    end else begin
        grp_fu_2933_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2933_p1 = grp_update_weights_1_fu_1659_grp_fu_2933_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2933_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2933_p_din1;
    end else begin
        grp_fu_2933_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2937_ce = grp_update_weights_1_fu_1659_grp_fu_2937_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2937_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_ce;
    end else begin
        grp_fu_2937_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2937_p0 = grp_update_weights_1_fu_1659_grp_fu_2937_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2937_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din0;
    end else begin
        grp_fu_2937_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2937_p1 = grp_update_weights_1_fu_1659_grp_fu_2937_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2937_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_grp_fu_2937_p_din1;
    end else begin
        grp_fu_2937_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2941_ce = grp_update_weights_1_fu_1659_grp_fu_2941_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2941_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2941_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2941_ce = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_ce;
    end else begin
        grp_fu_2941_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2941_p0 = grp_update_weights_1_fu_1659_grp_fu_2941_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2941_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2941_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2941_p0 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din0;
    end else begin
        grp_fu_2941_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_2941_p1 = grp_update_weights_1_fu_1659_grp_fu_2941_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_2941_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_grp_fu_2941_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_2941_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_grp_fu_2941_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2941_p1 = grp_backprop_Pipeline_activations2_loop_fu_1616_grp_fu_2941_p_din1;
    end else begin
        grp_fu_2941_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_1_address0 = grp_update_weights_1_fu_1659_d_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_address0;
    end else begin
        oracle_activations1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_1_address1 = grp_update_weights_1_fu_1659_d_biases1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_address1;
    end else begin
        oracle_activations1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_1_ce0 = grp_update_weights_1_fu_1659_d_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_ce0;
    end else begin
        oracle_activations1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_1_ce1 = grp_update_weights_1_fu_1659_d_biases1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_1_ce1;
    end else begin
        oracle_activations1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_1_we0;
    end else begin
        oracle_activations1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_address0 = grp_update_weights_1_fu_1659_d_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_address0;
    end else begin
        oracle_activations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_address1 = grp_update_weights_1_fu_1659_d_biases1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_address1;
    end else begin
        oracle_activations1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_ce0 = grp_update_weights_1_fu_1659_d_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_ce0;
    end else begin
        oracle_activations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_ce1 = grp_update_weights_1_fu_1659_d_biases1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_oracle_activations1_ce1;
    end else begin
        oracle_activations1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations1_we0;
    end else begin
        oracle_activations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_1_address0 = grp_update_weights_1_fu_1659_d_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_address0;
    end else begin
        oracle_activations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_1_address1 = grp_update_weights_1_fu_1659_d_biases2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_address1;
    end else begin
        oracle_activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_1_ce0 = grp_update_weights_1_fu_1659_d_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_ce0;
    end else begin
        oracle_activations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_1_ce1 = grp_update_weights_1_fu_1659_d_biases2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_1_ce1;
    end else begin
        oracle_activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_we0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_1_we0;
    end else begin
        oracle_activations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_address0 = grp_update_weights_1_fu_1659_d_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_address0;
    end else begin
        oracle_activations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_address1 = grp_update_weights_1_fu_1659_d_biases2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_address1;
    end else begin
        oracle_activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_ce0 = grp_update_weights_1_fu_1659_d_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_ce0;
    end else begin
        oracle_activations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations2_ce1 = grp_update_weights_1_fu_1659_d_biases2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_oracle_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_oracle_activations2_ce1;
    end else begin
        oracle_activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_we0 = grp_backprop_Pipeline_activations2_loop_fu_1616_oracle_activations2_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        training_data_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        training_data_address0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address0;
    end else begin
        training_data_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        training_data_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_training_data_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        training_data_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce0;
    end else begin
        training_data_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        training_data_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_ce1;
    end else begin
        training_data_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_address0 = grp_update_weights_1_fu_1659_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_address1 = grp_update_weights_1_fu_1659_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_ce0 = grp_update_weights_1_fu_1659_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_ce1 = grp_update_weights_1_fu_1659_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_we0 = grp_update_weights_1_fu_1659_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights1_we1 = grp_update_weights_1_fu_1659_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_address0 = grp_update_weights_1_fu_1659_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_address1 = grp_update_weights_1_fu_1659_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_ce0 = grp_update_weights_1_fu_1659_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_ce1 = grp_update_weights_1_fu_1659_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_we0 = grp_update_weights_1_fu_1659_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights2_we1 = grp_update_weights_1_fu_1659_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_address0 = grp_update_weights_1_fu_1659_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_address0 = grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_address1 = grp_update_weights_1_fu_1659_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_address1 = grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_ce0 = grp_update_weights_1_fu_1659_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_ce1 = grp_update_weights_1_fu_1659_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1616_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_we0 = grp_update_weights_1_fu_1659_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_we1 = grp_update_weights_1_fu_1659_weights3_we1;
    end else begin
        weights3_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln220_fu_1714_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
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
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state41))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state43))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state45))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state47))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            if (((1'b1 == ap_CS_fsm_state49) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            if (((1'b1 == ap_CS_fsm_state51) & (grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state51;
            end
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            if (((1'b1 == ap_CS_fsm_state53) & (grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state53;
            end
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            if (((1'b1 == ap_CS_fsm_state55) & (grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state55;
            end
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            if (((1'b0 == ap_block_state57_on_subcall_done) & (1'b1 == ap_CS_fsm_state57))) begin
                ap_NS_fsm = ap_ST_fsm_state58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state57;
            end
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            if (((1'b1 == ap_CS_fsm_state59) & (grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state59;
            end
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            if (((1'b1 == ap_CS_fsm_state61) & (grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state61;
            end
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            if (((1'b1 == ap_CS_fsm_state63) & (grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state64;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state63;
            end
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            if (((1'b1 == ap_CS_fsm_state65) & (grp_update_weights_1_fu_1659_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state65;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln220_1_fu_1708_p2 = (phi_mul_fu_220 + 12'd13);
assign add_ln220_fu_1720_p2 = (i_fu_224 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];
assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_state58 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];
assign ap_CS_fsm_state61 = ap_CS_fsm[32'd60];
assign ap_CS_fsm_state62 = ap_CS_fsm[32'd61];
assign ap_CS_fsm_state63 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_state65 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state57_on_subcall_done = ((grp_backprop_Pipeline_activations2_loop_fu_1616_ap_done == 1'b0) | (grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_done == 1'b0));
end
assign biases1_address1 = grp_update_weights_1_fu_1659_biases1_address1;
assign biases1_d0 = grp_update_weights_1_fu_1659_biases1_d0;
assign biases1_d1 = grp_update_weights_1_fu_1659_biases1_d1;
assign biases2_address1 = grp_update_weights_1_fu_1659_biases2_address1;
assign biases2_d0 = grp_update_weights_1_fu_1659_biases2_d0;
assign biases2_d1 = grp_update_weights_1_fu_1659_biases2_d1;
assign biases3_address1 = grp_update_weights_1_fu_1659_biases3_address1;
assign biases3_d0 = grp_update_weights_1_fu_1659_biases3_d0;
assign grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start = grp_backprop_Pipeline_VITIS_LOOP_102_1_activations1_loop_fu_1637_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1648_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1562_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1508_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1541_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1485_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1532_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1500_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start = grp_backprop_Pipeline_VITIS_LOOP_44_1_mvp_product_loop2_fu_1491_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1515_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1554_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1628_ap_start_reg;
assign grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start = grp_backprop_Pipeline_activations2_loop_fu_1616_ap_start_reg;
assign grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1601_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_ap_start_reg;
assign grp_update_weights_1_fu_1659_ap_start = grp_update_weights_1_fu_1659_ap_start_reg;
assign icmp_ln220_fu_1714_p2 = ((i_fu_224 == 8'd163) ? 1'b1 : 1'b0);
assign p_shl_fu_1797_p3 = {{trunc_ln66_fu_1794_p1}, {2'd0}};
assign sub_ln66_fu_1805_p2 = (p_shl_fu_1797_p3 - zext_ln66_fu_1791_p1);
assign training_data_address1 = grp_matrix_vector_product_with_bias_input_layer_1_fu_1473_training_data_address1;
assign training_targets_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_address0;
assign training_targets_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1576_training_targets_ce0;
assign trunc_ln66_fu_1794_p1 = i_17_reg_2783[6:0];
assign weights1_d0 = grp_update_weights_1_fu_1659_weights1_d0;
assign weights1_d1 = grp_update_weights_1_fu_1659_weights1_d1;
assign weights2_d0 = grp_update_weights_1_fu_1659_weights2_d0;
assign weights2_d1 = grp_update_weights_1_fu_1659_weights2_d1;
assign weights3_d0 = grp_update_weights_1_fu_1659_weights3_d0;
assign weights3_d1 = grp_update_weights_1_fu_1659_weights3_d1;
assign zext_ln66_fu_1791_p1 = i_17_reg_2783;
endmodule 
