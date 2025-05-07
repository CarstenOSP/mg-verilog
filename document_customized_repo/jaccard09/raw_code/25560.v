module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce); 
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [4:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [4:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [4:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [4:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
output  [4:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [4:0] input_activations_0_address1;
output   input_activations_0_ce1;
input  [63:0] input_activations_0_q1;
output  [4:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [4:0] input_activations_1_address1;
output   input_activations_1_ce1;
input  [63:0] input_activations_1_q1;
output  [63:0] grp_fu_2842_p_din0;
output  [63:0] grp_fu_2842_p_din1;
output  [0:0] grp_fu_2842_p_opcode;
input  [63:0] grp_fu_2842_p_dout0;
output   grp_fu_2842_p_ce;
output  [63:0] grp_fu_2846_p_din0;
output  [63:0] grp_fu_2846_p_din1;
output  [0:0] grp_fu_2846_p_opcode;
input  [63:0] grp_fu_2846_p_dout0;
output   grp_fu_2846_p_ce;
output  [63:0] grp_fu_2850_p_din0;
output  [63:0] grp_fu_2850_p_din1;
output  [0:0] grp_fu_2850_p_opcode;
input  [63:0] grp_fu_2850_p_dout0;
output   grp_fu_2850_p_ce;
output  [63:0] grp_fu_2854_p_din0;
output  [63:0] grp_fu_2854_p_din1;
output  [0:0] grp_fu_2854_p_opcode;
input  [63:0] grp_fu_2854_p_dout0;
output   grp_fu_2854_p_ce;
output  [63:0] grp_fu_2874_p_din0;
output  [63:0] grp_fu_2874_p_din1;
input  [63:0] grp_fu_2874_p_dout0;
output   grp_fu_2874_p_ce;
output  [63:0] grp_fu_2878_p_din0;
output  [63:0] grp_fu_2878_p_din1;
input  [63:0] grp_fu_2878_p_dout0;
output   grp_fu_2878_p_ce;
output  [63:0] grp_fu_2882_p_din0;
output  [63:0] grp_fu_2882_p_din1;
input  [63:0] grp_fu_2882_p_dout0;
output   grp_fu_2882_p_ce;
output  [63:0] grp_fu_2886_p_din0;
output  [63:0] grp_fu_2886_p_din1;
input  [63:0] grp_fu_2886_p_dout0;
output   grp_fu_2886_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[4:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg activations_1_ce1;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_800;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_805;
reg   [63:0] input_activations_0_load_1_reg_810;
reg   [63:0] input_activations_1_load_1_reg_815;
reg   [63:0] input_activations_0_load_2_reg_840;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_2_reg_845;
reg   [63:0] input_activations_0_load_3_reg_850;
reg   [63:0] input_activations_1_load_3_reg_855;
reg   [63:0] input_activations_0_load_4_reg_880;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_1_load_4_reg_885;
reg   [63:0] input_activations_0_load_5_reg_890;
reg   [63:0] input_activations_1_load_5_reg_895;
reg   [63:0] input_activations_0_load_6_reg_920;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_1_load_6_reg_925;
reg   [63:0] input_activations_0_load_7_reg_930;
reg   [63:0] input_activations_1_load_7_reg_935;
reg   [63:0] input_activations_0_load_8_reg_960;
wire    ap_CS_fsm_state6;
reg   [63:0] input_activations_1_load_8_reg_965;
reg   [63:0] input_activations_0_load_9_reg_970;
reg   [63:0] input_activations_1_load_9_reg_975;
reg   [63:0] input_activations_0_load_10_reg_1000;
wire    ap_CS_fsm_state7;
reg   [63:0] input_activations_1_load_10_reg_1005;
reg   [63:0] input_activations_0_load_11_reg_1010;
reg   [63:0] input_activations_1_load_11_reg_1015;
reg   [63:0] input_activations_0_load_12_reg_1040;
wire    ap_CS_fsm_state8;
reg   [63:0] input_activations_1_load_12_reg_1045;
reg   [63:0] input_activations_0_load_13_reg_1050;
reg   [63:0] input_activations_1_load_13_reg_1055;
reg   [63:0] input_activations_0_load_14_reg_1080;
wire    ap_CS_fsm_state9;
reg   [63:0] input_activations_1_load_14_reg_1085;
reg   [63:0] input_activations_0_load_15_reg_1090;
reg   [63:0] input_activations_1_load_15_reg_1095;
reg   [63:0] input_activations_0_load_16_reg_1120;
wire    ap_CS_fsm_state10;
reg   [63:0] input_activations_1_load_16_reg_1125;
reg   [63:0] input_activations_0_load_17_reg_1130;
reg   [63:0] input_activations_1_load_17_reg_1135;
reg   [63:0] input_activations_0_load_18_reg_1160;
wire    ap_CS_fsm_state11;
reg   [63:0] input_activations_1_load_18_reg_1165;
reg   [63:0] input_activations_0_load_19_reg_1170;
reg   [63:0] input_activations_1_load_19_reg_1175;
reg   [63:0] input_activations_0_load_20_reg_1200;
wire    ap_CS_fsm_state12;
reg   [63:0] input_activations_1_load_20_reg_1205;
reg   [63:0] input_activations_0_load_21_reg_1210;
reg   [63:0] input_activations_1_load_21_reg_1215;
reg   [63:0] input_activations_0_load_22_reg_1240;
wire    ap_CS_fsm_state13;
reg   [63:0] input_activations_1_load_22_reg_1245;
reg   [63:0] input_activations_0_load_23_reg_1250;
reg   [63:0] input_activations_1_load_23_reg_1255;
reg   [63:0] input_activations_0_load_24_reg_1280;
wire    ap_CS_fsm_state14;
reg   [63:0] input_activations_1_load_24_reg_1285;
reg   [63:0] input_activations_0_load_25_reg_1290;
reg   [63:0] input_activations_1_load_25_reg_1295;
reg   [63:0] input_activations_0_load_26_reg_1320;
wire    ap_CS_fsm_state15;
reg   [63:0] input_activations_1_load_26_reg_1325;
reg   [63:0] input_activations_0_load_27_reg_1330;
reg   [63:0] input_activations_1_load_27_reg_1335;
reg   [63:0] input_activations_0_load_28_reg_1360;
wire    ap_CS_fsm_state16;
reg   [63:0] input_activations_1_load_28_reg_1365;
reg   [63:0] input_activations_0_load_29_reg_1370;
reg   [63:0] input_activations_1_load_29_reg_1375;
reg   [63:0] input_activations_0_load_30_reg_1400;
wire    ap_CS_fsm_state17;
reg   [63:0] input_activations_1_load_30_reg_1405;
reg   [63:0] input_activations_0_load_31_reg_1410;
reg   [63:0] input_activations_1_load_31_reg_1415;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_d0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce1;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg;
wire    ap_CS_fsm_state18;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
reg    input_activations_0_ce1_local;
reg   [4:0] input_activations_0_address1_local;
reg    input_activations_0_ce0_local;
reg   [4:0] input_activations_0_address0_local;
reg    input_activations_1_ce1_local;
reg   [4:0] input_activations_1_address1_local;
reg    input_activations_1_ce0_local;
reg   [4:0] input_activations_1_address0_local;
reg   [63:0] grp_fu_1420_p0;
reg   [63:0] grp_fu_1420_p1;
reg   [1:0] grp_fu_1420_opcode;
reg    grp_fu_1420_ce;
reg    grp_fu_1424_ce;
reg    grp_fu_1428_ce;
reg    grp_fu_1432_ce;
reg    grp_fu_1436_ce;
reg    grp_fu_1440_ce;
reg    grp_fu_1444_ce;
reg    grp_fu_1448_ce;
reg   [19:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_ready),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_d0),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_d0),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.input_activations_0_load(input_activations_0_load_reg_800),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.input_activations_1_load(input_activations_1_load_reg_805),.input_activations_0_load_1(input_activations_0_load_1_reg_810),.input_activations_1_load_1(input_activations_1_load_1_reg_815),.input_activations_0_load_2(input_activations_0_load_2_reg_840),.input_activations_1_load_2(input_activations_1_load_2_reg_845),.input_activations_0_load_3(input_activations_0_load_3_reg_850),.input_activations_1_load_3(input_activations_1_load_3_reg_855),.input_activations_0_load_4(input_activations_0_load_4_reg_880),.input_activations_1_load_4(input_activations_1_load_4_reg_885),.input_activations_0_load_5(input_activations_0_load_5_reg_890),.input_activations_1_load_5(input_activations_1_load_5_reg_895),.input_activations_0_load_6(input_activations_0_load_6_reg_920),.input_activations_1_load_6(input_activations_1_load_6_reg_925),.input_activations_0_load_7(input_activations_0_load_7_reg_930),.input_activations_1_load_7(input_activations_1_load_7_reg_935),.input_activations_0_load_8(input_activations_0_load_8_reg_960),.input_activations_1_load_8(input_activations_1_load_8_reg_965),.input_activations_0_load_9(input_activations_0_load_9_reg_970),.input_activations_1_load_9(input_activations_1_load_9_reg_975),.input_activations_0_load_10(input_activations_0_load_10_reg_1000),.input_activations_1_load_10(input_activations_1_load_10_reg_1005),.input_activations_0_load_11(input_activations_0_load_11_reg_1010),.input_activations_1_load_11(input_activations_1_load_11_reg_1015),.input_activations_0_load_12(input_activations_0_load_12_reg_1040),.input_activations_1_load_12(input_activations_1_load_12_reg_1045),.input_activations_0_load_13(input_activations_0_load_13_reg_1050),.input_activations_1_load_13(input_activations_1_load_13_reg_1055),.input_activations_0_load_14(input_activations_0_load_14_reg_1080),.input_activations_1_load_14(input_activations_1_load_14_reg_1085),.input_activations_0_load_15(input_activations_0_load_15_reg_1090),.input_activations_1_load_15(input_activations_1_load_15_reg_1095),.input_activations_0_load_16(input_activations_0_load_16_reg_1120),.input_activations_1_load_16(input_activations_1_load_16_reg_1125),.input_activations_0_load_17(input_activations_0_load_17_reg_1130),.input_activations_1_load_17(input_activations_1_load_17_reg_1135),.input_activations_0_load_18(input_activations_0_load_18_reg_1160),.input_activations_1_load_18(input_activations_1_load_18_reg_1165),.input_activations_0_load_19(input_activations_0_load_19_reg_1170),.input_activations_1_load_19(input_activations_1_load_19_reg_1175),.input_activations_0_load_20(input_activations_0_load_20_reg_1200),.input_activations_1_load_20(input_activations_1_load_20_reg_1205),.input_activations_0_load_21(input_activations_0_load_21_reg_1210),.input_activations_1_load_21(input_activations_1_load_21_reg_1215),.input_activations_0_load_22(input_activations_0_load_22_reg_1240),.input_activations_1_load_22(input_activations_1_load_22_reg_1245),.input_activations_0_load_23(input_activations_0_load_23_reg_1250),.input_activations_1_load_23(input_activations_1_load_23_reg_1255),.input_activations_0_load_24(input_activations_0_load_24_reg_1280),.input_activations_1_load_24(input_activations_1_load_24_reg_1285),.input_activations_0_load_25(input_activations_0_load_25_reg_1290),.input_activations_1_load_25(input_activations_1_load_25_reg_1295),.input_activations_0_load_26(input_activations_0_load_26_reg_1320),.input_activations_1_load_26(input_activations_1_load_26_reg_1325),.input_activations_0_load_27(input_activations_0_load_27_reg_1330),.input_activations_1_load_27(input_activations_1_load_27_reg_1335),.input_activations_0_load_28(input_activations_0_load_28_reg_1360),.input_activations_1_load_28(input_activations_1_load_28_reg_1365),.input_activations_0_load_29(input_activations_0_load_29_reg_1370),.input_activations_1_load_29(input_activations_1_load_29_reg_1375),.input_activations_0_load_30(input_activations_0_load_30_reg_1400),.input_activations_1_load_30(input_activations_1_load_30_reg_1405),.input_activations_0_load_31(input_activations_0_load_31_reg_1410),.input_activations_1_load_31(input_activations_1_load_31_reg_1415),.grp_fu_1420_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din0),.grp_fu_1420_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din1),.grp_fu_1420_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_opcode),.grp_fu_1420_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1420_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_ce),.grp_fu_1424_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din0),.grp_fu_1424_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din1),.grp_fu_1424_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_opcode),.grp_fu_1424_p_dout0(grp_fu_2846_p_dout0),.grp_fu_1424_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_ce),.grp_fu_1428_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din0),.grp_fu_1428_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din1),.grp_fu_1428_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_opcode),.grp_fu_1428_p_dout0(grp_fu_2850_p_dout0),.grp_fu_1428_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_ce),.grp_fu_1432_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din0),.grp_fu_1432_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din1),.grp_fu_1432_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_opcode),.grp_fu_1432_p_dout0(grp_fu_2854_p_dout0),.grp_fu_1432_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_ce),.grp_fu_1436_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din0),.grp_fu_1436_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din1),.grp_fu_1436_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1436_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_ce),.grp_fu_1440_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din0),.grp_fu_1440_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din1),.grp_fu_1440_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1440_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_ce),.grp_fu_1444_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din0),.grp_fu_1444_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din1),.grp_fu_1444_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1444_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_ce),.grp_fu_1448_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din0),.grp_fu_1448_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din1),.grp_fu_1448_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1448_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_ready),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.grp_fu_1420_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din0),.grp_fu_1420_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din1),.grp_fu_1420_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_opcode),.grp_fu_1420_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1420_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_0_load_10_reg_1000 <= input_activations_0_q1;
        input_activations_0_load_11_reg_1010 <= input_activations_0_q0;
        input_activations_1_load_10_reg_1005 <= input_activations_1_q1;
        input_activations_1_load_11_reg_1015 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_0_load_12_reg_1040 <= input_activations_0_q1;
        input_activations_0_load_13_reg_1050 <= input_activations_0_q0;
        input_activations_1_load_12_reg_1045 <= input_activations_1_q1;
        input_activations_1_load_13_reg_1055 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_0_load_14_reg_1080 <= input_activations_0_q1;
        input_activations_0_load_15_reg_1090 <= input_activations_0_q0;
        input_activations_1_load_14_reg_1085 <= input_activations_1_q1;
        input_activations_1_load_15_reg_1095 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_0_load_16_reg_1120 <= input_activations_0_q1;
        input_activations_0_load_17_reg_1130 <= input_activations_0_q0;
        input_activations_1_load_16_reg_1125 <= input_activations_1_q1;
        input_activations_1_load_17_reg_1135 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_0_load_18_reg_1160 <= input_activations_0_q1;
        input_activations_0_load_19_reg_1170 <= input_activations_0_q0;
        input_activations_1_load_18_reg_1165 <= input_activations_1_q1;
        input_activations_1_load_19_reg_1175 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_1_reg_810 <= input_activations_0_q0;
        input_activations_0_load_reg_800 <= input_activations_0_q1;
        input_activations_1_load_1_reg_815 <= input_activations_1_q0;
        input_activations_1_load_reg_805 <= input_activations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_0_load_20_reg_1200 <= input_activations_0_q1;
        input_activations_0_load_21_reg_1210 <= input_activations_0_q0;
        input_activations_1_load_20_reg_1205 <= input_activations_1_q1;
        input_activations_1_load_21_reg_1215 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_0_load_22_reg_1240 <= input_activations_0_q1;
        input_activations_0_load_23_reg_1250 <= input_activations_0_q0;
        input_activations_1_load_22_reg_1245 <= input_activations_1_q1;
        input_activations_1_load_23_reg_1255 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_0_load_24_reg_1280 <= input_activations_0_q1;
        input_activations_0_load_25_reg_1290 <= input_activations_0_q0;
        input_activations_1_load_24_reg_1285 <= input_activations_1_q1;
        input_activations_1_load_25_reg_1295 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_0_load_26_reg_1320 <= input_activations_0_q1;
        input_activations_0_load_27_reg_1330 <= input_activations_0_q0;
        input_activations_1_load_26_reg_1325 <= input_activations_1_q1;
        input_activations_1_load_27_reg_1335 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_0_load_28_reg_1360 <= input_activations_0_q1;
        input_activations_0_load_29_reg_1370 <= input_activations_0_q0;
        input_activations_1_load_28_reg_1365 <= input_activations_1_q1;
        input_activations_1_load_29_reg_1375 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_2_reg_840 <= input_activations_0_q1;
        input_activations_0_load_3_reg_850 <= input_activations_0_q0;
        input_activations_1_load_2_reg_845 <= input_activations_1_q1;
        input_activations_1_load_3_reg_855 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_0_load_30_reg_1400 <= input_activations_0_q1;
        input_activations_0_load_31_reg_1410 <= input_activations_0_q0;
        input_activations_1_load_30_reg_1405 <= input_activations_1_q1;
        input_activations_1_load_31_reg_1415 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_load_4_reg_880 <= input_activations_0_q1;
        input_activations_0_load_5_reg_890 <= input_activations_0_q0;
        input_activations_1_load_4_reg_885 <= input_activations_1_q1;
        input_activations_1_load_5_reg_895 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_load_6_reg_920 <= input_activations_0_q1;
        input_activations_0_load_7_reg_930 <= input_activations_0_q0;
        input_activations_1_load_6_reg_925 <= input_activations_1_q1;
        input_activations_1_load_7_reg_935 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_0_load_8_reg_960 <= input_activations_0_q1;
        input_activations_0_load_9_reg_970 <= input_activations_0_q0;
        input_activations_1_load_8_reg_965 <= input_activations_1_q1;
        input_activations_1_load_9_reg_975 <= input_activations_1_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
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
    if ((((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1420_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1420_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_ce;
    end else begin
        grp_fu_1420_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1420_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1420_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_opcode;
    end else begin
        grp_fu_1420_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1420_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1420_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din0;
    end else begin
        grp_fu_1420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1420_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_grp_fu_1420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1420_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1420_p_din1;
    end else begin
        grp_fu_1420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1424_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_ce;
    end else begin
        grp_fu_1424_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1428_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_ce;
    end else begin
        grp_fu_1428_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1432_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_ce;
    end else begin
        grp_fu_1432_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1436_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_ce;
    end else begin
        grp_fu_1436_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1440_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_ce;
    end else begin
        grp_fu_1440_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1444_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_ce;
    end else begin
        grp_fu_1444_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1448_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_ce;
    end else begin
        grp_fu_1448_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
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
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_0_ce0_local = 1'b1;
    end else begin
        input_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_0_ce1_local = 1'b1;
    end else begin
        input_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
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
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_1_ce0_local = 1'b1;
    end else begin
        input_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_1_ce1_local = 1'b1;
    end else begin
        input_activations_1_ce1_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_0_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_activations_1_address1;
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_0_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_biases2_1_ce0;
assign grp_fu_2842_p_ce = grp_fu_1420_ce;
assign grp_fu_2842_p_din0 = grp_fu_1420_p0;
assign grp_fu_2842_p_din1 = grp_fu_1420_p1;
assign grp_fu_2842_p_opcode = grp_fu_1420_opcode;
assign grp_fu_2846_p_ce = grp_fu_1424_ce;
assign grp_fu_2846_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din0;
assign grp_fu_2846_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_din1;
assign grp_fu_2846_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1424_p_opcode;
assign grp_fu_2850_p_ce = grp_fu_1428_ce;
assign grp_fu_2850_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din0;
assign grp_fu_2850_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_din1;
assign grp_fu_2850_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1428_p_opcode;
assign grp_fu_2854_p_ce = grp_fu_1432_ce;
assign grp_fu_2854_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din0;
assign grp_fu_2854_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_din1;
assign grp_fu_2854_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1432_p_opcode;
assign grp_fu_2874_p_ce = grp_fu_1436_ce;
assign grp_fu_2874_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din0;
assign grp_fu_2874_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1436_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1440_ce;
assign grp_fu_2878_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din0;
assign grp_fu_2878_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1440_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1444_ce;
assign grp_fu_2882_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din0;
assign grp_fu_2882_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1444_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1448_ce;
assign grp_fu_2886_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din0;
assign grp_fu_2886_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_grp_fu_1448_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_768_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_ap_start_reg;
assign input_activations_0_address0 = input_activations_0_address0_local;
assign input_activations_0_address1 = input_activations_0_address1_local;
assign input_activations_0_ce0 = input_activations_0_ce0_local;
assign input_activations_0_ce1 = input_activations_0_ce1_local;
assign input_activations_1_address0 = input_activations_1_address0_local;
assign input_activations_1_address1 = input_activations_1_address1_local;
assign input_activations_1_ce0 = input_activations_1_ce0_local;
assign input_activations_1_ce1 = input_activations_1_ce1_local;
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address0;
assign weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_address1;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce0;
assign weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_0_ce1;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address0;
assign weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_address1;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce0;
assign weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_688_weights2_1_ce1;
endmodule 