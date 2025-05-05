module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,biases1_0_address1,biases1_0_ce1,biases1_0_q1,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_1_address1,biases1_1_ce1,biases1_1_q1,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,biases2_0_address1,biases2_0_ce1,biases2_0_q1,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_1_address1,biases2_1_ce1,biases2_1_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0); 
parameter    ap_ST_fsm_state1 = 68'd1;
parameter    ap_ST_fsm_state2 = 68'd2;
parameter    ap_ST_fsm_state3 = 68'd4;
parameter    ap_ST_fsm_state4 = 68'd8;
parameter    ap_ST_fsm_state5 = 68'd16;
parameter    ap_ST_fsm_state6 = 68'd32;
parameter    ap_ST_fsm_state7 = 68'd64;
parameter    ap_ST_fsm_state8 = 68'd128;
parameter    ap_ST_fsm_state9 = 68'd256;
parameter    ap_ST_fsm_state10 = 68'd512;
parameter    ap_ST_fsm_state11 = 68'd1024;
parameter    ap_ST_fsm_state12 = 68'd2048;
parameter    ap_ST_fsm_state13 = 68'd4096;
parameter    ap_ST_fsm_state14 = 68'd8192;
parameter    ap_ST_fsm_state15 = 68'd16384;
parameter    ap_ST_fsm_state16 = 68'd32768;
parameter    ap_ST_fsm_state17 = 68'd65536;
parameter    ap_ST_fsm_state18 = 68'd131072;
parameter    ap_ST_fsm_state19 = 68'd262144;
parameter    ap_ST_fsm_state20 = 68'd524288;
parameter    ap_ST_fsm_state21 = 68'd1048576;
parameter    ap_ST_fsm_state22 = 68'd2097152;
parameter    ap_ST_fsm_state23 = 68'd4194304;
parameter    ap_ST_fsm_state24 = 68'd8388608;
parameter    ap_ST_fsm_state25 = 68'd16777216;
parameter    ap_ST_fsm_state26 = 68'd33554432;
parameter    ap_ST_fsm_state27 = 68'd67108864;
parameter    ap_ST_fsm_state28 = 68'd134217728;
parameter    ap_ST_fsm_state29 = 68'd268435456;
parameter    ap_ST_fsm_state30 = 68'd536870912;
parameter    ap_ST_fsm_state31 = 68'd1073741824;
parameter    ap_ST_fsm_state32 = 68'd2147483648;
parameter    ap_ST_fsm_state33 = 68'd4294967296;
parameter    ap_ST_fsm_state34 = 68'd8589934592;
parameter    ap_ST_fsm_state35 = 68'd17179869184;
parameter    ap_ST_fsm_state36 = 68'd34359738368;
parameter    ap_ST_fsm_state37 = 68'd68719476736;
parameter    ap_ST_fsm_state38 = 68'd137438953472;
parameter    ap_ST_fsm_state39 = 68'd274877906944;
parameter    ap_ST_fsm_state40 = 68'd549755813888;
parameter    ap_ST_fsm_state41 = 68'd1099511627776;
parameter    ap_ST_fsm_state42 = 68'd2199023255552;
parameter    ap_ST_fsm_state43 = 68'd4398046511104;
parameter    ap_ST_fsm_state44 = 68'd8796093022208;
parameter    ap_ST_fsm_state45 = 68'd17592186044416;
parameter    ap_ST_fsm_state46 = 68'd35184372088832;
parameter    ap_ST_fsm_state47 = 68'd70368744177664;
parameter    ap_ST_fsm_state48 = 68'd140737488355328;
parameter    ap_ST_fsm_state49 = 68'd281474976710656;
parameter    ap_ST_fsm_state50 = 68'd562949953421312;
parameter    ap_ST_fsm_state51 = 68'd1125899906842624;
parameter    ap_ST_fsm_state52 = 68'd2251799813685248;
parameter    ap_ST_fsm_state53 = 68'd4503599627370496;
parameter    ap_ST_fsm_state54 = 68'd9007199254740992;
parameter    ap_ST_fsm_state55 = 68'd18014398509481984;
parameter    ap_ST_fsm_state56 = 68'd36028797018963968;
parameter    ap_ST_fsm_state57 = 68'd72057594037927936;
parameter    ap_ST_fsm_state58 = 68'd144115188075855872;
parameter    ap_ST_fsm_state59 = 68'd288230376151711744;
parameter    ap_ST_fsm_state60 = 68'd576460752303423488;
parameter    ap_ST_fsm_state61 = 68'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 68'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 68'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 68'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 68'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 68'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 68'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 68'd147573952589676412928;
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
input  [63:0] weights1_0_q1;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
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
input  [63:0] biases1_0_q1;
output  [4:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [4:0] biases1_1_address1;
output   biases1_1_ce1;
input  [63:0] biases1_1_q1;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_0_address1;
output   biases2_0_ce1;
input  [63:0] biases2_0_q1;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [4:0] biases2_1_address1;
output   biases2_1_ce1;
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
reg[8:0] weights1_1_address0;
reg weights1_1_ce0;
reg weights1_1_we0;
reg[8:0] weights1_1_address1;
reg weights1_1_ce1;
reg[10:0] weights2_0_address0;
reg weights2_0_ce0;
reg weights2_0_we0;
reg[10:0] weights2_0_address1;
reg weights2_0_ce1;
reg[10:0] weights2_1_address0;
reg weights2_1_ce0;
reg weights2_1_we0;
reg[10:0] weights2_1_address1;
reg weights2_1_ce1;
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
reg[4:0] biases1_1_address0;
reg biases1_1_ce0;
reg biases1_1_we0;
reg biases1_1_ce1;
reg[4:0] biases2_0_address0;
reg biases2_0_ce0;
reg biases2_0_we0;
reg biases2_0_ce1;
reg[4:0] biases2_1_address0;
reg biases2_1_ce0;
reg biases2_1_we0;
reg biases2_1_ce1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg biases3_ce1;
reg[10:0] training_data_0_address0;
reg training_data_0_ce0;
reg[10:0] training_data_1_address0;
reg training_data_1_ce0;
(* fsm_encoding = "none" *) reg   [67:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_1786;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state46;
reg   [63:0] reg_1793;
reg   [63:0] reg_1800;
reg   [11:0] phi_mul_load_reg_2965;
wire    ap_CS_fsm_state2;
wire   [11:0] add_ln220_1_fu_1823_p2;
reg   [11:0] add_ln220_1_reg_2973;
wire   [7:0] add_ln220_fu_1835_p2;
reg   [7:0] add_ln220_reg_2981;
wire   [8:0] zext_ln66_fu_1856_p1;
reg   [8:0] zext_ln66_reg_2986;
wire    ap_CS_fsm_state33;
wire   [6:0] add_ln44_fu_1865_p2;
reg   [6:0] add_ln44_reg_2994;
wire    ap_CS_fsm_state34;
wire   [5:0] trunc_ln44_fu_1871_p1;
reg   [5:0] trunc_ln44_reg_2999;
wire   [0:0] trunc_ln44_1_fu_1876_p1;
reg   [0:0] trunc_ln44_1_reg_3004;
reg   [4:0] lshr_ln43_1_reg_3008;
wire   [8:0] sub_ln66_fu_1901_p2;
reg   [8:0] sub_ln66_reg_3013;
wire   [6:0] add_ln102_fu_2022_p2;
reg   [6:0] add_ln102_reg_3096;
wire    ap_CS_fsm_state56;
wire   [5:0] trunc_ln102_fu_2028_p1;
reg   [5:0] trunc_ln102_reg_3101;
wire   [0:0] trunc_ln102_1_fu_2033_p1;
reg   [0:0] trunc_ln102_1_reg_3106;
reg   [4:0] oracle_activations1_addr_reg_3111;
reg   [4:0] oracle_activations1_1_addr_reg_3116;
wire   [63:0] select_ln107_fu_2111_p3;
reg   [63:0] select_ln107_reg_3131;
wire    ap_CS_fsm_state57;
wire   [63:0] grp_fu_1770_p2;
reg   [63:0] mul16_i_reg_3139;
wire    ap_CS_fsm_state64;
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
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d1;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d1;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_ce;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_done;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_idle;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_ready;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce0;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce1;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce1;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce0;
wire   [10:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address0;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce0;
wire   [4:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce1;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_d0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_ready;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce0;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce1;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce0;
wire   [6:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o_ap_vld;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_ce;
wire    grp_get_delta_matrix_weights3_fu_1670_ap_start;
wire    grp_get_delta_matrix_weights3_fu_1670_ap_done;
wire    grp_get_delta_matrix_weights3_fu_1670_ap_idle;
wire    grp_get_delta_matrix_weights3_fu_1670_ap_ready;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address0;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce0;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d0;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address1;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce1;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d1;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address0;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce0;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d0;
wire   [6:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address1;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce1;
wire    grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d1;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address0;
wire    grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address1;
wire    grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce1;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address0;
wire    grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce0;
wire   [4:0] grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address1;
wire    grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce1;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_ce;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din0;
wire   [63:0] grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din1;
wire    grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_ce;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_ap_start;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_ap_done;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_ap_idle;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_ap_ready;
wire   [6:0] grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce0;
wire   [6:0] grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce1;
wire   [6:0] grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce0;
wire   [6:0] grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce1;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_ce0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_d0;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_ce0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_d0;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce0;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce1;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address0;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce0;
wire   [4:0] grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce1;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din1;
wire   [0:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_opcode;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_ce;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din1;
wire   [0:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_opcode;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_ce;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din1;
wire   [0:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_opcode;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_ce;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din1;
wire   [0:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_opcode;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_ce;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_ce;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din0;
wire   [63:0] grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din1;
wire    grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_ready;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_ce0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d1;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_ce;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_ap_done;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_ap_idle;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_ap_ready;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce0;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce1;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce0;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce1;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce0;
wire   [4:0] grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce1;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address0;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce0;
wire   [10:0] grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce1;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1706_add113_i_out;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_add113_i_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_opcode;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_ready;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_ce0;
wire   [10:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_ce0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d1;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d0;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce1;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce0;
wire   [4:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_ce;
wire    grp_update_weights_45_46_1_fu_1731_ap_start;
wire    grp_update_weights_45_46_1_fu_1731_ap_done;
wire    grp_update_weights_45_46_1_fu_1731_ap_idle;
wire    grp_update_weights_45_46_1_fu_1731_ap_ready;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_weights1_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights1_0_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights1_0_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights1_0_d0;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_weights1_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights1_0_ce1;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_weights1_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights1_1_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights1_1_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights1_1_d0;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_weights1_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights1_1_ce1;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_weights2_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights2_0_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights2_0_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights2_0_d0;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_weights2_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights2_0_ce1;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_weights2_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights2_1_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights2_1_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights2_1_d0;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_weights2_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights2_1_ce1;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_weights3_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights3_0_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights3_0_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights3_0_d0;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_weights3_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights3_0_ce1;
wire    grp_update_weights_45_46_1_fu_1731_weights3_0_we1;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights3_0_d1;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_weights3_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_weights3_1_ce0;
wire    grp_update_weights_45_46_1_fu_1731_weights3_1_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights3_1_d0;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_weights3_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_weights3_1_ce1;
wire    grp_update_weights_45_46_1_fu_1731_weights3_1_we1;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_weights3_1_d1;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_d_weights1_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights1_0_ce0;
wire   [8:0] grp_update_weights_45_46_1_fu_1731_d_weights1_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights1_1_ce0;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_d_weights2_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights2_0_ce0;
wire   [10:0] grp_update_weights_45_46_1_fu_1731_d_weights2_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights2_1_ce0;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_d_weights3_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce0;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_d_weights3_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce1;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_d_weights3_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce0;
wire   [6:0] grp_update_weights_45_46_1_fu_1731_d_weights3_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce1;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases1_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_biases1_0_ce0;
wire    grp_update_weights_45_46_1_fu_1731_biases1_0_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_biases1_0_d0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases1_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_biases1_0_ce1;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases1_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_biases1_1_ce0;
wire    grp_update_weights_45_46_1_fu_1731_biases1_1_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_biases1_1_d0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases1_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_biases1_1_ce1;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases2_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_biases2_0_ce0;
wire    grp_update_weights_45_46_1_fu_1731_biases2_0_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_biases2_0_d0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases2_0_address1;
wire    grp_update_weights_45_46_1_fu_1731_biases2_0_ce1;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases2_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_biases2_1_ce0;
wire    grp_update_weights_45_46_1_fu_1731_biases2_1_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_biases2_1_d0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_biases2_1_address1;
wire    grp_update_weights_45_46_1_fu_1731_biases2_1_ce1;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_biases3_address0;
wire    grp_update_weights_45_46_1_fu_1731_biases3_ce0;
wire    grp_update_weights_45_46_1_fu_1731_biases3_we0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_biases3_d0;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_biases3_address1;
wire    grp_update_weights_45_46_1_fu_1731_biases3_ce1;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_d_biases1_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_biases1_0_ce0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_d_biases1_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_biases1_1_ce0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_d_biases2_0_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_biases2_0_ce0;
wire   [4:0] grp_update_weights_45_46_1_fu_1731_d_biases2_1_address0;
wire    grp_update_weights_45_46_1_fu_1731_d_biases2_1_ce0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din1;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_opcode;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din1;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_opcode;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din1;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_opcode;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din1;
wire   [1:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_opcode;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_ce;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din0;
wire   [63:0] grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din1;
wire    grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_ce;
reg   [6:0] i_13_reg_1504;
wire    ap_CS_fsm_state36;
reg   [6:0] i_18_reg_1515;
wire    ap_CS_fsm_state65;
wire    ap_CS_fsm_state55;
reg    grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg;
wire   [0:0] icmp_ln44_fu_1859_p2;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg;
wire    ap_CS_fsm_state37;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg;
wire    ap_CS_fsm_state38;
reg    grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
reg   [63:0] activations3_2_fu_326;
reg   [63:0] activations3_fu_318;
reg   [63:0] activations3_1_fu_322;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg;
wire    ap_CS_fsm_state47;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
reg    grp_get_delta_matrix_weights3_fu_1670_ap_start_reg;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state53;
reg    grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg;
reg    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg;
wire    ap_CS_fsm_state54;
reg    grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg;
wire   [0:0] icmp_ln102_fu_2016_p2;
reg    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg;
wire    ap_CS_fsm_state66;
reg    grp_update_weights_45_46_1_fu_1731_ap_start_reg;
wire    ap_CS_fsm_state67;
wire    ap_CS_fsm_state68;
wire   [63:0] zext_ln45_fu_1911_p1;
wire   [63:0] zext_ln103_fu_2047_p1;
reg   [11:0] phi_mul_fu_186;
reg   [7:0] i_fu_190;
reg   [63:0] mux_case_0202213_fu_194;
reg   [63:0] mux_case_1203217_fu_198;
reg   [63:0] mux_case_2204221_fu_202;
reg   [63:0] mux_case_0205225_fu_206;
reg   [63:0] mux_case_1206229_fu_210;
reg   [63:0] mux_case_2207233_fu_214;
reg   [63:0] output_difference_idx_val237_fu_218;
reg   [63:0] output_difference_idx182_val240_fu_222;
reg   [63:0] output_difference_idx183_val243_fu_226;
reg   [63:0] output_difference_1_promoted_fu_230;
reg   [63:0] output_difference_0_promoted_fu_234;
reg   [63:0] output_difference_2_promoted_fu_238;
wire    ap_CS_fsm_state58;
wire   [0:0] icmp_ln220_fu_1829_p2;
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
reg   [63:0] activations2_d0_local;
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
reg   [63:0] grp_fu_1770_p0;
reg   [63:0] grp_fu_1770_p1;
wire   [6:0] trunc_ln66_fu_1890_p1;
wire   [8:0] p_shl_fu_1893_p3;
wire   [4:0] lshr_ln101_1_fu_2037_p4;
reg    grp_fu_1770_ce;
wire   [63:0] grp_fu_3145_p2;
reg   [63:0] grp_fu_3145_p0;
reg   [63:0] grp_fu_3145_p1;
reg   [1:0] grp_fu_3145_opcode;
reg    grp_fu_3145_ce;
wire   [63:0] grp_fu_3149_p2;
reg   [63:0] grp_fu_3149_p0;
reg   [63:0] grp_fu_3149_p1;
reg   [1:0] grp_fu_3149_opcode;
reg    grp_fu_3149_ce;
wire   [63:0] grp_fu_3153_p2;
reg   [63:0] grp_fu_3153_p0;
reg   [63:0] grp_fu_3153_p1;
reg   [1:0] grp_fu_3153_opcode;
reg    grp_fu_3153_ce;
wire   [63:0] grp_fu_3157_p2;
reg   [63:0] grp_fu_3157_p0;
reg   [63:0] grp_fu_3157_p1;
reg   [1:0] grp_fu_3157_opcode;
reg    grp_fu_3157_ce;
wire   [63:0] grp_fu_3161_p2;
reg   [63:0] grp_fu_3161_p0;
reg   [63:0] grp_fu_3161_p1;
reg    grp_fu_3161_ce;
wire   [63:0] grp_fu_3165_p2;
reg   [63:0] grp_fu_3165_p0;
reg   [63:0] grp_fu_3165_p1;
reg    grp_fu_3165_ce;
wire   [63:0] grp_fu_3169_p2;
reg   [63:0] grp_fu_3169_p0;
reg   [63:0] grp_fu_3169_p1;
reg    grp_fu_3169_ce;
wire   [63:0] grp_fu_3173_p2;
reg   [63:0] grp_fu_3173_p0;
reg   [63:0] grp_fu_3173_p1;
reg    grp_fu_3173_ce;
wire   [63:0] grp_fu_3177_p2;
reg   [63:0] grp_fu_3177_p0;
reg   [63:0] grp_fu_3177_p1;
reg    grp_fu_3177_ce;
wire   [63:0] grp_fu_3181_p2;
reg   [63:0] grp_fu_3181_p0;
reg   [63:0] grp_fu_3181_p1;
reg    grp_fu_3181_ce;
wire   [63:0] grp_fu_3185_p2;
reg   [63:0] grp_fu_3185_p0;
reg   [63:0] grp_fu_3185_p1;
reg    grp_fu_3185_ce;
reg   [67:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
reg    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
reg    ap_block_state53_on_subcall_done;
reg    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
reg    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
reg    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
reg    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
reg    ap_ST_fsm_state68_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 68'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg = 1'b0;
#0 activations3_2_fu_326 = 64'd0;
#0 activations3_fu_318 = 64'd0;
#0 activations3_1_fu_322 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg = 1'b0;
#0 grp_get_delta_matrix_weights3_fu_1670_ap_start_reg = 1'b0;
#0 grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg = 1'b0;
#0 grp_update_weights_45_46_1_fu_1731_ap_start_reg = 1'b0;
#0 phi_mul_fu_186 = 12'd0;
#0 i_fu_190 = 8'd0;
#0 mux_case_0202213_fu_194 = 64'd0;
#0 mux_case_1203217_fu_198 = 64'd0;
#0 mux_case_2204221_fu_202 = 64'd0;
#0 mux_case_0205225_fu_206 = 64'd0;
#0 mux_case_1206229_fu_210 = 64'd0;
#0 mux_case_2207233_fu_214 = 64'd0;
#0 output_difference_idx_val237_fu_218 = 64'd0;
#0 output_difference_idx182_val240_fu_222 = 64'd0;
#0 output_difference_idx183_val243_fu_226 = 64'd0;
#0 output_difference_1_promoted_fu_230 = 64'd0;
#0 output_difference_0_promoted_fu_234 = 64'd0;
#0 output_difference_2_promoted_fu_238 = 64'd0;
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
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_1_address0),.ce0(dactivations1_1_ce0),.we0(dactivations1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_d0),.q0(dactivations1_1_q0));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_d0),.q0(dactivations2_q0),.address1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address1),.ce1(dactivations2_ce1),.q1(dactivations2_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
dactivations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_1_address0),.ce0(dactivations2_1_ce0),.we0(dactivations2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_d0),.q0(dactivations2_1_q0),.address1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address1),.ce1(dactivations2_1_ce1),.q1(dactivations2_1_q1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d0),.q0(delta_weights1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address1),.ce1(delta_weights1_ce1),.we1(delta_weights1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d1));
backprop_delta_weights1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 416 ),.AddressWidth( 9 ))
delta_weights1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_1_address0),.ce0(delta_weights1_1_ce0),.we0(delta_weights1_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d0),.q0(delta_weights1_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address1),.ce1(delta_weights1_1_ce1),.we1(delta_weights1_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d0),.q0(delta_weights2_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address1),.ce1(delta_weights2_ce1),.we1(delta_weights2_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d1));
backprop_delta_weights2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
delta_weights2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_1_address0),.ce0(delta_weights2_1_ce0),.we0(delta_weights2_1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d0),.q0(delta_weights2_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address1),.ce1(delta_weights2_1_ce1),.we1(delta_weights2_1_we1),.d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d0),.q0(delta_weights3_q0),.address1(delta_weights3_address1),.ce1(delta_weights3_ce1),.we1(delta_weights3_we1),.d1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d1),.q1(delta_weights3_q1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 96 ),.AddressWidth( 7 ))
delta_weights3_1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_1_address0),.ce0(delta_weights3_1_ce0),.we0(delta_weights3_1_we0),.d0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d0),.q0(delta_weights3_1_q0),.address1(delta_weights3_1_address1),.ce1(delta_weights3_1_ce1),.we1(delta_weights3_1_we1),.d1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d1),.q1(delta_weights3_1_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0_local),.d0(mul16_i_reg_3139),.q0(oracle_activations1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address1),.ce1(oracle_activations1_ce1),.q1(oracle_activations1_q1));
backprop_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_1_address0),.ce0(oracle_activations1_1_ce0),.we0(oracle_activations1_1_we0_local),.d0(mul16_i_reg_3139),.q0(oracle_activations1_1_q0),.address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address1),.ce1(oracle_activations1_1_ce1),.q1(oracle_activations1_1_q1));
backprop_oracle_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1),.ce1(oracle_activations2_ce1),.q1(oracle_activations2_q1));
backprop_oracle_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 32 ),.AddressWidth( 5 ))
oracle_activations2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_1_address0),.ce0(oracle_activations2_1_ce0),.we0(oracle_activations2_1_we0),.d0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_d0),.q0(oracle_activations2_1_q0),.address1(oracle_activations2_1_address1),.ce1(oracle_activations2_1_ce1),.q1(oracle_activations2_1_q1));
backprop_matrix_vector_product_with_bias_input_layer_41_42_1 grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_ready),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce1),.activations_0_we1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we1),.activations_0_d1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d1),.activations_0_q1(activations1_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce1),.activations_1_we1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we1),.activations_1_d1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d1),.activations_1_q1(activations1_1_q1),.training_data_0_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_address0),.training_data_0_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_address0),.training_data_1_ce0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.idx(phi_mul_fu_186),.grp_fu_3145_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_ce),.grp_fu_3149_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_ce),.grp_fu_3153_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din0),.grp_fu_3153_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din1),.grp_fu_3153_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_opcode),.grp_fu_3153_p_dout0(grp_fu_3153_p2),.grp_fu_3153_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_ce),.grp_fu_3157_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din0),.grp_fu_3157_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din1),.grp_fu_3157_p_opcode(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_opcode),.grp_fu_3157_p_dout0(grp_fu_3157_p2),.grp_fu_3157_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_ce),.grp_fu_1770_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_ce),.grp_fu_3161_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din0),.grp_fu_3161_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din1),.grp_fu_3161_p_dout0(grp_fu_3161_p2),.grp_fu_3161_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_ce),.grp_fu_3165_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din0),.grp_fu_3165_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din1),.grp_fu_3165_p_dout0(grp_fu_3165_p2),.grp_fu_3165_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_ce),.grp_fu_3169_p_din0(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din0),.grp_fu_3169_p_din1(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din1),.grp_fu_3169_p_dout0(grp_fu_3169_p2),.grp_fu_3169_p_ce(grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_ready),.dactivations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_address0),.dactivations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_ce0),.dactivations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_we0),.dactivations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_d0),.activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce0),.activations1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_we0),.activations1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_d0),.activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address1),.activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce1),.activations1_1_q1(activations1_1_q1),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce1),.activations1_q1(activations1_q1),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_ce),.grp_fu_3149_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_ce),.grp_fu_3173_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din0),.grp_fu_3173_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din1),.grp_fu_3173_p_dout0(grp_fu_3173_p2),.grp_fu_3173_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_ce),.grp_fu_3177_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din0),.grp_fu_3177_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din1),.grp_fu_3177_p_dout0(grp_fu_3177_p2),.grp_fu_3177_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_ce));
backprop_backprop_Pipeline_mvp_product_loop2 grp_backprop_Pipeline_mvp_product_loop2_fu_1553(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start),.ap_done(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_done),.ap_idle(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_idle),.ap_ready(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_ready),.i_13(trunc_ln44_reg_2999),.weights2_0_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address0),.weights2_0_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address1),.weights2_0_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.activations1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce0),.activations1_q0(activations1_q0),.activations1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce1),.activations1_q1(activations1_q1),.weights2_1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address0),.weights2_1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address1),.weights2_1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.activations1_1_address0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce0),.activations1_1_q0(activations1_1_q0),.activations1_1_address1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address1),.activations1_1_ce1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce1),.activations1_1_q1(activations1_1_q1),.add114_i_out(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out),.add114_i_out_ap_vld(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_1 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_ready),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce1),.activations2_q1(activations2_q1),.biases2_0_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_address0),.biases2_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_address0),.biases2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_11 grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_ready),.dactivations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_address0),.dactivations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_ce0),.dactivations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_we0),.dactivations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_d0),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_d0),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce0),.activations2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_we0),.activations2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_d0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce1),.activations2_q1(activations2_q1),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_ce),.grp_fu_3149_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_ce),.grp_fu_3173_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din0),.grp_fu_3173_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din1),.grp_fu_3173_p_dout0(grp_fu_3173_p2),.grp_fu_3173_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_ce),.grp_fu_3177_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din0),.grp_fu_3177_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din1),.grp_fu_3177_p_dout0(grp_fu_3177_p2),.grp_fu_3177_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_ready),.activations3_2_load(reg_1800),.activations3_load(reg_1793),.activations3_1_load(reg_1786),.weights3_0_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address0),.weights3_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address1),.weights3_0_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce0),.activations2_q0(activations2_q0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce1),.activations2_q1(activations2_q1),.weights3_1_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address0),.weights3_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address1),.weights3_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address0),.activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce0),.activations2_1_q0(activations2_1_q0),.activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address1),.activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce1),.activations2_1_q1(activations2_1_q1),.activations3_10_out_i(activations3_2_fu_326),.activations3_10_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o),.activations3_10_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o_ap_vld),.activations3_9_out_i(activations3_fu_318),.activations3_9_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o),.activations3_9_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o_ap_vld),.activations3_8_out_i(activations3_1_fu_322),.activations3_8_out_o(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o),.activations3_8_out_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_12 grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_ready),.activations3_i(activations3_fu_318),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_326),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_322),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o_ap_vld),.biases3_address0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_address0),.biases3_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_13 grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_ready),.mux_case_2207233(mux_case_2207233_fu_214),.mux_case_1206229(mux_case_1206229_fu_210),.mux_case_0205225(mux_case_0205225_fu_206),.activations3_i(activations3_fu_318),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_326),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_322),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o_ap_vld),.mux_case_2207231_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out),.mux_case_2207231_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out_ap_vld),.mux_case_1206227_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out),.mux_case_1206227_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out_ap_vld),.mux_case_0205223_out(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out),.mux_case_0205223_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_ce),.grp_fu_3149_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_ce),.grp_fu_3173_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din0),.grp_fu_3173_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din1),.grp_fu_3173_p_dout0(grp_fu_3173_p2),.grp_fu_3173_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_ce),.grp_fu_3177_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din0),.grp_fu_3177_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din1),.grp_fu_3177_p_dout0(grp_fu_3177_p2),.grp_fu_3177_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_ready),.activations3_load_2(reg_1793),.activations3_1_load_2(reg_1786),.activations3_2_load_2(reg_1800),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_sum_out_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_ce),.grp_fu_3177_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din0),.grp_fu_3177_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din1),.grp_fu_3177_p_dout0(grp_fu_3177_p2),.grp_fu_3177_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_ready),.mux_case_2204221(mux_case_2204221_fu_202),.mux_case_1203217(mux_case_1203217_fu_198),.mux_case_0202213(mux_case_0202213_fu_194),.activations3_load_2(reg_1793),.activations3_1_load_2(reg_1786),.activations3_2_load_2(reg_1800),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_sum_out),.mux_case_2204219_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out),.mux_case_2204219_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out_ap_vld),.mux_case_1203215_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out),.mux_case_1203215_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out_ap_vld),.mux_case_0202211_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out),.mux_case_0202211_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out_ap_vld),.grp_fu_3173_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din0),.grp_fu_3173_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din1),.grp_fu_3173_p_dout0(grp_fu_3173_p2),.grp_fu_3173_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_ce),.grp_fu_3177_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din0),.grp_fu_3177_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din1),.grp_fu_3177_p_dout0(grp_fu_3177_p2),.grp_fu_3177_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_238),.output_difference_0_promoted(output_difference_0_promoted_fu_234),.output_difference_1_promoted(output_difference_1_promoted_fu_230),.output_difference_idx183_val243(output_difference_idx183_val243_fu_226),.output_difference_idx182_val240(output_difference_idx182_val240_fu_222),.output_difference_idx_val237(output_difference_idx_val237_fu_218),.mux_case_0202211_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out),.mux_case_1203215_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out),.mux_case_2204219_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out),.mul_ln66(sub_ln66_reg_3013),.training_targets_0_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_address0),.training_targets_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_ce0),.training_targets_0_q0(training_targets_0_q0),.training_targets_1_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_address0),.training_targets_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_ce0),.training_targets_1_q0(training_targets_1_q0),.mux_case_0205223_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out),.mux_case_1206227_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out),.mux_case_2207231_reload(grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out_ap_vld),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out_ap_vld),.output_difference_idx183_val241_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out),.output_difference_idx183_val241_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out_ap_vld),.output_difference_idx182_val238_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out),.output_difference_idx182_val238_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out_ap_vld),.output_difference_idx_val235_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out),.output_difference_idx_val235_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_ce));
backprop_get_delta_matrix_weights3 grp_get_delta_matrix_weights3_fu_1670(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights3_fu_1670_ap_start),.ap_done(grp_get_delta_matrix_weights3_fu_1670_ap_done),.ap_idle(grp_get_delta_matrix_weights3_fu_1670_ap_idle),.ap_ready(grp_get_delta_matrix_weights3_fu_1670_ap_ready),.delta_weights3_0_address0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address0),.delta_weights3_0_ce0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce0),.delta_weights3_0_we0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we0),.delta_weights3_0_d0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d0),.delta_weights3_0_address1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address1),.delta_weights3_0_ce1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce1),.delta_weights3_0_we1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we1),.delta_weights3_0_d1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_d1),.delta_weights3_1_address0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address0),.delta_weights3_1_ce0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce0),.delta_weights3_1_we0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we0),.delta_weights3_1_d0(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d0),.delta_weights3_1_address1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address1),.delta_weights3_1_ce1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce1),.delta_weights3_1_we1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we1),.delta_weights3_1_d1(grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_d1),.output_difference_0_0_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out),.output_difference_0_1_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out),.output_difference_0_2_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out),.last_activations_0_address0(grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce0),.last_activations_0_q0(activations2_q0),.last_activations_0_address1(grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address1),.last_activations_0_ce1(grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce1),.last_activations_0_q1(activations2_q1),.last_activations_1_address0(grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce0),.last_activations_1_q0(activations2_1_q0),.last_activations_1_address1(grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address1),.last_activations_1_ce1(grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce1),.last_activations_1_q1(activations2_1_q1),.grp_fu_1770_p_din0(grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_ce),.grp_fu_3161_p_din0(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din0),.grp_fu_3161_p_din1(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din1),.grp_fu_3161_p_dout0(grp_fu_3161_p2),.grp_fu_3161_p_ce(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_ce),.grp_fu_3165_p_din0(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din0),.grp_fu_3165_p_din1(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din1),.grp_fu_3165_p_dout0(grp_fu_3165_p2),.grp_fu_3165_p_ce(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_ce),.grp_fu_3169_p_din0(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din0),.grp_fu_3169_p_din1(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din1),.grp_fu_3169_p_dout0(grp_fu_3169_p2),.grp_fu_3169_p_ce(grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_ce));
backprop_get_oracle_activations2_43_44_1 grp_get_oracle_activations2_43_44_1_fu_1681(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations2_43_44_1_fu_1681_ap_start),.ap_done(grp_get_oracle_activations2_43_44_1_fu_1681_ap_done),.ap_idle(grp_get_oracle_activations2_43_44_1_fu_1681_ap_idle),.ap_ready(grp_get_oracle_activations2_43_44_1_fu_1681_ap_ready),.weights3_0_address0(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address0),.weights3_0_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address1),.weights3_0_ce1(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address0),.weights3_1_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address1),.weights3_1_ce1(grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.output_differences_0_0_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out),.output_differences_0_1_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out),.output_differences_0_2_val(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out),.oracle_activations_0_address0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_d0),.oracle_activations_1_address0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_d0),.dactivations_0_address0(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce0),.dactivations_0_q0(dactivations2_q0),.dactivations_0_address1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address1),.dactivations_0_ce1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce1),.dactivations_0_q1(dactivations2_q1),.dactivations_1_address0(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce0),.dactivations_1_q0(dactivations2_1_q0),.dactivations_1_address1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address1),.dactivations_1_ce1(grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce1),.dactivations_1_q1(dactivations2_1_q1),.grp_fu_3145_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_ce),.grp_fu_3149_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_ce),.grp_fu_3153_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din0),.grp_fu_3153_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din1),.grp_fu_3153_p_opcode(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_opcode),.grp_fu_3153_p_dout0(grp_fu_3153_p2),.grp_fu_3153_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_ce),.grp_fu_3157_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din0),.grp_fu_3157_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din1),.grp_fu_3157_p_opcode(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_opcode),.grp_fu_3157_p_dout0(grp_fu_3157_p2),.grp_fu_3157_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_ce),.grp_fu_3181_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din0),.grp_fu_3181_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din1),.grp_fu_3181_p_dout0(grp_fu_3181_p2),.grp_fu_3181_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_ce),.grp_fu_3185_p_din0(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din0),.grp_fu_3185_p_din1(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din1),.grp_fu_3185_p_dout0(grp_fu_3185_p2),.grp_fu_3185_p_ce(grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_ce0),.activations1_q0(activations1_q0),.activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_address0),.activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_ce0),.activations1_1_q0(activations1_1_q0),.delta_weights2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we0),.delta_weights2_1_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d0),.delta_weights2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we1),.delta_weights2_1_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_d1),.delta_weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address0),.delta_weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce0),.delta_weights2_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we0),.delta_weights2_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d0),.delta_weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address1),.delta_weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce1),.delta_weights2_we1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we1),.delta_weights2_d1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_d1),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_ce),.grp_fu_3161_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din0),.grp_fu_3161_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din1),.grp_fu_3161_p_dout0(grp_fu_3161_p2),.grp_fu_3161_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_ce),.grp_fu_3165_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din0),.grp_fu_3165_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din1),.grp_fu_3165_p_dout0(grp_fu_3165_p2),.grp_fu_3165_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_ce),.grp_fu_3169_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din0),.grp_fu_3169_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din1),.grp_fu_3169_p_dout0(grp_fu_3169_p2),.grp_fu_3169_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_ce));
backprop_backprop_Pipeline_activations1_loop grp_backprop_Pipeline_activations1_loop_fu_1706(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start),.ap_done(grp_backprop_Pipeline_activations1_loop_fu_1706_ap_done),.ap_idle(grp_backprop_Pipeline_activations1_loop_fu_1706_ap_idle),.ap_ready(grp_backprop_Pipeline_activations1_loop_fu_1706_ap_ready),.oracle_activations2_address0(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.oracle_activations2_address1(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address1),.oracle_activations2_ce1(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce1),.oracle_activations2_q1(oracle_activations2_q1),.i_23(trunc_ln102_reg_3101),.weights2_0_address0(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address0),.weights2_0_ce0(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address1),.weights2_0_ce1(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.oracle_activations2_1_address0(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address0),.oracle_activations2_1_ce0(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce0),.oracle_activations2_1_q0(oracle_activations2_1_q0),.oracle_activations2_1_address1(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address1),.oracle_activations2_1_ce1(grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce1),.oracle_activations2_1_q1(oracle_activations2_1_q1),.weights2_1_address0(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address0),.weights2_1_ce0(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address1),.weights2_1_ce1(grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.add113_i_out(grp_backprop_Pipeline_activations1_loop_fu_1706_add113_i_out),.add113_i_out_ap_vld(grp_backprop_Pipeline_activations1_loop_fu_1706_add113_i_out_ap_vld),.grp_fu_3145_p_din0(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_ce),.grp_fu_1770_p_din0(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_ready),.phi_mul(phi_mul_load_reg_2965),.training_data_0_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_address0),.training_data_0_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_address0),.training_data_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.delta_weights1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we0),.delta_weights1_1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d0),.delta_weights1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we1),.delta_weights1_1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_d1),.delta_weights1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address0),.delta_weights1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce0),.delta_weights1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we0),.delta_weights1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d0),.delta_weights1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address1),.delta_weights1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce1),.delta_weights1_we1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we1),.delta_weights1_d1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_d1),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce0),.oracle_activations1_q0(oracle_activations1_q0),.oracle_activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address1),.oracle_activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce1),.oracle_activations1_q1(oracle_activations1_q1),.oracle_activations1_1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address0),.oracle_activations1_1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce0),.oracle_activations1_1_q0(oracle_activations1_1_q0),.oracle_activations1_1_address1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address1),.oracle_activations1_1_ce1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce1),.oracle_activations1_1_q1(oracle_activations1_1_q1),.grp_fu_1770_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_ce),.grp_fu_3161_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din0),.grp_fu_3161_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din1),.grp_fu_3161_p_dout0(grp_fu_3161_p2),.grp_fu_3161_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_ce),.grp_fu_3165_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din0),.grp_fu_3165_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din1),.grp_fu_3165_p_dout0(grp_fu_3165_p2),.grp_fu_3165_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_ce),.grp_fu_3169_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din0),.grp_fu_3169_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din1),.grp_fu_3169_p_dout0(grp_fu_3169_p2),.grp_fu_3169_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_ce));
backprop_update_weights_45_46_1 grp_update_weights_45_46_1_fu_1731(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_45_46_1_fu_1731_ap_start),.ap_done(grp_update_weights_45_46_1_fu_1731_ap_done),.ap_idle(grp_update_weights_45_46_1_fu_1731_ap_idle),.ap_ready(grp_update_weights_45_46_1_fu_1731_ap_ready),.weights1_0_address0(grp_update_weights_45_46_1_fu_1731_weights1_0_address0),.weights1_0_ce0(grp_update_weights_45_46_1_fu_1731_weights1_0_ce0),.weights1_0_we0(grp_update_weights_45_46_1_fu_1731_weights1_0_we0),.weights1_0_d0(grp_update_weights_45_46_1_fu_1731_weights1_0_d0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_update_weights_45_46_1_fu_1731_weights1_0_address1),.weights1_0_ce1(grp_update_weights_45_46_1_fu_1731_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.weights1_1_address0(grp_update_weights_45_46_1_fu_1731_weights1_1_address0),.weights1_1_ce0(grp_update_weights_45_46_1_fu_1731_weights1_1_ce0),.weights1_1_we0(grp_update_weights_45_46_1_fu_1731_weights1_1_we0),.weights1_1_d0(grp_update_weights_45_46_1_fu_1731_weights1_1_d0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_update_weights_45_46_1_fu_1731_weights1_1_address1),.weights1_1_ce1(grp_update_weights_45_46_1_fu_1731_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.weights2_0_address0(grp_update_weights_45_46_1_fu_1731_weights2_0_address0),.weights2_0_ce0(grp_update_weights_45_46_1_fu_1731_weights2_0_ce0),.weights2_0_we0(grp_update_weights_45_46_1_fu_1731_weights2_0_we0),.weights2_0_d0(grp_update_weights_45_46_1_fu_1731_weights2_0_d0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_update_weights_45_46_1_fu_1731_weights2_0_address1),.weights2_0_ce1(grp_update_weights_45_46_1_fu_1731_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.weights2_1_address0(grp_update_weights_45_46_1_fu_1731_weights2_1_address0),.weights2_1_ce0(grp_update_weights_45_46_1_fu_1731_weights2_1_ce0),.weights2_1_we0(grp_update_weights_45_46_1_fu_1731_weights2_1_we0),.weights2_1_d0(grp_update_weights_45_46_1_fu_1731_weights2_1_d0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_update_weights_45_46_1_fu_1731_weights2_1_address1),.weights2_1_ce1(grp_update_weights_45_46_1_fu_1731_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.weights3_0_address0(grp_update_weights_45_46_1_fu_1731_weights3_0_address0),.weights3_0_ce0(grp_update_weights_45_46_1_fu_1731_weights3_0_ce0),.weights3_0_we0(grp_update_weights_45_46_1_fu_1731_weights3_0_we0),.weights3_0_d0(grp_update_weights_45_46_1_fu_1731_weights3_0_d0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_update_weights_45_46_1_fu_1731_weights3_0_address1),.weights3_0_ce1(grp_update_weights_45_46_1_fu_1731_weights3_0_ce1),.weights3_0_we1(grp_update_weights_45_46_1_fu_1731_weights3_0_we1),.weights3_0_d1(grp_update_weights_45_46_1_fu_1731_weights3_0_d1),.weights3_0_q1(weights3_0_q1),.weights3_1_address0(grp_update_weights_45_46_1_fu_1731_weights3_1_address0),.weights3_1_ce0(grp_update_weights_45_46_1_fu_1731_weights3_1_ce0),.weights3_1_we0(grp_update_weights_45_46_1_fu_1731_weights3_1_we0),.weights3_1_d0(grp_update_weights_45_46_1_fu_1731_weights3_1_d0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_update_weights_45_46_1_fu_1731_weights3_1_address1),.weights3_1_ce1(grp_update_weights_45_46_1_fu_1731_weights3_1_ce1),.weights3_1_we1(grp_update_weights_45_46_1_fu_1731_weights3_1_we1),.weights3_1_d1(grp_update_weights_45_46_1_fu_1731_weights3_1_d1),.weights3_1_q1(weights3_1_q1),.d_weights1_0_address0(grp_update_weights_45_46_1_fu_1731_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_45_46_1_fu_1731_d_weights1_0_ce0),.d_weights1_0_q0(delta_weights1_q0),.d_weights1_1_address0(grp_update_weights_45_46_1_fu_1731_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_45_46_1_fu_1731_d_weights1_1_ce0),.d_weights1_1_q0(delta_weights1_1_q0),.d_weights2_0_address0(grp_update_weights_45_46_1_fu_1731_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_45_46_1_fu_1731_d_weights2_0_ce0),.d_weights2_0_q0(delta_weights2_q0),.d_weights2_1_address0(grp_update_weights_45_46_1_fu_1731_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_45_46_1_fu_1731_d_weights2_1_ce0),.d_weights2_1_q0(delta_weights2_1_q0),.d_weights3_0_address0(grp_update_weights_45_46_1_fu_1731_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce0),.d_weights3_0_q0(delta_weights3_q0),.d_weights3_0_address1(grp_update_weights_45_46_1_fu_1731_d_weights3_0_address1),.d_weights3_0_ce1(grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce1),.d_weights3_0_q1(delta_weights3_q1),.d_weights3_1_address0(grp_update_weights_45_46_1_fu_1731_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce0),.d_weights3_1_q0(delta_weights3_1_q0),.d_weights3_1_address1(grp_update_weights_45_46_1_fu_1731_d_weights3_1_address1),.d_weights3_1_ce1(grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce1),.d_weights3_1_q1(delta_weights3_1_q1),.biases1_0_address0(grp_update_weights_45_46_1_fu_1731_biases1_0_address0),.biases1_0_ce0(grp_update_weights_45_46_1_fu_1731_biases1_0_ce0),.biases1_0_we0(grp_update_weights_45_46_1_fu_1731_biases1_0_we0),.biases1_0_d0(grp_update_weights_45_46_1_fu_1731_biases1_0_d0),.biases1_0_q0(biases1_0_q0),.biases1_0_address1(grp_update_weights_45_46_1_fu_1731_biases1_0_address1),.biases1_0_ce1(grp_update_weights_45_46_1_fu_1731_biases1_0_ce1),.biases1_0_q1(biases1_0_q1),.biases1_1_address0(grp_update_weights_45_46_1_fu_1731_biases1_1_address0),.biases1_1_ce0(grp_update_weights_45_46_1_fu_1731_biases1_1_ce0),.biases1_1_we0(grp_update_weights_45_46_1_fu_1731_biases1_1_we0),.biases1_1_d0(grp_update_weights_45_46_1_fu_1731_biases1_1_d0),.biases1_1_q0(biases1_1_q0),.biases1_1_address1(grp_update_weights_45_46_1_fu_1731_biases1_1_address1),.biases1_1_ce1(grp_update_weights_45_46_1_fu_1731_biases1_1_ce1),.biases1_1_q1(biases1_1_q1),.biases2_0_address0(grp_update_weights_45_46_1_fu_1731_biases2_0_address0),.biases2_0_ce0(grp_update_weights_45_46_1_fu_1731_biases2_0_ce0),.biases2_0_we0(grp_update_weights_45_46_1_fu_1731_biases2_0_we0),.biases2_0_d0(grp_update_weights_45_46_1_fu_1731_biases2_0_d0),.biases2_0_q0(biases2_0_q0),.biases2_0_address1(grp_update_weights_45_46_1_fu_1731_biases2_0_address1),.biases2_0_ce1(grp_update_weights_45_46_1_fu_1731_biases2_0_ce1),.biases2_0_q1(biases2_0_q1),.biases2_1_address0(grp_update_weights_45_46_1_fu_1731_biases2_1_address0),.biases2_1_ce0(grp_update_weights_45_46_1_fu_1731_biases2_1_ce0),.biases2_1_we0(grp_update_weights_45_46_1_fu_1731_biases2_1_we0),.biases2_1_d0(grp_update_weights_45_46_1_fu_1731_biases2_1_d0),.biases2_1_q0(biases2_1_q0),.biases2_1_address1(grp_update_weights_45_46_1_fu_1731_biases2_1_address1),.biases2_1_ce1(grp_update_weights_45_46_1_fu_1731_biases2_1_ce1),.biases2_1_q1(biases2_1_q1),.biases3_address0(grp_update_weights_45_46_1_fu_1731_biases3_address0),.biases3_ce0(grp_update_weights_45_46_1_fu_1731_biases3_ce0),.biases3_we0(grp_update_weights_45_46_1_fu_1731_biases3_we0),.biases3_d0(grp_update_weights_45_46_1_fu_1731_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_45_46_1_fu_1731_biases3_address1),.biases3_ce1(grp_update_weights_45_46_1_fu_1731_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_0_address0(grp_update_weights_45_46_1_fu_1731_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_45_46_1_fu_1731_d_biases1_0_ce0),.d_biases1_0_q0(oracle_activations1_q0),.d_biases1_1_address0(grp_update_weights_45_46_1_fu_1731_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_45_46_1_fu_1731_d_biases1_1_ce0),.d_biases1_1_q0(oracle_activations1_1_q0),.d_biases2_0_address0(grp_update_weights_45_46_1_fu_1731_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_45_46_1_fu_1731_d_biases2_0_ce0),.d_biases2_0_q0(oracle_activations2_q0),.d_biases2_1_address0(grp_update_weights_45_46_1_fu_1731_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_45_46_1_fu_1731_d_biases2_1_ce0),.d_biases2_1_q0(oracle_activations2_1_q0),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out),.grp_fu_3145_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din0),.grp_fu_3145_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din1),.grp_fu_3145_p_opcode(grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_opcode),.grp_fu_3145_p_dout0(grp_fu_3145_p2),.grp_fu_3145_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_ce),.grp_fu_1770_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_1770_p2),.grp_fu_1770_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_ce),.grp_fu_3157_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din0),.grp_fu_3157_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din1),.grp_fu_3157_p_opcode(grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_opcode),.grp_fu_3157_p_dout0(grp_fu_3157_p2),.grp_fu_3157_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_ce),.grp_fu_3169_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din0),.grp_fu_3169_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din1),.grp_fu_3169_p_dout0(grp_fu_3169_p2),.grp_fu_3169_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_ce),.grp_fu_3173_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din0),.grp_fu_3173_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din1),.grp_fu_3173_p_dout0(grp_fu_3173_p2),.grp_fu_3173_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_ce),.grp_fu_3149_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din0),.grp_fu_3149_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din1),.grp_fu_3149_p_opcode(grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_opcode),.grp_fu_3149_p_dout0(grp_fu_3149_p2),.grp_fu_3149_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_ce),.grp_fu_3161_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din0),.grp_fu_3161_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din1),.grp_fu_3161_p_dout0(grp_fu_3161_p2),.grp_fu_3161_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_ce),.grp_fu_3181_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din0),.grp_fu_3181_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din1),.grp_fu_3181_p_dout0(grp_fu_3181_p2),.grp_fu_3181_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_ce),.grp_fu_3185_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din0),.grp_fu_3185_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din1),.grp_fu_3185_p_dout0(grp_fu_3185_p2),.grp_fu_3185_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_ce),.grp_fu_3153_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din0),.grp_fu_3153_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din1),.grp_fu_3153_p_opcode(grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_opcode),.grp_fu_3153_p_dout0(grp_fu_3153_p2),.grp_fu_3153_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_ce),.grp_fu_3165_p_din0(grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din0),.grp_fu_3165_p_din1(grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din1),.grp_fu_3165_p_dout0(grp_fu_3165_p2),.grp_fu_3165_p_ce(grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_ce));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1770_p0),.din1(grp_fu_1770_p1),.ce(grp_fu_1770_ce),.dout(grp_fu_1770_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3145_p0),.din1(grp_fu_3145_p1),.opcode(grp_fu_3145_opcode),.ce(grp_fu_3145_ce),.dout(grp_fu_3145_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3149_p0),.din1(grp_fu_3149_p1),.opcode(grp_fu_3149_opcode),.ce(grp_fu_3149_ce),.dout(grp_fu_3149_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U337(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3153_p0),.din1(grp_fu_3153_p1),.opcode(grp_fu_3153_opcode),.ce(grp_fu_3153_ce),.dout(grp_fu_3153_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U338(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3157_p0),.din1(grp_fu_3157_p1),.opcode(grp_fu_3157_opcode),.ce(grp_fu_3157_ce),.dout(grp_fu_3157_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U339(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3161_p0),.din1(grp_fu_3161_p1),.ce(grp_fu_3161_ce),.dout(grp_fu_3161_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U340(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3165_p0),.din1(grp_fu_3165_p1),.ce(grp_fu_3165_ce),.dout(grp_fu_3165_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3169_p0),.din1(grp_fu_3169_p1),.ce(grp_fu_3169_ce),.dout(grp_fu_3169_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3173_p0),.din1(grp_fu_3173_p1),.ce(grp_fu_3173_ce),.dout(grp_fu_3173_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3177_p0),.din1(grp_fu_3177_p1),.ce(grp_fu_3177_ce),.dout(grp_fu_3177_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U344(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3181_p0),.din1(grp_fu_3181_p1),.ce(grp_fu_3181_ce),.dout(grp_fu_3181_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U345(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3185_p0),.din1(grp_fu_3185_p1),.ce(grp_fu_3185_ce),.dout(grp_fu_3185_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_fu_2016_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state56))) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state44)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state34) & (icmp_ln44_fu_1859_p2 == 1'd1))) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state50)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state46)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state54)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_fu_2016_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state56))) begin
            grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations1_loop_fu_1706_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state34) & (icmp_ln44_fu_1859_p2 == 1'd0))) begin
            grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights3_fu_1670_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state52)) begin
            grp_get_delta_matrix_weights3_fu_1670_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights3_fu_1670_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights3_fu_1670_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state52)) begin
            grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations2_43_44_1_fu_1681_ap_ready == 1'b1)) begin
            grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_45_46_1_fu_1731_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state67)) begin
            grp_update_weights_45_46_1_fu_1731_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_45_46_1_fu_1731_ap_ready == 1'b1)) begin
            grp_update_weights_45_46_1_fu_1731_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_1_fu_322 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o_ap_vld == 1'b1))) begin
        activations3_1_fu_322 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_8_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_2_fu_326 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o_ap_vld == 1'b1))) begin
        activations3_2_fu_326 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_10_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_fu_318 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o_ap_vld == 1'b1))) begin
        activations3_fu_318 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations3_9_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        i_13_reg_1504 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        i_13_reg_1504 <= add_ln44_reg_2994;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) & (grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_done == 1'b1))) begin
        i_18_reg_1515 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        i_18_reg_1515 <= add_ln102_reg_3096;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_190 <= 8'd0;
    end else if (((icmp_ln102_fu_2016_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state56))) begin
        i_fu_190 <= add_ln220_reg_2981;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_186 <= 12'd0;
    end else if (((icmp_ln102_fu_2016_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state56))) begin
        phi_mul_fu_186 <= add_ln220_1_reg_2973;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        add_ln102_reg_3096 <= add_ln102_fu_2022_p2;
        oracle_activations1_1_addr_reg_3116 <= zext_ln103_fu_2047_p1;
        oracle_activations1_addr_reg_3111 <= zext_ln103_fu_2047_p1;
        trunc_ln102_1_reg_3106 <= trunc_ln102_1_fu_2033_p1;
        trunc_ln102_reg_3101 <= trunc_ln102_fu_2028_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln220_1_reg_2973 <= add_ln220_1_fu_1823_p2;
        add_ln220_reg_2981 <= add_ln220_fu_1835_p2;
        phi_mul_load_reg_2965 <= phi_mul_fu_186;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        add_ln44_reg_2994 <= add_ln44_fu_1865_p2;
        lshr_ln43_1_reg_3008 <= {{i_13_reg_1504[5:1]}};
        sub_ln66_reg_3013 <= sub_ln66_fu_1901_p2;
        trunc_ln44_1_reg_3004 <= trunc_ln44_1_fu_1876_p1;
        trunc_ln44_reg_2999 <= trunc_ln44_fu_1871_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        mul16_i_reg_3139 <= grp_fu_1770_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln102_fu_2016_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state56))) begin
        mux_case_0202213_fu_194 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_0202211_out;
        mux_case_0205225_fu_206 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_0205223_out;
        mux_case_1203217_fu_198 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_1203215_out;
        mux_case_1206229_fu_210 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_1206227_out;
        mux_case_2204221_fu_202 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_mux_case_2204219_out;
        mux_case_2207233_fu_214 <= grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_mux_case_2207231_out;
        output_difference_0_promoted_fu_234 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_1_out;
        output_difference_1_promoted_fu_230 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_out;
        output_difference_2_promoted_fu_238 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_2_out;
        output_difference_idx182_val240_fu_222 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx182_val238_out;
        output_difference_idx183_val243_fu_226 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx183_val241_out;
        output_difference_idx_val237_fu_218 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_output_difference_idx_val235_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state39))) begin
        reg_1786 <= activations3_1_fu_322;
        reg_1793 <= activations3_fu_318;
        reg_1800 <= activations3_2_fu_326;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        select_ln107_reg_3131 <= select_ln107_fu_2111_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        zext_ln66_reg_2986[7 : 0] <= zext_ln66_fu_1856_p1[7 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address0;
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
        activations1_1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_address1;
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
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce0;
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
        activations1_1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_ce1;
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
        activations1_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d0;
    end else begin
        activations1_1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_d1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_d1;
    end else begin
        activations1_1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we0;
    end else begin
        activations1_1_we0 = activations1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we0_local = 1'b1;
    end else begin
        activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_1_we1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_1_we1;
    end else begin
        activations1_1_we1 = activations1_1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_1_we1_local = 1'b1;
    end else begin
        activations1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address0;
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
        activations1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_address1;
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
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce0;
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
        activations1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_ce1;
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
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_d1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_d1;
    end else begin
        activations1_d1 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        activations1_we1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_activations_0_we1;
    end else begin
        activations1_we1 = activations1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_1_address0 = grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address0;
    end else begin
        activations2_1_address0 = activations2_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations2_1_address0_local = zext_ln45_fu_1911_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
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
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_1_address1 = grp_get_delta_matrix_weights3_fu_1670_last_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_address1;
    end else begin
        activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_1_ce0 = grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce0;
    end else begin
        activations2_1_ce0 = activations2_1_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state36) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_1_ce1 = grp_get_delta_matrix_weights3_fu_1670_last_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_ce1;
    end else begin
        activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_d0;
    end else begin
        activations2_1_d0 = activations2_1_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations2_1_d0_local = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        activations2_1_d0_local = 64'd0;
    end else begin
        activations2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_1_we0;
    end else begin
        activations2_1_we0 = activations2_1_we0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((trunc_ln44_1_reg_3004 == 1'd1) & (1'b1 == ap_CS_fsm_state36)) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))| ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_address0 = grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address0;
    end else begin
        activations2_address0 = activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations2_address0_local = zext_ln45_fu_1911_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
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
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_address1 = grp_get_delta_matrix_weights3_fu_1670_last_activations_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_address1;
    end else begin
        activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_ce0 = grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state36) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done== 1'b1) & (1'b1 == ap_CS_fsm_state19)))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations2_ce1 = grp_get_delta_matrix_weights3_fu_1670_last_activations_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_ce1;
    end else begin
        activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_d0;
    end else begin
        activations2_d0 = activations2_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations2_d0_local = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_add114_i_out;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        activations2_d0_local = 64'd0;
    end else begin
        activations2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_activations2_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | ((trunc_ln44_1_reg_3004 == 1'd0) & (1'b1 == ap_CS_fsm_state36)) | ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))| ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((icmp_ln220_fu_1829_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if ((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done == 1'b0)) begin
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
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b0)) begin
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
    if ((grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_done == 1'b0)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end
assign ap_ST_fsm_state42_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_done == 1'b0)) begin
        ap_ST_fsm_state45_blk = 1'b1;
    end else begin
        ap_ST_fsm_state45_blk = 1'b0;
    end
end
assign ap_ST_fsm_state46_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_done == 1'b0)) begin
        ap_ST_fsm_state47_blk = 1'b1;
    end else begin
        ap_ST_fsm_state47_blk = 1'b0;
    end
end
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_done == 1'b0)) begin
        ap_ST_fsm_state49_blk = 1'b1;
    end else begin
        ap_ST_fsm_state49_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_done == 1'b0)) begin
        ap_ST_fsm_state51_blk = 1'b1;
    end else begin
        ap_ST_fsm_state51_blk = 1'b0;
    end
end
assign ap_ST_fsm_state52_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state53_on_subcall_done)) begin
        ap_ST_fsm_state53_blk = 1'b1;
    end else begin
        ap_ST_fsm_state53_blk = 1'b0;
    end
end
assign ap_ST_fsm_state54_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_done == 1'b0)) begin
        ap_ST_fsm_state55_blk = 1'b1;
    end else begin
        ap_ST_fsm_state55_blk = 1'b0;
    end
end
assign ap_ST_fsm_state56_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_activations1_loop_fu_1706_ap_done == 1'b0)) begin
        ap_ST_fsm_state57_blk = 1'b1;
    end else begin
        ap_ST_fsm_state57_blk = 1'b0;
    end
end
assign ap_ST_fsm_state58_blk = 1'b0;
assign ap_ST_fsm_state59_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state60_blk = 1'b0;
assign ap_ST_fsm_state61_blk = 1'b0;
assign ap_ST_fsm_state62_blk = 1'b0;
assign ap_ST_fsm_state63_blk = 1'b0;
assign ap_ST_fsm_state64_blk = 1'b0;
assign ap_ST_fsm_state65_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_done == 1'b0)) begin
        ap_ST_fsm_state66_blk = 1'b1;
    end else begin
        ap_ST_fsm_state66_blk = 1'b0;
    end
end
assign ap_ST_fsm_state67_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_45_46_1_fu_1731_ap_done == 1'b0)) begin
        ap_ST_fsm_state68_blk = 1'b1;
    end else begin
        ap_ST_fsm_state68_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln220_fu_1829_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln220_fu_1829_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_0_address0 = grp_update_weights_45_46_1_fu_1731_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_address0;
    end else begin
        biases1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_0_ce0 = grp_update_weights_45_46_1_fu_1731_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_0_ce0;
    end else begin
        biases1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_0_ce1 = grp_update_weights_45_46_1_fu_1731_biases1_0_ce1;
    end else begin
        biases1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_0_we0 = grp_update_weights_45_46_1_fu_1731_biases1_0_we0;
    end else begin
        biases1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_1_address0 = grp_update_weights_45_46_1_fu_1731_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_address0;
    end else begin
        biases1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_1_ce0 = grp_update_weights_45_46_1_fu_1731_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_biases1_1_ce0;
    end else begin
        biases1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_1_ce1 = grp_update_weights_45_46_1_fu_1731_biases1_1_ce1;
    end else begin
        biases1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases1_1_we0 = grp_update_weights_45_46_1_fu_1731_biases1_1_we0;
    end else begin
        biases1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_0_address0 = grp_update_weights_45_46_1_fu_1731_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases2_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_address0;
    end else begin
        biases2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_0_ce0 = grp_update_weights_45_46_1_fu_1731_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases2_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_0_ce0;
    end else begin
        biases2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_0_ce1 = grp_update_weights_45_46_1_fu_1731_biases2_0_ce1;
    end else begin
        biases2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_0_we0 = grp_update_weights_45_46_1_fu_1731_biases2_0_we0;
    end else begin
        biases2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_1_address0 = grp_update_weights_45_46_1_fu_1731_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_address0;
    end else begin
        biases2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_1_ce0 = grp_update_weights_45_46_1_fu_1731_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_biases2_1_ce0;
    end else begin
        biases2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_1_ce1 = grp_update_weights_45_46_1_fu_1731_biases2_1_ce1;
    end else begin
        biases2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases2_1_we0 = grp_update_weights_45_46_1_fu_1731_biases2_1_we0;
    end else begin
        biases2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases3_address0 = grp_update_weights_45_46_1_fu_1731_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        biases3_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases3_ce0 = grp_update_weights_45_46_1_fu_1731_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        biases3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases3_ce1 = grp_update_weights_45_46_1_fu_1731_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        biases3_we0 = grp_update_weights_45_46_1_fu_1731_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_address0;
    end else begin
        dactivations1_1_address0 = zext_ln103_fu_2047_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_ce0;
    end else begin
        dactivations1_1_ce0 = dactivations1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations1_1_ce0_local = 1'b1;
    end else begin
        dactivations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_1_we0;
    end else begin
        dactivations1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_address0;
    end else begin
        dactivations1_address0 = zext_ln103_fu_2047_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = dactivations1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations1_ce0_local = 1'b1;
    end else begin
        dactivations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_1_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_address0;
    end else begin
        dactivations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_1_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_ce0;
    end else begin
        dactivations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_1_ce1 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_1_ce1;
    end else begin
        dactivations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_1_we0;
    end else begin
        dactivations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations2_ce1 = grp_get_oracle_activations2_43_44_1_fu_1681_dactivations_0_ce1;
    end else begin
        dactivations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights1_1_address0 = grp_update_weights_45_46_1_fu_1731_d_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_address0;
    end else begin
        delta_weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights1_1_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce0;
    end else begin
        delta_weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_ce1;
    end else begin
        delta_weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we0;
    end else begin
        delta_weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_1_we1;
    end else begin
        delta_weights1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights1_address0 = grp_update_weights_45_46_1_fu_1731_d_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights1_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        delta_weights1_we1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_delta_weights1_we1;
    end else begin
        delta_weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights2_1_address0 = grp_update_weights_45_46_1_fu_1731_d_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_address0;
    end else begin
        delta_weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights2_1_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce0;
    end else begin
        delta_weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_ce1;
    end else begin
        delta_weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_1_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we0;
    end else begin
        delta_weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_1_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_1_we1;
    end else begin
        delta_weights2_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights2_address0 = grp_update_weights_45_46_1_fu_1731_d_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights2_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights2_we1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_delta_weights2_we1;
    end else begin
        delta_weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_1_address0 = grp_update_weights_45_46_1_fu_1731_d_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_address0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address0;
    end else begin
        delta_weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_1_address1 = grp_update_weights_45_46_1_fu_1731_d_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_address1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_address1;
    end else begin
        delta_weights3_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_1_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_ce0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce0;
    end else begin
        delta_weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_1_ce1 = grp_update_weights_45_46_1_fu_1731_d_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_ce1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_ce1;
    end else begin
        delta_weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_we0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we0;
    end else begin
        delta_weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_we1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_1_we1;
    end else begin
        delta_weights3_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_address0 = grp_update_weights_45_46_1_fu_1731_d_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_address0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_address1 = grp_update_weights_45_46_1_fu_1731_d_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_address1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_address1;
    end else begin
        delta_weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_ce0 = grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_ce0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        delta_weights3_ce1 = grp_update_weights_45_46_1_fu_1731_d_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_ce1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_we0 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_we1 = grp_get_delta_matrix_weights3_fu_1670_delta_weights3_0_we1;
    end else begin
        delta_weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_1770_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_1770_ce = grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1770_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1770_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_1770_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_1770_p0 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1770_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_1770_p0 = grp_backprop_Pipeline_activations1_loop_fu_1706_add113_i_out;
    end else begin
        grp_fu_1770_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_1770_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_1770_p1 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1770_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1770_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_1770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_1770_p1 = select_ln107_reg_3131;
    end else begin
        grp_fu_1770_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3145_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3145_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3145_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3145_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_ce;
    end else begin
        grp_fu_3145_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3145_opcode = grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3145_opcode = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3145_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3145_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_opcode;
    end else begin
        grp_fu_3145_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3145_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3145_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3145_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3145_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din0;
    end else begin
        grp_fu_3145_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3145_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_activations1_loop_fu_1706_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3145_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3145_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3145_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3145_p_din1;
    end else begin
        grp_fu_3145_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3149_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3149_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3149_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3149_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3149_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3149_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_ce;
    end else begin
        grp_fu_3149_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3149_opcode = grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3149_opcode = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3149_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3149_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3149_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3149_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_opcode;
    end else begin
        grp_fu_3149_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3149_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3149_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3149_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3149_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3149_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3149_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din0;
    end else begin
        grp_fu_3149_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3149_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3149_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3149_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3149_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3149_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3149_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3149_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3149_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3149_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3149_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3149_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3149_p_din1;
    end else begin
        grp_fu_3149_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3153_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3153_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3153_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_ce;
    end else begin
        grp_fu_3153_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3153_opcode = grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3153_opcode = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3153_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_opcode;
    end else begin
        grp_fu_3153_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3153_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3153_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3153_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din0;
    end else begin
        grp_fu_3153_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3153_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3153_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3153_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3153_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3153_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3153_p_din1;
    end else begin
        grp_fu_3153_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3157_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3157_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3157_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_ce;
    end else begin
        grp_fu_3157_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3157_opcode = grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3157_opcode = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3157_opcode = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_opcode;
    end else begin
        grp_fu_3157_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3157_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3157_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3157_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din0;
    end else begin
        grp_fu_3157_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3157_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3157_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3157_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3157_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3157_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3157_p_din1;
    end else begin
        grp_fu_3157_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3161_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3161_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3161_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3161_ce = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3161_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_ce;
    end else begin
        grp_fu_3161_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3161_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3161_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3161_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3161_p0 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3161_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din0;
    end else begin
        grp_fu_3161_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3161_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3161_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3161_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3161_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3161_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3161_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3161_p1 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3161_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3161_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3161_p_din1;
    end else begin
        grp_fu_3161_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3165_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3165_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3165_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3165_ce = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3165_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_ce;
    end else begin
        grp_fu_3165_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3165_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3165_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3165_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3165_p0 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3165_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din0;
    end else begin
        grp_fu_3165_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3165_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3165_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3165_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3165_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3165_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3165_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3165_p1 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3165_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3165_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3165_p_din1;
    end else begin
        grp_fu_3165_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3169_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3169_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3169_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3169_ce = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3169_ce = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_ce;
    end else begin
        grp_fu_3169_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3169_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3169_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3169_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3169_p0 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3169_p0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din0;
    end else begin
        grp_fu_3169_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3169_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3169_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3169_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_grp_fu_3169_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3169_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_grp_fu_3169_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3169_p1 = grp_get_delta_matrix_weights3_fu_1670_grp_fu_3169_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3169_p1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_grp_fu_3169_p_din1;
    end else begin
        grp_fu_3169_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3173_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3173_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3173_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3173_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3173_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_ce;
    end else begin
        grp_fu_3173_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3173_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3173_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3173_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3173_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3173_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din0;
    end else begin
        grp_fu_3173_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3173_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3173_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3173_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3173_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3173_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3173_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3173_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3173_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3173_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3173_p_din1;
    end else begin
        grp_fu_3173_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3177_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3177_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3177_ce = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3177_ce = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3177_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_ce;
    end else begin
        grp_fu_3177_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3177_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3177_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3177_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3177_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3177_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din0;
    end else begin
        grp_fu_3177_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3177_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_grp_fu_3177_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3177_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_grp_fu_3177_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3177_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_grp_fu_3177_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3177_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_grp_fu_3177_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3177_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_grp_fu_3177_p_din1;
    end else begin
        grp_fu_3177_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3181_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3181_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_ce;
    end else begin
        grp_fu_3181_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3181_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3181_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din0;
    end else begin
        grp_fu_3181_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3181_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3181_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3181_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3181_p_din1;
    end else begin
        grp_fu_3181_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3185_ce = grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3185_ce = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_ce;
    end else begin
        grp_fu_3185_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3185_p0 = grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3185_p0 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din0;
    end else begin
        grp_fu_3185_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3185_p1 = grp_update_weights_45_46_1_fu_1731_grp_fu_3185_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3185_p1 = grp_get_oracle_activations2_43_44_1_fu_1681_grp_fu_3185_p_din1;
    end else begin
        grp_fu_3185_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations1_1_address0 = grp_update_weights_45_46_1_fu_1731_d_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_address0;
    end else begin
        oracle_activations1_1_address0 = oracle_activations1_1_addr_reg_3116;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations1_1_ce0 = grp_update_weights_45_46_1_fu_1731_d_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce0;
    end else begin
        oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_1_ce1;
    end else begin
        oracle_activations1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_3106 == 1'd1) & (1'b1 == ap_CS_fsm_state65))) begin
        oracle_activations1_1_we0_local = 1'b1;
    end else begin
        oracle_activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations1_address0 = grp_update_weights_45_46_1_fu_1731_d_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_address0;
    end else begin
        oracle_activations1_address0 = oracle_activations1_addr_reg_3111;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations1_ce0 = grp_update_weights_45_46_1_fu_1731_d_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce0;
    end else begin
        oracle_activations1_ce0 = oracle_activations1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_oracle_activations1_ce1;
    end else begin
        oracle_activations1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_3106 == 1'd0) & (1'b1 == ap_CS_fsm_state65))) begin
        oracle_activations1_we0_local = 1'b1;
    end else begin
        oracle_activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations2_1_address0 = grp_update_weights_45_46_1_fu_1731_d_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_address0;
    end else begin
        oracle_activations2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_address1;
    end else begin
        oracle_activations2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations2_1_ce0 = grp_update_weights_45_46_1_fu_1731_d_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_ce0;
    end else begin
        oracle_activations2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_1_ce1;
    end else begin
        oracle_activations2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_1_we0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_1_we0;
    end else begin
        oracle_activations2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations2_address0 = grp_update_weights_45_46_1_fu_1731_d_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_address0;
    end else begin
        oracle_activations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_address1;
    end else begin
        oracle_activations2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations2_ce0 = grp_update_weights_45_46_1_fu_1731_d_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_ce0;
    end else begin
        oracle_activations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1706_oracle_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        oracle_activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_oracle_activations2_ce1;
    end else begin
        oracle_activations2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        oracle_activations2_we0 = grp_get_oracle_activations2_43_44_1_fu_1681_oracle_activations_0_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        training_data_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_address0;
    end else begin
        training_data_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        training_data_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_0_ce0;
    end else begin
        training_data_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        training_data_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_address0;
    end else begin
        training_data_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        training_data_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_training_data_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        training_data_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_training_data_1_ce0;
    end else begin
        training_data_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_0_address0 = grp_update_weights_45_46_1_fu_1731_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address0;
    end else begin
        weights1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_0_address1 = grp_update_weights_45_46_1_fu_1731_weights1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_address1;
    end else begin
        weights1_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_0_ce0 = grp_update_weights_45_46_1_fu_1731_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce0;
    end else begin
        weights1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_0_ce1 = grp_update_weights_45_46_1_fu_1731_weights1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_0_ce1;
    end else begin
        weights1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_0_we0 = grp_update_weights_45_46_1_fu_1731_weights1_0_we0;
    end else begin
        weights1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_1_address0 = grp_update_weights_45_46_1_fu_1731_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address0;
    end else begin
        weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_1_address1 = grp_update_weights_45_46_1_fu_1731_weights1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_address1;
    end else begin
        weights1_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_1_ce0 = grp_update_weights_45_46_1_fu_1731_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce0;
    end else begin
        weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_1_ce1 = grp_update_weights_45_46_1_fu_1731_weights1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_weights1_1_ce1;
    end else begin
        weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights1_1_we0 = grp_update_weights_45_46_1_fu_1731_weights1_1_we0;
    end else begin
        weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_0_address0 = grp_update_weights_45_46_1_fu_1731_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_address0 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address0;
    end else begin
        weights2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_0_address1 = grp_update_weights_45_46_1_fu_1731_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_address1 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_address1;
    end else begin
        weights2_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_0_ce0 = grp_update_weights_45_46_1_fu_1731_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce0;
    end else begin
        weights2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_0_ce1 = grp_update_weights_45_46_1_fu_1731_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_0_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_0_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_0_ce1;
    end else begin
        weights2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_0_we0 = grp_update_weights_45_46_1_fu_1731_weights2_0_we0;
    end else begin
        weights2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_1_address0 = grp_update_weights_45_46_1_fu_1731_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_address0 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_address0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address0;
    end else begin
        weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_1_address1 = grp_update_weights_45_46_1_fu_1731_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_address1 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_address1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_address1;
    end else begin
        weights2_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_1_ce0 = grp_update_weights_45_46_1_fu_1731_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_ce0 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_ce0 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce0;
    end else begin
        weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_1_ce1 = grp_update_weights_45_46_1_fu_1731_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights2_1_ce1 = grp_backprop_Pipeline_activations1_loop_fu_1706_weights2_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights2_1_ce1 = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_weights2_1_ce1;
    end else begin
        weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights2_1_we0 = grp_update_weights_45_46_1_fu_1731_weights2_1_we0;
    end else begin
        weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_address0 = grp_update_weights_45_46_1_fu_1731_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_0_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address0;
    end else begin
        weights3_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_address1 = grp_update_weights_45_46_1_fu_1731_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_0_address1 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_address1;
    end else begin
        weights3_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_ce0 = grp_update_weights_45_46_1_fu_1731_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_0_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce0;
    end else begin
        weights3_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_ce1 = grp_update_weights_45_46_1_fu_1731_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_0_ce1 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_0_ce1;
    end else begin
        weights3_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_we0 = grp_update_weights_45_46_1_fu_1731_weights3_0_we0;
    end else begin
        weights3_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_0_we1 = grp_update_weights_45_46_1_fu_1731_weights3_0_we1;
    end else begin
        weights3_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_address0 = grp_update_weights_45_46_1_fu_1731_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_1_address0 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address0;
    end else begin
        weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_address1 = grp_update_weights_45_46_1_fu_1731_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_1_address1 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_address1;
    end else begin
        weights3_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_ce0 = grp_update_weights_45_46_1_fu_1731_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_1_ce0 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce0;
    end else begin
        weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_ce1 = grp_update_weights_45_46_1_fu_1731_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_1_ce1 = grp_get_oracle_activations2_43_44_1_fu_1681_weights3_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_weights3_1_ce1;
    end else begin
        weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_we0 = grp_update_weights_45_46_1_fu_1731_weights3_1_we0;
    end else begin
        weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_1_we1 = grp_update_weights_45_46_1_fu_1731_weights3_1_we1;
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
            if (((icmp_ln220_fu_1829_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
            if (((1'b1 == ap_CS_fsm_state34) & (icmp_ln44_fu_1859_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state35 : begin
            if (((1'b1 == ap_CS_fsm_state35) & (grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state37 : begin
            if (((1'b1 == ap_CS_fsm_state37) & (grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            if (((1'b1 == ap_CS_fsm_state41) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            if (((1'b1 == ap_CS_fsm_state43) & (grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            if (((1'b1 == ap_CS_fsm_state45) & (grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            if (((1'b1 == ap_CS_fsm_state47) & (grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            if (((1'b1 == ap_CS_fsm_state49) & (grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            if (((1'b1 == ap_CS_fsm_state51) & (grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state51;
            end
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            if (((1'b0 == ap_block_state53_on_subcall_done) & (1'b1 == ap_CS_fsm_state53))) begin
                ap_NS_fsm = ap_ST_fsm_state54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state53;
            end
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            if (((1'b1 == ap_CS_fsm_state55) & (grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state55;
            end
        end
        ap_ST_fsm_state56 : begin
            if (((icmp_ln102_fu_2016_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state56))) begin
                ap_NS_fsm = ap_ST_fsm_state66;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state57;
            end
        end
        ap_ST_fsm_state57 : begin
            if (((1'b1 == ap_CS_fsm_state57) & (grp_backprop_Pipeline_activations1_loop_fu_1706_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state57;
            end
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state66 : begin
            if (((1'b1 == ap_CS_fsm_state66) & (grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state67;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state66;
            end
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            if (((1'b1 == ap_CS_fsm_state68) & (grp_update_weights_45_46_1_fu_1731_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state68;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_2022_p2 = (i_18_reg_1515 + 7'd1);
assign add_ln220_1_fu_1823_p2 = (phi_mul_fu_186 + 12'd13);
assign add_ln220_fu_1835_p2 = (i_fu_190 + 8'd1);
assign add_ln44_fu_1865_p2 = (i_13_reg_1504 + 7'd1);
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
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_state65 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_state66 = ap_CS_fsm[32'd65];
assign ap_CS_fsm_state67 = ap_CS_fsm[32'd66];
assign ap_CS_fsm_state68 = ap_CS_fsm[32'd67];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state53_on_subcall_done = ((grp_get_oracle_activations2_43_44_1_fu_1681_ap_done == 1'b0) | (grp_get_delta_matrix_weights3_fu_1670_ap_done == 1'b0));
end
assign biases1_0_address1 = grp_update_weights_45_46_1_fu_1731_biases1_0_address1;
assign biases1_0_d0 = grp_update_weights_45_46_1_fu_1731_biases1_0_d0;
assign biases1_1_address1 = grp_update_weights_45_46_1_fu_1731_biases1_1_address1;
assign biases1_1_d0 = grp_update_weights_45_46_1_fu_1731_biases1_1_d0;
assign biases2_0_address1 = grp_update_weights_45_46_1_fu_1731_biases2_0_address1;
assign biases2_0_d0 = grp_update_weights_45_46_1_fu_1731_biases2_0_d0;
assign biases2_1_address1 = grp_update_weights_45_46_1_fu_1731_biases2_1_address1;
assign biases2_1_d0 = grp_update_weights_45_46_1_fu_1731_biases2_1_d0;
assign biases3_address1 = grp_update_weights_45_46_1_fu_1731_biases3_address1;
assign biases3_d0 = grp_update_weights_45_46_1_fu_1731_biases3_d0;
assign grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_1718_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_1629_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_11_fu_1575_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_13_fu_1608_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_1545_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_12_fu_1599_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_1565_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start = grp_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1_fu_1583_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_1621_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_1696_ap_start_reg;
assign grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start = grp_backprop_Pipeline_activations1_loop_fu_1706_ap_start_reg;
assign grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start = grp_backprop_Pipeline_mvp_product_loop2_fu_1553_ap_start_reg;
assign grp_get_delta_matrix_weights3_fu_1670_ap_start = grp_get_delta_matrix_weights3_fu_1670_ap_start_reg;
assign grp_get_oracle_activations2_43_44_1_fu_1681_ap_start = grp_get_oracle_activations2_43_44_1_fu_1681_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start = grp_matrix_vector_product_with_bias_input_layer_41_42_1_fu_1526_ap_start_reg;
assign grp_update_weights_45_46_1_fu_1731_ap_start = grp_update_weights_45_46_1_fu_1731_ap_start_reg;
assign icmp_ln102_fu_2016_p2 = ((i_18_reg_1515 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln220_fu_1829_p2 = ((i_fu_190 == 8'd163) ? 1'b1 : 1'b0);
assign icmp_ln44_fu_1859_p2 = ((i_13_reg_1504 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln101_1_fu_2037_p4 = {{i_18_reg_1515[5:1]}};
assign p_shl_fu_1893_p3 = {{trunc_ln66_fu_1890_p1}, {2'd0}};
assign select_ln107_fu_2111_p3 = ((trunc_ln102_1_reg_3106[0:0] == 1'b1) ? dactivations1_1_q0 : dactivations1_q0);
assign sub_ln66_fu_1901_p2 = (p_shl_fu_1893_p3 - zext_ln66_reg_2986);
assign training_targets_0_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_address0;
assign training_targets_0_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_0_ce0;
assign training_targets_1_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_address0;
assign training_targets_1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_1643_training_targets_1_ce0;
assign trunc_ln102_1_fu_2033_p1 = i_18_reg_1515[0:0];
assign trunc_ln102_fu_2028_p1 = i_18_reg_1515[5:0];
assign trunc_ln44_1_fu_1876_p1 = i_13_reg_1504[0:0];
assign trunc_ln44_fu_1871_p1 = i_13_reg_1504[5:0];
assign trunc_ln66_fu_1890_p1 = i_fu_190[6:0];
assign weights1_0_d0 = grp_update_weights_45_46_1_fu_1731_weights1_0_d0;
assign weights1_1_d0 = grp_update_weights_45_46_1_fu_1731_weights1_1_d0;
assign weights2_0_d0 = grp_update_weights_45_46_1_fu_1731_weights2_0_d0;
assign weights2_1_d0 = grp_update_weights_45_46_1_fu_1731_weights2_1_d0;
assign weights3_0_d0 = grp_update_weights_45_46_1_fu_1731_weights3_0_d0;
assign weights3_0_d1 = grp_update_weights_45_46_1_fu_1731_weights3_0_d1;
assign weights3_1_d0 = grp_update_weights_45_46_1_fu_1731_weights3_1_d0;
assign weights3_1_d1 = grp_update_weights_45_46_1_fu_1731_weights3_1_d1;
assign zext_ln103_fu_2047_p1 = lshr_ln101_1_fu_2037_p4;
assign zext_ln45_fu_1911_p1 = lshr_ln43_1_reg_3008;
assign zext_ln66_fu_1856_p1 = i_fu_190;
always @ (posedge ap_clk) begin
    zext_ln66_reg_2986[8] <= 1'b0;
end
endmodule 