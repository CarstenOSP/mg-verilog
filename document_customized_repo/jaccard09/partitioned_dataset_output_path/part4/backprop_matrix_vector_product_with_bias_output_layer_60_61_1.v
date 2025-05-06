
module backprop_matrix_vector_product_with_bias_output_layer_60_61_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce);  
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
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
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
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_802;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_807;
reg   [63:0] input_activations_0_load_32_reg_812;
reg   [63:0] input_activations_1_load_32_reg_817;
reg   [63:0] input_activations_0_load_33_reg_842;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_33_reg_847;
reg   [63:0] input_activations_0_load_34_reg_852;
reg   [63:0] input_activations_1_load_34_reg_857;
reg   [63:0] input_activations_0_load_35_reg_882;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_1_load_35_reg_887;
reg   [63:0] input_activations_0_load_36_reg_892;
reg   [63:0] input_activations_1_load_36_reg_897;
reg   [63:0] input_activations_0_load_37_reg_922;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_1_load_37_reg_927;
reg   [63:0] input_activations_0_load_38_reg_932;
reg   [63:0] input_activations_1_load_38_reg_937;
reg   [63:0] input_activations_0_load_39_reg_962;
wire    ap_CS_fsm_state6;
reg   [63:0] input_activations_1_load_39_reg_967;
reg   [63:0] input_activations_0_load_40_reg_972;
reg   [63:0] input_activations_1_load_40_reg_977;
reg   [63:0] input_activations_0_load_41_reg_1002;
wire    ap_CS_fsm_state7;
reg   [63:0] input_activations_1_load_41_reg_1007;
reg   [63:0] input_activations_0_load_42_reg_1012;
reg   [63:0] input_activations_1_load_42_reg_1017;
reg   [63:0] input_activations_0_load_43_reg_1042;
wire    ap_CS_fsm_state8;
reg   [63:0] input_activations_1_load_43_reg_1047;
reg   [63:0] input_activations_0_load_44_reg_1052;
reg   [63:0] input_activations_1_load_44_reg_1057;
reg   [63:0] input_activations_0_load_45_reg_1082;
wire    ap_CS_fsm_state9;
reg   [63:0] input_activations_1_load_45_reg_1087;
reg   [63:0] input_activations_0_load_46_reg_1092;
reg   [63:0] input_activations_1_load_46_reg_1097;
reg   [63:0] input_activations_0_load_47_reg_1122;
wire    ap_CS_fsm_state10;
reg   [63:0] input_activations_1_load_47_reg_1127;
reg   [63:0] input_activations_0_load_48_reg_1132;
reg   [63:0] input_activations_1_load_48_reg_1137;
reg   [63:0] input_activations_0_load_49_reg_1162;
wire    ap_CS_fsm_state11;
reg   [63:0] input_activations_1_load_49_reg_1167;
reg   [63:0] input_activations_0_load_50_reg_1172;
reg   [63:0] input_activations_1_load_50_reg_1177;
reg   [63:0] input_activations_0_load_51_reg_1202;
wire    ap_CS_fsm_state12;
reg   [63:0] input_activations_1_load_51_reg_1207;
reg   [63:0] input_activations_0_load_52_reg_1212;
reg   [63:0] input_activations_1_load_52_reg_1217;
reg   [63:0] input_activations_0_load_53_reg_1242;
wire    ap_CS_fsm_state13;
reg   [63:0] input_activations_1_load_53_reg_1247;
reg   [63:0] input_activations_0_load_54_reg_1252;
reg   [63:0] input_activations_1_load_54_reg_1257;
reg   [63:0] input_activations_0_load_55_reg_1282;
wire    ap_CS_fsm_state14;
reg   [63:0] input_activations_1_load_55_reg_1287;
reg   [63:0] input_activations_0_load_56_reg_1292;
reg   [63:0] input_activations_1_load_56_reg_1297;
reg   [63:0] input_activations_0_load_57_reg_1322;
wire    ap_CS_fsm_state15;
reg   [63:0] input_activations_1_load_57_reg_1327;
reg   [63:0] input_activations_0_load_58_reg_1332;
reg   [63:0] input_activations_1_load_58_reg_1337;
reg   [63:0] input_activations_0_load_59_reg_1362;
wire    ap_CS_fsm_state16;
reg   [63:0] input_activations_1_load_59_reg_1367;
reg   [63:0] input_activations_0_load_60_reg_1372;
reg   [63:0] input_activations_1_load_60_reg_1377;
reg   [63:0] input_activations_0_load_61_reg_1402;
wire    ap_CS_fsm_state17;
reg   [63:0] input_activations_1_load_61_reg_1407;
reg   [63:0] input_activations_0_load_62_reg_1412;
reg   [63:0] input_activations_1_load_62_reg_1417;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1_ap_vld;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg;
wire    ap_CS_fsm_state18;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg;
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
reg   [63:0] grp_fu_1422_p0;
reg   [63:0] grp_fu_1422_p1;
reg   [1:0] grp_fu_1422_opcode;
reg    grp_fu_1422_ce;
reg    grp_fu_1426_ce;
reg    grp_fu_1430_ce;
reg    grp_fu_1434_ce;
reg    grp_fu_1438_ce;
reg    grp_fu_1442_ce;
reg    grp_fu_1446_ce;
reg    grp_fu_1450_ce;
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
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2_ap_vld),.activations_1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1_ap_vld),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address1),.weights3_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.input_activations_0_load(input_activations_0_load_reg_802),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address1),.weights3_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.input_activations_1_load(input_activations_1_load_reg_807),.input_activations_0_load_32(input_activations_0_load_32_reg_812),.input_activations_1_load_32(input_activations_1_load_32_reg_817),.input_activations_0_load_33(input_activations_0_load_33_reg_842),.input_activations_1_load_33(input_activations_1_load_33_reg_847),.input_activations_0_load_34(input_activations_0_load_34_reg_852),.input_activations_1_load_34(input_activations_1_load_34_reg_857),.input_activations_0_load_35(input_activations_0_load_35_reg_882),.input_activations_1_load_35(input_activations_1_load_35_reg_887),.input_activations_0_load_36(input_activations_0_load_36_reg_892),.input_activations_1_load_36(input_activations_1_load_36_reg_897),.input_activations_0_load_37(input_activations_0_load_37_reg_922),.input_activations_1_load_37(input_activations_1_load_37_reg_927),.input_activations_0_load_38(input_activations_0_load_38_reg_932),.input_activations_1_load_38(input_activations_1_load_38_reg_937),.input_activations_0_load_39(input_activations_0_load_39_reg_962),.input_activations_1_load_39(input_activations_1_load_39_reg_967),.input_activations_0_load_40(input_activations_0_load_40_reg_972),.input_activations_1_load_40(input_activations_1_load_40_reg_977),.input_activations_0_load_41(input_activations_0_load_41_reg_1002),.input_activations_1_load_41(input_activations_1_load_41_reg_1007),.input_activations_0_load_42(input_activations_0_load_42_reg_1012),.input_activations_1_load_42(input_activations_1_load_42_reg_1017),.input_activations_0_load_43(input_activations_0_load_43_reg_1042),.input_activations_1_load_43(input_activations_1_load_43_reg_1047),.input_activations_0_load_44(input_activations_0_load_44_reg_1052),.input_activations_1_load_44(input_activations_1_load_44_reg_1057),.input_activations_0_load_45(input_activations_0_load_45_reg_1082),.input_activations_1_load_45(input_activations_1_load_45_reg_1087),.input_activations_0_load_46(input_activations_0_load_46_reg_1092),.input_activations_1_load_46(input_activations_1_load_46_reg_1097),.input_activations_0_load_47(input_activations_0_load_47_reg_1122),.input_activations_1_load_47(input_activations_1_load_47_reg_1127),.input_activations_0_load_48(input_activations_0_load_48_reg_1132),.input_activations_1_load_48(input_activations_1_load_48_reg_1137),.input_activations_0_load_49(input_activations_0_load_49_reg_1162),.input_activations_1_load_49(input_activations_1_load_49_reg_1167),.input_activations_0_load_50(input_activations_0_load_50_reg_1172),.input_activations_1_load_50(input_activations_1_load_50_reg_1177),.input_activations_0_load_51(input_activations_0_load_51_reg_1202),.input_activations_1_load_51(input_activations_1_load_51_reg_1207),.input_activations_0_load_52(input_activations_0_load_52_reg_1212),.input_activations_1_load_52(input_activations_1_load_52_reg_1217),.input_activations_0_load_53(input_activations_0_load_53_reg_1242),.input_activations_1_load_53(input_activations_1_load_53_reg_1247),.input_activations_0_load_54(input_activations_0_load_54_reg_1252),.input_activations_1_load_54(input_activations_1_load_54_reg_1257),.input_activations_0_load_55(input_activations_0_load_55_reg_1282),.input_activations_1_load_55(input_activations_1_load_55_reg_1287),.input_activations_0_load_56(input_activations_0_load_56_reg_1292),.input_activations_1_load_56(input_activations_1_load_56_reg_1297),.input_activations_0_load_57(input_activations_0_load_57_reg_1322),.input_activations_1_load_57(input_activations_1_load_57_reg_1327),.input_activations_0_load_58(input_activations_0_load_58_reg_1332),.input_activations_1_load_58(input_activations_1_load_58_reg_1337),.input_activations_0_load_59(input_activations_0_load_59_reg_1362),.input_activations_1_load_59(input_activations_1_load_59_reg_1367),.input_activations_0_load_60(input_activations_0_load_60_reg_1372),.input_activations_1_load_60(input_activations_1_load_60_reg_1377),.input_activations_0_load_61(input_activations_0_load_61_reg_1402),.input_activations_1_load_61(input_activations_1_load_61_reg_1407),.input_activations_0_load_62(input_activations_0_load_62_reg_1412),.input_activations_1_load_62(input_activations_1_load_62_reg_1417),.grp_fu_1422_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din0),.grp_fu_1422_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din1),.grp_fu_1422_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_opcode),.grp_fu_1422_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1422_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_ce),.grp_fu_1426_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din0),.grp_fu_1426_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din1),.grp_fu_1426_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_opcode),.grp_fu_1426_p_dout0(grp_fu_2846_p_dout0),.grp_fu_1426_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_ce),.grp_fu_1430_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din0),.grp_fu_1430_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din1),.grp_fu_1430_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_opcode),.grp_fu_1430_p_dout0(grp_fu_2850_p_dout0),.grp_fu_1430_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_ce),.grp_fu_1434_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din0),.grp_fu_1434_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din1),.grp_fu_1434_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_opcode),.grp_fu_1434_p_dout0(grp_fu_2854_p_dout0),.grp_fu_1434_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_ce),.grp_fu_1438_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din0),.grp_fu_1438_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din1),.grp_fu_1438_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1438_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_ce),.grp_fu_1442_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din0),.grp_fu_1442_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din1),.grp_fu_1442_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1442_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_ce),.grp_fu_1446_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din0),.grp_fu_1446_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din1),.grp_fu_1446_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1446_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_ce),.grp_fu_1450_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din0),.grp_fu_1450_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din1),.grp_fu_1450_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1450_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1422_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din0),.grp_fu_1422_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din1),.grp_fu_1422_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_opcode),.grp_fu_1422_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1422_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_32_reg_812 <= input_activations_0_q0;
        input_activations_0_load_reg_802 <= input_activations_0_q1;
        input_activations_1_load_32_reg_817 <= input_activations_1_q0;
        input_activations_1_load_reg_807 <= input_activations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_33_reg_842 <= input_activations_0_q1;
        input_activations_0_load_34_reg_852 <= input_activations_0_q0;
        input_activations_1_load_33_reg_847 <= input_activations_1_q1;
        input_activations_1_load_34_reg_857 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_load_35_reg_882 <= input_activations_0_q1;
        input_activations_0_load_36_reg_892 <= input_activations_0_q0;
        input_activations_1_load_35_reg_887 <= input_activations_1_q1;
        input_activations_1_load_36_reg_897 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_load_37_reg_922 <= input_activations_0_q1;
        input_activations_0_load_38_reg_932 <= input_activations_0_q0;
        input_activations_1_load_37_reg_927 <= input_activations_1_q1;
        input_activations_1_load_38_reg_937 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_0_load_39_reg_962 <= input_activations_0_q1;
        input_activations_0_load_40_reg_972 <= input_activations_0_q0;
        input_activations_1_load_39_reg_967 <= input_activations_1_q1;
        input_activations_1_load_40_reg_977 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_0_load_41_reg_1002 <= input_activations_0_q1;
        input_activations_0_load_42_reg_1012 <= input_activations_0_q0;
        input_activations_1_load_41_reg_1007 <= input_activations_1_q1;
        input_activations_1_load_42_reg_1017 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_0_load_43_reg_1042 <= input_activations_0_q1;
        input_activations_0_load_44_reg_1052 <= input_activations_0_q0;
        input_activations_1_load_43_reg_1047 <= input_activations_1_q1;
        input_activations_1_load_44_reg_1057 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_0_load_45_reg_1082 <= input_activations_0_q1;
        input_activations_0_load_46_reg_1092 <= input_activations_0_q0;
        input_activations_1_load_45_reg_1087 <= input_activations_1_q1;
        input_activations_1_load_46_reg_1097 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_0_load_47_reg_1122 <= input_activations_0_q1;
        input_activations_0_load_48_reg_1132 <= input_activations_0_q0;
        input_activations_1_load_47_reg_1127 <= input_activations_1_q1;
        input_activations_1_load_48_reg_1137 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_0_load_49_reg_1162 <= input_activations_0_q1;
        input_activations_0_load_50_reg_1172 <= input_activations_0_q0;
        input_activations_1_load_49_reg_1167 <= input_activations_1_q1;
        input_activations_1_load_50_reg_1177 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_0_load_51_reg_1202 <= input_activations_0_q1;
        input_activations_0_load_52_reg_1212 <= input_activations_0_q0;
        input_activations_1_load_51_reg_1207 <= input_activations_1_q1;
        input_activations_1_load_52_reg_1217 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_0_load_53_reg_1242 <= input_activations_0_q1;
        input_activations_0_load_54_reg_1252 <= input_activations_0_q0;
        input_activations_1_load_53_reg_1247 <= input_activations_1_q1;
        input_activations_1_load_54_reg_1257 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_0_load_55_reg_1282 <= input_activations_0_q1;
        input_activations_0_load_56_reg_1292 <= input_activations_0_q0;
        input_activations_1_load_55_reg_1287 <= input_activations_1_q1;
        input_activations_1_load_56_reg_1297 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_0_load_57_reg_1322 <= input_activations_0_q1;
        input_activations_0_load_58_reg_1332 <= input_activations_0_q0;
        input_activations_1_load_57_reg_1327 <= input_activations_1_q1;
        input_activations_1_load_58_reg_1337 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_0_load_59_reg_1362 <= input_activations_0_q1;
        input_activations_0_load_60_reg_1372 <= input_activations_0_q0;
        input_activations_1_load_59_reg_1367 <= input_activations_1_q1;
        input_activations_1_load_60_reg_1377 <= input_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_0_load_61_reg_1402 <= input_activations_0_q1;
        input_activations_0_load_62_reg_1412 <= input_activations_0_q0;
        input_activations_1_load_61_reg_1407 <= input_activations_1_q1;
        input_activations_1_load_62_reg_1417 <= input_activations_1_q0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_activations_2_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_done == 1'b0)) begin
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
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done == 1'b0)) begin
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
    if ((((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1422_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1422_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_ce;
    end else begin
        grp_fu_1422_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1422_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1422_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_opcode;
    end else begin
        grp_fu_1422_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1422_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1422_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din0;
    end else begin
        grp_fu_1422_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_1422_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_grp_fu_1422_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1422_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1422_p_din1;
    end else begin
        grp_fu_1422_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1426_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_ce;
    end else begin
        grp_fu_1426_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1430_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_ce;
    end else begin
        grp_fu_1430_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1434_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_ce;
    end else begin
        grp_fu_1434_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1438_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_ce;
    end else begin
        grp_fu_1438_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1442_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_ce;
    end else begin
        grp_fu_1442_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1446_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_ce;
    end else begin
        grp_fu_1446_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1450_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_ce;
    end else begin
        grp_fu_1450_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
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
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_biases3_ce0;
assign grp_fu_2842_p_ce = grp_fu_1422_ce;
assign grp_fu_2842_p_din0 = grp_fu_1422_p0;
assign grp_fu_2842_p_din1 = grp_fu_1422_p1;
assign grp_fu_2842_p_opcode = grp_fu_1422_opcode;
assign grp_fu_2846_p_ce = grp_fu_1426_ce;
assign grp_fu_2846_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din0;
assign grp_fu_2846_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_din1;
assign grp_fu_2846_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1426_p_opcode;
assign grp_fu_2850_p_ce = grp_fu_1430_ce;
assign grp_fu_2850_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din0;
assign grp_fu_2850_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_din1;
assign grp_fu_2850_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1430_p_opcode;
assign grp_fu_2854_p_ce = grp_fu_1434_ce;
assign grp_fu_2854_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din0;
assign grp_fu_2854_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_din1;
assign grp_fu_2854_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1434_p_opcode;
assign grp_fu_2874_p_ce = grp_fu_1438_ce;
assign grp_fu_2874_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din0;
assign grp_fu_2874_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1438_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1442_ce;
assign grp_fu_2878_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din0;
assign grp_fu_2878_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1442_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1446_ce;
assign grp_fu_2882_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din0;
assign grp_fu_2882_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1446_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1450_ce;
assign grp_fu_2886_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din0;
assign grp_fu_2886_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_grp_fu_1450_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_770_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_ap_start_reg;
assign input_activations_0_address0 = input_activations_0_address0_local;
assign input_activations_0_address1 = input_activations_0_address1_local;
assign input_activations_0_ce0 = input_activations_0_ce0_local;
assign input_activations_0_ce1 = input_activations_0_ce1_local;
assign input_activations_1_address0 = input_activations_1_address0_local;
assign input_activations_1_address1 = input_activations_1_address1_local;
assign input_activations_1_ce0 = input_activations_1_ce0_local;
assign input_activations_1_ce1 = input_activations_1_ce1_local;
assign weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address0;
assign weights3_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_address1;
assign weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce0;
assign weights3_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_0_ce1;
assign weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address0;
assign weights3_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_address1;
assign weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce0;
assign weights3_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_688_weights3_1_ce1;
endmodule 
