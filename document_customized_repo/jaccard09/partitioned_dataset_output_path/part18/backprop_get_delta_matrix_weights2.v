
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [9:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [9:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [9:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [9:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [9:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [9:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [9:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [3:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [3:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [3:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [3:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [3:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [3:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [3:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [3:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_802;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_807;
reg   [63:0] output_difference_2_load_reg_812;
reg   [63:0] output_difference_3_load_reg_817;
reg   [63:0] output_difference_0_load_1_reg_822;
reg   [63:0] output_difference_1_load_1_reg_827;
reg   [63:0] output_difference_2_load_1_reg_832;
reg   [63:0] output_difference_3_load_1_reg_837;
reg   [63:0] output_difference_0_load_2_reg_882;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_2_reg_887;
reg   [63:0] output_difference_2_load_2_reg_892;
reg   [63:0] output_difference_3_load_2_reg_897;
reg   [63:0] output_difference_0_load_3_reg_902;
reg   [63:0] output_difference_1_load_3_reg_907;
reg   [63:0] output_difference_2_load_3_reg_912;
reg   [63:0] output_difference_3_load_3_reg_917;
reg   [63:0] output_difference_0_load_4_reg_962;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_1_load_4_reg_967;
reg   [63:0] output_difference_2_load_4_reg_972;
reg   [63:0] output_difference_3_load_4_reg_977;
reg   [63:0] output_difference_0_load_5_reg_982;
reg   [63:0] output_difference_1_load_5_reg_987;
reg   [63:0] output_difference_2_load_5_reg_992;
reg   [63:0] output_difference_3_load_5_reg_997;
reg   [63:0] output_difference_0_load_6_reg_1042;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_1_load_6_reg_1047;
reg   [63:0] output_difference_2_load_6_reg_1052;
reg   [63:0] output_difference_3_load_6_reg_1057;
reg   [63:0] output_difference_0_load_7_reg_1062;
reg   [63:0] output_difference_1_load_7_reg_1067;
reg   [63:0] output_difference_2_load_7_reg_1072;
reg   [63:0] output_difference_3_load_7_reg_1077;
reg   [63:0] output_difference_0_load_8_reg_1122;
wire    ap_CS_fsm_state6;
reg   [63:0] output_difference_1_load_8_reg_1127;
reg   [63:0] output_difference_2_load_8_reg_1132;
reg   [63:0] output_difference_3_load_8_reg_1137;
reg   [63:0] output_difference_0_load_9_reg_1142;
reg   [63:0] output_difference_1_load_9_reg_1147;
reg   [63:0] output_difference_2_load_9_reg_1152;
reg   [63:0] output_difference_3_load_9_reg_1157;
reg   [63:0] output_difference_0_load_10_reg_1202;
wire    ap_CS_fsm_state7;
reg   [63:0] output_difference_1_load_10_reg_1207;
reg   [63:0] output_difference_2_load_10_reg_1212;
reg   [63:0] output_difference_3_load_10_reg_1217;
reg   [63:0] output_difference_0_load_11_reg_1222;
reg   [63:0] output_difference_1_load_11_reg_1227;
reg   [63:0] output_difference_2_load_11_reg_1232;
reg   [63:0] output_difference_3_load_11_reg_1237;
reg   [63:0] output_difference_0_load_12_reg_1282;
wire    ap_CS_fsm_state8;
reg   [63:0] output_difference_1_load_12_reg_1287;
reg   [63:0] output_difference_2_load_12_reg_1292;
reg   [63:0] output_difference_3_load_12_reg_1297;
reg   [63:0] output_difference_0_load_13_reg_1302;
reg   [63:0] output_difference_1_load_13_reg_1307;
reg   [63:0] output_difference_2_load_13_reg_1312;
reg   [63:0] output_difference_3_load_13_reg_1317;
reg   [63:0] output_difference_0_load_14_reg_1362;
wire    ap_CS_fsm_state9;
reg   [63:0] output_difference_1_load_14_reg_1367;
reg   [63:0] output_difference_2_load_14_reg_1372;
reg   [63:0] output_difference_3_load_14_reg_1377;
reg   [63:0] output_difference_0_load_15_reg_1382;
reg   [63:0] output_difference_1_load_15_reg_1387;
reg   [63:0] output_difference_2_load_15_reg_1392;
reg   [63:0] output_difference_3_load_15_reg_1397;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_ready;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d1;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    output_difference_0_ce1_local;
reg   [3:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [3:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [3:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [3:0] output_difference_1_address0_local;
reg    output_difference_2_ce1_local;
reg   [3:0] output_difference_2_address1_local;
reg    output_difference_2_ce0_local;
reg   [3:0] output_difference_2_address0_local;
reg    output_difference_3_ce1_local;
reg   [3:0] output_difference_3_address1_local;
reg    output_difference_3_ce0_local;
reg   [3:0] output_difference_3_address0_local;
reg    grp_fu_1402_ce;
reg    grp_fu_1406_ce;
reg    grp_fu_1410_ce;
reg    grp_fu_1414_ce;
reg    grp_fu_1418_ce;
reg    grp_fu_1422_ce;
reg    grp_fu_1426_ce;
reg    grp_fu_1430_ce;
reg   [9:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_ready),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.last_activations_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_address0),.last_activations_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_ce0),.last_activations_2_q0(last_activations_2_q0),.last_activations_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_address0),.last_activations_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_ce0),.last_activations_3_q0(last_activations_3_q0),.output_difference_0_load(output_difference_0_load_reg_802),.output_difference_1_load(output_difference_1_load_reg_807),.output_difference_2_load(output_difference_2_load_reg_812),.output_difference_3_load(output_difference_3_load_reg_817),.output_difference_0_load_1(output_difference_0_load_1_reg_822),.output_difference_1_load_1(output_difference_1_load_1_reg_827),.output_difference_2_load_1(output_difference_2_load_1_reg_832),.output_difference_3_load_1(output_difference_3_load_1_reg_837),.output_difference_0_load_2(output_difference_0_load_2_reg_882),.output_difference_1_load_2(output_difference_1_load_2_reg_887),.output_difference_2_load_2(output_difference_2_load_2_reg_892),.output_difference_3_load_2(output_difference_3_load_2_reg_897),.output_difference_0_load_3(output_difference_0_load_3_reg_902),.output_difference_1_load_3(output_difference_1_load_3_reg_907),.output_difference_2_load_3(output_difference_2_load_3_reg_912),.output_difference_3_load_3(output_difference_3_load_3_reg_917),.output_difference_0_load_4(output_difference_0_load_4_reg_962),.output_difference_1_load_4(output_difference_1_load_4_reg_967),.output_difference_2_load_4(output_difference_2_load_4_reg_972),.output_difference_3_load_4(output_difference_3_load_4_reg_977),.output_difference_0_load_5(output_difference_0_load_5_reg_982),.output_difference_1_load_5(output_difference_1_load_5_reg_987),.output_difference_2_load_5(output_difference_2_load_5_reg_992),.output_difference_3_load_5(output_difference_3_load_5_reg_997),.output_difference_0_load_6(output_difference_0_load_6_reg_1042),.output_difference_1_load_6(output_difference_1_load_6_reg_1047),.output_difference_2_load_6(output_difference_2_load_6_reg_1052),.output_difference_3_load_6(output_difference_3_load_6_reg_1057),.output_difference_0_load_7(output_difference_0_load_7_reg_1062),.output_difference_1_load_7(output_difference_1_load_7_reg_1067),.output_difference_2_load_7(output_difference_2_load_7_reg_1072),.output_difference_3_load_7(output_difference_3_load_7_reg_1077),.output_difference_0_load_8(output_difference_0_load_8_reg_1122),.output_difference_1_load_8(output_difference_1_load_8_reg_1127),.output_difference_2_load_8(output_difference_2_load_8_reg_1132),.output_difference_3_load_8(output_difference_3_load_8_reg_1137),.output_difference_0_load_9(output_difference_0_load_9_reg_1142),.output_difference_1_load_9(output_difference_1_load_9_reg_1147),.output_difference_2_load_9(output_difference_2_load_9_reg_1152),.output_difference_3_load_9(output_difference_3_load_9_reg_1157),.output_difference_0_load_10(output_difference_0_load_10_reg_1202),.output_difference_1_load_10(output_difference_1_load_10_reg_1207),.output_difference_2_load_10(output_difference_2_load_10_reg_1212),.output_difference_3_load_10(output_difference_3_load_10_reg_1217),.output_difference_0_load_11(output_difference_0_load_11_reg_1222),.output_difference_1_load_11(output_difference_1_load_11_reg_1227),.output_difference_2_load_11(output_difference_2_load_11_reg_1232),.output_difference_3_load_11(output_difference_3_load_11_reg_1237),.output_difference_0_load_12(output_difference_0_load_12_reg_1282),.output_difference_1_load_12(output_difference_1_load_12_reg_1287),.output_difference_2_load_12(output_difference_2_load_12_reg_1292),.output_difference_3_load_12(output_difference_3_load_12_reg_1297),.output_difference_0_load_13(output_difference_0_load_13_reg_1302),.output_difference_1_load_13(output_difference_1_load_13_reg_1307),.output_difference_2_load_13(output_difference_2_load_13_reg_1312),.output_difference_3_load_13(output_difference_3_load_13_reg_1317),.output_difference_0_load_14(output_difference_0_load_14_reg_1362),.output_difference_1_load_14(output_difference_1_load_14_reg_1367),.output_difference_2_load_14(output_difference_2_load_14_reg_1372),.output_difference_3_load_14(output_difference_3_load_14_reg_1377),.output_difference_0_load_15(output_difference_0_load_15_reg_1382),.output_difference_1_load_15(output_difference_1_load_15_reg_1387),.output_difference_2_load_15(output_difference_2_load_15_reg_1392),.output_difference_3_load_15(output_difference_3_load_15_reg_1397),.grp_fu_1402_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din0),.grp_fu_1402_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din1),.grp_fu_1402_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1402_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_ce),.grp_fu_1406_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din0),.grp_fu_1406_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din1),.grp_fu_1406_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1406_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_ce),.grp_fu_1410_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din0),.grp_fu_1410_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din1),.grp_fu_1410_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1410_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_ce),.grp_fu_1414_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din0),.grp_fu_1414_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din1),.grp_fu_1414_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1414_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_ce),.grp_fu_1418_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din0),.grp_fu_1418_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din1),.grp_fu_1418_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1418_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_ce),.grp_fu_1422_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din0),.grp_fu_1422_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din1),.grp_fu_1422_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1422_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_ce),.grp_fu_1426_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din0),.grp_fu_1426_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din1),.grp_fu_1426_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1426_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_ce),.grp_fu_1430_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din0),.grp_fu_1430_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din1),.grp_fu_1430_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1430_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_load_10_reg_1202 <= output_difference_0_q1;
        output_difference_0_load_11_reg_1222 <= output_difference_0_q0;
        output_difference_1_load_10_reg_1207 <= output_difference_1_q1;
        output_difference_1_load_11_reg_1227 <= output_difference_1_q0;
        output_difference_2_load_10_reg_1212 <= output_difference_2_q1;
        output_difference_2_load_11_reg_1232 <= output_difference_2_q0;
        output_difference_3_load_10_reg_1217 <= output_difference_3_q1;
        output_difference_3_load_11_reg_1237 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_load_12_reg_1282 <= output_difference_0_q1;
        output_difference_0_load_13_reg_1302 <= output_difference_0_q0;
        output_difference_1_load_12_reg_1287 <= output_difference_1_q1;
        output_difference_1_load_13_reg_1307 <= output_difference_1_q0;
        output_difference_2_load_12_reg_1292 <= output_difference_2_q1;
        output_difference_2_load_13_reg_1312 <= output_difference_2_q0;
        output_difference_3_load_12_reg_1297 <= output_difference_3_q1;
        output_difference_3_load_13_reg_1317 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_load_14_reg_1362 <= output_difference_0_q1;
        output_difference_0_load_15_reg_1382 <= output_difference_0_q0;
        output_difference_1_load_14_reg_1367 <= output_difference_1_q1;
        output_difference_1_load_15_reg_1387 <= output_difference_1_q0;
        output_difference_2_load_14_reg_1372 <= output_difference_2_q1;
        output_difference_2_load_15_reg_1392 <= output_difference_2_q0;
        output_difference_3_load_14_reg_1377 <= output_difference_3_q1;
        output_difference_3_load_15_reg_1397 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_1_reg_822 <= output_difference_0_q0;
        output_difference_0_load_reg_802 <= output_difference_0_q1;
        output_difference_1_load_1_reg_827 <= output_difference_1_q0;
        output_difference_1_load_reg_807 <= output_difference_1_q1;
        output_difference_2_load_1_reg_832 <= output_difference_2_q0;
        output_difference_2_load_reg_812 <= output_difference_2_q1;
        output_difference_3_load_1_reg_837 <= output_difference_3_q0;
        output_difference_3_load_reg_817 <= output_difference_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_2_reg_882 <= output_difference_0_q1;
        output_difference_0_load_3_reg_902 <= output_difference_0_q0;
        output_difference_1_load_2_reg_887 <= output_difference_1_q1;
        output_difference_1_load_3_reg_907 <= output_difference_1_q0;
        output_difference_2_load_2_reg_892 <= output_difference_2_q1;
        output_difference_2_load_3_reg_912 <= output_difference_2_q0;
        output_difference_3_load_2_reg_897 <= output_difference_3_q1;
        output_difference_3_load_3_reg_917 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_load_4_reg_962 <= output_difference_0_q1;
        output_difference_0_load_5_reg_982 <= output_difference_0_q0;
        output_difference_1_load_4_reg_967 <= output_difference_1_q1;
        output_difference_1_load_5_reg_987 <= output_difference_1_q0;
        output_difference_2_load_4_reg_972 <= output_difference_2_q1;
        output_difference_2_load_5_reg_992 <= output_difference_2_q0;
        output_difference_3_load_4_reg_977 <= output_difference_3_q1;
        output_difference_3_load_5_reg_997 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_load_6_reg_1042 <= output_difference_0_q1;
        output_difference_0_load_7_reg_1062 <= output_difference_0_q0;
        output_difference_1_load_6_reg_1047 <= output_difference_1_q1;
        output_difference_1_load_7_reg_1067 <= output_difference_1_q0;
        output_difference_2_load_6_reg_1052 <= output_difference_2_q1;
        output_difference_2_load_7_reg_1072 <= output_difference_2_q0;
        output_difference_3_load_6_reg_1057 <= output_difference_3_q1;
        output_difference_3_load_7_reg_1077 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_load_8_reg_1122 <= output_difference_0_q1;
        output_difference_0_load_9_reg_1142 <= output_difference_0_q0;
        output_difference_1_load_8_reg_1127 <= output_difference_1_q1;
        output_difference_1_load_9_reg_1147 <= output_difference_1_q0;
        output_difference_2_load_8_reg_1132 <= output_difference_2_q1;
        output_difference_2_load_9_reg_1152 <= output_difference_2_q0;
        output_difference_3_load_8_reg_1137 <= output_difference_3_q1;
        output_difference_3_load_9_reg_1157 <= output_difference_3_q0;
    end
end
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1402_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_ce;
    end else begin
        grp_fu_1402_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1406_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_ce;
    end else begin
        grp_fu_1406_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1410_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_ce;
    end else begin
        grp_fu_1410_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1414_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_ce;
    end else begin
        grp_fu_1414_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1418_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_ce;
    end else begin
        grp_fu_1418_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1422_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_ce;
    end else begin
        grp_fu_1422_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1426_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_ce;
    end else begin
        grp_fu_1426_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1430_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_ce;
    end else begin
        grp_fu_1430_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address0_local = 64'd1;
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address1_local = 64'd0;
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address0_local = 64'd1;
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address1_local = 64'd0;
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_2_address0_local = 64'd1;
    end else begin
        output_difference_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_2_address1_local = 64'd0;
    end else begin
        output_difference_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_3_address0_local = 64'd1;
    end else begin
        output_difference_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_3_address1_local = 64'd0;
    end else begin
        output_difference_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_1_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_2_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_delta_weights2_3_we1;
assign grp_fu_3096_p_ce = grp_fu_1402_ce;
assign grp_fu_3096_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din0;
assign grp_fu_3096_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1402_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1406_ce;
assign grp_fu_3100_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din0;
assign grp_fu_3100_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1406_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1410_ce;
assign grp_fu_3104_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din0;
assign grp_fu_3104_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1410_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1414_ce;
assign grp_fu_3108_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din0;
assign grp_fu_3108_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1414_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1418_ce;
assign grp_fu_3112_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din0;
assign grp_fu_3112_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1418_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1422_ce;
assign grp_fu_3116_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din0;
assign grp_fu_3116_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1422_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1426_ce;
assign grp_fu_3120_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din0;
assign grp_fu_3120_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1426_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1430_ce;
assign grp_fu_3124_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din0;
assign grp_fu_3124_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_grp_fu_1430_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_1_ce0;
assign last_activations_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_address0;
assign last_activations_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_2_ce0;
assign last_activations_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_address0;
assign last_activations_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_670_last_activations_3_ce0;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = output_difference_2_address0_local;
assign output_difference_2_address1 = output_difference_2_address1_local;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = output_difference_3_address0_local;
assign output_difference_3_address1 = output_difference_3_address1_local;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
endmodule 
