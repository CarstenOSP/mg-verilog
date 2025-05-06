
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [8:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [8:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [8:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [8:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [8:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [8:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [8:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [8:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [8:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [8:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [8:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [8:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [8:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [8:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [8:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [2:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [2:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [2:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [2:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [2:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [2:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [2:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [2:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [2:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [2:0] output_difference_4_address1;
output   output_difference_4_ce1;
input  [63:0] output_difference_4_q1;
output  [2:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [2:0] output_difference_5_address1;
output   output_difference_5_ce1;
input  [63:0] output_difference_5_q1;
output  [2:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [2:0] output_difference_6_address1;
output   output_difference_6_ce1;
input  [63:0] output_difference_6_q1;
output  [2:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [2:0] output_difference_7_address1;
output   output_difference_7_ce1;
input  [63:0] output_difference_7_q1;
output  [2:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [2:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [2:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [2:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [2:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [2:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [2:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [2:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [63:0] grp_fu_3620_p_din0;
output  [63:0] grp_fu_3620_p_din1;
input  [63:0] grp_fu_3620_p_dout0;
output   grp_fu_3620_p_ce;
output  [63:0] grp_fu_3624_p_din0;
output  [63:0] grp_fu_3624_p_din1;
input  [63:0] grp_fu_3624_p_dout0;
output   grp_fu_3624_p_ce;
output  [63:0] grp_fu_3628_p_din0;
output  [63:0] grp_fu_3628_p_din1;
input  [63:0] grp_fu_3628_p_dout0;
output   grp_fu_3628_p_ce;
output  [63:0] grp_fu_3632_p_din0;
output  [63:0] grp_fu_3632_p_din1;
input  [63:0] grp_fu_3632_p_dout0;
output   grp_fu_3632_p_ce;
output  [63:0] grp_fu_3636_p_din0;
output  [63:0] grp_fu_3636_p_din1;
input  [63:0] grp_fu_3636_p_dout0;
output   grp_fu_3636_p_ce;
output  [63:0] grp_fu_3640_p_din0;
output  [63:0] grp_fu_3640_p_din1;
input  [63:0] grp_fu_3640_p_dout0;
output   grp_fu_3640_p_ce;
output  [63:0] grp_fu_3644_p_din0;
output  [63:0] grp_fu_3644_p_din1;
input  [63:0] grp_fu_3644_p_dout0;
output   grp_fu_3644_p_ce;
output  [63:0] grp_fu_3648_p_din0;
output  [63:0] grp_fu_3648_p_din1;
input  [63:0] grp_fu_3648_p_dout0;
output   grp_fu_3648_p_ce;
output  [63:0] grp_fu_3652_p_din0;
output  [63:0] grp_fu_3652_p_din1;
input  [63:0] grp_fu_3652_p_dout0;
output   grp_fu_3652_p_ce;
output  [63:0] grp_fu_3656_p_din0;
output  [63:0] grp_fu_3656_p_din1;
input  [63:0] grp_fu_3656_p_dout0;
output   grp_fu_3656_p_ce;
output  [63:0] grp_fu_3660_p_din0;
output  [63:0] grp_fu_3660_p_din1;
input  [63:0] grp_fu_3660_p_dout0;
output   grp_fu_3660_p_ce;
output  [63:0] grp_fu_3664_p_din0;
output  [63:0] grp_fu_3664_p_din1;
input  [63:0] grp_fu_3664_p_dout0;
output   grp_fu_3664_p_ce;
output  [63:0] grp_fu_3668_p_din0;
output  [63:0] grp_fu_3668_p_din1;
input  [63:0] grp_fu_3668_p_dout0;
output   grp_fu_3668_p_ce;
output  [63:0] grp_fu_3672_p_din0;
output  [63:0] grp_fu_3672_p_din1;
input  [63:0] grp_fu_3672_p_dout0;
output   grp_fu_3672_p_ce;
output  [63:0] grp_fu_3676_p_din0;
output  [63:0] grp_fu_3676_p_din1;
input  [63:0] grp_fu_3676_p_dout0;
output   grp_fu_3676_p_ce;
output  [63:0] grp_fu_3680_p_din0;
output  [63:0] grp_fu_3680_p_din1;
input  [63:0] grp_fu_3680_p_dout0;
output   grp_fu_3680_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_910;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_915;
reg   [63:0] output_difference_2_load_reg_920;
reg   [63:0] output_difference_3_load_reg_925;
reg   [63:0] output_difference_4_load_reg_930;
reg   [63:0] output_difference_5_load_reg_935;
reg   [63:0] output_difference_6_load_reg_940;
reg   [63:0] output_difference_7_load_reg_945;
reg   [63:0] output_difference_0_load_1_reg_950;
reg   [63:0] output_difference_1_load_1_reg_955;
reg   [63:0] output_difference_2_load_1_reg_960;
reg   [63:0] output_difference_3_load_1_reg_965;
reg   [63:0] output_difference_4_load_1_reg_970;
reg   [63:0] output_difference_5_load_1_reg_975;
reg   [63:0] output_difference_6_load_1_reg_980;
reg   [63:0] output_difference_7_load_1_reg_985;
reg   [63:0] output_difference_0_load_2_reg_1070;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_2_reg_1075;
reg   [63:0] output_difference_2_load_2_reg_1080;
reg   [63:0] output_difference_3_load_2_reg_1085;
reg   [63:0] output_difference_4_load_2_reg_1090;
reg   [63:0] output_difference_5_load_2_reg_1095;
reg   [63:0] output_difference_6_load_2_reg_1100;
reg   [63:0] output_difference_7_load_2_reg_1105;
reg   [63:0] output_difference_0_load_3_reg_1110;
reg   [63:0] output_difference_1_load_3_reg_1115;
reg   [63:0] output_difference_2_load_3_reg_1120;
reg   [63:0] output_difference_3_load_3_reg_1125;
reg   [63:0] output_difference_4_load_3_reg_1130;
reg   [63:0] output_difference_5_load_3_reg_1135;
reg   [63:0] output_difference_6_load_3_reg_1140;
reg   [63:0] output_difference_7_load_3_reg_1145;
reg   [63:0] output_difference_0_load_4_reg_1230;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_1_load_4_reg_1235;
reg   [63:0] output_difference_2_load_4_reg_1240;
reg   [63:0] output_difference_3_load_4_reg_1245;
reg   [63:0] output_difference_4_load_4_reg_1250;
reg   [63:0] output_difference_5_load_4_reg_1255;
reg   [63:0] output_difference_6_load_4_reg_1260;
reg   [63:0] output_difference_7_load_4_reg_1265;
reg   [63:0] output_difference_0_load_5_reg_1270;
reg   [63:0] output_difference_1_load_5_reg_1275;
reg   [63:0] output_difference_2_load_5_reg_1280;
reg   [63:0] output_difference_3_load_5_reg_1285;
reg   [63:0] output_difference_4_load_5_reg_1290;
reg   [63:0] output_difference_5_load_5_reg_1295;
reg   [63:0] output_difference_6_load_5_reg_1300;
reg   [63:0] output_difference_7_load_5_reg_1305;
reg   [63:0] output_difference_0_load_6_reg_1390;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_1_load_6_reg_1395;
reg   [63:0] output_difference_2_load_6_reg_1400;
reg   [63:0] output_difference_3_load_6_reg_1405;
reg   [63:0] output_difference_4_load_6_reg_1410;
reg   [63:0] output_difference_5_load_6_reg_1415;
reg   [63:0] output_difference_6_load_6_reg_1420;
reg   [63:0] output_difference_7_load_6_reg_1425;
reg   [63:0] output_difference_0_load_7_reg_1430;
reg   [63:0] output_difference_1_load_7_reg_1435;
reg   [63:0] output_difference_2_load_7_reg_1440;
reg   [63:0] output_difference_3_load_7_reg_1445;
reg   [63:0] output_difference_4_load_7_reg_1450;
reg   [63:0] output_difference_5_load_7_reg_1455;
reg   [63:0] output_difference_6_load_7_reg_1460;
reg   [63:0] output_difference_7_load_7_reg_1465;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_ready;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d1;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    output_difference_0_ce1_local;
reg   [2:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [2:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [2:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [2:0] output_difference_1_address0_local;
reg    output_difference_2_ce1_local;
reg   [2:0] output_difference_2_address1_local;
reg    output_difference_2_ce0_local;
reg   [2:0] output_difference_2_address0_local;
reg    output_difference_3_ce1_local;
reg   [2:0] output_difference_3_address1_local;
reg    output_difference_3_ce0_local;
reg   [2:0] output_difference_3_address0_local;
reg    output_difference_4_ce1_local;
reg   [2:0] output_difference_4_address1_local;
reg    output_difference_4_ce0_local;
reg   [2:0] output_difference_4_address0_local;
reg    output_difference_5_ce1_local;
reg   [2:0] output_difference_5_address1_local;
reg    output_difference_5_ce0_local;
reg   [2:0] output_difference_5_address0_local;
reg    output_difference_6_ce1_local;
reg   [2:0] output_difference_6_address1_local;
reg    output_difference_6_ce0_local;
reg   [2:0] output_difference_6_address0_local;
reg    output_difference_7_ce1_local;
reg   [2:0] output_difference_7_address1_local;
reg    output_difference_7_ce0_local;
reg   [2:0] output_difference_7_address0_local;
reg    grp_fu_1470_ce;
reg    grp_fu_1474_ce;
reg    grp_fu_1478_ce;
reg    grp_fu_1482_ce;
reg    grp_fu_1486_ce;
reg    grp_fu_1490_ce;
reg    grp_fu_1494_ce;
reg    grp_fu_1498_ce;
reg    grp_fu_1502_ce;
reg    grp_fu_1506_ce;
reg    grp_fu_1510_ce;
reg    grp_fu_1514_ce;
reg    grp_fu_1518_ce;
reg    grp_fu_1522_ce;
reg    grp_fu_1526_ce;
reg    grp_fu_1530_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_ready),.delta_weights2_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address0),.delta_weights2_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce0),.delta_weights2_7_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we0),.delta_weights2_7_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d0),.delta_weights2_7_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address1),.delta_weights2_7_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce1),.delta_weights2_7_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we1),.delta_weights2_7_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d1),.delta_weights2_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address0),.delta_weights2_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce0),.delta_weights2_6_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we0),.delta_weights2_6_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d0),.delta_weights2_6_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address1),.delta_weights2_6_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce1),.delta_weights2_6_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we1),.delta_weights2_6_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d1),.delta_weights2_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address0),.delta_weights2_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce0),.delta_weights2_5_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we0),.delta_weights2_5_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d0),.delta_weights2_5_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address1),.delta_weights2_5_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce1),.delta_weights2_5_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we1),.delta_weights2_5_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d1),.delta_weights2_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address0),.delta_weights2_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce0),.delta_weights2_4_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we0),.delta_weights2_4_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d0),.delta_weights2_4_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address1),.delta_weights2_4_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce1),.delta_weights2_4_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we1),.delta_weights2_4_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d1),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.last_activations_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_address0),.last_activations_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_ce0),.last_activations_2_q0(last_activations_2_q0),.last_activations_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_address0),.last_activations_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_ce0),.last_activations_3_q0(last_activations_3_q0),.last_activations_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_address0),.last_activations_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_ce0),.last_activations_4_q0(last_activations_4_q0),.last_activations_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_address0),.last_activations_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_ce0),.last_activations_5_q0(last_activations_5_q0),.last_activations_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_address0),.last_activations_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_ce0),.last_activations_6_q0(last_activations_6_q0),.last_activations_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_address0),.last_activations_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_ce0),.last_activations_7_q0(last_activations_7_q0),.output_difference_0_load(output_difference_0_load_reg_910),.output_difference_1_load(output_difference_1_load_reg_915),.output_difference_2_load(output_difference_2_load_reg_920),.output_difference_3_load(output_difference_3_load_reg_925),.output_difference_4_load(output_difference_4_load_reg_930),.output_difference_5_load(output_difference_5_load_reg_935),.output_difference_6_load(output_difference_6_load_reg_940),.output_difference_7_load(output_difference_7_load_reg_945),.output_difference_0_load_1(output_difference_0_load_1_reg_950),.output_difference_1_load_1(output_difference_1_load_1_reg_955),.output_difference_2_load_1(output_difference_2_load_1_reg_960),.output_difference_3_load_1(output_difference_3_load_1_reg_965),.output_difference_4_load_1(output_difference_4_load_1_reg_970),.output_difference_5_load_1(output_difference_5_load_1_reg_975),.output_difference_6_load_1(output_difference_6_load_1_reg_980),.output_difference_7_load_1(output_difference_7_load_1_reg_985),.output_difference_0_load_2(output_difference_0_load_2_reg_1070),.output_difference_1_load_2(output_difference_1_load_2_reg_1075),.output_difference_2_load_2(output_difference_2_load_2_reg_1080),.output_difference_3_load_2(output_difference_3_load_2_reg_1085),.output_difference_4_load_2(output_difference_4_load_2_reg_1090),.output_difference_5_load_2(output_difference_5_load_2_reg_1095),.output_difference_6_load_2(output_difference_6_load_2_reg_1100),.output_difference_7_load_2(output_difference_7_load_2_reg_1105),.output_difference_0_load_3(output_difference_0_load_3_reg_1110),.output_difference_1_load_3(output_difference_1_load_3_reg_1115),.output_difference_2_load_3(output_difference_2_load_3_reg_1120),.output_difference_3_load_3(output_difference_3_load_3_reg_1125),.output_difference_4_load_3(output_difference_4_load_3_reg_1130),.output_difference_5_load_3(output_difference_5_load_3_reg_1135),.output_difference_6_load_3(output_difference_6_load_3_reg_1140),.output_difference_7_load_3(output_difference_7_load_3_reg_1145),.output_difference_0_load_4(output_difference_0_load_4_reg_1230),.output_difference_1_load_4(output_difference_1_load_4_reg_1235),.output_difference_2_load_4(output_difference_2_load_4_reg_1240),.output_difference_3_load_4(output_difference_3_load_4_reg_1245),.output_difference_4_load_4(output_difference_4_load_4_reg_1250),.output_difference_5_load_4(output_difference_5_load_4_reg_1255),.output_difference_6_load_4(output_difference_6_load_4_reg_1260),.output_difference_7_load_4(output_difference_7_load_4_reg_1265),.output_difference_0_load_5(output_difference_0_load_5_reg_1270),.output_difference_1_load_5(output_difference_1_load_5_reg_1275),.output_difference_2_load_5(output_difference_2_load_5_reg_1280),.output_difference_3_load_5(output_difference_3_load_5_reg_1285),.output_difference_4_load_5(output_difference_4_load_5_reg_1290),.output_difference_5_load_5(output_difference_5_load_5_reg_1295),.output_difference_6_load_5(output_difference_6_load_5_reg_1300),.output_difference_7_load_5(output_difference_7_load_5_reg_1305),.output_difference_0_load_6(output_difference_0_load_6_reg_1390),.output_difference_1_load_6(output_difference_1_load_6_reg_1395),.output_difference_2_load_6(output_difference_2_load_6_reg_1400),.output_difference_3_load_6(output_difference_3_load_6_reg_1405),.output_difference_4_load_6(output_difference_4_load_6_reg_1410),.output_difference_5_load_6(output_difference_5_load_6_reg_1415),.output_difference_6_load_6(output_difference_6_load_6_reg_1420),.output_difference_7_load_6(output_difference_7_load_6_reg_1425),.output_difference_0_load_7(output_difference_0_load_7_reg_1430),.output_difference_1_load_7(output_difference_1_load_7_reg_1435),.output_difference_2_load_7(output_difference_2_load_7_reg_1440),.output_difference_3_load_7(output_difference_3_load_7_reg_1445),.output_difference_4_load_7(output_difference_4_load_7_reg_1450),.output_difference_5_load_7(output_difference_5_load_7_reg_1455),.output_difference_6_load_7(output_difference_6_load_7_reg_1460),.output_difference_7_load_7(output_difference_7_load_7_reg_1465),.grp_fu_1470_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din0),.grp_fu_1470_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din1),.grp_fu_1470_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1470_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_ce),.grp_fu_1474_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din0),.grp_fu_1474_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din1),.grp_fu_1474_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1474_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_ce),.grp_fu_1478_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din0),.grp_fu_1478_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din1),.grp_fu_1478_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1478_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_ce),.grp_fu_1482_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din0),.grp_fu_1482_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din1),.grp_fu_1482_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1482_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_ce),.grp_fu_1486_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din0),.grp_fu_1486_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din1),.grp_fu_1486_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1486_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_ce),.grp_fu_1490_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din0),.grp_fu_1490_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din1),.grp_fu_1490_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1490_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_ce),.grp_fu_1494_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din0),.grp_fu_1494_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din1),.grp_fu_1494_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1494_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_ce),.grp_fu_1498_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din0),.grp_fu_1498_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din1),.grp_fu_1498_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1498_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_ce),.grp_fu_1502_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din0),.grp_fu_1502_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din1),.grp_fu_1502_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1502_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_ce),.grp_fu_1506_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din0),.grp_fu_1506_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din1),.grp_fu_1506_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1506_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_ce),.grp_fu_1510_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din0),.grp_fu_1510_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din1),.grp_fu_1510_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1510_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_ce),.grp_fu_1514_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din0),.grp_fu_1514_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din1),.grp_fu_1514_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1514_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_ce),.grp_fu_1518_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din0),.grp_fu_1518_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din1),.grp_fu_1518_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1518_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_ce),.grp_fu_1522_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din0),.grp_fu_1522_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din1),.grp_fu_1522_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1522_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_ce),.grp_fu_1526_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din0),.grp_fu_1526_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din1),.grp_fu_1526_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1526_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_ce),.grp_fu_1530_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din0),.grp_fu_1530_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din1),.grp_fu_1530_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1530_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_1_reg_950 <= output_difference_0_q0;
        output_difference_0_load_reg_910 <= output_difference_0_q1;
        output_difference_1_load_1_reg_955 <= output_difference_1_q0;
        output_difference_1_load_reg_915 <= output_difference_1_q1;
        output_difference_2_load_1_reg_960 <= output_difference_2_q0;
        output_difference_2_load_reg_920 <= output_difference_2_q1;
        output_difference_3_load_1_reg_965 <= output_difference_3_q0;
        output_difference_3_load_reg_925 <= output_difference_3_q1;
        output_difference_4_load_1_reg_970 <= output_difference_4_q0;
        output_difference_4_load_reg_930 <= output_difference_4_q1;
        output_difference_5_load_1_reg_975 <= output_difference_5_q0;
        output_difference_5_load_reg_935 <= output_difference_5_q1;
        output_difference_6_load_1_reg_980 <= output_difference_6_q0;
        output_difference_6_load_reg_940 <= output_difference_6_q1;
        output_difference_7_load_1_reg_985 <= output_difference_7_q0;
        output_difference_7_load_reg_945 <= output_difference_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_2_reg_1070 <= output_difference_0_q1;
        output_difference_0_load_3_reg_1110 <= output_difference_0_q0;
        output_difference_1_load_2_reg_1075 <= output_difference_1_q1;
        output_difference_1_load_3_reg_1115 <= output_difference_1_q0;
        output_difference_2_load_2_reg_1080 <= output_difference_2_q1;
        output_difference_2_load_3_reg_1120 <= output_difference_2_q0;
        output_difference_3_load_2_reg_1085 <= output_difference_3_q1;
        output_difference_3_load_3_reg_1125 <= output_difference_3_q0;
        output_difference_4_load_2_reg_1090 <= output_difference_4_q1;
        output_difference_4_load_3_reg_1130 <= output_difference_4_q0;
        output_difference_5_load_2_reg_1095 <= output_difference_5_q1;
        output_difference_5_load_3_reg_1135 <= output_difference_5_q0;
        output_difference_6_load_2_reg_1100 <= output_difference_6_q1;
        output_difference_6_load_3_reg_1140 <= output_difference_6_q0;
        output_difference_7_load_2_reg_1105 <= output_difference_7_q1;
        output_difference_7_load_3_reg_1145 <= output_difference_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_load_4_reg_1230 <= output_difference_0_q1;
        output_difference_0_load_5_reg_1270 <= output_difference_0_q0;
        output_difference_1_load_4_reg_1235 <= output_difference_1_q1;
        output_difference_1_load_5_reg_1275 <= output_difference_1_q0;
        output_difference_2_load_4_reg_1240 <= output_difference_2_q1;
        output_difference_2_load_5_reg_1280 <= output_difference_2_q0;
        output_difference_3_load_4_reg_1245 <= output_difference_3_q1;
        output_difference_3_load_5_reg_1285 <= output_difference_3_q0;
        output_difference_4_load_4_reg_1250 <= output_difference_4_q1;
        output_difference_4_load_5_reg_1290 <= output_difference_4_q0;
        output_difference_5_load_4_reg_1255 <= output_difference_5_q1;
        output_difference_5_load_5_reg_1295 <= output_difference_5_q0;
        output_difference_6_load_4_reg_1260 <= output_difference_6_q1;
        output_difference_6_load_5_reg_1300 <= output_difference_6_q0;
        output_difference_7_load_4_reg_1265 <= output_difference_7_q1;
        output_difference_7_load_5_reg_1305 <= output_difference_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_load_6_reg_1390 <= output_difference_0_q1;
        output_difference_0_load_7_reg_1430 <= output_difference_0_q0;
        output_difference_1_load_6_reg_1395 <= output_difference_1_q1;
        output_difference_1_load_7_reg_1435 <= output_difference_1_q0;
        output_difference_2_load_6_reg_1400 <= output_difference_2_q1;
        output_difference_2_load_7_reg_1440 <= output_difference_2_q0;
        output_difference_3_load_6_reg_1405 <= output_difference_3_q1;
        output_difference_3_load_7_reg_1445 <= output_difference_3_q0;
        output_difference_4_load_6_reg_1410 <= output_difference_4_q1;
        output_difference_4_load_7_reg_1450 <= output_difference_4_q0;
        output_difference_5_load_6_reg_1415 <= output_difference_5_q1;
        output_difference_5_load_7_reg_1455 <= output_difference_5_q0;
        output_difference_6_load_6_reg_1420 <= output_difference_6_q1;
        output_difference_6_load_7_reg_1460 <= output_difference_6_q0;
        output_difference_7_load_6_reg_1425 <= output_difference_7_q1;
        output_difference_7_load_7_reg_1465 <= output_difference_7_q0;
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1470_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_ce;
    end else begin
        grp_fu_1470_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1474_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_ce;
    end else begin
        grp_fu_1474_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1478_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_ce;
    end else begin
        grp_fu_1478_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1482_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_ce;
    end else begin
        grp_fu_1482_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1486_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_ce;
    end else begin
        grp_fu_1486_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1490_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_ce;
    end else begin
        grp_fu_1490_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1494_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_ce;
    end else begin
        grp_fu_1494_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1498_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_ce;
    end else begin
        grp_fu_1498_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1502_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_ce;
    end else begin
        grp_fu_1502_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1506_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_ce;
    end else begin
        grp_fu_1506_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1510_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_ce;
    end else begin
        grp_fu_1510_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1514_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_ce;
    end else begin
        grp_fu_1514_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1518_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_ce;
    end else begin
        grp_fu_1518_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1522_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_ce;
    end else begin
        grp_fu_1522_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1526_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_ce;
    end else begin
        grp_fu_1526_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1530_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_ce;
    end else begin
        grp_fu_1530_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_4_address0_local = 64'd1;
    end else begin
        output_difference_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_4_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_4_address1_local = 64'd0;
    end else begin
        output_difference_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_5_address0_local = 64'd1;
    end else begin
        output_difference_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_5_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_5_address1_local = 64'd0;
    end else begin
        output_difference_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_6_address0_local = 64'd1;
    end else begin
        output_difference_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_6_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_6_address1_local = 64'd0;
    end else begin
        output_difference_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_7_address0_local = 64'd1;
    end else begin
        output_difference_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_7_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_7_address1_local = 64'd0;
    end else begin
        output_difference_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_1_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_2_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_3_we1;
assign delta_weights2_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address0;
assign delta_weights2_4_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_address1;
assign delta_weights2_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce0;
assign delta_weights2_4_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_ce1;
assign delta_weights2_4_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d0;
assign delta_weights2_4_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_d1;
assign delta_weights2_4_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we0;
assign delta_weights2_4_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_4_we1;
assign delta_weights2_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address0;
assign delta_weights2_5_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_address1;
assign delta_weights2_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce0;
assign delta_weights2_5_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_ce1;
assign delta_weights2_5_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d0;
assign delta_weights2_5_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_d1;
assign delta_weights2_5_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we0;
assign delta_weights2_5_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_5_we1;
assign delta_weights2_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address0;
assign delta_weights2_6_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_address1;
assign delta_weights2_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce0;
assign delta_weights2_6_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_ce1;
assign delta_weights2_6_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d0;
assign delta_weights2_6_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_d1;
assign delta_weights2_6_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we0;
assign delta_weights2_6_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_6_we1;
assign delta_weights2_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address0;
assign delta_weights2_7_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_address1;
assign delta_weights2_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce0;
assign delta_weights2_7_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_ce1;
assign delta_weights2_7_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d0;
assign delta_weights2_7_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_d1;
assign delta_weights2_7_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we0;
assign delta_weights2_7_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_delta_weights2_7_we1;
assign grp_fu_3620_p_ce = grp_fu_1470_ce;
assign grp_fu_3620_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din0;
assign grp_fu_3620_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1470_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1474_ce;
assign grp_fu_3624_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din0;
assign grp_fu_3624_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1474_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1478_ce;
assign grp_fu_3628_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din0;
assign grp_fu_3628_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1478_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1482_ce;
assign grp_fu_3632_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din0;
assign grp_fu_3632_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1482_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1486_ce;
assign grp_fu_3636_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din0;
assign grp_fu_3636_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1486_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1490_ce;
assign grp_fu_3640_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din0;
assign grp_fu_3640_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1490_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1494_ce;
assign grp_fu_3644_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din0;
assign grp_fu_3644_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1494_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1498_ce;
assign grp_fu_3648_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din0;
assign grp_fu_3648_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1498_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1502_ce;
assign grp_fu_3652_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din0;
assign grp_fu_3652_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1502_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1506_ce;
assign grp_fu_3656_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din0;
assign grp_fu_3656_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1506_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1510_ce;
assign grp_fu_3660_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din0;
assign grp_fu_3660_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1510_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1514_ce;
assign grp_fu_3664_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din0;
assign grp_fu_3664_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1514_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1518_ce;
assign grp_fu_3668_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din0;
assign grp_fu_3668_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1518_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1522_ce;
assign grp_fu_3672_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din0;
assign grp_fu_3672_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1522_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1526_ce;
assign grp_fu_3676_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din0;
assign grp_fu_3676_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1526_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1530_ce;
assign grp_fu_3680_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din0;
assign grp_fu_3680_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_grp_fu_1530_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_1_ce0;
assign last_activations_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_address0;
assign last_activations_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_2_ce0;
assign last_activations_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_address0;
assign last_activations_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_3_ce0;
assign last_activations_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_address0;
assign last_activations_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_4_ce0;
assign last_activations_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_address0;
assign last_activations_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_5_ce0;
assign last_activations_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_address0;
assign last_activations_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_6_ce0;
assign last_activations_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_address0;
assign last_activations_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_714_last_activations_7_ce0;
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
assign output_difference_4_address0 = output_difference_4_address0_local;
assign output_difference_4_address1 = output_difference_4_address1_local;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = output_difference_5_address0_local;
assign output_difference_5_address1 = output_difference_5_address1_local;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = output_difference_6_address0_local;
assign output_difference_6_address1 = output_difference_6_address1_local;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = output_difference_7_address0_local;
assign output_difference_7_address1 = output_difference_7_address1_local;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
endmodule 
