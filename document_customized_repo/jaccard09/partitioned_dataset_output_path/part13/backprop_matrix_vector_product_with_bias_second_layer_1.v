
module backprop_matrix_vector_product_with_bias_second_layer_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_address0,biases2_ce0,biases2_q0,weights2_address0,weights2_ce0,weights2_q0,weights2_address1,weights2_ce1,weights2_q1,activations_address0,activations_ce0,activations_we0,activations_d0,activations_address1,activations_ce1,activations_q1,input_activations_address0,input_activations_ce0,input_activations_q0,input_activations_address1,input_activations_ce1,input_activations_q1,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_opcode,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_opcode,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce);  
parameter    ap_ST_fsm_state1 = 36'd1;
parameter    ap_ST_fsm_state2 = 36'd2;
parameter    ap_ST_fsm_state3 = 36'd4;
parameter    ap_ST_fsm_state4 = 36'd8;
parameter    ap_ST_fsm_state5 = 36'd16;
parameter    ap_ST_fsm_state6 = 36'd32;
parameter    ap_ST_fsm_state7 = 36'd64;
parameter    ap_ST_fsm_state8 = 36'd128;
parameter    ap_ST_fsm_state9 = 36'd256;
parameter    ap_ST_fsm_state10 = 36'd512;
parameter    ap_ST_fsm_state11 = 36'd1024;
parameter    ap_ST_fsm_state12 = 36'd2048;
parameter    ap_ST_fsm_state13 = 36'd4096;
parameter    ap_ST_fsm_state14 = 36'd8192;
parameter    ap_ST_fsm_state15 = 36'd16384;
parameter    ap_ST_fsm_state16 = 36'd32768;
parameter    ap_ST_fsm_state17 = 36'd65536;
parameter    ap_ST_fsm_state18 = 36'd131072;
parameter    ap_ST_fsm_state19 = 36'd262144;
parameter    ap_ST_fsm_state20 = 36'd524288;
parameter    ap_ST_fsm_state21 = 36'd1048576;
parameter    ap_ST_fsm_state22 = 36'd2097152;
parameter    ap_ST_fsm_state23 = 36'd4194304;
parameter    ap_ST_fsm_state24 = 36'd8388608;
parameter    ap_ST_fsm_state25 = 36'd16777216;
parameter    ap_ST_fsm_state26 = 36'd33554432;
parameter    ap_ST_fsm_state27 = 36'd67108864;
parameter    ap_ST_fsm_state28 = 36'd134217728;
parameter    ap_ST_fsm_state29 = 36'd268435456;
parameter    ap_ST_fsm_state30 = 36'd536870912;
parameter    ap_ST_fsm_state31 = 36'd1073741824;
parameter    ap_ST_fsm_state32 = 36'd2147483648;
parameter    ap_ST_fsm_state33 = 36'd4294967296;
parameter    ap_ST_fsm_state34 = 36'd8589934592;
parameter    ap_ST_fsm_state35 = 36'd17179869184;
parameter    ap_ST_fsm_state36 = 36'd34359738368;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] biases2_address0;
output   biases2_ce0;
input  [63:0] biases2_q0;
output  [11:0] weights2_address0;
output   weights2_ce0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
input  [63:0] weights2_q1;
output  [5:0] activations_address0;
output   activations_ce0;
output   activations_we0;
output  [63:0] activations_d0;
output  [5:0] activations_address1;
output   activations_ce1;
input  [63:0] activations_q1;
output  [5:0] input_activations_address0;
output   input_activations_ce0;
input  [63:0] input_activations_q0;
output  [5:0] input_activations_address1;
output   input_activations_ce1;
input  [63:0] input_activations_q1;
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
output  [0:0] grp_fu_3291_p_opcode;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
output  [0:0] grp_fu_3295_p_opcode;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3151_p_din0;
output  [63:0] grp_fu_3151_p_din1;
input  [63:0] grp_fu_3151_p_dout0;
output   grp_fu_3151_p_ce;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] activations_address0;
reg activations_ce0;
reg activations_we0;
reg[63:0] activations_d0;
reg activations_ce1;
(* fsm_encoding = "none" *) reg   [35:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_load_reg_827;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_load_1_reg_832;
reg   [63:0] input_activations_load_2_reg_847;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_load_3_reg_852;
reg   [63:0] input_activations_load_4_reg_867;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_load_5_reg_872;
reg   [63:0] input_activations_load_6_reg_887;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_load_7_reg_892;
reg   [63:0] input_activations_load_8_reg_907;
wire    ap_CS_fsm_state6;
reg   [63:0] input_activations_load_9_reg_912;
reg   [63:0] input_activations_load_10_reg_927;
wire    ap_CS_fsm_state7;
reg   [63:0] input_activations_load_11_reg_932;
reg   [63:0] input_activations_load_12_reg_947;
wire    ap_CS_fsm_state8;
reg   [63:0] input_activations_load_13_reg_952;
reg   [63:0] input_activations_load_14_reg_967;
wire    ap_CS_fsm_state9;
reg   [63:0] input_activations_load_15_reg_972;
reg   [63:0] input_activations_load_16_reg_987;
wire    ap_CS_fsm_state10;
reg   [63:0] input_activations_load_17_reg_992;
reg   [63:0] input_activations_load_18_reg_1007;
wire    ap_CS_fsm_state11;
reg   [63:0] input_activations_load_19_reg_1012;
reg   [63:0] input_activations_load_20_reg_1027;
wire    ap_CS_fsm_state12;
reg   [63:0] input_activations_load_21_reg_1032;
reg   [63:0] input_activations_load_22_reg_1047;
wire    ap_CS_fsm_state13;
reg   [63:0] input_activations_load_23_reg_1052;
reg   [63:0] input_activations_load_24_reg_1067;
wire    ap_CS_fsm_state14;
reg   [63:0] input_activations_load_25_reg_1072;
reg   [63:0] input_activations_load_26_reg_1087;
wire    ap_CS_fsm_state15;
reg   [63:0] input_activations_load_27_reg_1092;
reg   [63:0] input_activations_load_28_reg_1107;
wire    ap_CS_fsm_state16;
reg   [63:0] input_activations_load_29_reg_1112;
reg   [63:0] input_activations_load_30_reg_1127;
wire    ap_CS_fsm_state17;
reg   [63:0] input_activations_load_31_reg_1132;
reg   [63:0] input_activations_load_32_reg_1147;
wire    ap_CS_fsm_state18;
reg   [63:0] input_activations_load_33_reg_1152;
reg   [63:0] input_activations_load_34_reg_1167;
wire    ap_CS_fsm_state19;
reg   [63:0] input_activations_load_35_reg_1172;
reg   [63:0] input_activations_load_36_reg_1187;
wire    ap_CS_fsm_state20;
reg   [63:0] input_activations_load_37_reg_1192;
reg   [63:0] input_activations_load_38_reg_1207;
wire    ap_CS_fsm_state21;
reg   [63:0] input_activations_load_39_reg_1212;
reg   [63:0] input_activations_load_40_reg_1227;
wire    ap_CS_fsm_state22;
reg   [63:0] input_activations_load_41_reg_1232;
reg   [63:0] input_activations_load_42_reg_1247;
wire    ap_CS_fsm_state23;
reg   [63:0] input_activations_load_43_reg_1252;
reg   [63:0] input_activations_load_44_reg_1267;
wire    ap_CS_fsm_state24;
reg   [63:0] input_activations_load_45_reg_1272;
reg   [63:0] input_activations_load_46_reg_1287;
wire    ap_CS_fsm_state25;
reg   [63:0] input_activations_load_47_reg_1292;
reg   [63:0] input_activations_load_48_reg_1307;
wire    ap_CS_fsm_state26;
reg   [63:0] input_activations_load_49_reg_1312;
reg   [63:0] input_activations_load_50_reg_1327;
wire    ap_CS_fsm_state27;
reg   [63:0] input_activations_load_51_reg_1332;
reg   [63:0] input_activations_load_52_reg_1347;
wire    ap_CS_fsm_state28;
reg   [63:0] input_activations_load_53_reg_1352;
reg   [63:0] input_activations_load_54_reg_1367;
wire    ap_CS_fsm_state29;
reg   [63:0] input_activations_load_55_reg_1372;
reg   [63:0] input_activations_load_56_reg_1387;
wire    ap_CS_fsm_state30;
reg   [63:0] input_activations_load_57_reg_1392;
reg   [63:0] input_activations_load_58_reg_1407;
wire    ap_CS_fsm_state31;
reg   [63:0] input_activations_load_59_reg_1412;
reg   [63:0] input_activations_load_60_reg_1427;
wire    ap_CS_fsm_state32;
reg   [63:0] input_activations_load_61_reg_1432;
reg   [63:0] input_activations_load_62_reg_1447;
wire    ap_CS_fsm_state33;
reg   [63:0] input_activations_load_63_reg_1452;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_ready;
wire   [5:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_d0;
wire   [11:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce0;
wire   [11:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_ready;
wire   [5:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_d0;
wire   [5:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce1;
wire   [5:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg;
wire    ap_CS_fsm_state34;
reg    grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
reg    input_activations_ce1_local;
reg   [5:0] input_activations_address1_local;
reg    input_activations_ce0_local;
reg   [5:0] input_activations_address0_local;
reg   [63:0] grp_fu_1457_p0;
reg   [63:0] grp_fu_1457_p1;
reg   [1:0] grp_fu_1457_opcode;
reg    grp_fu_1457_ce;
reg    grp_fu_1461_ce;
reg    grp_fu_1465_ce;
reg    grp_fu_1469_ce;
reg   [35:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
reg    ap_ST_fsm_state36_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1 grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_ready),.activations_address0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_address0),.activations_ce0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_ce0),.activations_we0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_we0),.activations_d0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_d0),.weights2_address0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address0),.weights2_ce0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address1),.weights2_ce1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce1),.weights2_q1(weights2_q1),.input_activations_load(input_activations_load_reg_827),.input_activations_load_1(input_activations_load_1_reg_832),.input_activations_load_2(input_activations_load_2_reg_847),.input_activations_load_3(input_activations_load_3_reg_852),.input_activations_load_4(input_activations_load_4_reg_867),.input_activations_load_5(input_activations_load_5_reg_872),.input_activations_load_6(input_activations_load_6_reg_887),.input_activations_load_7(input_activations_load_7_reg_892),.input_activations_load_8(input_activations_load_8_reg_907),.input_activations_load_9(input_activations_load_9_reg_912),.input_activations_load_10(input_activations_load_10_reg_927),.input_activations_load_11(input_activations_load_11_reg_932),.input_activations_load_12(input_activations_load_12_reg_947),.input_activations_load_13(input_activations_load_13_reg_952),.input_activations_load_14(input_activations_load_14_reg_967),.input_activations_load_15(input_activations_load_15_reg_972),.input_activations_load_16(input_activations_load_16_reg_987),.input_activations_load_17(input_activations_load_17_reg_992),.input_activations_load_18(input_activations_load_18_reg_1007),.input_activations_load_19(input_activations_load_19_reg_1012),.input_activations_load_20(input_activations_load_20_reg_1027),.input_activations_load_21(input_activations_load_21_reg_1032),.input_activations_load_22(input_activations_load_22_reg_1047),.input_activations_load_23(input_activations_load_23_reg_1052),.input_activations_load_24(input_activations_load_24_reg_1067),.input_activations_load_25(input_activations_load_25_reg_1072),.input_activations_load_26(input_activations_load_26_reg_1087),.input_activations_load_27(input_activations_load_27_reg_1092),.input_activations_load_28(input_activations_load_28_reg_1107),.input_activations_load_29(input_activations_load_29_reg_1112),.input_activations_load_30(input_activations_load_30_reg_1127),.input_activations_load_31(input_activations_load_31_reg_1132),.input_activations_load_32(input_activations_load_32_reg_1147),.input_activations_load_33(input_activations_load_33_reg_1152),.input_activations_load_34(input_activations_load_34_reg_1167),.input_activations_load_35(input_activations_load_35_reg_1172),.input_activations_load_36(input_activations_load_36_reg_1187),.input_activations_load_37(input_activations_load_37_reg_1192),.input_activations_load_38(input_activations_load_38_reg_1207),.input_activations_load_39(input_activations_load_39_reg_1212),.input_activations_load_40(input_activations_load_40_reg_1227),.input_activations_load_41(input_activations_load_41_reg_1232),.input_activations_load_42(input_activations_load_42_reg_1247),.input_activations_load_43(input_activations_load_43_reg_1252),.input_activations_load_44(input_activations_load_44_reg_1267),.input_activations_load_45(input_activations_load_45_reg_1272),.input_activations_load_46(input_activations_load_46_reg_1287),.input_activations_load_47(input_activations_load_47_reg_1292),.input_activations_load_48(input_activations_load_48_reg_1307),.input_activations_load_49(input_activations_load_49_reg_1312),.input_activations_load_50(input_activations_load_50_reg_1327),.input_activations_load_51(input_activations_load_51_reg_1332),.input_activations_load_52(input_activations_load_52_reg_1347),.input_activations_load_53(input_activations_load_53_reg_1352),.input_activations_load_54(input_activations_load_54_reg_1367),.input_activations_load_55(input_activations_load_55_reg_1372),.input_activations_load_56(input_activations_load_56_reg_1387),.input_activations_load_57(input_activations_load_57_reg_1392),.input_activations_load_58(input_activations_load_58_reg_1407),.input_activations_load_59(input_activations_load_59_reg_1412),.input_activations_load_60(input_activations_load_60_reg_1427),.input_activations_load_61(input_activations_load_61_reg_1432),.input_activations_load_62(input_activations_load_62_reg_1447),.input_activations_load_63(input_activations_load_63_reg_1452),.grp_fu_1457_p_din0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din0),.grp_fu_1457_p_din1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din1),.grp_fu_1457_p_opcode(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_opcode),.grp_fu_1457_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1457_p_ce(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_ce),.grp_fu_1461_p_din0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din0),.grp_fu_1461_p_din1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din1),.grp_fu_1461_p_opcode(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_opcode),.grp_fu_1461_p_dout0(grp_fu_3295_p_dout0),.grp_fu_1461_p_ce(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_ce),.grp_fu_1465_p_din0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din0),.grp_fu_1465_p_din1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din1),.grp_fu_1465_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1465_p_ce(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_ce),.grp_fu_1469_p_din0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din0),.grp_fu_1469_p_din1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din1),.grp_fu_1469_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1469_p_ce(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_ready),.activations_address0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address0),.activations_ce0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce0),.activations_we0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_we0),.activations_d0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_d0),.activations_address1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address1),.activations_ce1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce1),.activations_q1(activations_q1),.biases2_address0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_address0),.biases2_ce0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_ce0),.biases2_q0(biases2_q0),.grp_fu_1457_p_din0(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din0),.grp_fu_1457_p_din1(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din1),.grp_fu_1457_p_opcode(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_opcode),.grp_fu_1457_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1457_p_ce(grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state35)) begin
            grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
            grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_load_10_reg_927 <= input_activations_q1;
        input_activations_load_11_reg_932 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_load_12_reg_947 <= input_activations_q1;
        input_activations_load_13_reg_952 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_load_14_reg_967 <= input_activations_q1;
        input_activations_load_15_reg_972 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_load_16_reg_987 <= input_activations_q1;
        input_activations_load_17_reg_992 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_load_18_reg_1007 <= input_activations_q1;
        input_activations_load_19_reg_1012 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_load_1_reg_832 <= input_activations_q0;
        input_activations_load_reg_827 <= input_activations_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_load_20_reg_1027 <= input_activations_q1;
        input_activations_load_21_reg_1032 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_load_22_reg_1047 <= input_activations_q1;
        input_activations_load_23_reg_1052 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_load_24_reg_1067 <= input_activations_q1;
        input_activations_load_25_reg_1072 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_load_26_reg_1087 <= input_activations_q1;
        input_activations_load_27_reg_1092 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_load_28_reg_1107 <= input_activations_q1;
        input_activations_load_29_reg_1112 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_load_2_reg_847 <= input_activations_q1;
        input_activations_load_3_reg_852 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_load_30_reg_1127 <= input_activations_q1;
        input_activations_load_31_reg_1132 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        input_activations_load_32_reg_1147 <= input_activations_q1;
        input_activations_load_33_reg_1152 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        input_activations_load_34_reg_1167 <= input_activations_q1;
        input_activations_load_35_reg_1172 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        input_activations_load_36_reg_1187 <= input_activations_q1;
        input_activations_load_37_reg_1192 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        input_activations_load_38_reg_1207 <= input_activations_q1;
        input_activations_load_39_reg_1212 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        input_activations_load_40_reg_1227 <= input_activations_q1;
        input_activations_load_41_reg_1232 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        input_activations_load_42_reg_1247 <= input_activations_q1;
        input_activations_load_43_reg_1252 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        input_activations_load_44_reg_1267 <= input_activations_q1;
        input_activations_load_45_reg_1272 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        input_activations_load_46_reg_1287 <= input_activations_q1;
        input_activations_load_47_reg_1292 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        input_activations_load_48_reg_1307 <= input_activations_q1;
        input_activations_load_49_reg_1312 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_load_4_reg_867 <= input_activations_q1;
        input_activations_load_5_reg_872 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        input_activations_load_50_reg_1327 <= input_activations_q1;
        input_activations_load_51_reg_1332 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        input_activations_load_52_reg_1347 <= input_activations_q1;
        input_activations_load_53_reg_1352 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        input_activations_load_54_reg_1367 <= input_activations_q1;
        input_activations_load_55_reg_1372 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        input_activations_load_56_reg_1387 <= input_activations_q1;
        input_activations_load_57_reg_1392 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        input_activations_load_58_reg_1407 <= input_activations_q1;
        input_activations_load_59_reg_1412 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        input_activations_load_60_reg_1427 <= input_activations_q1;
        input_activations_load_61_reg_1432 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        input_activations_load_62_reg_1447 <= input_activations_q1;
        input_activations_load_63_reg_1452 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_load_6_reg_887 <= input_activations_q1;
        input_activations_load_7_reg_892 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_load_8_reg_907 <= input_activations_q1;
        input_activations_load_9_reg_912 <= input_activations_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_address0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_address0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_address0;
    end else begin
        activations_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_ce0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_ce0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_ce0;
    end else begin
        activations_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_ce1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_ce1;
    end else begin
        activations_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_d0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_d0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_d0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_d0;
    end else begin
        activations_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_we0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_we0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_we0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_activations_we0;
    end else begin
        activations_we0 = 1'b0;
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
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_done == 1'b0)) begin
        ap_ST_fsm_state34_blk = 1'b1;
    end else begin
        ap_ST_fsm_state34_blk = 1'b0;
    end
end
assign ap_ST_fsm_state35_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done == 1'b0)) begin
        ap_ST_fsm_state36_blk = 1'b1;
    end else begin
        ap_ST_fsm_state36_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1457_ce = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1457_ce = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_ce;
    end else begin
        grp_fu_1457_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1457_opcode = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1457_opcode = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_opcode;
    end else begin
        grp_fu_1457_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1457_p0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1457_p0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din0;
    end else begin
        grp_fu_1457_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1457_p1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_grp_fu_1457_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1457_p1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1457_p_din1;
    end else begin
        grp_fu_1457_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1461_ce = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_ce;
    end else begin
        grp_fu_1461_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1465_ce = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_ce;
    end else begin
        grp_fu_1465_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1469_ce = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_ce;
    end else begin
        grp_fu_1469_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        input_activations_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        input_activations_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        input_activations_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        input_activations_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        input_activations_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        input_activations_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        input_activations_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        input_activations_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        input_activations_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        input_activations_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        input_activations_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        input_activations_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        input_activations_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        input_activations_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        input_activations_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_address0_local = 64'd1;
    end else begin
        input_activations_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        input_activations_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        input_activations_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        input_activations_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        input_activations_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        input_activations_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        input_activations_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        input_activations_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        input_activations_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        input_activations_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        input_activations_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        input_activations_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        input_activations_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        input_activations_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        input_activations_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        input_activations_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_address1_local = 64'd0;
    end else begin
        input_activations_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_ce0_local = 1'b1;
    end else begin
        input_activations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        input_activations_ce1_local = 1'b1;
    end else begin
        input_activations_ce1_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_address1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_activations_address1;
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign biases2_address0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_address0;
assign biases2_ce0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_biases2_ce0;
assign grp_fu_3151_p_ce = grp_fu_1465_ce;
assign grp_fu_3151_p_din0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din0;
assign grp_fu_3151_p_din1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1465_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1469_ce;
assign grp_fu_3155_p_din0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din0;
assign grp_fu_3155_p_din1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1469_p_din1;
assign grp_fu_3291_p_ce = grp_fu_1457_ce;
assign grp_fu_3291_p_din0 = grp_fu_1457_p0;
assign grp_fu_3291_p_din1 = grp_fu_1457_p1;
assign grp_fu_3291_p_opcode = grp_fu_1457_opcode;
assign grp_fu_3295_p_ce = grp_fu_1461_ce;
assign grp_fu_3295_p_din0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din0;
assign grp_fu_3295_p_din1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_din1;
assign grp_fu_3295_p_opcode = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_grp_fu_1461_p_opcode;
assign grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_26_1_fu_809_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_ap_start_reg;
assign input_activations_address0 = input_activations_address0_local;
assign input_activations_address1 = input_activations_address1_local;
assign input_activations_ce0 = input_activations_ce0_local;
assign input_activations_ce1 = input_activations_ce1_local;
assign weights2_address0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address0;
assign weights2_address1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_address1;
assign weights2_ce0 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce0;
assign weights2_ce1 = grp_matrix_vector_product_with_bias_second_layer_1_Pipeline_VITIS_LOOP_44_1_fu_735_weights2_ce1;
endmodule 
