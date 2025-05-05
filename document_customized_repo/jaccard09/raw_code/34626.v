module backprop_matrix_vector_product_with_bias_output_layer_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_address0,input_activations_ce0,input_activations_q0,input_activations_address1,input_activations_ce1,input_activations_q1,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_opcode,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_opcode,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce); 
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
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
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
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [35:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_load_reg_839;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_load_64_reg_844;
reg   [63:0] input_activations_load_65_reg_859;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_load_66_reg_864;
reg   [63:0] input_activations_load_67_reg_879;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_load_68_reg_884;
reg   [63:0] input_activations_load_69_reg_899;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_load_70_reg_904;
reg   [63:0] input_activations_load_71_reg_919;
wire    ap_CS_fsm_state6;
reg   [63:0] input_activations_load_72_reg_924;
reg   [63:0] input_activations_load_73_reg_939;
wire    ap_CS_fsm_state7;
reg   [63:0] input_activations_load_74_reg_944;
reg   [63:0] input_activations_load_75_reg_959;
wire    ap_CS_fsm_state8;
reg   [63:0] input_activations_load_76_reg_964;
reg   [63:0] input_activations_load_77_reg_979;
wire    ap_CS_fsm_state9;
reg   [63:0] input_activations_load_78_reg_984;
reg   [63:0] input_activations_load_79_reg_999;
wire    ap_CS_fsm_state10;
reg   [63:0] input_activations_load_80_reg_1004;
reg   [63:0] input_activations_load_81_reg_1019;
wire    ap_CS_fsm_state11;
reg   [63:0] input_activations_load_82_reg_1024;
reg   [63:0] input_activations_load_83_reg_1039;
wire    ap_CS_fsm_state12;
reg   [63:0] input_activations_load_84_reg_1044;
reg   [63:0] input_activations_load_85_reg_1059;
wire    ap_CS_fsm_state13;
reg   [63:0] input_activations_load_86_reg_1064;
reg   [63:0] input_activations_load_87_reg_1079;
wire    ap_CS_fsm_state14;
reg   [63:0] input_activations_load_88_reg_1084;
reg   [63:0] input_activations_load_89_reg_1099;
wire    ap_CS_fsm_state15;
reg   [63:0] input_activations_load_90_reg_1104;
reg   [63:0] input_activations_load_91_reg_1119;
wire    ap_CS_fsm_state16;
reg   [63:0] input_activations_load_92_reg_1124;
reg   [63:0] input_activations_load_93_reg_1139;
wire    ap_CS_fsm_state17;
reg   [63:0] input_activations_load_94_reg_1144;
reg   [63:0] input_activations_load_95_reg_1159;
wire    ap_CS_fsm_state18;
reg   [63:0] input_activations_load_96_reg_1164;
reg   [63:0] input_activations_load_97_reg_1179;
wire    ap_CS_fsm_state19;
reg   [63:0] input_activations_load_98_reg_1184;
reg   [63:0] input_activations_load_99_reg_1199;
wire    ap_CS_fsm_state20;
reg   [63:0] input_activations_load_100_reg_1204;
reg   [63:0] input_activations_load_101_reg_1219;
wire    ap_CS_fsm_state21;
reg   [63:0] input_activations_load_102_reg_1224;
reg   [63:0] input_activations_load_103_reg_1239;
wire    ap_CS_fsm_state22;
reg   [63:0] input_activations_load_104_reg_1244;
reg   [63:0] input_activations_load_105_reg_1259;
wire    ap_CS_fsm_state23;
reg   [63:0] input_activations_load_106_reg_1264;
reg   [63:0] input_activations_load_107_reg_1279;
wire    ap_CS_fsm_state24;
reg   [63:0] input_activations_load_108_reg_1284;
reg   [63:0] input_activations_load_109_reg_1299;
wire    ap_CS_fsm_state25;
reg   [63:0] input_activations_load_110_reg_1304;
reg   [63:0] input_activations_load_111_reg_1319;
wire    ap_CS_fsm_state26;
reg   [63:0] input_activations_load_112_reg_1324;
reg   [63:0] input_activations_load_113_reg_1339;
wire    ap_CS_fsm_state27;
reg   [63:0] input_activations_load_114_reg_1344;
reg   [63:0] input_activations_load_115_reg_1359;
wire    ap_CS_fsm_state28;
reg   [63:0] input_activations_load_116_reg_1364;
reg   [63:0] input_activations_load_117_reg_1379;
wire    ap_CS_fsm_state29;
reg   [63:0] input_activations_load_118_reg_1384;
reg   [63:0] input_activations_load_119_reg_1399;
wire    ap_CS_fsm_state30;
reg   [63:0] input_activations_load_120_reg_1404;
reg   [63:0] input_activations_load_121_reg_1419;
wire    ap_CS_fsm_state31;
reg   [63:0] input_activations_load_122_reg_1424;
reg   [63:0] input_activations_load_123_reg_1439;
wire    ap_CS_fsm_state32;
reg   [63:0] input_activations_load_124_reg_1444;
reg   [63:0] input_activations_load_125_reg_1459;
wire    ap_CS_fsm_state33;
reg   [63:0] input_activations_load_126_reg_1464;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1_ap_vld;
wire   [7:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg;
wire    ap_CS_fsm_state34;
reg    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
reg    input_activations_ce1_local;
reg   [5:0] input_activations_address1_local;
reg    input_activations_ce0_local;
reg   [5:0] input_activations_address0_local;
reg   [63:0] grp_fu_1469_p0;
reg   [63:0] grp_fu_1469_p1;
reg   [1:0] grp_fu_1469_opcode;
reg    grp_fu_1469_ce;
reg    grp_fu_1473_ce;
reg    grp_fu_1477_ce;
reg    grp_fu_1481_ce;
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
#0 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2_ap_vld),.activations_1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1_ap_vld),.weights3_address0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address0),.weights3_ce0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address1),.weights3_ce1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce1),.weights3_q1(weights3_q1),.input_activations_load(input_activations_load_reg_839),.input_activations_load_64(input_activations_load_64_reg_844),.input_activations_load_65(input_activations_load_65_reg_859),.input_activations_load_66(input_activations_load_66_reg_864),.input_activations_load_67(input_activations_load_67_reg_879),.input_activations_load_68(input_activations_load_68_reg_884),.input_activations_load_69(input_activations_load_69_reg_899),.input_activations_load_70(input_activations_load_70_reg_904),.input_activations_load_71(input_activations_load_71_reg_919),.input_activations_load_72(input_activations_load_72_reg_924),.input_activations_load_73(input_activations_load_73_reg_939),.input_activations_load_74(input_activations_load_74_reg_944),.input_activations_load_75(input_activations_load_75_reg_959),.input_activations_load_76(input_activations_load_76_reg_964),.input_activations_load_77(input_activations_load_77_reg_979),.input_activations_load_78(input_activations_load_78_reg_984),.input_activations_load_79(input_activations_load_79_reg_999),.input_activations_load_80(input_activations_load_80_reg_1004),.input_activations_load_81(input_activations_load_81_reg_1019),.input_activations_load_82(input_activations_load_82_reg_1024),.input_activations_load_83(input_activations_load_83_reg_1039),.input_activations_load_84(input_activations_load_84_reg_1044),.input_activations_load_85(input_activations_load_85_reg_1059),.input_activations_load_86(input_activations_load_86_reg_1064),.input_activations_load_87(input_activations_load_87_reg_1079),.input_activations_load_88(input_activations_load_88_reg_1084),.input_activations_load_89(input_activations_load_89_reg_1099),.input_activations_load_90(input_activations_load_90_reg_1104),.input_activations_load_91(input_activations_load_91_reg_1119),.input_activations_load_92(input_activations_load_92_reg_1124),.input_activations_load_93(input_activations_load_93_reg_1139),.input_activations_load_94(input_activations_load_94_reg_1144),.input_activations_load_95(input_activations_load_95_reg_1159),.input_activations_load_96(input_activations_load_96_reg_1164),.input_activations_load_97(input_activations_load_97_reg_1179),.input_activations_load_98(input_activations_load_98_reg_1184),.input_activations_load_99(input_activations_load_99_reg_1199),.input_activations_load_100(input_activations_load_100_reg_1204),.input_activations_load_101(input_activations_load_101_reg_1219),.input_activations_load_102(input_activations_load_102_reg_1224),.input_activations_load_103(input_activations_load_103_reg_1239),.input_activations_load_104(input_activations_load_104_reg_1244),.input_activations_load_105(input_activations_load_105_reg_1259),.input_activations_load_106(input_activations_load_106_reg_1264),.input_activations_load_107(input_activations_load_107_reg_1279),.input_activations_load_108(input_activations_load_108_reg_1284),.input_activations_load_109(input_activations_load_109_reg_1299),.input_activations_load_110(input_activations_load_110_reg_1304),.input_activations_load_111(input_activations_load_111_reg_1319),.input_activations_load_112(input_activations_load_112_reg_1324),.input_activations_load_113(input_activations_load_113_reg_1339),.input_activations_load_114(input_activations_load_114_reg_1344),.input_activations_load_115(input_activations_load_115_reg_1359),.input_activations_load_116(input_activations_load_116_reg_1364),.input_activations_load_117(input_activations_load_117_reg_1379),.input_activations_load_118(input_activations_load_118_reg_1384),.input_activations_load_119(input_activations_load_119_reg_1399),.input_activations_load_120(input_activations_load_120_reg_1404),.input_activations_load_121(input_activations_load_121_reg_1419),.input_activations_load_122(input_activations_load_122_reg_1424),.input_activations_load_123(input_activations_load_123_reg_1439),.input_activations_load_124(input_activations_load_124_reg_1444),.input_activations_load_125(input_activations_load_125_reg_1459),.input_activations_load_126(input_activations_load_126_reg_1464),.grp_fu_1469_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din0),.grp_fu_1469_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din1),.grp_fu_1469_p_opcode(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_opcode),.grp_fu_1469_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1469_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_ce),.grp_fu_1473_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din0),.grp_fu_1473_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din1),.grp_fu_1473_p_opcode(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_opcode),.grp_fu_1473_p_dout0(grp_fu_3295_p_dout0),.grp_fu_1473_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_ce),.grp_fu_1477_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din0),.grp_fu_1477_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din1),.grp_fu_1477_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1477_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_ce),.grp_fu_1481_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din0),.grp_fu_1481_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din1),.grp_fu_1481_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1481_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1469_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din0),.grp_fu_1469_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din1),.grp_fu_1469_p_opcode(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_opcode),.grp_fu_1469_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1469_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state35)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        input_activations_load_100_reg_1204 <= input_activations_q0;
        input_activations_load_99_reg_1199 <= input_activations_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        input_activations_load_101_reg_1219 <= input_activations_q1;
        input_activations_load_102_reg_1224 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        input_activations_load_103_reg_1239 <= input_activations_q1;
        input_activations_load_104_reg_1244 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        input_activations_load_105_reg_1259 <= input_activations_q1;
        input_activations_load_106_reg_1264 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        input_activations_load_107_reg_1279 <= input_activations_q1;
        input_activations_load_108_reg_1284 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        input_activations_load_109_reg_1299 <= input_activations_q1;
        input_activations_load_110_reg_1304 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        input_activations_load_111_reg_1319 <= input_activations_q1;
        input_activations_load_112_reg_1324 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        input_activations_load_113_reg_1339 <= input_activations_q1;
        input_activations_load_114_reg_1344 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        input_activations_load_115_reg_1359 <= input_activations_q1;
        input_activations_load_116_reg_1364 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        input_activations_load_117_reg_1379 <= input_activations_q1;
        input_activations_load_118_reg_1384 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        input_activations_load_119_reg_1399 <= input_activations_q1;
        input_activations_load_120_reg_1404 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        input_activations_load_121_reg_1419 <= input_activations_q1;
        input_activations_load_122_reg_1424 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        input_activations_load_123_reg_1439 <= input_activations_q1;
        input_activations_load_124_reg_1444 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        input_activations_load_125_reg_1459 <= input_activations_q1;
        input_activations_load_126_reg_1464 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_load_64_reg_844 <= input_activations_q0;
        input_activations_load_reg_839 <= input_activations_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_load_65_reg_859 <= input_activations_q1;
        input_activations_load_66_reg_864 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_load_67_reg_879 <= input_activations_q1;
        input_activations_load_68_reg_884 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_load_69_reg_899 <= input_activations_q1;
        input_activations_load_70_reg_904 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_activations_load_71_reg_919 <= input_activations_q1;
        input_activations_load_72_reg_924 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_activations_load_73_reg_939 <= input_activations_q1;
        input_activations_load_74_reg_944 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_activations_load_75_reg_959 <= input_activations_q1;
        input_activations_load_76_reg_964 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_activations_load_77_reg_979 <= input_activations_q1;
        input_activations_load_78_reg_984 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        input_activations_load_79_reg_999 <= input_activations_q1;
        input_activations_load_80_reg_1004 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        input_activations_load_81_reg_1019 <= input_activations_q1;
        input_activations_load_82_reg_1024 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        input_activations_load_83_reg_1039 <= input_activations_q1;
        input_activations_load_84_reg_1044 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        input_activations_load_85_reg_1059 <= input_activations_q1;
        input_activations_load_86_reg_1064 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        input_activations_load_87_reg_1079 <= input_activations_q1;
        input_activations_load_88_reg_1084 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        input_activations_load_89_reg_1099 <= input_activations_q1;
        input_activations_load_90_reg_1104 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        input_activations_load_91_reg_1119 <= input_activations_q1;
        input_activations_load_92_reg_1124 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        input_activations_load_93_reg_1139 <= input_activations_q1;
        input_activations_load_94_reg_1144 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        input_activations_load_95_reg_1159 <= input_activations_q1;
        input_activations_load_96_reg_1164 <= input_activations_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        input_activations_load_97_reg_1179 <= input_activations_q1;
        input_activations_load_98_reg_1184 <= input_activations_q0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_activations_2_ap_vld;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_done == 1'b0)) begin
        ap_ST_fsm_state34_blk = 1'b1;
    end else begin
        ap_ST_fsm_state34_blk = 1'b0;
    end
end
assign ap_ST_fsm_state35_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done == 1'b0)) begin
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
    if ((((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1469_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1469_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_ce;
    end else begin
        grp_fu_1469_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1469_opcode = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1469_opcode = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_opcode;
    end else begin
        grp_fu_1469_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1469_p0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1469_p0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din0;
    end else begin
        grp_fu_1469_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_1469_p1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_grp_fu_1469_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1469_p1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1469_p_din1;
    end else begin
        grp_fu_1469_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1473_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_ce;
    end else begin
        grp_fu_1473_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1477_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_ce;
    end else begin
        grp_fu_1477_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1481_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_ce;
    end else begin
        grp_fu_1481_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
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
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_biases3_ce0;
assign grp_fu_3151_p_ce = grp_fu_1477_ce;
assign grp_fu_3151_p_din0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din0;
assign grp_fu_3151_p_din1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1477_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1481_ce;
assign grp_fu_3155_p_din0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din0;
assign grp_fu_3155_p_din1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1481_p_din1;
assign grp_fu_3291_p_ce = grp_fu_1469_ce;
assign grp_fu_3291_p_din0 = grp_fu_1469_p0;
assign grp_fu_3291_p_din1 = grp_fu_1469_p1;
assign grp_fu_3291_p_opcode = grp_fu_1469_opcode;
assign grp_fu_3295_p_ce = grp_fu_1473_ce;
assign grp_fu_3295_p_din0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din0;
assign grp_fu_3295_p_din1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_din1;
assign grp_fu_3295_p_opcode = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_grp_fu_1473_p_opcode;
assign grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_817_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_ap_start_reg;
assign input_activations_address0 = input_activations_address0_local;
assign input_activations_address1 = input_activations_address1_local;
assign input_activations_ce0 = input_activations_ce0_local;
assign input_activations_ce1 = input_activations_ce1_local;
assign weights3_address0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address0;
assign weights3_address1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_address1;
assign weights3_ce0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce0;
assign weights3_ce1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_fu_739_weights3_ce1;
endmodule 