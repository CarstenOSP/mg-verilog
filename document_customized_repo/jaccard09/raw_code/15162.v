module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,idx,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce); 
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [7:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [7:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [7:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [7:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [7:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [7:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [7:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
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
output  [9:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [9:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [9:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [9:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
input  [11:0] idx;
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
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_816;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_821;
reg   [63:0] output_difference_2_load_reg_826;
reg   [63:0] output_difference_3_load_reg_831;
reg   [63:0] output_difference_0_load_16_reg_836;
reg   [63:0] output_difference_1_load_16_reg_841;
reg   [63:0] output_difference_2_load_16_reg_846;
reg   [63:0] output_difference_3_load_16_reg_851;
reg   [63:0] output_difference_0_load_17_reg_896;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_17_reg_901;
reg   [63:0] output_difference_2_load_17_reg_906;
reg   [63:0] output_difference_3_load_17_reg_911;
reg   [63:0] output_difference_0_load_18_reg_916;
reg   [63:0] output_difference_1_load_18_reg_921;
reg   [63:0] output_difference_2_load_18_reg_926;
reg   [63:0] output_difference_3_load_18_reg_931;
reg   [63:0] output_difference_0_load_19_reg_976;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_1_load_19_reg_981;
reg   [63:0] output_difference_2_load_19_reg_986;
reg   [63:0] output_difference_3_load_19_reg_991;
reg   [63:0] output_difference_0_load_20_reg_996;
reg   [63:0] output_difference_1_load_20_reg_1001;
reg   [63:0] output_difference_2_load_20_reg_1006;
reg   [63:0] output_difference_3_load_20_reg_1011;
reg   [63:0] output_difference_0_load_21_reg_1056;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_1_load_21_reg_1061;
reg   [63:0] output_difference_2_load_21_reg_1066;
reg   [63:0] output_difference_3_load_21_reg_1071;
reg   [63:0] output_difference_0_load_22_reg_1076;
reg   [63:0] output_difference_1_load_22_reg_1081;
reg   [63:0] output_difference_2_load_22_reg_1086;
reg   [63:0] output_difference_3_load_22_reg_1091;
reg   [63:0] output_difference_0_load_23_reg_1136;
wire    ap_CS_fsm_state6;
reg   [63:0] output_difference_1_load_23_reg_1141;
reg   [63:0] output_difference_2_load_23_reg_1146;
reg   [63:0] output_difference_3_load_23_reg_1151;
reg   [63:0] output_difference_0_load_24_reg_1156;
reg   [63:0] output_difference_1_load_24_reg_1161;
reg   [63:0] output_difference_2_load_24_reg_1166;
reg   [63:0] output_difference_3_load_24_reg_1171;
reg   [63:0] output_difference_0_load_25_reg_1216;
wire    ap_CS_fsm_state7;
reg   [63:0] output_difference_1_load_25_reg_1221;
reg   [63:0] output_difference_2_load_25_reg_1226;
reg   [63:0] output_difference_3_load_25_reg_1231;
reg   [63:0] output_difference_0_load_26_reg_1236;
reg   [63:0] output_difference_1_load_26_reg_1241;
reg   [63:0] output_difference_2_load_26_reg_1246;
reg   [63:0] output_difference_3_load_26_reg_1251;
reg   [63:0] output_difference_0_load_27_reg_1296;
wire    ap_CS_fsm_state8;
reg   [63:0] output_difference_1_load_27_reg_1301;
reg   [63:0] output_difference_2_load_27_reg_1306;
reg   [63:0] output_difference_3_load_27_reg_1311;
reg   [63:0] output_difference_0_load_28_reg_1316;
reg   [63:0] output_difference_1_load_28_reg_1321;
reg   [63:0] output_difference_2_load_28_reg_1326;
reg   [63:0] output_difference_3_load_28_reg_1331;
reg   [63:0] output_difference_0_load_29_reg_1376;
wire    ap_CS_fsm_state9;
reg   [63:0] output_difference_1_load_29_reg_1381;
reg   [63:0] output_difference_2_load_29_reg_1386;
reg   [63:0] output_difference_3_load_29_reg_1391;
reg   [63:0] output_difference_0_load_30_reg_1396;
reg   [63:0] output_difference_1_load_30_reg_1401;
reg   [63:0] output_difference_2_load_30_reg_1406;
reg   [63:0] output_difference_3_load_30_reg_1411;
wire    ap_CS_fsm_state10;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_ready;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d1;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg;
wire    ap_CS_fsm_state11;
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
reg    grp_fu_1421_ce;
reg    grp_fu_1425_ce;
reg    grp_fu_1429_ce;
reg    grp_fu_1433_ce;
reg    grp_fu_1437_ce;
reg    grp_fu_1441_ce;
reg    grp_fu_1445_ce;
reg    grp_fu_1449_ce;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_ready),.delta_weights1_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address0),.delta_weights1_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce0),.delta_weights1_3_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we0),.delta_weights1_3_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d0),.delta_weights1_3_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address1),.delta_weights1_3_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce1),.delta_weights1_3_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we1),.delta_weights1_3_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d1),.delta_weights1_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address0),.delta_weights1_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce0),.delta_weights1_2_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we0),.delta_weights1_2_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d0),.delta_weights1_2_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address1),.delta_weights1_2_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce1),.delta_weights1_2_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we1),.delta_weights1_2_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.training_data_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_address0),.training_data_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_ce0),.training_data_2_q0(training_data_2_q0),.training_data_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_address0),.training_data_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_ce0),.training_data_3_q0(training_data_3_q0),.output_difference_0_load(output_difference_0_load_reg_816),.output_difference_1_load(output_difference_1_load_reg_821),.output_difference_2_load(output_difference_2_load_reg_826),.output_difference_3_load(output_difference_3_load_reg_831),.output_difference_0_load_16(output_difference_0_load_16_reg_836),.output_difference_1_load_16(output_difference_1_load_16_reg_841),.output_difference_2_load_16(output_difference_2_load_16_reg_846),.output_difference_3_load_16(output_difference_3_load_16_reg_851),.output_difference_0_load_17(output_difference_0_load_17_reg_896),.output_difference_1_load_17(output_difference_1_load_17_reg_901),.output_difference_2_load_17(output_difference_2_load_17_reg_906),.output_difference_3_load_17(output_difference_3_load_17_reg_911),.output_difference_0_load_18(output_difference_0_load_18_reg_916),.output_difference_1_load_18(output_difference_1_load_18_reg_921),.output_difference_2_load_18(output_difference_2_load_18_reg_926),.output_difference_3_load_18(output_difference_3_load_18_reg_931),.output_difference_0_load_19(output_difference_0_load_19_reg_976),.output_difference_1_load_19(output_difference_1_load_19_reg_981),.output_difference_2_load_19(output_difference_2_load_19_reg_986),.output_difference_3_load_19(output_difference_3_load_19_reg_991),.output_difference_0_load_20(output_difference_0_load_20_reg_996),.output_difference_1_load_20(output_difference_1_load_20_reg_1001),.output_difference_2_load_20(output_difference_2_load_20_reg_1006),.output_difference_3_load_20(output_difference_3_load_20_reg_1011),.output_difference_0_load_21(output_difference_0_load_21_reg_1056),.output_difference_1_load_21(output_difference_1_load_21_reg_1061),.output_difference_2_load_21(output_difference_2_load_21_reg_1066),.output_difference_3_load_21(output_difference_3_load_21_reg_1071),.output_difference_0_load_22(output_difference_0_load_22_reg_1076),.output_difference_1_load_22(output_difference_1_load_22_reg_1081),.output_difference_2_load_22(output_difference_2_load_22_reg_1086),.output_difference_3_load_22(output_difference_3_load_22_reg_1091),.output_difference_0_load_23(output_difference_0_load_23_reg_1136),.output_difference_1_load_23(output_difference_1_load_23_reg_1141),.output_difference_2_load_23(output_difference_2_load_23_reg_1146),.output_difference_3_load_23(output_difference_3_load_23_reg_1151),.output_difference_0_load_24(output_difference_0_load_24_reg_1156),.output_difference_1_load_24(output_difference_1_load_24_reg_1161),.output_difference_2_load_24(output_difference_2_load_24_reg_1166),.output_difference_3_load_24(output_difference_3_load_24_reg_1171),.output_difference_0_load_25(output_difference_0_load_25_reg_1216),.output_difference_1_load_25(output_difference_1_load_25_reg_1221),.output_difference_2_load_25(output_difference_2_load_25_reg_1226),.output_difference_3_load_25(output_difference_3_load_25_reg_1231),.output_difference_0_load_26(output_difference_0_load_26_reg_1236),.output_difference_1_load_26(output_difference_1_load_26_reg_1241),.output_difference_2_load_26(output_difference_2_load_26_reg_1246),.output_difference_3_load_26(output_difference_3_load_26_reg_1251),.output_difference_0_load_27(output_difference_0_load_27_reg_1296),.output_difference_1_load_27(output_difference_1_load_27_reg_1301),.output_difference_2_load_27(output_difference_2_load_27_reg_1306),.output_difference_3_load_27(output_difference_3_load_27_reg_1311),.output_difference_0_load_28(output_difference_0_load_28_reg_1316),.output_difference_1_load_28(output_difference_1_load_28_reg_1321),.output_difference_2_load_28(output_difference_2_load_28_reg_1326),.output_difference_3_load_28(output_difference_3_load_28_reg_1331),.output_difference_0_load_29(output_difference_0_load_29_reg_1376),.output_difference_1_load_29(output_difference_1_load_29_reg_1381),.output_difference_2_load_29(output_difference_2_load_29_reg_1386),.output_difference_3_load_29(output_difference_3_load_29_reg_1391),.output_difference_0_load_30(output_difference_0_load_30_reg_1396),.output_difference_1_load_30(output_difference_1_load_30_reg_1401),.output_difference_2_load_30(output_difference_2_load_30_reg_1406),.output_difference_3_load_30(output_difference_3_load_30_reg_1411),.grp_fu_1421_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din0),.grp_fu_1421_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din1),.grp_fu_1421_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1421_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_ce),.grp_fu_1425_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din0),.grp_fu_1425_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din1),.grp_fu_1425_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1425_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_ce),.grp_fu_1429_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din0),.grp_fu_1429_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din1),.grp_fu_1429_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1429_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_ce),.grp_fu_1433_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din0),.grp_fu_1433_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din1),.grp_fu_1433_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1433_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_ce),.grp_fu_1437_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din0),.grp_fu_1437_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din1),.grp_fu_1437_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1437_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_ce),.grp_fu_1441_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din0),.grp_fu_1441_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din1),.grp_fu_1441_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1441_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_ce),.grp_fu_1445_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din0),.grp_fu_1445_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din1),.grp_fu_1445_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1445_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_ce),.grp_fu_1449_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din0),.grp_fu_1449_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din1),.grp_fu_1449_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1449_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_16_reg_836 <= output_difference_0_q0;
        output_difference_0_load_reg_816 <= output_difference_0_q1;
        output_difference_1_load_16_reg_841 <= output_difference_1_q0;
        output_difference_1_load_reg_821 <= output_difference_1_q1;
        output_difference_2_load_16_reg_846 <= output_difference_2_q0;
        output_difference_2_load_reg_826 <= output_difference_2_q1;
        output_difference_3_load_16_reg_851 <= output_difference_3_q0;
        output_difference_3_load_reg_831 <= output_difference_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_17_reg_896 <= output_difference_0_q1;
        output_difference_0_load_18_reg_916 <= output_difference_0_q0;
        output_difference_1_load_17_reg_901 <= output_difference_1_q1;
        output_difference_1_load_18_reg_921 <= output_difference_1_q0;
        output_difference_2_load_17_reg_906 <= output_difference_2_q1;
        output_difference_2_load_18_reg_926 <= output_difference_2_q0;
        output_difference_3_load_17_reg_911 <= output_difference_3_q1;
        output_difference_3_load_18_reg_931 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_load_19_reg_976 <= output_difference_0_q1;
        output_difference_0_load_20_reg_996 <= output_difference_0_q0;
        output_difference_1_load_19_reg_981 <= output_difference_1_q1;
        output_difference_1_load_20_reg_1001 <= output_difference_1_q0;
        output_difference_2_load_19_reg_986 <= output_difference_2_q1;
        output_difference_2_load_20_reg_1006 <= output_difference_2_q0;
        output_difference_3_load_19_reg_991 <= output_difference_3_q1;
        output_difference_3_load_20_reg_1011 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_load_21_reg_1056 <= output_difference_0_q1;
        output_difference_0_load_22_reg_1076 <= output_difference_0_q0;
        output_difference_1_load_21_reg_1061 <= output_difference_1_q1;
        output_difference_1_load_22_reg_1081 <= output_difference_1_q0;
        output_difference_2_load_21_reg_1066 <= output_difference_2_q1;
        output_difference_2_load_22_reg_1086 <= output_difference_2_q0;
        output_difference_3_load_21_reg_1071 <= output_difference_3_q1;
        output_difference_3_load_22_reg_1091 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_load_23_reg_1136 <= output_difference_0_q1;
        output_difference_0_load_24_reg_1156 <= output_difference_0_q0;
        output_difference_1_load_23_reg_1141 <= output_difference_1_q1;
        output_difference_1_load_24_reg_1161 <= output_difference_1_q0;
        output_difference_2_load_23_reg_1146 <= output_difference_2_q1;
        output_difference_2_load_24_reg_1166 <= output_difference_2_q0;
        output_difference_3_load_23_reg_1151 <= output_difference_3_q1;
        output_difference_3_load_24_reg_1171 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_load_25_reg_1216 <= output_difference_0_q1;
        output_difference_0_load_26_reg_1236 <= output_difference_0_q0;
        output_difference_1_load_25_reg_1221 <= output_difference_1_q1;
        output_difference_1_load_26_reg_1241 <= output_difference_1_q0;
        output_difference_2_load_25_reg_1226 <= output_difference_2_q1;
        output_difference_2_load_26_reg_1246 <= output_difference_2_q0;
        output_difference_3_load_25_reg_1231 <= output_difference_3_q1;
        output_difference_3_load_26_reg_1251 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_load_27_reg_1296 <= output_difference_0_q1;
        output_difference_0_load_28_reg_1316 <= output_difference_0_q0;
        output_difference_1_load_27_reg_1301 <= output_difference_1_q1;
        output_difference_1_load_28_reg_1321 <= output_difference_1_q0;
        output_difference_2_load_27_reg_1306 <= output_difference_2_q1;
        output_difference_2_load_28_reg_1326 <= output_difference_2_q0;
        output_difference_3_load_27_reg_1311 <= output_difference_3_q1;
        output_difference_3_load_28_reg_1331 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_load_29_reg_1376 <= output_difference_0_q1;
        output_difference_0_load_30_reg_1396 <= output_difference_0_q0;
        output_difference_1_load_29_reg_1381 <= output_difference_1_q1;
        output_difference_1_load_30_reg_1401 <= output_difference_1_q0;
        output_difference_2_load_29_reg_1386 <= output_difference_2_q1;
        output_difference_2_load_30_reg_1406 <= output_difference_2_q0;
        output_difference_3_load_29_reg_1391 <= output_difference_3_q1;
        output_difference_3_load_30_reg_1411 <= output_difference_3_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if ((((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1421_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_ce;
    end else begin
        grp_fu_1421_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1425_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_ce;
    end else begin
        grp_fu_1425_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1429_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_ce;
    end else begin
        grp_fu_1429_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1433_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_ce;
    end else begin
        grp_fu_1433_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1437_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_ce;
    end else begin
        grp_fu_1437_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1441_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_ce;
    end else begin
        grp_fu_1441_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1445_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_ce;
    end else begin
        grp_fu_1445_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1449_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_ce;
    end else begin
        grp_fu_1449_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_0_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_1_we1;
assign delta_weights1_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address0;
assign delta_weights1_2_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_address1;
assign delta_weights1_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce0;
assign delta_weights1_2_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_ce1;
assign delta_weights1_2_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d0;
assign delta_weights1_2_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_d1;
assign delta_weights1_2_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we0;
assign delta_weights1_2_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_2_we1;
assign delta_weights1_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address0;
assign delta_weights1_3_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_address1;
assign delta_weights1_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce0;
assign delta_weights1_3_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_ce1;
assign delta_weights1_3_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d0;
assign delta_weights1_3_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_d1;
assign delta_weights1_3_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we0;
assign delta_weights1_3_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_delta_weights1_3_we1;
assign grp_fu_3096_p_ce = grp_fu_1421_ce;
assign grp_fu_3096_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din0;
assign grp_fu_3096_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1421_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1425_ce;
assign grp_fu_3100_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din0;
assign grp_fu_3100_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1425_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1429_ce;
assign grp_fu_3104_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din0;
assign grp_fu_3104_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1429_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1433_ce;
assign grp_fu_3108_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din0;
assign grp_fu_3108_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1433_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1437_ce;
assign grp_fu_3112_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din0;
assign grp_fu_3112_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1437_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1441_ce;
assign grp_fu_3116_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din0;
assign grp_fu_3116_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1441_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1445_ce;
assign grp_fu_3120_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din0;
assign grp_fu_3120_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1445_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1449_ce;
assign grp_fu_3124_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din0;
assign grp_fu_3124_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_grp_fu_1449_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_ap_start_reg;
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
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_0_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_1_ce0;
assign training_data_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_address0;
assign training_data_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_2_ce0;
assign training_data_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_address0;
assign training_data_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_690_training_data_3_ce0;
endmodule 