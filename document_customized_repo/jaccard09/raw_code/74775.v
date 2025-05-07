module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_0_address8,output_difference_0_ce8,output_difference_0_q8,output_difference_0_address9,output_difference_0_ce9,output_difference_0_q9,output_difference_0_address10,output_difference_0_ce10,output_difference_0_q10,output_difference_0_address11,output_difference_0_ce11,output_difference_0_q11,output_difference_0_address12,output_difference_0_ce12,output_difference_0_q12,output_difference_0_address13,output_difference_0_ce13,output_difference_0_q13,output_difference_0_address14,output_difference_0_ce14,output_difference_0_q14,output_difference_0_address15,output_difference_0_ce15,output_difference_0_q15,output_difference_0_address16,output_difference_0_ce16,output_difference_0_q16,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_1_address8,output_difference_1_ce8,output_difference_1_q8,output_difference_1_address9,output_difference_1_ce9,output_difference_1_q9,output_difference_1_address10,output_difference_1_ce10,output_difference_1_q10,output_difference_1_address11,output_difference_1_ce11,output_difference_1_q11,output_difference_1_address12,output_difference_1_ce12,output_difference_1_q12,output_difference_1_address13,output_difference_1_ce13,output_difference_1_q13,output_difference_1_address14,output_difference_1_ce14,output_difference_1_q14,output_difference_1_address15,output_difference_1_ce15,output_difference_1_q15,output_difference_1_address16,output_difference_1_ce16,output_difference_1_q16,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,idx,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce); 
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [8:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [8:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [8:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [4:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [4:0] output_difference_0_address2;
output   output_difference_0_ce2;
input  [63:0] output_difference_0_q2;
output  [4:0] output_difference_0_address3;
output   output_difference_0_ce3;
input  [63:0] output_difference_0_q3;
output  [4:0] output_difference_0_address4;
output   output_difference_0_ce4;
input  [63:0] output_difference_0_q4;
output  [4:0] output_difference_0_address5;
output   output_difference_0_ce5;
input  [63:0] output_difference_0_q5;
output  [4:0] output_difference_0_address6;
output   output_difference_0_ce6;
input  [63:0] output_difference_0_q6;
output  [4:0] output_difference_0_address7;
output   output_difference_0_ce7;
input  [63:0] output_difference_0_q7;
output  [4:0] output_difference_0_address8;
output   output_difference_0_ce8;
input  [63:0] output_difference_0_q8;
output  [4:0] output_difference_0_address9;
output   output_difference_0_ce9;
input  [63:0] output_difference_0_q9;
output  [4:0] output_difference_0_address10;
output   output_difference_0_ce10;
input  [63:0] output_difference_0_q10;
output  [4:0] output_difference_0_address11;
output   output_difference_0_ce11;
input  [63:0] output_difference_0_q11;
output  [4:0] output_difference_0_address12;
output   output_difference_0_ce12;
input  [63:0] output_difference_0_q12;
output  [4:0] output_difference_0_address13;
output   output_difference_0_ce13;
input  [63:0] output_difference_0_q13;
output  [4:0] output_difference_0_address14;
output   output_difference_0_ce14;
input  [63:0] output_difference_0_q14;
output  [4:0] output_difference_0_address15;
output   output_difference_0_ce15;
input  [63:0] output_difference_0_q15;
output  [4:0] output_difference_0_address16;
output   output_difference_0_ce16;
input  [63:0] output_difference_0_q16;
output  [4:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [4:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [4:0] output_difference_1_address2;
output   output_difference_1_ce2;
input  [63:0] output_difference_1_q2;
output  [4:0] output_difference_1_address3;
output   output_difference_1_ce3;
input  [63:0] output_difference_1_q3;
output  [4:0] output_difference_1_address4;
output   output_difference_1_ce4;
input  [63:0] output_difference_1_q4;
output  [4:0] output_difference_1_address5;
output   output_difference_1_ce5;
input  [63:0] output_difference_1_q5;
output  [4:0] output_difference_1_address6;
output   output_difference_1_ce6;
input  [63:0] output_difference_1_q6;
output  [4:0] output_difference_1_address7;
output   output_difference_1_ce7;
input  [63:0] output_difference_1_q7;
output  [4:0] output_difference_1_address8;
output   output_difference_1_ce8;
input  [63:0] output_difference_1_q8;
output  [4:0] output_difference_1_address9;
output   output_difference_1_ce9;
input  [63:0] output_difference_1_q9;
output  [4:0] output_difference_1_address10;
output   output_difference_1_ce10;
input  [63:0] output_difference_1_q10;
output  [4:0] output_difference_1_address11;
output   output_difference_1_ce11;
input  [63:0] output_difference_1_q11;
output  [4:0] output_difference_1_address12;
output   output_difference_1_ce12;
input  [63:0] output_difference_1_q12;
output  [4:0] output_difference_1_address13;
output   output_difference_1_ce13;
input  [63:0] output_difference_1_q13;
output  [4:0] output_difference_1_address14;
output   output_difference_1_ce14;
input  [63:0] output_difference_1_q14;
output  [4:0] output_difference_1_address15;
output   output_difference_1_ce15;
input  [63:0] output_difference_1_q15;
output  [4:0] output_difference_1_address16;
output   output_difference_1_ce16;
input  [63:0] output_difference_1_q16;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
input  [11:0] idx;
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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1040;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1045;
reg   [63:0] output_difference_0_load_32_reg_1050;
reg   [63:0] output_difference_1_load_32_reg_1055;
reg   [63:0] output_difference_0_load_33_reg_1060;
reg   [63:0] output_difference_1_load_33_reg_1065;
reg   [63:0] output_difference_0_load_34_reg_1070;
reg   [63:0] output_difference_1_load_34_reg_1075;
reg   [63:0] output_difference_0_load_35_reg_1080;
reg   [63:0] output_difference_1_load_35_reg_1085;
reg   [63:0] output_difference_0_load_36_reg_1090;
reg   [63:0] output_difference_1_load_36_reg_1095;
reg   [63:0] output_difference_0_load_37_reg_1100;
reg   [63:0] output_difference_1_load_37_reg_1105;
reg   [63:0] output_difference_0_load_38_reg_1110;
reg   [63:0] output_difference_1_load_38_reg_1115;
reg   [63:0] output_difference_0_load_39_reg_1120;
reg   [63:0] output_difference_1_load_39_reg_1125;
reg   [63:0] output_difference_0_load_40_reg_1130;
reg   [63:0] output_difference_1_load_40_reg_1135;
reg   [63:0] output_difference_0_load_41_reg_1140;
reg   [63:0] output_difference_1_load_41_reg_1145;
reg   [63:0] output_difference_0_load_42_reg_1150;
reg   [63:0] output_difference_1_load_42_reg_1155;
reg   [63:0] output_difference_0_load_43_reg_1160;
reg   [63:0] output_difference_1_load_43_reg_1165;
reg   [63:0] output_difference_0_load_44_reg_1170;
reg   [63:0] output_difference_1_load_44_reg_1175;
reg   [63:0] output_difference_0_load_45_reg_1180;
reg   [63:0] output_difference_1_load_45_reg_1185;
reg   [63:0] output_difference_0_load_46_reg_1360;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_46_reg_1365;
reg   [63:0] output_difference_0_load_47_reg_1370;
reg   [63:0] output_difference_1_load_47_reg_1375;
reg   [63:0] output_difference_0_load_48_reg_1380;
reg   [63:0] output_difference_1_load_48_reg_1385;
reg   [63:0] output_difference_0_load_49_reg_1390;
reg   [63:0] output_difference_1_load_49_reg_1395;
reg   [63:0] output_difference_0_load_50_reg_1400;
reg   [63:0] output_difference_1_load_50_reg_1405;
reg   [63:0] output_difference_0_load_51_reg_1410;
reg   [63:0] output_difference_1_load_51_reg_1415;
reg   [63:0] output_difference_0_load_52_reg_1420;
reg   [63:0] output_difference_1_load_52_reg_1425;
reg   [63:0] output_difference_0_load_53_reg_1430;
reg   [63:0] output_difference_1_load_53_reg_1435;
reg   [63:0] output_difference_0_load_54_reg_1440;
reg   [63:0] output_difference_1_load_54_reg_1445;
reg   [63:0] output_difference_0_load_55_reg_1450;
reg   [63:0] output_difference_1_load_55_reg_1455;
reg   [63:0] output_difference_0_load_56_reg_1460;
reg   [63:0] output_difference_1_load_56_reg_1465;
reg   [63:0] output_difference_0_load_57_reg_1470;
reg   [63:0] output_difference_1_load_57_reg_1475;
reg   [63:0] output_difference_0_load_58_reg_1480;
reg   [63:0] output_difference_1_load_58_reg_1485;
reg   [63:0] output_difference_0_load_59_reg_1490;
reg   [63:0] output_difference_1_load_59_reg_1495;
reg   [63:0] output_difference_0_load_60_reg_1500;
reg   [63:0] output_difference_1_load_60_reg_1505;
reg   [63:0] output_difference_0_load_61_reg_1510;
reg   [63:0] output_difference_1_load_61_reg_1515;
reg   [63:0] output_difference_0_load_62_reg_1520;
reg   [63:0] output_difference_1_load_62_reg_1525;
wire    ap_CS_fsm_state4;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_ready;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d1;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d1;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_ce0;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    output_difference_0_ce14_local;
reg   [4:0] output_difference_0_address14_local;
reg    output_difference_0_ce13_local;
reg   [4:0] output_difference_0_address13_local;
reg    output_difference_0_ce12_local;
reg   [4:0] output_difference_0_address12_local;
reg    output_difference_0_ce11_local;
reg   [4:0] output_difference_0_address11_local;
reg    output_difference_0_ce10_local;
reg   [4:0] output_difference_0_address10_local;
reg    output_difference_0_ce9_local;
reg   [4:0] output_difference_0_address9_local;
reg    output_difference_0_ce8_local;
reg   [4:0] output_difference_0_address8_local;
reg    output_difference_0_ce7_local;
reg   [4:0] output_difference_0_address7_local;
reg    output_difference_0_ce6_local;
reg   [4:0] output_difference_0_address6_local;
reg    output_difference_0_ce5_local;
reg   [4:0] output_difference_0_address5_local;
reg    output_difference_0_ce4_local;
reg   [4:0] output_difference_0_address4_local;
reg    output_difference_0_ce3_local;
reg   [4:0] output_difference_0_address3_local;
reg    output_difference_0_ce2_local;
reg   [4:0] output_difference_0_address2_local;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_0_ce16_local;
reg    output_difference_0_ce15_local;
reg    output_difference_1_ce14_local;
reg   [4:0] output_difference_1_address14_local;
reg    output_difference_1_ce13_local;
reg   [4:0] output_difference_1_address13_local;
reg    output_difference_1_ce12_local;
reg   [4:0] output_difference_1_address12_local;
reg    output_difference_1_ce11_local;
reg   [4:0] output_difference_1_address11_local;
reg    output_difference_1_ce10_local;
reg   [4:0] output_difference_1_address10_local;
reg    output_difference_1_ce9_local;
reg   [4:0] output_difference_1_address9_local;
reg    output_difference_1_ce8_local;
reg   [4:0] output_difference_1_address8_local;
reg    output_difference_1_ce7_local;
reg   [4:0] output_difference_1_address7_local;
reg    output_difference_1_ce6_local;
reg   [4:0] output_difference_1_address6_local;
reg    output_difference_1_ce5_local;
reg   [4:0] output_difference_1_address5_local;
reg    output_difference_1_ce4_local;
reg   [4:0] output_difference_1_address4_local;
reg    output_difference_1_ce3_local;
reg   [4:0] output_difference_1_address3_local;
reg    output_difference_1_ce2_local;
reg   [4:0] output_difference_1_address2_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    output_difference_1_ce16_local;
reg    output_difference_1_ce15_local;
reg    grp_fu_1535_ce;
reg    grp_fu_1539_ce;
reg    grp_fu_1543_ce;
reg    grp_fu_1547_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_ready),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.output_difference_0_load(output_difference_0_load_reg_1040),.output_difference_1_load(output_difference_1_load_reg_1045),.output_difference_0_load_32(output_difference_0_load_32_reg_1050),.output_difference_1_load_32(output_difference_1_load_32_reg_1055),.output_difference_0_load_33(output_difference_0_load_33_reg_1060),.output_difference_1_load_33(output_difference_1_load_33_reg_1065),.output_difference_0_load_34(output_difference_0_load_34_reg_1070),.output_difference_1_load_34(output_difference_1_load_34_reg_1075),.output_difference_0_load_35(output_difference_0_load_35_reg_1080),.output_difference_1_load_35(output_difference_1_load_35_reg_1085),.output_difference_0_load_36(output_difference_0_load_36_reg_1090),.output_difference_1_load_36(output_difference_1_load_36_reg_1095),.output_difference_0_load_37(output_difference_0_load_37_reg_1100),.output_difference_1_load_37(output_difference_1_load_37_reg_1105),.output_difference_0_load_38(output_difference_0_load_38_reg_1110),.output_difference_1_load_38(output_difference_1_load_38_reg_1115),.output_difference_0_load_39(output_difference_0_load_39_reg_1120),.output_difference_1_load_39(output_difference_1_load_39_reg_1125),.output_difference_0_load_40(output_difference_0_load_40_reg_1130),.output_difference_1_load_40(output_difference_1_load_40_reg_1135),.output_difference_0_load_41(output_difference_0_load_41_reg_1140),.output_difference_1_load_41(output_difference_1_load_41_reg_1145),.output_difference_0_load_42(output_difference_0_load_42_reg_1150),.output_difference_1_load_42(output_difference_1_load_42_reg_1155),.output_difference_0_load_43(output_difference_0_load_43_reg_1160),.output_difference_1_load_43(output_difference_1_load_43_reg_1165),.output_difference_0_load_44(output_difference_0_load_44_reg_1170),.output_difference_1_load_44(output_difference_1_load_44_reg_1175),.output_difference_0_load_45(output_difference_0_load_45_reg_1180),.output_difference_1_load_45(output_difference_1_load_45_reg_1185),.output_difference_0_load_46(output_difference_0_load_46_reg_1360),.output_difference_1_load_46(output_difference_1_load_46_reg_1365),.output_difference_0_load_47(output_difference_0_load_47_reg_1370),.output_difference_1_load_47(output_difference_1_load_47_reg_1375),.output_difference_0_load_48(output_difference_0_load_48_reg_1380),.output_difference_1_load_48(output_difference_1_load_48_reg_1385),.output_difference_0_load_49(output_difference_0_load_49_reg_1390),.output_difference_1_load_49(output_difference_1_load_49_reg_1395),.output_difference_0_load_50(output_difference_0_load_50_reg_1400),.output_difference_1_load_50(output_difference_1_load_50_reg_1405),.output_difference_0_load_51(output_difference_0_load_51_reg_1410),.output_difference_1_load_51(output_difference_1_load_51_reg_1415),.output_difference_0_load_52(output_difference_0_load_52_reg_1420),.output_difference_1_load_52(output_difference_1_load_52_reg_1425),.output_difference_0_load_53(output_difference_0_load_53_reg_1430),.output_difference_1_load_53(output_difference_1_load_53_reg_1435),.output_difference_0_load_54(output_difference_0_load_54_reg_1440),.output_difference_1_load_54(output_difference_1_load_54_reg_1445),.output_difference_0_load_55(output_difference_0_load_55_reg_1450),.output_difference_1_load_55(output_difference_1_load_55_reg_1455),.output_difference_0_load_56(output_difference_0_load_56_reg_1460),.output_difference_1_load_56(output_difference_1_load_56_reg_1465),.output_difference_0_load_57(output_difference_0_load_57_reg_1470),.output_difference_1_load_57(output_difference_1_load_57_reg_1475),.output_difference_0_load_58(output_difference_0_load_58_reg_1480),.output_difference_1_load_58(output_difference_1_load_58_reg_1485),.output_difference_0_load_59(output_difference_0_load_59_reg_1490),.output_difference_1_load_59(output_difference_1_load_59_reg_1495),.output_difference_0_load_60(output_difference_0_load_60_reg_1500),.output_difference_1_load_60(output_difference_1_load_60_reg_1505),.output_difference_0_load_61(output_difference_0_load_61_reg_1510),.output_difference_1_load_61(output_difference_1_load_61_reg_1515),.output_difference_0_load_62(output_difference_0_load_62_reg_1520),.output_difference_1_load_62(output_difference_1_load_62_reg_1525),.grp_fu_1535_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din0),.grp_fu_1535_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din1),.grp_fu_1535_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1535_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_ce),.grp_fu_1539_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din0),.grp_fu_1539_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din1),.grp_fu_1539_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1539_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_ce),.grp_fu_1543_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din0),.grp_fu_1543_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din1),.grp_fu_1543_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1543_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_ce),.grp_fu_1547_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din0),.grp_fu_1547_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din1),.grp_fu_1547_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1547_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_32_reg_1050 <= output_difference_0_q13;
        output_difference_0_load_33_reg_1060 <= output_difference_0_q12;
        output_difference_0_load_34_reg_1070 <= output_difference_0_q11;
        output_difference_0_load_35_reg_1080 <= output_difference_0_q10;
        output_difference_0_load_36_reg_1090 <= output_difference_0_q9;
        output_difference_0_load_37_reg_1100 <= output_difference_0_q8;
        output_difference_0_load_38_reg_1110 <= output_difference_0_q7;
        output_difference_0_load_39_reg_1120 <= output_difference_0_q6;
        output_difference_0_load_40_reg_1130 <= output_difference_0_q5;
        output_difference_0_load_41_reg_1140 <= output_difference_0_q4;
        output_difference_0_load_42_reg_1150 <= output_difference_0_q3;
        output_difference_0_load_43_reg_1160 <= output_difference_0_q2;
        output_difference_0_load_44_reg_1170 <= output_difference_0_q1;
        output_difference_0_load_45_reg_1180 <= output_difference_0_q0;
        output_difference_0_load_reg_1040 <= output_difference_0_q14;
        output_difference_1_load_32_reg_1055 <= output_difference_1_q13;
        output_difference_1_load_33_reg_1065 <= output_difference_1_q12;
        output_difference_1_load_34_reg_1075 <= output_difference_1_q11;
        output_difference_1_load_35_reg_1085 <= output_difference_1_q10;
        output_difference_1_load_36_reg_1095 <= output_difference_1_q9;
        output_difference_1_load_37_reg_1105 <= output_difference_1_q8;
        output_difference_1_load_38_reg_1115 <= output_difference_1_q7;
        output_difference_1_load_39_reg_1125 <= output_difference_1_q6;
        output_difference_1_load_40_reg_1135 <= output_difference_1_q5;
        output_difference_1_load_41_reg_1145 <= output_difference_1_q4;
        output_difference_1_load_42_reg_1155 <= output_difference_1_q3;
        output_difference_1_load_43_reg_1165 <= output_difference_1_q2;
        output_difference_1_load_44_reg_1175 <= output_difference_1_q1;
        output_difference_1_load_45_reg_1185 <= output_difference_1_q0;
        output_difference_1_load_reg_1045 <= output_difference_1_q14;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_46_reg_1360 <= output_difference_0_q16;
        output_difference_0_load_47_reg_1370 <= output_difference_0_q15;
        output_difference_0_load_48_reg_1380 <= output_difference_0_q14;
        output_difference_0_load_49_reg_1390 <= output_difference_0_q13;
        output_difference_0_load_50_reg_1400 <= output_difference_0_q12;
        output_difference_0_load_51_reg_1410 <= output_difference_0_q11;
        output_difference_0_load_52_reg_1420 <= output_difference_0_q10;
        output_difference_0_load_53_reg_1430 <= output_difference_0_q9;
        output_difference_0_load_54_reg_1440 <= output_difference_0_q8;
        output_difference_0_load_55_reg_1450 <= output_difference_0_q7;
        output_difference_0_load_56_reg_1460 <= output_difference_0_q6;
        output_difference_0_load_57_reg_1470 <= output_difference_0_q5;
        output_difference_0_load_58_reg_1480 <= output_difference_0_q4;
        output_difference_0_load_59_reg_1490 <= output_difference_0_q3;
        output_difference_0_load_60_reg_1500 <= output_difference_0_q2;
        output_difference_0_load_61_reg_1510 <= output_difference_0_q1;
        output_difference_0_load_62_reg_1520 <= output_difference_0_q0;
        output_difference_1_load_46_reg_1365 <= output_difference_1_q16;
        output_difference_1_load_47_reg_1375 <= output_difference_1_q15;
        output_difference_1_load_48_reg_1385 <= output_difference_1_q14;
        output_difference_1_load_49_reg_1395 <= output_difference_1_q13;
        output_difference_1_load_50_reg_1405 <= output_difference_1_q12;
        output_difference_1_load_51_reg_1415 <= output_difference_1_q11;
        output_difference_1_load_52_reg_1425 <= output_difference_1_q10;
        output_difference_1_load_53_reg_1435 <= output_difference_1_q9;
        output_difference_1_load_54_reg_1445 <= output_difference_1_q8;
        output_difference_1_load_55_reg_1455 <= output_difference_1_q7;
        output_difference_1_load_56_reg_1465 <= output_difference_1_q6;
        output_difference_1_load_57_reg_1475 <= output_difference_1_q5;
        output_difference_1_load_58_reg_1485 <= output_difference_1_q4;
        output_difference_1_load_59_reg_1495 <= output_difference_1_q3;
        output_difference_1_load_60_reg_1505 <= output_difference_1_q2;
        output_difference_1_load_61_reg_1515 <= output_difference_1_q1;
        output_difference_1_load_62_reg_1525 <= output_difference_1_q0;
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1535_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_ce;
    end else begin
        grp_fu_1535_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1539_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_ce;
    end else begin
        grp_fu_1539_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1543_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_ce;
    end else begin
        grp_fu_1543_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1547_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_ce;
    end else begin
        grp_fu_1547_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address0_local = 64'd14;
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address10_local = 64'd4;
    end else begin
        output_difference_0_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address11_local = 64'd3;
    end else begin
        output_difference_0_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address12_local = 64'd2;
    end else begin
        output_difference_0_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address13_local = 64'd1;
    end else begin
        output_difference_0_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address14_local = 64'd0;
    end else begin
        output_difference_0_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address1_local = 64'd13;
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address2_local = 64'd12;
    end else begin
        output_difference_0_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address3_local = 64'd11;
    end else begin
        output_difference_0_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address4_local = 64'd10;
    end else begin
        output_difference_0_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address5_local = 64'd9;
    end else begin
        output_difference_0_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address6_local = 64'd8;
    end else begin
        output_difference_0_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address7_local = 64'd7;
    end else begin
        output_difference_0_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address8_local = 64'd6;
    end else begin
        output_difference_0_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address9_local = 64'd5;
    end else begin
        output_difference_0_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce10_local = 1'b1;
    end else begin
        output_difference_0_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce11_local = 1'b1;
    end else begin
        output_difference_0_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce12_local = 1'b1;
    end else begin
        output_difference_0_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce13_local = 1'b1;
    end else begin
        output_difference_0_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce14_local = 1'b1;
    end else begin
        output_difference_0_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_ce15_local = 1'b1;
    end else begin
        output_difference_0_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_ce16_local = 1'b1;
    end else begin
        output_difference_0_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce2_local = 1'b1;
    end else begin
        output_difference_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce3_local = 1'b1;
    end else begin
        output_difference_0_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce4_local = 1'b1;
    end else begin
        output_difference_0_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce5_local = 1'b1;
    end else begin
        output_difference_0_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce6_local = 1'b1;
    end else begin
        output_difference_0_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce7_local = 1'b1;
    end else begin
        output_difference_0_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce8_local = 1'b1;
    end else begin
        output_difference_0_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_0_ce9_local = 1'b1;
    end else begin
        output_difference_0_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address0_local = 64'd14;
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address10_local = 64'd4;
    end else begin
        output_difference_1_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address11_local = 64'd3;
    end else begin
        output_difference_1_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address12_local = 64'd2;
    end else begin
        output_difference_1_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address13_local = 64'd1;
    end else begin
        output_difference_1_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address14_local = 64'd0;
    end else begin
        output_difference_1_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address1_local = 64'd13;
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address2_local = 64'd12;
    end else begin
        output_difference_1_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address3_local = 64'd11;
    end else begin
        output_difference_1_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address4_local = 64'd10;
    end else begin
        output_difference_1_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address5_local = 64'd9;
    end else begin
        output_difference_1_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address6_local = 64'd8;
    end else begin
        output_difference_1_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address7_local = 64'd7;
    end else begin
        output_difference_1_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address8_local = 64'd6;
    end else begin
        output_difference_1_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address9_local = 64'd5;
    end else begin
        output_difference_1_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce10_local = 1'b1;
    end else begin
        output_difference_1_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce11_local = 1'b1;
    end else begin
        output_difference_1_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce12_local = 1'b1;
    end else begin
        output_difference_1_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce13_local = 1'b1;
    end else begin
        output_difference_1_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce14_local = 1'b1;
    end else begin
        output_difference_1_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_ce15_local = 1'b1;
    end else begin
        output_difference_1_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_ce16_local = 1'b1;
    end else begin
        output_difference_1_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce2_local = 1'b1;
    end else begin
        output_difference_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce3_local = 1'b1;
    end else begin
        output_difference_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce4_local = 1'b1;
    end else begin
        output_difference_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce5_local = 1'b1;
    end else begin
        output_difference_1_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce6_local = 1'b1;
    end else begin
        output_difference_1_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce7_local = 1'b1;
    end else begin
        output_difference_1_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce8_local = 1'b1;
    end else begin
        output_difference_1_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_1_ce9_local = 1'b1;
    end else begin
        output_difference_1_ce9_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
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
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_0_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_delta_weights1_1_we1;
assign grp_fu_2874_p_ce = grp_fu_1535_ce;
assign grp_fu_2874_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din0;
assign grp_fu_2874_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1535_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1539_ce;
assign grp_fu_2878_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din0;
assign grp_fu_2878_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1539_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1543_ce;
assign grp_fu_2882_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din0;
assign grp_fu_2882_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1543_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1547_ce;
assign grp_fu_2886_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din0;
assign grp_fu_2886_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_grp_fu_1547_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_ap_start_reg;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_address10 = output_difference_0_address10_local;
assign output_difference_0_address11 = output_difference_0_address11_local;
assign output_difference_0_address12 = output_difference_0_address12_local;
assign output_difference_0_address13 = output_difference_0_address13_local;
assign output_difference_0_address14 = output_difference_0_address14_local;
assign output_difference_0_address15 = 64'd16;
assign output_difference_0_address16 = 64'd15;
assign output_difference_0_address2 = output_difference_0_address2_local;
assign output_difference_0_address3 = output_difference_0_address3_local;
assign output_difference_0_address4 = output_difference_0_address4_local;
assign output_difference_0_address5 = output_difference_0_address5_local;
assign output_difference_0_address6 = output_difference_0_address6_local;
assign output_difference_0_address7 = output_difference_0_address7_local;
assign output_difference_0_address8 = output_difference_0_address8_local;
assign output_difference_0_address9 = output_difference_0_address9_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_0_ce10 = output_difference_0_ce10_local;
assign output_difference_0_ce11 = output_difference_0_ce11_local;
assign output_difference_0_ce12 = output_difference_0_ce12_local;
assign output_difference_0_ce13 = output_difference_0_ce13_local;
assign output_difference_0_ce14 = output_difference_0_ce14_local;
assign output_difference_0_ce15 = output_difference_0_ce15_local;
assign output_difference_0_ce16 = output_difference_0_ce16_local;
assign output_difference_0_ce2 = output_difference_0_ce2_local;
assign output_difference_0_ce3 = output_difference_0_ce3_local;
assign output_difference_0_ce4 = output_difference_0_ce4_local;
assign output_difference_0_ce5 = output_difference_0_ce5_local;
assign output_difference_0_ce6 = output_difference_0_ce6_local;
assign output_difference_0_ce7 = output_difference_0_ce7_local;
assign output_difference_0_ce8 = output_difference_0_ce8_local;
assign output_difference_0_ce9 = output_difference_0_ce9_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_address10 = output_difference_1_address10_local;
assign output_difference_1_address11 = output_difference_1_address11_local;
assign output_difference_1_address12 = output_difference_1_address12_local;
assign output_difference_1_address13 = output_difference_1_address13_local;
assign output_difference_1_address14 = output_difference_1_address14_local;
assign output_difference_1_address15 = 64'd16;
assign output_difference_1_address16 = 64'd15;
assign output_difference_1_address2 = output_difference_1_address2_local;
assign output_difference_1_address3 = output_difference_1_address3_local;
assign output_difference_1_address4 = output_difference_1_address4_local;
assign output_difference_1_address5 = output_difference_1_address5_local;
assign output_difference_1_address6 = output_difference_1_address6_local;
assign output_difference_1_address7 = output_difference_1_address7_local;
assign output_difference_1_address8 = output_difference_1_address8_local;
assign output_difference_1_address9 = output_difference_1_address9_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_1_ce10 = output_difference_1_ce10_local;
assign output_difference_1_ce11 = output_difference_1_ce11_local;
assign output_difference_1_ce12 = output_difference_1_ce12_local;
assign output_difference_1_ce13 = output_difference_1_ce13_local;
assign output_difference_1_ce14 = output_difference_1_ce14_local;
assign output_difference_1_ce15 = output_difference_1_ce15_local;
assign output_difference_1_ce16 = output_difference_1_ce16_local;
assign output_difference_1_ce2 = output_difference_1_ce2_local;
assign output_difference_1_ce3 = output_difference_1_ce3_local;
assign output_difference_1_ce4 = output_difference_1_ce4_local;
assign output_difference_1_ce5 = output_difference_1_ce5_local;
assign output_difference_1_ce6 = output_difference_1_ce6_local;
assign output_difference_1_ce7 = output_difference_1_ce7_local;
assign output_difference_1_ce8 = output_difference_1_ce8_local;
assign output_difference_1_ce9 = output_difference_1_ce9_local;
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_0_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_812_training_data_1_ce0;
endmodule 