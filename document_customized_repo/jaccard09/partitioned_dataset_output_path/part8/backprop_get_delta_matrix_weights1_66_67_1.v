
module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_0_address8,output_difference_0_ce8,output_difference_0_q8,output_difference_0_address9,output_difference_0_ce9,output_difference_0_q9,output_difference_0_address10,output_difference_0_ce10,output_difference_0_q10,output_difference_0_address11,output_difference_0_ce11,output_difference_0_q11,output_difference_0_address12,output_difference_0_ce12,output_difference_0_q12,output_difference_0_address13,output_difference_0_ce13,output_difference_0_q13,output_difference_0_address14,output_difference_0_ce14,output_difference_0_q14,output_difference_0_address15,output_difference_0_ce15,output_difference_0_q15,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_1_address8,output_difference_1_ce8,output_difference_1_q8,output_difference_1_address9,output_difference_1_ce9,output_difference_1_q9,output_difference_1_address10,output_difference_1_ce10,output_difference_1_q10,output_difference_1_address11,output_difference_1_ce11,output_difference_1_q11,output_difference_1_address12,output_difference_1_ce12,output_difference_1_q12,output_difference_1_address13,output_difference_1_ce13,output_difference_1_q13,output_difference_1_address14,output_difference_1_ce14,output_difference_1_q14,output_difference_1_address15,output_difference_1_ce15,output_difference_1_q15,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_2_address2,output_difference_2_ce2,output_difference_2_q2,output_difference_2_address3,output_difference_2_ce3,output_difference_2_q3,output_difference_2_address4,output_difference_2_ce4,output_difference_2_q4,output_difference_2_address5,output_difference_2_ce5,output_difference_2_q5,output_difference_2_address6,output_difference_2_ce6,output_difference_2_q6,output_difference_2_address7,output_difference_2_ce7,output_difference_2_q7,output_difference_2_address8,output_difference_2_ce8,output_difference_2_q8,output_difference_2_address9,output_difference_2_ce9,output_difference_2_q9,output_difference_2_address10,output_difference_2_ce10,output_difference_2_q10,output_difference_2_address11,output_difference_2_ce11,output_difference_2_q11,output_difference_2_address12,output_difference_2_ce12,output_difference_2_q12,output_difference_2_address13,output_difference_2_ce13,output_difference_2_q13,output_difference_2_address14,output_difference_2_ce14,output_difference_2_q14,output_difference_2_address15,output_difference_2_ce15,output_difference_2_q15,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_3_address2,output_difference_3_ce2,output_difference_3_q2,output_difference_3_address3,output_difference_3_ce3,output_difference_3_q3,output_difference_3_address4,output_difference_3_ce4,output_difference_3_q4,output_difference_3_address5,output_difference_3_ce5,output_difference_3_q5,output_difference_3_address6,output_difference_3_ce6,output_difference_3_q6,output_difference_3_address7,output_difference_3_ce7,output_difference_3_q7,output_difference_3_address8,output_difference_3_ce8,output_difference_3_q8,output_difference_3_address9,output_difference_3_ce9,output_difference_3_q9,output_difference_3_address10,output_difference_3_ce10,output_difference_3_q10,output_difference_3_address11,output_difference_3_ce11,output_difference_3_q11,output_difference_3_address12,output_difference_3_ce12,output_difference_3_q12,output_difference_3_address13,output_difference_3_ce13,output_difference_3_q13,output_difference_3_address14,output_difference_3_ce14,output_difference_3_q14,output_difference_3_address15,output_difference_3_ce15,output_difference_3_q15,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,idx,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce);  
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
output  [3:0] output_difference_0_address2;
output   output_difference_0_ce2;
input  [63:0] output_difference_0_q2;
output  [3:0] output_difference_0_address3;
output   output_difference_0_ce3;
input  [63:0] output_difference_0_q3;
output  [3:0] output_difference_0_address4;
output   output_difference_0_ce4;
input  [63:0] output_difference_0_q4;
output  [3:0] output_difference_0_address5;
output   output_difference_0_ce5;
input  [63:0] output_difference_0_q5;
output  [3:0] output_difference_0_address6;
output   output_difference_0_ce6;
input  [63:0] output_difference_0_q6;
output  [3:0] output_difference_0_address7;
output   output_difference_0_ce7;
input  [63:0] output_difference_0_q7;
output  [3:0] output_difference_0_address8;
output   output_difference_0_ce8;
input  [63:0] output_difference_0_q8;
output  [3:0] output_difference_0_address9;
output   output_difference_0_ce9;
input  [63:0] output_difference_0_q9;
output  [3:0] output_difference_0_address10;
output   output_difference_0_ce10;
input  [63:0] output_difference_0_q10;
output  [3:0] output_difference_0_address11;
output   output_difference_0_ce11;
input  [63:0] output_difference_0_q11;
output  [3:0] output_difference_0_address12;
output   output_difference_0_ce12;
input  [63:0] output_difference_0_q12;
output  [3:0] output_difference_0_address13;
output   output_difference_0_ce13;
input  [63:0] output_difference_0_q13;
output  [3:0] output_difference_0_address14;
output   output_difference_0_ce14;
input  [63:0] output_difference_0_q14;
output  [3:0] output_difference_0_address15;
output   output_difference_0_ce15;
input  [63:0] output_difference_0_q15;
output  [3:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [3:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [3:0] output_difference_1_address2;
output   output_difference_1_ce2;
input  [63:0] output_difference_1_q2;
output  [3:0] output_difference_1_address3;
output   output_difference_1_ce3;
input  [63:0] output_difference_1_q3;
output  [3:0] output_difference_1_address4;
output   output_difference_1_ce4;
input  [63:0] output_difference_1_q4;
output  [3:0] output_difference_1_address5;
output   output_difference_1_ce5;
input  [63:0] output_difference_1_q5;
output  [3:0] output_difference_1_address6;
output   output_difference_1_ce6;
input  [63:0] output_difference_1_q6;
output  [3:0] output_difference_1_address7;
output   output_difference_1_ce7;
input  [63:0] output_difference_1_q7;
output  [3:0] output_difference_1_address8;
output   output_difference_1_ce8;
input  [63:0] output_difference_1_q8;
output  [3:0] output_difference_1_address9;
output   output_difference_1_ce9;
input  [63:0] output_difference_1_q9;
output  [3:0] output_difference_1_address10;
output   output_difference_1_ce10;
input  [63:0] output_difference_1_q10;
output  [3:0] output_difference_1_address11;
output   output_difference_1_ce11;
input  [63:0] output_difference_1_q11;
output  [3:0] output_difference_1_address12;
output   output_difference_1_ce12;
input  [63:0] output_difference_1_q12;
output  [3:0] output_difference_1_address13;
output   output_difference_1_ce13;
input  [63:0] output_difference_1_q13;
output  [3:0] output_difference_1_address14;
output   output_difference_1_ce14;
input  [63:0] output_difference_1_q14;
output  [3:0] output_difference_1_address15;
output   output_difference_1_ce15;
input  [63:0] output_difference_1_q15;
output  [3:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [3:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [3:0] output_difference_2_address2;
output   output_difference_2_ce2;
input  [63:0] output_difference_2_q2;
output  [3:0] output_difference_2_address3;
output   output_difference_2_ce3;
input  [63:0] output_difference_2_q3;
output  [3:0] output_difference_2_address4;
output   output_difference_2_ce4;
input  [63:0] output_difference_2_q4;
output  [3:0] output_difference_2_address5;
output   output_difference_2_ce5;
input  [63:0] output_difference_2_q5;
output  [3:0] output_difference_2_address6;
output   output_difference_2_ce6;
input  [63:0] output_difference_2_q6;
output  [3:0] output_difference_2_address7;
output   output_difference_2_ce7;
input  [63:0] output_difference_2_q7;
output  [3:0] output_difference_2_address8;
output   output_difference_2_ce8;
input  [63:0] output_difference_2_q8;
output  [3:0] output_difference_2_address9;
output   output_difference_2_ce9;
input  [63:0] output_difference_2_q9;
output  [3:0] output_difference_2_address10;
output   output_difference_2_ce10;
input  [63:0] output_difference_2_q10;
output  [3:0] output_difference_2_address11;
output   output_difference_2_ce11;
input  [63:0] output_difference_2_q11;
output  [3:0] output_difference_2_address12;
output   output_difference_2_ce12;
input  [63:0] output_difference_2_q12;
output  [3:0] output_difference_2_address13;
output   output_difference_2_ce13;
input  [63:0] output_difference_2_q13;
output  [3:0] output_difference_2_address14;
output   output_difference_2_ce14;
input  [63:0] output_difference_2_q14;
output  [3:0] output_difference_2_address15;
output   output_difference_2_ce15;
input  [63:0] output_difference_2_q15;
output  [3:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [3:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [3:0] output_difference_3_address2;
output   output_difference_3_ce2;
input  [63:0] output_difference_3_q2;
output  [3:0] output_difference_3_address3;
output   output_difference_3_ce3;
input  [63:0] output_difference_3_q3;
output  [3:0] output_difference_3_address4;
output   output_difference_3_ce4;
input  [63:0] output_difference_3_q4;
output  [3:0] output_difference_3_address5;
output   output_difference_3_ce5;
input  [63:0] output_difference_3_q5;
output  [3:0] output_difference_3_address6;
output   output_difference_3_ce6;
input  [63:0] output_difference_3_q6;
output  [3:0] output_difference_3_address7;
output   output_difference_3_ce7;
input  [63:0] output_difference_3_q7;
output  [3:0] output_difference_3_address8;
output   output_difference_3_ce8;
input  [63:0] output_difference_3_q8;
output  [3:0] output_difference_3_address9;
output   output_difference_3_ce9;
input  [63:0] output_difference_3_q9;
output  [3:0] output_difference_3_address10;
output   output_difference_3_ce10;
input  [63:0] output_difference_3_q10;
output  [3:0] output_difference_3_address11;
output   output_difference_3_ce11;
input  [63:0] output_difference_3_q11;
output  [3:0] output_difference_3_address12;
output   output_difference_3_ce12;
input  [63:0] output_difference_3_q12;
output  [3:0] output_difference_3_address13;
output   output_difference_3_ce13;
input  [63:0] output_difference_3_q13;
output  [3:0] output_difference_3_address14;
output   output_difference_3_ce14;
input  [63:0] output_difference_3_q14;
output  [3:0] output_difference_3_address15;
output   output_difference_3_ce15;
input  [63:0] output_difference_3_q15;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1320;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1325;
reg   [63:0] output_difference_2_load_reg_1330;
reg   [63:0] output_difference_3_load_reg_1335;
reg   [63:0] output_difference_0_load_16_reg_1340;
reg   [63:0] output_difference_1_load_16_reg_1345;
reg   [63:0] output_difference_2_load_16_reg_1350;
reg   [63:0] output_difference_3_load_16_reg_1355;
reg   [63:0] output_difference_0_load_17_reg_1360;
reg   [63:0] output_difference_1_load_17_reg_1365;
reg   [63:0] output_difference_2_load_17_reg_1370;
reg   [63:0] output_difference_3_load_17_reg_1375;
reg   [63:0] output_difference_0_load_18_reg_1380;
reg   [63:0] output_difference_1_load_18_reg_1385;
reg   [63:0] output_difference_2_load_18_reg_1390;
reg   [63:0] output_difference_3_load_18_reg_1395;
reg   [63:0] output_difference_0_load_19_reg_1400;
reg   [63:0] output_difference_1_load_19_reg_1405;
reg   [63:0] output_difference_2_load_19_reg_1410;
reg   [63:0] output_difference_3_load_19_reg_1415;
reg   [63:0] output_difference_0_load_20_reg_1420;
reg   [63:0] output_difference_1_load_20_reg_1425;
reg   [63:0] output_difference_2_load_20_reg_1430;
reg   [63:0] output_difference_3_load_20_reg_1435;
reg   [63:0] output_difference_0_load_21_reg_1440;
reg   [63:0] output_difference_1_load_21_reg_1445;
reg   [63:0] output_difference_2_load_21_reg_1450;
reg   [63:0] output_difference_3_load_21_reg_1455;
reg   [63:0] output_difference_0_load_22_reg_1460;
reg   [63:0] output_difference_1_load_22_reg_1465;
reg   [63:0] output_difference_2_load_22_reg_1470;
reg   [63:0] output_difference_3_load_22_reg_1475;
reg   [63:0] output_difference_0_load_23_reg_1480;
reg   [63:0] output_difference_1_load_23_reg_1485;
reg   [63:0] output_difference_2_load_23_reg_1490;
reg   [63:0] output_difference_3_load_23_reg_1495;
reg   [63:0] output_difference_0_load_24_reg_1500;
reg   [63:0] output_difference_1_load_24_reg_1505;
reg   [63:0] output_difference_2_load_24_reg_1510;
reg   [63:0] output_difference_3_load_24_reg_1515;
reg   [63:0] output_difference_0_load_25_reg_1520;
reg   [63:0] output_difference_1_load_25_reg_1525;
reg   [63:0] output_difference_2_load_25_reg_1530;
reg   [63:0] output_difference_3_load_25_reg_1535;
reg   [63:0] output_difference_0_load_26_reg_1540;
reg   [63:0] output_difference_1_load_26_reg_1545;
reg   [63:0] output_difference_2_load_26_reg_1550;
reg   [63:0] output_difference_3_load_26_reg_1555;
reg   [63:0] output_difference_0_load_27_reg_1560;
reg   [63:0] output_difference_1_load_27_reg_1565;
reg   [63:0] output_difference_2_load_27_reg_1570;
reg   [63:0] output_difference_3_load_27_reg_1575;
reg   [63:0] output_difference_0_load_28_reg_1580;
reg   [63:0] output_difference_1_load_28_reg_1585;
reg   [63:0] output_difference_2_load_28_reg_1590;
reg   [63:0] output_difference_3_load_28_reg_1595;
reg   [63:0] output_difference_0_load_29_reg_1600;
reg   [63:0] output_difference_1_load_29_reg_1605;
reg   [63:0] output_difference_2_load_29_reg_1610;
reg   [63:0] output_difference_3_load_29_reg_1615;
reg   [63:0] output_difference_0_load_30_reg_1620;
reg   [63:0] output_difference_1_load_30_reg_1625;
reg   [63:0] output_difference_2_load_30_reg_1630;
reg   [63:0] output_difference_3_load_30_reg_1635;
wire    ap_CS_fsm_state3;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_ready;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d1;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d0;
wire   [7:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d1;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_ce0;
wire   [9:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    output_difference_0_ce15_local;
reg    output_difference_0_ce14_local;
reg    output_difference_0_ce13_local;
reg    output_difference_0_ce12_local;
reg    output_difference_0_ce11_local;
reg    output_difference_0_ce10_local;
reg    output_difference_0_ce9_local;
reg    output_difference_0_ce8_local;
reg    output_difference_0_ce7_local;
reg    output_difference_0_ce6_local;
reg    output_difference_0_ce5_local;
reg    output_difference_0_ce4_local;
reg    output_difference_0_ce3_local;
reg    output_difference_0_ce2_local;
reg    output_difference_0_ce1_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce15_local;
reg    output_difference_1_ce14_local;
reg    output_difference_1_ce13_local;
reg    output_difference_1_ce12_local;
reg    output_difference_1_ce11_local;
reg    output_difference_1_ce10_local;
reg    output_difference_1_ce9_local;
reg    output_difference_1_ce8_local;
reg    output_difference_1_ce7_local;
reg    output_difference_1_ce6_local;
reg    output_difference_1_ce5_local;
reg    output_difference_1_ce4_local;
reg    output_difference_1_ce3_local;
reg    output_difference_1_ce2_local;
reg    output_difference_1_ce1_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce15_local;
reg    output_difference_2_ce14_local;
reg    output_difference_2_ce13_local;
reg    output_difference_2_ce12_local;
reg    output_difference_2_ce11_local;
reg    output_difference_2_ce10_local;
reg    output_difference_2_ce9_local;
reg    output_difference_2_ce8_local;
reg    output_difference_2_ce7_local;
reg    output_difference_2_ce6_local;
reg    output_difference_2_ce5_local;
reg    output_difference_2_ce4_local;
reg    output_difference_2_ce3_local;
reg    output_difference_2_ce2_local;
reg    output_difference_2_ce1_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce15_local;
reg    output_difference_3_ce14_local;
reg    output_difference_3_ce13_local;
reg    output_difference_3_ce12_local;
reg    output_difference_3_ce11_local;
reg    output_difference_3_ce10_local;
reg    output_difference_3_ce9_local;
reg    output_difference_3_ce8_local;
reg    output_difference_3_ce7_local;
reg    output_difference_3_ce6_local;
reg    output_difference_3_ce5_local;
reg    output_difference_3_ce4_local;
reg    output_difference_3_ce3_local;
reg    output_difference_3_ce2_local;
reg    output_difference_3_ce1_local;
reg    output_difference_3_ce0_local;
reg    grp_fu_1645_ce;
reg    grp_fu_1649_ce;
reg    grp_fu_1653_ce;
reg    grp_fu_1657_ce;
reg    grp_fu_1661_ce;
reg    grp_fu_1665_ce;
reg    grp_fu_1669_ce;
reg    grp_fu_1673_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_ready),.delta_weights1_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address0),.delta_weights1_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce0),.delta_weights1_3_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we0),.delta_weights1_3_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d0),.delta_weights1_3_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address1),.delta_weights1_3_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce1),.delta_weights1_3_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we1),.delta_weights1_3_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d1),.delta_weights1_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address0),.delta_weights1_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce0),.delta_weights1_2_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we0),.delta_weights1_2_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d0),.delta_weights1_2_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address1),.delta_weights1_2_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce1),.delta_weights1_2_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we1),.delta_weights1_2_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.training_data_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_address0),.training_data_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_ce0),.training_data_2_q0(training_data_2_q0),.training_data_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_address0),.training_data_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_ce0),.training_data_3_q0(training_data_3_q0),.output_difference_0_load(output_difference_0_load_reg_1320),.output_difference_1_load(output_difference_1_load_reg_1325),.output_difference_2_load(output_difference_2_load_reg_1330),.output_difference_3_load(output_difference_3_load_reg_1335),.output_difference_0_load_16(output_difference_0_load_16_reg_1340),.output_difference_1_load_16(output_difference_1_load_16_reg_1345),.output_difference_2_load_16(output_difference_2_load_16_reg_1350),.output_difference_3_load_16(output_difference_3_load_16_reg_1355),.output_difference_0_load_17(output_difference_0_load_17_reg_1360),.output_difference_1_load_17(output_difference_1_load_17_reg_1365),.output_difference_2_load_17(output_difference_2_load_17_reg_1370),.output_difference_3_load_17(output_difference_3_load_17_reg_1375),.output_difference_0_load_18(output_difference_0_load_18_reg_1380),.output_difference_1_load_18(output_difference_1_load_18_reg_1385),.output_difference_2_load_18(output_difference_2_load_18_reg_1390),.output_difference_3_load_18(output_difference_3_load_18_reg_1395),.output_difference_0_load_19(output_difference_0_load_19_reg_1400),.output_difference_1_load_19(output_difference_1_load_19_reg_1405),.output_difference_2_load_19(output_difference_2_load_19_reg_1410),.output_difference_3_load_19(output_difference_3_load_19_reg_1415),.output_difference_0_load_20(output_difference_0_load_20_reg_1420),.output_difference_1_load_20(output_difference_1_load_20_reg_1425),.output_difference_2_load_20(output_difference_2_load_20_reg_1430),.output_difference_3_load_20(output_difference_3_load_20_reg_1435),.output_difference_0_load_21(output_difference_0_load_21_reg_1440),.output_difference_1_load_21(output_difference_1_load_21_reg_1445),.output_difference_2_load_21(output_difference_2_load_21_reg_1450),.output_difference_3_load_21(output_difference_3_load_21_reg_1455),.output_difference_0_load_22(output_difference_0_load_22_reg_1460),.output_difference_1_load_22(output_difference_1_load_22_reg_1465),.output_difference_2_load_22(output_difference_2_load_22_reg_1470),.output_difference_3_load_22(output_difference_3_load_22_reg_1475),.output_difference_0_load_23(output_difference_0_load_23_reg_1480),.output_difference_1_load_23(output_difference_1_load_23_reg_1485),.output_difference_2_load_23(output_difference_2_load_23_reg_1490),.output_difference_3_load_23(output_difference_3_load_23_reg_1495),.output_difference_0_load_24(output_difference_0_load_24_reg_1500),.output_difference_1_load_24(output_difference_1_load_24_reg_1505),.output_difference_2_load_24(output_difference_2_load_24_reg_1510),.output_difference_3_load_24(output_difference_3_load_24_reg_1515),.output_difference_0_load_25(output_difference_0_load_25_reg_1520),.output_difference_1_load_25(output_difference_1_load_25_reg_1525),.output_difference_2_load_25(output_difference_2_load_25_reg_1530),.output_difference_3_load_25(output_difference_3_load_25_reg_1535),.output_difference_0_load_26(output_difference_0_load_26_reg_1540),.output_difference_1_load_26(output_difference_1_load_26_reg_1545),.output_difference_2_load_26(output_difference_2_load_26_reg_1550),.output_difference_3_load_26(output_difference_3_load_26_reg_1555),.output_difference_0_load_27(output_difference_0_load_27_reg_1560),.output_difference_1_load_27(output_difference_1_load_27_reg_1565),.output_difference_2_load_27(output_difference_2_load_27_reg_1570),.output_difference_3_load_27(output_difference_3_load_27_reg_1575),.output_difference_0_load_28(output_difference_0_load_28_reg_1580),.output_difference_1_load_28(output_difference_1_load_28_reg_1585),.output_difference_2_load_28(output_difference_2_load_28_reg_1590),.output_difference_3_load_28(output_difference_3_load_28_reg_1595),.output_difference_0_load_29(output_difference_0_load_29_reg_1600),.output_difference_1_load_29(output_difference_1_load_29_reg_1605),.output_difference_2_load_29(output_difference_2_load_29_reg_1610),.output_difference_3_load_29(output_difference_3_load_29_reg_1615),.output_difference_0_load_30(output_difference_0_load_30_reg_1620),.output_difference_1_load_30(output_difference_1_load_30_reg_1625),.output_difference_2_load_30(output_difference_2_load_30_reg_1630),.output_difference_3_load_30(output_difference_3_load_30_reg_1635),.grp_fu_1645_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din0),.grp_fu_1645_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din1),.grp_fu_1645_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1645_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_ce),.grp_fu_1649_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din0),.grp_fu_1649_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din1),.grp_fu_1649_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1649_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_ce),.grp_fu_1653_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din0),.grp_fu_1653_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din1),.grp_fu_1653_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1653_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_ce),.grp_fu_1657_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din0),.grp_fu_1657_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din1),.grp_fu_1657_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1657_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_ce),.grp_fu_1661_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din0),.grp_fu_1661_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din1),.grp_fu_1661_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1661_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_ce),.grp_fu_1665_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din0),.grp_fu_1665_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din1),.grp_fu_1665_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1665_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_ce),.grp_fu_1669_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din0),.grp_fu_1669_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din1),.grp_fu_1669_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1669_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_ce),.grp_fu_1673_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din0),.grp_fu_1673_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din1),.grp_fu_1673_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1673_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_16_reg_1340 <= output_difference_0_q14;
        output_difference_0_load_17_reg_1360 <= output_difference_0_q13;
        output_difference_0_load_18_reg_1380 <= output_difference_0_q12;
        output_difference_0_load_19_reg_1400 <= output_difference_0_q11;
        output_difference_0_load_20_reg_1420 <= output_difference_0_q10;
        output_difference_0_load_21_reg_1440 <= output_difference_0_q9;
        output_difference_0_load_22_reg_1460 <= output_difference_0_q8;
        output_difference_0_load_23_reg_1480 <= output_difference_0_q7;
        output_difference_0_load_24_reg_1500 <= output_difference_0_q6;
        output_difference_0_load_25_reg_1520 <= output_difference_0_q5;
        output_difference_0_load_26_reg_1540 <= output_difference_0_q4;
        output_difference_0_load_27_reg_1560 <= output_difference_0_q3;
        output_difference_0_load_28_reg_1580 <= output_difference_0_q2;
        output_difference_0_load_29_reg_1600 <= output_difference_0_q1;
        output_difference_0_load_30_reg_1620 <= output_difference_0_q0;
        output_difference_0_load_reg_1320 <= output_difference_0_q15;
        output_difference_1_load_16_reg_1345 <= output_difference_1_q14;
        output_difference_1_load_17_reg_1365 <= output_difference_1_q13;
        output_difference_1_load_18_reg_1385 <= output_difference_1_q12;
        output_difference_1_load_19_reg_1405 <= output_difference_1_q11;
        output_difference_1_load_20_reg_1425 <= output_difference_1_q10;
        output_difference_1_load_21_reg_1445 <= output_difference_1_q9;
        output_difference_1_load_22_reg_1465 <= output_difference_1_q8;
        output_difference_1_load_23_reg_1485 <= output_difference_1_q7;
        output_difference_1_load_24_reg_1505 <= output_difference_1_q6;
        output_difference_1_load_25_reg_1525 <= output_difference_1_q5;
        output_difference_1_load_26_reg_1545 <= output_difference_1_q4;
        output_difference_1_load_27_reg_1565 <= output_difference_1_q3;
        output_difference_1_load_28_reg_1585 <= output_difference_1_q2;
        output_difference_1_load_29_reg_1605 <= output_difference_1_q1;
        output_difference_1_load_30_reg_1625 <= output_difference_1_q0;
        output_difference_1_load_reg_1325 <= output_difference_1_q15;
        output_difference_2_load_16_reg_1350 <= output_difference_2_q14;
        output_difference_2_load_17_reg_1370 <= output_difference_2_q13;
        output_difference_2_load_18_reg_1390 <= output_difference_2_q12;
        output_difference_2_load_19_reg_1410 <= output_difference_2_q11;
        output_difference_2_load_20_reg_1430 <= output_difference_2_q10;
        output_difference_2_load_21_reg_1450 <= output_difference_2_q9;
        output_difference_2_load_22_reg_1470 <= output_difference_2_q8;
        output_difference_2_load_23_reg_1490 <= output_difference_2_q7;
        output_difference_2_load_24_reg_1510 <= output_difference_2_q6;
        output_difference_2_load_25_reg_1530 <= output_difference_2_q5;
        output_difference_2_load_26_reg_1550 <= output_difference_2_q4;
        output_difference_2_load_27_reg_1570 <= output_difference_2_q3;
        output_difference_2_load_28_reg_1590 <= output_difference_2_q2;
        output_difference_2_load_29_reg_1610 <= output_difference_2_q1;
        output_difference_2_load_30_reg_1630 <= output_difference_2_q0;
        output_difference_2_load_reg_1330 <= output_difference_2_q15;
        output_difference_3_load_16_reg_1355 <= output_difference_3_q14;
        output_difference_3_load_17_reg_1375 <= output_difference_3_q13;
        output_difference_3_load_18_reg_1395 <= output_difference_3_q12;
        output_difference_3_load_19_reg_1415 <= output_difference_3_q11;
        output_difference_3_load_20_reg_1435 <= output_difference_3_q10;
        output_difference_3_load_21_reg_1455 <= output_difference_3_q9;
        output_difference_3_load_22_reg_1475 <= output_difference_3_q8;
        output_difference_3_load_23_reg_1495 <= output_difference_3_q7;
        output_difference_3_load_24_reg_1515 <= output_difference_3_q6;
        output_difference_3_load_25_reg_1535 <= output_difference_3_q5;
        output_difference_3_load_26_reg_1555 <= output_difference_3_q4;
        output_difference_3_load_27_reg_1575 <= output_difference_3_q3;
        output_difference_3_load_28_reg_1595 <= output_difference_3_q2;
        output_difference_3_load_29_reg_1615 <= output_difference_3_q1;
        output_difference_3_load_30_reg_1635 <= output_difference_3_q0;
        output_difference_3_load_reg_1335 <= output_difference_3_q15;
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
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1645_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_ce;
    end else begin
        grp_fu_1645_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1649_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_ce;
    end else begin
        grp_fu_1649_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1653_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_ce;
    end else begin
        grp_fu_1653_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1657_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_ce;
    end else begin
        grp_fu_1657_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1661_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_ce;
    end else begin
        grp_fu_1661_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1665_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_ce;
    end else begin
        grp_fu_1665_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1669_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_ce;
    end else begin
        grp_fu_1669_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1673_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_ce;
    end else begin
        grp_fu_1673_ce = 1'b1;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce10_local = 1'b1;
    end else begin
        output_difference_0_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce11_local = 1'b1;
    end else begin
        output_difference_0_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce12_local = 1'b1;
    end else begin
        output_difference_0_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce13_local = 1'b1;
    end else begin
        output_difference_0_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce14_local = 1'b1;
    end else begin
        output_difference_0_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce15_local = 1'b1;
    end else begin
        output_difference_0_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce2_local = 1'b1;
    end else begin
        output_difference_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce3_local = 1'b1;
    end else begin
        output_difference_0_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce4_local = 1'b1;
    end else begin
        output_difference_0_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce5_local = 1'b1;
    end else begin
        output_difference_0_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce6_local = 1'b1;
    end else begin
        output_difference_0_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce7_local = 1'b1;
    end else begin
        output_difference_0_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce8_local = 1'b1;
    end else begin
        output_difference_0_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_0_ce9_local = 1'b1;
    end else begin
        output_difference_0_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce10_local = 1'b1;
    end else begin
        output_difference_1_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce11_local = 1'b1;
    end else begin
        output_difference_1_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce12_local = 1'b1;
    end else begin
        output_difference_1_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce13_local = 1'b1;
    end else begin
        output_difference_1_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce14_local = 1'b1;
    end else begin
        output_difference_1_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce15_local = 1'b1;
    end else begin
        output_difference_1_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce2_local = 1'b1;
    end else begin
        output_difference_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce3_local = 1'b1;
    end else begin
        output_difference_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce4_local = 1'b1;
    end else begin
        output_difference_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce5_local = 1'b1;
    end else begin
        output_difference_1_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce6_local = 1'b1;
    end else begin
        output_difference_1_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce7_local = 1'b1;
    end else begin
        output_difference_1_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce8_local = 1'b1;
    end else begin
        output_difference_1_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_1_ce9_local = 1'b1;
    end else begin
        output_difference_1_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce10_local = 1'b1;
    end else begin
        output_difference_2_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce11_local = 1'b1;
    end else begin
        output_difference_2_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce12_local = 1'b1;
    end else begin
        output_difference_2_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce13_local = 1'b1;
    end else begin
        output_difference_2_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce14_local = 1'b1;
    end else begin
        output_difference_2_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce15_local = 1'b1;
    end else begin
        output_difference_2_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce2_local = 1'b1;
    end else begin
        output_difference_2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce3_local = 1'b1;
    end else begin
        output_difference_2_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce4_local = 1'b1;
    end else begin
        output_difference_2_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce5_local = 1'b1;
    end else begin
        output_difference_2_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce6_local = 1'b1;
    end else begin
        output_difference_2_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce7_local = 1'b1;
    end else begin
        output_difference_2_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce8_local = 1'b1;
    end else begin
        output_difference_2_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_2_ce9_local = 1'b1;
    end else begin
        output_difference_2_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce10_local = 1'b1;
    end else begin
        output_difference_3_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce11_local = 1'b1;
    end else begin
        output_difference_3_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce12_local = 1'b1;
    end else begin
        output_difference_3_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce13_local = 1'b1;
    end else begin
        output_difference_3_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce14_local = 1'b1;
    end else begin
        output_difference_3_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce15_local = 1'b1;
    end else begin
        output_difference_3_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce2_local = 1'b1;
    end else begin
        output_difference_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce3_local = 1'b1;
    end else begin
        output_difference_3_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce4_local = 1'b1;
    end else begin
        output_difference_3_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce5_local = 1'b1;
    end else begin
        output_difference_3_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce6_local = 1'b1;
    end else begin
        output_difference_3_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce7_local = 1'b1;
    end else begin
        output_difference_3_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce8_local = 1'b1;
    end else begin
        output_difference_3_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_3_ce9_local = 1'b1;
    end else begin
        output_difference_3_ce9_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_0_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_1_we1;
assign delta_weights1_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address0;
assign delta_weights1_2_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_address1;
assign delta_weights1_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce0;
assign delta_weights1_2_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_ce1;
assign delta_weights1_2_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d0;
assign delta_weights1_2_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_d1;
assign delta_weights1_2_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we0;
assign delta_weights1_2_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_2_we1;
assign delta_weights1_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address0;
assign delta_weights1_3_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_address1;
assign delta_weights1_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce0;
assign delta_weights1_3_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_ce1;
assign delta_weights1_3_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d0;
assign delta_weights1_3_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_d1;
assign delta_weights1_3_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we0;
assign delta_weights1_3_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_delta_weights1_3_we1;
assign grp_fu_3096_p_ce = grp_fu_1645_ce;
assign grp_fu_3096_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din0;
assign grp_fu_3096_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1645_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1649_ce;
assign grp_fu_3100_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din0;
assign grp_fu_3100_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1649_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1653_ce;
assign grp_fu_3104_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din0;
assign grp_fu_3104_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1653_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1657_ce;
assign grp_fu_3108_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din0;
assign grp_fu_3108_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1657_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1661_ce;
assign grp_fu_3112_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din0;
assign grp_fu_3112_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1661_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1665_ce;
assign grp_fu_3116_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din0;
assign grp_fu_3116_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1665_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1669_ce;
assign grp_fu_3120_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din0;
assign grp_fu_3120_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1669_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1673_ce;
assign grp_fu_3124_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din0;
assign grp_fu_3124_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_grp_fu_1673_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_ap_start_reg;
assign output_difference_0_address0 = 64'd15;
assign output_difference_0_address1 = 64'd14;
assign output_difference_0_address10 = 64'd5;
assign output_difference_0_address11 = 64'd4;
assign output_difference_0_address12 = 64'd3;
assign output_difference_0_address13 = 64'd2;
assign output_difference_0_address14 = 64'd1;
assign output_difference_0_address15 = 64'd0;
assign output_difference_0_address2 = 64'd13;
assign output_difference_0_address3 = 64'd12;
assign output_difference_0_address4 = 64'd11;
assign output_difference_0_address5 = 64'd10;
assign output_difference_0_address6 = 64'd9;
assign output_difference_0_address7 = 64'd8;
assign output_difference_0_address8 = 64'd7;
assign output_difference_0_address9 = 64'd6;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_0_ce10 = output_difference_0_ce10_local;
assign output_difference_0_ce11 = output_difference_0_ce11_local;
assign output_difference_0_ce12 = output_difference_0_ce12_local;
assign output_difference_0_ce13 = output_difference_0_ce13_local;
assign output_difference_0_ce14 = output_difference_0_ce14_local;
assign output_difference_0_ce15 = output_difference_0_ce15_local;
assign output_difference_0_ce2 = output_difference_0_ce2_local;
assign output_difference_0_ce3 = output_difference_0_ce3_local;
assign output_difference_0_ce4 = output_difference_0_ce4_local;
assign output_difference_0_ce5 = output_difference_0_ce5_local;
assign output_difference_0_ce6 = output_difference_0_ce6_local;
assign output_difference_0_ce7 = output_difference_0_ce7_local;
assign output_difference_0_ce8 = output_difference_0_ce8_local;
assign output_difference_0_ce9 = output_difference_0_ce9_local;
assign output_difference_1_address0 = 64'd15;
assign output_difference_1_address1 = 64'd14;
assign output_difference_1_address10 = 64'd5;
assign output_difference_1_address11 = 64'd4;
assign output_difference_1_address12 = 64'd3;
assign output_difference_1_address13 = 64'd2;
assign output_difference_1_address14 = 64'd1;
assign output_difference_1_address15 = 64'd0;
assign output_difference_1_address2 = 64'd13;
assign output_difference_1_address3 = 64'd12;
assign output_difference_1_address4 = 64'd11;
assign output_difference_1_address5 = 64'd10;
assign output_difference_1_address6 = 64'd9;
assign output_difference_1_address7 = 64'd8;
assign output_difference_1_address8 = 64'd7;
assign output_difference_1_address9 = 64'd6;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_1_ce10 = output_difference_1_ce10_local;
assign output_difference_1_ce11 = output_difference_1_ce11_local;
assign output_difference_1_ce12 = output_difference_1_ce12_local;
assign output_difference_1_ce13 = output_difference_1_ce13_local;
assign output_difference_1_ce14 = output_difference_1_ce14_local;
assign output_difference_1_ce15 = output_difference_1_ce15_local;
assign output_difference_1_ce2 = output_difference_1_ce2_local;
assign output_difference_1_ce3 = output_difference_1_ce3_local;
assign output_difference_1_ce4 = output_difference_1_ce4_local;
assign output_difference_1_ce5 = output_difference_1_ce5_local;
assign output_difference_1_ce6 = output_difference_1_ce6_local;
assign output_difference_1_ce7 = output_difference_1_ce7_local;
assign output_difference_1_ce8 = output_difference_1_ce8_local;
assign output_difference_1_ce9 = output_difference_1_ce9_local;
assign output_difference_2_address0 = 64'd15;
assign output_difference_2_address1 = 64'd14;
assign output_difference_2_address10 = 64'd5;
assign output_difference_2_address11 = 64'd4;
assign output_difference_2_address12 = 64'd3;
assign output_difference_2_address13 = 64'd2;
assign output_difference_2_address14 = 64'd1;
assign output_difference_2_address15 = 64'd0;
assign output_difference_2_address2 = 64'd13;
assign output_difference_2_address3 = 64'd12;
assign output_difference_2_address4 = 64'd11;
assign output_difference_2_address5 = 64'd10;
assign output_difference_2_address6 = 64'd9;
assign output_difference_2_address7 = 64'd8;
assign output_difference_2_address8 = 64'd7;
assign output_difference_2_address9 = 64'd6;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_2_ce10 = output_difference_2_ce10_local;
assign output_difference_2_ce11 = output_difference_2_ce11_local;
assign output_difference_2_ce12 = output_difference_2_ce12_local;
assign output_difference_2_ce13 = output_difference_2_ce13_local;
assign output_difference_2_ce14 = output_difference_2_ce14_local;
assign output_difference_2_ce15 = output_difference_2_ce15_local;
assign output_difference_2_ce2 = output_difference_2_ce2_local;
assign output_difference_2_ce3 = output_difference_2_ce3_local;
assign output_difference_2_ce4 = output_difference_2_ce4_local;
assign output_difference_2_ce5 = output_difference_2_ce5_local;
assign output_difference_2_ce6 = output_difference_2_ce6_local;
assign output_difference_2_ce7 = output_difference_2_ce7_local;
assign output_difference_2_ce8 = output_difference_2_ce8_local;
assign output_difference_2_ce9 = output_difference_2_ce9_local;
assign output_difference_3_address0 = 64'd15;
assign output_difference_3_address1 = 64'd14;
assign output_difference_3_address10 = 64'd5;
assign output_difference_3_address11 = 64'd4;
assign output_difference_3_address12 = 64'd3;
assign output_difference_3_address13 = 64'd2;
assign output_difference_3_address14 = 64'd1;
assign output_difference_3_address15 = 64'd0;
assign output_difference_3_address2 = 64'd13;
assign output_difference_3_address3 = 64'd12;
assign output_difference_3_address4 = 64'd11;
assign output_difference_3_address5 = 64'd10;
assign output_difference_3_address6 = 64'd9;
assign output_difference_3_address7 = 64'd8;
assign output_difference_3_address8 = 64'd7;
assign output_difference_3_address9 = 64'd6;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_3_ce10 = output_difference_3_ce10_local;
assign output_difference_3_ce11 = output_difference_3_ce11_local;
assign output_difference_3_ce12 = output_difference_3_ce12_local;
assign output_difference_3_ce13 = output_difference_3_ce13_local;
assign output_difference_3_ce14 = output_difference_3_ce14_local;
assign output_difference_3_ce15 = output_difference_3_ce15_local;
assign output_difference_3_ce2 = output_difference_3_ce2_local;
assign output_difference_3_ce3 = output_difference_3_ce3_local;
assign output_difference_3_ce4 = output_difference_3_ce4_local;
assign output_difference_3_ce5 = output_difference_3_ce5_local;
assign output_difference_3_ce6 = output_difference_3_ce6_local;
assign output_difference_3_ce7 = output_difference_3_ce7_local;
assign output_difference_3_ce8 = output_difference_3_ce8_local;
assign output_difference_3_ce9 = output_difference_3_ce9_local;
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_0_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_1_ce0;
assign training_data_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_address0;
assign training_data_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_2_ce0;
assign training_data_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_address0;
assign training_data_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_914_training_data_3_ce0;
endmodule 
