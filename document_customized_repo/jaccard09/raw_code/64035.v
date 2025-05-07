module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_0_address2,output_differences_0_ce2,output_differences_0_q2,output_differences_0_address3,output_differences_0_ce3,output_differences_0_q3,output_differences_0_address4,output_differences_0_ce4,output_differences_0_q4,output_differences_0_address5,output_differences_0_ce5,output_differences_0_q5,output_differences_0_address6,output_differences_0_ce6,output_differences_0_q6,output_differences_0_address7,output_differences_0_ce7,output_differences_0_q7,output_differences_0_address8,output_differences_0_ce8,output_differences_0_q8,output_differences_0_address9,output_differences_0_ce9,output_differences_0_q9,output_differences_0_address10,output_differences_0_ce10,output_differences_0_q10,output_differences_0_address11,output_differences_0_ce11,output_differences_0_q11,output_differences_0_address12,output_differences_0_ce12,output_differences_0_q12,output_differences_0_address13,output_differences_0_ce13,output_differences_0_q13,output_differences_0_address14,output_differences_0_ce14,output_differences_0_q14,output_differences_0_address15,output_differences_0_ce15,output_differences_0_q15,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_1_address2,output_differences_1_ce2,output_differences_1_q2,output_differences_1_address3,output_differences_1_ce3,output_differences_1_q3,output_differences_1_address4,output_differences_1_ce4,output_differences_1_q4,output_differences_1_address5,output_differences_1_ce5,output_differences_1_q5,output_differences_1_address6,output_differences_1_ce6,output_differences_1_q6,output_differences_1_address7,output_differences_1_ce7,output_differences_1_q7,output_differences_1_address8,output_differences_1_ce8,output_differences_1_q8,output_differences_1_address9,output_differences_1_ce9,output_differences_1_q9,output_differences_1_address10,output_differences_1_ce10,output_differences_1_q10,output_differences_1_address11,output_differences_1_ce11,output_differences_1_q11,output_differences_1_address12,output_differences_1_ce12,output_differences_1_q12,output_differences_1_address13,output_differences_1_ce13,output_differences_1_q13,output_differences_1_address14,output_differences_1_ce14,output_differences_1_q14,output_differences_1_address15,output_differences_1_ce15,output_differences_1_q15,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_2_address2,output_differences_2_ce2,output_differences_2_q2,output_differences_2_address3,output_differences_2_ce3,output_differences_2_q3,output_differences_2_address4,output_differences_2_ce4,output_differences_2_q4,output_differences_2_address5,output_differences_2_ce5,output_differences_2_q5,output_differences_2_address6,output_differences_2_ce6,output_differences_2_q6,output_differences_2_address7,output_differences_2_ce7,output_differences_2_q7,output_differences_2_address8,output_differences_2_ce8,output_differences_2_q8,output_differences_2_address9,output_differences_2_ce9,output_differences_2_q9,output_differences_2_address10,output_differences_2_ce10,output_differences_2_q10,output_differences_2_address11,output_differences_2_ce11,output_differences_2_q11,output_differences_2_address12,output_differences_2_ce12,output_differences_2_q12,output_differences_2_address13,output_differences_2_ce13,output_differences_2_q13,output_differences_2_address14,output_differences_2_ce14,output_differences_2_q14,output_differences_2_address15,output_differences_2_ce15,output_differences_2_q15,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_3_address2,output_differences_3_ce2,output_differences_3_q2,output_differences_3_address3,output_differences_3_ce3,output_differences_3_q3,output_differences_3_address4,output_differences_3_ce4,output_differences_3_q4,output_differences_3_address5,output_differences_3_ce5,output_differences_3_q5,output_differences_3_address6,output_differences_3_ce6,output_differences_3_q6,output_differences_3_address7,output_differences_3_ce7,output_differences_3_q7,output_differences_3_address8,output_differences_3_ce8,output_differences_3_q8,output_differences_3_address9,output_differences_3_ce9,output_differences_3_q9,output_differences_3_address10,output_differences_3_ce10,output_differences_3_q10,output_differences_3_address11,output_differences_3_ce11,output_differences_3_q11,output_differences_3_address12,output_differences_3_ce12,output_differences_3_q12,output_differences_3_address13,output_differences_3_ce13,output_differences_3_q13,output_differences_3_address14,output_differences_3_ce14,output_differences_3_q14,output_differences_3_address15,output_differences_3_ce15,output_differences_3_q15,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_opcode,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_opcode,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_opcode,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_opcode,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_opcode,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce,grp_fu_3136_p_din0,grp_fu_3136_p_din1,grp_fu_3136_p_dout0,grp_fu_3136_p_ce); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [9:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [9:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [9:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [9:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [9:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [9:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [9:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
output  [3:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [3:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [3:0] output_differences_0_address2;
output   output_differences_0_ce2;
input  [63:0] output_differences_0_q2;
output  [3:0] output_differences_0_address3;
output   output_differences_0_ce3;
input  [63:0] output_differences_0_q3;
output  [3:0] output_differences_0_address4;
output   output_differences_0_ce4;
input  [63:0] output_differences_0_q4;
output  [3:0] output_differences_0_address5;
output   output_differences_0_ce5;
input  [63:0] output_differences_0_q5;
output  [3:0] output_differences_0_address6;
output   output_differences_0_ce6;
input  [63:0] output_differences_0_q6;
output  [3:0] output_differences_0_address7;
output   output_differences_0_ce7;
input  [63:0] output_differences_0_q7;
output  [3:0] output_differences_0_address8;
output   output_differences_0_ce8;
input  [63:0] output_differences_0_q8;
output  [3:0] output_differences_0_address9;
output   output_differences_0_ce9;
input  [63:0] output_differences_0_q9;
output  [3:0] output_differences_0_address10;
output   output_differences_0_ce10;
input  [63:0] output_differences_0_q10;
output  [3:0] output_differences_0_address11;
output   output_differences_0_ce11;
input  [63:0] output_differences_0_q11;
output  [3:0] output_differences_0_address12;
output   output_differences_0_ce12;
input  [63:0] output_differences_0_q12;
output  [3:0] output_differences_0_address13;
output   output_differences_0_ce13;
input  [63:0] output_differences_0_q13;
output  [3:0] output_differences_0_address14;
output   output_differences_0_ce14;
input  [63:0] output_differences_0_q14;
output  [3:0] output_differences_0_address15;
output   output_differences_0_ce15;
input  [63:0] output_differences_0_q15;
output  [3:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [3:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [3:0] output_differences_1_address2;
output   output_differences_1_ce2;
input  [63:0] output_differences_1_q2;
output  [3:0] output_differences_1_address3;
output   output_differences_1_ce3;
input  [63:0] output_differences_1_q3;
output  [3:0] output_differences_1_address4;
output   output_differences_1_ce4;
input  [63:0] output_differences_1_q4;
output  [3:0] output_differences_1_address5;
output   output_differences_1_ce5;
input  [63:0] output_differences_1_q5;
output  [3:0] output_differences_1_address6;
output   output_differences_1_ce6;
input  [63:0] output_differences_1_q6;
output  [3:0] output_differences_1_address7;
output   output_differences_1_ce7;
input  [63:0] output_differences_1_q7;
output  [3:0] output_differences_1_address8;
output   output_differences_1_ce8;
input  [63:0] output_differences_1_q8;
output  [3:0] output_differences_1_address9;
output   output_differences_1_ce9;
input  [63:0] output_differences_1_q9;
output  [3:0] output_differences_1_address10;
output   output_differences_1_ce10;
input  [63:0] output_differences_1_q10;
output  [3:0] output_differences_1_address11;
output   output_differences_1_ce11;
input  [63:0] output_differences_1_q11;
output  [3:0] output_differences_1_address12;
output   output_differences_1_ce12;
input  [63:0] output_differences_1_q12;
output  [3:0] output_differences_1_address13;
output   output_differences_1_ce13;
input  [63:0] output_differences_1_q13;
output  [3:0] output_differences_1_address14;
output   output_differences_1_ce14;
input  [63:0] output_differences_1_q14;
output  [3:0] output_differences_1_address15;
output   output_differences_1_ce15;
input  [63:0] output_differences_1_q15;
output  [3:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [3:0] output_differences_2_address1;
output   output_differences_2_ce1;
input  [63:0] output_differences_2_q1;
output  [3:0] output_differences_2_address2;
output   output_differences_2_ce2;
input  [63:0] output_differences_2_q2;
output  [3:0] output_differences_2_address3;
output   output_differences_2_ce3;
input  [63:0] output_differences_2_q3;
output  [3:0] output_differences_2_address4;
output   output_differences_2_ce4;
input  [63:0] output_differences_2_q4;
output  [3:0] output_differences_2_address5;
output   output_differences_2_ce5;
input  [63:0] output_differences_2_q5;
output  [3:0] output_differences_2_address6;
output   output_differences_2_ce6;
input  [63:0] output_differences_2_q6;
output  [3:0] output_differences_2_address7;
output   output_differences_2_ce7;
input  [63:0] output_differences_2_q7;
output  [3:0] output_differences_2_address8;
output   output_differences_2_ce8;
input  [63:0] output_differences_2_q8;
output  [3:0] output_differences_2_address9;
output   output_differences_2_ce9;
input  [63:0] output_differences_2_q9;
output  [3:0] output_differences_2_address10;
output   output_differences_2_ce10;
input  [63:0] output_differences_2_q10;
output  [3:0] output_differences_2_address11;
output   output_differences_2_ce11;
input  [63:0] output_differences_2_q11;
output  [3:0] output_differences_2_address12;
output   output_differences_2_ce12;
input  [63:0] output_differences_2_q12;
output  [3:0] output_differences_2_address13;
output   output_differences_2_ce13;
input  [63:0] output_differences_2_q13;
output  [3:0] output_differences_2_address14;
output   output_differences_2_ce14;
input  [63:0] output_differences_2_q14;
output  [3:0] output_differences_2_address15;
output   output_differences_2_ce15;
input  [63:0] output_differences_2_q15;
output  [3:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [3:0] output_differences_3_address1;
output   output_differences_3_ce1;
input  [63:0] output_differences_3_q1;
output  [3:0] output_differences_3_address2;
output   output_differences_3_ce2;
input  [63:0] output_differences_3_q2;
output  [3:0] output_differences_3_address3;
output   output_differences_3_ce3;
input  [63:0] output_differences_3_q3;
output  [3:0] output_differences_3_address4;
output   output_differences_3_ce4;
input  [63:0] output_differences_3_q4;
output  [3:0] output_differences_3_address5;
output   output_differences_3_ce5;
input  [63:0] output_differences_3_q5;
output  [3:0] output_differences_3_address6;
output   output_differences_3_ce6;
input  [63:0] output_differences_3_q6;
output  [3:0] output_differences_3_address7;
output   output_differences_3_ce7;
input  [63:0] output_differences_3_q7;
output  [3:0] output_differences_3_address8;
output   output_differences_3_ce8;
input  [63:0] output_differences_3_q8;
output  [3:0] output_differences_3_address9;
output   output_differences_3_ce9;
input  [63:0] output_differences_3_q9;
output  [3:0] output_differences_3_address10;
output   output_differences_3_ce10;
input  [63:0] output_differences_3_q10;
output  [3:0] output_differences_3_address11;
output   output_differences_3_ce11;
input  [63:0] output_differences_3_q11;
output  [3:0] output_differences_3_address12;
output   output_differences_3_ce12;
input  [63:0] output_differences_3_q12;
output  [3:0] output_differences_3_address13;
output   output_differences_3_ce13;
input  [63:0] output_differences_3_q13;
output  [3:0] output_differences_3_address14;
output   output_differences_3_ce14;
input  [63:0] output_differences_3_q14;
output  [3:0] output_differences_3_address15;
output   output_differences_3_ce15;
input  [63:0] output_differences_3_q15;
output  [3:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [3:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [3:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [3:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [3:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [3:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [3:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [3:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [63:0] grp_fu_3064_p_din0;
output  [63:0] grp_fu_3064_p_din1;
output  [0:0] grp_fu_3064_p_opcode;
input  [63:0] grp_fu_3064_p_dout0;
output   grp_fu_3064_p_ce;
output  [63:0] grp_fu_3068_p_din0;
output  [63:0] grp_fu_3068_p_din1;
output  [0:0] grp_fu_3068_p_opcode;
input  [63:0] grp_fu_3068_p_dout0;
output   grp_fu_3068_p_ce;
output  [63:0] grp_fu_3072_p_din0;
output  [63:0] grp_fu_3072_p_din1;
output  [0:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
output  [0:0] grp_fu_3076_p_opcode;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
output  [1:0] grp_fu_3080_p_opcode;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
output  [0:0] grp_fu_3084_p_opcode;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
output  [1:0] grp_fu_3088_p_opcode;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
output  [0:0] grp_fu_3092_p_opcode;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
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
output  [63:0] grp_fu_3136_p_din0;
output  [63:0] grp_fu_3136_p_din1;
input  [63:0] grp_fu_3136_p_dout0;
output   grp_fu_3136_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_0_load_reg_1388;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_1393;
reg   [63:0] output_differences_2_load_reg_1398;
reg   [63:0] output_differences_3_load_reg_1403;
reg   [63:0] output_differences_0_load_1_reg_1408;
reg   [63:0] output_differences_1_load_1_reg_1413;
reg   [63:0] output_differences_2_load_1_reg_1418;
reg   [63:0] output_differences_3_load_1_reg_1423;
reg   [63:0] output_differences_0_load_2_reg_1428;
reg   [63:0] output_differences_1_load_2_reg_1433;
reg   [63:0] output_differences_2_load_2_reg_1438;
reg   [63:0] output_differences_3_load_2_reg_1443;
reg   [63:0] output_differences_0_load_3_reg_1448;
reg   [63:0] output_differences_1_load_3_reg_1453;
reg   [63:0] output_differences_2_load_3_reg_1458;
reg   [63:0] output_differences_3_load_3_reg_1463;
reg   [63:0] output_differences_0_load_4_reg_1468;
reg   [63:0] output_differences_1_load_4_reg_1473;
reg   [63:0] output_differences_2_load_4_reg_1478;
reg   [63:0] output_differences_3_load_4_reg_1483;
reg   [63:0] output_differences_0_load_5_reg_1488;
reg   [63:0] output_differences_1_load_5_reg_1493;
reg   [63:0] output_differences_2_load_5_reg_1498;
reg   [63:0] output_differences_3_load_5_reg_1503;
reg   [63:0] output_differences_0_load_6_reg_1508;
reg   [63:0] output_differences_1_load_6_reg_1513;
reg   [63:0] output_differences_2_load_6_reg_1518;
reg   [63:0] output_differences_3_load_6_reg_1523;
reg   [63:0] output_differences_0_load_7_reg_1528;
reg   [63:0] output_differences_1_load_7_reg_1533;
reg   [63:0] output_differences_2_load_7_reg_1538;
reg   [63:0] output_differences_3_load_7_reg_1543;
reg   [63:0] output_differences_0_load_8_reg_1548;
reg   [63:0] output_differences_1_load_8_reg_1553;
reg   [63:0] output_differences_2_load_8_reg_1558;
reg   [63:0] output_differences_3_load_8_reg_1563;
reg   [63:0] output_differences_0_load_9_reg_1568;
reg   [63:0] output_differences_1_load_9_reg_1573;
reg   [63:0] output_differences_2_load_9_reg_1578;
reg   [63:0] output_differences_3_load_9_reg_1583;
reg   [63:0] output_differences_0_load_10_reg_1588;
reg   [63:0] output_differences_1_load_10_reg_1593;
reg   [63:0] output_differences_2_load_10_reg_1598;
reg   [63:0] output_differences_3_load_10_reg_1603;
reg   [63:0] output_differences_0_load_11_reg_1608;
reg   [63:0] output_differences_1_load_11_reg_1613;
reg   [63:0] output_differences_2_load_11_reg_1618;
reg   [63:0] output_differences_3_load_11_reg_1623;
reg   [63:0] output_differences_0_load_12_reg_1628;
reg   [63:0] output_differences_1_load_12_reg_1633;
reg   [63:0] output_differences_2_load_12_reg_1638;
reg   [63:0] output_differences_3_load_12_reg_1643;
reg   [63:0] output_differences_0_load_13_reg_1648;
reg   [63:0] output_differences_1_load_13_reg_1653;
reg   [63:0] output_differences_2_load_13_reg_1658;
reg   [63:0] output_differences_3_load_13_reg_1663;
reg   [63:0] output_differences_0_load_14_reg_1668;
reg   [63:0] output_differences_1_load_14_reg_1673;
reg   [63:0] output_differences_2_load_14_reg_1678;
reg   [63:0] output_differences_3_load_14_reg_1683;
reg   [63:0] output_differences_0_load_15_reg_1688;
reg   [63:0] output_differences_1_load_15_reg_1693;
reg   [63:0] output_differences_2_load_15_reg_1698;
reg   [63:0] output_differences_3_load_15_reg_1703;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_ready;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_d0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_d0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_d0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_d0;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce0;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce1;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce0;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce1;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce0;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce1;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce0;
wire   [9:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce1;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_ce0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_ce0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_ce0;
wire   [3:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    output_differences_0_ce15_local;
reg    output_differences_0_ce14_local;
reg    output_differences_0_ce13_local;
reg    output_differences_0_ce12_local;
reg    output_differences_0_ce11_local;
reg    output_differences_0_ce10_local;
reg    output_differences_0_ce9_local;
reg    output_differences_0_ce8_local;
reg    output_differences_0_ce7_local;
reg    output_differences_0_ce6_local;
reg    output_differences_0_ce5_local;
reg    output_differences_0_ce4_local;
reg    output_differences_0_ce3_local;
reg    output_differences_0_ce2_local;
reg    output_differences_0_ce1_local;
reg    output_differences_0_ce0_local;
reg    output_differences_1_ce15_local;
reg    output_differences_1_ce14_local;
reg    output_differences_1_ce13_local;
reg    output_differences_1_ce12_local;
reg    output_differences_1_ce11_local;
reg    output_differences_1_ce10_local;
reg    output_differences_1_ce9_local;
reg    output_differences_1_ce8_local;
reg    output_differences_1_ce7_local;
reg    output_differences_1_ce6_local;
reg    output_differences_1_ce5_local;
reg    output_differences_1_ce4_local;
reg    output_differences_1_ce3_local;
reg    output_differences_1_ce2_local;
reg    output_differences_1_ce1_local;
reg    output_differences_1_ce0_local;
reg    output_differences_2_ce15_local;
reg    output_differences_2_ce14_local;
reg    output_differences_2_ce13_local;
reg    output_differences_2_ce12_local;
reg    output_differences_2_ce11_local;
reg    output_differences_2_ce10_local;
reg    output_differences_2_ce9_local;
reg    output_differences_2_ce8_local;
reg    output_differences_2_ce7_local;
reg    output_differences_2_ce6_local;
reg    output_differences_2_ce5_local;
reg    output_differences_2_ce4_local;
reg    output_differences_2_ce3_local;
reg    output_differences_2_ce2_local;
reg    output_differences_2_ce1_local;
reg    output_differences_2_ce0_local;
reg    output_differences_3_ce15_local;
reg    output_differences_3_ce14_local;
reg    output_differences_3_ce13_local;
reg    output_differences_3_ce12_local;
reg    output_differences_3_ce11_local;
reg    output_differences_3_ce10_local;
reg    output_differences_3_ce9_local;
reg    output_differences_3_ce8_local;
reg    output_differences_3_ce7_local;
reg    output_differences_3_ce6_local;
reg    output_differences_3_ce5_local;
reg    output_differences_3_ce4_local;
reg    output_differences_3_ce3_local;
reg    output_differences_3_ce2_local;
reg    output_differences_3_ce1_local;
reg    output_differences_3_ce0_local;
reg    grp_fu_1708_ce;
reg    grp_fu_1712_ce;
reg    grp_fu_1716_ce;
reg    grp_fu_1720_ce;
reg    grp_fu_1724_ce;
reg    grp_fu_1728_ce;
reg    grp_fu_1732_ce;
reg    grp_fu_1736_ce;
reg    grp_fu_1740_ce;
reg    grp_fu_1744_ce;
reg    grp_fu_1748_ce;
reg    grp_fu_1752_ce;
reg    grp_fu_1756_ce;
reg    grp_fu_1760_ce;
reg    grp_fu_1764_ce;
reg    grp_fu_1768_ce;
reg    grp_fu_1772_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_ready),.oracle_activations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_address0),.oracle_activations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_ce0),.oracle_activations_3_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_we0),.oracle_activations_3_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_d0),.oracle_activations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_address0),.oracle_activations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_ce0),.oracle_activations_2_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_we0),.oracle_activations_2_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_d0),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_1388),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_1393),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_2_load(output_differences_2_load_reg_1398),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_3_load(output_differences_3_load_reg_1403),.output_differences_0_load_1(output_differences_0_load_1_reg_1408),.output_differences_1_load_1(output_differences_1_load_1_reg_1413),.output_differences_2_load_1(output_differences_2_load_1_reg_1418),.output_differences_3_load_1(output_differences_3_load_1_reg_1423),.output_differences_0_load_2(output_differences_0_load_2_reg_1428),.output_differences_1_load_2(output_differences_1_load_2_reg_1433),.output_differences_2_load_2(output_differences_2_load_2_reg_1438),.output_differences_3_load_2(output_differences_3_load_2_reg_1443),.output_differences_0_load_3(output_differences_0_load_3_reg_1448),.output_differences_1_load_3(output_differences_1_load_3_reg_1453),.output_differences_2_load_3(output_differences_2_load_3_reg_1458),.output_differences_3_load_3(output_differences_3_load_3_reg_1463),.output_differences_0_load_4(output_differences_0_load_4_reg_1468),.output_differences_1_load_4(output_differences_1_load_4_reg_1473),.output_differences_2_load_4(output_differences_2_load_4_reg_1478),.output_differences_3_load_4(output_differences_3_load_4_reg_1483),.output_differences_0_load_5(output_differences_0_load_5_reg_1488),.output_differences_1_load_5(output_differences_1_load_5_reg_1493),.output_differences_2_load_5(output_differences_2_load_5_reg_1498),.output_differences_3_load_5(output_differences_3_load_5_reg_1503),.output_differences_0_load_6(output_differences_0_load_6_reg_1508),.output_differences_1_load_6(output_differences_1_load_6_reg_1513),.output_differences_2_load_6(output_differences_2_load_6_reg_1518),.output_differences_3_load_6(output_differences_3_load_6_reg_1523),.output_differences_0_load_7(output_differences_0_load_7_reg_1528),.output_differences_1_load_7(output_differences_1_load_7_reg_1533),.output_differences_2_load_7(output_differences_2_load_7_reg_1538),.output_differences_3_load_7(output_differences_3_load_7_reg_1543),.output_differences_0_load_8(output_differences_0_load_8_reg_1548),.output_differences_1_load_8(output_differences_1_load_8_reg_1553),.output_differences_2_load_8(output_differences_2_load_8_reg_1558),.output_differences_3_load_8(output_differences_3_load_8_reg_1563),.output_differences_0_load_9(output_differences_0_load_9_reg_1568),.output_differences_1_load_9(output_differences_1_load_9_reg_1573),.output_differences_2_load_9(output_differences_2_load_9_reg_1578),.output_differences_3_load_9(output_differences_3_load_9_reg_1583),.output_differences_0_load_10(output_differences_0_load_10_reg_1588),.output_differences_1_load_10(output_differences_1_load_10_reg_1593),.output_differences_2_load_10(output_differences_2_load_10_reg_1598),.output_differences_3_load_10(output_differences_3_load_10_reg_1603),.output_differences_0_load_11(output_differences_0_load_11_reg_1608),.output_differences_1_load_11(output_differences_1_load_11_reg_1613),.output_differences_2_load_11(output_differences_2_load_11_reg_1618),.output_differences_3_load_11(output_differences_3_load_11_reg_1623),.output_differences_0_load_12(output_differences_0_load_12_reg_1628),.output_differences_1_load_12(output_differences_1_load_12_reg_1633),.output_differences_2_load_12(output_differences_2_load_12_reg_1638),.output_differences_3_load_12(output_differences_3_load_12_reg_1643),.output_differences_0_load_13(output_differences_0_load_13_reg_1648),.output_differences_1_load_13(output_differences_1_load_13_reg_1653),.output_differences_2_load_13(output_differences_2_load_13_reg_1658),.output_differences_3_load_13(output_differences_3_load_13_reg_1663),.output_differences_0_load_14(output_differences_0_load_14_reg_1668),.output_differences_1_load_14(output_differences_1_load_14_reg_1673),.output_differences_2_load_14(output_differences_2_load_14_reg_1678),.output_differences_3_load_14(output_differences_3_load_14_reg_1683),.output_differences_0_load_15(output_differences_0_load_15_reg_1688),.output_differences_1_load_15(output_differences_1_load_15_reg_1693),.output_differences_2_load_15(output_differences_2_load_15_reg_1698),.output_differences_3_load_15(output_differences_3_load_15_reg_1703),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.dactivations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_address0),.dactivations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_ce0),.dactivations_2_q0(dactivations_2_q0),.dactivations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_address0),.dactivations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_ce0),.dactivations_3_q0(dactivations_3_q0),.grp_fu_1708_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din0),.grp_fu_1708_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din1),.grp_fu_1708_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_opcode),.grp_fu_1708_p_dout0(grp_fu_3064_p_dout0),.grp_fu_1708_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_ce),.grp_fu_1712_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din1),.grp_fu_1712_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_opcode),.grp_fu_1712_p_dout0(grp_fu_3068_p_dout0),.grp_fu_1712_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din1),.grp_fu_1716_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_opcode),.grp_fu_1716_p_dout0(grp_fu_3072_p_dout0),.grp_fu_1716_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din1),.grp_fu_1720_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_opcode),.grp_fu_1720_p_dout0(grp_fu_3076_p_dout0),.grp_fu_1720_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din1),.grp_fu_1724_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_opcode),.grp_fu_1724_p_dout0(grp_fu_3080_p_dout0),.grp_fu_1724_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din1),.grp_fu_1728_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_opcode),.grp_fu_1728_p_dout0(grp_fu_3084_p_dout0),.grp_fu_1728_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din1),.grp_fu_1732_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_opcode),.grp_fu_1732_p_dout0(grp_fu_3088_p_dout0),.grp_fu_1732_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_ce),.grp_fu_1736_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din1),.grp_fu_1736_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_opcode),.grp_fu_1736_p_dout0(grp_fu_3092_p_dout0),.grp_fu_1736_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_ce),.grp_fu_1740_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din0),.grp_fu_1740_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din1),.grp_fu_1740_p_dout0(grp_fu_3096_p_dout0),.grp_fu_1740_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_ce),.grp_fu_1744_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din0),.grp_fu_1744_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din1),.grp_fu_1744_p_dout0(grp_fu_3100_p_dout0),.grp_fu_1744_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_ce),.grp_fu_1748_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din0),.grp_fu_1748_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din1),.grp_fu_1748_p_dout0(grp_fu_3104_p_dout0),.grp_fu_1748_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_ce),.grp_fu_1752_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din0),.grp_fu_1752_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din1),.grp_fu_1752_p_dout0(grp_fu_3108_p_dout0),.grp_fu_1752_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_ce),.grp_fu_1756_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din0),.grp_fu_1756_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din1),.grp_fu_1756_p_dout0(grp_fu_3112_p_dout0),.grp_fu_1756_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_ce),.grp_fu_1760_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din0),.grp_fu_1760_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din1),.grp_fu_1760_p_dout0(grp_fu_3116_p_dout0),.grp_fu_1760_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_ce),.grp_fu_1764_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din0),.grp_fu_1764_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din1),.grp_fu_1764_p_dout0(grp_fu_3120_p_dout0),.grp_fu_1764_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_ce),.grp_fu_1768_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din1),.grp_fu_1768_p_dout0(grp_fu_3124_p_dout0),.grp_fu_1768_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din1),.grp_fu_1772_p_dout0(grp_fu_3136_p_dout0),.grp_fu_1772_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_10_reg_1588 <= output_differences_0_q5;
        output_differences_0_load_11_reg_1608 <= output_differences_0_q4;
        output_differences_0_load_12_reg_1628 <= output_differences_0_q3;
        output_differences_0_load_13_reg_1648 <= output_differences_0_q2;
        output_differences_0_load_14_reg_1668 <= output_differences_0_q1;
        output_differences_0_load_15_reg_1688 <= output_differences_0_q0;
        output_differences_0_load_1_reg_1408 <= output_differences_0_q14;
        output_differences_0_load_2_reg_1428 <= output_differences_0_q13;
        output_differences_0_load_3_reg_1448 <= output_differences_0_q12;
        output_differences_0_load_4_reg_1468 <= output_differences_0_q11;
        output_differences_0_load_5_reg_1488 <= output_differences_0_q10;
        output_differences_0_load_6_reg_1508 <= output_differences_0_q9;
        output_differences_0_load_7_reg_1528 <= output_differences_0_q8;
        output_differences_0_load_8_reg_1548 <= output_differences_0_q7;
        output_differences_0_load_9_reg_1568 <= output_differences_0_q6;
        output_differences_0_load_reg_1388 <= output_differences_0_q15;
        output_differences_1_load_10_reg_1593 <= output_differences_1_q5;
        output_differences_1_load_11_reg_1613 <= output_differences_1_q4;
        output_differences_1_load_12_reg_1633 <= output_differences_1_q3;
        output_differences_1_load_13_reg_1653 <= output_differences_1_q2;
        output_differences_1_load_14_reg_1673 <= output_differences_1_q1;
        output_differences_1_load_15_reg_1693 <= output_differences_1_q0;
        output_differences_1_load_1_reg_1413 <= output_differences_1_q14;
        output_differences_1_load_2_reg_1433 <= output_differences_1_q13;
        output_differences_1_load_3_reg_1453 <= output_differences_1_q12;
        output_differences_1_load_4_reg_1473 <= output_differences_1_q11;
        output_differences_1_load_5_reg_1493 <= output_differences_1_q10;
        output_differences_1_load_6_reg_1513 <= output_differences_1_q9;
        output_differences_1_load_7_reg_1533 <= output_differences_1_q8;
        output_differences_1_load_8_reg_1553 <= output_differences_1_q7;
        output_differences_1_load_9_reg_1573 <= output_differences_1_q6;
        output_differences_1_load_reg_1393 <= output_differences_1_q15;
        output_differences_2_load_10_reg_1598 <= output_differences_2_q5;
        output_differences_2_load_11_reg_1618 <= output_differences_2_q4;
        output_differences_2_load_12_reg_1638 <= output_differences_2_q3;
        output_differences_2_load_13_reg_1658 <= output_differences_2_q2;
        output_differences_2_load_14_reg_1678 <= output_differences_2_q1;
        output_differences_2_load_15_reg_1698 <= output_differences_2_q0;
        output_differences_2_load_1_reg_1418 <= output_differences_2_q14;
        output_differences_2_load_2_reg_1438 <= output_differences_2_q13;
        output_differences_2_load_3_reg_1458 <= output_differences_2_q12;
        output_differences_2_load_4_reg_1478 <= output_differences_2_q11;
        output_differences_2_load_5_reg_1498 <= output_differences_2_q10;
        output_differences_2_load_6_reg_1518 <= output_differences_2_q9;
        output_differences_2_load_7_reg_1538 <= output_differences_2_q8;
        output_differences_2_load_8_reg_1558 <= output_differences_2_q7;
        output_differences_2_load_9_reg_1578 <= output_differences_2_q6;
        output_differences_2_load_reg_1398 <= output_differences_2_q15;
        output_differences_3_load_10_reg_1603 <= output_differences_3_q5;
        output_differences_3_load_11_reg_1623 <= output_differences_3_q4;
        output_differences_3_load_12_reg_1643 <= output_differences_3_q3;
        output_differences_3_load_13_reg_1663 <= output_differences_3_q2;
        output_differences_3_load_14_reg_1683 <= output_differences_3_q1;
        output_differences_3_load_15_reg_1703 <= output_differences_3_q0;
        output_differences_3_load_1_reg_1423 <= output_differences_3_q14;
        output_differences_3_load_2_reg_1443 <= output_differences_3_q13;
        output_differences_3_load_3_reg_1463 <= output_differences_3_q12;
        output_differences_3_load_4_reg_1483 <= output_differences_3_q11;
        output_differences_3_load_5_reg_1503 <= output_differences_3_q10;
        output_differences_3_load_6_reg_1523 <= output_differences_3_q9;
        output_differences_3_load_7_reg_1543 <= output_differences_3_q8;
        output_differences_3_load_8_reg_1563 <= output_differences_3_q7;
        output_differences_3_load_9_reg_1583 <= output_differences_3_q6;
        output_differences_3_load_reg_1403 <= output_differences_3_q15;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1708_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_ce;
    end else begin
        grp_fu_1708_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1712_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_ce;
    end else begin
        grp_fu_1712_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1716_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_ce;
    end else begin
        grp_fu_1716_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1720_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_ce;
    end else begin
        grp_fu_1720_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1724_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_ce;
    end else begin
        grp_fu_1724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1728_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_ce;
    end else begin
        grp_fu_1728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1732_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_ce;
    end else begin
        grp_fu_1732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1736_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1740_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_ce;
    end else begin
        grp_fu_1740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1744_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_ce;
    end else begin
        grp_fu_1744_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1748_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_ce;
    end else begin
        grp_fu_1748_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1752_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_ce;
    end else begin
        grp_fu_1752_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1756_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_ce;
    end else begin
        grp_fu_1756_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1760_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_ce;
    end else begin
        grp_fu_1760_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1764_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_ce;
    end else begin
        grp_fu_1764_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1768_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1772_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
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
        output_differences_0_ce10_local = 1'b1;
    end else begin
        output_differences_0_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce11_local = 1'b1;
    end else begin
        output_differences_0_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce12_local = 1'b1;
    end else begin
        output_differences_0_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce13_local = 1'b1;
    end else begin
        output_differences_0_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce14_local = 1'b1;
    end else begin
        output_differences_0_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce15_local = 1'b1;
    end else begin
        output_differences_0_ce15_local = 1'b0;
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
        output_differences_0_ce8_local = 1'b1;
    end else begin
        output_differences_0_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_0_ce9_local = 1'b1;
    end else begin
        output_differences_0_ce9_local = 1'b0;
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
        output_differences_1_ce10_local = 1'b1;
    end else begin
        output_differences_1_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce11_local = 1'b1;
    end else begin
        output_differences_1_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce12_local = 1'b1;
    end else begin
        output_differences_1_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce13_local = 1'b1;
    end else begin
        output_differences_1_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce14_local = 1'b1;
    end else begin
        output_differences_1_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce15_local = 1'b1;
    end else begin
        output_differences_1_ce15_local = 1'b0;
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
        output_differences_1_ce8_local = 1'b1;
    end else begin
        output_differences_1_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_1_ce9_local = 1'b1;
    end else begin
        output_differences_1_ce9_local = 1'b0;
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
        output_differences_2_ce10_local = 1'b1;
    end else begin
        output_differences_2_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce11_local = 1'b1;
    end else begin
        output_differences_2_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce12_local = 1'b1;
    end else begin
        output_differences_2_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce13_local = 1'b1;
    end else begin
        output_differences_2_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce14_local = 1'b1;
    end else begin
        output_differences_2_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce15_local = 1'b1;
    end else begin
        output_differences_2_ce15_local = 1'b0;
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
        output_differences_2_ce8_local = 1'b1;
    end else begin
        output_differences_2_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_2_ce9_local = 1'b1;
    end else begin
        output_differences_2_ce9_local = 1'b0;
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
        output_differences_3_ce10_local = 1'b1;
    end else begin
        output_differences_3_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce11_local = 1'b1;
    end else begin
        output_differences_3_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce12_local = 1'b1;
    end else begin
        output_differences_3_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce13_local = 1'b1;
    end else begin
        output_differences_3_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce14_local = 1'b1;
    end else begin
        output_differences_3_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce15_local = 1'b1;
    end else begin
        output_differences_3_ce15_local = 1'b0;
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
        output_differences_3_ce8_local = 1'b1;
    end else begin
        output_differences_3_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        output_differences_3_ce9_local = 1'b1;
    end else begin
        output_differences_3_ce9_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_0_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_1_ce0;
assign dactivations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_address0;
assign dactivations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_2_ce0;
assign dactivations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_address0;
assign dactivations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_dactivations_3_ce0;
assign grp_fu_3064_p_ce = grp_fu_1708_ce;
assign grp_fu_3064_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din0;
assign grp_fu_3064_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_din1;
assign grp_fu_3064_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1708_p_opcode;
assign grp_fu_3068_p_ce = grp_fu_1712_ce;
assign grp_fu_3068_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din0;
assign grp_fu_3068_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_din1;
assign grp_fu_3068_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1712_p_opcode;
assign grp_fu_3072_p_ce = grp_fu_1716_ce;
assign grp_fu_3072_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din0;
assign grp_fu_3072_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_din1;
assign grp_fu_3072_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1716_p_opcode;
assign grp_fu_3076_p_ce = grp_fu_1720_ce;
assign grp_fu_3076_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din0;
assign grp_fu_3076_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_din1;
assign grp_fu_3076_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1720_p_opcode;
assign grp_fu_3080_p_ce = grp_fu_1724_ce;
assign grp_fu_3080_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din0;
assign grp_fu_3080_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1724_p_din1;
assign grp_fu_3080_p_opcode = 2'd0;
assign grp_fu_3084_p_ce = grp_fu_1728_ce;
assign grp_fu_3084_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din0;
assign grp_fu_3084_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_din1;
assign grp_fu_3084_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1728_p_opcode;
assign grp_fu_3088_p_ce = grp_fu_1732_ce;
assign grp_fu_3088_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din0;
assign grp_fu_3088_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1732_p_din1;
assign grp_fu_3088_p_opcode = 2'd0;
assign grp_fu_3092_p_ce = grp_fu_1736_ce;
assign grp_fu_3092_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din0;
assign grp_fu_3092_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_din1;
assign grp_fu_3092_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1736_p_opcode;
assign grp_fu_3096_p_ce = grp_fu_1740_ce;
assign grp_fu_3096_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din0;
assign grp_fu_3096_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1740_p_din1;
assign grp_fu_3100_p_ce = grp_fu_1744_ce;
assign grp_fu_3100_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din0;
assign grp_fu_3100_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1744_p_din1;
assign grp_fu_3104_p_ce = grp_fu_1748_ce;
assign grp_fu_3104_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din0;
assign grp_fu_3104_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1748_p_din1;
assign grp_fu_3108_p_ce = grp_fu_1752_ce;
assign grp_fu_3108_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din0;
assign grp_fu_3108_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1752_p_din1;
assign grp_fu_3112_p_ce = grp_fu_1756_ce;
assign grp_fu_3112_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din0;
assign grp_fu_3112_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1756_p_din1;
assign grp_fu_3116_p_ce = grp_fu_1760_ce;
assign grp_fu_3116_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din0;
assign grp_fu_3116_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1760_p_din1;
assign grp_fu_3120_p_ce = grp_fu_1764_ce;
assign grp_fu_3120_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din0;
assign grp_fu_3120_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1764_p_din1;
assign grp_fu_3124_p_ce = grp_fu_1768_ce;
assign grp_fu_3124_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din0;
assign grp_fu_3124_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1768_p_din1;
assign grp_fu_3136_p_ce = grp_fu_1772_ce;
assign grp_fu_3136_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din0;
assign grp_fu_3136_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_grp_fu_1772_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_0_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_1_we0;
assign oracle_activations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_address0;
assign oracle_activations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_ce0;
assign oracle_activations_2_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_d0;
assign oracle_activations_2_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_2_we0;
assign oracle_activations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_address0;
assign oracle_activations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_ce0;
assign oracle_activations_3_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_d0;
assign oracle_activations_3_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_oracle_activations_3_we0;
assign output_differences_0_address0 = 64'd15;
assign output_differences_0_address1 = 64'd14;
assign output_differences_0_address10 = 64'd5;
assign output_differences_0_address11 = 64'd4;
assign output_differences_0_address12 = 64'd3;
assign output_differences_0_address13 = 64'd2;
assign output_differences_0_address14 = 64'd1;
assign output_differences_0_address15 = 64'd0;
assign output_differences_0_address2 = 64'd13;
assign output_differences_0_address3 = 64'd12;
assign output_differences_0_address4 = 64'd11;
assign output_differences_0_address5 = 64'd10;
assign output_differences_0_address6 = 64'd9;
assign output_differences_0_address7 = 64'd8;
assign output_differences_0_address8 = 64'd7;
assign output_differences_0_address9 = 64'd6;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_0_ce10 = output_differences_0_ce10_local;
assign output_differences_0_ce11 = output_differences_0_ce11_local;
assign output_differences_0_ce12 = output_differences_0_ce12_local;
assign output_differences_0_ce13 = output_differences_0_ce13_local;
assign output_differences_0_ce14 = output_differences_0_ce14_local;
assign output_differences_0_ce15 = output_differences_0_ce15_local;
assign output_differences_0_ce2 = output_differences_0_ce2_local;
assign output_differences_0_ce3 = output_differences_0_ce3_local;
assign output_differences_0_ce4 = output_differences_0_ce4_local;
assign output_differences_0_ce5 = output_differences_0_ce5_local;
assign output_differences_0_ce6 = output_differences_0_ce6_local;
assign output_differences_0_ce7 = output_differences_0_ce7_local;
assign output_differences_0_ce8 = output_differences_0_ce8_local;
assign output_differences_0_ce9 = output_differences_0_ce9_local;
assign output_differences_1_address0 = 64'd15;
assign output_differences_1_address1 = 64'd14;
assign output_differences_1_address10 = 64'd5;
assign output_differences_1_address11 = 64'd4;
assign output_differences_1_address12 = 64'd3;
assign output_differences_1_address13 = 64'd2;
assign output_differences_1_address14 = 64'd1;
assign output_differences_1_address15 = 64'd0;
assign output_differences_1_address2 = 64'd13;
assign output_differences_1_address3 = 64'd12;
assign output_differences_1_address4 = 64'd11;
assign output_differences_1_address5 = 64'd10;
assign output_differences_1_address6 = 64'd9;
assign output_differences_1_address7 = 64'd8;
assign output_differences_1_address8 = 64'd7;
assign output_differences_1_address9 = 64'd6;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign output_differences_1_ce10 = output_differences_1_ce10_local;
assign output_differences_1_ce11 = output_differences_1_ce11_local;
assign output_differences_1_ce12 = output_differences_1_ce12_local;
assign output_differences_1_ce13 = output_differences_1_ce13_local;
assign output_differences_1_ce14 = output_differences_1_ce14_local;
assign output_differences_1_ce15 = output_differences_1_ce15_local;
assign output_differences_1_ce2 = output_differences_1_ce2_local;
assign output_differences_1_ce3 = output_differences_1_ce3_local;
assign output_differences_1_ce4 = output_differences_1_ce4_local;
assign output_differences_1_ce5 = output_differences_1_ce5_local;
assign output_differences_1_ce6 = output_differences_1_ce6_local;
assign output_differences_1_ce7 = output_differences_1_ce7_local;
assign output_differences_1_ce8 = output_differences_1_ce8_local;
assign output_differences_1_ce9 = output_differences_1_ce9_local;
assign output_differences_2_address0 = 64'd15;
assign output_differences_2_address1 = 64'd14;
assign output_differences_2_address10 = 64'd5;
assign output_differences_2_address11 = 64'd4;
assign output_differences_2_address12 = 64'd3;
assign output_differences_2_address13 = 64'd2;
assign output_differences_2_address14 = 64'd1;
assign output_differences_2_address15 = 64'd0;
assign output_differences_2_address2 = 64'd13;
assign output_differences_2_address3 = 64'd12;
assign output_differences_2_address4 = 64'd11;
assign output_differences_2_address5 = 64'd10;
assign output_differences_2_address6 = 64'd9;
assign output_differences_2_address7 = 64'd8;
assign output_differences_2_address8 = 64'd7;
assign output_differences_2_address9 = 64'd6;
assign output_differences_2_ce0 = output_differences_2_ce0_local;
assign output_differences_2_ce1 = output_differences_2_ce1_local;
assign output_differences_2_ce10 = output_differences_2_ce10_local;
assign output_differences_2_ce11 = output_differences_2_ce11_local;
assign output_differences_2_ce12 = output_differences_2_ce12_local;
assign output_differences_2_ce13 = output_differences_2_ce13_local;
assign output_differences_2_ce14 = output_differences_2_ce14_local;
assign output_differences_2_ce15 = output_differences_2_ce15_local;
assign output_differences_2_ce2 = output_differences_2_ce2_local;
assign output_differences_2_ce3 = output_differences_2_ce3_local;
assign output_differences_2_ce4 = output_differences_2_ce4_local;
assign output_differences_2_ce5 = output_differences_2_ce5_local;
assign output_differences_2_ce6 = output_differences_2_ce6_local;
assign output_differences_2_ce7 = output_differences_2_ce7_local;
assign output_differences_2_ce8 = output_differences_2_ce8_local;
assign output_differences_2_ce9 = output_differences_2_ce9_local;
assign output_differences_3_address0 = 64'd15;
assign output_differences_3_address1 = 64'd14;
assign output_differences_3_address10 = 64'd5;
assign output_differences_3_address11 = 64'd4;
assign output_differences_3_address12 = 64'd3;
assign output_differences_3_address13 = 64'd2;
assign output_differences_3_address14 = 64'd1;
assign output_differences_3_address15 = 64'd0;
assign output_differences_3_address2 = 64'd13;
assign output_differences_3_address3 = 64'd12;
assign output_differences_3_address4 = 64'd11;
assign output_differences_3_address5 = 64'd10;
assign output_differences_3_address6 = 64'd9;
assign output_differences_3_address7 = 64'd8;
assign output_differences_3_address8 = 64'd7;
assign output_differences_3_address9 = 64'd6;
assign output_differences_3_ce0 = output_differences_3_ce0_local;
assign output_differences_3_ce1 = output_differences_3_ce1_local;
assign output_differences_3_ce10 = output_differences_3_ce10_local;
assign output_differences_3_ce11 = output_differences_3_ce11_local;
assign output_differences_3_ce12 = output_differences_3_ce12_local;
assign output_differences_3_ce13 = output_differences_3_ce13_local;
assign output_differences_3_ce14 = output_differences_3_ce14_local;
assign output_differences_3_ce15 = output_differences_3_ce15_local;
assign output_differences_3_ce2 = output_differences_3_ce2_local;
assign output_differences_3_ce3 = output_differences_3_ce3_local;
assign output_differences_3_ce4 = output_differences_3_ce4_local;
assign output_differences_3_ce5 = output_differences_3_ce5_local;
assign output_differences_3_ce6 = output_differences_3_ce6_local;
assign output_differences_3_ce7 = output_differences_3_ce7_local;
assign output_differences_3_ce8 = output_differences_3_ce8_local;
assign output_differences_3_ce9 = output_differences_3_ce9_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_912_weights2_3_ce1;
endmodule 