module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_2_address2,output_difference_2_ce2,output_difference_2_q2,output_difference_2_address3,output_difference_2_ce3,output_difference_2_q3,output_difference_2_address4,output_difference_2_ce4,output_difference_2_q4,output_difference_2_address5,output_difference_2_ce5,output_difference_2_q5,output_difference_2_address6,output_difference_2_ce6,output_difference_2_q6,output_difference_2_address7,output_difference_2_ce7,output_difference_2_q7,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_3_address2,output_difference_3_ce2,output_difference_3_q2,output_difference_3_address3,output_difference_3_ce3,output_difference_3_q3,output_difference_3_address4,output_difference_3_ce4,output_difference_3_q4,output_difference_3_address5,output_difference_3_ce5,output_difference_3_q5,output_difference_3_address6,output_difference_3_ce6,output_difference_3_q6,output_difference_3_address7,output_difference_3_ce7,output_difference_3_q7,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_4_address2,output_difference_4_ce2,output_difference_4_q2,output_difference_4_address3,output_difference_4_ce3,output_difference_4_q3,output_difference_4_address4,output_difference_4_ce4,output_difference_4_q4,output_difference_4_address5,output_difference_4_ce5,output_difference_4_q5,output_difference_4_address6,output_difference_4_ce6,output_difference_4_q6,output_difference_4_address7,output_difference_4_ce7,output_difference_4_q7,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_5_address2,output_difference_5_ce2,output_difference_5_q2,output_difference_5_address3,output_difference_5_ce3,output_difference_5_q3,output_difference_5_address4,output_difference_5_ce4,output_difference_5_q4,output_difference_5_address5,output_difference_5_ce5,output_difference_5_q5,output_difference_5_address6,output_difference_5_ce6,output_difference_5_q6,output_difference_5_address7,output_difference_5_ce7,output_difference_5_q7,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_6_address2,output_difference_6_ce2,output_difference_6_q2,output_difference_6_address3,output_difference_6_ce3,output_difference_6_q3,output_difference_6_address4,output_difference_6_ce4,output_difference_6_q4,output_difference_6_address5,output_difference_6_ce5,output_difference_6_q5,output_difference_6_address6,output_difference_6_ce6,output_difference_6_q6,output_difference_6_address7,output_difference_6_ce7,output_difference_6_q7,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,output_difference_7_address2,output_difference_7_ce2,output_difference_7_q2,output_difference_7_address3,output_difference_7_ce3,output_difference_7_q3,output_difference_7_address4,output_difference_7_ce4,output_difference_7_q4,output_difference_7_address5,output_difference_7_ce5,output_difference_7_q5,output_difference_7_address6,output_difference_7_ce6,output_difference_7_q6,output_difference_7_address7,output_difference_7_ce7,output_difference_7_q7,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,idx,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce); 
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
output  [6:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [6:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [6:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [6:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [6:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [6:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [6:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [6:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [6:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [6:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [6:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [6:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [6:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [6:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [6:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [6:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
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
output  [8:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [8:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [8:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [8:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [8:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [8:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [8:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
input  [11:0] idx;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1348;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1353;
reg   [63:0] output_difference_2_load_reg_1358;
reg   [63:0] output_difference_3_load_reg_1363;
reg   [63:0] output_difference_4_load_reg_1368;
reg   [63:0] output_difference_5_load_reg_1373;
reg   [63:0] output_difference_6_load_reg_1378;
reg   [63:0] output_difference_7_load_reg_1383;
reg   [63:0] output_difference_0_load_8_reg_1388;
reg   [63:0] output_difference_1_load_8_reg_1393;
reg   [63:0] output_difference_2_load_8_reg_1398;
reg   [63:0] output_difference_3_load_8_reg_1403;
reg   [63:0] output_difference_4_load_8_reg_1408;
reg   [63:0] output_difference_5_load_8_reg_1413;
reg   [63:0] output_difference_6_load_8_reg_1418;
reg   [63:0] output_difference_7_load_8_reg_1423;
reg   [63:0] output_difference_0_load_9_reg_1428;
reg   [63:0] output_difference_1_load_9_reg_1433;
reg   [63:0] output_difference_2_load_9_reg_1438;
reg   [63:0] output_difference_3_load_9_reg_1443;
reg   [63:0] output_difference_4_load_9_reg_1448;
reg   [63:0] output_difference_5_load_9_reg_1453;
reg   [63:0] output_difference_6_load_9_reg_1458;
reg   [63:0] output_difference_7_load_9_reg_1463;
reg   [63:0] output_difference_0_load_10_reg_1468;
reg   [63:0] output_difference_1_load_10_reg_1473;
reg   [63:0] output_difference_2_load_10_reg_1478;
reg   [63:0] output_difference_3_load_10_reg_1483;
reg   [63:0] output_difference_4_load_10_reg_1488;
reg   [63:0] output_difference_5_load_10_reg_1493;
reg   [63:0] output_difference_6_load_10_reg_1498;
reg   [63:0] output_difference_7_load_10_reg_1503;
reg   [63:0] output_difference_0_load_11_reg_1508;
reg   [63:0] output_difference_1_load_11_reg_1513;
reg   [63:0] output_difference_2_load_11_reg_1518;
reg   [63:0] output_difference_3_load_11_reg_1523;
reg   [63:0] output_difference_4_load_11_reg_1528;
reg   [63:0] output_difference_5_load_11_reg_1533;
reg   [63:0] output_difference_6_load_11_reg_1538;
reg   [63:0] output_difference_7_load_11_reg_1543;
reg   [63:0] output_difference_0_load_12_reg_1548;
reg   [63:0] output_difference_1_load_12_reg_1553;
reg   [63:0] output_difference_2_load_12_reg_1558;
reg   [63:0] output_difference_3_load_12_reg_1563;
reg   [63:0] output_difference_4_load_12_reg_1568;
reg   [63:0] output_difference_5_load_12_reg_1573;
reg   [63:0] output_difference_6_load_12_reg_1578;
reg   [63:0] output_difference_7_load_12_reg_1583;
reg   [63:0] output_difference_0_load_13_reg_1588;
reg   [63:0] output_difference_1_load_13_reg_1593;
reg   [63:0] output_difference_2_load_13_reg_1598;
reg   [63:0] output_difference_3_load_13_reg_1603;
reg   [63:0] output_difference_4_load_13_reg_1608;
reg   [63:0] output_difference_5_load_13_reg_1613;
reg   [63:0] output_difference_6_load_13_reg_1618;
reg   [63:0] output_difference_7_load_13_reg_1623;
reg   [63:0] output_difference_0_load_14_reg_1628;
reg   [63:0] output_difference_1_load_14_reg_1633;
reg   [63:0] output_difference_2_load_14_reg_1638;
reg   [63:0] output_difference_3_load_14_reg_1643;
reg   [63:0] output_difference_4_load_14_reg_1648;
reg   [63:0] output_difference_5_load_14_reg_1653;
reg   [63:0] output_difference_6_load_14_reg_1658;
reg   [63:0] output_difference_7_load_14_reg_1663;
wire    ap_CS_fsm_state3;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_ready;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d1;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d0;
wire   [6:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d1;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_ce0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg;
wire    ap_CS_fsm_state4;
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
reg    grp_fu_1673_ce;
reg    grp_fu_1677_ce;
reg    grp_fu_1681_ce;
reg    grp_fu_1685_ce;
reg    grp_fu_1689_ce;
reg    grp_fu_1693_ce;
reg    grp_fu_1697_ce;
reg    grp_fu_1701_ce;
reg    grp_fu_1705_ce;
reg    grp_fu_1709_ce;
reg    grp_fu_1713_ce;
reg    grp_fu_1717_ce;
reg    grp_fu_1721_ce;
reg    grp_fu_1725_ce;
reg    grp_fu_1729_ce;
reg    grp_fu_1733_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_ready),.delta_weights1_7_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address0),.delta_weights1_7_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce0),.delta_weights1_7_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we0),.delta_weights1_7_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d0),.delta_weights1_7_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address1),.delta_weights1_7_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce1),.delta_weights1_7_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we1),.delta_weights1_7_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d1),.delta_weights1_6_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address0),.delta_weights1_6_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce0),.delta_weights1_6_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we0),.delta_weights1_6_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d0),.delta_weights1_6_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address1),.delta_weights1_6_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce1),.delta_weights1_6_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we1),.delta_weights1_6_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d1),.delta_weights1_5_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address0),.delta_weights1_5_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce0),.delta_weights1_5_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we0),.delta_weights1_5_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d0),.delta_weights1_5_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address1),.delta_weights1_5_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce1),.delta_weights1_5_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we1),.delta_weights1_5_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d1),.delta_weights1_4_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address0),.delta_weights1_4_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce0),.delta_weights1_4_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we0),.delta_weights1_4_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d0),.delta_weights1_4_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address1),.delta_weights1_4_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce1),.delta_weights1_4_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we1),.delta_weights1_4_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d1),.delta_weights1_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address0),.delta_weights1_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce0),.delta_weights1_3_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we0),.delta_weights1_3_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d0),.delta_weights1_3_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address1),.delta_weights1_3_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce1),.delta_weights1_3_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we1),.delta_weights1_3_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d1),.delta_weights1_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address0),.delta_weights1_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce0),.delta_weights1_2_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we0),.delta_weights1_2_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d0),.delta_weights1_2_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address1),.delta_weights1_2_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce1),.delta_weights1_2_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we1),.delta_weights1_2_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.training_data_2_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_address0),.training_data_2_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_ce0),.training_data_2_q0(training_data_2_q0),.training_data_3_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_address0),.training_data_3_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_ce0),.training_data_3_q0(training_data_3_q0),.training_data_4_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_address0),.training_data_4_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_ce0),.training_data_4_q0(training_data_4_q0),.training_data_5_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_address0),.training_data_5_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_ce0),.training_data_5_q0(training_data_5_q0),.training_data_6_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_address0),.training_data_6_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_ce0),.training_data_6_q0(training_data_6_q0),.training_data_7_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_address0),.training_data_7_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_ce0),.training_data_7_q0(training_data_7_q0),.output_difference_0_load(output_difference_0_load_reg_1348),.output_difference_1_load(output_difference_1_load_reg_1353),.output_difference_2_load(output_difference_2_load_reg_1358),.output_difference_3_load(output_difference_3_load_reg_1363),.output_difference_4_load(output_difference_4_load_reg_1368),.output_difference_5_load(output_difference_5_load_reg_1373),.output_difference_6_load(output_difference_6_load_reg_1378),.output_difference_7_load(output_difference_7_load_reg_1383),.output_difference_0_load_8(output_difference_0_load_8_reg_1388),.output_difference_1_load_8(output_difference_1_load_8_reg_1393),.output_difference_2_load_8(output_difference_2_load_8_reg_1398),.output_difference_3_load_8(output_difference_3_load_8_reg_1403),.output_difference_4_load_8(output_difference_4_load_8_reg_1408),.output_difference_5_load_8(output_difference_5_load_8_reg_1413),.output_difference_6_load_8(output_difference_6_load_8_reg_1418),.output_difference_7_load_8(output_difference_7_load_8_reg_1423),.output_difference_0_load_9(output_difference_0_load_9_reg_1428),.output_difference_1_load_9(output_difference_1_load_9_reg_1433),.output_difference_2_load_9(output_difference_2_load_9_reg_1438),.output_difference_3_load_9(output_difference_3_load_9_reg_1443),.output_difference_4_load_9(output_difference_4_load_9_reg_1448),.output_difference_5_load_9(output_difference_5_load_9_reg_1453),.output_difference_6_load_9(output_difference_6_load_9_reg_1458),.output_difference_7_load_9(output_difference_7_load_9_reg_1463),.output_difference_0_load_10(output_difference_0_load_10_reg_1468),.output_difference_1_load_10(output_difference_1_load_10_reg_1473),.output_difference_2_load_10(output_difference_2_load_10_reg_1478),.output_difference_3_load_10(output_difference_3_load_10_reg_1483),.output_difference_4_load_10(output_difference_4_load_10_reg_1488),.output_difference_5_load_10(output_difference_5_load_10_reg_1493),.output_difference_6_load_10(output_difference_6_load_10_reg_1498),.output_difference_7_load_10(output_difference_7_load_10_reg_1503),.output_difference_0_load_11(output_difference_0_load_11_reg_1508),.output_difference_1_load_11(output_difference_1_load_11_reg_1513),.output_difference_2_load_11(output_difference_2_load_11_reg_1518),.output_difference_3_load_11(output_difference_3_load_11_reg_1523),.output_difference_4_load_11(output_difference_4_load_11_reg_1528),.output_difference_5_load_11(output_difference_5_load_11_reg_1533),.output_difference_6_load_11(output_difference_6_load_11_reg_1538),.output_difference_7_load_11(output_difference_7_load_11_reg_1543),.output_difference_0_load_12(output_difference_0_load_12_reg_1548),.output_difference_1_load_12(output_difference_1_load_12_reg_1553),.output_difference_2_load_12(output_difference_2_load_12_reg_1558),.output_difference_3_load_12(output_difference_3_load_12_reg_1563),.output_difference_4_load_12(output_difference_4_load_12_reg_1568),.output_difference_5_load_12(output_difference_5_load_12_reg_1573),.output_difference_6_load_12(output_difference_6_load_12_reg_1578),.output_difference_7_load_12(output_difference_7_load_12_reg_1583),.output_difference_0_load_13(output_difference_0_load_13_reg_1588),.output_difference_1_load_13(output_difference_1_load_13_reg_1593),.output_difference_2_load_13(output_difference_2_load_13_reg_1598),.output_difference_3_load_13(output_difference_3_load_13_reg_1603),.output_difference_4_load_13(output_difference_4_load_13_reg_1608),.output_difference_5_load_13(output_difference_5_load_13_reg_1613),.output_difference_6_load_13(output_difference_6_load_13_reg_1618),.output_difference_7_load_13(output_difference_7_load_13_reg_1623),.output_difference_0_load_14(output_difference_0_load_14_reg_1628),.output_difference_1_load_14(output_difference_1_load_14_reg_1633),.output_difference_2_load_14(output_difference_2_load_14_reg_1638),.output_difference_3_load_14(output_difference_3_load_14_reg_1643),.output_difference_4_load_14(output_difference_4_load_14_reg_1648),.output_difference_5_load_14(output_difference_5_load_14_reg_1653),.output_difference_6_load_14(output_difference_6_load_14_reg_1658),.output_difference_7_load_14(output_difference_7_load_14_reg_1663),.grp_fu_1673_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din0),.grp_fu_1673_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din1),.grp_fu_1673_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1673_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_ce),.grp_fu_1677_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din0),.grp_fu_1677_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din1),.grp_fu_1677_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1677_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_ce),.grp_fu_1681_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din0),.grp_fu_1681_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din1),.grp_fu_1681_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1681_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_ce),.grp_fu_1685_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din0),.grp_fu_1685_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din1),.grp_fu_1685_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1685_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_ce),.grp_fu_1689_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din0),.grp_fu_1689_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din1),.grp_fu_1689_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1689_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_ce),.grp_fu_1693_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din0),.grp_fu_1693_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din1),.grp_fu_1693_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1693_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_ce),.grp_fu_1697_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din0),.grp_fu_1697_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din1),.grp_fu_1697_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1697_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_ce),.grp_fu_1701_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din0),.grp_fu_1701_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din1),.grp_fu_1701_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1701_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_ce),.grp_fu_1705_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din0),.grp_fu_1705_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din1),.grp_fu_1705_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1705_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_ce),.grp_fu_1709_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din0),.grp_fu_1709_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din1),.grp_fu_1709_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1709_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_ce),.grp_fu_1713_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din0),.grp_fu_1713_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din1),.grp_fu_1713_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1713_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_ce),.grp_fu_1717_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din0),.grp_fu_1717_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din1),.grp_fu_1717_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1717_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_ce),.grp_fu_1721_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din0),.grp_fu_1721_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din1),.grp_fu_1721_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1721_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_ce),.grp_fu_1725_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din0),.grp_fu_1725_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din1),.grp_fu_1725_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1725_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_ce),.grp_fu_1729_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din0),.grp_fu_1729_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din1),.grp_fu_1729_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1729_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_ce),.grp_fu_1733_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din0),.grp_fu_1733_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din1),.grp_fu_1733_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1733_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_10_reg_1468 <= output_difference_0_q4;
        output_difference_0_load_11_reg_1508 <= output_difference_0_q3;
        output_difference_0_load_12_reg_1548 <= output_difference_0_q2;
        output_difference_0_load_13_reg_1588 <= output_difference_0_q1;
        output_difference_0_load_14_reg_1628 <= output_difference_0_q0;
        output_difference_0_load_8_reg_1388 <= output_difference_0_q6;
        output_difference_0_load_9_reg_1428 <= output_difference_0_q5;
        output_difference_0_load_reg_1348 <= output_difference_0_q7;
        output_difference_1_load_10_reg_1473 <= output_difference_1_q4;
        output_difference_1_load_11_reg_1513 <= output_difference_1_q3;
        output_difference_1_load_12_reg_1553 <= output_difference_1_q2;
        output_difference_1_load_13_reg_1593 <= output_difference_1_q1;
        output_difference_1_load_14_reg_1633 <= output_difference_1_q0;
        output_difference_1_load_8_reg_1393 <= output_difference_1_q6;
        output_difference_1_load_9_reg_1433 <= output_difference_1_q5;
        output_difference_1_load_reg_1353 <= output_difference_1_q7;
        output_difference_2_load_10_reg_1478 <= output_difference_2_q4;
        output_difference_2_load_11_reg_1518 <= output_difference_2_q3;
        output_difference_2_load_12_reg_1558 <= output_difference_2_q2;
        output_difference_2_load_13_reg_1598 <= output_difference_2_q1;
        output_difference_2_load_14_reg_1638 <= output_difference_2_q0;
        output_difference_2_load_8_reg_1398 <= output_difference_2_q6;
        output_difference_2_load_9_reg_1438 <= output_difference_2_q5;
        output_difference_2_load_reg_1358 <= output_difference_2_q7;
        output_difference_3_load_10_reg_1483 <= output_difference_3_q4;
        output_difference_3_load_11_reg_1523 <= output_difference_3_q3;
        output_difference_3_load_12_reg_1563 <= output_difference_3_q2;
        output_difference_3_load_13_reg_1603 <= output_difference_3_q1;
        output_difference_3_load_14_reg_1643 <= output_difference_3_q0;
        output_difference_3_load_8_reg_1403 <= output_difference_3_q6;
        output_difference_3_load_9_reg_1443 <= output_difference_3_q5;
        output_difference_3_load_reg_1363 <= output_difference_3_q7;
        output_difference_4_load_10_reg_1488 <= output_difference_4_q4;
        output_difference_4_load_11_reg_1528 <= output_difference_4_q3;
        output_difference_4_load_12_reg_1568 <= output_difference_4_q2;
        output_difference_4_load_13_reg_1608 <= output_difference_4_q1;
        output_difference_4_load_14_reg_1648 <= output_difference_4_q0;
        output_difference_4_load_8_reg_1408 <= output_difference_4_q6;
        output_difference_4_load_9_reg_1448 <= output_difference_4_q5;
        output_difference_4_load_reg_1368 <= output_difference_4_q7;
        output_difference_5_load_10_reg_1493 <= output_difference_5_q4;
        output_difference_5_load_11_reg_1533 <= output_difference_5_q3;
        output_difference_5_load_12_reg_1573 <= output_difference_5_q2;
        output_difference_5_load_13_reg_1613 <= output_difference_5_q1;
        output_difference_5_load_14_reg_1653 <= output_difference_5_q0;
        output_difference_5_load_8_reg_1413 <= output_difference_5_q6;
        output_difference_5_load_9_reg_1453 <= output_difference_5_q5;
        output_difference_5_load_reg_1373 <= output_difference_5_q7;
        output_difference_6_load_10_reg_1498 <= output_difference_6_q4;
        output_difference_6_load_11_reg_1538 <= output_difference_6_q3;
        output_difference_6_load_12_reg_1578 <= output_difference_6_q2;
        output_difference_6_load_13_reg_1618 <= output_difference_6_q1;
        output_difference_6_load_14_reg_1658 <= output_difference_6_q0;
        output_difference_6_load_8_reg_1418 <= output_difference_6_q6;
        output_difference_6_load_9_reg_1458 <= output_difference_6_q5;
        output_difference_6_load_reg_1378 <= output_difference_6_q7;
        output_difference_7_load_10_reg_1503 <= output_difference_7_q4;
        output_difference_7_load_11_reg_1543 <= output_difference_7_q3;
        output_difference_7_load_12_reg_1583 <= output_difference_7_q2;
        output_difference_7_load_13_reg_1623 <= output_difference_7_q1;
        output_difference_7_load_14_reg_1663 <= output_difference_7_q0;
        output_difference_7_load_8_reg_1423 <= output_difference_7_q6;
        output_difference_7_load_9_reg_1463 <= output_difference_7_q5;
        output_difference_7_load_reg_1383 <= output_difference_7_q7;
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
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1673_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_ce;
    end else begin
        grp_fu_1673_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1677_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_ce;
    end else begin
        grp_fu_1677_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1681_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_ce;
    end else begin
        grp_fu_1681_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1685_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_ce;
    end else begin
        grp_fu_1685_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1689_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_ce;
    end else begin
        grp_fu_1689_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1693_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_ce;
    end else begin
        grp_fu_1693_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1697_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_ce;
    end else begin
        grp_fu_1697_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1701_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_ce;
    end else begin
        grp_fu_1701_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1705_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_ce;
    end else begin
        grp_fu_1705_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1709_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_ce;
    end else begin
        grp_fu_1709_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1713_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_ce;
    end else begin
        grp_fu_1713_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1717_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_ce;
    end else begin
        grp_fu_1717_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1721_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_ce;
    end else begin
        grp_fu_1721_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1725_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_ce;
    end else begin
        grp_fu_1725_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1729_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_ce;
    end else begin
        grp_fu_1729_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1733_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_ce;
    end else begin
        grp_fu_1733_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_0_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_1_we1;
assign delta_weights1_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address0;
assign delta_weights1_2_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_address1;
assign delta_weights1_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce0;
assign delta_weights1_2_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_ce1;
assign delta_weights1_2_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d0;
assign delta_weights1_2_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_d1;
assign delta_weights1_2_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we0;
assign delta_weights1_2_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_2_we1;
assign delta_weights1_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address0;
assign delta_weights1_3_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_address1;
assign delta_weights1_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce0;
assign delta_weights1_3_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_ce1;
assign delta_weights1_3_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d0;
assign delta_weights1_3_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_d1;
assign delta_weights1_3_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we0;
assign delta_weights1_3_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_3_we1;
assign delta_weights1_4_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address0;
assign delta_weights1_4_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_address1;
assign delta_weights1_4_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce0;
assign delta_weights1_4_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_ce1;
assign delta_weights1_4_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d0;
assign delta_weights1_4_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_d1;
assign delta_weights1_4_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we0;
assign delta_weights1_4_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_4_we1;
assign delta_weights1_5_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address0;
assign delta_weights1_5_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_address1;
assign delta_weights1_5_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce0;
assign delta_weights1_5_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_ce1;
assign delta_weights1_5_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d0;
assign delta_weights1_5_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_d1;
assign delta_weights1_5_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we0;
assign delta_weights1_5_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_5_we1;
assign delta_weights1_6_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address0;
assign delta_weights1_6_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_address1;
assign delta_weights1_6_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce0;
assign delta_weights1_6_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_ce1;
assign delta_weights1_6_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d0;
assign delta_weights1_6_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_d1;
assign delta_weights1_6_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we0;
assign delta_weights1_6_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_6_we1;
assign delta_weights1_7_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address0;
assign delta_weights1_7_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_address1;
assign delta_weights1_7_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce0;
assign delta_weights1_7_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_ce1;
assign delta_weights1_7_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d0;
assign delta_weights1_7_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_d1;
assign delta_weights1_7_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we0;
assign delta_weights1_7_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_delta_weights1_7_we1;
assign grp_fu_3620_p_ce = grp_fu_1673_ce;
assign grp_fu_3620_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din0;
assign grp_fu_3620_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1673_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1677_ce;
assign grp_fu_3624_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din0;
assign grp_fu_3624_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1677_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1681_ce;
assign grp_fu_3628_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din0;
assign grp_fu_3628_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1681_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1685_ce;
assign grp_fu_3632_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din0;
assign grp_fu_3632_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1685_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1689_ce;
assign grp_fu_3636_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din0;
assign grp_fu_3636_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1689_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1693_ce;
assign grp_fu_3640_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din0;
assign grp_fu_3640_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1693_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1697_ce;
assign grp_fu_3644_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din0;
assign grp_fu_3644_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1697_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1701_ce;
assign grp_fu_3648_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din0;
assign grp_fu_3648_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1701_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1705_ce;
assign grp_fu_3652_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din0;
assign grp_fu_3652_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1705_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1709_ce;
assign grp_fu_3656_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din0;
assign grp_fu_3656_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1709_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1713_ce;
assign grp_fu_3660_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din0;
assign grp_fu_3660_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1713_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1717_ce;
assign grp_fu_3664_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din0;
assign grp_fu_3664_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1717_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1721_ce;
assign grp_fu_3668_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din0;
assign grp_fu_3668_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1721_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1725_ce;
assign grp_fu_3672_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din0;
assign grp_fu_3672_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1725_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1729_ce;
assign grp_fu_3676_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din0;
assign grp_fu_3676_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1729_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1733_ce;
assign grp_fu_3680_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din0;
assign grp_fu_3680_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_grp_fu_1733_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_ap_start_reg;
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
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_0_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_1_ce0;
assign training_data_2_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_address0;
assign training_data_2_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_2_ce0;
assign training_data_3_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_address0;
assign training_data_3_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_3_ce0;
assign training_data_4_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_address0;
assign training_data_4_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_4_ce0;
assign training_data_5_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_address0;
assign training_data_5_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_5_ce0;
assign training_data_6_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_address0;
assign training_data_6_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_6_ce0;
assign training_data_7_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_address0;
assign training_data_7_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_926_training_data_7_ce0;
endmodule 