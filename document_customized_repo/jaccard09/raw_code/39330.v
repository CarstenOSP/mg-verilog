module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_we1,weights1_0_d1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_we1,weights1_1_d1,weights1_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_we1,weights2_0_d1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_we1,weights2_1_d1,weights2_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,biases1_0_address1,biases1_0_ce1,biases1_0_we1,biases1_0_d1,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_1_address1,biases1_1_ce1,biases1_1_we1,biases1_1_d1,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,biases2_0_address1,biases2_0_ce1,biases2_0_we1,biases2_0_d1,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_1_address1,biases2_1_ce1,biases2_1_we1,biases2_1_d1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0); 
parameter    ap_ST_fsm_state1 = 56'd1;
parameter    ap_ST_fsm_state2 = 56'd2;
parameter    ap_ST_fsm_state3 = 56'd4;
parameter    ap_ST_fsm_state4 = 56'd8;
parameter    ap_ST_fsm_state5 = 56'd16;
parameter    ap_ST_fsm_state6 = 56'd32;
parameter    ap_ST_fsm_state7 = 56'd64;
parameter    ap_ST_fsm_state8 = 56'd128;
parameter    ap_ST_fsm_state9 = 56'd256;
parameter    ap_ST_fsm_state10 = 56'd512;
parameter    ap_ST_fsm_state11 = 56'd1024;
parameter    ap_ST_fsm_state12 = 56'd2048;
parameter    ap_ST_fsm_state13 = 56'd4096;
parameter    ap_ST_fsm_state14 = 56'd8192;
parameter    ap_ST_fsm_state15 = 56'd16384;
parameter    ap_ST_fsm_state16 = 56'd32768;
parameter    ap_ST_fsm_state17 = 56'd65536;
parameter    ap_ST_fsm_state18 = 56'd131072;
parameter    ap_ST_fsm_state19 = 56'd262144;
parameter    ap_ST_fsm_state20 = 56'd524288;
parameter    ap_ST_fsm_state21 = 56'd1048576;
parameter    ap_ST_fsm_state22 = 56'd2097152;
parameter    ap_ST_fsm_state23 = 56'd4194304;
parameter    ap_ST_fsm_state24 = 56'd8388608;
parameter    ap_ST_fsm_state25 = 56'd16777216;
parameter    ap_ST_fsm_state26 = 56'd33554432;
parameter    ap_ST_fsm_state27 = 56'd67108864;
parameter    ap_ST_fsm_state28 = 56'd134217728;
parameter    ap_ST_fsm_state29 = 56'd268435456;
parameter    ap_ST_fsm_state30 = 56'd536870912;
parameter    ap_ST_fsm_state31 = 56'd1073741824;
parameter    ap_ST_fsm_state32 = 56'd2147483648;
parameter    ap_ST_fsm_state33 = 56'd4294967296;
parameter    ap_ST_fsm_state34 = 56'd8589934592;
parameter    ap_ST_fsm_state35 = 56'd17179869184;
parameter    ap_ST_fsm_state36 = 56'd34359738368;
parameter    ap_ST_fsm_state37 = 56'd68719476736;
parameter    ap_ST_fsm_state38 = 56'd137438953472;
parameter    ap_ST_fsm_state39 = 56'd274877906944;
parameter    ap_ST_fsm_state40 = 56'd549755813888;
parameter    ap_ST_fsm_state41 = 56'd1099511627776;
parameter    ap_ST_fsm_state42 = 56'd2199023255552;
parameter    ap_ST_fsm_state43 = 56'd4398046511104;
parameter    ap_ST_fsm_state44 = 56'd8796093022208;
parameter    ap_ST_fsm_state45 = 56'd17592186044416;
parameter    ap_ST_fsm_state46 = 56'd35184372088832;
parameter    ap_ST_fsm_state47 = 56'd70368744177664;
parameter    ap_ST_fsm_state48 = 56'd140737488355328;
parameter    ap_ST_fsm_state49 = 56'd281474976710656;
parameter    ap_ST_fsm_state50 = 56'd562949953421312;
parameter    ap_ST_fsm_state51 = 56'd1125899906842624;
parameter    ap_ST_fsm_state52 = 56'd2251799813685248;
parameter    ap_ST_fsm_state53 = 56'd4503599627370496;
parameter    ap_ST_fsm_state54 = 56'd9007199254740992;
parameter    ap_ST_fsm_state55 = 56'd18014398509481984;
parameter    ap_ST_fsm_state56 = 56'd36028797018963968;
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
output  [4:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [4:0] biases1_1_address1;
output   biases1_1_ce1;
output   biases1_1_we1;
output  [63:0] biases1_1_d1;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_0_address1;
output   biases2_0_ce1;
output   biases2_0_we1;
output  [63:0] biases2_0_d1;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [4:0] biases2_1_address1;
output   biases2_1_ce1;
output   biases2_1_we1;
output  [63:0] biases2_1_d1;
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
(* fsm_encoding = "none" *) reg   [55:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_1796;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state34;
reg   [63:0] reg_1803;
reg   [63:0] reg_1810;
reg   [11:0] phi_mul_load_reg_2975;
wire    ap_CS_fsm_state2;
wire   [11:0] add_ln220_1_fu_1833_p2;
reg   [11:0] add_ln220_1_reg_2983;
wire   [7:0] add_ln220_fu_1845_p2;
reg   [7:0] add_ln220_reg_2991;
wire   [8:0] zext_ln66_fu_1866_p1;
reg   [8:0] zext_ln66_reg_2996;
wire    ap_CS_fsm_state21;
wire   [6:0] add_ln44_fu_1875_p2;
reg   [6:0] add_ln44_reg_3004;
wire    ap_CS_fsm_state22;
wire   [5:0] trunc_ln44_fu_1881_p1;
reg   [5:0] trunc_ln44_reg_3009;
wire   [0:0] trunc_ln44_1_fu_1886_p1;
reg   [0:0] trunc_ln44_1_reg_3014;
reg   [4:0] lshr_ln43_1_reg_3018;
wire   [8:0] sub_ln66_fu_1911_p2;
reg   [8:0] sub_ln66_reg_3023;
wire   [6:0] add_ln102_fu_2032_p2;
reg   [6:0] add_ln102_reg_3106;
wire    ap_CS_fsm_state44;
wire   [5:0] trunc_ln102_fu_2038_p1;
reg   [5:0] trunc_ln102_reg_3111;
wire   [0:0] trunc_ln102_1_fu_2043_p1;
reg   [0:0] trunc_ln102_1_reg_3116;
reg   [4:0] oracle_activations1_addr_reg_3121;
reg   [4:0] oracle_activations1_1_addr_reg_3126;
wire   [63:0] select_ln107_fu_2121_p3;
reg   [63:0] select_ln107_reg_3141;
wire    ap_CS_fsm_state45;
wire   [63:0] grp_fu_1780_p2;
reg   [63:0] mul16_i1_reg_3149;
wire    ap_CS_fsm_state52;
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
reg    delta_weights1_ce1;
reg    delta_weights1_we1;
reg   [8:0] delta_weights1_1_address0;
reg    delta_weights1_1_ce0;
reg    delta_weights1_1_we0;
wire   [63:0] delta_weights1_1_q0;
reg    delta_weights1_1_ce1;
reg    delta_weights1_1_we1;
reg   [10:0] delta_weights2_address0;
reg    delta_weights2_ce0;
reg    delta_weights2_we0;
wire   [63:0] delta_weights2_q0;
reg    delta_weights2_ce1;
reg    delta_weights2_we1;
reg   [10:0] delta_weights2_1_address0;
reg    delta_weights2_1_ce0;
reg    delta_weights2_1_we0;
wire   [63:0] delta_weights2_1_q0;
reg    delta_weights2_1_ce1;
reg    delta_weights2_1_we1;
reg   [6:0] delta_weights3_address0;
reg    delta_weights3_ce0;
reg    delta_weights3_we0;
wire   [63:0] delta_weights3_q0;
reg    delta_weights3_ce1;
reg    delta_weights3_we1;
reg   [6:0] delta_weights3_1_address0;
reg    delta_weights3_1_ce0;
reg    delta_weights3_1_we0;
wire   [63:0] delta_weights3_1_q0;
reg    delta_weights3_1_ce1;
reg    delta_weights3_1_we1;
reg   [4:0] oracle_activations1_address0;
reg    oracle_activations1_ce0;
wire   [63:0] oracle_activations1_q0;
reg    oracle_activations1_ce1;
wire   [63:0] oracle_activations1_q1;
reg   [4:0] oracle_activations1_1_address0;
reg    oracle_activations1_1_ce0;
wire   [63:0] oracle_activations1_1_q0;
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
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce1;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_ce;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_done;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_idle;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_ready;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce0;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce1;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce1;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce0;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce0;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce1;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_ready;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce0;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce1;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce0;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o_ap_vld;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_ce;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_done;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_idle;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_ready;
wire   [6:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d0;
wire   [6:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d1;
wire   [6:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d0;
wire   [6:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_ce;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_ap_done;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_ap_idle;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_ap_ready;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_d0;
wire   [6:0] grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce0;
wire   [6:0] grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce1;
wire   [6:0] grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce0;
wire   [6:0] grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce1;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce0;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce1;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_ce0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d1;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_ce;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_ap_done;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_ap_idle;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_ap_ready;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce1;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce0;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce1;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce1;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce0;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1716_add113_i_out;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_add113_i_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_opcode;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_ready;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_ce0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_ce0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d1;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_ce;
wire    grp_update_weights_37_38_1_fu_1741_ap_start;
wire    grp_update_weights_37_38_1_fu_1741_ap_done;
wire    grp_update_weights_37_38_1_fu_1741_ap_idle;
wire    grp_update_weights_37_38_1_fu_1741_ap_ready;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_weights1_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights1_0_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights1_0_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights1_0_d0;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_weights1_0_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights1_0_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights1_0_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights1_0_d1;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_weights1_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights1_1_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights1_1_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights1_1_d0;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_weights1_1_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights1_1_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights1_1_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights1_1_d1;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_weights2_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights2_0_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights2_0_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights2_0_d0;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_weights2_0_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights2_0_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights2_0_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights2_0_d1;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_weights2_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights2_1_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights2_1_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights2_1_d0;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_weights2_1_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights2_1_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights2_1_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights2_1_d1;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_weights3_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights3_0_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights3_0_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights3_0_d0;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_weights3_0_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights3_0_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights3_0_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights3_0_d1;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_weights3_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_weights3_1_ce0;
wire    grp_update_weights_37_38_1_fu_1741_weights3_1_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights3_1_d0;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_weights3_1_address1;
wire    grp_update_weights_37_38_1_fu_1741_weights3_1_ce1;
wire    grp_update_weights_37_38_1_fu_1741_weights3_1_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_weights3_1_d1;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_d_weights1_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights1_0_ce0;
wire   [8:0] grp_update_weights_37_38_1_fu_1741_d_weights1_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights1_1_ce0;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_d_weights2_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights2_0_ce0;
wire   [10:0] grp_update_weights_37_38_1_fu_1741_d_weights2_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights2_1_ce0;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_d_weights3_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights3_0_ce0;
wire   [6:0] grp_update_weights_37_38_1_fu_1741_d_weights3_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_weights3_1_ce0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases1_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_biases1_0_ce0;
wire    grp_update_weights_37_38_1_fu_1741_biases1_0_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases1_0_d0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases1_0_address1;
wire    grp_update_weights_37_38_1_fu_1741_biases1_0_ce1;
wire    grp_update_weights_37_38_1_fu_1741_biases1_0_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases1_0_d1;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases1_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_biases1_1_ce0;
wire    grp_update_weights_37_38_1_fu_1741_biases1_1_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases1_1_d0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases1_1_address1;
wire    grp_update_weights_37_38_1_fu_1741_biases1_1_ce1;
wire    grp_update_weights_37_38_1_fu_1741_biases1_1_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases1_1_d1;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases2_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_biases2_0_ce0;
wire    grp_update_weights_37_38_1_fu_1741_biases2_0_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases2_0_d0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases2_0_address1;
wire    grp_update_weights_37_38_1_fu_1741_biases2_0_ce1;
wire    grp_update_weights_37_38_1_fu_1741_biases2_0_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases2_0_d1;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases2_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_biases2_1_ce0;
wire    grp_update_weights_37_38_1_fu_1741_biases2_1_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases2_1_d0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_biases2_1_address1;
wire    grp_update_weights_37_38_1_fu_1741_biases2_1_ce1;
wire    grp_update_weights_37_38_1_fu_1741_biases2_1_we1;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases2_1_d1;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_biases3_address0;
wire    grp_update_weights_37_38_1_fu_1741_biases3_ce0;
wire    grp_update_weights_37_38_1_fu_1741_biases3_we0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_biases3_d0;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_biases3_address1;
wire    grp_update_weights_37_38_1_fu_1741_biases3_ce1;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_d_biases1_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_biases1_0_ce0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_d_biases1_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_biases1_1_ce0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_d_biases2_0_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_biases2_0_ce0;
wire   [4:0] grp_update_weights_37_38_1_fu_1741_d_biases2_1_address0;
wire    grp_update_weights_37_38_1_fu_1741_d_biases2_1_ce0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din1;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_opcode;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din1;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_opcode;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din1;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_opcode;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din1;
wire   [1:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_opcode;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_ce;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din0;
wire   [63:0] grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din1;
wire    grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_ce;
reg   [6:0] i_7_reg_1514;
wire    ap_CS_fsm_state24;
reg   [6:0] i_14_reg_1525;
wire    ap_CS_fsm_state53;
wire    ap_CS_fsm_state43;
reg    grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg;
wire    ap_CS_fsm_state20;
reg    grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg;
wire   [0:0] icmp_ln44_fu_1869_p2;
wire    ap_CS_fsm_state23;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg;
wire    ap_CS_fsm_state25;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
reg   [63:0] activations3_2_fu_326;
reg   [63:0] activations3_fu_318;
reg   [63:0] activations3_1_fu_322;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg    grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
reg    grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg;
reg    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg;
wire    ap_CS_fsm_state42;
reg    grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg;
wire   [0:0] icmp_ln102_fu_2026_p2;
reg    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg;
wire    ap_CS_fsm_state54;
reg    grp_update_weights_37_38_1_fu_1741_ap_start_reg;
wire    ap_CS_fsm_state55;
wire    ap_CS_fsm_state56;
wire   [63:0] zext_ln45_fu_1921_p1;
wire   [63:0] zext_ln103_fu_2057_p1;
reg   [11:0] phi_mul_fu_186;
reg   [7:0] i_fu_190;
reg   [63:0] mux_case_0152163_fu_194;
reg   [63:0] mux_case_1153167_fu_198;
reg   [63:0] mux_case_2154171_fu_202;
reg   [63:0] mux_case_0155175_fu_206;
reg   [63:0] mux_case_1156179_fu_210;
reg   [63:0] mux_case_2157183_fu_214;
reg   [63:0] empty_fu_218;
reg   [63:0] empty_44_fu_222;
reg   [63:0] empty_45_fu_226;
reg   [63:0] output_difference_1_promoted_fu_230;
reg   [63:0] output_difference_0_promoted_fu_234;
reg   [63:0] output_difference_2_promoted_fu_238;
wire    ap_CS_fsm_state46;
wire   [0:0] icmp_ln220_fu_1839_p2;
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
reg    activations2_we1_local;
reg    activations2_ce1_local;
reg   [4:0] activations2_address1_local;
reg    activations2_we0_local;
reg   [63:0] activations2_d0_local;
reg    activations2_ce0_local;
reg   [4:0] activations2_address0_local;
reg    activations2_1_we1_local;
reg    activations2_1_ce1_local;
reg   [4:0] activations2_1_address1_local;
reg    activations2_1_we0_local;
reg   [63:0] activations2_1_d0_local;
reg    activations2_1_ce0_local;
reg   [4:0] activations2_1_address0_local;
reg    dactivations1_ce0_local;
reg    dactivations1_1_ce0_local;
reg    oracle_activations1_we0_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_1_we0_local;
reg    oracle_activations1_1_ce0_local;
reg   [63:0] grp_fu_1780_p0;
reg   [63:0] grp_fu_1780_p1;
wire   [6:0] trunc_ln66_fu_1900_p1;
wire   [8:0] p_shl_fu_1903_p3;
wire   [4:0] lshr_ln101_1_fu_2047_p4;
reg    grp_fu_1780_ce;
wire   [63:0] grp_fu_3155_p2;
reg   [63:0] grp_fu_3155_p0;
reg   [63:0] grp_fu_3155_p1;
reg   [1:0] grp_fu_3155_opcode;
reg    grp_fu_3155_ce;
wire   [63:0] grp_fu_3159_p2;
reg   [63:0] grp_fu_3159_p0;
reg   [63:0] grp_fu_3159_p1;
reg   [1:0] grp_fu_3159_opcode;
reg    grp_fu_3159_ce;
wire   [63:0] grp_fu_3163_p2;
reg   [63:0] grp_fu_3163_p0;
reg   [63:0] grp_fu_3163_p1;
reg   [1:0] grp_fu_3163_opcode;
reg    grp_fu_3163_ce;
wire   [63:0] grp_fu_3167_p2;
reg   [63:0] grp_fu_3167_p0;
reg   [63:0] grp_fu_3167_p1;
reg   [1:0] grp_fu_3167_opcode;
reg    grp_fu_3167_ce;
wire   [63:0] grp_fu_3171_p2;
reg   [63:0] grp_fu_3171_p0;
reg   [63:0] grp_fu_3171_p1;
reg    grp_fu_3171_ce;
wire   [63:0] grp_fu_3175_p2;
reg   [63:0] grp_fu_3175_p0;
reg   [63:0] grp_fu_3175_p1;
reg    grp_fu_3175_ce;
wire   [63:0] grp_fu_3179_p2;
reg   [63:0] grp_fu_3179_p0;
reg   [63:0] grp_fu_3179_p1;
reg    grp_fu_3179_ce;
wire   [63:0] grp_fu_3183_p2;
reg   [63:0] grp_fu_3183_p0;
reg   [63:0] grp_fu_3183_p1;
reg    grp_fu_3183_ce;
wire   [63:0] grp_fu_3187_p2;
reg   [63:0] grp_fu_3187_p0;
reg   [63:0] grp_fu_3187_p1;
reg    grp_fu_3187_ce;
wire   [63:0] grp_fu_3191_p2;
reg   [63:0] grp_fu_3191_p0;
reg   [63:0] grp_fu_3191_p1;
reg    grp_fu_3191_ce;
wire   [63:0] grp_fu_3195_p2;
reg   [63:0] grp_fu_3195_p0;
reg   [63:0] grp_fu_3195_p1;
reg    grp_fu_3195_ce;
wire   [63:0] grp_fu_3199_p2;
reg   [63:0] grp_fu_3199_p0;
reg   [63:0] grp_fu_3199_p1;
reg    grp_fu_3199_ce;
reg   [55:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
reg    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
reg    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
reg    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
reg    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
reg    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
reg    ap_block_state41_on_subcall_done;
reg    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
reg    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
reg    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
reg    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
reg    ap_ST_fsm_state56_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 56'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg = 1'b0;
#0 activations3_2_fu_326 = 64'd0;
#0 activations3_fu_318 = 64'd0;
#0 activations3_1_fu_322 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg = 1'b0;
#0 grp_update_weights_37_38_1_fu_1741_ap_start_reg = 1'b0;
#0 phi_mul_fu_186 = 12'd0;
#0 i_fu_190 = 8'd0;
#0 mux_case_0152163_fu_194 = 64'd0;
#0 mux_case_1153167_fu_198 = 64'd0;
#0 mux_case_2154171_fu_202 = 64'd0;
#0 mux_case_0155175_fu_206 = 64'd0;
#0 mux_case_1156179_fu_210 = 64'd0;
#0 mux_case_2157183_fu_214 = 64'd0;
#0 empty_fu_218 = 64'd0;
#0 empty_44_fu_222 = 64'd0;
#0 empty_45_fu_226 = 64'd0;
#0 output_difference_1_promoted_fu_230 = 64'd0;
#0 output_difference_0_promoted_fu_234 = 64'd0;
#0 output_difference_2_promoted_fu_238 = 64'd0;
end
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_address0),.ce0(activations1_ce0),.we0(activations1_we0),.d0(activations1_d0),.q0(activations1_q0),.address1(activations1_address1),.ce1(activations1_ce1),.we1(activations1_we1),.d1(activations1_d1),.q1(activations1_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_1_address0),.ce0(activations1_1_ce0),.we0(activations1_1_we0),.d0(activations1_1_d0),.q0(activations1_1_q0),.address1(activations1_1_address1),.ce1(activations1_1_ce1),.we1(activations1_1_we1_local),.d1(64'd0),.q1(activations1_1_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_address0),.ce0(activations2_ce0),.we0(activations2_we0),.d0(activations2_d0),.q0(activations2_q0),.address1(activations2_address1),.ce1(activations2_ce1),.we1(activations2_we1_local),.d1(64'd0),.q1(activations2_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_1_address0),.ce0(activations2_1_ce0),.we0(activations2_1_we0),.d0(activations2_1_d0),.q0(activations2_1_q0),.address1(activations2_1_address1),.ce1(activations2_1_ce1),.we1(activations2_1_we1_local),.d1(64'd0),.q1(activations2_1_q1));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_1_address0),.ce0(dactivations1_1_ce0),.we0(dactivations1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_d0),.q0(dactivations1_1_q0));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_d0),.q0(dactivations2_q0),.address1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address1),.ce1(dactivations2_ce1),.q1(dactivations2_q1));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_1_address0),.ce0(dactivations2_1_ce0),.we0(dactivations2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_d0),.q0(dactivations2_1_q0),.address1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address1),.ce1(dactivations2_1_ce1),.q1(dactivations2_1_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d0),.q0(delta_weights1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address1),.ce1(delta_weights1_ce1),.we1(delta_weights1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_1_address0),.ce0(delta_weights1_1_ce0),.we0(delta_weights1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d0),.q0(delta_weights1_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address1),.ce1(delta_weights1_1_ce1),.we1(delta_weights1_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d0),.q0(delta_weights2_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address1),.ce1(delta_weights2_ce1),.we1(delta_weights2_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_1_address0),.ce0(delta_weights2_1_ce0),.we0(delta_weights2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d0),.q0(delta_weights2_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address1),.ce1(delta_weights2_1_ce1),.we1(delta_weights2_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d0),.q0(delta_weights3_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address1),.ce1(delta_weights3_ce1),.we1(delta_weights3_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_1_address0),.ce0(delta_weights3_1_ce0),.we0(delta_weights3_1_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d0),.q0(delta_weights3_1_q0),.address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address1),.ce1(delta_weights3_1_ce1),.we1(delta_weights3_1_we1),.d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d1));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0_local),.d0(mul16_i1_reg_3149),.q0(oracle_activations1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address1),.ce1(oracle_activations1_ce1),.q1(oracle_activations1_q1));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_1_address0),.ce0(oracle_activations1_1_ce0),.we0(oracle_activations1_1_we0_local),.d0(mul16_i1_reg_3149),.q0(oracle_activations1_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address1),.ce1(oracle_activations1_1_ce1),.q1(oracle_activations1_1_q1));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1),.ce1(oracle_activations2_ce1),.q1(oracle_activations2_q1));
backprop_dactivations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_1_address0),.ce0(oracle_activations2_1_ce0),.we0(oracle_activations2_1_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_d0),.q0(oracle_activations2_1_q0),.address1(oracle_activations2_1_address1),.ce1(oracle_activations2_1_ce1),.q1(oracle_activations2_1_q1));
backprop_matrix_vector_product_with_bias_input_layer_35_36_1 grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_ready),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce1),.activations_0_we1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we1),.activations_0_d1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d1),.activations_0_q1(activations1_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce1),.activations_1_q1(activations1_1_q1),.training_data_0_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_address0),.training_data_0_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_address0),.training_data_1_ce0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.idx(phi_mul_fu_186),.grp_fu_3155_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_ce),.grp_fu_3163_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din0),.grp_fu_3163_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din1),.grp_fu_3163_p_opcode(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_opcode),.grp_fu_3163_p_dout0(grp_fu_3163_p2),.grp_fu_3163_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_ce),.grp_fu_3167_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din0),.grp_fu_3167_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din1),.grp_fu_3167_p_opcode(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_opcode),.grp_fu_3167_p_dout0(grp_fu_3167_p2),.grp_fu_3167_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_ce),.grp_fu_1780_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_ce),.grp_fu_3171_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din0),.grp_fu_3171_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din1),.grp_fu_3171_p_dout0(grp_fu_3171_p2),.grp_fu_3171_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_ce),.grp_fu_3175_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din0),.grp_fu_3175_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din1),.grp_fu_3175_p_dout0(grp_fu_3175_p2),.grp_fu_3175_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_ce),.grp_fu_3179_p_din0(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din0),.grp_fu_3179_p_din1(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din1),.grp_fu_3179_p_dout0(grp_fu_3179_p2),.grp_fu_3179_p_ce(grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_ready),.dactivations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_address0),.dactivations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_ce0),.dactivations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_we0),.dactivations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_d0),.activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce0),.activations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_we0),.activations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_d0),.activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address1),.activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce1),.activations1_1_q1(activations1_1_q1),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce1),.activations1_q1(activations1_q1),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_ce),.grp_fu_3183_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din0),.grp_fu_3183_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din1),.grp_fu_3183_p_dout0(grp_fu_3183_p2),.grp_fu_3183_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_ce),.grp_fu_3187_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din0),.grp_fu_3187_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din1),.grp_fu_3187_p_dout0(grp_fu_3187_p2),.grp_fu_3187_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_ce));
backprop_backprop_Pipeline_mvp_product_loop2 grp_backprop_Pipeline_mvp_product_loop2_fu_1563(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start),.ap_done(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_done),.ap_idle(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_idle),.ap_ready(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_ready),.i_7(trunc_ln44_reg_3009),.weights2_0_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address0),.weights2_0_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address1),.weights2_0_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.activations1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce0),.activations1_q0(activations1_q0),.activations1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce1),.activations1_q1(activations1_q1),.weights2_1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address0),.weights2_1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address1),.weights2_1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.activations1_1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce0),.activations1_1_q0(activations1_1_q0),.activations1_1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address1),.activations1_1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce1),.activations1_1_q1(activations1_1_q1),.add114_i_out(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out),.add114_i_out_ap_vld(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_1 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_ready),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce1),.activations2_q1(activations2_q1),.biases2_0_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_address0),.biases2_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_address0),.biases2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_11 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_ready),.dactivations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_address0),.dactivations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_ce0),.dactivations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_we0),.dactivations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_d0),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_d0),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce1),.activations2_q1(activations2_q1),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_ce),.grp_fu_3183_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din0),.grp_fu_3183_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din1),.grp_fu_3183_p_dout0(grp_fu_3183_p2),.grp_fu_3183_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_ce),.grp_fu_3187_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din0),.grp_fu_3187_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din1),.grp_fu_3187_p_dout0(grp_fu_3187_p2),.grp_fu_3187_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_ready),.activations3_2_load(reg_1810),.activations3_load(reg_1803),.activations3_1_load(reg_1796),.weights3_0_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address0),.weights3_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address1),.weights3_0_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce0),.activations2_q0(activations2_q0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce1),.activations2_q1(activations2_q1),.weights3_1_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address0),.weights3_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address1),.weights3_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce0),.activations2_1_q0(activations2_1_q0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations3_10_out_i(activations3_2_fu_326),.activations3_10_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o),.activations3_10_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o_ap_vld),.activations3_9_out_i(activations3_fu_318),.activations3_9_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o),.activations3_9_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o_ap_vld),.activations3_8_out_i(activations3_1_fu_322),.activations3_8_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o),.activations3_8_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_12 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_ready),.activations3_i(activations3_fu_318),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_326),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_322),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o_ap_vld),.biases3_address0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_address0),.biases3_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_13 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_ready),.mux_case_2157183(mux_case_2157183_fu_214),.mux_case_1156179(mux_case_1156179_fu_210),.mux_case_0155175(mux_case_0155175_fu_206),.activations3_i(activations3_fu_318),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_326),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_322),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o_ap_vld),.mux_case_2157181_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out),.mux_case_2157181_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out_ap_vld),.mux_case_1156177_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out),.mux_case_1156177_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out_ap_vld),.mux_case_0155173_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out),.mux_case_0155173_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_ce),.grp_fu_3183_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din0),.grp_fu_3183_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din1),.grp_fu_3183_p_dout0(grp_fu_3183_p2),.grp_fu_3183_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_ce),.grp_fu_3187_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din0),.grp_fu_3187_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din1),.grp_fu_3187_p_dout0(grp_fu_3187_p2),.grp_fu_3187_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_ready),.activations3_load_2(reg_1803),.activations3_1_load_2(reg_1796),.activations3_2_load_2(reg_1810),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_sum_out_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_ce),.grp_fu_3187_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din0),.grp_fu_3187_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din1),.grp_fu_3187_p_dout0(grp_fu_3187_p2),.grp_fu_3187_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_ready),.mux_case_2154171(mux_case_2154171_fu_202),.mux_case_1153167(mux_case_1153167_fu_198),.mux_case_0152163(mux_case_0152163_fu_194),.activations3_load_2(reg_1803),.activations3_1_load_2(reg_1796),.activations3_2_load_2(reg_1810),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_sum_out),.mux_case_2154169_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out),.mux_case_2154169_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out_ap_vld),.mux_case_1153165_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out),.mux_case_1153165_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out_ap_vld),.mux_case_0152161_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out),.mux_case_0152161_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out_ap_vld),.grp_fu_3183_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din0),.grp_fu_3183_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din1),.grp_fu_3183_p_dout0(grp_fu_3183_p2),.grp_fu_3183_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_ce),.grp_fu_3187_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din0),.grp_fu_3187_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din1),.grp_fu_3187_p_dout0(grp_fu_3187_p2),.grp_fu_3187_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_238),.output_difference_0_promoted(output_difference_0_promoted_fu_234),.output_difference_1_promoted(output_difference_1_promoted_fu_230),.empty_34(empty_45_fu_226),.empty_35(empty_44_fu_222),.empty(empty_fu_218),.mux_case_0152161_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out),.mux_case_1153165_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out),.mux_case_2154169_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out),.mul_ln66(sub_ln66_reg_3023),.training_targets_0_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_address0),.training_targets_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_ce0),.training_targets_0_q0(training_targets_0_q0),.training_targets_1_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_address0),.training_targets_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_ce0),.training_targets_1_q0(training_targets_1_q0),.mux_case_0155173_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out),.mux_case_1156177_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out),.mux_case_2157181_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out_ap_vld),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out_ap_vld),.p_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out),.p_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out_ap_vld),.p_out1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1),.p_out1_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1_ap_vld),.p_out2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2),.p_out2_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_ce));
backprop_backprop_Pipeline_delta_matrix_weights3_loop grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start),.ap_done(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_done),.ap_idle(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_idle),.ap_ready(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_ready),.delta_weights3_1_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address0),.delta_weights3_1_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce0),.delta_weights3_1_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we0),.delta_weights3_1_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d0),.delta_weights3_1_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address1),.delta_weights3_1_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce1),.delta_weights3_1_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we1),.delta_weights3_1_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_d1),.delta_weights3_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address0),.delta_weights3_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce0),.delta_weights3_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we0),.delta_weights3_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d0),.delta_weights3_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address1),.delta_weights3_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce1),.delta_weights3_we1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we1),.delta_weights3_d1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_d1),.activations2_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce0),.activations2_q0(activations2_q0),.activations2_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce1),.activations2_q1(activations2_q1),.p_reload86(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2),.p_reload85(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1),.p_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out),.activations2_1_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce0),.activations2_1_q0(activations2_1_q0),.activations2_1_address1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.grp_fu_3191_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din0),.grp_fu_3191_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din1),.grp_fu_3191_p_dout0(grp_fu_3191_p2),.grp_fu_3191_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_ce));
backprop_backprop_Pipeline_activations2_loop grp_backprop_Pipeline_activations2_loop_fu_1691(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start),.ap_done(grp_backprop_Pipeline_activations2_loop_fu_1691_ap_done),.ap_idle(grp_backprop_Pipeline_activations2_loop_fu_1691_ap_idle),.ap_ready(grp_backprop_Pipeline_activations2_loop_fu_1691_ap_ready),.oracle_activations2_1_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_ce0),.oracle_activations2_1_we0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_we0),.oracle_activations2_1_d0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_d0),.oracle_activations2_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_ce0),.oracle_activations2_we0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_we0),.oracle_activations2_d0(grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_d0),.weights3_0_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address0),.weights3_0_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address1),.weights3_0_ce1(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.p_reload86(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2),.weights3_1_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address0),.weights3_1_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address1),.weights3_1_ce1(grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.p_reload85(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1),.p_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out),.dactivations2_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce0),.dactivations2_q0(dactivations2_q0),.dactivations2_address1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address1),.dactivations2_ce1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce1),.dactivations2_q1(dactivations2_q1),.dactivations2_1_address0(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address0),.dactivations2_1_ce0(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce0),.dactivations2_1_q0(dactivations2_1_q0),.dactivations2_1_address1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address1),.dactivations2_1_ce1(grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce1),.dactivations2_1_q1(dactivations2_1_q1),.grp_fu_3155_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_ce),.grp_fu_3163_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din0),.grp_fu_3163_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din1),.grp_fu_3163_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_opcode),.grp_fu_3163_p_dout0(grp_fu_3163_p2),.grp_fu_3163_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_ce),.grp_fu_3167_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din0),.grp_fu_3167_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din1),.grp_fu_3167_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_opcode),.grp_fu_3167_p_dout0(grp_fu_3167_p2),.grp_fu_3167_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_ce),.grp_fu_3171_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din0),.grp_fu_3171_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din1),.grp_fu_3171_p_dout0(grp_fu_3171_p2),.grp_fu_3171_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_ce),.grp_fu_3175_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din0),.grp_fu_3175_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din1),.grp_fu_3175_p_dout0(grp_fu_3175_p2),.grp_fu_3175_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_ce),.grp_fu_3179_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din0),.grp_fu_3179_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din1),.grp_fu_3179_p_dout0(grp_fu_3179_p2),.grp_fu_3179_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_ce),.grp_fu_3195_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din0),.grp_fu_3195_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din1),.grp_fu_3195_p_dout0(grp_fu_3195_p2),.grp_fu_3195_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_ce),.grp_fu_3199_p_din0(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din0),.grp_fu_3199_p_din1(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din1),.grp_fu_3199_p_dout0(grp_fu_3199_p2),.grp_fu_3199_p_ce(grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_ce0),.activations1_q0(activations1_q0),.activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_ce0),.activations1_1_q0(activations1_1_q0),.delta_weights2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we0),.delta_weights2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d0),.delta_weights2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we1),.delta_weights2_1_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_d1),.delta_weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address0),.delta_weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce0),.delta_weights2_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we0),.delta_weights2_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d0),.delta_weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address1),.delta_weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce1),.delta_weights2_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we1),.delta_weights2_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_d1),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_ce),.grp_fu_3171_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din0),.grp_fu_3171_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din1),.grp_fu_3171_p_dout0(grp_fu_3171_p2),.grp_fu_3171_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_ce),.grp_fu_3175_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din0),.grp_fu_3175_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din1),.grp_fu_3175_p_dout0(grp_fu_3175_p2),.grp_fu_3175_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_ce),.grp_fu_3179_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din0),.grp_fu_3179_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din1),.grp_fu_3179_p_dout0(grp_fu_3179_p2),.grp_fu_3179_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_ce));
backprop_backprop_Pipeline_activations1_loop grp_backprop_Pipeline_activations1_loop_fu_1716(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start),.ap_done(grp_backprop_Pipeline_activations1_loop_fu_1716_ap_done),.ap_idle(grp_backprop_Pipeline_activations1_loop_fu_1716_ap_idle),.ap_ready(grp_backprop_Pipeline_activations1_loop_fu_1716_ap_ready),.oracle_activations2_address0(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.i_19(trunc_ln102_reg_3111),.weights2_0_address0(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address0),.weights2_0_ce0(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address1),.weights2_0_ce1(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.weights2_1_address0(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address0),.weights2_1_ce0(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address1),.weights2_1_ce1(grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.add113_i_out(grp_backprop_Pipeline_activations1_loop_fu_1716_add113_i_out),.add113_i_out_ap_vld(grp_backprop_Pipeline_activations1_loop_fu_1716_add113_i_out_ap_vld),.grp_fu_3155_p_din0(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_ce),.grp_fu_1780_p_din0(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_ready),.phi_mul(phi_mul_load_reg_2975),.training_data_0_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_address0),.training_data_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_address0),.training_data_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.delta_weights1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we0),.delta_weights1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d0),.delta_weights1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we1),.delta_weights1_1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_d1),.delta_weights1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address0),.delta_weights1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce0),.delta_weights1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we0),.delta_weights1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d0),.delta_weights1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address1),.delta_weights1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce1),.delta_weights1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we1),.delta_weights1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_d1),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce0),.oracle_activations1_q0(oracle_activations1_q0),.oracle_activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address1),.oracle_activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce1),.oracle_activations1_q1(oracle_activations1_q1),.oracle_activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address0),.oracle_activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce0),.oracle_activations1_1_q0(oracle_activations1_1_q0),.oracle_activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address1),.oracle_activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce1),.oracle_activations1_1_q1(oracle_activations1_1_q1),.grp_fu_1780_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_ce),.grp_fu_3171_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din0),.grp_fu_3171_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din1),.grp_fu_3171_p_dout0(grp_fu_3171_p2),.grp_fu_3171_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_ce),.grp_fu_3175_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din0),.grp_fu_3175_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din1),.grp_fu_3175_p_dout0(grp_fu_3175_p2),.grp_fu_3175_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_ce),.grp_fu_3179_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din0),.grp_fu_3179_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din1),.grp_fu_3179_p_dout0(grp_fu_3179_p2),.grp_fu_3179_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_ce));
backprop_update_weights_37_38_1 grp_update_weights_37_38_1_fu_1741(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_37_38_1_fu_1741_ap_start),.ap_done(grp_update_weights_37_38_1_fu_1741_ap_done),.ap_idle(grp_update_weights_37_38_1_fu_1741_ap_idle),.ap_ready(grp_update_weights_37_38_1_fu_1741_ap_ready),.weights1_0_address0(grp_update_weights_37_38_1_fu_1741_weights1_0_address0),.weights1_0_ce0(grp_update_weights_37_38_1_fu_1741_weights1_0_ce0),.weights1_0_we0(grp_update_weights_37_38_1_fu_1741_weights1_0_we0),.weights1_0_d0(grp_update_weights_37_38_1_fu_1741_weights1_0_d0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_update_weights_37_38_1_fu_1741_weights1_0_address1),.weights1_0_ce1(grp_update_weights_37_38_1_fu_1741_weights1_0_ce1),.weights1_0_we1(grp_update_weights_37_38_1_fu_1741_weights1_0_we1),.weights1_0_d1(grp_update_weights_37_38_1_fu_1741_weights1_0_d1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_update_weights_37_38_1_fu_1741_weights1_1_address0),.weights1_1_ce0(grp_update_weights_37_38_1_fu_1741_weights1_1_ce0),.weights1_1_we0(grp_update_weights_37_38_1_fu_1741_weights1_1_we0),.weights1_1_d0(grp_update_weights_37_38_1_fu_1741_weights1_1_d0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_update_weights_37_38_1_fu_1741_weights1_1_address1),.weights1_1_ce1(grp_update_weights_37_38_1_fu_1741_weights1_1_ce1),.weights1_1_we1(grp_update_weights_37_38_1_fu_1741_weights1_1_we1),.weights1_1_d1(grp_update_weights_37_38_1_fu_1741_weights1_1_d1),.weights1_1_q1(weights1_1_q1),.weights2_0_address0(grp_update_weights_37_38_1_fu_1741_weights2_0_address0),.weights2_0_ce0(grp_update_weights_37_38_1_fu_1741_weights2_0_ce0),.weights2_0_we0(grp_update_weights_37_38_1_fu_1741_weights2_0_we0),.weights2_0_d0(grp_update_weights_37_38_1_fu_1741_weights2_0_d0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_update_weights_37_38_1_fu_1741_weights2_0_address1),.weights2_0_ce1(grp_update_weights_37_38_1_fu_1741_weights2_0_ce1),.weights2_0_we1(grp_update_weights_37_38_1_fu_1741_weights2_0_we1),.weights2_0_d1(grp_update_weights_37_38_1_fu_1741_weights2_0_d1),.weights2_0_q1(weights2_0_q1),.weights2_1_address0(grp_update_weights_37_38_1_fu_1741_weights2_1_address0),.weights2_1_ce0(grp_update_weights_37_38_1_fu_1741_weights2_1_ce0),.weights2_1_we0(grp_update_weights_37_38_1_fu_1741_weights2_1_we0),.weights2_1_d0(grp_update_weights_37_38_1_fu_1741_weights2_1_d0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_update_weights_37_38_1_fu_1741_weights2_1_address1),.weights2_1_ce1(grp_update_weights_37_38_1_fu_1741_weights2_1_ce1),.weights2_1_we1(grp_update_weights_37_38_1_fu_1741_weights2_1_we1),.weights2_1_d1(grp_update_weights_37_38_1_fu_1741_weights2_1_d1),.weights2_1_q1(weights2_1_q1),.weights3_0_address0(grp_update_weights_37_38_1_fu_1741_weights3_0_address0),.weights3_0_ce0(grp_update_weights_37_38_1_fu_1741_weights3_0_ce0),.weights3_0_we0(grp_update_weights_37_38_1_fu_1741_weights3_0_we0),.weights3_0_d0(grp_update_weights_37_38_1_fu_1741_weights3_0_d0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_update_weights_37_38_1_fu_1741_weights3_0_address1),.weights3_0_ce1(grp_update_weights_37_38_1_fu_1741_weights3_0_ce1),.weights3_0_we1(grp_update_weights_37_38_1_fu_1741_weights3_0_we1),.weights3_0_d1(grp_update_weights_37_38_1_fu_1741_weights3_0_d1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_update_weights_37_38_1_fu_1741_weights3_1_address0),.weights3_1_ce0(grp_update_weights_37_38_1_fu_1741_weights3_1_ce0),.weights3_1_we0(grp_update_weights_37_38_1_fu_1741_weights3_1_we0),.weights3_1_d0(grp_update_weights_37_38_1_fu_1741_weights3_1_d0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_update_weights_37_38_1_fu_1741_weights3_1_address1),.weights3_1_ce1(grp_update_weights_37_38_1_fu_1741_weights3_1_ce1),.weights3_1_we1(grp_update_weights_37_38_1_fu_1741_weights3_1_we1),.weights3_1_d1(grp_update_weights_37_38_1_fu_1741_weights3_1_d1),.weights3_1_q1(weights3_1_q1),.d_weights1_0_address0(grp_update_weights_37_38_1_fu_1741_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_37_38_1_fu_1741_d_weights1_0_ce0),.d_weights1_0_q0(delta_weights1_q0),.d_weights1_1_address0(grp_update_weights_37_38_1_fu_1741_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_37_38_1_fu_1741_d_weights1_1_ce0),.d_weights1_1_q0(delta_weights1_1_q0),.d_weights2_0_address0(grp_update_weights_37_38_1_fu_1741_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_37_38_1_fu_1741_d_weights2_0_ce0),.d_weights2_0_q0(delta_weights2_q0),.d_weights2_1_address0(grp_update_weights_37_38_1_fu_1741_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_37_38_1_fu_1741_d_weights2_1_ce0),.d_weights2_1_q0(delta_weights2_1_q0),.d_weights3_0_address0(grp_update_weights_37_38_1_fu_1741_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_37_38_1_fu_1741_d_weights3_0_ce0),.d_weights3_0_q0(delta_weights3_q0),.d_weights3_1_address0(grp_update_weights_37_38_1_fu_1741_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_37_38_1_fu_1741_d_weights3_1_ce0),.d_weights3_1_q0(delta_weights3_1_q0),.biases1_0_address0(grp_update_weights_37_38_1_fu_1741_biases1_0_address0),.biases1_0_ce0(grp_update_weights_37_38_1_fu_1741_biases1_0_ce0),.biases1_0_we0(grp_update_weights_37_38_1_fu_1741_biases1_0_we0),.biases1_0_d0(grp_update_weights_37_38_1_fu_1741_biases1_0_d0),.biases1_0_q0(biases1_0_q0),.biases1_0_address1(grp_update_weights_37_38_1_fu_1741_biases1_0_address1),.biases1_0_ce1(grp_update_weights_37_38_1_fu_1741_biases1_0_ce1),.biases1_0_we1(grp_update_weights_37_38_1_fu_1741_biases1_0_we1),.biases1_0_d1(grp_update_weights_37_38_1_fu_1741_biases1_0_d1),.biases1_1_address0(grp_update_weights_37_38_1_fu_1741_biases1_1_address0),.biases1_1_ce0(grp_update_weights_37_38_1_fu_1741_biases1_1_ce0),.biases1_1_we0(grp_update_weights_37_38_1_fu_1741_biases1_1_we0),.biases1_1_d0(grp_update_weights_37_38_1_fu_1741_biases1_1_d0),.biases1_1_q0(biases1_1_q0),.biases1_1_address1(grp_update_weights_37_38_1_fu_1741_biases1_1_address1),.biases1_1_ce1(grp_update_weights_37_38_1_fu_1741_biases1_1_ce1),.biases1_1_we1(grp_update_weights_37_38_1_fu_1741_biases1_1_we1),.biases1_1_d1(grp_update_weights_37_38_1_fu_1741_biases1_1_d1),.biases2_0_address0(grp_update_weights_37_38_1_fu_1741_biases2_0_address0),.biases2_0_ce0(grp_update_weights_37_38_1_fu_1741_biases2_0_ce0),.biases2_0_we0(grp_update_weights_37_38_1_fu_1741_biases2_0_we0),.biases2_0_d0(grp_update_weights_37_38_1_fu_1741_biases2_0_d0),.biases2_0_q0(biases2_0_q0),.biases2_0_address1(grp_update_weights_37_38_1_fu_1741_biases2_0_address1),.biases2_0_ce1(grp_update_weights_37_38_1_fu_1741_biases2_0_ce1),.biases2_0_we1(grp_update_weights_37_38_1_fu_1741_biases2_0_we1),.biases2_0_d1(grp_update_weights_37_38_1_fu_1741_biases2_0_d1),.biases2_1_address0(grp_update_weights_37_38_1_fu_1741_biases2_1_address0),.biases2_1_ce0(grp_update_weights_37_38_1_fu_1741_biases2_1_ce0),.biases2_1_we0(grp_update_weights_37_38_1_fu_1741_biases2_1_we0),.biases2_1_d0(grp_update_weights_37_38_1_fu_1741_biases2_1_d0),.biases2_1_q0(biases2_1_q0),.biases2_1_address1(grp_update_weights_37_38_1_fu_1741_biases2_1_address1),.biases2_1_ce1(grp_update_weights_37_38_1_fu_1741_biases2_1_ce1),.biases2_1_we1(grp_update_weights_37_38_1_fu_1741_biases2_1_we1),.biases2_1_d1(grp_update_weights_37_38_1_fu_1741_biases2_1_d1),.biases3_address0(grp_update_weights_37_38_1_fu_1741_biases3_address0),.biases3_ce0(grp_update_weights_37_38_1_fu_1741_biases3_ce0),.biases3_we0(grp_update_weights_37_38_1_fu_1741_biases3_we0),.biases3_d0(grp_update_weights_37_38_1_fu_1741_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_37_38_1_fu_1741_biases3_address1),.biases3_ce1(grp_update_weights_37_38_1_fu_1741_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_0_address0(grp_update_weights_37_38_1_fu_1741_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_37_38_1_fu_1741_d_biases1_0_ce0),.d_biases1_0_q0(oracle_activations1_q0),.d_biases1_1_address0(grp_update_weights_37_38_1_fu_1741_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_37_38_1_fu_1741_d_biases1_1_ce0),.d_biases1_1_q0(oracle_activations1_1_q0),.d_biases2_0_address0(grp_update_weights_37_38_1_fu_1741_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_37_38_1_fu_1741_d_biases2_0_ce0),.d_biases2_0_q0(oracle_activations2_q0),.d_biases2_1_address0(grp_update_weights_37_38_1_fu_1741_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_37_38_1_fu_1741_d_biases2_1_ce0),.d_biases2_1_q0(oracle_activations2_1_q0),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out),.grp_fu_3167_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din0),.grp_fu_3167_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din1),.grp_fu_3167_p_opcode(grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_opcode),.grp_fu_3167_p_dout0(grp_fu_3167_p2),.grp_fu_3167_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_ce),.grp_fu_3179_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din0),.grp_fu_3179_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din1),.grp_fu_3179_p_dout0(grp_fu_3179_p2),.grp_fu_3179_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_ce),.grp_fu_3195_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din0),.grp_fu_3195_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din1),.grp_fu_3195_p_dout0(grp_fu_3195_p2),.grp_fu_3195_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_ce),.grp_fu_3199_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din0),.grp_fu_3199_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din1),.grp_fu_3199_p_dout0(grp_fu_3199_p2),.grp_fu_3199_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_ce),.grp_fu_3191_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din0),.grp_fu_3191_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din1),.grp_fu_3191_p_dout0(grp_fu_3191_p2),.grp_fu_3191_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_ce),.grp_fu_3155_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din0),.grp_fu_3155_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din1),.grp_fu_3155_p_opcode(grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_opcode),.grp_fu_3155_p_dout0(grp_fu_3155_p2),.grp_fu_3155_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_ce),.grp_fu_3159_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din0),.grp_fu_3159_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din1),.grp_fu_3159_p_opcode(grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_opcode),.grp_fu_3159_p_dout0(grp_fu_3159_p2),.grp_fu_3159_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_ce),.grp_fu_3163_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din0),.grp_fu_3163_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din1),.grp_fu_3163_p_opcode(grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_opcode),.grp_fu_3163_p_dout0(grp_fu_3163_p2),.grp_fu_3163_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_ce),.grp_fu_1780_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_1780_p2),.grp_fu_1780_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_ce),.grp_fu_3171_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din0),.grp_fu_3171_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din1),.grp_fu_3171_p_dout0(grp_fu_3171_p2),.grp_fu_3171_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_ce),.grp_fu_3175_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din0),.grp_fu_3175_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din1),.grp_fu_3175_p_dout0(grp_fu_3175_p2),.grp_fu_3175_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_ce),.grp_fu_3183_p_din0(grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din0),.grp_fu_3183_p_din1(grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din1),.grp_fu_3183_p_dout0(grp_fu_3183_p2),.grp_fu_3183_p_ce(grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_ce));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U432(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1780_p0),.din1(grp_fu_1780_p1),.ce(grp_fu_1780_ce),.dout(grp_fu_1780_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U433(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3155_p0),.din1(grp_fu_3155_p1),.opcode(grp_fu_3155_opcode),.ce(grp_fu_3155_ce),.dout(grp_fu_3155_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U434(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3159_p0),.din1(grp_fu_3159_p1),.opcode(grp_fu_3159_opcode),.ce(grp_fu_3159_ce),.dout(grp_fu_3159_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U435(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3163_p0),.din1(grp_fu_3163_p1),.opcode(grp_fu_3163_opcode),.ce(grp_fu_3163_ce),.dout(grp_fu_3163_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U436(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3167_p0),.din1(grp_fu_3167_p1),.opcode(grp_fu_3167_opcode),.ce(grp_fu_3167_ce),.dout(grp_fu_3167_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U437(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3171_p0),.din1(grp_fu_3171_p1),.ce(grp_fu_3171_ce),.dout(grp_fu_3171_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U438(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3175_p0),.din1(grp_fu_3175_p1),.ce(grp_fu_3175_ce),.dout(grp_fu_3175_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U439(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3179_p0),.din1(grp_fu_3179_p1),.ce(grp_fu_3179_ce),.dout(grp_fu_3179_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U440(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3183_p0),.din1(grp_fu_3183_p1),.ce(grp_fu_3183_ce),.dout(grp_fu_3183_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U441(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3187_p0),.din1(grp_fu_3187_p1),.ce(grp_fu_3187_ce),.dout(grp_fu_3187_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U442(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3191_p0),.din1(grp_fu_3191_p1),.ce(grp_fu_3191_ce),.dout(grp_fu_3191_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U443(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3195_p0),.din1(grp_fu_3195_p1),.ce(grp_fu_3195_ce),.dout(grp_fu_3195_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U444(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3199_p0),.din1(grp_fu_3199_p1),.ce(grp_fu_3199_ce),.dout(grp_fu_3199_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd1))) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state26)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state30)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln44_fu_1869_p2 == 1'd1))) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd0))) begin
            grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations1_loop_fu_1716_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations2_loop_fu_1691_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln44_fu_1869_p2 == 1'd0))) begin
            grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_37_38_1_fu_1741_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state55)) begin
            grp_update_weights_37_38_1_fu_1741_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_37_38_1_fu_1741_ap_ready == 1'b1)) begin
            grp_update_weights_37_38_1_fu_1741_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_1_fu_322 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state33) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state31) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state29) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_8_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_2_fu_326 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state33) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state31) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state29) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_10_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_fu_318 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state33) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state31) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state29) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations3_9_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_done == 1'b1))) begin
        i_14_reg_1525 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        i_14_reg_1525 <= add_ln102_reg_3106;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        i_7_reg_1514 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        i_7_reg_1514 <= add_ln44_reg_3004;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_190 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd1))) begin
        i_fu_190 <= add_ln220_reg_2991;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_186 <= 12'd0;
    end else if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd1))) begin
        phi_mul_fu_186 <= add_ln220_1_reg_2983;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        add_ln102_reg_3106 <= add_ln102_fu_2032_p2;
        oracle_activations1_1_addr_reg_3126 <= zext_ln103_fu_2057_p1;
        oracle_activations1_addr_reg_3121 <= zext_ln103_fu_2057_p1;
        trunc_ln102_1_reg_3116 <= trunc_ln102_1_fu_2043_p1;
        trunc_ln102_reg_3111 <= trunc_ln102_fu_2038_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln220_1_reg_2983 <= add_ln220_1_fu_1833_p2;
        add_ln220_reg_2991 <= add_ln220_fu_1845_p2;
        phi_mul_load_reg_2975 <= phi_mul_fu_186;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        add_ln44_reg_3004 <= add_ln44_fu_1875_p2;
        lshr_ln43_1_reg_3018 <= {{i_7_reg_1514[5:1]}};
        sub_ln66_reg_3023 <= sub_ln66_fu_1911_p2;
        trunc_ln44_1_reg_3014 <= trunc_ln44_1_fu_1886_p1;
        trunc_ln44_reg_3009 <= trunc_ln44_fu_1881_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd1))) begin
        empty_44_fu_222 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out1;
        empty_45_fu_226 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out;
        empty_fu_218 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_p_out2;
        mux_case_0152163_fu_194 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_0152161_out;
        mux_case_0155175_fu_206 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_0155173_out;
        mux_case_1153167_fu_198 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_1153165_out;
        mux_case_1156179_fu_210 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_1156177_out;
        mux_case_2154171_fu_202 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_mux_case_2154169_out;
        mux_case_2157183_fu_214 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_mux_case_2157181_out;
        output_difference_0_promoted_fu_234 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_1_out;
        output_difference_1_promoted_fu_230 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_2_out;
        output_difference_2_promoted_fu_238 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_output_difference_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state52)) begin
        mul16_i1_reg_3149 <= grp_fu_1780_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_1796 <= activations3_1_fu_322;
        reg_1803 <= activations3_fu_318;
        reg_1810 <= activations3_2_fu_326;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        select_ln107_reg_3141 <= select_ln107_fu_2121_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        zext_ln66_reg_2996[7 : 0] <= zext_ln66_fu_1866_p1[7 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address0;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_address1;
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
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_ce1;
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
        activations1_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_d0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_d0;
    end else begin
        activations1_1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_we0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_1_we0;
    end else begin
        activations1_1_we0 = activations1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we0_local = 1'b1;
    end else begin
        activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we1_local = 1'b1;
    end else begin
        activations1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address0;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_address1;
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
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce0;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        activations1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_ce1;
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
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_d1;
    end else begin
        activations1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_activations_0_we1;
    end else begin
        activations1_we1 = activations1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address0;
    end else begin
        activations2_1_address0 = activations2_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_1_address0_local = zext_ln45_fu_1921_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_address1;
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
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce0;
    end else begin
        activations2_1_ce0 = activations2_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_ce1;
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
    if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_d0;
    end else begin
        activations2_1_d0 = activations2_1_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_1_d0_local = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_1_d0_local = 64'd0;
    end else begin
        activations2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_1_we0;
    end else begin
        activations2_1_we0 = activations2_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((trunc_ln44_1_reg_3014 == 1'd1) & (1'b1 == ap_CS_fsm_state24)) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_1_we1_local = 1'b1;
    end else begin
        activations2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address0;
    end else begin
        activations2_address0 = activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_address0_local = zext_ln45_fu_1921_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
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
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_address1;
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
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_ce1;
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
    if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_d0;
    end else begin
        activations2_d0 = activations2_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        activations2_d0_local = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_add114_i_out;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_d0_local = 64'd0;
    end else begin
        activations2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_activations2_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((trunc_ln44_1_reg_3014 == 1'd0) & (1'b1 == ap_CS_fsm_state24)) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1839_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_done == 1'b0)) begin
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
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_done == 1'b0)) begin
        ap_ST_fsm_state27_blk = 1'b1;
    end else begin
        ap_ST_fsm_state27_blk = 1'b0;
    end
end
assign ap_ST_fsm_state28_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_done == 1'b0)) begin
        ap_ST_fsm_state29_blk = 1'b1;
    end else begin
        ap_ST_fsm_state29_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_done == 1'b0)) begin
        ap_ST_fsm_state31_blk = 1'b1;
    end else begin
        ap_ST_fsm_state31_blk = 1'b0;
    end
end
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state34_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state41_on_subcall_done)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end
assign ap_ST_fsm_state42_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_activations1_loop_fu_1716_ap_done == 1'b0)) begin
        ap_ST_fsm_state45_blk = 1'b1;
    end else begin
        ap_ST_fsm_state45_blk = 1'b0;
    end
end
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_done == 1'b0)) begin
        ap_ST_fsm_state54_blk = 1'b1;
    end else begin
        ap_ST_fsm_state54_blk = 1'b0;
    end
end
assign ap_ST_fsm_state55_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_37_38_1_fu_1741_ap_done == 1'b0)) begin
        ap_ST_fsm_state56_blk = 1'b1;
    end else begin
        ap_ST_fsm_state56_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln220_fu_1839_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln220_fu_1839_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_0_address0 = grp_update_weights_37_38_1_fu_1741_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_address0;
    end else begin
        biases1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_0_ce0 = grp_update_weights_37_38_1_fu_1741_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_0_ce0;
    end else begin
        biases1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_0_ce1 = grp_update_weights_37_38_1_fu_1741_biases1_0_ce1;
    end else begin
        biases1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_0_we0 = grp_update_weights_37_38_1_fu_1741_biases1_0_we0;
    end else begin
        biases1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_0_we1 = grp_update_weights_37_38_1_fu_1741_biases1_0_we1;
    end else begin
        biases1_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_1_address0 = grp_update_weights_37_38_1_fu_1741_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_address0;
    end else begin
        biases1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_1_ce0 = grp_update_weights_37_38_1_fu_1741_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_biases1_1_ce0;
    end else begin
        biases1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_1_ce1 = grp_update_weights_37_38_1_fu_1741_biases1_1_ce1;
    end else begin
        biases1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_1_we0 = grp_update_weights_37_38_1_fu_1741_biases1_1_we0;
    end else begin
        biases1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases1_1_we1 = grp_update_weights_37_38_1_fu_1741_biases1_1_we1;
    end else begin
        biases1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_0_address0 = grp_update_weights_37_38_1_fu_1741_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        biases2_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_address0;
    end else begin
        biases2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_0_ce0 = grp_update_weights_37_38_1_fu_1741_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        biases2_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_0_ce0;
    end else begin
        biases2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_0_ce1 = grp_update_weights_37_38_1_fu_1741_biases2_0_ce1;
    end else begin
        biases2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_0_we0 = grp_update_weights_37_38_1_fu_1741_biases2_0_we0;
    end else begin
        biases2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_0_we1 = grp_update_weights_37_38_1_fu_1741_biases2_0_we1;
    end else begin
        biases2_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_1_address0 = grp_update_weights_37_38_1_fu_1741_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        biases2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_address0;
    end else begin
        biases2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_1_ce0 = grp_update_weights_37_38_1_fu_1741_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        biases2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_biases2_1_ce0;
    end else begin
        biases2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_1_ce1 = grp_update_weights_37_38_1_fu_1741_biases2_1_ce1;
    end else begin
        biases2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_1_we0 = grp_update_weights_37_38_1_fu_1741_biases2_1_we0;
    end else begin
        biases2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases2_1_we1 = grp_update_weights_37_38_1_fu_1741_biases2_1_we1;
    end else begin
        biases2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases3_address0 = grp_update_weights_37_38_1_fu_1741_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        biases3_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases3_ce0 = grp_update_weights_37_38_1_fu_1741_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        biases3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases3_ce1 = grp_update_weights_37_38_1_fu_1741_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        biases3_we0 = grp_update_weights_37_38_1_fu_1741_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_address0;
    end else begin
        dactivations1_1_address0 = zext_ln103_fu_2057_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_ce0;
    end else begin
        dactivations1_1_ce0 = dactivations1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        dactivations1_1_ce0_local = 1'b1;
    end else begin
        dactivations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_1_we0;
    end else begin
        dactivations1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_address0;
    end else begin
        dactivations1_address0 = zext_ln103_fu_2057_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = dactivations1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        dactivations1_ce0_local = 1'b1;
    end else begin
        dactivations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_1_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_address0;
    end else begin
        dactivations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_1_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_ce0;
    end else begin
        dactivations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_1_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_1_ce1;
    end else begin
        dactivations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_1_we0;
    end else begin
        dactivations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        dactivations2_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1691_dactivations2_ce1;
    end else begin
        dactivations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights1_1_address0 = grp_update_weights_37_38_1_fu_1741_d_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_address0;
    end else begin
        delta_weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights1_1_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce0;
    end else begin
        delta_weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_ce1;
    end else begin
        delta_weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we0;
    end else begin
        delta_weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_1_we1;
    end else begin
        delta_weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights1_address0 = grp_update_weights_37_38_1_fu_1741_d_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights1_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_delta_weights1_we1;
    end else begin
        delta_weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights2_1_address0 = grp_update_weights_37_38_1_fu_1741_d_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_address0;
    end else begin
        delta_weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights2_1_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce0;
    end else begin
        delta_weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_ce1;
    end else begin
        delta_weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we0;
    end else begin
        delta_weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_1_we1;
    end else begin
        delta_weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights2_address0 = grp_update_weights_37_38_1_fu_1741_d_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights2_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights2_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_delta_weights2_we1;
    end else begin
        delta_weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_1_address0 = grp_update_weights_37_38_1_fu_1741_d_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_address0;
    end else begin
        delta_weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_1_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce0;
    end else begin
        delta_weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_ce1;
    end else begin
        delta_weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we0;
    end else begin
        delta_weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_1_we1;
    end else begin
        delta_weights3_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_address0 = grp_update_weights_37_38_1_fu_1741_d_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_ce0 = grp_update_weights_37_38_1_fu_1741_d_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_ce1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_we1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_delta_weights3_we1;
    end else begin
        delta_weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_1780_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1780_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1780_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_1780_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1780_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_1780_p0 = grp_backprop_Pipeline_activations1_loop_fu_1716_add113_i_out;
    end else begin
        grp_fu_1780_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_1780_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1780_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1780_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_1780_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_1780_p1 = select_ln107_reg_3141;
    end else begin
        grp_fu_1780_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3155_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3155_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3155_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_ce;
    end else begin
        grp_fu_3155_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3155_opcode = grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3155_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3155_opcode = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_opcode;
    end else begin
        grp_fu_3155_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3155_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3155_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3155_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din0;
    end else begin
        grp_fu_3155_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3155_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_activations1_loop_fu_1716_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3155_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3155_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3155_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3155_p_din1;
    end else begin
        grp_fu_3155_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3159_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3159_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3159_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3159_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3159_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3159_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_ce;
    end else begin
        grp_fu_3159_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3159_opcode = grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3159_opcode = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3159_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3159_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3159_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3159_opcode = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_opcode;
    end else begin
        grp_fu_3159_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3159_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3159_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3159_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3159_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3159_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3159_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din0;
    end else begin
        grp_fu_3159_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3159_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3159_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3159_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3159_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3159_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3159_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3159_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3159_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3159_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3159_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3159_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3159_p_din1;
    end else begin
        grp_fu_3159_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3163_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3163_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3163_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_ce;
    end else begin
        grp_fu_3163_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3163_opcode = grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3163_opcode = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3163_opcode = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_opcode;
    end else begin
        grp_fu_3163_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3163_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3163_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3163_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din0;
    end else begin
        grp_fu_3163_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3163_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3163_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3163_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3163_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3163_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3163_p_din1;
    end else begin
        grp_fu_3163_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3167_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3167_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3167_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_ce;
    end else begin
        grp_fu_3167_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3167_opcode = grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3167_opcode = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3167_opcode = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_opcode;
    end else begin
        grp_fu_3167_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3167_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3167_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3167_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din0;
    end else begin
        grp_fu_3167_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3167_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3167_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3167_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3167_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3167_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3167_p_din1;
    end else begin
        grp_fu_3167_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3171_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3171_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3171_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3171_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3171_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_ce;
    end else begin
        grp_fu_3171_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3171_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3171_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3171_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3171_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3171_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din0;
    end else begin
        grp_fu_3171_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3171_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3171_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3171_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3171_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3171_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3171_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3171_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3171_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3171_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3171_p_din1;
    end else begin
        grp_fu_3171_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3175_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3175_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3175_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3175_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3175_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_ce;
    end else begin
        grp_fu_3175_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3175_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3175_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3175_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3175_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3175_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din0;
    end else begin
        grp_fu_3175_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3175_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3175_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3175_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3175_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3175_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3175_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3175_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3175_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3175_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3175_p_din1;
    end else begin
        grp_fu_3175_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3179_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3179_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3179_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3179_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3179_ce = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_ce;
    end else begin
        grp_fu_3179_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3179_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3179_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3179_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3179_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3179_p0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din0;
    end else begin
        grp_fu_3179_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3179_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3179_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3179_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_grp_fu_3179_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3179_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_grp_fu_3179_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3179_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3179_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3179_p1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_grp_fu_3179_p_din1;
    end else begin
        grp_fu_3179_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3183_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3183_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3183_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3183_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3183_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_ce;
    end else begin
        grp_fu_3183_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3183_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3183_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3183_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3183_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3183_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din0;
    end else begin
        grp_fu_3183_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3183_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3183_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3183_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3183_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3183_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3183_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3183_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3183_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3183_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3183_p_din1;
    end else begin
        grp_fu_3183_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3187_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3187_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3187_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3187_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3187_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_ce;
    end else begin
        grp_fu_3187_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3187_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3187_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3187_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3187_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3187_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din0;
    end else begin
        grp_fu_3187_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3187_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_grp_fu_3187_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3187_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_grp_fu_3187_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3187_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_grp_fu_3187_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3187_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_grp_fu_3187_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3187_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_grp_fu_3187_p_din1;
    end else begin
        grp_fu_3187_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3191_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3191_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_ce;
    end else begin
        grp_fu_3191_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3191_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3191_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din0;
    end else begin
        grp_fu_3191_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3191_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3191_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3191_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_grp_fu_3191_p_din1;
    end else begin
        grp_fu_3191_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3195_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3195_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_ce;
    end else begin
        grp_fu_3195_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3195_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3195_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din0;
    end else begin
        grp_fu_3195_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3195_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3195_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3195_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3195_p_din1;
    end else begin
        grp_fu_3195_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3199_ce = grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3199_ce = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_ce;
    end else begin
        grp_fu_3199_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3199_p0 = grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3199_p0 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din0;
    end else begin
        grp_fu_3199_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3199_p1 = grp_update_weights_37_38_1_fu_1741_grp_fu_3199_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3199_p1 = grp_backprop_Pipeline_activations2_loop_fu_1691_grp_fu_3199_p_din1;
    end else begin
        grp_fu_3199_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations1_1_address0 = grp_update_weights_37_38_1_fu_1741_d_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_address0;
    end else begin
        oracle_activations1_1_address0 = oracle_activations1_1_addr_reg_3126;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations1_1_ce0 = grp_update_weights_37_38_1_fu_1741_d_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce0;
    end else begin
        oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_1_ce1;
    end else begin
        oracle_activations1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_3116 == 1'd1) & (1'b1 == ap_CS_fsm_state53))) begin
        oracle_activations1_1_we0_local = 1'b1;
    end else begin
        oracle_activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations1_address0 = grp_update_weights_37_38_1_fu_1741_d_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_address0;
    end else begin
        oracle_activations1_address0 = oracle_activations1_addr_reg_3121;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations1_ce0 = grp_update_weights_37_38_1_fu_1741_d_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce0;
    end else begin
        oracle_activations1_ce0 = oracle_activations1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        oracle_activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_oracle_activations1_ce1;
    end else begin
        oracle_activations1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_3116 == 1'd0) & (1'b1 == ap_CS_fsm_state53))) begin
        oracle_activations1_we0_local = 1'b1;
    end else begin
        oracle_activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations2_1_address0 = grp_update_weights_37_38_1_fu_1741_d_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_address0;
    end else begin
        oracle_activations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_address1;
    end else begin
        oracle_activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations2_1_ce0 = grp_update_weights_37_38_1_fu_1741_d_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_ce0;
    end else begin
        oracle_activations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_1_ce1;
    end else begin
        oracle_activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_1_we0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_1_we0;
    end else begin
        oracle_activations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations2_address0 = grp_update_weights_37_38_1_fu_1741_d_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_address0;
    end else begin
        oracle_activations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_address1;
    end else begin
        oracle_activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        oracle_activations2_ce0 = grp_update_weights_37_38_1_fu_1741_d_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_ce0;
    end else begin
        oracle_activations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1716_oracle_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_oracle_activations2_ce1;
    end else begin
        oracle_activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations2_we0 = grp_backprop_Pipeline_activations2_loop_fu_1691_oracle_activations2_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        training_data_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_address0;
    end else begin
        training_data_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        training_data_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_0_ce0;
    end else begin
        training_data_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        training_data_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_address0;
    end else begin
        training_data_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        training_data_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_training_data_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_training_data_1_ce0;
    end else begin
        training_data_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_address0 = grp_update_weights_37_38_1_fu_1741_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address0;
    end else begin
        weights1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_address1 = grp_update_weights_37_38_1_fu_1741_weights1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_address1;
    end else begin
        weights1_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_ce0 = grp_update_weights_37_38_1_fu_1741_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce0;
    end else begin
        weights1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_ce1 = grp_update_weights_37_38_1_fu_1741_weights1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_0_ce1;
    end else begin
        weights1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_we0 = grp_update_weights_37_38_1_fu_1741_weights1_0_we0;
    end else begin
        weights1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_0_we1 = grp_update_weights_37_38_1_fu_1741_weights1_0_we1;
    end else begin
        weights1_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_address0 = grp_update_weights_37_38_1_fu_1741_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address0;
    end else begin
        weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_address1 = grp_update_weights_37_38_1_fu_1741_weights1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_address1;
    end else begin
        weights1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_ce0 = grp_update_weights_37_38_1_fu_1741_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce0;
    end else begin
        weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_ce1 = grp_update_weights_37_38_1_fu_1741_weights1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_weights1_1_ce1;
    end else begin
        weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_we0 = grp_update_weights_37_38_1_fu_1741_weights1_1_we0;
    end else begin
        weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights1_1_we1 = grp_update_weights_37_38_1_fu_1741_weights1_1_we1;
    end else begin
        weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_address0 = grp_update_weights_37_38_1_fu_1741_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_0_address0 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_0_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address0;
    end else begin
        weights2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_address1 = grp_update_weights_37_38_1_fu_1741_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_0_address1 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_0_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_address1;
    end else begin
        weights2_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_ce0 = grp_update_weights_37_38_1_fu_1741_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_0_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_0_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce0;
    end else begin
        weights2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_ce1 = grp_update_weights_37_38_1_fu_1741_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_0_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_0_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_0_ce1;
    end else begin
        weights2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_we0 = grp_update_weights_37_38_1_fu_1741_weights2_0_we0;
    end else begin
        weights2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_0_we1 = grp_update_weights_37_38_1_fu_1741_weights2_0_we1;
    end else begin
        weights2_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_address0 = grp_update_weights_37_38_1_fu_1741_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_1_address0 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address0;
    end else begin
        weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_address1 = grp_update_weights_37_38_1_fu_1741_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_1_address1 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_address1;
    end else begin
        weights2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_ce0 = grp_update_weights_37_38_1_fu_1741_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_1_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce0;
    end else begin
        weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_ce1 = grp_update_weights_37_38_1_fu_1741_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights2_1_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1716_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights2_1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_weights2_1_ce1;
    end else begin
        weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_we0 = grp_update_weights_37_38_1_fu_1741_weights2_1_we0;
    end else begin
        weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights2_1_we1 = grp_update_weights_37_38_1_fu_1741_weights2_1_we1;
    end else begin
        weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_address0 = grp_update_weights_37_38_1_fu_1741_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address0;
    end else begin
        weights3_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_address1 = grp_update_weights_37_38_1_fu_1741_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address1 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_address1;
    end else begin
        weights3_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_ce0 = grp_update_weights_37_38_1_fu_1741_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce0;
    end else begin
        weights3_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_ce1 = grp_update_weights_37_38_1_fu_1741_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_0_ce1;
    end else begin
        weights3_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_we0 = grp_update_weights_37_38_1_fu_1741_weights3_0_we0;
    end else begin
        weights3_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_0_we1 = grp_update_weights_37_38_1_fu_1741_weights3_0_we1;
    end else begin
        weights3_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_address0 = grp_update_weights_37_38_1_fu_1741_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address0 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address0;
    end else begin
        weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_address1 = grp_update_weights_37_38_1_fu_1741_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address1 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_address1;
    end else begin
        weights3_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_ce0 = grp_update_weights_37_38_1_fu_1741_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_ce0 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce0;
    end else begin
        weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_ce1 = grp_update_weights_37_38_1_fu_1741_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_ce1 = grp_backprop_Pipeline_activations2_loop_fu_1691_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_weights3_1_ce1;
    end else begin
        weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_we0 = grp_update_weights_37_38_1_fu_1741_weights3_1_we0;
    end else begin
        weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_1_we1 = grp_update_weights_37_38_1_fu_1741_weights3_1_we1;
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
            if (((icmp_ln220_fu_1839_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln44_fu_1869_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state23 : begin
            if (((grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state25 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            if (((1'b1 == ap_CS_fsm_state27) & (grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            if (((1'b1 == ap_CS_fsm_state29) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            if (((1'b1 == ap_CS_fsm_state31) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((1'b1 == ap_CS_fsm_state33) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            if (((1'b1 == ap_CS_fsm_state35) & (grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((1'b1 == ap_CS_fsm_state37) & (grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            if (((1'b0 == ap_block_state41_on_subcall_done) & (1'b1 == ap_CS_fsm_state41))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            if (((1'b1 == ap_CS_fsm_state44) & (icmp_ln102_fu_2026_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state45 : begin
            if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_activations1_loop_fu_1716_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state54 : begin
            if (((1'b1 == ap_CS_fsm_state54) & (grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state54;
            end
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            if (((1'b1 == ap_CS_fsm_state56) & (grp_update_weights_37_38_1_fu_1741_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state56;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_2032_p2 = (i_14_reg_1525 + 7'd1);
assign add_ln220_1_fu_1833_p2 = (phi_mul_fu_186 + 12'd13);
assign add_ln220_fu_1845_p2 = (i_fu_190 + 8'd1);
assign add_ln44_fu_1875_p2 = (i_7_reg_1514 + 7'd1);
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];
assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state41_on_subcall_done = ((grp_backprop_Pipeline_activations2_loop_fu_1691_ap_done == 1'b0) | (grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_done == 1'b0));
end
assign biases1_0_address1 = grp_update_weights_37_38_1_fu_1741_biases1_0_address1;
assign biases1_0_d0 = grp_update_weights_37_38_1_fu_1741_biases1_0_d0;
assign biases1_0_d1 = grp_update_weights_37_38_1_fu_1741_biases1_0_d1;
assign biases1_1_address1 = grp_update_weights_37_38_1_fu_1741_biases1_1_address1;
assign biases1_1_d0 = grp_update_weights_37_38_1_fu_1741_biases1_1_d0;
assign biases1_1_d1 = grp_update_weights_37_38_1_fu_1741_biases1_1_d1;
assign biases2_0_address1 = grp_update_weights_37_38_1_fu_1741_biases2_0_address1;
assign biases2_0_d0 = grp_update_weights_37_38_1_fu_1741_biases2_0_d0;
assign biases2_0_d1 = grp_update_weights_37_38_1_fu_1741_biases2_0_d1;
assign biases2_1_address1 = grp_update_weights_37_38_1_fu_1741_biases2_1_address1;
assign biases2_1_d0 = grp_update_weights_37_38_1_fu_1741_biases2_1_d0;
assign biases2_1_d1 = grp_update_weights_37_38_1_fu_1741_biases2_1_d1;
assign biases3_address1 = grp_update_weights_37_38_1_fu_1741_biases3_address1;
assign biases3_d0 = grp_update_weights_37_38_1_fu_1741_biases3_d0;
assign grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1728_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1639_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1585_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1618_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1555_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1609_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1575_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1593_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1631_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1706_ap_start_reg;
assign grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start = grp_backprop_Pipeline_activations1_loop_fu_1716_ap_start_reg;
assign grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start = grp_backprop_Pipeline_activations2_loop_fu_1691_ap_start_reg;
assign grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start = grp_backprop_Pipeline_delta_matrix_weights3_loop_fu_1680_ap_start_reg;
assign grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start = grp_backprop_Pipeline_mvp_product_loop2_fu_1563_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start = grp_matrix_vector_product_with_bias_input_layer_35_36_1_fu_1536_ap_start_reg;
assign grp_update_weights_37_38_1_fu_1741_ap_start = grp_update_weights_37_38_1_fu_1741_ap_start_reg;
assign icmp_ln102_fu_2026_p2 = ((i_14_reg_1525 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln220_fu_1839_p2 = ((i_fu_190 == 8'd163) ? 1'b1 : 1'b0);
assign icmp_ln44_fu_1869_p2 = ((i_7_reg_1514 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln101_1_fu_2047_p4 = {{i_14_reg_1525[5:1]}};
assign p_shl_fu_1903_p3 = {{trunc_ln66_fu_1900_p1}, {2'd0}};
assign select_ln107_fu_2121_p3 = ((trunc_ln102_1_reg_3116[0:0] == 1'b1) ? dactivations1_1_q0 : dactivations1_q0);
assign sub_ln66_fu_1911_p2 = (p_shl_fu_1903_p3 - zext_ln66_reg_2996);
assign training_targets_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_address0;
assign training_targets_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_0_ce0;
assign training_targets_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_address0;
assign training_targets_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1653_training_targets_1_ce0;
assign trunc_ln102_1_fu_2043_p1 = i_14_reg_1525[0:0];
assign trunc_ln102_fu_2038_p1 = i_14_reg_1525[5:0];
assign trunc_ln44_1_fu_1886_p1 = i_7_reg_1514[0:0];
assign trunc_ln44_fu_1881_p1 = i_7_reg_1514[5:0];
assign trunc_ln66_fu_1900_p1 = i_fu_190[6:0];
assign weights1_0_d0 = grp_update_weights_37_38_1_fu_1741_weights1_0_d0;
assign weights1_0_d1 = grp_update_weights_37_38_1_fu_1741_weights1_0_d1;
assign weights1_1_d0 = grp_update_weights_37_38_1_fu_1741_weights1_1_d0;
assign weights1_1_d1 = grp_update_weights_37_38_1_fu_1741_weights1_1_d1;
assign weights2_0_d0 = grp_update_weights_37_38_1_fu_1741_weights2_0_d0;
assign weights2_0_d1 = grp_update_weights_37_38_1_fu_1741_weights2_0_d1;
assign weights2_1_d0 = grp_update_weights_37_38_1_fu_1741_weights2_1_d0;
assign weights2_1_d1 = grp_update_weights_37_38_1_fu_1741_weights2_1_d1;
assign weights3_0_d0 = grp_update_weights_37_38_1_fu_1741_weights3_0_d0;
assign weights3_0_d1 = grp_update_weights_37_38_1_fu_1741_weights3_0_d1;
assign weights3_1_d0 = grp_update_weights_37_38_1_fu_1741_weights3_1_d0;
assign weights3_1_d1 = grp_update_weights_37_38_1_fu_1741_weights3_1_d1;
assign zext_ln103_fu_2057_p1 = lshr_ln101_1_fu_2047_p4;
assign zext_ln45_fu_1921_p1 = lshr_ln43_1_reg_3018;
assign zext_ln66_fu_1866_p1 = i_fu_190;
always @ (posedge ap_clk) begin
    zext_ln66_reg_2996[8] <= 1'b0;
end
endmodule 