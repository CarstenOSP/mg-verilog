
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_0_address8,output_difference_0_ce8,output_difference_0_q8,output_difference_0_address9,output_difference_0_ce9,output_difference_0_q9,output_difference_0_address10,output_difference_0_ce10,output_difference_0_q10,output_difference_0_address11,output_difference_0_ce11,output_difference_0_q11,output_difference_0_address12,output_difference_0_ce12,output_difference_0_q12,output_difference_0_address13,output_difference_0_ce13,output_difference_0_q13,output_difference_0_address14,output_difference_0_ce14,output_difference_0_q14,output_difference_0_address15,output_difference_0_ce15,output_difference_0_q15,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_1_address8,output_difference_1_ce8,output_difference_1_q8,output_difference_1_address9,output_difference_1_ce9,output_difference_1_q9,output_difference_1_address10,output_difference_1_ce10,output_difference_1_q10,output_difference_1_address11,output_difference_1_ce11,output_difference_1_q11,output_difference_1_address12,output_difference_1_ce12,output_difference_1_q12,output_difference_1_address13,output_difference_1_ce13,output_difference_1_q13,output_difference_1_address14,output_difference_1_ce14,output_difference_1_q14,output_difference_1_address15,output_difference_1_ce15,output_difference_1_q15,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_2_address2,output_difference_2_ce2,output_difference_2_q2,output_difference_2_address3,output_difference_2_ce3,output_difference_2_q3,output_difference_2_address4,output_difference_2_ce4,output_difference_2_q4,output_difference_2_address5,output_difference_2_ce5,output_difference_2_q5,output_difference_2_address6,output_difference_2_ce6,output_difference_2_q6,output_difference_2_address7,output_difference_2_ce7,output_difference_2_q7,output_difference_2_address8,output_difference_2_ce8,output_difference_2_q8,output_difference_2_address9,output_difference_2_ce9,output_difference_2_q9,output_difference_2_address10,output_difference_2_ce10,output_difference_2_q10,output_difference_2_address11,output_difference_2_ce11,output_difference_2_q11,output_difference_2_address12,output_difference_2_ce12,output_difference_2_q12,output_difference_2_address13,output_difference_2_ce13,output_difference_2_q13,output_difference_2_address14,output_difference_2_ce14,output_difference_2_q14,output_difference_2_address15,output_difference_2_ce15,output_difference_2_q15,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_3_address2,output_difference_3_ce2,output_difference_3_q2,output_difference_3_address3,output_difference_3_ce3,output_difference_3_q3,output_difference_3_address4,output_difference_3_ce4,output_difference_3_q4,output_difference_3_address5,output_difference_3_ce5,output_difference_3_q5,output_difference_3_address6,output_difference_3_ce6,output_difference_3_q6,output_difference_3_address7,output_difference_3_ce7,output_difference_3_q7,output_difference_3_address8,output_difference_3_ce8,output_difference_3_q8,output_difference_3_address9,output_difference_3_ce9,output_difference_3_q9,output_difference_3_address10,output_difference_3_ce10,output_difference_3_q10,output_difference_3_address11,output_difference_3_ce11,output_difference_3_q11,output_difference_3_address12,output_difference_3_ce12,output_difference_3_q12,output_difference_3_address13,output_difference_3_ce13,output_difference_3_q13,output_difference_3_address14,output_difference_3_ce14,output_difference_3_q14,output_difference_3_address15,output_difference_3_ce15,output_difference_3_q15,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1362;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1367;
reg   [63:0] output_difference_2_load_reg_1372;
reg   [63:0] output_difference_3_load_reg_1377;
reg   [63:0] output_difference_0_load_1_reg_1382;
reg   [63:0] output_difference_1_load_1_reg_1387;
reg   [63:0] output_difference_2_load_1_reg_1392;
reg   [63:0] output_difference_3_load_1_reg_1397;
reg   [63:0] output_difference_0_load_2_reg_1402;
reg   [63:0] output_difference_1_load_2_reg_1407;
reg   [63:0] output_difference_2_load_2_reg_1412;
reg   [63:0] output_difference_3_load_2_reg_1417;
reg   [63:0] output_difference_0_load_3_reg_1422;
reg   [63:0] output_difference_1_load_3_reg_1427;
reg   [63:0] output_difference_2_load_3_reg_1432;
reg   [63:0] output_difference_3_load_3_reg_1437;
reg   [63:0] output_difference_0_load_4_reg_1442;
reg   [63:0] output_difference_1_load_4_reg_1447;
reg   [63:0] output_difference_2_load_4_reg_1452;
reg   [63:0] output_difference_3_load_4_reg_1457;
reg   [63:0] output_difference_0_load_5_reg_1462;
reg   [63:0] output_difference_1_load_5_reg_1467;
reg   [63:0] output_difference_2_load_5_reg_1472;
reg   [63:0] output_difference_3_load_5_reg_1477;
reg   [63:0] output_difference_0_load_6_reg_1482;
reg   [63:0] output_difference_1_load_6_reg_1487;
reg   [63:0] output_difference_2_load_6_reg_1492;
reg   [63:0] output_difference_3_load_6_reg_1497;
reg   [63:0] output_difference_0_load_7_reg_1502;
reg   [63:0] output_difference_1_load_7_reg_1507;
reg   [63:0] output_difference_2_load_7_reg_1512;
reg   [63:0] output_difference_3_load_7_reg_1517;
reg   [63:0] output_difference_0_load_8_reg_1522;
reg   [63:0] output_difference_1_load_8_reg_1527;
reg   [63:0] output_difference_2_load_8_reg_1532;
reg   [63:0] output_difference_3_load_8_reg_1537;
reg   [63:0] output_difference_0_load_9_reg_1542;
reg   [63:0] output_difference_1_load_9_reg_1547;
reg   [63:0] output_difference_2_load_9_reg_1552;
reg   [63:0] output_difference_3_load_9_reg_1557;
reg   [63:0] output_difference_0_load_10_reg_1562;
reg   [63:0] output_difference_1_load_10_reg_1567;
reg   [63:0] output_difference_2_load_10_reg_1572;
reg   [63:0] output_difference_3_load_10_reg_1577;
reg   [63:0] output_difference_0_load_11_reg_1582;
reg   [63:0] output_difference_1_load_11_reg_1587;
reg   [63:0] output_difference_2_load_11_reg_1592;
reg   [63:0] output_difference_3_load_11_reg_1597;
reg   [63:0] output_difference_0_load_12_reg_1602;
reg   [63:0] output_difference_1_load_12_reg_1607;
reg   [63:0] output_difference_2_load_12_reg_1612;
reg   [63:0] output_difference_3_load_12_reg_1617;
reg   [63:0] output_difference_0_load_13_reg_1622;
reg   [63:0] output_difference_1_load_13_reg_1627;
reg   [63:0] output_difference_2_load_13_reg_1632;
reg   [63:0] output_difference_3_load_13_reg_1637;
reg   [63:0] output_difference_0_load_14_reg_1642;
reg   [63:0] output_difference_1_load_14_reg_1647;
reg   [63:0] output_difference_2_load_14_reg_1652;
reg   [63:0] output_difference_3_load_14_reg_1657;
reg   [63:0] output_difference_0_load_15_reg_1662;
reg   [63:0] output_difference_1_load_15_reg_1667;
reg   [63:0] output_difference_2_load_15_reg_1672;
reg   [63:0] output_difference_3_load_15_reg_1677;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_ready;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d1;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d0;
wire   [9:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d1;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_ce0;
wire   [3:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg;
wire    ap_CS_fsm_state3;
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
reg    grp_fu_1682_ce;
reg    grp_fu_1686_ce;
reg    grp_fu_1690_ce;
reg    grp_fu_1694_ce;
reg    grp_fu_1698_ce;
reg    grp_fu_1702_ce;
reg    grp_fu_1706_ce;
reg    grp_fu_1710_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_ready),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.last_activations_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_address0),.last_activations_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_ce0),.last_activations_2_q0(last_activations_2_q0),.last_activations_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_address0),.last_activations_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_ce0),.last_activations_3_q0(last_activations_3_q0),.output_difference_0_load(output_difference_0_load_reg_1362),.output_difference_1_load(output_difference_1_load_reg_1367),.output_difference_2_load(output_difference_2_load_reg_1372),.output_difference_3_load(output_difference_3_load_reg_1377),.output_difference_0_load_1(output_difference_0_load_1_reg_1382),.output_difference_1_load_1(output_difference_1_load_1_reg_1387),.output_difference_2_load_1(output_difference_2_load_1_reg_1392),.output_difference_3_load_1(output_difference_3_load_1_reg_1397),.output_difference_0_load_2(output_difference_0_load_2_reg_1402),.output_difference_1_load_2(output_difference_1_load_2_reg_1407),.output_difference_2_load_2(output_difference_2_load_2_reg_1412),.output_difference_3_load_2(output_difference_3_load_2_reg_1417),.output_difference_0_load_3(output_difference_0_load_3_reg_1422),.output_difference_1_load_3(output_difference_1_load_3_reg_1427),.output_difference_2_load_3(output_difference_2_load_3_reg_1432),.output_difference_3_load_3(output_difference_3_load_3_reg_1437),.output_difference_0_load_4(output_difference_0_load_4_reg_1442),.output_difference_1_load_4(output_difference_1_load_4_reg_1447),.output_difference_2_load_4(output_difference_2_load_4_reg_1452),.output_difference_3_load_4(output_difference_3_load_4_reg_1457),.output_difference_0_load_5(output_difference_0_load_5_reg_1462),.output_difference_1_load_5(output_difference_1_load_5_reg_1467),.output_difference_2_load_5(output_difference_2_load_5_reg_1472),.output_difference_3_load_5(output_difference_3_load_5_reg_1477),.output_difference_0_load_6(output_difference_0_load_6_reg_1482),.output_difference_1_load_6(output_difference_1_load_6_reg_1487),.output_difference_2_load_6(output_difference_2_load_6_reg_1492),.output_difference_3_load_6(output_difference_3_load_6_reg_1497),.output_difference_0_load_7(output_difference_0_load_7_reg_1502),.output_difference_1_load_7(output_difference_1_load_7_reg_1507),.output_difference_2_load_7(output_difference_2_load_7_reg_1512),.output_difference_3_load_7(output_difference_3_load_7_reg_1517),.output_difference_0_load_8(output_difference_0_load_8_reg_1522),.output_difference_1_load_8(output_difference_1_load_8_reg_1527),.output_difference_2_load_8(output_difference_2_load_8_reg_1532),.output_difference_3_load_8(output_difference_3_load_8_reg_1537),.output_difference_0_load_9(output_difference_0_load_9_reg_1542),.output_difference_1_load_9(output_difference_1_load_9_reg_1547),.output_difference_2_load_9(output_difference_2_load_9_reg_1552),.output_difference_3_load_9(output_difference_3_load_9_reg_1557),.output_difference_0_load_10(output_difference_0_load_10_reg_1562),.output_difference_1_load_10(output_difference_1_load_10_reg_1567),.output_difference_2_load_10(output_difference_2_load_10_reg_1572),.output_difference_3_load_10(output_difference_3_load_10_reg_1577),.output_difference_0_load_11(output_difference_0_load_11_reg_1582),.output_difference_1_load_11(output_difference_1_load_11_reg_1587),.output_difference_2_load_11(output_difference_2_load_11_reg_1592),.output_difference_3_load_11(output_difference_3_load_11_reg_1597),.output_difference_0_load_12(output_difference_0_load_12_reg_1602),.output_difference_1_load_12(output_difference_1_load_12_reg_1607),.output_difference_2_load_12(output_difference_2_load_12_reg_1612),.output_difference_3_load_12(output_difference_3_load_12_reg_1617),.output_difference_0_load_13(output_difference_0_load_13_reg_1622),.output_difference_1_load_13(output_difference_1_load_13_reg_1627),.output_difference_2_load_13(output_difference_2_load_13_reg_1632),.output_difference_3_load_13(output_difference_3_load_13_reg_1637),.output_difference_0_load_14(output_difference_0_load_14_reg_1642),.output_difference_1_load_14(output_difference_1_load_14_reg_1647),.output_difference_2_load_14(output_difference_2_load_14_reg_1652),.output_difference_3_load_14(output_difference_3_load_14_reg_1657),.output_difference_0_load_15(output_difference_0_load_15_reg_1662),.output_difference_1_load_15(output_difference_1_load_15_reg_1667),.output_difference_2_load_15(output_difference_2_load_15_reg_1672),.output_difference_3_load_15(output_difference_3_load_15_reg_1677),.grp_fu_1682_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din0),.grp_fu_1682_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din1),.grp_fu_1682_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1682_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_ce),.grp_fu_1686_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din0),.grp_fu_1686_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din1),.grp_fu_1686_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1686_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_ce),.grp_fu_1690_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din0),.grp_fu_1690_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din1),.grp_fu_1690_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1690_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_ce),.grp_fu_1694_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din0),.grp_fu_1694_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din1),.grp_fu_1694_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1694_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_ce),.grp_fu_1698_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din0),.grp_fu_1698_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din1),.grp_fu_1698_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1698_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_ce),.grp_fu_1702_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din0),.grp_fu_1702_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din1),.grp_fu_1702_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1702_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_ce),.grp_fu_1706_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din0),.grp_fu_1706_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din1),.grp_fu_1706_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1706_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_ce),.grp_fu_1710_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din0),.grp_fu_1710_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din1),.grp_fu_1710_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1710_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_10_reg_1562 <= output_difference_0_q5;
        output_difference_0_load_11_reg_1582 <= output_difference_0_q4;
        output_difference_0_load_12_reg_1602 <= output_difference_0_q3;
        output_difference_0_load_13_reg_1622 <= output_difference_0_q2;
        output_difference_0_load_14_reg_1642 <= output_difference_0_q1;
        output_difference_0_load_15_reg_1662 <= output_difference_0_q0;
        output_difference_0_load_1_reg_1382 <= output_difference_0_q14;
        output_difference_0_load_2_reg_1402 <= output_difference_0_q13;
        output_difference_0_load_3_reg_1422 <= output_difference_0_q12;
        output_difference_0_load_4_reg_1442 <= output_difference_0_q11;
        output_difference_0_load_5_reg_1462 <= output_difference_0_q10;
        output_difference_0_load_6_reg_1482 <= output_difference_0_q9;
        output_difference_0_load_7_reg_1502 <= output_difference_0_q8;
        output_difference_0_load_8_reg_1522 <= output_difference_0_q7;
        output_difference_0_load_9_reg_1542 <= output_difference_0_q6;
        output_difference_0_load_reg_1362 <= output_difference_0_q15;
        output_difference_1_load_10_reg_1567 <= output_difference_1_q5;
        output_difference_1_load_11_reg_1587 <= output_difference_1_q4;
        output_difference_1_load_12_reg_1607 <= output_difference_1_q3;
        output_difference_1_load_13_reg_1627 <= output_difference_1_q2;
        output_difference_1_load_14_reg_1647 <= output_difference_1_q1;
        output_difference_1_load_15_reg_1667 <= output_difference_1_q0;
        output_difference_1_load_1_reg_1387 <= output_difference_1_q14;
        output_difference_1_load_2_reg_1407 <= output_difference_1_q13;
        output_difference_1_load_3_reg_1427 <= output_difference_1_q12;
        output_difference_1_load_4_reg_1447 <= output_difference_1_q11;
        output_difference_1_load_5_reg_1467 <= output_difference_1_q10;
        output_difference_1_load_6_reg_1487 <= output_difference_1_q9;
        output_difference_1_load_7_reg_1507 <= output_difference_1_q8;
        output_difference_1_load_8_reg_1527 <= output_difference_1_q7;
        output_difference_1_load_9_reg_1547 <= output_difference_1_q6;
        output_difference_1_load_reg_1367 <= output_difference_1_q15;
        output_difference_2_load_10_reg_1572 <= output_difference_2_q5;
        output_difference_2_load_11_reg_1592 <= output_difference_2_q4;
        output_difference_2_load_12_reg_1612 <= output_difference_2_q3;
        output_difference_2_load_13_reg_1632 <= output_difference_2_q2;
        output_difference_2_load_14_reg_1652 <= output_difference_2_q1;
        output_difference_2_load_15_reg_1672 <= output_difference_2_q0;
        output_difference_2_load_1_reg_1392 <= output_difference_2_q14;
        output_difference_2_load_2_reg_1412 <= output_difference_2_q13;
        output_difference_2_load_3_reg_1432 <= output_difference_2_q12;
        output_difference_2_load_4_reg_1452 <= output_difference_2_q11;
        output_difference_2_load_5_reg_1472 <= output_difference_2_q10;
        output_difference_2_load_6_reg_1492 <= output_difference_2_q9;
        output_difference_2_load_7_reg_1512 <= output_difference_2_q8;
        output_difference_2_load_8_reg_1532 <= output_difference_2_q7;
        output_difference_2_load_9_reg_1552 <= output_difference_2_q6;
        output_difference_2_load_reg_1372 <= output_difference_2_q15;
        output_difference_3_load_10_reg_1577 <= output_difference_3_q5;
        output_difference_3_load_11_reg_1597 <= output_difference_3_q4;
        output_difference_3_load_12_reg_1617 <= output_difference_3_q3;
        output_difference_3_load_13_reg_1637 <= output_difference_3_q2;
        output_difference_3_load_14_reg_1657 <= output_difference_3_q1;
        output_difference_3_load_15_reg_1677 <= output_difference_3_q0;
        output_difference_3_load_1_reg_1397 <= output_difference_3_q14;
        output_difference_3_load_2_reg_1417 <= output_difference_3_q13;
        output_difference_3_load_3_reg_1437 <= output_difference_3_q12;
        output_difference_3_load_4_reg_1457 <= output_difference_3_q11;
        output_difference_3_load_5_reg_1477 <= output_difference_3_q10;
        output_difference_3_load_6_reg_1497 <= output_difference_3_q9;
        output_difference_3_load_7_reg_1517 <= output_difference_3_q8;
        output_difference_3_load_8_reg_1537 <= output_difference_3_q7;
        output_difference_3_load_9_reg_1557 <= output_difference_3_q6;
        output_difference_3_load_reg_1377 <= output_difference_3_q15;
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1682_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_ce;
    end else begin
        grp_fu_1682_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1686_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_ce;
    end else begin
        grp_fu_1686_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1690_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_ce;
    end else begin
        grp_fu_1690_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1694_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_ce;
    end else begin
        grp_fu_1694_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1698_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_ce;
    end else begin
        grp_fu_1698_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1702_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_ce;
    end else begin
        grp_fu_1702_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1706_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_ce;
    end else begin
        grp_fu_1706_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1710_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_ce;
    end else begin
        grp_fu_1710_ce = 1'b1;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_1_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_2_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_delta_weights2_3_we1;
assign grp_fu_3096_p_ce = grp_fu_1682_ce;
assign grp_fu_3096_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din0;
assign grp_fu_3096_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1682_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1686_ce;
assign grp_fu_3100_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din0;
assign grp_fu_3100_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1686_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1690_ce;
assign grp_fu_3104_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din0;
assign grp_fu_3104_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1690_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1694_ce;
assign grp_fu_3108_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din0;
assign grp_fu_3108_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1694_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1698_ce;
assign grp_fu_3112_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din0;
assign grp_fu_3112_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1698_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1702_ce;
assign grp_fu_3116_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din0;
assign grp_fu_3116_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1702_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1706_ce;
assign grp_fu_3120_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din0;
assign grp_fu_3120_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1706_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1710_ce;
assign grp_fu_3124_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din0;
assign grp_fu_3124_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_grp_fu_1710_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_1_ce0;
assign last_activations_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_address0;
assign last_activations_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_2_ce0;
assign last_activations_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_address0;
assign last_activations_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_894_last_activations_3_ce0;
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
endmodule 
