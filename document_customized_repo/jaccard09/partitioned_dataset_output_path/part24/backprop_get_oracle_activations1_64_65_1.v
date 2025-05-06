
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_0_address2,output_differences_0_ce2,output_differences_0_q2,output_differences_0_address3,output_differences_0_ce3,output_differences_0_q3,output_differences_0_address4,output_differences_0_ce4,output_differences_0_q4,output_differences_0_address5,output_differences_0_ce5,output_differences_0_q5,output_differences_0_address6,output_differences_0_ce6,output_differences_0_q6,output_differences_0_address7,output_differences_0_ce7,output_differences_0_q7,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_1_address2,output_differences_1_ce2,output_differences_1_q2,output_differences_1_address3,output_differences_1_ce3,output_differences_1_q3,output_differences_1_address4,output_differences_1_ce4,output_differences_1_q4,output_differences_1_address5,output_differences_1_ce5,output_differences_1_q5,output_differences_1_address6,output_differences_1_ce6,output_differences_1_q6,output_differences_1_address7,output_differences_1_ce7,output_differences_1_q7,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_2_address2,output_differences_2_ce2,output_differences_2_q2,output_differences_2_address3,output_differences_2_ce3,output_differences_2_q3,output_differences_2_address4,output_differences_2_ce4,output_differences_2_q4,output_differences_2_address5,output_differences_2_ce5,output_differences_2_q5,output_differences_2_address6,output_differences_2_ce6,output_differences_2_q6,output_differences_2_address7,output_differences_2_ce7,output_differences_2_q7,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_3_address2,output_differences_3_ce2,output_differences_3_q2,output_differences_3_address3,output_differences_3_ce3,output_differences_3_q3,output_differences_3_address4,output_differences_3_ce4,output_differences_3_q4,output_differences_3_address5,output_differences_3_ce5,output_differences_3_q5,output_differences_3_address6,output_differences_3_ce6,output_differences_3_q6,output_differences_3_address7,output_differences_3_ce7,output_differences_3_q7,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_4_address1,output_differences_4_ce1,output_differences_4_q1,output_differences_4_address2,output_differences_4_ce2,output_differences_4_q2,output_differences_4_address3,output_differences_4_ce3,output_differences_4_q3,output_differences_4_address4,output_differences_4_ce4,output_differences_4_q4,output_differences_4_address5,output_differences_4_ce5,output_differences_4_q5,output_differences_4_address6,output_differences_4_ce6,output_differences_4_q6,output_differences_4_address7,output_differences_4_ce7,output_differences_4_q7,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_5_address1,output_differences_5_ce1,output_differences_5_q1,output_differences_5_address2,output_differences_5_ce2,output_differences_5_q2,output_differences_5_address3,output_differences_5_ce3,output_differences_5_q3,output_differences_5_address4,output_differences_5_ce4,output_differences_5_q4,output_differences_5_address5,output_differences_5_ce5,output_differences_5_q5,output_differences_5_address6,output_differences_5_ce6,output_differences_5_q6,output_differences_5_address7,output_differences_5_ce7,output_differences_5_q7,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_6_address1,output_differences_6_ce1,output_differences_6_q1,output_differences_6_address2,output_differences_6_ce2,output_differences_6_q2,output_differences_6_address3,output_differences_6_ce3,output_differences_6_q3,output_differences_6_address4,output_differences_6_ce4,output_differences_6_q4,output_differences_6_address5,output_differences_6_ce5,output_differences_6_q5,output_differences_6_address6,output_differences_6_ce6,output_differences_6_q6,output_differences_6_address7,output_differences_6_ce7,output_differences_6_q7,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_7_address1,output_differences_7_ce1,output_differences_7_q1,output_differences_7_address2,output_differences_7_ce2,output_differences_7_q2,output_differences_7_address3,output_differences_7_ce3,output_differences_7_q3,output_differences_7_address4,output_differences_7_ce4,output_differences_7_q4,output_differences_7_address5,output_differences_7_ce5,output_differences_7_q5,output_differences_7_address6,output_differences_7_ce6,output_differences_7_q6,output_differences_7_address7,output_differences_7_ce7,output_differences_7_q7,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [8:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [8:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [8:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [8:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [8:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [8:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [8:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
output  [8:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [8:0] weights2_4_address1;
output   weights2_4_ce1;
input  [63:0] weights2_4_q1;
output  [8:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [8:0] weights2_5_address1;
output   weights2_5_ce1;
input  [63:0] weights2_5_q1;
output  [8:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [8:0] weights2_6_address1;
output   weights2_6_ce1;
input  [63:0] weights2_6_q1;
output  [8:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [8:0] weights2_7_address1;
output   weights2_7_ce1;
input  [63:0] weights2_7_q1;
output  [2:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [2:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [2:0] output_differences_0_address2;
output   output_differences_0_ce2;
input  [63:0] output_differences_0_q2;
output  [2:0] output_differences_0_address3;
output   output_differences_0_ce3;
input  [63:0] output_differences_0_q3;
output  [2:0] output_differences_0_address4;
output   output_differences_0_ce4;
input  [63:0] output_differences_0_q4;
output  [2:0] output_differences_0_address5;
output   output_differences_0_ce5;
input  [63:0] output_differences_0_q5;
output  [2:0] output_differences_0_address6;
output   output_differences_0_ce6;
input  [63:0] output_differences_0_q6;
output  [2:0] output_differences_0_address7;
output   output_differences_0_ce7;
input  [63:0] output_differences_0_q7;
output  [2:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [2:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [2:0] output_differences_1_address2;
output   output_differences_1_ce2;
input  [63:0] output_differences_1_q2;
output  [2:0] output_differences_1_address3;
output   output_differences_1_ce3;
input  [63:0] output_differences_1_q3;
output  [2:0] output_differences_1_address4;
output   output_differences_1_ce4;
input  [63:0] output_differences_1_q4;
output  [2:0] output_differences_1_address5;
output   output_differences_1_ce5;
input  [63:0] output_differences_1_q5;
output  [2:0] output_differences_1_address6;
output   output_differences_1_ce6;
input  [63:0] output_differences_1_q6;
output  [2:0] output_differences_1_address7;
output   output_differences_1_ce7;
input  [63:0] output_differences_1_q7;
output  [2:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [2:0] output_differences_2_address1;
output   output_differences_2_ce1;
input  [63:0] output_differences_2_q1;
output  [2:0] output_differences_2_address2;
output   output_differences_2_ce2;
input  [63:0] output_differences_2_q2;
output  [2:0] output_differences_2_address3;
output   output_differences_2_ce3;
input  [63:0] output_differences_2_q3;
output  [2:0] output_differences_2_address4;
output   output_differences_2_ce4;
input  [63:0] output_differences_2_q4;
output  [2:0] output_differences_2_address5;
output   output_differences_2_ce5;
input  [63:0] output_differences_2_q5;
output  [2:0] output_differences_2_address6;
output   output_differences_2_ce6;
input  [63:0] output_differences_2_q6;
output  [2:0] output_differences_2_address7;
output   output_differences_2_ce7;
input  [63:0] output_differences_2_q7;
output  [2:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [2:0] output_differences_3_address1;
output   output_differences_3_ce1;
input  [63:0] output_differences_3_q1;
output  [2:0] output_differences_3_address2;
output   output_differences_3_ce2;
input  [63:0] output_differences_3_q2;
output  [2:0] output_differences_3_address3;
output   output_differences_3_ce3;
input  [63:0] output_differences_3_q3;
output  [2:0] output_differences_3_address4;
output   output_differences_3_ce4;
input  [63:0] output_differences_3_q4;
output  [2:0] output_differences_3_address5;
output   output_differences_3_ce5;
input  [63:0] output_differences_3_q5;
output  [2:0] output_differences_3_address6;
output   output_differences_3_ce6;
input  [63:0] output_differences_3_q6;
output  [2:0] output_differences_3_address7;
output   output_differences_3_ce7;
input  [63:0] output_differences_3_q7;
output  [2:0] output_differences_4_address0;
output   output_differences_4_ce0;
input  [63:0] output_differences_4_q0;
output  [2:0] output_differences_4_address1;
output   output_differences_4_ce1;
input  [63:0] output_differences_4_q1;
output  [2:0] output_differences_4_address2;
output   output_differences_4_ce2;
input  [63:0] output_differences_4_q2;
output  [2:0] output_differences_4_address3;
output   output_differences_4_ce3;
input  [63:0] output_differences_4_q3;
output  [2:0] output_differences_4_address4;
output   output_differences_4_ce4;
input  [63:0] output_differences_4_q4;
output  [2:0] output_differences_4_address5;
output   output_differences_4_ce5;
input  [63:0] output_differences_4_q5;
output  [2:0] output_differences_4_address6;
output   output_differences_4_ce6;
input  [63:0] output_differences_4_q6;
output  [2:0] output_differences_4_address7;
output   output_differences_4_ce7;
input  [63:0] output_differences_4_q7;
output  [2:0] output_differences_5_address0;
output   output_differences_5_ce0;
input  [63:0] output_differences_5_q0;
output  [2:0] output_differences_5_address1;
output   output_differences_5_ce1;
input  [63:0] output_differences_5_q1;
output  [2:0] output_differences_5_address2;
output   output_differences_5_ce2;
input  [63:0] output_differences_5_q2;
output  [2:0] output_differences_5_address3;
output   output_differences_5_ce3;
input  [63:0] output_differences_5_q3;
output  [2:0] output_differences_5_address4;
output   output_differences_5_ce4;
input  [63:0] output_differences_5_q4;
output  [2:0] output_differences_5_address5;
output   output_differences_5_ce5;
input  [63:0] output_differences_5_q5;
output  [2:0] output_differences_5_address6;
output   output_differences_5_ce6;
input  [63:0] output_differences_5_q6;
output  [2:0] output_differences_5_address7;
output   output_differences_5_ce7;
input  [63:0] output_differences_5_q7;
output  [2:0] output_differences_6_address0;
output   output_differences_6_ce0;
input  [63:0] output_differences_6_q0;
output  [2:0] output_differences_6_address1;
output   output_differences_6_ce1;
input  [63:0] output_differences_6_q1;
output  [2:0] output_differences_6_address2;
output   output_differences_6_ce2;
input  [63:0] output_differences_6_q2;
output  [2:0] output_differences_6_address3;
output   output_differences_6_ce3;
input  [63:0] output_differences_6_q3;
output  [2:0] output_differences_6_address4;
output   output_differences_6_ce4;
input  [63:0] output_differences_6_q4;
output  [2:0] output_differences_6_address5;
output   output_differences_6_ce5;
input  [63:0] output_differences_6_q5;
output  [2:0] output_differences_6_address6;
output   output_differences_6_ce6;
input  [63:0] output_differences_6_q6;
output  [2:0] output_differences_6_address7;
output   output_differences_6_ce7;
input  [63:0] output_differences_6_q7;
output  [2:0] output_differences_7_address0;
output   output_differences_7_ce0;
input  [63:0] output_differences_7_q0;
output  [2:0] output_differences_7_address1;
output   output_differences_7_ce1;
input  [63:0] output_differences_7_q1;
output  [2:0] output_differences_7_address2;
output   output_differences_7_ce2;
input  [63:0] output_differences_7_q2;
output  [2:0] output_differences_7_address3;
output   output_differences_7_ce3;
input  [63:0] output_differences_7_q3;
output  [2:0] output_differences_7_address4;
output   output_differences_7_ce4;
input  [63:0] output_differences_7_q4;
output  [2:0] output_differences_7_address5;
output   output_differences_7_ce5;
input  [63:0] output_differences_7_q5;
output  [2:0] output_differences_7_address6;
output   output_differences_7_ce6;
input  [63:0] output_differences_7_q6;
output  [2:0] output_differences_7_address7;
output   output_differences_7_ce7;
input  [63:0] output_differences_7_q7;
output  [2:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [2:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [2:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [2:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [2:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [2:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [2:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [2:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [2:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [2:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [2:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [2:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [2:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [2:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [2:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [2:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [63:0] grp_fu_3556_p_din0;
output  [63:0] grp_fu_3556_p_din1;
output  [0:0] grp_fu_3556_p_opcode;
input  [63:0] grp_fu_3556_p_dout0;
output   grp_fu_3556_p_ce;
output  [63:0] grp_fu_3560_p_din0;
output  [63:0] grp_fu_3560_p_din1;
output  [0:0] grp_fu_3560_p_opcode;
input  [63:0] grp_fu_3560_p_dout0;
output   grp_fu_3560_p_ce;
output  [63:0] grp_fu_3564_p_din0;
output  [63:0] grp_fu_3564_p_din1;
output  [0:0] grp_fu_3564_p_opcode;
input  [63:0] grp_fu_3564_p_dout0;
output   grp_fu_3564_p_ce;
output  [63:0] grp_fu_3568_p_din0;
output  [63:0] grp_fu_3568_p_din1;
output  [0:0] grp_fu_3568_p_opcode;
input  [63:0] grp_fu_3568_p_dout0;
output   grp_fu_3568_p_ce;
output  [63:0] grp_fu_3572_p_din0;
output  [63:0] grp_fu_3572_p_din1;
output  [0:0] grp_fu_3572_p_opcode;
input  [63:0] grp_fu_3572_p_dout0;
output   grp_fu_3572_p_ce;
output  [63:0] grp_fu_3576_p_din0;
output  [63:0] grp_fu_3576_p_din1;
output  [0:0] grp_fu_3576_p_opcode;
input  [63:0] grp_fu_3576_p_dout0;
output   grp_fu_3576_p_ce;
output  [63:0] grp_fu_3580_p_din0;
output  [63:0] grp_fu_3580_p_din1;
output  [0:0] grp_fu_3580_p_opcode;
input  [63:0] grp_fu_3580_p_dout0;
output   grp_fu_3580_p_ce;
output  [63:0] grp_fu_3584_p_din0;
output  [63:0] grp_fu_3584_p_din1;
output  [0:0] grp_fu_3584_p_opcode;
input  [63:0] grp_fu_3584_p_dout0;
output   grp_fu_3584_p_ce;
output  [63:0] grp_fu_3588_p_din0;
output  [63:0] grp_fu_3588_p_din1;
output  [0:0] grp_fu_3588_p_opcode;
input  [63:0] grp_fu_3588_p_dout0;
output   grp_fu_3588_p_ce;
output  [63:0] grp_fu_3592_p_din0;
output  [63:0] grp_fu_3592_p_din1;
output  [0:0] grp_fu_3592_p_opcode;
input  [63:0] grp_fu_3592_p_dout0;
output   grp_fu_3592_p_ce;
output  [63:0] grp_fu_3596_p_din0;
output  [63:0] grp_fu_3596_p_din1;
output  [0:0] grp_fu_3596_p_opcode;
input  [63:0] grp_fu_3596_p_dout0;
output   grp_fu_3596_p_ce;
output  [63:0] grp_fu_3600_p_din0;
output  [63:0] grp_fu_3600_p_din1;
output  [0:0] grp_fu_3600_p_opcode;
input  [63:0] grp_fu_3600_p_dout0;
output   grp_fu_3600_p_ce;
output  [63:0] grp_fu_3604_p_din0;
output  [63:0] grp_fu_3604_p_din1;
output  [0:0] grp_fu_3604_p_opcode;
input  [63:0] grp_fu_3604_p_dout0;
output   grp_fu_3604_p_ce;
output  [63:0] grp_fu_3608_p_din0;
output  [63:0] grp_fu_3608_p_din1;
output  [0:0] grp_fu_3608_p_opcode;
input  [63:0] grp_fu_3608_p_dout0;
output   grp_fu_3608_p_ce;
output  [63:0] grp_fu_3612_p_din0;
output  [63:0] grp_fu_3612_p_din1;
output  [0:0] grp_fu_3612_p_opcode;
input  [63:0] grp_fu_3612_p_dout0;
output   grp_fu_3612_p_ce;
output  [63:0] grp_fu_3616_p_din0;
output  [63:0] grp_fu_3616_p_din1;
output  [0:0] grp_fu_3616_p_opcode;
input  [63:0] grp_fu_3616_p_dout0;
output   grp_fu_3616_p_ce;
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
reg   [63:0] output_differences_0_load_reg_1432;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_1437;
reg   [63:0] output_differences_2_load_reg_1442;
reg   [63:0] output_differences_3_load_reg_1447;
reg   [63:0] output_differences_4_load_reg_1452;
reg   [63:0] output_differences_5_load_reg_1457;
reg   [63:0] output_differences_6_load_reg_1462;
reg   [63:0] output_differences_7_load_reg_1467;
reg   [63:0] output_differences_0_load_1_reg_1472;
reg   [63:0] output_differences_1_load_1_reg_1477;
reg   [63:0] output_differences_2_load_1_reg_1482;
reg   [63:0] output_differences_3_load_1_reg_1487;
reg   [63:0] output_differences_4_load_1_reg_1492;
reg   [63:0] output_differences_5_load_1_reg_1497;
reg   [63:0] output_differences_6_load_1_reg_1502;
reg   [63:0] output_differences_7_load_1_reg_1507;
reg   [63:0] output_differences_0_load_2_reg_1512;
reg   [63:0] output_differences_1_load_2_reg_1517;
reg   [63:0] output_differences_2_load_2_reg_1522;
reg   [63:0] output_differences_3_load_2_reg_1527;
reg   [63:0] output_differences_4_load_2_reg_1532;
reg   [63:0] output_differences_5_load_2_reg_1537;
reg   [63:0] output_differences_6_load_2_reg_1542;
reg   [63:0] output_differences_7_load_2_reg_1547;
reg   [63:0] output_differences_0_load_3_reg_1552;
reg   [63:0] output_differences_1_load_3_reg_1557;
reg   [63:0] output_differences_2_load_3_reg_1562;
reg   [63:0] output_differences_3_load_3_reg_1567;
reg   [63:0] output_differences_4_load_3_reg_1572;
reg   [63:0] output_differences_5_load_3_reg_1577;
reg   [63:0] output_differences_6_load_3_reg_1582;
reg   [63:0] output_differences_7_load_3_reg_1587;
reg   [63:0] output_differences_0_load_4_reg_1592;
reg   [63:0] output_differences_1_load_4_reg_1597;
reg   [63:0] output_differences_2_load_4_reg_1602;
reg   [63:0] output_differences_3_load_4_reg_1607;
reg   [63:0] output_differences_4_load_4_reg_1612;
reg   [63:0] output_differences_5_load_4_reg_1617;
reg   [63:0] output_differences_6_load_4_reg_1622;
reg   [63:0] output_differences_7_load_4_reg_1627;
reg   [63:0] output_differences_0_load_5_reg_1632;
reg   [63:0] output_differences_1_load_5_reg_1637;
reg   [63:0] output_differences_2_load_5_reg_1642;
reg   [63:0] output_differences_3_load_5_reg_1647;
reg   [63:0] output_differences_4_load_5_reg_1652;
reg   [63:0] output_differences_5_load_5_reg_1657;
reg   [63:0] output_differences_6_load_5_reg_1662;
reg   [63:0] output_differences_7_load_5_reg_1667;
reg   [63:0] output_differences_0_load_6_reg_1672;
reg   [63:0] output_differences_1_load_6_reg_1677;
reg   [63:0] output_differences_2_load_6_reg_1682;
reg   [63:0] output_differences_3_load_6_reg_1687;
reg   [63:0] output_differences_4_load_6_reg_1692;
reg   [63:0] output_differences_5_load_6_reg_1697;
reg   [63:0] output_differences_6_load_6_reg_1702;
reg   [63:0] output_differences_7_load_6_reg_1707;
reg   [63:0] output_differences_0_load_7_reg_1712;
reg   [63:0] output_differences_1_load_7_reg_1717;
reg   [63:0] output_differences_2_load_7_reg_1722;
reg   [63:0] output_differences_3_load_7_reg_1727;
reg   [63:0] output_differences_4_load_7_reg_1732;
reg   [63:0] output_differences_5_load_7_reg_1737;
reg   [63:0] output_differences_6_load_7_reg_1742;
reg   [63:0] output_differences_7_load_7_reg_1747;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_ready;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_d0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    output_differences_0_ce7_local;
reg    output_differences_0_ce6_local;
reg    output_differences_0_ce5_local;
reg    output_differences_0_ce4_local;
reg    output_differences_0_ce3_local;
reg    output_differences_0_ce2_local;
reg    output_differences_0_ce1_local;
reg    output_differences_0_ce0_local;
reg    output_differences_1_ce7_local;
reg    output_differences_1_ce6_local;
reg    output_differences_1_ce5_local;
reg    output_differences_1_ce4_local;
reg    output_differences_1_ce3_local;
reg    output_differences_1_ce2_local;
reg    output_differences_1_ce1_local;
reg    output_differences_1_ce0_local;
reg    output_differences_2_ce7_local;
reg    output_differences_2_ce6_local;
reg    output_differences_2_ce5_local;
reg    output_differences_2_ce4_local;
reg    output_differences_2_ce3_local;
reg    output_differences_2_ce2_local;
reg    output_differences_2_ce1_local;
reg    output_differences_2_ce0_local;
reg    output_differences_3_ce7_local;
reg    output_differences_3_ce6_local;
reg    output_differences_3_ce5_local;
reg    output_differences_3_ce4_local;
reg    output_differences_3_ce3_local;
reg    output_differences_3_ce2_local;
reg    output_differences_3_ce1_local;
reg    output_differences_3_ce0_local;
reg    output_differences_4_ce7_local;
reg    output_differences_4_ce6_local;
reg    output_differences_4_ce5_local;
reg    output_differences_4_ce4_local;
reg    output_differences_4_ce3_local;
reg    output_differences_4_ce2_local;
reg    output_differences_4_ce1_local;
reg    output_differences_4_ce0_local;
reg    output_differences_5_ce7_local;
reg    output_differences_5_ce6_local;
reg    output_differences_5_ce5_local;
reg    output_differences_5_ce4_local;
reg    output_differences_5_ce3_local;
reg    output_differences_5_ce2_local;
reg    output_differences_5_ce1_local;
reg    output_differences_5_ce0_local;
reg    output_differences_6_ce7_local;
reg    output_differences_6_ce6_local;
reg    output_differences_6_ce5_local;
reg    output_differences_6_ce4_local;
reg    output_differences_6_ce3_local;
reg    output_differences_6_ce2_local;
reg    output_differences_6_ce1_local;
reg    output_differences_6_ce0_local;
reg    output_differences_7_ce7_local;
reg    output_differences_7_ce6_local;
reg    output_differences_7_ce5_local;
reg    output_differences_7_ce4_local;
reg    output_differences_7_ce3_local;
reg    output_differences_7_ce2_local;
reg    output_differences_7_ce1_local;
reg    output_differences_7_ce0_local;
reg    grp_fu_1752_ce;
reg    grp_fu_1756_ce;
reg    grp_fu_1760_ce;
reg    grp_fu_1764_ce;
reg    grp_fu_1768_ce;
reg    grp_fu_1772_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1780_ce;
reg    grp_fu_1784_ce;
reg    grp_fu_1788_ce;
reg    grp_fu_1792_ce;
reg    grp_fu_1796_ce;
reg    grp_fu_1800_ce;
reg    grp_fu_1804_ce;
reg    grp_fu_1808_ce;
reg    grp_fu_1812_ce;
reg    grp_fu_1816_ce;
reg    grp_fu_1820_ce;
reg    grp_fu_1824_ce;
reg    grp_fu_1828_ce;
reg    grp_fu_1832_ce;
reg    grp_fu_1836_ce;
reg    grp_fu_1840_ce;
reg    grp_fu_1844_ce;
reg    grp_fu_1848_ce;
reg    grp_fu_1852_ce;
reg    grp_fu_1856_ce;
reg    grp_fu_1860_ce;
reg    grp_fu_1864_ce;
reg    grp_fu_1868_ce;
reg    grp_fu_1872_ce;
reg    grp_fu_1876_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_ready),.oracle_activations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_address0),.oracle_activations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_ce0),.oracle_activations_7_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_we0),.oracle_activations_7_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_d0),.oracle_activations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_address0),.oracle_activations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_ce0),.oracle_activations_6_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_we0),.oracle_activations_6_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_d0),.oracle_activations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_address0),.oracle_activations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_ce0),.oracle_activations_5_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_we0),.oracle_activations_5_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_d0),.oracle_activations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_address0),.oracle_activations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_ce0),.oracle_activations_4_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_we0),.oracle_activations_4_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_d0),.oracle_activations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_address0),.oracle_activations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_ce0),.oracle_activations_3_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_we0),.oracle_activations_3_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_d0),.oracle_activations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_address0),.oracle_activations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_ce0),.oracle_activations_2_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_we0),.oracle_activations_2_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_d0),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_1432),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_1437),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_2_load(output_differences_2_load_reg_1442),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_3_load(output_differences_3_load_reg_1447),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address1),.weights2_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.output_differences_4_load(output_differences_4_load_reg_1452),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address1),.weights2_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.output_differences_5_load(output_differences_5_load_reg_1457),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address1),.weights2_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.output_differences_6_load(output_differences_6_load_reg_1462),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address1),.weights2_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.output_differences_7_load(output_differences_7_load_reg_1467),.output_differences_0_load_1(output_differences_0_load_1_reg_1472),.output_differences_1_load_1(output_differences_1_load_1_reg_1477),.output_differences_2_load_1(output_differences_2_load_1_reg_1482),.output_differences_3_load_1(output_differences_3_load_1_reg_1487),.output_differences_4_load_1(output_differences_4_load_1_reg_1492),.output_differences_5_load_1(output_differences_5_load_1_reg_1497),.output_differences_6_load_1(output_differences_6_load_1_reg_1502),.output_differences_7_load_1(output_differences_7_load_1_reg_1507),.output_differences_0_load_2(output_differences_0_load_2_reg_1512),.output_differences_1_load_2(output_differences_1_load_2_reg_1517),.output_differences_2_load_2(output_differences_2_load_2_reg_1522),.output_differences_3_load_2(output_differences_3_load_2_reg_1527),.output_differences_4_load_2(output_differences_4_load_2_reg_1532),.output_differences_5_load_2(output_differences_5_load_2_reg_1537),.output_differences_6_load_2(output_differences_6_load_2_reg_1542),.output_differences_7_load_2(output_differences_7_load_2_reg_1547),.output_differences_0_load_3(output_differences_0_load_3_reg_1552),.output_differences_1_load_3(output_differences_1_load_3_reg_1557),.output_differences_2_load_3(output_differences_2_load_3_reg_1562),.output_differences_3_load_3(output_differences_3_load_3_reg_1567),.output_differences_4_load_3(output_differences_4_load_3_reg_1572),.output_differences_5_load_3(output_differences_5_load_3_reg_1577),.output_differences_6_load_3(output_differences_6_load_3_reg_1582),.output_differences_7_load_3(output_differences_7_load_3_reg_1587),.output_differences_0_load_4(output_differences_0_load_4_reg_1592),.output_differences_1_load_4(output_differences_1_load_4_reg_1597),.output_differences_2_load_4(output_differences_2_load_4_reg_1602),.output_differences_3_load_4(output_differences_3_load_4_reg_1607),.output_differences_4_load_4(output_differences_4_load_4_reg_1612),.output_differences_5_load_4(output_differences_5_load_4_reg_1617),.output_differences_6_load_4(output_differences_6_load_4_reg_1622),.output_differences_7_load_4(output_differences_7_load_4_reg_1627),.output_differences_0_load_5(output_differences_0_load_5_reg_1632),.output_differences_1_load_5(output_differences_1_load_5_reg_1637),.output_differences_2_load_5(output_differences_2_load_5_reg_1642),.output_differences_3_load_5(output_differences_3_load_5_reg_1647),.output_differences_4_load_5(output_differences_4_load_5_reg_1652),.output_differences_5_load_5(output_differences_5_load_5_reg_1657),.output_differences_6_load_5(output_differences_6_load_5_reg_1662),.output_differences_7_load_5(output_differences_7_load_5_reg_1667),.output_differences_0_load_6(output_differences_0_load_6_reg_1672),.output_differences_1_load_6(output_differences_1_load_6_reg_1677),.output_differences_2_load_6(output_differences_2_load_6_reg_1682),.output_differences_3_load_6(output_differences_3_load_6_reg_1687),.output_differences_4_load_6(output_differences_4_load_6_reg_1692),.output_differences_5_load_6(output_differences_5_load_6_reg_1697),.output_differences_6_load_6(output_differences_6_load_6_reg_1702),.output_differences_7_load_6(output_differences_7_load_6_reg_1707),.output_differences_0_load_7(output_differences_0_load_7_reg_1712),.output_differences_1_load_7(output_differences_1_load_7_reg_1717),.output_differences_2_load_7(output_differences_2_load_7_reg_1722),.output_differences_3_load_7(output_differences_3_load_7_reg_1727),.output_differences_4_load_7(output_differences_4_load_7_reg_1732),.output_differences_5_load_7(output_differences_5_load_7_reg_1737),.output_differences_6_load_7(output_differences_6_load_7_reg_1742),.output_differences_7_load_7(output_differences_7_load_7_reg_1747),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.dactivations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_address0),.dactivations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_ce0),.dactivations_2_q0(dactivations_2_q0),.dactivations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_address0),.dactivations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_ce0),.dactivations_3_q0(dactivations_3_q0),.dactivations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_address0),.dactivations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_ce0),.dactivations_4_q0(dactivations_4_q0),.dactivations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_address0),.dactivations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_ce0),.dactivations_5_q0(dactivations_5_q0),.dactivations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_address0),.dactivations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_ce0),.dactivations_6_q0(dactivations_6_q0),.dactivations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_address0),.dactivations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_ce0),.dactivations_7_q0(dactivations_7_q0),.grp_fu_1752_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din0),.grp_fu_1752_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din1),.grp_fu_1752_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_opcode),.grp_fu_1752_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1752_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_ce),.grp_fu_1756_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din0),.grp_fu_1756_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din1),.grp_fu_1756_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_opcode),.grp_fu_1756_p_dout0(grp_fu_3560_p_dout0),.grp_fu_1756_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_ce),.grp_fu_1760_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din0),.grp_fu_1760_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din1),.grp_fu_1760_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_opcode),.grp_fu_1760_p_dout0(grp_fu_3564_p_dout0),.grp_fu_1760_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_ce),.grp_fu_1764_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din0),.grp_fu_1764_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din1),.grp_fu_1764_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_opcode),.grp_fu_1764_p_dout0(grp_fu_3568_p_dout0),.grp_fu_1764_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_ce),.grp_fu_1768_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din1),.grp_fu_1768_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_opcode),.grp_fu_1768_p_dout0(grp_fu_3572_p_dout0),.grp_fu_1768_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din1),.grp_fu_1772_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_opcode),.grp_fu_1772_p_dout0(grp_fu_3576_p_dout0),.grp_fu_1772_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_ce),.grp_fu_1776_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din0),.grp_fu_1776_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din1),.grp_fu_1776_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_opcode),.grp_fu_1776_p_dout0(grp_fu_3580_p_dout0),.grp_fu_1776_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_ce),.grp_fu_1780_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din1),.grp_fu_1780_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_opcode),.grp_fu_1780_p_dout0(grp_fu_3584_p_dout0),.grp_fu_1780_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_ce),.grp_fu_1784_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din0),.grp_fu_1784_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din1),.grp_fu_1784_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_opcode),.grp_fu_1784_p_dout0(grp_fu_3588_p_dout0),.grp_fu_1784_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_ce),.grp_fu_1788_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din0),.grp_fu_1788_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din1),.grp_fu_1788_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_opcode),.grp_fu_1788_p_dout0(grp_fu_3592_p_dout0),.grp_fu_1788_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_ce),.grp_fu_1792_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din0),.grp_fu_1792_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din1),.grp_fu_1792_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_opcode),.grp_fu_1792_p_dout0(grp_fu_3596_p_dout0),.grp_fu_1792_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_ce),.grp_fu_1796_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din0),.grp_fu_1796_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din1),.grp_fu_1796_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_opcode),.grp_fu_1796_p_dout0(grp_fu_3600_p_dout0),.grp_fu_1796_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_ce),.grp_fu_1800_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din0),.grp_fu_1800_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din1),.grp_fu_1800_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_opcode),.grp_fu_1800_p_dout0(grp_fu_3604_p_dout0),.grp_fu_1800_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_ce),.grp_fu_1804_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din0),.grp_fu_1804_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din1),.grp_fu_1804_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_opcode),.grp_fu_1804_p_dout0(grp_fu_3608_p_dout0),.grp_fu_1804_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_ce),.grp_fu_1808_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din0),.grp_fu_1808_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din1),.grp_fu_1808_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_opcode),.grp_fu_1808_p_dout0(grp_fu_3612_p_dout0),.grp_fu_1808_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_ce),.grp_fu_1812_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din0),.grp_fu_1812_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din1),.grp_fu_1812_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_opcode),.grp_fu_1812_p_dout0(grp_fu_3616_p_dout0),.grp_fu_1812_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_ce),.grp_fu_1816_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din0),.grp_fu_1816_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din1),.grp_fu_1816_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1816_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_ce),.grp_fu_1820_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din0),.grp_fu_1820_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din1),.grp_fu_1820_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1820_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_ce),.grp_fu_1824_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din0),.grp_fu_1824_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din1),.grp_fu_1824_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1824_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_ce),.grp_fu_1828_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din0),.grp_fu_1828_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din1),.grp_fu_1828_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1828_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_ce),.grp_fu_1832_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din0),.grp_fu_1832_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din1),.grp_fu_1832_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1832_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_ce),.grp_fu_1836_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din0),.grp_fu_1836_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din1),.grp_fu_1836_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1836_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_ce),.grp_fu_1840_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din0),.grp_fu_1840_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din1),.grp_fu_1840_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1840_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_ce),.grp_fu_1844_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din0),.grp_fu_1844_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din1),.grp_fu_1844_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1844_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_ce),.grp_fu_1848_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din0),.grp_fu_1848_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din1),.grp_fu_1848_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1848_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_ce),.grp_fu_1852_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din1),.grp_fu_1852_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1852_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din1),.grp_fu_1856_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1856_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_ce),.grp_fu_1860_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din0),.grp_fu_1860_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din1),.grp_fu_1860_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1860_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_ce),.grp_fu_1864_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din0),.grp_fu_1864_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din1),.grp_fu_1864_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1864_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_ce),.grp_fu_1868_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din0),.grp_fu_1868_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din1),.grp_fu_1868_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1868_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_ce),.grp_fu_1872_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din1),.grp_fu_1872_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1872_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1876_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_1_reg_1472 <= output_differences_0_q6;
        output_differences_0_load_2_reg_1512 <= output_differences_0_q5;
        output_differences_0_load_3_reg_1552 <= output_differences_0_q4;
        output_differences_0_load_4_reg_1592 <= output_differences_0_q3;
        output_differences_0_load_5_reg_1632 <= output_differences_0_q2;
        output_differences_0_load_6_reg_1672 <= output_differences_0_q1;
        output_differences_0_load_7_reg_1712 <= output_differences_0_q0;
        output_differences_0_load_reg_1432 <= output_differences_0_q7;
        output_differences_1_load_1_reg_1477 <= output_differences_1_q6;
        output_differences_1_load_2_reg_1517 <= output_differences_1_q5;
        output_differences_1_load_3_reg_1557 <= output_differences_1_q4;
        output_differences_1_load_4_reg_1597 <= output_differences_1_q3;
        output_differences_1_load_5_reg_1637 <= output_differences_1_q2;
        output_differences_1_load_6_reg_1677 <= output_differences_1_q1;
        output_differences_1_load_7_reg_1717 <= output_differences_1_q0;
        output_differences_1_load_reg_1437 <= output_differences_1_q7;
        output_differences_2_load_1_reg_1482 <= output_differences_2_q6;
        output_differences_2_load_2_reg_1522 <= output_differences_2_q5;
        output_differences_2_load_3_reg_1562 <= output_differences_2_q4;
        output_differences_2_load_4_reg_1602 <= output_differences_2_q3;
        output_differences_2_load_5_reg_1642 <= output_differences_2_q2;
        output_differences_2_load_6_reg_1682 <= output_differences_2_q1;
        output_differences_2_load_7_reg_1722 <= output_differences_2_q0;
        output_differences_2_load_reg_1442 <= output_differences_2_q7;
        output_differences_3_load_1_reg_1487 <= output_differences_3_q6;
        output_differences_3_load_2_reg_1527 <= output_differences_3_q5;
        output_differences_3_load_3_reg_1567 <= output_differences_3_q4;
        output_differences_3_load_4_reg_1607 <= output_differences_3_q3;
        output_differences_3_load_5_reg_1647 <= output_differences_3_q2;
        output_differences_3_load_6_reg_1687 <= output_differences_3_q1;
        output_differences_3_load_7_reg_1727 <= output_differences_3_q0;
        output_differences_3_load_reg_1447 <= output_differences_3_q7;
        output_differences_4_load_1_reg_1492 <= output_differences_4_q6;
        output_differences_4_load_2_reg_1532 <= output_differences_4_q5;
        output_differences_4_load_3_reg_1572 <= output_differences_4_q4;
        output_differences_4_load_4_reg_1612 <= output_differences_4_q3;
        output_differences_4_load_5_reg_1652 <= output_differences_4_q2;
        output_differences_4_load_6_reg_1692 <= output_differences_4_q1;
        output_differences_4_load_7_reg_1732 <= output_differences_4_q0;
        output_differences_4_load_reg_1452 <= output_differences_4_q7;
        output_differences_5_load_1_reg_1497 <= output_differences_5_q6;
        output_differences_5_load_2_reg_1537 <= output_differences_5_q5;
        output_differences_5_load_3_reg_1577 <= output_differences_5_q4;
        output_differences_5_load_4_reg_1617 <= output_differences_5_q3;
        output_differences_5_load_5_reg_1657 <= output_differences_5_q2;
        output_differences_5_load_6_reg_1697 <= output_differences_5_q1;
        output_differences_5_load_7_reg_1737 <= output_differences_5_q0;
        output_differences_5_load_reg_1457 <= output_differences_5_q7;
        output_differences_6_load_1_reg_1502 <= output_differences_6_q6;
        output_differences_6_load_2_reg_1542 <= output_differences_6_q5;
        output_differences_6_load_3_reg_1582 <= output_differences_6_q4;
        output_differences_6_load_4_reg_1622 <= output_differences_6_q3;
        output_differences_6_load_5_reg_1662 <= output_differences_6_q2;
        output_differences_6_load_6_reg_1702 <= output_differences_6_q1;
        output_differences_6_load_7_reg_1742 <= output_differences_6_q0;
        output_differences_6_load_reg_1462 <= output_differences_6_q7;
        output_differences_7_load_1_reg_1507 <= output_differences_7_q6;
        output_differences_7_load_2_reg_1547 <= output_differences_7_q5;
        output_differences_7_load_3_reg_1587 <= output_differences_7_q4;
        output_differences_7_load_4_reg_1627 <= output_differences_7_q3;
        output_differences_7_load_5_reg_1667 <= output_differences_7_q2;
        output_differences_7_load_6_reg_1707 <= output_differences_7_q1;
        output_differences_7_load_7_reg_1747 <= output_differences_7_q0;
        output_differences_7_load_reg_1467 <= output_differences_7_q7;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1752_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_ce;
    end else begin
        grp_fu_1752_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1756_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_ce;
    end else begin
        grp_fu_1756_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1760_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_ce;
    end else begin
        grp_fu_1760_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1764_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_ce;
    end else begin
        grp_fu_1764_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1768_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1772_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1776_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_ce;
    end else begin
        grp_fu_1776_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1780_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1784_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_ce;
    end else begin
        grp_fu_1784_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1788_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_ce;
    end else begin
        grp_fu_1788_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1792_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_ce;
    end else begin
        grp_fu_1792_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1796_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_ce;
    end else begin
        grp_fu_1796_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1800_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_ce;
    end else begin
        grp_fu_1800_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1804_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_ce;
    end else begin
        grp_fu_1804_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1808_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_ce;
    end else begin
        grp_fu_1808_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1812_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_ce;
    end else begin
        grp_fu_1812_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1816_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_ce;
    end else begin
        grp_fu_1816_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1820_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_ce;
    end else begin
        grp_fu_1820_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1824_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_ce;
    end else begin
        grp_fu_1824_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1828_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_ce;
    end else begin
        grp_fu_1828_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1832_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_ce;
    end else begin
        grp_fu_1832_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1836_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_ce;
    end else begin
        grp_fu_1836_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1840_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_ce;
    end else begin
        grp_fu_1840_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1844_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_ce;
    end else begin
        grp_fu_1844_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1848_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_ce;
    end else begin
        grp_fu_1848_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1852_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_ce;
    end else begin
        grp_fu_1852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1856_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_ce;
    end else begin
        grp_fu_1856_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1860_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_ce;
    end else begin
        grp_fu_1860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1864_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_ce;
    end else begin
        grp_fu_1864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1868_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_ce;
    end else begin
        grp_fu_1868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1872_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_ce;
    end else begin
        grp_fu_1872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1876_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_ce;
    end else begin
        grp_fu_1876_ce = 1'b1;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce0_local = 1'b1;
    end else begin
        output_differences_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce1_local = 1'b1;
    end else begin
        output_differences_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce2_local = 1'b1;
    end else begin
        output_differences_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce3_local = 1'b1;
    end else begin
        output_differences_0_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce4_local = 1'b1;
    end else begin
        output_differences_0_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce5_local = 1'b1;
    end else begin
        output_differences_0_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce6_local = 1'b1;
    end else begin
        output_differences_0_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce7_local = 1'b1;
    end else begin
        output_differences_0_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce0_local = 1'b1;
    end else begin
        output_differences_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce1_local = 1'b1;
    end else begin
        output_differences_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce2_local = 1'b1;
    end else begin
        output_differences_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce3_local = 1'b1;
    end else begin
        output_differences_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce4_local = 1'b1;
    end else begin
        output_differences_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce5_local = 1'b1;
    end else begin
        output_differences_1_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce6_local = 1'b1;
    end else begin
        output_differences_1_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce7_local = 1'b1;
    end else begin
        output_differences_1_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce0_local = 1'b1;
    end else begin
        output_differences_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce1_local = 1'b1;
    end else begin
        output_differences_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce2_local = 1'b1;
    end else begin
        output_differences_2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce3_local = 1'b1;
    end else begin
        output_differences_2_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce4_local = 1'b1;
    end else begin
        output_differences_2_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce5_local = 1'b1;
    end else begin
        output_differences_2_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce6_local = 1'b1;
    end else begin
        output_differences_2_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce7_local = 1'b1;
    end else begin
        output_differences_2_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce0_local = 1'b1;
    end else begin
        output_differences_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce1_local = 1'b1;
    end else begin
        output_differences_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce2_local = 1'b1;
    end else begin
        output_differences_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce3_local = 1'b1;
    end else begin
        output_differences_3_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce4_local = 1'b1;
    end else begin
        output_differences_3_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce5_local = 1'b1;
    end else begin
        output_differences_3_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce6_local = 1'b1;
    end else begin
        output_differences_3_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce7_local = 1'b1;
    end else begin
        output_differences_3_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce0_local = 1'b1;
    end else begin
        output_differences_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce1_local = 1'b1;
    end else begin
        output_differences_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce2_local = 1'b1;
    end else begin
        output_differences_4_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce3_local = 1'b1;
    end else begin
        output_differences_4_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce4_local = 1'b1;
    end else begin
        output_differences_4_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce5_local = 1'b1;
    end else begin
        output_differences_4_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce6_local = 1'b1;
    end else begin
        output_differences_4_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_4_ce7_local = 1'b1;
    end else begin
        output_differences_4_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce0_local = 1'b1;
    end else begin
        output_differences_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce1_local = 1'b1;
    end else begin
        output_differences_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce2_local = 1'b1;
    end else begin
        output_differences_5_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce3_local = 1'b1;
    end else begin
        output_differences_5_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce4_local = 1'b1;
    end else begin
        output_differences_5_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce5_local = 1'b1;
    end else begin
        output_differences_5_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce6_local = 1'b1;
    end else begin
        output_differences_5_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_5_ce7_local = 1'b1;
    end else begin
        output_differences_5_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce0_local = 1'b1;
    end else begin
        output_differences_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce1_local = 1'b1;
    end else begin
        output_differences_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce2_local = 1'b1;
    end else begin
        output_differences_6_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce3_local = 1'b1;
    end else begin
        output_differences_6_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce4_local = 1'b1;
    end else begin
        output_differences_6_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce5_local = 1'b1;
    end else begin
        output_differences_6_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce6_local = 1'b1;
    end else begin
        output_differences_6_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_6_ce7_local = 1'b1;
    end else begin
        output_differences_6_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce0_local = 1'b1;
    end else begin
        output_differences_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce1_local = 1'b1;
    end else begin
        output_differences_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce2_local = 1'b1;
    end else begin
        output_differences_7_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce3_local = 1'b1;
    end else begin
        output_differences_7_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce4_local = 1'b1;
    end else begin
        output_differences_7_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce5_local = 1'b1;
    end else begin
        output_differences_7_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce6_local = 1'b1;
    end else begin
        output_differences_7_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_7_ce7_local = 1'b1;
    end else begin
        output_differences_7_ce7_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_0_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_1_ce0;
assign dactivations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_address0;
assign dactivations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_2_ce0;
assign dactivations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_address0;
assign dactivations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_3_ce0;
assign dactivations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_address0;
assign dactivations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_4_ce0;
assign dactivations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_address0;
assign dactivations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_5_ce0;
assign dactivations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_address0;
assign dactivations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_6_ce0;
assign dactivations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_address0;
assign dactivations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_dactivations_7_ce0;
assign grp_fu_3556_p_ce = grp_fu_1752_ce;
assign grp_fu_3556_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din0;
assign grp_fu_3556_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_din1;
assign grp_fu_3556_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1752_p_opcode;
assign grp_fu_3560_p_ce = grp_fu_1756_ce;
assign grp_fu_3560_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din0;
assign grp_fu_3560_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_din1;
assign grp_fu_3560_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1756_p_opcode;
assign grp_fu_3564_p_ce = grp_fu_1760_ce;
assign grp_fu_3564_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din0;
assign grp_fu_3564_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_din1;
assign grp_fu_3564_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1760_p_opcode;
assign grp_fu_3568_p_ce = grp_fu_1764_ce;
assign grp_fu_3568_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din0;
assign grp_fu_3568_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_din1;
assign grp_fu_3568_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1764_p_opcode;
assign grp_fu_3572_p_ce = grp_fu_1768_ce;
assign grp_fu_3572_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din0;
assign grp_fu_3572_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_din1;
assign grp_fu_3572_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1768_p_opcode;
assign grp_fu_3576_p_ce = grp_fu_1772_ce;
assign grp_fu_3576_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din0;
assign grp_fu_3576_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_din1;
assign grp_fu_3576_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1772_p_opcode;
assign grp_fu_3580_p_ce = grp_fu_1776_ce;
assign grp_fu_3580_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din0;
assign grp_fu_3580_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_din1;
assign grp_fu_3580_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1776_p_opcode;
assign grp_fu_3584_p_ce = grp_fu_1780_ce;
assign grp_fu_3584_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din0;
assign grp_fu_3584_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_din1;
assign grp_fu_3584_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1780_p_opcode;
assign grp_fu_3588_p_ce = grp_fu_1784_ce;
assign grp_fu_3588_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din0;
assign grp_fu_3588_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_din1;
assign grp_fu_3588_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1784_p_opcode;
assign grp_fu_3592_p_ce = grp_fu_1788_ce;
assign grp_fu_3592_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din0;
assign grp_fu_3592_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_din1;
assign grp_fu_3592_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1788_p_opcode;
assign grp_fu_3596_p_ce = grp_fu_1792_ce;
assign grp_fu_3596_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din0;
assign grp_fu_3596_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_din1;
assign grp_fu_3596_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1792_p_opcode;
assign grp_fu_3600_p_ce = grp_fu_1796_ce;
assign grp_fu_3600_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din0;
assign grp_fu_3600_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_din1;
assign grp_fu_3600_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1796_p_opcode;
assign grp_fu_3604_p_ce = grp_fu_1800_ce;
assign grp_fu_3604_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din0;
assign grp_fu_3604_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_din1;
assign grp_fu_3604_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1800_p_opcode;
assign grp_fu_3608_p_ce = grp_fu_1804_ce;
assign grp_fu_3608_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din0;
assign grp_fu_3608_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_din1;
assign grp_fu_3608_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1804_p_opcode;
assign grp_fu_3612_p_ce = grp_fu_1808_ce;
assign grp_fu_3612_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din0;
assign grp_fu_3612_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_din1;
assign grp_fu_3612_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1808_p_opcode;
assign grp_fu_3616_p_ce = grp_fu_1812_ce;
assign grp_fu_3616_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din0;
assign grp_fu_3616_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_din1;
assign grp_fu_3616_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1812_p_opcode;
assign grp_fu_3620_p_ce = grp_fu_1816_ce;
assign grp_fu_3620_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din0;
assign grp_fu_3620_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1816_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1820_ce;
assign grp_fu_3624_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din0;
assign grp_fu_3624_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1820_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1824_ce;
assign grp_fu_3628_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din0;
assign grp_fu_3628_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1824_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1828_ce;
assign grp_fu_3632_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din0;
assign grp_fu_3632_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1828_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1832_ce;
assign grp_fu_3636_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din0;
assign grp_fu_3636_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1832_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1836_ce;
assign grp_fu_3640_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din0;
assign grp_fu_3640_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1836_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1840_ce;
assign grp_fu_3644_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din0;
assign grp_fu_3644_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1840_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1844_ce;
assign grp_fu_3648_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din0;
assign grp_fu_3648_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1844_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1848_ce;
assign grp_fu_3652_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din0;
assign grp_fu_3652_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1848_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1852_ce;
assign grp_fu_3656_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din0;
assign grp_fu_3656_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1852_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1856_ce;
assign grp_fu_3660_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din0;
assign grp_fu_3660_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1856_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1860_ce;
assign grp_fu_3664_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din0;
assign grp_fu_3664_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1860_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1864_ce;
assign grp_fu_3668_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din0;
assign grp_fu_3668_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1864_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1868_ce;
assign grp_fu_3672_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din0;
assign grp_fu_3672_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1868_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1872_ce;
assign grp_fu_3676_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din0;
assign grp_fu_3676_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1872_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1876_ce;
assign grp_fu_3680_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din0;
assign grp_fu_3680_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_grp_fu_1876_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_0_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_1_we0;
assign oracle_activations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_address0;
assign oracle_activations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_ce0;
assign oracle_activations_2_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_d0;
assign oracle_activations_2_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_2_we0;
assign oracle_activations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_address0;
assign oracle_activations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_ce0;
assign oracle_activations_3_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_d0;
assign oracle_activations_3_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_3_we0;
assign oracle_activations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_address0;
assign oracle_activations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_ce0;
assign oracle_activations_4_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_d0;
assign oracle_activations_4_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_4_we0;
assign oracle_activations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_address0;
assign oracle_activations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_ce0;
assign oracle_activations_5_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_d0;
assign oracle_activations_5_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_5_we0;
assign oracle_activations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_address0;
assign oracle_activations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_ce0;
assign oracle_activations_6_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_d0;
assign oracle_activations_6_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_6_we0;
assign oracle_activations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_address0;
assign oracle_activations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_ce0;
assign oracle_activations_7_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_d0;
assign oracle_activations_7_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_oracle_activations_7_we0;
assign output_differences_0_address0 = 64'd7;
assign output_differences_0_address1 = 64'd6;
assign output_differences_0_address2 = 64'd5;
assign output_differences_0_address3 = 64'd4;
assign output_differences_0_address4 = 64'd3;
assign output_differences_0_address5 = 64'd2;
assign output_differences_0_address6 = 64'd1;
assign output_differences_0_address7 = 64'd0;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_0_ce2 = output_differences_0_ce2_local;
assign output_differences_0_ce3 = output_differences_0_ce3_local;
assign output_differences_0_ce4 = output_differences_0_ce4_local;
assign output_differences_0_ce5 = output_differences_0_ce5_local;
assign output_differences_0_ce6 = output_differences_0_ce6_local;
assign output_differences_0_ce7 = output_differences_0_ce7_local;
assign output_differences_1_address0 = 64'd7;
assign output_differences_1_address1 = 64'd6;
assign output_differences_1_address2 = 64'd5;
assign output_differences_1_address3 = 64'd4;
assign output_differences_1_address4 = 64'd3;
assign output_differences_1_address5 = 64'd2;
assign output_differences_1_address6 = 64'd1;
assign output_differences_1_address7 = 64'd0;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign output_differences_1_ce2 = output_differences_1_ce2_local;
assign output_differences_1_ce3 = output_differences_1_ce3_local;
assign output_differences_1_ce4 = output_differences_1_ce4_local;
assign output_differences_1_ce5 = output_differences_1_ce5_local;
assign output_differences_1_ce6 = output_differences_1_ce6_local;
assign output_differences_1_ce7 = output_differences_1_ce7_local;
assign output_differences_2_address0 = 64'd7;
assign output_differences_2_address1 = 64'd6;
assign output_differences_2_address2 = 64'd5;
assign output_differences_2_address3 = 64'd4;
assign output_differences_2_address4 = 64'd3;
assign output_differences_2_address5 = 64'd2;
assign output_differences_2_address6 = 64'd1;
assign output_differences_2_address7 = 64'd0;
assign output_differences_2_ce0 = output_differences_2_ce0_local;
assign output_differences_2_ce1 = output_differences_2_ce1_local;
assign output_differences_2_ce2 = output_differences_2_ce2_local;
assign output_differences_2_ce3 = output_differences_2_ce3_local;
assign output_differences_2_ce4 = output_differences_2_ce4_local;
assign output_differences_2_ce5 = output_differences_2_ce5_local;
assign output_differences_2_ce6 = output_differences_2_ce6_local;
assign output_differences_2_ce7 = output_differences_2_ce7_local;
assign output_differences_3_address0 = 64'd7;
assign output_differences_3_address1 = 64'd6;
assign output_differences_3_address2 = 64'd5;
assign output_differences_3_address3 = 64'd4;
assign output_differences_3_address4 = 64'd3;
assign output_differences_3_address5 = 64'd2;
assign output_differences_3_address6 = 64'd1;
assign output_differences_3_address7 = 64'd0;
assign output_differences_3_ce0 = output_differences_3_ce0_local;
assign output_differences_3_ce1 = output_differences_3_ce1_local;
assign output_differences_3_ce2 = output_differences_3_ce2_local;
assign output_differences_3_ce3 = output_differences_3_ce3_local;
assign output_differences_3_ce4 = output_differences_3_ce4_local;
assign output_differences_3_ce5 = output_differences_3_ce5_local;
assign output_differences_3_ce6 = output_differences_3_ce6_local;
assign output_differences_3_ce7 = output_differences_3_ce7_local;
assign output_differences_4_address0 = 64'd7;
assign output_differences_4_address1 = 64'd6;
assign output_differences_4_address2 = 64'd5;
assign output_differences_4_address3 = 64'd4;
assign output_differences_4_address4 = 64'd3;
assign output_differences_4_address5 = 64'd2;
assign output_differences_4_address6 = 64'd1;
assign output_differences_4_address7 = 64'd0;
assign output_differences_4_ce0 = output_differences_4_ce0_local;
assign output_differences_4_ce1 = output_differences_4_ce1_local;
assign output_differences_4_ce2 = output_differences_4_ce2_local;
assign output_differences_4_ce3 = output_differences_4_ce3_local;
assign output_differences_4_ce4 = output_differences_4_ce4_local;
assign output_differences_4_ce5 = output_differences_4_ce5_local;
assign output_differences_4_ce6 = output_differences_4_ce6_local;
assign output_differences_4_ce7 = output_differences_4_ce7_local;
assign output_differences_5_address0 = 64'd7;
assign output_differences_5_address1 = 64'd6;
assign output_differences_5_address2 = 64'd5;
assign output_differences_5_address3 = 64'd4;
assign output_differences_5_address4 = 64'd3;
assign output_differences_5_address5 = 64'd2;
assign output_differences_5_address6 = 64'd1;
assign output_differences_5_address7 = 64'd0;
assign output_differences_5_ce0 = output_differences_5_ce0_local;
assign output_differences_5_ce1 = output_differences_5_ce1_local;
assign output_differences_5_ce2 = output_differences_5_ce2_local;
assign output_differences_5_ce3 = output_differences_5_ce3_local;
assign output_differences_5_ce4 = output_differences_5_ce4_local;
assign output_differences_5_ce5 = output_differences_5_ce5_local;
assign output_differences_5_ce6 = output_differences_5_ce6_local;
assign output_differences_5_ce7 = output_differences_5_ce7_local;
assign output_differences_6_address0 = 64'd7;
assign output_differences_6_address1 = 64'd6;
assign output_differences_6_address2 = 64'd5;
assign output_differences_6_address3 = 64'd4;
assign output_differences_6_address4 = 64'd3;
assign output_differences_6_address5 = 64'd2;
assign output_differences_6_address6 = 64'd1;
assign output_differences_6_address7 = 64'd0;
assign output_differences_6_ce0 = output_differences_6_ce0_local;
assign output_differences_6_ce1 = output_differences_6_ce1_local;
assign output_differences_6_ce2 = output_differences_6_ce2_local;
assign output_differences_6_ce3 = output_differences_6_ce3_local;
assign output_differences_6_ce4 = output_differences_6_ce4_local;
assign output_differences_6_ce5 = output_differences_6_ce5_local;
assign output_differences_6_ce6 = output_differences_6_ce6_local;
assign output_differences_6_ce7 = output_differences_6_ce7_local;
assign output_differences_7_address0 = 64'd7;
assign output_differences_7_address1 = 64'd6;
assign output_differences_7_address2 = 64'd5;
assign output_differences_7_address3 = 64'd4;
assign output_differences_7_address4 = 64'd3;
assign output_differences_7_address5 = 64'd2;
assign output_differences_7_address6 = 64'd1;
assign output_differences_7_address7 = 64'd0;
assign output_differences_7_ce0 = output_differences_7_ce0_local;
assign output_differences_7_ce1 = output_differences_7_ce1_local;
assign output_differences_7_ce2 = output_differences_7_ce2_local;
assign output_differences_7_ce3 = output_differences_7_ce3_local;
assign output_differences_7_ce4 = output_differences_7_ce4_local;
assign output_differences_7_ce5 = output_differences_7_ce5_local;
assign output_differences_7_ce6 = output_differences_7_ce6_local;
assign output_differences_7_ce7 = output_differences_7_ce7_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_3_ce1;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address0;
assign weights2_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_address1;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce0;
assign weights2_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_4_ce1;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address0;
assign weights2_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_address1;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce0;
assign weights2_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_5_ce1;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address0;
assign weights2_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_address1;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce0;
assign weights2_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_6_ce1;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address0;
assign weights2_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_address1;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce0;
assign weights2_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_932_weights2_7_ce1;
endmodule 
