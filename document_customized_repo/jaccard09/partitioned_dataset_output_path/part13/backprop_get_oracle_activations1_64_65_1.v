
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_0_address2,output_differences_0_ce2,output_differences_0_q2,output_differences_0_address3,output_differences_0_ce3,output_differences_0_q3,output_differences_0_address4,output_differences_0_ce4,output_differences_0_q4,output_differences_0_address5,output_differences_0_ce5,output_differences_0_q5,output_differences_0_address6,output_differences_0_ce6,output_differences_0_q6,output_differences_0_address7,output_differences_0_ce7,output_differences_0_q7,output_differences_0_address8,output_differences_0_ce8,output_differences_0_q8,output_differences_0_address9,output_differences_0_ce9,output_differences_0_q9,output_differences_0_address10,output_differences_0_ce10,output_differences_0_q10,output_differences_0_address11,output_differences_0_ce11,output_differences_0_q11,output_differences_0_address12,output_differences_0_ce12,output_differences_0_q12,output_differences_0_address13,output_differences_0_ce13,output_differences_0_q13,output_differences_0_address14,output_differences_0_ce14,output_differences_0_q14,output_differences_0_address15,output_differences_0_ce15,output_differences_0_q15,output_differences_0_address16,output_differences_0_ce16,output_differences_0_q16,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_1_address2,output_differences_1_ce2,output_differences_1_q2,output_differences_1_address3,output_differences_1_ce3,output_differences_1_q3,output_differences_1_address4,output_differences_1_ce4,output_differences_1_q4,output_differences_1_address5,output_differences_1_ce5,output_differences_1_q5,output_differences_1_address6,output_differences_1_ce6,output_differences_1_q6,output_differences_1_address7,output_differences_1_ce7,output_differences_1_q7,output_differences_1_address8,output_differences_1_ce8,output_differences_1_q8,output_differences_1_address9,output_differences_1_ce9,output_differences_1_q9,output_differences_1_address10,output_differences_1_ce10,output_differences_1_q10,output_differences_1_address11,output_differences_1_ce11,output_differences_1_q11,output_differences_1_address12,output_differences_1_ce12,output_differences_1_q12,output_differences_1_address13,output_differences_1_ce13,output_differences_1_q13,output_differences_1_address14,output_differences_1_ce14,output_differences_1_q14,output_differences_1_address15,output_differences_1_ce15,output_differences_1_q15,output_differences_1_address16,output_differences_1_ce16,output_differences_1_q16,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce,grp_fu_2890_p_din0,grp_fu_2890_p_din1,grp_fu_2890_p_dout0,grp_fu_2890_p_ce);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [4:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [4:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [4:0] output_differences_0_address2;
output   output_differences_0_ce2;
input  [63:0] output_differences_0_q2;
output  [4:0] output_differences_0_address3;
output   output_differences_0_ce3;
input  [63:0] output_differences_0_q3;
output  [4:0] output_differences_0_address4;
output   output_differences_0_ce4;
input  [63:0] output_differences_0_q4;
output  [4:0] output_differences_0_address5;
output   output_differences_0_ce5;
input  [63:0] output_differences_0_q5;
output  [4:0] output_differences_0_address6;
output   output_differences_0_ce6;
input  [63:0] output_differences_0_q6;
output  [4:0] output_differences_0_address7;
output   output_differences_0_ce7;
input  [63:0] output_differences_0_q7;
output  [4:0] output_differences_0_address8;
output   output_differences_0_ce8;
input  [63:0] output_differences_0_q8;
output  [4:0] output_differences_0_address9;
output   output_differences_0_ce9;
input  [63:0] output_differences_0_q9;
output  [4:0] output_differences_0_address10;
output   output_differences_0_ce10;
input  [63:0] output_differences_0_q10;
output  [4:0] output_differences_0_address11;
output   output_differences_0_ce11;
input  [63:0] output_differences_0_q11;
output  [4:0] output_differences_0_address12;
output   output_differences_0_ce12;
input  [63:0] output_differences_0_q12;
output  [4:0] output_differences_0_address13;
output   output_differences_0_ce13;
input  [63:0] output_differences_0_q13;
output  [4:0] output_differences_0_address14;
output   output_differences_0_ce14;
input  [63:0] output_differences_0_q14;
output  [4:0] output_differences_0_address15;
output   output_differences_0_ce15;
input  [63:0] output_differences_0_q15;
output  [4:0] output_differences_0_address16;
output   output_differences_0_ce16;
input  [63:0] output_differences_0_q16;
output  [4:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [4:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [4:0] output_differences_1_address2;
output   output_differences_1_ce2;
input  [63:0] output_differences_1_q2;
output  [4:0] output_differences_1_address3;
output   output_differences_1_ce3;
input  [63:0] output_differences_1_q3;
output  [4:0] output_differences_1_address4;
output   output_differences_1_ce4;
input  [63:0] output_differences_1_q4;
output  [4:0] output_differences_1_address5;
output   output_differences_1_ce5;
input  [63:0] output_differences_1_q5;
output  [4:0] output_differences_1_address6;
output   output_differences_1_ce6;
input  [63:0] output_differences_1_q6;
output  [4:0] output_differences_1_address7;
output   output_differences_1_ce7;
input  [63:0] output_differences_1_q7;
output  [4:0] output_differences_1_address8;
output   output_differences_1_ce8;
input  [63:0] output_differences_1_q8;
output  [4:0] output_differences_1_address9;
output   output_differences_1_ce9;
input  [63:0] output_differences_1_q9;
output  [4:0] output_differences_1_address10;
output   output_differences_1_ce10;
input  [63:0] output_differences_1_q10;
output  [4:0] output_differences_1_address11;
output   output_differences_1_ce11;
input  [63:0] output_differences_1_q11;
output  [4:0] output_differences_1_address12;
output   output_differences_1_ce12;
input  [63:0] output_differences_1_q12;
output  [4:0] output_differences_1_address13;
output   output_differences_1_ce13;
input  [63:0] output_differences_1_q13;
output  [4:0] output_differences_1_address14;
output   output_differences_1_ce14;
input  [63:0] output_differences_1_q14;
output  [4:0] output_differences_1_address15;
output   output_differences_1_ce15;
input  [63:0] output_differences_1_q15;
output  [4:0] output_differences_1_address16;
output   output_differences_1_ce16;
input  [63:0] output_differences_1_q16;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
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
output  [63:0] grp_fu_2890_p_din0;
output  [63:0] grp_fu_2890_p_din1;
input  [63:0] grp_fu_2890_p_dout0;
output   grp_fu_2890_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_0_load_reg_1070;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_1075;
reg   [63:0] output_differences_0_load_1_reg_1080;
reg   [63:0] output_differences_1_load_1_reg_1085;
reg   [63:0] output_differences_0_load_2_reg_1090;
reg   [63:0] output_differences_1_load_2_reg_1095;
reg   [63:0] output_differences_0_load_3_reg_1100;
reg   [63:0] output_differences_1_load_3_reg_1105;
reg   [63:0] output_differences_0_load_4_reg_1110;
reg   [63:0] output_differences_1_load_4_reg_1115;
reg   [63:0] output_differences_0_load_5_reg_1120;
reg   [63:0] output_differences_1_load_5_reg_1125;
reg   [63:0] output_differences_0_load_6_reg_1130;
reg   [63:0] output_differences_1_load_6_reg_1135;
reg   [63:0] output_differences_0_load_7_reg_1140;
reg   [63:0] output_differences_1_load_7_reg_1145;
reg   [63:0] output_differences_0_load_8_reg_1150;
reg   [63:0] output_differences_1_load_8_reg_1155;
reg   [63:0] output_differences_0_load_9_reg_1160;
reg   [63:0] output_differences_1_load_9_reg_1165;
reg   [63:0] output_differences_0_load_10_reg_1170;
reg   [63:0] output_differences_1_load_10_reg_1175;
reg   [63:0] output_differences_0_load_11_reg_1180;
reg   [63:0] output_differences_1_load_11_reg_1185;
reg   [63:0] output_differences_0_load_12_reg_1190;
reg   [63:0] output_differences_1_load_12_reg_1195;
reg   [63:0] output_differences_0_load_13_reg_1200;
reg   [63:0] output_differences_1_load_13_reg_1205;
reg   [63:0] output_differences_0_load_14_reg_1210;
reg   [63:0] output_differences_1_load_14_reg_1215;
reg   [63:0] output_differences_0_load_15_reg_1390;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_1_load_15_reg_1395;
reg   [63:0] output_differences_0_load_16_reg_1400;
reg   [63:0] output_differences_1_load_16_reg_1405;
reg   [63:0] output_differences_0_load_17_reg_1410;
reg   [63:0] output_differences_1_load_17_reg_1415;
reg   [63:0] output_differences_0_load_18_reg_1420;
reg   [63:0] output_differences_1_load_18_reg_1425;
reg   [63:0] output_differences_0_load_19_reg_1430;
reg   [63:0] output_differences_1_load_19_reg_1435;
reg   [63:0] output_differences_0_load_20_reg_1440;
reg   [63:0] output_differences_1_load_20_reg_1445;
reg   [63:0] output_differences_0_load_21_reg_1450;
reg   [63:0] output_differences_1_load_21_reg_1455;
reg   [63:0] output_differences_0_load_22_reg_1460;
reg   [63:0] output_differences_1_load_22_reg_1465;
reg   [63:0] output_differences_0_load_23_reg_1470;
reg   [63:0] output_differences_1_load_23_reg_1475;
reg   [63:0] output_differences_0_load_24_reg_1480;
reg   [63:0] output_differences_1_load_24_reg_1485;
reg   [63:0] output_differences_0_load_25_reg_1490;
reg   [63:0] output_differences_1_load_25_reg_1495;
reg   [63:0] output_differences_0_load_26_reg_1500;
reg   [63:0] output_differences_1_load_26_reg_1505;
reg   [63:0] output_differences_0_load_27_reg_1510;
reg   [63:0] output_differences_1_load_27_reg_1515;
reg   [63:0] output_differences_0_load_28_reg_1520;
reg   [63:0] output_differences_1_load_28_reg_1525;
reg   [63:0] output_differences_0_load_29_reg_1530;
reg   [63:0] output_differences_1_load_29_reg_1535;
reg   [63:0] output_differences_0_load_30_reg_1540;
reg   [63:0] output_differences_1_load_30_reg_1545;
reg   [63:0] output_differences_0_load_31_reg_1550;
reg   [63:0] output_differences_1_load_31_reg_1555;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_ready;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_d0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_d0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce1;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    output_differences_0_ce14_local;
reg   [4:0] output_differences_0_address14_local;
reg    output_differences_0_ce13_local;
reg   [4:0] output_differences_0_address13_local;
reg    output_differences_0_ce12_local;
reg   [4:0] output_differences_0_address12_local;
reg    output_differences_0_ce11_local;
reg   [4:0] output_differences_0_address11_local;
reg    output_differences_0_ce10_local;
reg   [4:0] output_differences_0_address10_local;
reg    output_differences_0_ce9_local;
reg   [4:0] output_differences_0_address9_local;
reg    output_differences_0_ce8_local;
reg   [4:0] output_differences_0_address8_local;
reg    output_differences_0_ce7_local;
reg   [4:0] output_differences_0_address7_local;
reg    output_differences_0_ce6_local;
reg   [4:0] output_differences_0_address6_local;
reg    output_differences_0_ce5_local;
reg   [4:0] output_differences_0_address5_local;
reg    output_differences_0_ce4_local;
reg   [4:0] output_differences_0_address4_local;
reg    output_differences_0_ce3_local;
reg   [4:0] output_differences_0_address3_local;
reg    output_differences_0_ce2_local;
reg   [4:0] output_differences_0_address2_local;
reg    output_differences_0_ce1_local;
reg   [4:0] output_differences_0_address1_local;
reg    output_differences_0_ce0_local;
reg   [4:0] output_differences_0_address0_local;
reg    output_differences_0_ce16_local;
reg    output_differences_0_ce15_local;
reg    output_differences_1_ce14_local;
reg   [4:0] output_differences_1_address14_local;
reg    output_differences_1_ce13_local;
reg   [4:0] output_differences_1_address13_local;
reg    output_differences_1_ce12_local;
reg   [4:0] output_differences_1_address12_local;
reg    output_differences_1_ce11_local;
reg   [4:0] output_differences_1_address11_local;
reg    output_differences_1_ce10_local;
reg   [4:0] output_differences_1_address10_local;
reg    output_differences_1_ce9_local;
reg   [4:0] output_differences_1_address9_local;
reg    output_differences_1_ce8_local;
reg   [4:0] output_differences_1_address8_local;
reg    output_differences_1_ce7_local;
reg   [4:0] output_differences_1_address7_local;
reg    output_differences_1_ce6_local;
reg   [4:0] output_differences_1_address6_local;
reg    output_differences_1_ce5_local;
reg   [4:0] output_differences_1_address5_local;
reg    output_differences_1_ce4_local;
reg   [4:0] output_differences_1_address4_local;
reg    output_differences_1_ce3_local;
reg   [4:0] output_differences_1_address3_local;
reg    output_differences_1_ce2_local;
reg   [4:0] output_differences_1_address2_local;
reg    output_differences_1_ce1_local;
reg   [4:0] output_differences_1_address1_local;
reg    output_differences_1_ce0_local;
reg   [4:0] output_differences_1_address0_local;
reg    output_differences_1_ce16_local;
reg    output_differences_1_ce15_local;
reg    grp_fu_1560_ce;
reg    grp_fu_1564_ce;
reg    grp_fu_1568_ce;
reg    grp_fu_1572_ce;
reg    grp_fu_1576_ce;
reg    grp_fu_1580_ce;
reg    grp_fu_1584_ce;
reg    grp_fu_1588_ce;
reg    grp_fu_1592_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_ready),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_1070),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_1075),.output_differences_0_load_1(output_differences_0_load_1_reg_1080),.output_differences_1_load_1(output_differences_1_load_1_reg_1085),.output_differences_0_load_2(output_differences_0_load_2_reg_1090),.output_differences_1_load_2(output_differences_1_load_2_reg_1095),.output_differences_0_load_3(output_differences_0_load_3_reg_1100),.output_differences_1_load_3(output_differences_1_load_3_reg_1105),.output_differences_0_load_4(output_differences_0_load_4_reg_1110),.output_differences_1_load_4(output_differences_1_load_4_reg_1115),.output_differences_0_load_5(output_differences_0_load_5_reg_1120),.output_differences_1_load_5(output_differences_1_load_5_reg_1125),.output_differences_0_load_6(output_differences_0_load_6_reg_1130),.output_differences_1_load_6(output_differences_1_load_6_reg_1135),.output_differences_0_load_7(output_differences_0_load_7_reg_1140),.output_differences_1_load_7(output_differences_1_load_7_reg_1145),.output_differences_0_load_8(output_differences_0_load_8_reg_1150),.output_differences_1_load_8(output_differences_1_load_8_reg_1155),.output_differences_0_load_9(output_differences_0_load_9_reg_1160),.output_differences_1_load_9(output_differences_1_load_9_reg_1165),.output_differences_0_load_10(output_differences_0_load_10_reg_1170),.output_differences_1_load_10(output_differences_1_load_10_reg_1175),.output_differences_0_load_11(output_differences_0_load_11_reg_1180),.output_differences_1_load_11(output_differences_1_load_11_reg_1185),.output_differences_0_load_12(output_differences_0_load_12_reg_1190),.output_differences_1_load_12(output_differences_1_load_12_reg_1195),.output_differences_0_load_13(output_differences_0_load_13_reg_1200),.output_differences_1_load_13(output_differences_1_load_13_reg_1205),.output_differences_0_load_14(output_differences_0_load_14_reg_1210),.output_differences_1_load_14(output_differences_1_load_14_reg_1215),.output_differences_0_load_15(output_differences_0_load_15_reg_1390),.output_differences_1_load_15(output_differences_1_load_15_reg_1395),.output_differences_0_load_16(output_differences_0_load_16_reg_1400),.output_differences_1_load_16(output_differences_1_load_16_reg_1405),.output_differences_0_load_17(output_differences_0_load_17_reg_1410),.output_differences_1_load_17(output_differences_1_load_17_reg_1415),.output_differences_0_load_18(output_differences_0_load_18_reg_1420),.output_differences_1_load_18(output_differences_1_load_18_reg_1425),.output_differences_0_load_19(output_differences_0_load_19_reg_1430),.output_differences_1_load_19(output_differences_1_load_19_reg_1435),.output_differences_0_load_20(output_differences_0_load_20_reg_1440),.output_differences_1_load_20(output_differences_1_load_20_reg_1445),.output_differences_0_load_21(output_differences_0_load_21_reg_1450),.output_differences_1_load_21(output_differences_1_load_21_reg_1455),.output_differences_0_load_22(output_differences_0_load_22_reg_1460),.output_differences_1_load_22(output_differences_1_load_22_reg_1465),.output_differences_0_load_23(output_differences_0_load_23_reg_1470),.output_differences_1_load_23(output_differences_1_load_23_reg_1475),.output_differences_0_load_24(output_differences_0_load_24_reg_1480),.output_differences_1_load_24(output_differences_1_load_24_reg_1485),.output_differences_0_load_25(output_differences_0_load_25_reg_1490),.output_differences_1_load_25(output_differences_1_load_25_reg_1495),.output_differences_0_load_26(output_differences_0_load_26_reg_1500),.output_differences_1_load_26(output_differences_1_load_26_reg_1505),.output_differences_0_load_27(output_differences_0_load_27_reg_1510),.output_differences_1_load_27(output_differences_1_load_27_reg_1515),.output_differences_0_load_28(output_differences_0_load_28_reg_1520),.output_differences_1_load_28(output_differences_1_load_28_reg_1525),.output_differences_0_load_29(output_differences_0_load_29_reg_1530),.output_differences_1_load_29(output_differences_1_load_29_reg_1535),.output_differences_0_load_30(output_differences_0_load_30_reg_1540),.output_differences_1_load_30(output_differences_1_load_30_reg_1545),.output_differences_0_load_31(output_differences_0_load_31_reg_1550),.output_differences_1_load_31(output_differences_1_load_31_reg_1555),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.grp_fu_1560_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din0),.grp_fu_1560_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din1),.grp_fu_1560_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_opcode),.grp_fu_1560_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1560_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_ce),.grp_fu_1564_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din0),.grp_fu_1564_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din1),.grp_fu_1564_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_opcode),.grp_fu_1564_p_dout0(grp_fu_2846_p_dout0),.grp_fu_1564_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_ce),.grp_fu_1568_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din0),.grp_fu_1568_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din1),.grp_fu_1568_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_opcode),.grp_fu_1568_p_dout0(grp_fu_2850_p_dout0),.grp_fu_1568_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_ce),.grp_fu_1572_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din0),.grp_fu_1572_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din1),.grp_fu_1572_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_opcode),.grp_fu_1572_p_dout0(grp_fu_2854_p_dout0),.grp_fu_1572_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_ce),.grp_fu_1576_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din0),.grp_fu_1576_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din1),.grp_fu_1576_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1576_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_ce),.grp_fu_1580_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din0),.grp_fu_1580_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din1),.grp_fu_1580_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1580_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_ce),.grp_fu_1584_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din0),.grp_fu_1584_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din1),.grp_fu_1584_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1584_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_ce),.grp_fu_1588_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din0),.grp_fu_1588_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din1),.grp_fu_1588_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1588_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_ce),.grp_fu_1592_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din0),.grp_fu_1592_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din1),.grp_fu_1592_p_dout0(grp_fu_2890_p_dout0),.grp_fu_1592_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_10_reg_1170 <= output_differences_0_q4;
        output_differences_0_load_11_reg_1180 <= output_differences_0_q3;
        output_differences_0_load_12_reg_1190 <= output_differences_0_q2;
        output_differences_0_load_13_reg_1200 <= output_differences_0_q1;
        output_differences_0_load_14_reg_1210 <= output_differences_0_q0;
        output_differences_0_load_1_reg_1080 <= output_differences_0_q13;
        output_differences_0_load_2_reg_1090 <= output_differences_0_q12;
        output_differences_0_load_3_reg_1100 <= output_differences_0_q11;
        output_differences_0_load_4_reg_1110 <= output_differences_0_q10;
        output_differences_0_load_5_reg_1120 <= output_differences_0_q9;
        output_differences_0_load_6_reg_1130 <= output_differences_0_q8;
        output_differences_0_load_7_reg_1140 <= output_differences_0_q7;
        output_differences_0_load_8_reg_1150 <= output_differences_0_q6;
        output_differences_0_load_9_reg_1160 <= output_differences_0_q5;
        output_differences_0_load_reg_1070 <= output_differences_0_q14;
        output_differences_1_load_10_reg_1175 <= output_differences_1_q4;
        output_differences_1_load_11_reg_1185 <= output_differences_1_q3;
        output_differences_1_load_12_reg_1195 <= output_differences_1_q2;
        output_differences_1_load_13_reg_1205 <= output_differences_1_q1;
        output_differences_1_load_14_reg_1215 <= output_differences_1_q0;
        output_differences_1_load_1_reg_1085 <= output_differences_1_q13;
        output_differences_1_load_2_reg_1095 <= output_differences_1_q12;
        output_differences_1_load_3_reg_1105 <= output_differences_1_q11;
        output_differences_1_load_4_reg_1115 <= output_differences_1_q10;
        output_differences_1_load_5_reg_1125 <= output_differences_1_q9;
        output_differences_1_load_6_reg_1135 <= output_differences_1_q8;
        output_differences_1_load_7_reg_1145 <= output_differences_1_q7;
        output_differences_1_load_8_reg_1155 <= output_differences_1_q6;
        output_differences_1_load_9_reg_1165 <= output_differences_1_q5;
        output_differences_1_load_reg_1075 <= output_differences_1_q14;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_load_15_reg_1390 <= output_differences_0_q16;
        output_differences_0_load_16_reg_1400 <= output_differences_0_q15;
        output_differences_0_load_17_reg_1410 <= output_differences_0_q14;
        output_differences_0_load_18_reg_1420 <= output_differences_0_q13;
        output_differences_0_load_19_reg_1430 <= output_differences_0_q12;
        output_differences_0_load_20_reg_1440 <= output_differences_0_q11;
        output_differences_0_load_21_reg_1450 <= output_differences_0_q10;
        output_differences_0_load_22_reg_1460 <= output_differences_0_q9;
        output_differences_0_load_23_reg_1470 <= output_differences_0_q8;
        output_differences_0_load_24_reg_1480 <= output_differences_0_q7;
        output_differences_0_load_25_reg_1490 <= output_differences_0_q6;
        output_differences_0_load_26_reg_1500 <= output_differences_0_q5;
        output_differences_0_load_27_reg_1510 <= output_differences_0_q4;
        output_differences_0_load_28_reg_1520 <= output_differences_0_q3;
        output_differences_0_load_29_reg_1530 <= output_differences_0_q2;
        output_differences_0_load_30_reg_1540 <= output_differences_0_q1;
        output_differences_0_load_31_reg_1550 <= output_differences_0_q0;
        output_differences_1_load_15_reg_1395 <= output_differences_1_q16;
        output_differences_1_load_16_reg_1405 <= output_differences_1_q15;
        output_differences_1_load_17_reg_1415 <= output_differences_1_q14;
        output_differences_1_load_18_reg_1425 <= output_differences_1_q13;
        output_differences_1_load_19_reg_1435 <= output_differences_1_q12;
        output_differences_1_load_20_reg_1445 <= output_differences_1_q11;
        output_differences_1_load_21_reg_1455 <= output_differences_1_q10;
        output_differences_1_load_22_reg_1465 <= output_differences_1_q9;
        output_differences_1_load_23_reg_1475 <= output_differences_1_q8;
        output_differences_1_load_24_reg_1485 <= output_differences_1_q7;
        output_differences_1_load_25_reg_1495 <= output_differences_1_q6;
        output_differences_1_load_26_reg_1505 <= output_differences_1_q5;
        output_differences_1_load_27_reg_1515 <= output_differences_1_q4;
        output_differences_1_load_28_reg_1525 <= output_differences_1_q3;
        output_differences_1_load_29_reg_1535 <= output_differences_1_q2;
        output_differences_1_load_30_reg_1545 <= output_differences_1_q1;
        output_differences_1_load_31_reg_1555 <= output_differences_1_q0;
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
always @ (*) begin
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1560_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_ce;
    end else begin
        grp_fu_1560_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1564_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_ce;
    end else begin
        grp_fu_1564_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1568_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_ce;
    end else begin
        grp_fu_1568_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1572_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_ce;
    end else begin
        grp_fu_1572_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1576_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_ce;
    end else begin
        grp_fu_1576_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1580_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_ce;
    end else begin
        grp_fu_1580_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1584_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_ce;
    end else begin
        grp_fu_1584_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1588_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_ce;
    end else begin
        grp_fu_1588_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1592_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_ce;
    end else begin
        grp_fu_1592_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address0_local = 64'd14;
    end else begin
        output_differences_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address10_local = 64'd4;
    end else begin
        output_differences_0_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address11_local = 64'd3;
    end else begin
        output_differences_0_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address12_local = 64'd2;
    end else begin
        output_differences_0_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address13_local = 64'd1;
    end else begin
        output_differences_0_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address14_local = 64'd0;
    end else begin
        output_differences_0_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address1_local = 64'd13;
    end else begin
        output_differences_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address2_local = 64'd12;
    end else begin
        output_differences_0_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address3_local = 64'd11;
    end else begin
        output_differences_0_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address4_local = 64'd10;
    end else begin
        output_differences_0_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address5_local = 64'd9;
    end else begin
        output_differences_0_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address6_local = 64'd8;
    end else begin
        output_differences_0_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address7_local = 64'd7;
    end else begin
        output_differences_0_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address8_local = 64'd6;
    end else begin
        output_differences_0_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address9_local = 64'd5;
    end else begin
        output_differences_0_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce0_local = 1'b1;
    end else begin
        output_differences_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce10_local = 1'b1;
    end else begin
        output_differences_0_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce11_local = 1'b1;
    end else begin
        output_differences_0_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce12_local = 1'b1;
    end else begin
        output_differences_0_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce13_local = 1'b1;
    end else begin
        output_differences_0_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce14_local = 1'b1;
    end else begin
        output_differences_0_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_ce15_local = 1'b1;
    end else begin
        output_differences_0_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_ce16_local = 1'b1;
    end else begin
        output_differences_0_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce1_local = 1'b1;
    end else begin
        output_differences_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce2_local = 1'b1;
    end else begin
        output_differences_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce3_local = 1'b1;
    end else begin
        output_differences_0_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce4_local = 1'b1;
    end else begin
        output_differences_0_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce5_local = 1'b1;
    end else begin
        output_differences_0_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce6_local = 1'b1;
    end else begin
        output_differences_0_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce7_local = 1'b1;
    end else begin
        output_differences_0_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce8_local = 1'b1;
    end else begin
        output_differences_0_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce9_local = 1'b1;
    end else begin
        output_differences_0_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address0_local = 64'd14;
    end else begin
        output_differences_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address10_local = 64'd4;
    end else begin
        output_differences_1_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address11_local = 64'd3;
    end else begin
        output_differences_1_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address12_local = 64'd2;
    end else begin
        output_differences_1_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address13_local = 64'd1;
    end else begin
        output_differences_1_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address14_local = 64'd0;
    end else begin
        output_differences_1_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address1_local = 64'd13;
    end else begin
        output_differences_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address2_local = 64'd12;
    end else begin
        output_differences_1_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address3_local = 64'd11;
    end else begin
        output_differences_1_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address4_local = 64'd10;
    end else begin
        output_differences_1_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address5_local = 64'd9;
    end else begin
        output_differences_1_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address6_local = 64'd8;
    end else begin
        output_differences_1_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address7_local = 64'd7;
    end else begin
        output_differences_1_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address8_local = 64'd6;
    end else begin
        output_differences_1_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address9_local = 64'd5;
    end else begin
        output_differences_1_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce0_local = 1'b1;
    end else begin
        output_differences_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce10_local = 1'b1;
    end else begin
        output_differences_1_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce11_local = 1'b1;
    end else begin
        output_differences_1_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce12_local = 1'b1;
    end else begin
        output_differences_1_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce13_local = 1'b1;
    end else begin
        output_differences_1_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce14_local = 1'b1;
    end else begin
        output_differences_1_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_ce15_local = 1'b1;
    end else begin
        output_differences_1_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_ce16_local = 1'b1;
    end else begin
        output_differences_1_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce1_local = 1'b1;
    end else begin
        output_differences_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce2_local = 1'b1;
    end else begin
        output_differences_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce3_local = 1'b1;
    end else begin
        output_differences_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce4_local = 1'b1;
    end else begin
        output_differences_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce5_local = 1'b1;
    end else begin
        output_differences_1_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce6_local = 1'b1;
    end else begin
        output_differences_1_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce7_local = 1'b1;
    end else begin
        output_differences_1_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce8_local = 1'b1;
    end else begin
        output_differences_1_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce9_local = 1'b1;
    end else begin
        output_differences_1_ce9_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_0_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_dactivations_1_ce0;
assign grp_fu_2842_p_ce = grp_fu_1560_ce;
assign grp_fu_2842_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din0;
assign grp_fu_2842_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_din1;
assign grp_fu_2842_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1560_p_opcode;
assign grp_fu_2846_p_ce = grp_fu_1564_ce;
assign grp_fu_2846_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din0;
assign grp_fu_2846_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_din1;
assign grp_fu_2846_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1564_p_opcode;
assign grp_fu_2850_p_ce = grp_fu_1568_ce;
assign grp_fu_2850_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din0;
assign grp_fu_2850_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_din1;
assign grp_fu_2850_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1568_p_opcode;
assign grp_fu_2854_p_ce = grp_fu_1572_ce;
assign grp_fu_2854_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din0;
assign grp_fu_2854_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_din1;
assign grp_fu_2854_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1572_p_opcode;
assign grp_fu_2874_p_ce = grp_fu_1576_ce;
assign grp_fu_2874_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din0;
assign grp_fu_2874_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1576_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1580_ce;
assign grp_fu_2878_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din0;
assign grp_fu_2878_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1580_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1584_ce;
assign grp_fu_2882_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din0;
assign grp_fu_2882_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1584_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1588_ce;
assign grp_fu_2886_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din0;
assign grp_fu_2886_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1588_p_din1;
assign grp_fu_2890_p_ce = grp_fu_1592_ce;
assign grp_fu_2890_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din0;
assign grp_fu_2890_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_grp_fu_1592_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_0_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_oracle_activations_1_we0;
assign output_differences_0_address0 = output_differences_0_address0_local;
assign output_differences_0_address1 = output_differences_0_address1_local;
assign output_differences_0_address10 = output_differences_0_address10_local;
assign output_differences_0_address11 = output_differences_0_address11_local;
assign output_differences_0_address12 = output_differences_0_address12_local;
assign output_differences_0_address13 = output_differences_0_address13_local;
assign output_differences_0_address14 = output_differences_0_address14_local;
assign output_differences_0_address15 = 64'd16;
assign output_differences_0_address16 = 64'd15;
assign output_differences_0_address2 = output_differences_0_address2_local;
assign output_differences_0_address3 = output_differences_0_address3_local;
assign output_differences_0_address4 = output_differences_0_address4_local;
assign output_differences_0_address5 = output_differences_0_address5_local;
assign output_differences_0_address6 = output_differences_0_address6_local;
assign output_differences_0_address7 = output_differences_0_address7_local;
assign output_differences_0_address8 = output_differences_0_address8_local;
assign output_differences_0_address9 = output_differences_0_address9_local;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_0_ce10 = output_differences_0_ce10_local;
assign output_differences_0_ce11 = output_differences_0_ce11_local;
assign output_differences_0_ce12 = output_differences_0_ce12_local;
assign output_differences_0_ce13 = output_differences_0_ce13_local;
assign output_differences_0_ce14 = output_differences_0_ce14_local;
assign output_differences_0_ce15 = output_differences_0_ce15_local;
assign output_differences_0_ce16 = output_differences_0_ce16_local;
assign output_differences_0_ce2 = output_differences_0_ce2_local;
assign output_differences_0_ce3 = output_differences_0_ce3_local;
assign output_differences_0_ce4 = output_differences_0_ce4_local;
assign output_differences_0_ce5 = output_differences_0_ce5_local;
assign output_differences_0_ce6 = output_differences_0_ce6_local;
assign output_differences_0_ce7 = output_differences_0_ce7_local;
assign output_differences_0_ce8 = output_differences_0_ce8_local;
assign output_differences_0_ce9 = output_differences_0_ce9_local;
assign output_differences_1_address0 = output_differences_1_address0_local;
assign output_differences_1_address1 = output_differences_1_address1_local;
assign output_differences_1_address10 = output_differences_1_address10_local;
assign output_differences_1_address11 = output_differences_1_address11_local;
assign output_differences_1_address12 = output_differences_1_address12_local;
assign output_differences_1_address13 = output_differences_1_address13_local;
assign output_differences_1_address14 = output_differences_1_address14_local;
assign output_differences_1_address15 = 64'd16;
assign output_differences_1_address16 = 64'd15;
assign output_differences_1_address2 = output_differences_1_address2_local;
assign output_differences_1_address3 = output_differences_1_address3_local;
assign output_differences_1_address4 = output_differences_1_address4_local;
assign output_differences_1_address5 = output_differences_1_address5_local;
assign output_differences_1_address6 = output_differences_1_address6_local;
assign output_differences_1_address7 = output_differences_1_address7_local;
assign output_differences_1_address8 = output_differences_1_address8_local;
assign output_differences_1_address9 = output_differences_1_address9_local;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign output_differences_1_ce10 = output_differences_1_ce10_local;
assign output_differences_1_ce11 = output_differences_1_ce11_local;
assign output_differences_1_ce12 = output_differences_1_ce12_local;
assign output_differences_1_ce13 = output_differences_1_ce13_local;
assign output_differences_1_ce14 = output_differences_1_ce14_local;
assign output_differences_1_ce15 = output_differences_1_ce15_local;
assign output_differences_1_ce16 = output_differences_1_ce16_local;
assign output_differences_1_ce2 = output_differences_1_ce2_local;
assign output_differences_1_ce3 = output_differences_1_ce3_local;
assign output_differences_1_ce4 = output_differences_1_ce4_local;
assign output_differences_1_ce5 = output_differences_1_ce5_local;
assign output_differences_1_ce6 = output_differences_1_ce6_local;
assign output_differences_1_ce7 = output_differences_1_ce7_local;
assign output_differences_1_ce8 = output_differences_1_ce8_local;
assign output_differences_1_ce9 = output_differences_1_ce9_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_806_weights2_1_ce1;
endmodule 
