module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_we1,weights1_0_d1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_we1,weights1_1_d1,weights1_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_we1,weights2_0_d1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_we1,weights2_1_d1,weights2_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,biases1_0_address1,biases1_0_ce1,biases1_0_we1,biases1_0_d1,biases1_0_q1,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_1_address1,biases1_1_ce1,biases1_1_we1,biases1_1_d1,biases1_1_q1,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,biases2_0_address1,biases2_0_ce1,biases2_0_we1,biases2_0_d1,biases2_0_q1,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_1_address1,biases2_1_ce1,biases2_1_we1,biases2_1_d1,biases2_1_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0); 
parameter    ap_ST_fsm_state1 = 57'd1;
parameter    ap_ST_fsm_state2 = 57'd2;
parameter    ap_ST_fsm_state3 = 57'd4;
parameter    ap_ST_fsm_state4 = 57'd8;
parameter    ap_ST_fsm_state5 = 57'd16;
parameter    ap_ST_fsm_state6 = 57'd32;
parameter    ap_ST_fsm_state7 = 57'd64;
parameter    ap_ST_fsm_state8 = 57'd128;
parameter    ap_ST_fsm_state9 = 57'd256;
parameter    ap_ST_fsm_state10 = 57'd512;
parameter    ap_ST_fsm_state11 = 57'd1024;
parameter    ap_ST_fsm_state12 = 57'd2048;
parameter    ap_ST_fsm_state13 = 57'd4096;
parameter    ap_ST_fsm_state14 = 57'd8192;
parameter    ap_ST_fsm_state15 = 57'd16384;
parameter    ap_ST_fsm_state16 = 57'd32768;
parameter    ap_ST_fsm_state17 = 57'd65536;
parameter    ap_ST_fsm_state18 = 57'd131072;
parameter    ap_ST_fsm_state19 = 57'd262144;
parameter    ap_ST_fsm_state20 = 57'd524288;
parameter    ap_ST_fsm_state21 = 57'd1048576;
parameter    ap_ST_fsm_state22 = 57'd2097152;
parameter    ap_ST_fsm_state23 = 57'd4194304;
parameter    ap_ST_fsm_state24 = 57'd8388608;
parameter    ap_ST_fsm_state25 = 57'd16777216;
parameter    ap_ST_fsm_state26 = 57'd33554432;
parameter    ap_ST_fsm_state27 = 57'd67108864;
parameter    ap_ST_fsm_state28 = 57'd134217728;
parameter    ap_ST_fsm_state29 = 57'd268435456;
parameter    ap_ST_fsm_state30 = 57'd536870912;
parameter    ap_ST_fsm_state31 = 57'd1073741824;
parameter    ap_ST_fsm_state32 = 57'd2147483648;
parameter    ap_ST_fsm_state33 = 57'd4294967296;
parameter    ap_ST_fsm_state34 = 57'd8589934592;
parameter    ap_ST_fsm_state35 = 57'd17179869184;
parameter    ap_ST_fsm_state36 = 57'd34359738368;
parameter    ap_ST_fsm_state37 = 57'd68719476736;
parameter    ap_ST_fsm_state38 = 57'd137438953472;
parameter    ap_ST_fsm_state39 = 57'd274877906944;
parameter    ap_ST_fsm_state40 = 57'd549755813888;
parameter    ap_ST_fsm_state41 = 57'd1099511627776;
parameter    ap_ST_fsm_state42 = 57'd2199023255552;
parameter    ap_ST_fsm_state43 = 57'd4398046511104;
parameter    ap_ST_fsm_state44 = 57'd8796093022208;
parameter    ap_ST_fsm_state45 = 57'd17592186044416;
parameter    ap_ST_fsm_state46 = 57'd35184372088832;
parameter    ap_ST_fsm_state47 = 57'd70368744177664;
parameter    ap_ST_fsm_state48 = 57'd140737488355328;
parameter    ap_ST_fsm_state49 = 57'd281474976710656;
parameter    ap_ST_fsm_state50 = 57'd562949953421312;
parameter    ap_ST_fsm_state51 = 57'd1125899906842624;
parameter    ap_ST_fsm_state52 = 57'd2251799813685248;
parameter    ap_ST_fsm_state53 = 57'd4503599627370496;
parameter    ap_ST_fsm_state54 = 57'd9007199254740992;
parameter    ap_ST_fsm_state55 = 57'd18014398509481984;
parameter    ap_ST_fsm_state56 = 57'd36028797018963968;
parameter    ap_ST_fsm_state57 = 57'd72057594037927936;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
output   weights1_0_we1;
output  [63:0] weights1_0_d1;
input  [63:0] weights1_0_q1;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
output   weights1_1_we1;
output  [63:0] weights1_1_d1;
input  [63:0] weights1_1_q1;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
output   weights2_0_we1;
output  [63:0] weights2_0_d1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
output   weights2_1_we1;
output  [63:0] weights2_1_d1;
input  [63:0] weights2_1_q1;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [4:0] biases1_0_address0;
output   biases1_0_ce0;
output   biases1_0_we0;
output  [63:0] biases1_0_d0;
input  [63:0] biases1_0_q0;
output  [4:0] biases1_0_address1;
output   biases1_0_ce1;
output   biases1_0_we1;
output  [63:0] biases1_0_d1;
input  [63:0] biases1_0_q1;
output  [4:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [4:0] biases1_1_address1;
output   biases1_1_ce1;
output   biases1_1_we1;
output  [63:0] biases1_1_d1;
input  [63:0] biases1_1_q1;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_0_address1;
output   biases2_0_ce1;
output   biases2_0_we1;
output  [63:0] biases2_0_d1;
input  [63:0] biases2_0_q1;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [4:0] biases2_1_address1;
output   biases2_1_ce1;
output   biases2_1_we1;
output  [63:0] biases2_1_d1;
input  [63:0] biases2_1_q1;
output  [1:0] biases3_address0;
output   biases3_ce0;
output   biases3_we0;
output  [63:0] biases3_d0;
input  [63:0] biases3_q0;
output  [1:0] biases3_address1;
output   biases3_ce1;
input  [63:0] biases3_q1;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [7:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [7:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] weights1_0_address0;
reg weights1_0_ce0;
reg weights1_0_we0;
reg[8:0] weights1_0_address1;
reg weights1_0_ce1;
reg weights1_0_we1;
reg[8:0] weights1_1_address0;
reg weights1_1_ce0;
reg weights1_1_we0;
reg[8:0] weights1_1_address1;
reg weights1_1_ce1;
reg weights1_1_we1;
reg[10:0] weights2_0_address0;
reg weights2_0_ce0;
reg weights2_0_we0;
reg[10:0] weights2_0_address1;
reg weights2_0_ce1;
reg weights2_0_we1;
reg[10:0] weights2_1_address0;
reg weights2_1_ce0;
reg weights2_1_we0;
reg[10:0] weights2_1_address1;
reg weights2_1_ce1;
reg weights2_1_we1;
reg[6:0] weights3_0_address0;
reg weights3_0_ce0;
reg weights3_0_we0;
reg[6:0] weights3_0_address1;
reg weights3_0_ce1;
reg weights3_0_we1;
reg[6:0] weights3_1_address0;
reg weights3_1_ce0;
reg weights3_1_we0;
reg[6:0] weights3_1_address1;
reg weights3_1_ce1;
reg weights3_1_we1;
reg[4:0] biases1_0_address0;
reg biases1_0_ce0;
reg biases1_0_we0;
reg biases1_0_ce1;
reg biases1_0_we1;
reg[4:0] biases1_1_address0;
reg biases1_1_ce0;
reg biases1_1_we0;
reg biases1_1_ce1;
reg biases1_1_we1;
reg[4:0] biases2_0_address0;
reg biases2_0_ce0;
reg biases2_0_we0;
reg biases2_0_ce1;
reg biases2_0_we1;
reg[4:0] biases2_1_address0;
reg biases2_1_ce0;
reg biases2_1_we0;
reg biases2_1_ce1;
reg biases2_1_we1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg biases3_ce1;
reg[10:0] training_data_0_address0;
reg training_data_0_ce0;
reg[10:0] training_data_1_address0;
reg training_data_1_ce0;
(* fsm_encoding = "none" *) reg   [56:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] phi_mul_load_reg_2728;
wire    ap_CS_fsm_state2;
reg   [7:0] i_18_reg_2734;
wire   [8:0] sub_ln66_fu_1759_p2;
reg   [8:0] sub_ln66_reg_2773;
wire    ap_CS_fsm_state45;
reg   [4:0] activations1_address0;
reg    activations1_ce0;
reg    activations1_we0;
reg   [63:0] activations1_d0;
wire   [63:0] activations1_q0;
reg   [4:0] activations1_address1;
reg    activations1_ce1;
reg    activations1_we1;
reg   [63:0] activations1_d1;
wire   [63:0] activations1_q1;
reg   [4:0] activations1_1_address0;
reg    activations1_1_ce0;
reg    activations1_1_we0;
reg   [63:0] activations1_1_d0;
wire   [63:0] activations1_1_q0;
reg   [4:0] activations1_1_address1;
reg    activations1_1_ce1;
reg    activations1_1_we1;
reg   [63:0] activations1_1_d1;
wire   [63:0] activations1_1_q1;
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
reg   [4:0] dactivations1_address0;
reg    dactivations1_ce0;
reg    dactivations1_we0;
wire   [63:0] dactivations1_q0;
reg   [4:0] dactivations1_1_address0;
reg    dactivations1_1_ce0;
reg    dactivations1_1_we0;
wire   [63:0] dactivations1_1_q0;
reg   [4:0] dactivations2_address0;
reg    dactivations2_ce0;
reg    dactivations2_we0;
wire   [63:0] dactivations2_q0;
reg    dactivations2_ce1;
wire   [63:0] dactivations2_q1;
reg   [4:0] dactivations2_1_address0;
reg    dactivations2_1_ce0;
reg    dactivations2_1_we0;
wire   [63:0] dactivations2_1_q0;
reg    dactivations2_1_ce1;
wire   [63:0] dactivations2_1_q1;
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
reg   [6:0] delta_weights3_address0;
reg    delta_weights3_ce0;
reg    delta_weights3_we0;
wire   [63:0] delta_weights3_q0;
reg   [6:0] delta_weights3_address1;
reg    delta_weights3_ce1;
reg    delta_weights3_we1;
wire   [63:0] delta_weights3_q1;
reg   [6:0] delta_weights3_1_address0;
reg    delta_weights3_1_ce0;
reg    delta_weights3_1_we0;
wire   [63:0] delta_weights3_1_q0;
reg   [6:0] delta_weights3_1_address1;
reg    delta_weights3_1_ce1;
reg    delta_weights3_1_we1;
wire   [63:0] delta_weights3_1_q1;
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
reg    oracle_activations2_we1;
wire   [63:0] oracle_activations2_q1;
reg   [4:0] oracle_activations2_1_address0;
reg    oracle_activations2_1_ce0;
reg    oracle_activations2_1_we0;
wire   [63:0] oracle_activations2_1_q0;
reg   [4:0] oracle_activations2_1_address1;
reg    oracle_activations2_1_ce1;
reg    oracle_activations2_1_we1;
wire   [63:0] oracle_activations2_1_q1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d1;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce1;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_ready;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o_ap_vld;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_ce;
wire    grp_get_delta_matrix_weights3_fu_1544_ap_start;
wire    grp_get_delta_matrix_weights3_fu_1544_ap_done;
wire    grp_get_delta_matrix_weights3_fu_1544_ap_idle;
wire    grp_get_delta_matrix_weights3_fu_1544_ap_ready;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address0;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce0;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d0;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address1;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce1;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d1;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address0;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce0;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d0;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address1;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce1;
wire    grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d1;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address0;
wire    grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address1;
wire    grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce1;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address0;
wire    grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce0;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address1;
wire    grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_ce;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_ap_start;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_ap_done;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_ap_idle;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_ap_ready;
wire   [6:0] grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce0;
wire   [6:0] grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce1;
wire   [6:0] grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce0;
wire   [6:0] grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce1;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d0;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we1;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d1;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d0;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we1;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d1;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce0;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce1;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address0;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce0;
wire   [4:0] grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce1;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din1;
wire   [0:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_opcode;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_ce;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din1;
wire   [0:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_opcode;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_ce;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din1;
wire   [0:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_opcode;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_ce;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din1;
wire   [0:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_opcode;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_ce;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_ce;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din0;
wire   [63:0] grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din1;
wire    grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_ce;
wire    grp_get_delta_matrix_weights2_fu_1570_ap_start;
wire    grp_get_delta_matrix_weights2_fu_1570_ap_done;
wire    grp_get_delta_matrix_weights2_fu_1570_ap_idle;
wire    grp_get_delta_matrix_weights2_fu_1570_ap_ready;
wire   [10:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d0;
wire   [10:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d1;
wire   [10:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d0;
wire   [10:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d1;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address1;
wire    grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce1;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce0;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address1;
wire    grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce1;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_last_activations_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights2_fu_1570_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_fu_1570_last_activations_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din1;
wire    grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din1;
wire    grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din1;
wire    grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din1;
wire    grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_ce;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_ap_start;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_ap_done;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_ap_ready;
wire   [10:0] grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce1;
wire   [10:0] grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address1;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address1;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_d0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_d0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din1;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_ce;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_ready;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d1;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d1;
wire   [4:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce1;
wire   [4:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce0;
wire   [4:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce1;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_ce0;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_ce;
wire    grp_update_weights_68_69_1_fu_1607_ap_start;
wire    grp_update_weights_68_69_1_fu_1607_ap_done;
wire    grp_update_weights_68_69_1_fu_1607_ap_idle;
wire    grp_update_weights_68_69_1_fu_1607_ap_ready;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_weights1_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights1_0_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights1_0_d0;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_weights1_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights1_0_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights1_0_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights1_0_d1;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_weights1_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights1_1_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights1_1_d0;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_weights1_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights1_1_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights1_1_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights1_1_d1;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_weights2_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights2_0_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights2_0_d0;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_weights2_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights2_0_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights2_0_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights2_0_d1;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_weights2_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights2_1_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights2_1_d0;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_weights2_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights2_1_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights2_1_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights2_1_d1;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_weights3_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights3_0_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights3_0_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights3_0_d0;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_weights3_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights3_0_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights3_0_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights3_0_d1;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_weights3_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_weights3_1_ce0;
wire    grp_update_weights_68_69_1_fu_1607_weights3_1_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights3_1_d0;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_weights3_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_weights3_1_ce1;
wire    grp_update_weights_68_69_1_fu_1607_weights3_1_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_weights3_1_d1;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_d_weights1_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce0;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_d_weights1_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce1;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_d_weights1_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce0;
wire   [8:0] grp_update_weights_68_69_1_fu_1607_d_weights1_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce1;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_d_weights2_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce0;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_d_weights2_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce1;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_d_weights2_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce0;
wire   [10:0] grp_update_weights_68_69_1_fu_1607_d_weights2_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce1;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_d_weights3_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce0;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_d_weights3_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce1;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_d_weights3_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce0;
wire   [6:0] grp_update_weights_68_69_1_fu_1607_d_weights3_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases1_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_biases1_0_ce0;
wire    grp_update_weights_68_69_1_fu_1607_biases1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases1_0_d0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases1_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_biases1_0_ce1;
wire    grp_update_weights_68_69_1_fu_1607_biases1_0_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases1_0_d1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases1_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_biases1_1_ce0;
wire    grp_update_weights_68_69_1_fu_1607_biases1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases1_1_d0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases1_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_biases1_1_ce1;
wire    grp_update_weights_68_69_1_fu_1607_biases1_1_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases1_1_d1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases2_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_biases2_0_ce0;
wire    grp_update_weights_68_69_1_fu_1607_biases2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases2_0_d0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases2_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_biases2_0_ce1;
wire    grp_update_weights_68_69_1_fu_1607_biases2_0_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases2_0_d1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases2_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_biases2_1_ce0;
wire    grp_update_weights_68_69_1_fu_1607_biases2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases2_1_d0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_biases2_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_biases2_1_ce1;
wire    grp_update_weights_68_69_1_fu_1607_biases2_1_we1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases2_1_d1;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_biases3_address0;
wire    grp_update_weights_68_69_1_fu_1607_biases3_ce0;
wire    grp_update_weights_68_69_1_fu_1607_biases3_we0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_biases3_d0;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_biases3_address1;
wire    grp_update_weights_68_69_1_fu_1607_biases3_ce1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases1_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases1_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases1_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases1_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases2_0_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases2_0_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce1;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases2_1_address0;
wire    grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce0;
wire   [4:0] grp_update_weights_68_69_1_fu_1607_d_biases2_1_address1;
wire    grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce1;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din1;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_opcode;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din1;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_opcode;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din1;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_opcode;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din1;
wire   [1:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_opcode;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_ce;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din0;
wire   [63:0] grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din1;
wire    grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg   [63:0] activations3_fu_290;
reg   [63:0] activations3_1_fu_294;
reg   [63:0] activations3_2_fu_298;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg;
wire    ap_CS_fsm_state44;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
reg    grp_get_delta_matrix_weights3_fu_1544_ap_start_reg;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
reg    grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg;
reg    grp_get_delta_matrix_weights2_fu_1570_ap_start_reg;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
reg    grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state53;
reg    grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg;
wire    ap_CS_fsm_state54;
wire    ap_CS_fsm_state55;
reg    grp_update_weights_68_69_1_fu_1607_ap_start_reg;
wire    ap_CS_fsm_state56;
wire    ap_CS_fsm_state57;
reg   [11:0] phi_mul_fu_166;
wire   [11:0] add_ln220_1_fu_1662_p2;
wire   [0:0] icmp_ln220_fu_1668_p2;
reg   [7:0] i_fu_170;
wire   [7:0] add_ln220_fu_1674_p2;
reg   [63:0] mux_case_02132_fu_174;
reg   [63:0] mux_case_12236_fu_178;
reg   [63:0] mux_case_22340_fu_182;
reg   [63:0] mux_case_02444_fu_186;
reg   [63:0] mux_case_12548_fu_190;
reg   [63:0] mux_case_22652_fu_194;
reg   [63:0] output_difference_idx_val56_fu_198;
reg   [63:0] output_difference_idx4_val59_fu_202;
reg   [63:0] output_difference_idx5_val62_fu_206;
reg   [63:0] output_difference_1_promoted_fu_210;
reg   [63:0] output_difference_0_promoted_fu_214;
reg   [63:0] output_difference_2_promoted_fu_218;
reg    activations1_we1_local;
reg    activations1_ce1_local;
reg   [4:0] activations1_address1_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg   [4:0] activations1_address0_local;
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
reg    activations1_1_we1_local;
reg    activations1_1_ce1_local;
reg   [4:0] activations1_1_address1_local;
reg    activations1_1_we0_local;
reg    activations1_1_ce0_local;
reg   [4:0] activations1_1_address0_local;
reg    activations2_we0_local;
reg    activations2_ce0_local;
reg   [4:0] activations2_address0_local;
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
reg    activations2_1_we0_local;
reg    activations2_1_ce0_local;
reg   [4:0] activations2_1_address0_local;
wire   [6:0] trunc_ln66_fu_1748_p1;
wire   [8:0] p_shl_fu_1751_p3;
wire   [8:0] zext_ln66_fu_1745_p1;
wire   [63:0] grp_fu_2832_p2;
reg   [63:0] grp_fu_2832_p0;
reg   [63:0] grp_fu_2832_p1;
reg   [1:0] grp_fu_2832_opcode;
reg    grp_fu_2832_ce;
wire   [63:0] grp_fu_2836_p2;
reg   [63:0] grp_fu_2836_p0;
reg   [63:0] grp_fu_2836_p1;
reg   [1:0] grp_fu_2836_opcode;
reg    grp_fu_2836_ce;
wire   [63:0] grp_fu_2840_p2;
reg   [63:0] grp_fu_2840_p0;
reg   [63:0] grp_fu_2840_p1;
reg   [1:0] grp_fu_2840_opcode;
reg    grp_fu_2840_ce;
wire   [63:0] grp_fu_2844_p2;
reg   [63:0] grp_fu_2844_p0;
reg   [63:0] grp_fu_2844_p1;
reg   [1:0] grp_fu_2844_opcode;
reg    grp_fu_2844_ce;
wire   [63:0] grp_fu_2848_p2;
reg   [63:0] grp_fu_2848_p0;
reg   [63:0] grp_fu_2848_p1;
reg    grp_fu_2848_ce;
wire   [63:0] grp_fu_2852_p2;
reg   [63:0] grp_fu_2852_p0;
reg   [63:0] grp_fu_2852_p1;
reg    grp_fu_2852_ce;
wire   [63:0] grp_fu_2856_p2;
reg   [63:0] grp_fu_2856_p0;
reg   [63:0] grp_fu_2856_p1;
reg    grp_fu_2856_ce;
wire   [63:0] grp_fu_2860_p2;
reg   [63:0] grp_fu_2860_p0;
reg   [63:0] grp_fu_2860_p1;
reg    grp_fu_2860_ce;
wire   [63:0] grp_fu_2864_p2;
reg   [63:0] grp_fu_2864_p0;
reg   [63:0] grp_fu_2864_p1;
reg    grp_fu_2864_ce;
wire   [63:0] grp_fu_2868_p2;
reg   [63:0] grp_fu_2868_p0;
reg   [63:0] grp_fu_2868_p1;
reg    grp_fu_2868_ce;
wire   [63:0] grp_fu_2872_p2;
reg   [63:0] grp_fu_2872_p0;
reg   [63:0] grp_fu_2872_p1;
reg    grp_fu_2872_ce;
wire   [63:0] grp_fu_2876_p2;
reg   [63:0] grp_fu_2876_p0;
reg   [63:0] grp_fu_2876_p1;
reg    grp_fu_2876_ce;
reg   [56:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
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
reg    ap_block_state49_on_subcall_done;
reg    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
reg    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
reg    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
reg    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
reg    ap_ST_fsm_state57_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 57'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg = 1'b0;
#0 activations3_fu_290 = 64'd0;
#0 activations3_1_fu_294 = 64'd0;
#0 activations3_2_fu_298 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg = 1'b0;
#0 grp_get_delta_matrix_weights3_fu_1544_ap_start_reg = 1'b0;
#0 grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg = 1'b0;
#0 grp_get_delta_matrix_weights2_fu_1570_ap_start_reg = 1'b0;
#0 grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg = 1'b0;
#0 grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_fu_1607_ap_start_reg = 1'b0;
#0 phi_mul_fu_166 = 12'd0;
#0 i_fu_170 = 8'd0;
#0 mux_case_02132_fu_174 = 64'd0;
#0 mux_case_12236_fu_178 = 64'd0;
#0 mux_case_22340_fu_182 = 64'd0;
#0 mux_case_02444_fu_186 = 64'd0;
#0 mux_case_12548_fu_190 = 64'd0;
#0 mux_case_22652_fu_194 = 64'd0;
#0 output_difference_idx_val56_fu_198 = 64'd0;
#0 output_difference_idx4_val59_fu_202 = 64'd0;
#0 output_difference_idx5_val62_fu_206 = 64'd0;
#0 output_difference_1_promoted_fu_210 = 64'd0;
#0 output_difference_0_promoted_fu_214 = 64'd0;
#0 output_difference_2_promoted_fu_218 = 64'd0;
end
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_address0),.ce0(activations1_ce0),.we0(activations1_we0),.d0(activations1_d0),.q0(activations1_q0),.address1(activations1_address1),.ce1(activations1_ce1),.we1(activations1_we1),.d1(activations1_d1),.q1(activations1_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_1_address0),.ce0(activations1_1_ce0),.we0(activations1_1_we0),.d0(activations1_1_d0),.q0(activations1_1_q0),.address1(activations1_1_address1),.ce1(activations1_1_ce1),.we1(activations1_1_we1),.d1(activations1_1_d1),.q1(activations1_1_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_address0),.ce0(activations2_ce0),.we0(activations2_we0),.d0(activations2_d0),.q0(activations2_q0),.address1(activations2_address1),.ce1(activations2_ce1),.q1(activations2_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_1_address0),.ce0(activations2_1_ce0),.we0(activations2_1_we0),.d0(activations2_1_d0),.q0(activations2_1_q0),.address1(activations2_1_address1),.ce1(activations2_1_ce1),.q1(activations2_1_q1));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_1_address0),.ce0(dactivations1_1_ce0),.we0(dactivations1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_d0),.q0(dactivations1_1_q0));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_d0),.q0(dactivations2_q0),.address1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address1),.ce1(dactivations2_ce1),.q1(dactivations2_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_1_address0),.ce0(dactivations2_1_ce0),.we0(dactivations2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_d0),.q0(dactivations2_1_q0),.address1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address1),.ce1(dactivations2_1_ce1),.q1(dactivations2_1_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d0),.q0(delta_weights1_q0),.address1(delta_weights1_address1),.ce1(delta_weights1_ce1),.we1(delta_weights1_we1),.d1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d1),.q1(delta_weights1_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_1_address0),.ce0(delta_weights1_1_ce0),.we0(delta_weights1_1_we0),.d0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d0),.q0(delta_weights1_1_q0),.address1(delta_weights1_1_address1),.ce1(delta_weights1_1_ce1),.we1(delta_weights1_1_we1),.d1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d1),.q1(delta_weights1_1_q1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d0),.q0(delta_weights2_q0),.address1(delta_weights2_address1),.ce1(delta_weights2_ce1),.we1(delta_weights2_we1),.d1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d1),.q1(delta_weights2_q1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_1_address0),.ce0(delta_weights2_1_ce0),.we0(delta_weights2_1_we0),.d0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d0),.q0(delta_weights2_1_q0),.address1(delta_weights2_1_address1),.ce1(delta_weights2_1_ce1),.we1(delta_weights2_1_we1),.d1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d1),.q1(delta_weights2_1_q1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d0),.q0(delta_weights3_q0),.address1(delta_weights3_address1),.ce1(delta_weights3_ce1),.we1(delta_weights3_we1),.d1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d1),.q1(delta_weights3_q1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_1_address0),.ce0(delta_weights3_1_ce0),.we0(delta_weights3_1_we0),.d0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d0),.q0(delta_weights3_1_q0),.address1(delta_weights3_1_address1),.ce1(delta_weights3_1_ce1),.we1(delta_weights3_1_we1),.d1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d1),.q1(delta_weights3_1_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0),.d0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_d0),.q0(oracle_activations1_q0),.address1(oracle_activations1_address1),.ce1(oracle_activations1_ce1),.q1(oracle_activations1_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_1_address0),.ce0(oracle_activations1_1_ce0),.we0(oracle_activations1_1_we0),.d0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_d0),.q0(oracle_activations1_1_q0),.address1(oracle_activations1_1_address1),.ce1(oracle_activations1_1_ce1),.q1(oracle_activations1_1_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1),.ce1(oracle_activations2_ce1),.we1(oracle_activations2_we1),.d1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d1),.q1(oracle_activations2_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_1_address0),.ce0(oracle_activations2_1_ce0),.we0(oracle_activations2_1_we0),.d0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d0),.q0(oracle_activations2_1_q0),.address1(oracle_activations2_1_address1),.ce1(oracle_activations2_1_ce1),.we1(oracle_activations2_1_we1),.d1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d1),.q1(oracle_activations2_1_q1));
backprop_matrix_vector_product_with_bias_input_layer_56_57_1 grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_ready),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce1),.activations_0_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we1),.activations_0_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d1),.activations_0_q1(activations1_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce1),.activations_1_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we1),.activations_1_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d1),.activations_1_q1(activations1_1_q1),.training_data_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_address0),.training_data_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_address0),.training_data_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.idx(phi_mul_load_reg_2728),.grp_fu_2832_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_ce),.grp_fu_2836_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_ce),.grp_fu_2840_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din0),.grp_fu_2840_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din1),.grp_fu_2840_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_opcode),.grp_fu_2840_p_dout0(grp_fu_2840_p2),.grp_fu_2840_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_ce),.grp_fu_2844_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din0),.grp_fu_2844_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din1),.grp_fu_2844_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_opcode),.grp_fu_2844_p_dout0(grp_fu_2844_p2),.grp_fu_2844_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_ce),.grp_fu_2848_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_ce),.grp_fu_2852_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din0),.grp_fu_2852_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din1),.grp_fu_2852_p_dout0(grp_fu_2852_p2),.grp_fu_2852_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_ce),.grp_fu_2856_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din0),.grp_fu_2856_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din1),.grp_fu_2856_p_dout0(grp_fu_2856_p2),.grp_fu_2856_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_ce),.grp_fu_2860_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din0),.grp_fu_2860_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din1),.grp_fu_2860_p_dout0(grp_fu_2860_p2),.grp_fu_2860_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_ready),.dactivations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_address0),.dactivations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_ce0),.dactivations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_we0),.dactivations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_d0),.activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce0),.activations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_we0),.activations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_d0),.activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address1),.activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce1),.activations1_1_q1(activations1_1_q1),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce1),.activations1_q1(activations1_q1),.grp_fu_2832_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_ce),.grp_fu_2836_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_ce),.grp_fu_2848_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_ce),.grp_fu_2864_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din0),.grp_fu_2864_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din1),.grp_fu_2864_p_dout0(grp_fu_2864_p2),.grp_fu_2864_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_ce),.grp_fu_2868_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din0),.grp_fu_2868_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din1),.grp_fu_2868_p_dout0(grp_fu_2868_p2),.grp_fu_2868_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_ready),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce1),.activations_0_q1(activations2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce1),.activations_1_q1(activations2_1_q1),.input_activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce0),.input_activations_0_q0(activations1_q0),.input_activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address1),.input_activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce1),.input_activations_0_q1(activations1_q1),.input_activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce0),.input_activations_1_q0(activations1_1_q0),.input_activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address1),.input_activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce1),.input_activations_1_q1(activations1_1_q1),.grp_fu_2832_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_ce),.grp_fu_2848_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_11 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_ready),.dactivations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_address0),.dactivations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_ce0),.dactivations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_we0),.dactivations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_d0),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_d0),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce1),.activations2_q1(activations2_q1),.grp_fu_2832_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_ce),.grp_fu_2836_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_ce),.grp_fu_2848_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_ce),.grp_fu_2864_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din0),.grp_fu_2864_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din1),.grp_fu_2864_p_dout0(grp_fu_2864_p2),.grp_fu_2864_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_ce),.grp_fu_2868_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din0),.grp_fu_2868_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din1),.grp_fu_2868_p_dout0(grp_fu_2868_p2),.grp_fu_2868_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_ready),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_ce0),.biases3_q0(biases3_q0),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address1),.weights3_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address1),.weights3_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.activations_0_i(activations3_fu_290),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o_ap_vld),.activations_1_i(activations3_1_fu_294),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o_ap_vld),.activations_2_i(activations3_2_fu_298),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o_ap_vld),.input_activations_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce0),.input_activations_0_q0(activations2_q0),.input_activations_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address1),.input_activations_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce1),.input_activations_0_q1(activations2_q1),.input_activations_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce0),.input_activations_1_q0(activations2_1_q0),.input_activations_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address1),.input_activations_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce1),.input_activations_1_q1(activations2_1_q1),.grp_fu_2832_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_ce),.grp_fu_2848_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_12 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_ready),.mux_case_22652(mux_case_22652_fu_194),.mux_case_12548(mux_case_12548_fu_190),.mux_case_02444(mux_case_02444_fu_186),.activations3_i(activations3_fu_290),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_298),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_294),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o_ap_vld),.mux_case_22650_out(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out),.mux_case_22650_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out_ap_vld),.mux_case_12546_out(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out),.mux_case_12546_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out_ap_vld),.mux_case_02442_out(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out),.mux_case_02442_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out_ap_vld),.grp_fu_2832_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_ce),.grp_fu_2836_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_ce),.grp_fu_2848_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_ce),.grp_fu_2864_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din0),.grp_fu_2864_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din1),.grp_fu_2864_p_dout0(grp_fu_2864_p2),.grp_fu_2864_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_ce),.grp_fu_2868_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din0),.grp_fu_2868_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din1),.grp_fu_2868_p_dout0(grp_fu_2868_p2),.grp_fu_2868_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_ready),.activations3_load(activations3_fu_290),.activations3_1_load(activations3_1_fu_294),.activations3_2_load(activations3_2_fu_298),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_sum_out_ap_vld),.grp_fu_2832_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_ce),.grp_fu_2868_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din0),.grp_fu_2868_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din1),.grp_fu_2868_p_dout0(grp_fu_2868_p2),.grp_fu_2868_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_ready),.mux_case_22340(mux_case_22340_fu_182),.mux_case_12236(mux_case_12236_fu_178),.mux_case_02132(mux_case_02132_fu_174),.activations3_load(activations3_fu_290),.activations3_1_load(activations3_1_fu_294),.activations3_2_load(activations3_2_fu_298),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_sum_out),.mux_case_22338_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out),.mux_case_22338_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out_ap_vld),.mux_case_12234_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out),.mux_case_12234_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out_ap_vld),.mux_case_02130_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out),.mux_case_02130_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out_ap_vld),.grp_fu_2864_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din0),.grp_fu_2864_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din1),.grp_fu_2864_p_dout0(grp_fu_2864_p2),.grp_fu_2864_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_ce),.grp_fu_2868_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din0),.grp_fu_2868_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din1),.grp_fu_2868_p_dout0(grp_fu_2868_p2),.grp_fu_2868_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_218),.output_difference_0_promoted(output_difference_0_promoted_fu_214),.output_difference_1_promoted(output_difference_1_promoted_fu_210),.output_difference_idx5_val62(output_difference_idx5_val62_fu_206),.output_difference_idx4_val59(output_difference_idx4_val59_fu_202),.output_difference_idx_val56(output_difference_idx_val56_fu_198),.mux_case_02130_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out),.mux_case_12234_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out),.mux_case_22338_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out),.mul_ln66(sub_ln66_reg_2773),.training_targets_0_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_address0),.training_targets_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_ce0),.training_targets_0_q0(training_targets_0_q0),.training_targets_1_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_address0),.training_targets_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_ce0),.training_targets_1_q0(training_targets_1_q0),.mux_case_02442_reload(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out),.mux_case_12546_reload(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out),.mux_case_22650_reload(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out_ap_vld),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out_ap_vld),.output_difference_idx5_val60_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out),.output_difference_idx5_val60_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out_ap_vld),.output_difference_idx4_val57_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out),.output_difference_idx4_val57_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out_ap_vld),.output_difference_idx_val54_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out),.output_difference_idx_val54_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out_ap_vld),.grp_fu_2832_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_ce),.grp_fu_2848_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_ce));
backprop_get_delta_matrix_weights3 grp_get_delta_matrix_weights3_fu_1544(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights3_fu_1544_ap_start),.ap_done(grp_get_delta_matrix_weights3_fu_1544_ap_done),.ap_idle(grp_get_delta_matrix_weights3_fu_1544_ap_idle),.ap_ready(grp_get_delta_matrix_weights3_fu_1544_ap_ready),.delta_weights3_0_address0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address0),.delta_weights3_0_ce0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce0),.delta_weights3_0_we0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we0),.delta_weights3_0_d0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d0),.delta_weights3_0_address1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address1),.delta_weights3_0_ce1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce1),.delta_weights3_0_we1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we1),.delta_weights3_0_d1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_d1),.delta_weights3_1_address0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address0),.delta_weights3_1_ce0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce0),.delta_weights3_1_we0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we0),.delta_weights3_1_d0(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d0),.delta_weights3_1_address1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address1),.delta_weights3_1_ce1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce1),.delta_weights3_1_we1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we1),.delta_weights3_1_d1(grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_d1),.output_difference_0_0_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out),.output_difference_0_1_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out),.output_difference_0_2_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out),.last_activations_0_address0(grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce0),.last_activations_0_q0(activations2_q0),.last_activations_0_address1(grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address1),.last_activations_0_ce1(grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce1),.last_activations_0_q1(activations2_q1),.last_activations_1_address0(grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce0),.last_activations_1_q0(activations2_1_q0),.last_activations_1_address1(grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address1),.last_activations_1_ce1(grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce1),.last_activations_1_q1(activations2_1_q1),.grp_fu_2848_p_din0(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_ce),.grp_fu_2852_p_din0(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din0),.grp_fu_2852_p_din1(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din1),.grp_fu_2852_p_dout0(grp_fu_2852_p2),.grp_fu_2852_p_ce(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_ce),.grp_fu_2856_p_din0(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din0),.grp_fu_2856_p_din1(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din1),.grp_fu_2856_p_dout0(grp_fu_2856_p2),.grp_fu_2856_p_ce(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_ce),.grp_fu_2860_p_din0(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din0),.grp_fu_2860_p_din1(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din1),.grp_fu_2860_p_dout0(grp_fu_2860_p2),.grp_fu_2860_p_ce(grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_ce));
backprop_get_oracle_activations2_62_63_1 grp_get_oracle_activations2_62_63_1_fu_1555(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations2_62_63_1_fu_1555_ap_start),.ap_done(grp_get_oracle_activations2_62_63_1_fu_1555_ap_done),.ap_idle(grp_get_oracle_activations2_62_63_1_fu_1555_ap_idle),.ap_ready(grp_get_oracle_activations2_62_63_1_fu_1555_ap_ready),.weights3_0_address0(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address0),.weights3_0_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address1),.weights3_0_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address0),.weights3_1_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address1),.weights3_1_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.output_differences_0_0_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out),.output_differences_0_1_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out),.output_differences_0_2_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out),.oracle_activations_0_address0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d0),.oracle_activations_0_address1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address1),.oracle_activations_0_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce1),.oracle_activations_0_we1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we1),.oracle_activations_0_d1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_d1),.oracle_activations_1_address0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d0),.oracle_activations_1_address1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address1),.oracle_activations_1_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce1),.oracle_activations_1_we1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we1),.oracle_activations_1_d1(grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_d1),.dactivations_0_address0(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce0),.dactivations_0_q0(dactivations2_q0),.dactivations_0_address1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address1),.dactivations_0_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce1),.dactivations_0_q1(dactivations2_q1),.dactivations_1_address0(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce0),.dactivations_1_q0(dactivations2_1_q0),.dactivations_1_address1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address1),.dactivations_1_ce1(grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce1),.dactivations_1_q1(dactivations2_1_q1),.grp_fu_2832_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_ce),.grp_fu_2836_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_ce),.grp_fu_2840_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din0),.grp_fu_2840_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din1),.grp_fu_2840_p_opcode(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_opcode),.grp_fu_2840_p_dout0(grp_fu_2840_p2),.grp_fu_2840_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_ce),.grp_fu_2844_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din0),.grp_fu_2844_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din1),.grp_fu_2844_p_opcode(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_opcode),.grp_fu_2844_p_dout0(grp_fu_2844_p2),.grp_fu_2844_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_ce),.grp_fu_2872_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din0),.grp_fu_2872_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din1),.grp_fu_2872_p_dout0(grp_fu_2872_p2),.grp_fu_2872_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_ce),.grp_fu_2876_p_din0(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din0),.grp_fu_2876_p_din1(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din1),.grp_fu_2876_p_dout0(grp_fu_2876_p2),.grp_fu_2876_p_ce(grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_ce));
backprop_get_delta_matrix_weights2 grp_get_delta_matrix_weights2_fu_1570(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_fu_1570_ap_start),.ap_done(grp_get_delta_matrix_weights2_fu_1570_ap_done),.ap_idle(grp_get_delta_matrix_weights2_fu_1570_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_fu_1570_ap_ready),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_d1),.output_difference_0_address0(grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address0),.output_difference_0_ce0(grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce0),.output_difference_0_q0(oracle_activations2_q0),.output_difference_0_address1(grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address1),.output_difference_0_ce1(grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce1),.output_difference_0_q1(oracle_activations2_q1),.output_difference_1_address0(grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address0),.output_difference_1_ce0(grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce0),.output_difference_1_q0(oracle_activations2_1_q0),.output_difference_1_address1(grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address1),.output_difference_1_ce1(grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce1),.output_difference_1_q1(oracle_activations2_1_q1),.last_activations_0_address0(grp_get_delta_matrix_weights2_fu_1570_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_fu_1570_last_activations_0_ce0),.last_activations_0_q0(activations1_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_fu_1570_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_fu_1570_last_activations_1_ce0),.last_activations_1_q0(activations1_1_q0),.grp_fu_2848_p_din0(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_ce),.grp_fu_2852_p_din0(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din0),.grp_fu_2852_p_din1(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din1),.grp_fu_2852_p_dout0(grp_fu_2852_p2),.grp_fu_2852_p_ce(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_ce),.grp_fu_2856_p_din0(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din0),.grp_fu_2856_p_din1(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din1),.grp_fu_2856_p_dout0(grp_fu_2856_p2),.grp_fu_2856_p_ce(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_ce),.grp_fu_2860_p_din0(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din0),.grp_fu_2860_p_din1(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din1),.grp_fu_2860_p_dout0(grp_fu_2860_p2),.grp_fu_2860_p_ce(grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_ce));
backprop_get_oracle_activations1_64_65_1 grp_get_oracle_activations1_64_65_1_fu_1580(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_fu_1580_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_fu_1580_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_fu_1580_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_fu_1580_ap_ready),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_0_address0(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address0),.output_differences_0_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce0),.output_differences_0_q0(oracle_activations2_q0),.output_differences_0_address1(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address1),.output_differences_0_ce1(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce1),.output_differences_0_q1(oracle_activations2_q1),.output_differences_1_address0(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address0),.output_differences_1_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce0),.output_differences_1_q0(oracle_activations2_1_q0),.output_differences_1_address1(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address1),.output_differences_1_ce1(grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce1),.output_differences_1_q1(oracle_activations2_1_q1),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_d0),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_d0),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_ce0),.dactivations_0_q0(dactivations1_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_ce0),.dactivations_1_q0(dactivations1_1_q0),.grp_fu_2848_p_din0(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_ce),.grp_fu_2832_p_din0(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_ce));
backprop_get_delta_matrix_weights1_66_67_1 grp_get_delta_matrix_weights1_66_67_1_fu_1594(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_ready),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_d1),.output_difference_0_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address0),.output_difference_0_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce0),.output_difference_0_q0(oracle_activations1_q0),.output_difference_0_address1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address1),.output_difference_0_ce1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce1),.output_difference_0_q1(oracle_activations1_q1),.output_difference_1_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address0),.output_difference_1_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce0),.output_difference_1_q0(oracle_activations1_1_q0),.output_difference_1_address1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address1),.output_difference_1_ce1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce1),.output_difference_1_q1(oracle_activations1_1_q1),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.idx(phi_mul_load_reg_2728),.grp_fu_2848_p_din0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_ce),.grp_fu_2852_p_din0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din0),.grp_fu_2852_p_din1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din1),.grp_fu_2852_p_dout0(grp_fu_2852_p2),.grp_fu_2852_p_ce(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_ce),.grp_fu_2856_p_din0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din0),.grp_fu_2856_p_din1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din1),.grp_fu_2856_p_dout0(grp_fu_2856_p2),.grp_fu_2856_p_ce(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_ce),.grp_fu_2860_p_din0(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din0),.grp_fu_2860_p_din1(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din1),.grp_fu_2860_p_dout0(grp_fu_2860_p2),.grp_fu_2860_p_ce(grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_ce));
backprop_update_weights_68_69_1 grp_update_weights_68_69_1_fu_1607(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_fu_1607_ap_start),.ap_done(grp_update_weights_68_69_1_fu_1607_ap_done),.ap_idle(grp_update_weights_68_69_1_fu_1607_ap_idle),.ap_ready(grp_update_weights_68_69_1_fu_1607_ap_ready),.weights1_0_address0(grp_update_weights_68_69_1_fu_1607_weights1_0_address0),.weights1_0_ce0(grp_update_weights_68_69_1_fu_1607_weights1_0_ce0),.weights1_0_we0(grp_update_weights_68_69_1_fu_1607_weights1_0_we0),.weights1_0_d0(grp_update_weights_68_69_1_fu_1607_weights1_0_d0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_update_weights_68_69_1_fu_1607_weights1_0_address1),.weights1_0_ce1(grp_update_weights_68_69_1_fu_1607_weights1_0_ce1),.weights1_0_we1(grp_update_weights_68_69_1_fu_1607_weights1_0_we1),.weights1_0_d1(grp_update_weights_68_69_1_fu_1607_weights1_0_d1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_update_weights_68_69_1_fu_1607_weights1_1_address0),.weights1_1_ce0(grp_update_weights_68_69_1_fu_1607_weights1_1_ce0),.weights1_1_we0(grp_update_weights_68_69_1_fu_1607_weights1_1_we0),.weights1_1_d0(grp_update_weights_68_69_1_fu_1607_weights1_1_d0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_update_weights_68_69_1_fu_1607_weights1_1_address1),.weights1_1_ce1(grp_update_weights_68_69_1_fu_1607_weights1_1_ce1),.weights1_1_we1(grp_update_weights_68_69_1_fu_1607_weights1_1_we1),.weights1_1_d1(grp_update_weights_68_69_1_fu_1607_weights1_1_d1),.weights1_1_q1(weights1_1_q1),.weights2_0_address0(grp_update_weights_68_69_1_fu_1607_weights2_0_address0),.weights2_0_ce0(grp_update_weights_68_69_1_fu_1607_weights2_0_ce0),.weights2_0_we0(grp_update_weights_68_69_1_fu_1607_weights2_0_we0),.weights2_0_d0(grp_update_weights_68_69_1_fu_1607_weights2_0_d0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_update_weights_68_69_1_fu_1607_weights2_0_address1),.weights2_0_ce1(grp_update_weights_68_69_1_fu_1607_weights2_0_ce1),.weights2_0_we1(grp_update_weights_68_69_1_fu_1607_weights2_0_we1),.weights2_0_d1(grp_update_weights_68_69_1_fu_1607_weights2_0_d1),.weights2_0_q1(weights2_0_q1),.weights2_1_address0(grp_update_weights_68_69_1_fu_1607_weights2_1_address0),.weights2_1_ce0(grp_update_weights_68_69_1_fu_1607_weights2_1_ce0),.weights2_1_we0(grp_update_weights_68_69_1_fu_1607_weights2_1_we0),.weights2_1_d0(grp_update_weights_68_69_1_fu_1607_weights2_1_d0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_update_weights_68_69_1_fu_1607_weights2_1_address1),.weights2_1_ce1(grp_update_weights_68_69_1_fu_1607_weights2_1_ce1),.weights2_1_we1(grp_update_weights_68_69_1_fu_1607_weights2_1_we1),.weights2_1_d1(grp_update_weights_68_69_1_fu_1607_weights2_1_d1),.weights2_1_q1(weights2_1_q1),.weights3_0_address0(grp_update_weights_68_69_1_fu_1607_weights3_0_address0),.weights3_0_ce0(grp_update_weights_68_69_1_fu_1607_weights3_0_ce0),.weights3_0_we0(grp_update_weights_68_69_1_fu_1607_weights3_0_we0),.weights3_0_d0(grp_update_weights_68_69_1_fu_1607_weights3_0_d0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_update_weights_68_69_1_fu_1607_weights3_0_address1),.weights3_0_ce1(grp_update_weights_68_69_1_fu_1607_weights3_0_ce1),.weights3_0_we1(grp_update_weights_68_69_1_fu_1607_weights3_0_we1),.weights3_0_d1(grp_update_weights_68_69_1_fu_1607_weights3_0_d1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_update_weights_68_69_1_fu_1607_weights3_1_address0),.weights3_1_ce0(grp_update_weights_68_69_1_fu_1607_weights3_1_ce0),.weights3_1_we0(grp_update_weights_68_69_1_fu_1607_weights3_1_we0),.weights3_1_d0(grp_update_weights_68_69_1_fu_1607_weights3_1_d0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_update_weights_68_69_1_fu_1607_weights3_1_address1),.weights3_1_ce1(grp_update_weights_68_69_1_fu_1607_weights3_1_ce1),.weights3_1_we1(grp_update_weights_68_69_1_fu_1607_weights3_1_we1),.weights3_1_d1(grp_update_weights_68_69_1_fu_1607_weights3_1_d1),.weights3_1_q1(weights3_1_q1),.d_weights1_0_address0(grp_update_weights_68_69_1_fu_1607_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce0),.d_weights1_0_q0(delta_weights1_q0),.d_weights1_0_address1(grp_update_weights_68_69_1_fu_1607_d_weights1_0_address1),.d_weights1_0_ce1(grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce1),.d_weights1_0_q1(delta_weights1_q1),.d_weights1_1_address0(grp_update_weights_68_69_1_fu_1607_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce0),.d_weights1_1_q0(delta_weights1_1_q0),.d_weights1_1_address1(grp_update_weights_68_69_1_fu_1607_d_weights1_1_address1),.d_weights1_1_ce1(grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce1),.d_weights1_1_q1(delta_weights1_1_q1),.d_weights2_0_address0(grp_update_weights_68_69_1_fu_1607_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce0),.d_weights2_0_q0(delta_weights2_q0),.d_weights2_0_address1(grp_update_weights_68_69_1_fu_1607_d_weights2_0_address1),.d_weights2_0_ce1(grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce1),.d_weights2_0_q1(delta_weights2_q1),.d_weights2_1_address0(grp_update_weights_68_69_1_fu_1607_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce0),.d_weights2_1_q0(delta_weights2_1_q0),.d_weights2_1_address1(grp_update_weights_68_69_1_fu_1607_d_weights2_1_address1),.d_weights2_1_ce1(grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce1),.d_weights2_1_q1(delta_weights2_1_q1),.d_weights3_0_address0(grp_update_weights_68_69_1_fu_1607_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce0),.d_weights3_0_q0(delta_weights3_q0),.d_weights3_0_address1(grp_update_weights_68_69_1_fu_1607_d_weights3_0_address1),.d_weights3_0_ce1(grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce1),.d_weights3_0_q1(delta_weights3_q1),.d_weights3_1_address0(grp_update_weights_68_69_1_fu_1607_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce0),.d_weights3_1_q0(delta_weights3_1_q0),.d_weights3_1_address1(grp_update_weights_68_69_1_fu_1607_d_weights3_1_address1),.d_weights3_1_ce1(grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce1),.d_weights3_1_q1(delta_weights3_1_q1),.biases1_0_address0(grp_update_weights_68_69_1_fu_1607_biases1_0_address0),.biases1_0_ce0(grp_update_weights_68_69_1_fu_1607_biases1_0_ce0),.biases1_0_we0(grp_update_weights_68_69_1_fu_1607_biases1_0_we0),.biases1_0_d0(grp_update_weights_68_69_1_fu_1607_biases1_0_d0),.biases1_0_q0(biases1_0_q0),.biases1_0_address1(grp_update_weights_68_69_1_fu_1607_biases1_0_address1),.biases1_0_ce1(grp_update_weights_68_69_1_fu_1607_biases1_0_ce1),.biases1_0_we1(grp_update_weights_68_69_1_fu_1607_biases1_0_we1),.biases1_0_d1(grp_update_weights_68_69_1_fu_1607_biases1_0_d1),.biases1_0_q1(biases1_0_q1),.biases1_1_address0(grp_update_weights_68_69_1_fu_1607_biases1_1_address0),.biases1_1_ce0(grp_update_weights_68_69_1_fu_1607_biases1_1_ce0),.biases1_1_we0(grp_update_weights_68_69_1_fu_1607_biases1_1_we0),.biases1_1_d0(grp_update_weights_68_69_1_fu_1607_biases1_1_d0),.biases1_1_q0(biases1_1_q0),.biases1_1_address1(grp_update_weights_68_69_1_fu_1607_biases1_1_address1),.biases1_1_ce1(grp_update_weights_68_69_1_fu_1607_biases1_1_ce1),.biases1_1_we1(grp_update_weights_68_69_1_fu_1607_biases1_1_we1),.biases1_1_d1(grp_update_weights_68_69_1_fu_1607_biases1_1_d1),.biases1_1_q1(biases1_1_q1),.biases2_0_address0(grp_update_weights_68_69_1_fu_1607_biases2_0_address0),.biases2_0_ce0(grp_update_weights_68_69_1_fu_1607_biases2_0_ce0),.biases2_0_we0(grp_update_weights_68_69_1_fu_1607_biases2_0_we0),.biases2_0_d0(grp_update_weights_68_69_1_fu_1607_biases2_0_d0),.biases2_0_q0(biases2_0_q0),.biases2_0_address1(grp_update_weights_68_69_1_fu_1607_biases2_0_address1),.biases2_0_ce1(grp_update_weights_68_69_1_fu_1607_biases2_0_ce1),.biases2_0_we1(grp_update_weights_68_69_1_fu_1607_biases2_0_we1),.biases2_0_d1(grp_update_weights_68_69_1_fu_1607_biases2_0_d1),.biases2_0_q1(biases2_0_q1),.biases2_1_address0(grp_update_weights_68_69_1_fu_1607_biases2_1_address0),.biases2_1_ce0(grp_update_weights_68_69_1_fu_1607_biases2_1_ce0),.biases2_1_we0(grp_update_weights_68_69_1_fu_1607_biases2_1_we0),.biases2_1_d0(grp_update_weights_68_69_1_fu_1607_biases2_1_d0),.biases2_1_q0(biases2_1_q0),.biases2_1_address1(grp_update_weights_68_69_1_fu_1607_biases2_1_address1),.biases2_1_ce1(grp_update_weights_68_69_1_fu_1607_biases2_1_ce1),.biases2_1_we1(grp_update_weights_68_69_1_fu_1607_biases2_1_we1),.biases2_1_d1(grp_update_weights_68_69_1_fu_1607_biases2_1_d1),.biases2_1_q1(biases2_1_q1),.biases3_address0(grp_update_weights_68_69_1_fu_1607_biases3_address0),.biases3_ce0(grp_update_weights_68_69_1_fu_1607_biases3_ce0),.biases3_we0(grp_update_weights_68_69_1_fu_1607_biases3_we0),.biases3_d0(grp_update_weights_68_69_1_fu_1607_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_68_69_1_fu_1607_biases3_address1),.biases3_ce1(grp_update_weights_68_69_1_fu_1607_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_0_address0(grp_update_weights_68_69_1_fu_1607_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce0),.d_biases1_0_q0(oracle_activations1_q0),.d_biases1_0_address1(grp_update_weights_68_69_1_fu_1607_d_biases1_0_address1),.d_biases1_0_ce1(grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce1),.d_biases1_0_q1(oracle_activations1_q1),.d_biases1_1_address0(grp_update_weights_68_69_1_fu_1607_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce0),.d_biases1_1_q0(oracle_activations1_1_q0),.d_biases1_1_address1(grp_update_weights_68_69_1_fu_1607_d_biases1_1_address1),.d_biases1_1_ce1(grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce1),.d_biases1_1_q1(oracle_activations1_1_q1),.d_biases2_0_address0(grp_update_weights_68_69_1_fu_1607_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce0),.d_biases2_0_q0(oracle_activations2_q0),.d_biases2_0_address1(grp_update_weights_68_69_1_fu_1607_d_biases2_0_address1),.d_biases2_0_ce1(grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce1),.d_biases2_0_q1(oracle_activations2_q1),.d_biases2_1_address0(grp_update_weights_68_69_1_fu_1607_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce0),.d_biases2_1_q0(oracle_activations2_1_q0),.d_biases2_1_address1(grp_update_weights_68_69_1_fu_1607_d_biases2_1_address1),.d_biases2_1_ce1(grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce1),.d_biases2_1_q1(oracle_activations2_1_q1),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out),.grp_fu_2832_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din0),.grp_fu_2832_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din1),.grp_fu_2832_p_opcode(grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_opcode),.grp_fu_2832_p_dout0(grp_fu_2832_p2),.grp_fu_2832_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_ce),.grp_fu_2848_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din0),.grp_fu_2848_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din1),.grp_fu_2848_p_dout0(grp_fu_2848_p2),.grp_fu_2848_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_ce),.grp_fu_2844_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din0),.grp_fu_2844_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din1),.grp_fu_2844_p_opcode(grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_opcode),.grp_fu_2844_p_dout0(grp_fu_2844_p2),.grp_fu_2844_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_ce),.grp_fu_2860_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din0),.grp_fu_2860_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din1),.grp_fu_2860_p_dout0(grp_fu_2860_p2),.grp_fu_2860_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_ce),.grp_fu_2864_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din0),.grp_fu_2864_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din1),.grp_fu_2864_p_dout0(grp_fu_2864_p2),.grp_fu_2864_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_ce),.grp_fu_2836_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din0),.grp_fu_2836_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din1),.grp_fu_2836_p_opcode(grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_opcode),.grp_fu_2836_p_dout0(grp_fu_2836_p2),.grp_fu_2836_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_ce),.grp_fu_2852_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din0),.grp_fu_2852_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din1),.grp_fu_2852_p_dout0(grp_fu_2852_p2),.grp_fu_2852_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_ce),.grp_fu_2872_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din0),.grp_fu_2872_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din1),.grp_fu_2872_p_dout0(grp_fu_2872_p2),.grp_fu_2872_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_ce),.grp_fu_2876_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din0),.grp_fu_2876_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din1),.grp_fu_2876_p_dout0(grp_fu_2876_p2),.grp_fu_2876_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_ce),.grp_fu_2840_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din0),.grp_fu_2840_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din1),.grp_fu_2840_p_opcode(grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_opcode),.grp_fu_2840_p_dout0(grp_fu_2840_p2),.grp_fu_2840_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_ce),.grp_fu_2856_p_din0(grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din0),.grp_fu_2856_p_din1(grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din1),.grp_fu_2856_p_dout0(grp_fu_2856_p2),.grp_fu_2856_p_ce(grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_ce));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U363(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2832_p0),.din1(grp_fu_2832_p1),.opcode(grp_fu_2832_opcode),.ce(grp_fu_2832_ce),.dout(grp_fu_2832_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2836_p0),.din1(grp_fu_2836_p1),.opcode(grp_fu_2836_opcode),.ce(grp_fu_2836_ce),.dout(grp_fu_2836_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U365(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2840_p0),.din1(grp_fu_2840_p1),.opcode(grp_fu_2840_opcode),.ce(grp_fu_2840_ce),.dout(grp_fu_2840_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2844_p0),.din1(grp_fu_2844_p1),.opcode(grp_fu_2844_opcode),.ce(grp_fu_2844_ce),.dout(grp_fu_2844_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2848_p0),.din1(grp_fu_2848_p1),.ce(grp_fu_2848_ce),.dout(grp_fu_2848_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2852_p0),.din1(grp_fu_2852_p1),.ce(grp_fu_2852_ce),.dout(grp_fu_2852_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U369(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2856_p0),.din1(grp_fu_2856_p1),.ce(grp_fu_2856_ce),.dout(grp_fu_2856_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2860_p0),.din1(grp_fu_2860_p1),.ce(grp_fu_2860_ce),.dout(grp_fu_2860_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2864_p0),.din1(grp_fu_2864_p1),.ce(grp_fu_2864_ce),.dout(grp_fu_2864_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2868_p0),.din1(grp_fu_2868_p1),.ce(grp_fu_2868_ce),.dout(grp_fu_2868_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2872_p0),.din1(grp_fu_2872_p1),.ce(grp_fu_2872_ce),.dout(grp_fu_2872_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2876_p0),.din1(grp_fu_2876_p1),.ce(grp_fu_2876_ce),.dout(grp_fu_2876_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state44)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state46)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state54)) begin
            grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_fu_1570_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state50)) begin
            grp_get_delta_matrix_weights2_fu_1570_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_fu_1570_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_fu_1570_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights3_fu_1544_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            grp_get_delta_matrix_weights3_fu_1544_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights3_fu_1544_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights3_fu_1544_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state52)) begin
            grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_fu_1580_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations2_62_63_1_fu_1555_ap_ready == 1'b1)) begin
            grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_fu_1607_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state56)) begin
            grp_update_weights_68_69_1_fu_1607_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_fu_1607_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_fu_1607_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_1_fu_294 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_294 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state39) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_294 <= grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_1_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_2_fu_298 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_298 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state39) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_298 <= grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_2_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_fu_290 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_290 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state39) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o_ap_vld == 1'b1))) begin
        activations3_fu_290 <= grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_activations_0_o;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_170 <= 8'd0;
    end else if (((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_170 <= add_ln220_fu_1674_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_166 <= 12'd0;
    end else if (((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_fu_166 <= add_ln220_1_fu_1662_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_18_reg_2734 <= i_fu_170;
        phi_mul_load_reg_2728 <= phi_mul_fu_166;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        mux_case_02132_fu_174 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_02130_out;
        mux_case_02444_fu_186 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_02442_out;
        mux_case_12236_fu_178 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_12234_out;
        mux_case_12548_fu_190 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_12546_out;
        mux_case_22340_fu_182 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_mux_case_22338_out;
        mux_case_22652_fu_194 <= grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_mux_case_22650_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        output_difference_0_promoted_fu_214 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_1_out;
        output_difference_1_promoted_fu_210 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_out;
        output_difference_2_promoted_fu_218 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_2_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        output_difference_idx4_val59_fu_202 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx4_val57_out;
        output_difference_idx5_val62_fu_206 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx5_val60_out;
        output_difference_idx_val56_fu_198 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_output_difference_idx_val54_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        sub_ln66_reg_2773 <= sub_ln66_fu_1759_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_1_address0 = grp_get_delta_matrix_weights2_fu_1570_last_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address0;
    end else begin
        activations1_1_address0 = activations1_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations1_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations1_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations1_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations1_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations1_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations1_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations1_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations1_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations1_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations1_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations1_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations1_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations1_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations1_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations1_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations1_1_address0_local = 64'd1;
    end else begin
        activations1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_address1;
    end else begin
        activations1_1_address1 = activations1_1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        activations1_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations1_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations1_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations1_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations1_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations1_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations1_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations1_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations1_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations1_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations1_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations1_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations1_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations1_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations1_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations1_1_address1_local = 64'd0;
    end else begin
        activations1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_1_ce0 = grp_get_delta_matrix_weights2_fu_1570_last_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce0;
    end else begin
        activations1_1_ce0 = activations1_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_ce1;
    end else begin
        activations1_1_ce1 = activations1_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_1_ce1_local = 1'b1;
    end else begin
        activations1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d0;
    end else begin
        activations1_1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_d1;
    end else begin
        activations1_1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we0;
    end else begin
        activations1_1_we0 = activations1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we0_local = 1'b1;
    end else begin
        activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_1_we1;
    end else begin
        activations1_1_we1 = activations1_1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we1_local = 1'b1;
    end else begin
        activations1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_address0 = grp_get_delta_matrix_weights2_fu_1570_last_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address0;
    end else begin
        activations1_address0 = activations1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_address1;
    end else begin
        activations1_address1 = activations1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_ce0 = grp_get_delta_matrix_weights2_fu_1570_last_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce0;
    end else begin
        activations1_ce0 = activations1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_input_activations_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_ce1;
    end else begin
        activations1_ce1 = activations1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce1_local = 1'b1;
    end else begin
        activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_d1;
    end else begin
        activations1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_activations_0_we1;
    end else begin
        activations1_we1 = activations1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_1_address0 = grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address0;
    end else begin
        activations2_1_address0 = activations2_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        activations2_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        activations2_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        activations2_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        activations2_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        activations2_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        activations2_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations2_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        activations2_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations2_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        activations2_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations2_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations2_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_1_address0_local = 64'd0;
    end else begin
        activations2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_1_address1 = grp_get_delta_matrix_weights3_fu_1544_last_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_address1;
    end else begin
        activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_1_ce0 = grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce0;
    end else begin
        activations2_1_ce0 = activations2_1_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_1_ce1 = grp_get_delta_matrix_weights3_fu_1544_last_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_ce1;
    end else begin
        activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_d0;
    end else begin
        activations2_1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_1_we0;
    end else begin
        activations2_1_we0 = activations2_1_we0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_address0 = grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address0;
    end else begin
        activations2_address0 = activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        activations2_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        activations2_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        activations2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        activations2_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        activations2_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        activations2_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        activations2_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        activations2_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations2_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        activations2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        activations2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        activations2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        activations2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        activations2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        activations2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        activations2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        activations2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        activations2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        activations2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        activations2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        activations2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations2_address0_local = 64'd0;
    end else begin
        activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_address1 = grp_get_delta_matrix_weights3_fu_1544_last_activations_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_address1;
    end else begin
        activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_ce0 = grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations2_ce1 = grp_get_delta_matrix_weights3_fu_1544_last_activations_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_input_activations_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_ce1;
    end else begin
        activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_d0;
    end else begin
        activations2_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_activations_0_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((icmp_ln220_fu_1668_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
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
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_done == 1'b0)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end
assign ap_ST_fsm_state42_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_done == 1'b0)) begin
        ap_ST_fsm_state45_blk = 1'b1;
    end else begin
        ap_ST_fsm_state45_blk = 1'b0;
    end
end
assign ap_ST_fsm_state46_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_done == 1'b0)) begin
        ap_ST_fsm_state47_blk = 1'b1;
    end else begin
        ap_ST_fsm_state47_blk = 1'b0;
    end
end
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state49_on_subcall_done)) begin
        ap_ST_fsm_state49_blk = 1'b1;
    end else begin
        ap_ST_fsm_state49_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_fu_1570_ap_done == 1'b0)) begin
        ap_ST_fsm_state51_blk = 1'b1;
    end else begin
        ap_ST_fsm_state51_blk = 1'b0;
    end
end
assign ap_ST_fsm_state52_blk = 1'b0;
always @ (*) begin
    if ((grp_get_oracle_activations1_64_65_1_fu_1580_ap_done == 1'b0)) begin
        ap_ST_fsm_state53_blk = 1'b1;
    end else begin
        ap_ST_fsm_state53_blk = 1'b0;
    end
end
assign ap_ST_fsm_state54_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_done == 1'b0)) begin
        ap_ST_fsm_state55_blk = 1'b1;
    end else begin
        ap_ST_fsm_state55_blk = 1'b0;
    end
end
assign ap_ST_fsm_state56_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_68_69_1_fu_1607_ap_done == 1'b0)) begin
        ap_ST_fsm_state57_blk = 1'b1;
    end else begin
        ap_ST_fsm_state57_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln220_fu_1668_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln220_fu_1668_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_0_address0 = grp_update_weights_68_69_1_fu_1607_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_address0;
    end else begin
        biases1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_0_ce0 = grp_update_weights_68_69_1_fu_1607_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_0_ce0;
    end else begin
        biases1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_0_ce1 = grp_update_weights_68_69_1_fu_1607_biases1_0_ce1;
    end else begin
        biases1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_0_we0 = grp_update_weights_68_69_1_fu_1607_biases1_0_we0;
    end else begin
        biases1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_0_we1 = grp_update_weights_68_69_1_fu_1607_biases1_0_we1;
    end else begin
        biases1_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_1_address0 = grp_update_weights_68_69_1_fu_1607_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_address0;
    end else begin
        biases1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_1_ce0 = grp_update_weights_68_69_1_fu_1607_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_biases1_1_ce0;
    end else begin
        biases1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_1_ce1 = grp_update_weights_68_69_1_fu_1607_biases1_1_ce1;
    end else begin
        biases1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_1_we0 = grp_update_weights_68_69_1_fu_1607_biases1_1_we0;
    end else begin
        biases1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases1_1_we1 = grp_update_weights_68_69_1_fu_1607_biases1_1_we1;
    end else begin
        biases1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_0_address0 = grp_update_weights_68_69_1_fu_1607_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_address0;
    end else begin
        biases2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_0_ce0 = grp_update_weights_68_69_1_fu_1607_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_0_ce0;
    end else begin
        biases2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_0_ce1 = grp_update_weights_68_69_1_fu_1607_biases2_0_ce1;
    end else begin
        biases2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_0_we0 = grp_update_weights_68_69_1_fu_1607_biases2_0_we0;
    end else begin
        biases2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_0_we1 = grp_update_weights_68_69_1_fu_1607_biases2_0_we1;
    end else begin
        biases2_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_1_address0 = grp_update_weights_68_69_1_fu_1607_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_address0;
    end else begin
        biases2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_1_ce0 = grp_update_weights_68_69_1_fu_1607_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_biases2_1_ce0;
    end else begin
        biases2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_1_ce1 = grp_update_weights_68_69_1_fu_1607_biases2_1_ce1;
    end else begin
        biases2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_1_we0 = grp_update_weights_68_69_1_fu_1607_biases2_1_we0;
    end else begin
        biases2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases2_1_we1 = grp_update_weights_68_69_1_fu_1607_biases2_1_we1;
    end else begin
        biases2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases3_address0 = grp_update_weights_68_69_1_fu_1607_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases3_ce0 = grp_update_weights_68_69_1_fu_1607_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases3_ce1 = grp_update_weights_68_69_1_fu_1607_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        biases3_we0 = grp_update_weights_68_69_1_fu_1607_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations1_1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_address0;
    end else begin
        dactivations1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations1_1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_ce0;
    end else begin
        dactivations1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_1_we0;
    end else begin
        dactivations1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_address0;
    end else begin
        dactivations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_dactivations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_1_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_address0;
    end else begin
        dactivations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_1_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_ce0;
    end else begin
        dactivations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_1_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_1_ce1;
    end else begin
        dactivations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_1_we0;
    end else begin
        dactivations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations2_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_dactivations_0_ce1;
    end else begin
        dactivations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_1_address0 = grp_update_weights_68_69_1_fu_1607_d_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address0;
    end else begin
        delta_weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_1_address1 = grp_update_weights_68_69_1_fu_1607_d_weights1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_address1;
    end else begin
        delta_weights1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_1_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce0;
    end else begin
        delta_weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_1_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_ce1;
    end else begin
        delta_weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we0;
    end else begin
        delta_weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_1_we1;
    end else begin
        delta_weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_address0 = grp_update_weights_68_69_1_fu_1607_d_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_address1 = grp_update_weights_68_69_1_fu_1607_d_weights1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_address1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_address1;
    end else begin
        delta_weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights1_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_ce1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_we0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights1_we1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_delta_weights1_0_we1;
    end else begin
        delta_weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_1_address0 = grp_update_weights_68_69_1_fu_1607_d_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_address0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address0;
    end else begin
        delta_weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_1_address1 = grp_update_weights_68_69_1_fu_1607_d_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_address1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_address1;
    end else begin
        delta_weights2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_1_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce0;
    end else begin
        delta_weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_1_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_ce1;
    end else begin
        delta_weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_we0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we0;
    end else begin
        delta_weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_1_we1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_1_we1;
    end else begin
        delta_weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_address0 = grp_update_weights_68_69_1_fu_1607_d_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_address0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_address1 = grp_update_weights_68_69_1_fu_1607_d_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_address1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_address1;
    end else begin
        delta_weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_ce0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights2_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_ce1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_we0 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights2_we1 = grp_get_delta_matrix_weights2_fu_1570_delta_weights2_0_we1;
    end else begin
        delta_weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_address0 = grp_update_weights_68_69_1_fu_1607_d_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_address0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address0;
    end else begin
        delta_weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_address1 = grp_update_weights_68_69_1_fu_1607_d_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_address1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_address1;
    end else begin
        delta_weights3_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_ce0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce0;
    end else begin
        delta_weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_ce1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_ce1;
    end else begin
        delta_weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_we0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we0;
    end else begin
        delta_weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_we1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_1_we1;
    end else begin
        delta_weights3_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_address0 = grp_update_weights_68_69_1_fu_1607_d_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_address0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_address1 = grp_update_weights_68_69_1_fu_1607_d_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_address1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_address1;
    end else begin
        delta_weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_ce0 = grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_ce0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_ce1 = grp_update_weights_68_69_1_fu_1607_d_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_ce1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_we0 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_we1 = grp_get_delta_matrix_weights3_fu_1544_delta_weights3_0_we1;
    end else begin
        delta_weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2832_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2832_ce = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2832_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2832_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2832_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2832_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2832_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2832_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2832_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2832_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2832_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_ce;
    end else begin
        grp_fu_2832_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2832_opcode = grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2832_opcode = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2832_opcode = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2832_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2832_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2832_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2832_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2832_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2832_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2832_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2832_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_opcode;
    end else begin
        grp_fu_2832_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2832_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2832_p0 = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2832_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2832_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2832_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2832_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2832_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2832_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2832_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2832_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2832_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din0;
    end else begin
        grp_fu_2832_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2832_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2832_p1 = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2832_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2832_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2832_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2832_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2832_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2832_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2832_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2832_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2832_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2832_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2832_p_din1;
    end else begin
        grp_fu_2832_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2836_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2836_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2836_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2836_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2836_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2836_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_ce;
    end else begin
        grp_fu_2836_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2836_opcode = grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2836_opcode = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2836_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2836_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2836_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2836_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_opcode;
    end else begin
        grp_fu_2836_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2836_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2836_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2836_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2836_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2836_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2836_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din0;
    end else begin
        grp_fu_2836_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2836_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2836_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2836_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2836_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2836_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2836_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2836_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2836_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2836_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2836_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2836_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2836_p_din1;
    end else begin
        grp_fu_2836_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2840_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2840_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2840_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_ce;
    end else begin
        grp_fu_2840_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2840_opcode = grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2840_opcode = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2840_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_opcode;
    end else begin
        grp_fu_2840_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2840_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2840_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2840_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din0;
    end else begin
        grp_fu_2840_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2840_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2840_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2840_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2840_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2840_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2840_p_din1;
    end else begin
        grp_fu_2840_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2844_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2844_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2844_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_ce;
    end else begin
        grp_fu_2844_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2844_opcode = grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2844_opcode = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2844_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_opcode;
    end else begin
        grp_fu_2844_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2844_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2844_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2844_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din0;
    end else begin
        grp_fu_2844_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2844_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2844_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2844_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2844_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2844_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2844_p_din1;
    end else begin
        grp_fu_2844_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2848_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2848_ce = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2848_ce = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2848_ce = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2848_ce = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2848_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2848_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2848_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2848_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2848_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2848_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2848_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_ce;
    end else begin
        grp_fu_2848_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2848_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2848_p0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2848_p0 = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2848_p0 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2848_p0 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2848_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2848_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2848_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2848_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2848_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2848_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2848_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din0;
    end else begin
        grp_fu_2848_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2848_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2848_p1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_2848_p1 = grp_get_oracle_activations1_64_65_1_fu_1580_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2848_p1 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2848_p1 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_2848_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2848_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_2848_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2848_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_2848_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2848_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2848_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2848_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2848_p_din1;
    end else begin
        grp_fu_2848_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2852_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2852_ce = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2852_ce = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2852_ce = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2852_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_ce;
    end else begin
        grp_fu_2852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2852_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2852_p0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2852_p0 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2852_p0 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2852_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din0;
    end else begin
        grp_fu_2852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2852_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2852_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2852_p1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2852_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2852_p1 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2852_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2852_p1 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2852_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2852_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2852_p_din1;
    end else begin
        grp_fu_2852_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2856_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2856_ce = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2856_ce = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2856_ce = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2856_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_ce;
    end else begin
        grp_fu_2856_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2856_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2856_p0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2856_p0 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2856_p0 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2856_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din0;
    end else begin
        grp_fu_2856_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2856_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2856_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2856_p1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2856_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2856_p1 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2856_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2856_p1 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2856_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2856_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2856_p_din1;
    end else begin
        grp_fu_2856_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2860_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2860_ce = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2860_ce = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2860_ce = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2860_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_ce;
    end else begin
        grp_fu_2860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2860_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2860_p0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2860_p0 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2860_p0 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2860_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din0;
    end else begin
        grp_fu_2860_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2860_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_2860_p1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_grp_fu_2860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_2860_p1 = grp_get_delta_matrix_weights2_fu_1570_grp_fu_2860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2860_p1 = grp_get_delta_matrix_weights3_fu_1544_grp_fu_2860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2860_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_grp_fu_2860_p_din1;
    end else begin
        grp_fu_2860_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2864_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2864_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2864_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2864_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2864_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_ce;
    end else begin
        grp_fu_2864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2864_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2864_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2864_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2864_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2864_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din0;
    end else begin
        grp_fu_2864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2864_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2864_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2864_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2864_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2864_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2864_p_din1;
    end else begin
        grp_fu_2864_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2868_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2868_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2868_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2868_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2868_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_ce;
    end else begin
        grp_fu_2868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2868_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2868_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2868_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2868_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2868_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din0;
    end else begin
        grp_fu_2868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_2868_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_grp_fu_2868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_2868_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_grp_fu_2868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_2868_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_grp_fu_2868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2868_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_grp_fu_2868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2868_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_grp_fu_2868_p_din1;
    end else begin
        grp_fu_2868_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2872_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2872_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_ce;
    end else begin
        grp_fu_2872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2872_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2872_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din0;
    end else begin
        grp_fu_2872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2872_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2872_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2872_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2872_p_din1;
    end else begin
        grp_fu_2872_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2876_ce = grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2876_ce = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_ce;
    end else begin
        grp_fu_2876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2876_p0 = grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2876_p0 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din0;
    end else begin
        grp_fu_2876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_2876_p1 = grp_update_weights_68_69_1_fu_1607_grp_fu_2876_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2876_p1 = grp_get_oracle_activations2_62_63_1_fu_1555_grp_fu_2876_p_din1;
    end else begin
        grp_fu_2876_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_1_address0 = grp_update_weights_68_69_1_fu_1607_d_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_address0;
    end else begin
        oracle_activations1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_1_address1 = grp_update_weights_68_69_1_fu_1607_d_biases1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_address1;
    end else begin
        oracle_activations1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_1_ce0 = grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_ce0;
    end else begin
        oracle_activations1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_1_ce1 = grp_update_weights_68_69_1_fu_1607_d_biases1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_1_ce1;
    end else begin
        oracle_activations1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_1_we0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_1_we0;
    end else begin
        oracle_activations1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_address0 = grp_update_weights_68_69_1_fu_1607_d_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_address0;
    end else begin
        oracle_activations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_address1 = grp_update_weights_68_69_1_fu_1607_d_biases1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_address1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_address1;
    end else begin
        oracle_activations1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_ce0 = grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_ce0;
    end else begin
        oracle_activations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations1_ce1 = grp_update_weights_68_69_1_fu_1607_d_biases1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations1_ce1 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_output_difference_0_ce1;
    end else begin
        oracle_activations1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_we0 = grp_get_oracle_activations1_64_65_1_fu_1580_oracle_activations_0_we0;
    end else begin
        oracle_activations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_address0 = grp_update_weights_68_69_1_fu_1607_d_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_1_address0 = grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address0;
    end else begin
        oracle_activations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_address1 = grp_update_weights_68_69_1_fu_1607_d_biases2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_address1 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_1_address1 = grp_get_delta_matrix_weights2_fu_1570_output_difference_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_address1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_address1;
    end else begin
        oracle_activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_ce0 = grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_1_ce0 = grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce0;
    end else begin
        oracle_activations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_ce1 = grp_update_weights_68_69_1_fu_1607_d_biases2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_ce1 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_1_ce1 = grp_get_delta_matrix_weights2_fu_1570_output_difference_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_ce1;
    end else begin
        oracle_activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_we0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we0;
    end else begin
        oracle_activations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_1_we1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_1_we1;
    end else begin
        oracle_activations2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_address0 = grp_update_weights_68_69_1_fu_1607_d_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_address0 = grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address0;
    end else begin
        oracle_activations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_address1 = grp_update_weights_68_69_1_fu_1607_d_biases2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_address1 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_address1 = grp_get_delta_matrix_weights2_fu_1570_output_difference_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_address1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_address1;
    end else begin
        oracle_activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_ce0 = grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_ce0 = grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce0;
    end else begin
        oracle_activations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_ce1 = grp_update_weights_68_69_1_fu_1607_d_biases2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_ce1 = grp_get_oracle_activations1_64_65_1_fu_1580_output_differences_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        oracle_activations2_ce1 = grp_get_delta_matrix_weights2_fu_1570_output_difference_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_ce1;
    end else begin
        oracle_activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_we0 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        oracle_activations2_we1 = grp_get_oracle_activations2_62_63_1_fu_1555_oracle_activations_0_we1;
    end else begin
        oracle_activations2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_address0;
    end else begin
        training_data_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_0_ce0;
    end else begin
        training_data_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_address0;
    end else begin
        training_data_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_fu_1594_training_data_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_training_data_1_ce0;
    end else begin
        training_data_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_address0 = grp_update_weights_68_69_1_fu_1607_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address0;
    end else begin
        weights1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_address1 = grp_update_weights_68_69_1_fu_1607_weights1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_address1;
    end else begin
        weights1_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_ce0 = grp_update_weights_68_69_1_fu_1607_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce0;
    end else begin
        weights1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_ce1 = grp_update_weights_68_69_1_fu_1607_weights1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_0_ce1;
    end else begin
        weights1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_we0 = grp_update_weights_68_69_1_fu_1607_weights1_0_we0;
    end else begin
        weights1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_0_we1 = grp_update_weights_68_69_1_fu_1607_weights1_0_we1;
    end else begin
        weights1_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_address0 = grp_update_weights_68_69_1_fu_1607_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address0;
    end else begin
        weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_address1 = grp_update_weights_68_69_1_fu_1607_weights1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_address1;
    end else begin
        weights1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_ce0 = grp_update_weights_68_69_1_fu_1607_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce0;
    end else begin
        weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_ce1 = grp_update_weights_68_69_1_fu_1607_weights1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_weights1_1_ce1;
    end else begin
        weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_we0 = grp_update_weights_68_69_1_fu_1607_weights1_1_we0;
    end else begin
        weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights1_1_we1 = grp_update_weights_68_69_1_fu_1607_weights1_1_we1;
    end else begin
        weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_address0 = grp_update_weights_68_69_1_fu_1607_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_0_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address0;
    end else begin
        weights2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_address1 = grp_update_weights_68_69_1_fu_1607_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_0_address1 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_address1;
    end else begin
        weights2_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_ce0 = grp_update_weights_68_69_1_fu_1607_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce0;
    end else begin
        weights2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_ce1 = grp_update_weights_68_69_1_fu_1607_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_0_ce1;
    end else begin
        weights2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_we0 = grp_update_weights_68_69_1_fu_1607_weights2_0_we0;
    end else begin
        weights2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_we1 = grp_update_weights_68_69_1_fu_1607_weights2_0_we1;
    end else begin
        weights2_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_address0 = grp_update_weights_68_69_1_fu_1607_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_1_address0 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address0;
    end else begin
        weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_address1 = grp_update_weights_68_69_1_fu_1607_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_1_address1 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_address1;
    end else begin
        weights2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_ce0 = grp_update_weights_68_69_1_fu_1607_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce0;
    end else begin
        weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_ce1 = grp_update_weights_68_69_1_fu_1607_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_fu_1580_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_weights2_1_ce1;
    end else begin
        weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_we0 = grp_update_weights_68_69_1_fu_1607_weights2_1_we0;
    end else begin
        weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_we1 = grp_update_weights_68_69_1_fu_1607_weights2_1_we1;
    end else begin
        weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_address0 = grp_update_weights_68_69_1_fu_1607_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address0;
    end else begin
        weights3_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_address1 = grp_update_weights_68_69_1_fu_1607_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_address1 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_address1;
    end else begin
        weights3_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_ce0 = grp_update_weights_68_69_1_fu_1607_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce0;
    end else begin
        weights3_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_ce1 = grp_update_weights_68_69_1_fu_1607_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_0_ce1;
    end else begin
        weights3_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_we0 = grp_update_weights_68_69_1_fu_1607_weights3_0_we0;
    end else begin
        weights3_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_0_we1 = grp_update_weights_68_69_1_fu_1607_weights3_0_we1;
    end else begin
        weights3_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_address0 = grp_update_weights_68_69_1_fu_1607_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_address0 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address0;
    end else begin
        weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_address1 = grp_update_weights_68_69_1_fu_1607_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_address1 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_address1;
    end else begin
        weights3_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_ce0 = grp_update_weights_68_69_1_fu_1607_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_ce0 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce0;
    end else begin
        weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_ce1 = grp_update_weights_68_69_1_fu_1607_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_ce1 = grp_get_oracle_activations2_62_63_1_fu_1555_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_weights3_1_ce1;
    end else begin
        weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_we0 = grp_update_weights_68_69_1_fu_1607_weights3_1_we0;
    end else begin
        weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_1_we1 = grp_update_weights_68_69_1_fu_1607_weights3_1_we1;
    end else begin
        weights3_1_we1 = 1'b0;
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
            if (((icmp_ln220_fu_1668_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
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
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((1'b1 == ap_CS_fsm_state37) & (grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            if (((1'b1 == ap_CS_fsm_state47) & (grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            if (((1'b0 == ap_block_state49_on_subcall_done) & (1'b1 == ap_CS_fsm_state49))) begin
                ap_NS_fsm = ap_ST_fsm_state50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            if (((1'b1 == ap_CS_fsm_state51) & (grp_get_delta_matrix_weights2_fu_1570_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state51;
            end
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            if (((1'b1 == ap_CS_fsm_state53) & (grp_get_oracle_activations1_64_65_1_fu_1580_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state53;
            end
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            if (((1'b1 == ap_CS_fsm_state55) & (grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state55;
            end
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            if (((1'b1 == ap_CS_fsm_state57) & (grp_update_weights_68_69_1_fu_1607_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state57;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln220_1_fu_1662_p2 = (phi_mul_fu_166 + 12'd13);
assign add_ln220_fu_1674_p2 = (i_fu_170 + 8'd1);
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
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state49_on_subcall_done = ((grp_get_oracle_activations2_62_63_1_fu_1555_ap_done == 1'b0) | (grp_get_delta_matrix_weights3_fu_1544_ap_done == 1'b0));
end
assign biases1_0_address1 = grp_update_weights_68_69_1_fu_1607_biases1_0_address1;
assign biases1_0_d0 = grp_update_weights_68_69_1_fu_1607_biases1_0_d0;
assign biases1_0_d1 = grp_update_weights_68_69_1_fu_1607_biases1_0_d1;
assign biases1_1_address1 = grp_update_weights_68_69_1_fu_1607_biases1_1_address1;
assign biases1_1_d0 = grp_update_weights_68_69_1_fu_1607_biases1_1_d0;
assign biases1_1_d1 = grp_update_weights_68_69_1_fu_1607_biases1_1_d1;
assign biases2_0_address1 = grp_update_weights_68_69_1_fu_1607_biases2_0_address1;
assign biases2_0_d0 = grp_update_weights_68_69_1_fu_1607_biases2_0_d0;
assign biases2_0_d1 = grp_update_weights_68_69_1_fu_1607_biases2_0_d1;
assign biases2_1_address1 = grp_update_weights_68_69_1_fu_1607_biases2_1_address1;
assign biases2_1_d0 = grp_update_weights_68_69_1_fu_1607_biases2_1_d0;
assign biases2_1_d1 = grp_update_weights_68_69_1_fu_1607_biases2_1_d1;
assign biases3_address1 = grp_update_weights_68_69_1_fu_1607_biases3_address1;
assign biases3_d0 = grp_update_weights_68_69_1_fu_1607_biases3_d0;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1503_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1459_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_1482_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1435_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1495_ap_start_reg;
assign grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start = grp_get_delta_matrix_weights1_66_67_1_fu_1594_ap_start_reg;
assign grp_get_delta_matrix_weights2_fu_1570_ap_start = grp_get_delta_matrix_weights2_fu_1570_ap_start_reg;
assign grp_get_delta_matrix_weights3_fu_1544_ap_start = grp_get_delta_matrix_weights3_fu_1544_ap_start_reg;
assign grp_get_oracle_activations1_64_65_1_fu_1580_ap_start = grp_get_oracle_activations1_64_65_1_fu_1580_ap_start_reg;
assign grp_get_oracle_activations2_62_63_1_fu_1555_ap_start = grp_get_oracle_activations2_62_63_1_fu_1555_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start = grp_matrix_vector_product_with_bias_input_layer_56_57_1_fu_1416_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_fu_1467_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_fu_1443_ap_start_reg;
assign grp_update_weights_68_69_1_fu_1607_ap_start = grp_update_weights_68_69_1_fu_1607_ap_start_reg;
assign icmp_ln220_fu_1668_p2 = ((i_fu_170 == 8'd163) ? 1'b1 : 1'b0);
assign p_shl_fu_1751_p3 = {{trunc_ln66_fu_1748_p1}, {2'd0}};
assign sub_ln66_fu_1759_p2 = (p_shl_fu_1751_p3 - zext_ln66_fu_1745_p1);
assign training_targets_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_address0;
assign training_targets_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_0_ce0;
assign training_targets_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_address0;
assign training_targets_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1517_training_targets_1_ce0;
assign trunc_ln66_fu_1748_p1 = i_18_reg_2734[6:0];
assign weights1_0_d0 = grp_update_weights_68_69_1_fu_1607_weights1_0_d0;
assign weights1_0_d1 = grp_update_weights_68_69_1_fu_1607_weights1_0_d1;
assign weights1_1_d0 = grp_update_weights_68_69_1_fu_1607_weights1_1_d0;
assign weights1_1_d1 = grp_update_weights_68_69_1_fu_1607_weights1_1_d1;
assign weights2_0_d0 = grp_update_weights_68_69_1_fu_1607_weights2_0_d0;
assign weights2_0_d1 = grp_update_weights_68_69_1_fu_1607_weights2_0_d1;
assign weights2_1_d0 = grp_update_weights_68_69_1_fu_1607_weights2_1_d0;
assign weights2_1_d1 = grp_update_weights_68_69_1_fu_1607_weights2_1_d1;
assign weights3_0_d0 = grp_update_weights_68_69_1_fu_1607_weights3_0_d0;
assign weights3_0_d1 = grp_update_weights_68_69_1_fu_1607_weights3_0_d1;
assign weights3_1_d0 = grp_update_weights_68_69_1_fu_1607_weights3_1_d0;
assign weights3_1_d1 = grp_update_weights_68_69_1_fu_1607_weights3_1_d1;
assign zext_ln66_fu_1745_p1 = i_18_reg_2734;
endmodule 