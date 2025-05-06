
module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_2_address1,input_activations_2_ce1,input_activations_2_q1,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_3_address1,input_activations_3_ce1,input_activations_3_q1,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_opcode,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_opcode,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_opcode,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_opcode,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_opcode,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce);  
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [3:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [3:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [3:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [9:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [9:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [9:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [9:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [9:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [9:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [9:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [9:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
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
input  [63:0] activations_1_q1;
output  [3:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [3:0] activations_2_address1;
output   activations_2_ce1;
input  [63:0] activations_2_q1;
output  [3:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [3:0] activations_3_address1;
output   activations_3_ce1;
input  [63:0] activations_3_q1;
output  [3:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [3:0] input_activations_0_address1;
output   input_activations_0_ce1;
input  [63:0] input_activations_0_q1;
output  [3:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [3:0] input_activations_1_address1;
output   input_activations_1_ce1;
input  [63:0] input_activations_1_q1;
output  [3:0] input_activations_2_address0;
output   input_activations_2_ce0;
input  [63:0] input_activations_2_q0;
output  [3:0] input_activations_2_address1;
output   input_activations_2_ce1;
input  [63:0] input_activations_2_q1;
output  [3:0] input_activations_3_address0;
output   input_activations_3_ce0;
input  [63:0] input_activations_3_q0;
output  [3:0] input_activations_3_address1;
output   input_activations_3_ce1;
input  [63:0] input_activations_3_q1;
output  [63:0] grp_fu_3064_p_din0;
output  [63:0] grp_fu_3064_p_din1;
output  [0:0] grp_fu_3064_p_opcode;
input  [63:0] grp_fu_3064_p_dout0;
output   grp_fu_3064_p_ce;
output  [63:0] grp_fu_3068_p_din0;
output  [63:0] grp_fu_3068_p_din1;
output  [0:0] grp_fu_3068_p_opcode;
input  [63:0] grp_fu_3068_p_dout0;
output   grp_fu_3068_p_ce;
output  [63:0] grp_fu_3072_p_din0;
output  [63:0] grp_fu_3072_p_din1;
output  [0:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
output  [0:0] grp_fu_3076_p_opcode;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
output  [0:0] grp_fu_3080_p_opcode;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
output  [0:0] grp_fu_3084_p_opcode;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
output  [1:0] grp_fu_3088_p_opcode;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
output  [1:0] grp_fu_3092_p_opcode;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
output  [63:0] grp_fu_3108_p_din0;
output  [63:0] grp_fu_3108_p_din1;
input  [63:0] grp_fu_3108_p_dout0;
output   grp_fu_3108_p_ce;
output  [63:0] grp_fu_3112_p_din0;
output  [63:0] grp_fu_3112_p_din1;
input  [63:0] grp_fu_3112_p_dout0;
output   grp_fu_3112_p_ce;
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
output  [63:0] grp_fu_3120_p_din0;
output  [63:0] grp_fu_3120_p_din1;
input  [63:0] grp_fu_3120_p_dout0;
output   grp_fu_3120_p_ce;
output  [63:0] grp_fu_3124_p_din0;
output  [63:0] grp_fu_3124_p_din1;
input  [63:0] grp_fu_3124_p_dout0;
output   grp_fu_3124_p_ce;
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
reg activations_1_ce1;
reg[3:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg activations_2_ce1;
reg[3:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg activations_3_ce1;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_842;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_847;
reg   [63:0] input_activations_2_load_reg_852;
reg   [63:0] input_activations_3_load_reg_857;
reg   [63:0] input_activations_0_load_1_reg_862;
reg   [63:0] input_activations_1_load_1_reg_867;
reg   [63:0] input_activations_2_load_1_reg_872;
reg   [63:0] input_activations_3_load_1_reg_877;
reg   [63:0] input_activations_0_load_2_reg_922;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_2_reg_927;
reg   [63:0] input_activations_2_load_2_reg_932;
reg   [63:0] input_activations_3_load_2_reg_937;
reg   [63:0] input_activations_0_load_3_reg_942;
reg   [63:0] input_activations_1_load_3_reg_947;
reg   [63:0] input_activations_2_load_3_reg_952;
reg   [63:0] input_activations_3_load_3_reg_957;
reg   [63:0] input_activations_0_load_4_reg_1002;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_1_load_4_reg_1007;
reg   [63:0] input_activations_2_load_4_reg_1012;
reg   [63:0] input_activations_3_load_4_reg_1017;
reg   [63:0] input_activations_0_load_5_reg_1022;
reg   [63:0] input_activations_1_load_5_reg_1027;
reg   [63:0] input_activations_2_load_5_reg_1032;
reg   [63:0] input_activations_3_load_5_reg_1037;
reg   [63:0] input_activations_0_load_6_reg_1082;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_1_load_6_reg_1087;
reg   [63:0] input_activations_2_load_6_reg_1092;
reg   [63:0] input_activations_3_load_6_reg_1097;
reg   [63:0] input_activations_0_load_7_reg_1102;
reg   [63:0] input_activations_1_load_7_reg_1107;
reg   [63:0] input_activations_2_load_7_reg_1112;
reg   [63:0] input_activations_3_load_7_reg_1117;
reg   [63:0] input_activations_0_load_8_reg_1162;
wire    ap_CS_fsm_state6;
reg   [63:0] input_activations_1_load_8_reg_1167;
reg   [63:0] input_activations_2_load_8_reg_1172;
reg   [63:0] input_activations_3_load_8_reg_1177;
reg   [63:0] input_activations_0_load_9_reg_1182;
reg   [63:0] input_activations_1_load_9_reg_1187;
reg   [63:0] input_activations_2_load_9_reg_1192;
reg   [63:0] input_activations_3_load_9_reg_1197;
reg   [63:0] input_activations_0_load_10_reg_1242;
wire    ap_CS_fsm_state7;
reg   [63:0] input_activations_1_load_10_reg_1247;
reg   [63:0] input_activations_2_load_10_reg_1252;
reg   [63:0] input_activations_3_load_10_reg_1257;
reg   [63:0] input_activations_0_load_11_reg_1262;
reg   [63:0] input_activations_1_load_11_reg_1267;
reg   [63:0] input_activations_2_load_11_reg_1272;
reg   [63:0] input_activations_3_load_11_reg_1277;
reg   [63:0] input_activations_0_load_12_reg_1322;
wire    ap_CS_fsm_state8;
reg   [63:0] input_activations_1_load_12_reg_1327;
reg   [63:0] input_activations_2_load_12_reg_1332;
reg   [63:0] input_activations_3_load_12_reg_1337;
reg   [63:0] input_activations_0_load_13_reg_1342;
reg   [63:0] input_activations_1_load_13_reg_1347;
reg   [63:0] input_activations_2_load_13_reg_1352;
reg   [63:0] input_activations_3_load_13_reg_1357;
reg   [63:0] input_activations_0_load_14_reg_1402;
wire    ap_CS_fsm_state9;
reg   [63:0] input_activations_1_load_14_reg_1407;
reg   [63:0] input_activations_2_load_14_reg_1412;
reg   [63:0] input_activations_3_load_14_reg_1417;
reg   [63:0] input_activations_0_load_15_reg_1422;
reg   [63:0] input_activations_1_load_15_reg_1427;
reg   [63:0] input_activations_2_load_15_reg_1432;
reg   [63:0] input_activations_3_load_15_reg_1437;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_ready;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_d0;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce1;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce1;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce1;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_ready;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_d0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce1;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_ce0;
wire   [3:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    input_activations_0_ce1_local;
reg   [3:0] input_activations_0_address1_local;
reg    input_activations_0_ce0_local;
reg   [3:0] input_activations_0_address0_local;
reg    input_activations_1_ce1_local;
reg   [3:0] input_activations_1_address1_local;
reg    input_activations_1_ce0_local;
reg   [3:0] input_activations_1_address0_local;
reg    input_activations_2_ce1_local;
reg   [3:0] input_activations_2_address1_local;
reg    input_activations_2_ce0_local;
reg   [3:0] input_activations_2_address0_local;
reg    input_activations_3_ce1_local;
reg   [3:0] input_activations_3_address1_local;
reg    input_activations_3_ce0_local;
reg   [3:0] input_activations_3_address0_local;
reg   [63:0] grp_fu_1442_p0;
reg   [63:0] grp_fu_1442_p1;
reg   [1:0] grp_fu_1442_opcode;
reg    grp_fu_1442_ce;
reg    grp_fu_1446_ce;
reg    grp_fu_1450_ce;
reg    grp_fu_1454_ce;
reg    grp_fu_1458_ce;
reg    grp_fu_1462_ce;
reg    grp_fu_1466_ce;
reg    grp_fu_1470_ce;
reg    grp_fu_1474_ce;
reg    grp_fu_1478_ce;
reg    grp_fu_1482_ce;
reg    grp_fu_1486_ce;
reg    grp_fu_1490_ce;
reg    grp_fu_1494_ce;
reg    grp_fu_1498_ce;
reg    grp_fu_1502_ce;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_ready),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_d0),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_d0),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_d0),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_d0),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.input_activations_0_load(input_activations_0_load_reg_842),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.input_activations_1_load(input_activations_1_load_reg_847),.weights2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address0),.weights2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address1),.weights2_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.input_activations_2_load(input_activations_2_load_reg_852),.weights2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address0),.weights2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address1),.weights2_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.input_activations_3_load(input_activations_3_load_reg_857),.input_activations_0_load_1(input_activations_0_load_1_reg_862),.input_activations_1_load_1(input_activations_1_load_1_reg_867),.input_activations_2_load_1(input_activations_2_load_1_reg_872),.input_activations_3_load_1(input_activations_3_load_1_reg_877),.input_activations_0_load_2(input_activations_0_load_2_reg_922),.input_activations_1_load_2(input_activations_1_load_2_reg_927),.input_activations_2_load_2(input_activations_2_load_2_reg_932),.input_activations_3_load_2(input_activations_3_load_2_reg_937),.input_activations_0_load_3(input_activations_0_load_3_reg_942),.input_activations_1_load_3(input_activations_1_load_3_reg_947),.input_activations_2_load_3(input_activations_2_load_3_reg_952),.input_activations_3_load_3(input_activations_3_load_3_reg_957),.input_activations_0_load_4(input_activations_0_load_4_reg_1002),.input_activations_1_load_4(input_activations_1_load_4_reg_1007),.input_activations_2_load_4(input_activations_2_load_4_reg_1012),.input_activations_3_load_4(input_activations_3_load_4_reg_1017),.input_activations_0_load_5(input_activations_0_load_5_reg_1022),.input_activations_1_load_5(input_activations_1_load_5_reg_1027),.input_activations_2_load_5(input_activations_2_load_5_reg_1032),.input_activations_3_load_5(input_activations_3_load_5_reg_1037),.input_activations_0_load_6(input_activations_0_load_6_reg_1082),.input_activations_1_load_6(input_activations_1_load_6_reg_1087),.input_activations_2_load_6(input_activations_2_load_6_reg_1092),.input_activations_3_load_6(input_activations_3_load_6_reg_1097),.input_activations_0_load_7(input_activations_0_load_7_reg_1102),.input_activations_1_load_7(input_activations_1_load_7_reg_1107),.input_activations_2_load_7(input_activations_2_load_7_reg_1112),.input_activations_3_load_7(input_activations_3_load_7_reg_1117),.input_activations_0_load_8(input_activations_0_load_8_reg_1162),.input_activations_1_load_8(input_activations_1_load_8_reg_1167),.input_activations_2_load_8(input_activations_2_load_8_reg_1172),.input_activations_3_load_8(input_activations_3_load_8_reg_1177),.input_activations_0_load_9(input_activations_0_load_9_reg_1182),.input_activations_1_load_9(input_activations_1_load_9_reg_1187),.input_activations_2_load_9(input_activations_2_load_9_reg_1192),.input_activations_3_load_9(input_activations_3_load_9_reg_1197),.input_activations_0_load_10(input_activations_0_load_10_reg_1242),.input_activations_1_load_10(input_activations_1_load_10_reg_1247),.input_activations_2_load_10(input_activations_2_load_10_reg_1252),.input_activations_3_load_10(input_activations_3_load_10_reg_1257),.input_activations_0_load_11(input_activations_0_load_11_reg_1262),.input_activations_1_load_11(input_activations_1_load_11_reg_1267),.input_activations_2_load_11(input_activations_2_load_11_reg_1272),.input_activations_3_load_11(input_activations_3_load_11_reg_1277),.input_activations_0_load_12(input_activations_0_load_12_reg_1322),.input_activations_1_load_12(input_activations_1_load_12_reg_1327),.input_activations_2_load_12(input_activations_2_load_12_reg_1332),.input_activations_3_load_12(input_activations_3_load_12_reg_1337),.input_activations_0_load_13(input_activations_0_load_13_reg_1342),.input_activations_1_load_13(input_activations_1_load_13_reg_1347),.input_activations_2_load_13(input_activations_2_load_13_reg_1352),.input_activations_3_load_13(input_activations_3_load_13_reg_1357),.input_activations_0_load_14(input_activations_0_load_14_reg_1402),.input_activations_1_load_14(input_activations_1_load_14_reg_1407),.input_activations_2_load_14(input_activations_2_load_14_reg_1412),.input_activations_3_load_14(input_activations_3_load_14_reg_1417),.input_activations_0_load_15(input_activations_0_load_15_reg_1422),.input_activations_1_load_15(input_activations_1_load_15_reg_1427),.input_activations_2_load_15(input_activations_2_load_15_reg_1432),.input_activations_3_load_15(input_activations_3_load_15_reg_1437),.grp_fu_1442_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din0),.grp_fu_1442_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din1),.grp_fu_1442_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_opcode),.grp_fu_1442_p_dout0(grp_fu_3064_p_dout0),.grp_fu_1442_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_ce),.grp_fu_1446_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din0),.grp_fu_1446_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din1),.grp_fu_1446_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_opcode),.grp_fu_1446_p_dout0(grp_fu_3068_p_dout0),.grp_fu_1446_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_ce),.grp_fu_1450_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din0),.grp_fu_1450_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din1),.grp_fu_1450_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_opcode),.grp_fu_1450_p_dout0(grp_fu_3072_p_dout0),.grp_fu_1450_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_ce),.grp_fu_1454_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din0),.grp_fu_1454_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din1),.grp_fu_1454_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_opcode),.grp_fu_1454_p_dout0(grp_fu_3076_p_dout0),.grp_fu_1454_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_ce),.grp_fu_1458_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din0),.grp_fu_1458_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din1),.grp_fu_1458_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_opcode),.grp_fu_1458_p_dout0(grp_fu_3080_p_dout0),.grp_fu_1458_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_ce),.grp_fu_1462_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din0),.grp_fu_1462_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din1),.grp_fu_1462_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_opcode),.grp_fu_1462_p_dout0(grp_fu_3084_p_dout0),.grp_fu_1462_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_ce),.grp_fu_1466_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din0),.grp_fu_1466_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din1),.grp_fu_1466_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_opcode),.grp_fu_1466_p_dout0(grp_fu_3088_p_dout0),.grp_fu_1466_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_ce),.grp_fu_1470_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din0),.grp_fu_1470_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din1),.grp_fu_1470_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_opcode),.grp_fu_1470_p_dout0(grp_fu_3092_p_dout0),.grp_fu_1470_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_ce),.grp_fu_1474_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din0),.grp_fu_1474_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din1),.grp_fu_1474_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1474_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_ce),.grp_fu_1478_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din0),.grp_fu_1478_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din1),.grp_fu_1478_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1478_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_ce),.grp_fu_1482_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din0),.grp_fu_1482_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din1),.grp_fu_1482_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1482_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_ce),.grp_fu_1486_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din0),.grp_fu_1486_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din1),.grp_fu_1486_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1486_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_ce),.grp_fu_1490_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din0),.grp_fu_1490_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din1),.grp_fu_1490_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1490_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_ce),.grp_fu_1494_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din0),.grp_fu_1494_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din1),.grp_fu_1494_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1494_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_ce),.grp_fu_1498_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din0),.grp_fu_1498_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din1),.grp_fu_1498_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1498_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_ce),.grp_fu_1502_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din0),.grp_fu_1502_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din1),.grp_fu_1502_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1502_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_ready),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.biases2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_address0),.biases2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_ce0),.biases2_2_q0(biases2_2_q0),.biases2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_address0),.biases2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_ce0),.biases2_3_q0(biases2_3_q0),.grp_fu_1442_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din0),.grp_fu_1442_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din1),.grp_fu_1442_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_opcode),.grp_fu_1442_p_dout0(grp_fu_3064_p_dout0),.grp_fu_1442_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_0_load_10_reg_1242 <= input_activations_0_q1;
        input_activations_0_load_11_reg_1262 <= input_activations_0_q0;
        input_activations_1_load_10_reg_1247 <= input_activations_1_q1;
        input_activations_1_load_11_reg_1267 <= input_activations_1_q0;
        input_activations_2_load_10_reg_1252 <= input_activations_2_q1;
        input_activations_2_load_11_reg_1272 <= input_activations_2_q0;
        input_activations_3_load_10_reg_1257 <= input_activations_3_q1;
        input_activations_3_load_11_reg_1277 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_0_load_12_reg_1322 <= input_activations_0_q1;
        input_activations_0_load_13_reg_1342 <= input_activations_0_q0;
        input_activations_1_load_12_reg_1327 <= input_activations_1_q1;
        input_activations_1_load_13_reg_1347 <= input_activations_1_q0;
        input_activations_2_load_12_reg_1332 <= input_activations_2_q1;
        input_activations_2_load_13_reg_1352 <= input_activations_2_q0;
        input_activations_3_load_12_reg_1337 <= input_activations_3_q1;
        input_activations_3_load_13_reg_1357 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_0_load_14_reg_1402 <= input_activations_0_q1;
        input_activations_0_load_15_reg_1422 <= input_activations_0_q0;
        input_activations_1_load_14_reg_1407 <= input_activations_1_q1;
        input_activations_1_load_15_reg_1427 <= input_activations_1_q0;
        input_activations_2_load_14_reg_1412 <= input_activations_2_q1;
        input_activations_2_load_15_reg_1432 <= input_activations_2_q0;
        input_activations_3_load_14_reg_1417 <= input_activations_3_q1;
        input_activations_3_load_15_reg_1437 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_1_reg_862 <= input_activations_0_q0;
        input_activations_0_load_reg_842 <= input_activations_0_q1;
        input_activations_1_load_1_reg_867 <= input_activations_1_q0;
        input_activations_1_load_reg_847 <= input_activations_1_q1;
        input_activations_2_load_1_reg_872 <= input_activations_2_q0;
        input_activations_2_load_reg_852 <= input_activations_2_q1;
        input_activations_3_load_1_reg_877 <= input_activations_3_q0;
        input_activations_3_load_reg_857 <= input_activations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_2_reg_922 <= input_activations_0_q1;
        input_activations_0_load_3_reg_942 <= input_activations_0_q0;
        input_activations_1_load_2_reg_927 <= input_activations_1_q1;
        input_activations_1_load_3_reg_947 <= input_activations_1_q0;
        input_activations_2_load_2_reg_932 <= input_activations_2_q1;
        input_activations_2_load_3_reg_952 <= input_activations_2_q0;
        input_activations_3_load_2_reg_937 <= input_activations_3_q1;
        input_activations_3_load_3_reg_957 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_load_4_reg_1002 <= input_activations_0_q1;
        input_activations_0_load_5_reg_1022 <= input_activations_0_q0;
        input_activations_1_load_4_reg_1007 <= input_activations_1_q1;
        input_activations_1_load_5_reg_1027 <= input_activations_1_q0;
        input_activations_2_load_4_reg_1012 <= input_activations_2_q1;
        input_activations_2_load_5_reg_1032 <= input_activations_2_q0;
        input_activations_3_load_4_reg_1017 <= input_activations_3_q1;
        input_activations_3_load_5_reg_1037 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_load_6_reg_1082 <= input_activations_0_q1;
        input_activations_0_load_7_reg_1102 <= input_activations_0_q0;
        input_activations_1_load_6_reg_1087 <= input_activations_1_q1;
        input_activations_1_load_7_reg_1107 <= input_activations_1_q0;
        input_activations_2_load_6_reg_1092 <= input_activations_2_q1;
        input_activations_2_load_7_reg_1112 <= input_activations_2_q0;
        input_activations_3_load_6_reg_1097 <= input_activations_3_q1;
        input_activations_3_load_7_reg_1117 <= input_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_0_load_8_reg_1162 <= input_activations_0_q1;
        input_activations_0_load_9_reg_1182 <= input_activations_0_q0;
        input_activations_1_load_8_reg_1167 <= input_activations_1_q1;
        input_activations_1_load_9_reg_1187 <= input_activations_1_q0;
        input_activations_2_load_8_reg_1172 <= input_activations_2_q1;
        input_activations_2_load_9_reg_1192 <= input_activations_2_q0;
        input_activations_3_load_8_reg_1177 <= input_activations_3_q1;
        input_activations_3_load_9_reg_1197 <= input_activations_3_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_address0;
    end else begin
        activations_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_ce0;
    end else begin
        activations_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_d0;
    end else begin
        activations_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_2_we0;
    end else begin
        activations_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_address0;
    end else begin
        activations_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_ce0;
    end else begin
        activations_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_d0;
    end else begin
        activations_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_activations_3_we0;
    end else begin
        activations_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
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
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1442_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1442_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_ce;
    end else begin
        grp_fu_1442_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1442_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1442_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_opcode;
    end else begin
        grp_fu_1442_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1442_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1442_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din0;
    end else begin
        grp_fu_1442_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1442_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_grp_fu_1442_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1442_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1442_p_din1;
    end else begin
        grp_fu_1442_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1446_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_ce;
    end else begin
        grp_fu_1446_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1450_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_ce;
    end else begin
        grp_fu_1450_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1454_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_ce;
    end else begin
        grp_fu_1454_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1458_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_ce;
    end else begin
        grp_fu_1458_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1462_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_ce;
    end else begin
        grp_fu_1462_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1466_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_ce;
    end else begin
        grp_fu_1466_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1470_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_ce;
    end else begin
        grp_fu_1470_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1474_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_ce;
    end else begin
        grp_fu_1474_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1478_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_ce;
    end else begin
        grp_fu_1478_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1482_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_ce;
    end else begin
        grp_fu_1482_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1486_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_ce;
    end else begin
        grp_fu_1486_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1490_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_ce;
    end else begin
        grp_fu_1490_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1494_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_ce;
    end else begin
        grp_fu_1494_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1498_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_ce;
    end else begin
        grp_fu_1498_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1502_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_ce;
    end else begin
        grp_fu_1502_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address0_local = 64'd1;
    end else begin
        input_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address1_local = 64'd0;
    end else begin
        input_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce0_local = 1'b1;
    end else begin
        input_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce1_local = 1'b1;
    end else begin
        input_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address0_local = 64'd1;
    end else begin
        input_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address1_local = 64'd0;
    end else begin
        input_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce0_local = 1'b1;
    end else begin
        input_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce1_local = 1'b1;
    end else begin
        input_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address0_local = 64'd1;
    end else begin
        input_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address1_local = 64'd0;
    end else begin
        input_activations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce0_local = 1'b1;
    end else begin
        input_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce1_local = 1'b1;
    end else begin
        input_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address0_local = 64'd1;
    end else begin
        input_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address1_local = 64'd0;
    end else begin
        input_activations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce0_local = 1'b1;
    end else begin
        input_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce1_local = 1'b1;
    end else begin
        input_activations_3_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_0_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_1_address1;
assign activations_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_2_address1;
assign activations_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_activations_3_address1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_0_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_1_ce0;
assign biases2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_address0;
assign biases2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_2_ce0;
assign biases2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_address0;
assign biases2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_biases2_3_ce0;
assign grp_fu_3064_p_ce = grp_fu_1442_ce;
assign grp_fu_3064_p_din0 = grp_fu_1442_p0;
assign grp_fu_3064_p_din1 = grp_fu_1442_p1;
assign grp_fu_3064_p_opcode = grp_fu_1442_opcode;
assign grp_fu_3068_p_ce = grp_fu_1446_ce;
assign grp_fu_3068_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din0;
assign grp_fu_3068_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_din1;
assign grp_fu_3068_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1446_p_opcode;
assign grp_fu_3072_p_ce = grp_fu_1450_ce;
assign grp_fu_3072_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din0;
assign grp_fu_3072_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_din1;
assign grp_fu_3072_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1450_p_opcode;
assign grp_fu_3076_p_ce = grp_fu_1454_ce;
assign grp_fu_3076_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din0;
assign grp_fu_3076_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_din1;
assign grp_fu_3076_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1454_p_opcode;
assign grp_fu_3080_p_ce = grp_fu_1458_ce;
assign grp_fu_3080_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din0;
assign grp_fu_3080_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_din1;
assign grp_fu_3080_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1458_p_opcode;
assign grp_fu_3084_p_ce = grp_fu_1462_ce;
assign grp_fu_3084_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din0;
assign grp_fu_3084_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_din1;
assign grp_fu_3084_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1462_p_opcode;
assign grp_fu_3088_p_ce = grp_fu_1466_ce;
assign grp_fu_3088_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din0;
assign grp_fu_3088_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1466_p_din1;
assign grp_fu_3088_p_opcode = 2'd0;
assign grp_fu_3092_p_ce = grp_fu_1470_ce;
assign grp_fu_3092_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din0;
assign grp_fu_3092_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1470_p_din1;
assign grp_fu_3092_p_opcode = 2'd0;
assign grp_fu_3096_p_ce = grp_fu_1474_ce;
assign grp_fu_3096_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din0;
assign grp_fu_3096_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1474_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1478_ce;
assign grp_fu_3100_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din0;
assign grp_fu_3100_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1478_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1482_ce;
assign grp_fu_3104_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din0;
assign grp_fu_3104_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1482_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1486_ce;
assign grp_fu_3108_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din0;
assign grp_fu_3108_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1486_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1490_ce;
assign grp_fu_3112_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din0;
assign grp_fu_3112_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1490_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1494_ce;
assign grp_fu_3116_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din0;
assign grp_fu_3116_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1494_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1498_ce;
assign grp_fu_3120_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din0;
assign grp_fu_3120_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1498_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1502_ce;
assign grp_fu_3124_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din0;
assign grp_fu_3124_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_grp_fu_1502_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_782_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_ap_start_reg;
assign input_activations_0_address0 = input_activations_0_address0_local;
assign input_activations_0_address1 = input_activations_0_address1_local;
assign input_activations_0_ce0 = input_activations_0_ce0_local;
assign input_activations_0_ce1 = input_activations_0_ce1_local;
assign input_activations_1_address0 = input_activations_1_address0_local;
assign input_activations_1_address1 = input_activations_1_address1_local;
assign input_activations_1_ce0 = input_activations_1_ce0_local;
assign input_activations_1_ce1 = input_activations_1_ce1_local;
assign input_activations_2_address0 = input_activations_2_address0_local;
assign input_activations_2_address1 = input_activations_2_address1_local;
assign input_activations_2_ce0 = input_activations_2_ce0_local;
assign input_activations_2_ce1 = input_activations_2_ce1_local;
assign input_activations_3_address0 = input_activations_3_address0_local;
assign input_activations_3_address1 = input_activations_3_address1_local;
assign input_activations_3_ce0 = input_activations_3_ce0_local;
assign input_activations_3_ce1 = input_activations_3_ce1_local;
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address0;
assign weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_address1;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce0;
assign weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_0_ce1;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address0;
assign weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_address1;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce0;
assign weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_1_ce1;
assign weights2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address0;
assign weights2_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_address1;
assign weights2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce0;
assign weights2_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_2_ce1;
assign weights2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address0;
assign weights2_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_address1;
assign weights2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce0;
assign weights2_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_690_weights2_3_ce1;
endmodule 
