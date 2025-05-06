
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_2_address2,output_difference_2_ce2,output_difference_2_q2,output_difference_2_address3,output_difference_2_ce3,output_difference_2_q3,output_difference_2_address4,output_difference_2_ce4,output_difference_2_q4,output_difference_2_address5,output_difference_2_ce5,output_difference_2_q5,output_difference_2_address6,output_difference_2_ce6,output_difference_2_q6,output_difference_2_address7,output_difference_2_ce7,output_difference_2_q7,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_3_address2,output_difference_3_ce2,output_difference_3_q2,output_difference_3_address3,output_difference_3_ce3,output_difference_3_q3,output_difference_3_address4,output_difference_3_ce4,output_difference_3_q4,output_difference_3_address5,output_difference_3_ce5,output_difference_3_q5,output_difference_3_address6,output_difference_3_ce6,output_difference_3_q6,output_difference_3_address7,output_difference_3_ce7,output_difference_3_q7,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_4_address2,output_difference_4_ce2,output_difference_4_q2,output_difference_4_address3,output_difference_4_ce3,output_difference_4_q3,output_difference_4_address4,output_difference_4_ce4,output_difference_4_q4,output_difference_4_address5,output_difference_4_ce5,output_difference_4_q5,output_difference_4_address6,output_difference_4_ce6,output_difference_4_q6,output_difference_4_address7,output_difference_4_ce7,output_difference_4_q7,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_5_address2,output_difference_5_ce2,output_difference_5_q2,output_difference_5_address3,output_difference_5_ce3,output_difference_5_q3,output_difference_5_address4,output_difference_5_ce4,output_difference_5_q4,output_difference_5_address5,output_difference_5_ce5,output_difference_5_q5,output_difference_5_address6,output_difference_5_ce6,output_difference_5_q6,output_difference_5_address7,output_difference_5_ce7,output_difference_5_q7,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_6_address2,output_difference_6_ce2,output_difference_6_q2,output_difference_6_address3,output_difference_6_ce3,output_difference_6_q3,output_difference_6_address4,output_difference_6_ce4,output_difference_6_q4,output_difference_6_address5,output_difference_6_ce5,output_difference_6_q5,output_difference_6_address6,output_difference_6_ce6,output_difference_6_q6,output_difference_6_address7,output_difference_6_ce7,output_difference_6_q7,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,output_difference_7_address2,output_difference_7_ce2,output_difference_7_q2,output_difference_7_address3,output_difference_7_ce3,output_difference_7_q3,output_difference_7_address4,output_difference_7_ce4,output_difference_7_q4,output_difference_7_address5,output_difference_7_ce5,output_difference_7_q5,output_difference_7_address6,output_difference_7_ce6,output_difference_7_q6,output_difference_7_address7,output_difference_7_ce7,output_difference_7_q7,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
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
output  [2:0] output_difference_0_address2;
output   output_difference_0_ce2;
input  [63:0] output_difference_0_q2;
output  [2:0] output_difference_0_address3;
output   output_difference_0_ce3;
input  [63:0] output_difference_0_q3;
output  [2:0] output_difference_0_address4;
output   output_difference_0_ce4;
input  [63:0] output_difference_0_q4;
output  [2:0] output_difference_0_address5;
output   output_difference_0_ce5;
input  [63:0] output_difference_0_q5;
output  [2:0] output_difference_0_address6;
output   output_difference_0_ce6;
input  [63:0] output_difference_0_q6;
output  [2:0] output_difference_0_address7;
output   output_difference_0_ce7;
input  [63:0] output_difference_0_q7;
output  [2:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [2:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [2:0] output_difference_1_address2;
output   output_difference_1_ce2;
input  [63:0] output_difference_1_q2;
output  [2:0] output_difference_1_address3;
output   output_difference_1_ce3;
input  [63:0] output_difference_1_q3;
output  [2:0] output_difference_1_address4;
output   output_difference_1_ce4;
input  [63:0] output_difference_1_q4;
output  [2:0] output_difference_1_address5;
output   output_difference_1_ce5;
input  [63:0] output_difference_1_q5;
output  [2:0] output_difference_1_address6;
output   output_difference_1_ce6;
input  [63:0] output_difference_1_q6;
output  [2:0] output_difference_1_address7;
output   output_difference_1_ce7;
input  [63:0] output_difference_1_q7;
output  [2:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [2:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [2:0] output_difference_2_address2;
output   output_difference_2_ce2;
input  [63:0] output_difference_2_q2;
output  [2:0] output_difference_2_address3;
output   output_difference_2_ce3;
input  [63:0] output_difference_2_q3;
output  [2:0] output_difference_2_address4;
output   output_difference_2_ce4;
input  [63:0] output_difference_2_q4;
output  [2:0] output_difference_2_address5;
output   output_difference_2_ce5;
input  [63:0] output_difference_2_q5;
output  [2:0] output_difference_2_address6;
output   output_difference_2_ce6;
input  [63:0] output_difference_2_q6;
output  [2:0] output_difference_2_address7;
output   output_difference_2_ce7;
input  [63:0] output_difference_2_q7;
output  [2:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [2:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [2:0] output_difference_3_address2;
output   output_difference_3_ce2;
input  [63:0] output_difference_3_q2;
output  [2:0] output_difference_3_address3;
output   output_difference_3_ce3;
input  [63:0] output_difference_3_q3;
output  [2:0] output_difference_3_address4;
output   output_difference_3_ce4;
input  [63:0] output_difference_3_q4;
output  [2:0] output_difference_3_address5;
output   output_difference_3_ce5;
input  [63:0] output_difference_3_q5;
output  [2:0] output_difference_3_address6;
output   output_difference_3_ce6;
input  [63:0] output_difference_3_q6;
output  [2:0] output_difference_3_address7;
output   output_difference_3_ce7;
input  [63:0] output_difference_3_q7;
output  [2:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [2:0] output_difference_4_address1;
output   output_difference_4_ce1;
input  [63:0] output_difference_4_q1;
output  [2:0] output_difference_4_address2;
output   output_difference_4_ce2;
input  [63:0] output_difference_4_q2;
output  [2:0] output_difference_4_address3;
output   output_difference_4_ce3;
input  [63:0] output_difference_4_q3;
output  [2:0] output_difference_4_address4;
output   output_difference_4_ce4;
input  [63:0] output_difference_4_q4;
output  [2:0] output_difference_4_address5;
output   output_difference_4_ce5;
input  [63:0] output_difference_4_q5;
output  [2:0] output_difference_4_address6;
output   output_difference_4_ce6;
input  [63:0] output_difference_4_q6;
output  [2:0] output_difference_4_address7;
output   output_difference_4_ce7;
input  [63:0] output_difference_4_q7;
output  [2:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [2:0] output_difference_5_address1;
output   output_difference_5_ce1;
input  [63:0] output_difference_5_q1;
output  [2:0] output_difference_5_address2;
output   output_difference_5_ce2;
input  [63:0] output_difference_5_q2;
output  [2:0] output_difference_5_address3;
output   output_difference_5_ce3;
input  [63:0] output_difference_5_q3;
output  [2:0] output_difference_5_address4;
output   output_difference_5_ce4;
input  [63:0] output_difference_5_q4;
output  [2:0] output_difference_5_address5;
output   output_difference_5_ce5;
input  [63:0] output_difference_5_q5;
output  [2:0] output_difference_5_address6;
output   output_difference_5_ce6;
input  [63:0] output_difference_5_q6;
output  [2:0] output_difference_5_address7;
output   output_difference_5_ce7;
input  [63:0] output_difference_5_q7;
output  [2:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [2:0] output_difference_6_address1;
output   output_difference_6_ce1;
input  [63:0] output_difference_6_q1;
output  [2:0] output_difference_6_address2;
output   output_difference_6_ce2;
input  [63:0] output_difference_6_q2;
output  [2:0] output_difference_6_address3;
output   output_difference_6_ce3;
input  [63:0] output_difference_6_q3;
output  [2:0] output_difference_6_address4;
output   output_difference_6_ce4;
input  [63:0] output_difference_6_q4;
output  [2:0] output_difference_6_address5;
output   output_difference_6_ce5;
input  [63:0] output_difference_6_q5;
output  [2:0] output_difference_6_address6;
output   output_difference_6_ce6;
input  [63:0] output_difference_6_q6;
output  [2:0] output_difference_6_address7;
output   output_difference_6_ce7;
input  [63:0] output_difference_6_q7;
output  [2:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [2:0] output_difference_7_address1;
output   output_difference_7_ce1;
input  [63:0] output_difference_7_q1;
output  [2:0] output_difference_7_address2;
output   output_difference_7_ce2;
input  [63:0] output_difference_7_q2;
output  [2:0] output_difference_7_address3;
output   output_difference_7_ce3;
input  [63:0] output_difference_7_q3;
output  [2:0] output_difference_7_address4;
output   output_difference_7_ce4;
input  [63:0] output_difference_7_q4;
output  [2:0] output_difference_7_address5;
output   output_difference_7_ce5;
input  [63:0] output_difference_7_q5;
output  [2:0] output_difference_7_address6;
output   output_difference_7_ce6;
input  [63:0] output_difference_7_q6;
output  [2:0] output_difference_7_address7;
output   output_difference_7_ce7;
input  [63:0] output_difference_7_q7;
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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1390;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1395;
reg   [63:0] output_difference_2_load_reg_1400;
reg   [63:0] output_difference_3_load_reg_1405;
reg   [63:0] output_difference_4_load_reg_1410;
reg   [63:0] output_difference_5_load_reg_1415;
reg   [63:0] output_difference_6_load_reg_1420;
reg   [63:0] output_difference_7_load_reg_1425;
reg   [63:0] output_difference_0_load_1_reg_1430;
reg   [63:0] output_difference_1_load_1_reg_1435;
reg   [63:0] output_difference_2_load_1_reg_1440;
reg   [63:0] output_difference_3_load_1_reg_1445;
reg   [63:0] output_difference_4_load_1_reg_1450;
reg   [63:0] output_difference_5_load_1_reg_1455;
reg   [63:0] output_difference_6_load_1_reg_1460;
reg   [63:0] output_difference_7_load_1_reg_1465;
reg   [63:0] output_difference_0_load_2_reg_1470;
reg   [63:0] output_difference_1_load_2_reg_1475;
reg   [63:0] output_difference_2_load_2_reg_1480;
reg   [63:0] output_difference_3_load_2_reg_1485;
reg   [63:0] output_difference_4_load_2_reg_1490;
reg   [63:0] output_difference_5_load_2_reg_1495;
reg   [63:0] output_difference_6_load_2_reg_1500;
reg   [63:0] output_difference_7_load_2_reg_1505;
reg   [63:0] output_difference_0_load_3_reg_1510;
reg   [63:0] output_difference_1_load_3_reg_1515;
reg   [63:0] output_difference_2_load_3_reg_1520;
reg   [63:0] output_difference_3_load_3_reg_1525;
reg   [63:0] output_difference_4_load_3_reg_1530;
reg   [63:0] output_difference_5_load_3_reg_1535;
reg   [63:0] output_difference_6_load_3_reg_1540;
reg   [63:0] output_difference_7_load_3_reg_1545;
reg   [63:0] output_difference_0_load_4_reg_1550;
reg   [63:0] output_difference_1_load_4_reg_1555;
reg   [63:0] output_difference_2_load_4_reg_1560;
reg   [63:0] output_difference_3_load_4_reg_1565;
reg   [63:0] output_difference_4_load_4_reg_1570;
reg   [63:0] output_difference_5_load_4_reg_1575;
reg   [63:0] output_difference_6_load_4_reg_1580;
reg   [63:0] output_difference_7_load_4_reg_1585;
reg   [63:0] output_difference_0_load_5_reg_1590;
reg   [63:0] output_difference_1_load_5_reg_1595;
reg   [63:0] output_difference_2_load_5_reg_1600;
reg   [63:0] output_difference_3_load_5_reg_1605;
reg   [63:0] output_difference_4_load_5_reg_1610;
reg   [63:0] output_difference_5_load_5_reg_1615;
reg   [63:0] output_difference_6_load_5_reg_1620;
reg   [63:0] output_difference_7_load_5_reg_1625;
reg   [63:0] output_difference_0_load_6_reg_1630;
reg   [63:0] output_difference_1_load_6_reg_1635;
reg   [63:0] output_difference_2_load_6_reg_1640;
reg   [63:0] output_difference_3_load_6_reg_1645;
reg   [63:0] output_difference_4_load_6_reg_1650;
reg   [63:0] output_difference_5_load_6_reg_1655;
reg   [63:0] output_difference_6_load_6_reg_1660;
reg   [63:0] output_difference_7_load_6_reg_1665;
reg   [63:0] output_difference_0_load_7_reg_1670;
reg   [63:0] output_difference_1_load_7_reg_1675;
reg   [63:0] output_difference_2_load_7_reg_1680;
reg   [63:0] output_difference_3_load_7_reg_1685;
reg   [63:0] output_difference_4_load_7_reg_1690;
reg   [63:0] output_difference_5_load_7_reg_1695;
reg   [63:0] output_difference_6_load_7_reg_1700;
reg   [63:0] output_difference_7_load_7_reg_1705;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_ready;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d1;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d0;
wire   [8:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d1;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_ce0;
wire   [2:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    output_difference_0_ce7_local;
reg    output_difference_0_ce6_local;
reg    output_difference_0_ce5_local;
reg    output_difference_0_ce4_local;
reg    output_difference_0_ce3_local;
reg    output_difference_0_ce2_local;
reg    output_difference_0_ce1_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce7_local;
reg    output_difference_1_ce6_local;
reg    output_difference_1_ce5_local;
reg    output_difference_1_ce4_local;
reg    output_difference_1_ce3_local;
reg    output_difference_1_ce2_local;
reg    output_difference_1_ce1_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce7_local;
reg    output_difference_2_ce6_local;
reg    output_difference_2_ce5_local;
reg    output_difference_2_ce4_local;
reg    output_difference_2_ce3_local;
reg    output_difference_2_ce2_local;
reg    output_difference_2_ce1_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce7_local;
reg    output_difference_3_ce6_local;
reg    output_difference_3_ce5_local;
reg    output_difference_3_ce4_local;
reg    output_difference_3_ce3_local;
reg    output_difference_3_ce2_local;
reg    output_difference_3_ce1_local;
reg    output_difference_3_ce0_local;
reg    output_difference_4_ce7_local;
reg    output_difference_4_ce6_local;
reg    output_difference_4_ce5_local;
reg    output_difference_4_ce4_local;
reg    output_difference_4_ce3_local;
reg    output_difference_4_ce2_local;
reg    output_difference_4_ce1_local;
reg    output_difference_4_ce0_local;
reg    output_difference_5_ce7_local;
reg    output_difference_5_ce6_local;
reg    output_difference_5_ce5_local;
reg    output_difference_5_ce4_local;
reg    output_difference_5_ce3_local;
reg    output_difference_5_ce2_local;
reg    output_difference_5_ce1_local;
reg    output_difference_5_ce0_local;
reg    output_difference_6_ce7_local;
reg    output_difference_6_ce6_local;
reg    output_difference_6_ce5_local;
reg    output_difference_6_ce4_local;
reg    output_difference_6_ce3_local;
reg    output_difference_6_ce2_local;
reg    output_difference_6_ce1_local;
reg    output_difference_6_ce0_local;
reg    output_difference_7_ce7_local;
reg    output_difference_7_ce6_local;
reg    output_difference_7_ce5_local;
reg    output_difference_7_ce4_local;
reg    output_difference_7_ce3_local;
reg    output_difference_7_ce2_local;
reg    output_difference_7_ce1_local;
reg    output_difference_7_ce0_local;
reg    grp_fu_1710_ce;
reg    grp_fu_1714_ce;
reg    grp_fu_1718_ce;
reg    grp_fu_1722_ce;
reg    grp_fu_1726_ce;
reg    grp_fu_1730_ce;
reg    grp_fu_1734_ce;
reg    grp_fu_1738_ce;
reg    grp_fu_1742_ce;
reg    grp_fu_1746_ce;
reg    grp_fu_1750_ce;
reg    grp_fu_1754_ce;
reg    grp_fu_1758_ce;
reg    grp_fu_1762_ce;
reg    grp_fu_1766_ce;
reg    grp_fu_1770_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_ready),.delta_weights2_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address0),.delta_weights2_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce0),.delta_weights2_7_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we0),.delta_weights2_7_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d0),.delta_weights2_7_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address1),.delta_weights2_7_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce1),.delta_weights2_7_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we1),.delta_weights2_7_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d1),.delta_weights2_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address0),.delta_weights2_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce0),.delta_weights2_6_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we0),.delta_weights2_6_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d0),.delta_weights2_6_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address1),.delta_weights2_6_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce1),.delta_weights2_6_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we1),.delta_weights2_6_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d1),.delta_weights2_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address0),.delta_weights2_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce0),.delta_weights2_5_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we0),.delta_weights2_5_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d0),.delta_weights2_5_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address1),.delta_weights2_5_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce1),.delta_weights2_5_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we1),.delta_weights2_5_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d1),.delta_weights2_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address0),.delta_weights2_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce0),.delta_weights2_4_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we0),.delta_weights2_4_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d0),.delta_weights2_4_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address1),.delta_weights2_4_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce1),.delta_weights2_4_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we1),.delta_weights2_4_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d1),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.last_activations_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_address0),.last_activations_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_ce0),.last_activations_2_q0(last_activations_2_q0),.last_activations_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_address0),.last_activations_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_ce0),.last_activations_3_q0(last_activations_3_q0),.last_activations_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_address0),.last_activations_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_ce0),.last_activations_4_q0(last_activations_4_q0),.last_activations_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_address0),.last_activations_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_ce0),.last_activations_5_q0(last_activations_5_q0),.last_activations_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_address0),.last_activations_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_ce0),.last_activations_6_q0(last_activations_6_q0),.last_activations_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_address0),.last_activations_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_ce0),.last_activations_7_q0(last_activations_7_q0),.output_difference_0_load(output_difference_0_load_reg_1390),.output_difference_1_load(output_difference_1_load_reg_1395),.output_difference_2_load(output_difference_2_load_reg_1400),.output_difference_3_load(output_difference_3_load_reg_1405),.output_difference_4_load(output_difference_4_load_reg_1410),.output_difference_5_load(output_difference_5_load_reg_1415),.output_difference_6_load(output_difference_6_load_reg_1420),.output_difference_7_load(output_difference_7_load_reg_1425),.output_difference_0_load_1(output_difference_0_load_1_reg_1430),.output_difference_1_load_1(output_difference_1_load_1_reg_1435),.output_difference_2_load_1(output_difference_2_load_1_reg_1440),.output_difference_3_load_1(output_difference_3_load_1_reg_1445),.output_difference_4_load_1(output_difference_4_load_1_reg_1450),.output_difference_5_load_1(output_difference_5_load_1_reg_1455),.output_difference_6_load_1(output_difference_6_load_1_reg_1460),.output_difference_7_load_1(output_difference_7_load_1_reg_1465),.output_difference_0_load_2(output_difference_0_load_2_reg_1470),.output_difference_1_load_2(output_difference_1_load_2_reg_1475),.output_difference_2_load_2(output_difference_2_load_2_reg_1480),.output_difference_3_load_2(output_difference_3_load_2_reg_1485),.output_difference_4_load_2(output_difference_4_load_2_reg_1490),.output_difference_5_load_2(output_difference_5_load_2_reg_1495),.output_difference_6_load_2(output_difference_6_load_2_reg_1500),.output_difference_7_load_2(output_difference_7_load_2_reg_1505),.output_difference_0_load_3(output_difference_0_load_3_reg_1510),.output_difference_1_load_3(output_difference_1_load_3_reg_1515),.output_difference_2_load_3(output_difference_2_load_3_reg_1520),.output_difference_3_load_3(output_difference_3_load_3_reg_1525),.output_difference_4_load_3(output_difference_4_load_3_reg_1530),.output_difference_5_load_3(output_difference_5_load_3_reg_1535),.output_difference_6_load_3(output_difference_6_load_3_reg_1540),.output_difference_7_load_3(output_difference_7_load_3_reg_1545),.output_difference_0_load_4(output_difference_0_load_4_reg_1550),.output_difference_1_load_4(output_difference_1_load_4_reg_1555),.output_difference_2_load_4(output_difference_2_load_4_reg_1560),.output_difference_3_load_4(output_difference_3_load_4_reg_1565),.output_difference_4_load_4(output_difference_4_load_4_reg_1570),.output_difference_5_load_4(output_difference_5_load_4_reg_1575),.output_difference_6_load_4(output_difference_6_load_4_reg_1580),.output_difference_7_load_4(output_difference_7_load_4_reg_1585),.output_difference_0_load_5(output_difference_0_load_5_reg_1590),.output_difference_1_load_5(output_difference_1_load_5_reg_1595),.output_difference_2_load_5(output_difference_2_load_5_reg_1600),.output_difference_3_load_5(output_difference_3_load_5_reg_1605),.output_difference_4_load_5(output_difference_4_load_5_reg_1610),.output_difference_5_load_5(output_difference_5_load_5_reg_1615),.output_difference_6_load_5(output_difference_6_load_5_reg_1620),.output_difference_7_load_5(output_difference_7_load_5_reg_1625),.output_difference_0_load_6(output_difference_0_load_6_reg_1630),.output_difference_1_load_6(output_difference_1_load_6_reg_1635),.output_difference_2_load_6(output_difference_2_load_6_reg_1640),.output_difference_3_load_6(output_difference_3_load_6_reg_1645),.output_difference_4_load_6(output_difference_4_load_6_reg_1650),.output_difference_5_load_6(output_difference_5_load_6_reg_1655),.output_difference_6_load_6(output_difference_6_load_6_reg_1660),.output_difference_7_load_6(output_difference_7_load_6_reg_1665),.output_difference_0_load_7(output_difference_0_load_7_reg_1670),.output_difference_1_load_7(output_difference_1_load_7_reg_1675),.output_difference_2_load_7(output_difference_2_load_7_reg_1680),.output_difference_3_load_7(output_difference_3_load_7_reg_1685),.output_difference_4_load_7(output_difference_4_load_7_reg_1690),.output_difference_5_load_7(output_difference_5_load_7_reg_1695),.output_difference_6_load_7(output_difference_6_load_7_reg_1700),.output_difference_7_load_7(output_difference_7_load_7_reg_1705),.grp_fu_1710_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din0),.grp_fu_1710_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din1),.grp_fu_1710_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1710_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_ce),.grp_fu_1714_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din0),.grp_fu_1714_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din1),.grp_fu_1714_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1714_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_ce),.grp_fu_1718_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din0),.grp_fu_1718_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din1),.grp_fu_1718_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1718_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_ce),.grp_fu_1722_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din0),.grp_fu_1722_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din1),.grp_fu_1722_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1722_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_ce),.grp_fu_1726_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din0),.grp_fu_1726_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din1),.grp_fu_1726_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1726_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_ce),.grp_fu_1730_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din0),.grp_fu_1730_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din1),.grp_fu_1730_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1730_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_ce),.grp_fu_1734_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din0),.grp_fu_1734_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din1),.grp_fu_1734_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1734_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_ce),.grp_fu_1738_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din0),.grp_fu_1738_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din1),.grp_fu_1738_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1738_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_ce),.grp_fu_1742_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din1),.grp_fu_1742_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1742_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_ce),.grp_fu_1746_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din0),.grp_fu_1746_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din1),.grp_fu_1746_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1746_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_ce),.grp_fu_1750_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din0),.grp_fu_1750_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din1),.grp_fu_1750_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1750_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_ce),.grp_fu_1754_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din0),.grp_fu_1754_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din1),.grp_fu_1754_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1754_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_ce),.grp_fu_1758_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din0),.grp_fu_1758_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din1),.grp_fu_1758_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1758_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_ce),.grp_fu_1762_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din0),.grp_fu_1762_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din1),.grp_fu_1762_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1762_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_ce),.grp_fu_1766_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din0),.grp_fu_1766_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din1),.grp_fu_1766_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1766_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_ce),.grp_fu_1770_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1770_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_1_reg_1430 <= output_difference_0_q6;
        output_difference_0_load_2_reg_1470 <= output_difference_0_q5;
        output_difference_0_load_3_reg_1510 <= output_difference_0_q4;
        output_difference_0_load_4_reg_1550 <= output_difference_0_q3;
        output_difference_0_load_5_reg_1590 <= output_difference_0_q2;
        output_difference_0_load_6_reg_1630 <= output_difference_0_q1;
        output_difference_0_load_7_reg_1670 <= output_difference_0_q0;
        output_difference_0_load_reg_1390 <= output_difference_0_q7;
        output_difference_1_load_1_reg_1435 <= output_difference_1_q6;
        output_difference_1_load_2_reg_1475 <= output_difference_1_q5;
        output_difference_1_load_3_reg_1515 <= output_difference_1_q4;
        output_difference_1_load_4_reg_1555 <= output_difference_1_q3;
        output_difference_1_load_5_reg_1595 <= output_difference_1_q2;
        output_difference_1_load_6_reg_1635 <= output_difference_1_q1;
        output_difference_1_load_7_reg_1675 <= output_difference_1_q0;
        output_difference_1_load_reg_1395 <= output_difference_1_q7;
        output_difference_2_load_1_reg_1440 <= output_difference_2_q6;
        output_difference_2_load_2_reg_1480 <= output_difference_2_q5;
        output_difference_2_load_3_reg_1520 <= output_difference_2_q4;
        output_difference_2_load_4_reg_1560 <= output_difference_2_q3;
        output_difference_2_load_5_reg_1600 <= output_difference_2_q2;
        output_difference_2_load_6_reg_1640 <= output_difference_2_q1;
        output_difference_2_load_7_reg_1680 <= output_difference_2_q0;
        output_difference_2_load_reg_1400 <= output_difference_2_q7;
        output_difference_3_load_1_reg_1445 <= output_difference_3_q6;
        output_difference_3_load_2_reg_1485 <= output_difference_3_q5;
        output_difference_3_load_3_reg_1525 <= output_difference_3_q4;
        output_difference_3_load_4_reg_1565 <= output_difference_3_q3;
        output_difference_3_load_5_reg_1605 <= output_difference_3_q2;
        output_difference_3_load_6_reg_1645 <= output_difference_3_q1;
        output_difference_3_load_7_reg_1685 <= output_difference_3_q0;
        output_difference_3_load_reg_1405 <= output_difference_3_q7;
        output_difference_4_load_1_reg_1450 <= output_difference_4_q6;
        output_difference_4_load_2_reg_1490 <= output_difference_4_q5;
        output_difference_4_load_3_reg_1530 <= output_difference_4_q4;
        output_difference_4_load_4_reg_1570 <= output_difference_4_q3;
        output_difference_4_load_5_reg_1610 <= output_difference_4_q2;
        output_difference_4_load_6_reg_1650 <= output_difference_4_q1;
        output_difference_4_load_7_reg_1690 <= output_difference_4_q0;
        output_difference_4_load_reg_1410 <= output_difference_4_q7;
        output_difference_5_load_1_reg_1455 <= output_difference_5_q6;
        output_difference_5_load_2_reg_1495 <= output_difference_5_q5;
        output_difference_5_load_3_reg_1535 <= output_difference_5_q4;
        output_difference_5_load_4_reg_1575 <= output_difference_5_q3;
        output_difference_5_load_5_reg_1615 <= output_difference_5_q2;
        output_difference_5_load_6_reg_1655 <= output_difference_5_q1;
        output_difference_5_load_7_reg_1695 <= output_difference_5_q0;
        output_difference_5_load_reg_1415 <= output_difference_5_q7;
        output_difference_6_load_1_reg_1460 <= output_difference_6_q6;
        output_difference_6_load_2_reg_1500 <= output_difference_6_q5;
        output_difference_6_load_3_reg_1540 <= output_difference_6_q4;
        output_difference_6_load_4_reg_1580 <= output_difference_6_q3;
        output_difference_6_load_5_reg_1620 <= output_difference_6_q2;
        output_difference_6_load_6_reg_1660 <= output_difference_6_q1;
        output_difference_6_load_7_reg_1700 <= output_difference_6_q0;
        output_difference_6_load_reg_1420 <= output_difference_6_q7;
        output_difference_7_load_1_reg_1465 <= output_difference_7_q6;
        output_difference_7_load_2_reg_1505 <= output_difference_7_q5;
        output_difference_7_load_3_reg_1545 <= output_difference_7_q4;
        output_difference_7_load_4_reg_1585 <= output_difference_7_q3;
        output_difference_7_load_5_reg_1625 <= output_difference_7_q2;
        output_difference_7_load_6_reg_1665 <= output_difference_7_q1;
        output_difference_7_load_7_reg_1705 <= output_difference_7_q0;
        output_difference_7_load_reg_1425 <= output_difference_7_q7;
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
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1710_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_ce;
    end else begin
        grp_fu_1710_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1714_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_ce;
    end else begin
        grp_fu_1714_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1718_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_ce;
    end else begin
        grp_fu_1718_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1722_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_ce;
    end else begin
        grp_fu_1722_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1726_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_ce;
    end else begin
        grp_fu_1726_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1730_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_ce;
    end else begin
        grp_fu_1730_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1734_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_ce;
    end else begin
        grp_fu_1734_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1738_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_ce;
    end else begin
        grp_fu_1738_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1742_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_ce;
    end else begin
        grp_fu_1742_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1746_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_ce;
    end else begin
        grp_fu_1746_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1750_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_ce;
    end else begin
        grp_fu_1750_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1754_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_ce;
    end else begin
        grp_fu_1754_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1758_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_ce;
    end else begin
        grp_fu_1758_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1762_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_ce;
    end else begin
        grp_fu_1762_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1766_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_ce;
    end else begin
        grp_fu_1766_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1770_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
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
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
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
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
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
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
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
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce2_local = 1'b1;
    end else begin
        output_difference_4_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce3_local = 1'b1;
    end else begin
        output_difference_4_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce4_local = 1'b1;
    end else begin
        output_difference_4_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce5_local = 1'b1;
    end else begin
        output_difference_4_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce6_local = 1'b1;
    end else begin
        output_difference_4_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_4_ce7_local = 1'b1;
    end else begin
        output_difference_4_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce2_local = 1'b1;
    end else begin
        output_difference_5_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce3_local = 1'b1;
    end else begin
        output_difference_5_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce4_local = 1'b1;
    end else begin
        output_difference_5_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce5_local = 1'b1;
    end else begin
        output_difference_5_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce6_local = 1'b1;
    end else begin
        output_difference_5_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_5_ce7_local = 1'b1;
    end else begin
        output_difference_5_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce2_local = 1'b1;
    end else begin
        output_difference_6_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce3_local = 1'b1;
    end else begin
        output_difference_6_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce4_local = 1'b1;
    end else begin
        output_difference_6_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce5_local = 1'b1;
    end else begin
        output_difference_6_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce6_local = 1'b1;
    end else begin
        output_difference_6_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_6_ce7_local = 1'b1;
    end else begin
        output_difference_6_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce2_local = 1'b1;
    end else begin
        output_difference_7_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce3_local = 1'b1;
    end else begin
        output_difference_7_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce4_local = 1'b1;
    end else begin
        output_difference_7_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce5_local = 1'b1;
    end else begin
        output_difference_7_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce6_local = 1'b1;
    end else begin
        output_difference_7_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_difference_7_ce7_local = 1'b1;
    end else begin
        output_difference_7_ce7_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_1_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_2_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_3_we1;
assign delta_weights2_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address0;
assign delta_weights2_4_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_address1;
assign delta_weights2_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce0;
assign delta_weights2_4_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_ce1;
assign delta_weights2_4_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d0;
assign delta_weights2_4_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_d1;
assign delta_weights2_4_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we0;
assign delta_weights2_4_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_4_we1;
assign delta_weights2_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address0;
assign delta_weights2_5_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_address1;
assign delta_weights2_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce0;
assign delta_weights2_5_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_ce1;
assign delta_weights2_5_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d0;
assign delta_weights2_5_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_d1;
assign delta_weights2_5_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we0;
assign delta_weights2_5_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_5_we1;
assign delta_weights2_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address0;
assign delta_weights2_6_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_address1;
assign delta_weights2_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce0;
assign delta_weights2_6_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_ce1;
assign delta_weights2_6_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d0;
assign delta_weights2_6_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_d1;
assign delta_weights2_6_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we0;
assign delta_weights2_6_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_6_we1;
assign delta_weights2_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address0;
assign delta_weights2_7_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_address1;
assign delta_weights2_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce0;
assign delta_weights2_7_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_ce1;
assign delta_weights2_7_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d0;
assign delta_weights2_7_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_d1;
assign delta_weights2_7_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we0;
assign delta_weights2_7_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_delta_weights2_7_we1;
assign grp_fu_3620_p_ce = grp_fu_1710_ce;
assign grp_fu_3620_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din0;
assign grp_fu_3620_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1710_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1714_ce;
assign grp_fu_3624_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din0;
assign grp_fu_3624_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1714_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1718_ce;
assign grp_fu_3628_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din0;
assign grp_fu_3628_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1718_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1722_ce;
assign grp_fu_3632_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din0;
assign grp_fu_3632_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1722_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1726_ce;
assign grp_fu_3636_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din0;
assign grp_fu_3636_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1726_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1730_ce;
assign grp_fu_3640_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din0;
assign grp_fu_3640_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1730_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1734_ce;
assign grp_fu_3644_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din0;
assign grp_fu_3644_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1734_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1738_ce;
assign grp_fu_3648_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din0;
assign grp_fu_3648_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1738_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1742_ce;
assign grp_fu_3652_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din0;
assign grp_fu_3652_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1742_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1746_ce;
assign grp_fu_3656_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din0;
assign grp_fu_3656_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1746_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1750_ce;
assign grp_fu_3660_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din0;
assign grp_fu_3660_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1750_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1754_ce;
assign grp_fu_3664_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din0;
assign grp_fu_3664_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1754_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1758_ce;
assign grp_fu_3668_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din0;
assign grp_fu_3668_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1758_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1762_ce;
assign grp_fu_3672_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din0;
assign grp_fu_3672_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1762_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1766_ce;
assign grp_fu_3676_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din0;
assign grp_fu_3676_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1766_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1770_ce;
assign grp_fu_3680_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din0;
assign grp_fu_3680_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_grp_fu_1770_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_1_ce0;
assign last_activations_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_address0;
assign last_activations_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_2_ce0;
assign last_activations_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_address0;
assign last_activations_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_3_ce0;
assign last_activations_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_address0;
assign last_activations_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_4_ce0;
assign last_activations_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_address0;
assign last_activations_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_5_ce0;
assign last_activations_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_address0;
assign last_activations_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_6_ce0;
assign last_activations_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_address0;
assign last_activations_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_906_last_activations_7_ce0;
assign output_difference_0_address0 = 64'd7;
assign output_difference_0_address1 = 64'd6;
assign output_difference_0_address2 = 64'd5;
assign output_difference_0_address3 = 64'd4;
assign output_difference_0_address4 = 64'd3;
assign output_difference_0_address5 = 64'd2;
assign output_difference_0_address6 = 64'd1;
assign output_difference_0_address7 = 64'd0;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_0_ce2 = output_difference_0_ce2_local;
assign output_difference_0_ce3 = output_difference_0_ce3_local;
assign output_difference_0_ce4 = output_difference_0_ce4_local;
assign output_difference_0_ce5 = output_difference_0_ce5_local;
assign output_difference_0_ce6 = output_difference_0_ce6_local;
assign output_difference_0_ce7 = output_difference_0_ce7_local;
assign output_difference_1_address0 = 64'd7;
assign output_difference_1_address1 = 64'd6;
assign output_difference_1_address2 = 64'd5;
assign output_difference_1_address3 = 64'd4;
assign output_difference_1_address4 = 64'd3;
assign output_difference_1_address5 = 64'd2;
assign output_difference_1_address6 = 64'd1;
assign output_difference_1_address7 = 64'd0;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_1_ce2 = output_difference_1_ce2_local;
assign output_difference_1_ce3 = output_difference_1_ce3_local;
assign output_difference_1_ce4 = output_difference_1_ce4_local;
assign output_difference_1_ce5 = output_difference_1_ce5_local;
assign output_difference_1_ce6 = output_difference_1_ce6_local;
assign output_difference_1_ce7 = output_difference_1_ce7_local;
assign output_difference_2_address0 = 64'd7;
assign output_difference_2_address1 = 64'd6;
assign output_difference_2_address2 = 64'd5;
assign output_difference_2_address3 = 64'd4;
assign output_difference_2_address4 = 64'd3;
assign output_difference_2_address5 = 64'd2;
assign output_difference_2_address6 = 64'd1;
assign output_difference_2_address7 = 64'd0;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_2_ce2 = output_difference_2_ce2_local;
assign output_difference_2_ce3 = output_difference_2_ce3_local;
assign output_difference_2_ce4 = output_difference_2_ce4_local;
assign output_difference_2_ce5 = output_difference_2_ce5_local;
assign output_difference_2_ce6 = output_difference_2_ce6_local;
assign output_difference_2_ce7 = output_difference_2_ce7_local;
assign output_difference_3_address0 = 64'd7;
assign output_difference_3_address1 = 64'd6;
assign output_difference_3_address2 = 64'd5;
assign output_difference_3_address3 = 64'd4;
assign output_difference_3_address4 = 64'd3;
assign output_difference_3_address5 = 64'd2;
assign output_difference_3_address6 = 64'd1;
assign output_difference_3_address7 = 64'd0;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_3_ce2 = output_difference_3_ce2_local;
assign output_difference_3_ce3 = output_difference_3_ce3_local;
assign output_difference_3_ce4 = output_difference_3_ce4_local;
assign output_difference_3_ce5 = output_difference_3_ce5_local;
assign output_difference_3_ce6 = output_difference_3_ce6_local;
assign output_difference_3_ce7 = output_difference_3_ce7_local;
assign output_difference_4_address0 = 64'd7;
assign output_difference_4_address1 = 64'd6;
assign output_difference_4_address2 = 64'd5;
assign output_difference_4_address3 = 64'd4;
assign output_difference_4_address4 = 64'd3;
assign output_difference_4_address5 = 64'd2;
assign output_difference_4_address6 = 64'd1;
assign output_difference_4_address7 = 64'd0;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_4_ce2 = output_difference_4_ce2_local;
assign output_difference_4_ce3 = output_difference_4_ce3_local;
assign output_difference_4_ce4 = output_difference_4_ce4_local;
assign output_difference_4_ce5 = output_difference_4_ce5_local;
assign output_difference_4_ce6 = output_difference_4_ce6_local;
assign output_difference_4_ce7 = output_difference_4_ce7_local;
assign output_difference_5_address0 = 64'd7;
assign output_difference_5_address1 = 64'd6;
assign output_difference_5_address2 = 64'd5;
assign output_difference_5_address3 = 64'd4;
assign output_difference_5_address4 = 64'd3;
assign output_difference_5_address5 = 64'd2;
assign output_difference_5_address6 = 64'd1;
assign output_difference_5_address7 = 64'd0;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_5_ce2 = output_difference_5_ce2_local;
assign output_difference_5_ce3 = output_difference_5_ce3_local;
assign output_difference_5_ce4 = output_difference_5_ce4_local;
assign output_difference_5_ce5 = output_difference_5_ce5_local;
assign output_difference_5_ce6 = output_difference_5_ce6_local;
assign output_difference_5_ce7 = output_difference_5_ce7_local;
assign output_difference_6_address0 = 64'd7;
assign output_difference_6_address1 = 64'd6;
assign output_difference_6_address2 = 64'd5;
assign output_difference_6_address3 = 64'd4;
assign output_difference_6_address4 = 64'd3;
assign output_difference_6_address5 = 64'd2;
assign output_difference_6_address6 = 64'd1;
assign output_difference_6_address7 = 64'd0;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_6_ce2 = output_difference_6_ce2_local;
assign output_difference_6_ce3 = output_difference_6_ce3_local;
assign output_difference_6_ce4 = output_difference_6_ce4_local;
assign output_difference_6_ce5 = output_difference_6_ce5_local;
assign output_difference_6_ce6 = output_difference_6_ce6_local;
assign output_difference_6_ce7 = output_difference_6_ce7_local;
assign output_difference_7_address0 = 64'd7;
assign output_difference_7_address1 = 64'd6;
assign output_difference_7_address2 = 64'd5;
assign output_difference_7_address3 = 64'd4;
assign output_difference_7_address4 = 64'd3;
assign output_difference_7_address5 = 64'd2;
assign output_difference_7_address6 = 64'd1;
assign output_difference_7_address7 = 64'd0;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign output_difference_7_ce2 = output_difference_7_ce2_local;
assign output_difference_7_ce3 = output_difference_7_ce3_local;
assign output_difference_7_ce4 = output_difference_7_ce4_local;
assign output_difference_7_ce5 = output_difference_7_ce5_local;
assign output_difference_7_ce6 = output_difference_7_ce6_local;
assign output_difference_7_ce7 = output_difference_7_ce7_local;
endmodule 
