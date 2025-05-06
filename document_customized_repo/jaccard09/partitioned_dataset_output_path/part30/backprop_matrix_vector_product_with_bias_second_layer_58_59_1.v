
module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_q1,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_2_address1,input_activations_2_ce1,input_activations_2_q1,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_3_address1,input_activations_3_ce1,input_activations_3_q1,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_4_address1,input_activations_4_ce1,input_activations_4_q1,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_5_address1,input_activations_5_ce1,input_activations_5_q1,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_6_address1,input_activations_6_ce1,input_activations_6_q1,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_7_address1,input_activations_7_ce1,input_activations_7_q1,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [2:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [2:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [2:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [2:0] biases2_4_address0;
output   biases2_4_ce0;
input  [63:0] biases2_4_q0;
output  [2:0] biases2_5_address0;
output   biases2_5_ce0;
input  [63:0] biases2_5_q0;
output  [2:0] biases2_6_address0;
output   biases2_6_ce0;
input  [63:0] biases2_6_q0;
output  [2:0] biases2_7_address0;
output   biases2_7_ce0;
input  [63:0] biases2_7_q0;
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
output  [2:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [2:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [2:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [2:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
output  [2:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [2:0] activations_2_address1;
output   activations_2_ce1;
input  [63:0] activations_2_q1;
output  [2:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [2:0] activations_3_address1;
output   activations_3_ce1;
input  [63:0] activations_3_q1;
output  [2:0] activations_4_address0;
output   activations_4_ce0;
output   activations_4_we0;
output  [63:0] activations_4_d0;
output  [2:0] activations_4_address1;
output   activations_4_ce1;
input  [63:0] activations_4_q1;
output  [2:0] activations_5_address0;
output   activations_5_ce0;
output   activations_5_we0;
output  [63:0] activations_5_d0;
output  [2:0] activations_5_address1;
output   activations_5_ce1;
input  [63:0] activations_5_q1;
output  [2:0] activations_6_address0;
output   activations_6_ce0;
output   activations_6_we0;
output  [63:0] activations_6_d0;
output  [2:0] activations_6_address1;
output   activations_6_ce1;
input  [63:0] activations_6_q1;
output  [2:0] activations_7_address0;
output   activations_7_ce0;
output   activations_7_we0;
output  [63:0] activations_7_d0;
output  [2:0] activations_7_address1;
output   activations_7_ce1;
input  [63:0] activations_7_q1;
output  [2:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [2:0] input_activations_0_address1;
output   input_activations_0_ce1;
input  [63:0] input_activations_0_q1;
output  [2:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [2:0] input_activations_1_address1;
output   input_activations_1_ce1;
input  [63:0] input_activations_1_q1;
output  [2:0] input_activations_2_address0;
output   input_activations_2_ce0;
input  [63:0] input_activations_2_q0;
output  [2:0] input_activations_2_address1;
output   input_activations_2_ce1;
input  [63:0] input_activations_2_q1;
output  [2:0] input_activations_3_address0;
output   input_activations_3_ce0;
input  [63:0] input_activations_3_q0;
output  [2:0] input_activations_3_address1;
output   input_activations_3_ce1;
input  [63:0] input_activations_3_q1;
output  [2:0] input_activations_4_address0;
output   input_activations_4_ce0;
input  [63:0] input_activations_4_q0;
output  [2:0] input_activations_4_address1;
output   input_activations_4_ce1;
input  [63:0] input_activations_4_q1;
output  [2:0] input_activations_5_address0;
output   input_activations_5_ce0;
input  [63:0] input_activations_5_q0;
output  [2:0] input_activations_5_address1;
output   input_activations_5_ce1;
input  [63:0] input_activations_5_q1;
output  [2:0] input_activations_6_address0;
output   input_activations_6_ce0;
input  [63:0] input_activations_6_q0;
output  [2:0] input_activations_6_address1;
output   input_activations_6_ce1;
input  [63:0] input_activations_6_q1;
output  [2:0] input_activations_7_address0;
output   input_activations_7_ce0;
input  [63:0] input_activations_7_q0;
output  [2:0] input_activations_7_address1;
output   input_activations_7_ce1;
input  [63:0] input_activations_7_q1;
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
output  [1:0] grp_fu_3580_p_opcode;
input  [63:0] grp_fu_3580_p_dout0;
output   grp_fu_3580_p_ce;
output  [63:0] grp_fu_3584_p_din0;
output  [63:0] grp_fu_3584_p_din1;
output  [1:0] grp_fu_3584_p_opcode;
input  [63:0] grp_fu_3584_p_dout0;
output   grp_fu_3584_p_ce;
output  [63:0] grp_fu_3588_p_din0;
output  [63:0] grp_fu_3588_p_din1;
output  [1:0] grp_fu_3588_p_opcode;
input  [63:0] grp_fu_3588_p_dout0;
output   grp_fu_3588_p_ce;
output  [63:0] grp_fu_3592_p_din0;
output  [63:0] grp_fu_3592_p_din1;
output  [1:0] grp_fu_3592_p_opcode;
input  [63:0] grp_fu_3592_p_dout0;
output   grp_fu_3592_p_ce;
output  [63:0] grp_fu_3596_p_din0;
output  [63:0] grp_fu_3596_p_din1;
output  [1:0] grp_fu_3596_p_opcode;
input  [63:0] grp_fu_3596_p_dout0;
output   grp_fu_3596_p_ce;
output  [63:0] grp_fu_3600_p_din0;
output  [63:0] grp_fu_3600_p_din1;
output  [1:0] grp_fu_3600_p_opcode;
input  [63:0] grp_fu_3600_p_dout0;
output   grp_fu_3600_p_ce;
output  [63:0] grp_fu_3604_p_din0;
output  [63:0] grp_fu_3604_p_din1;
output  [1:0] grp_fu_3604_p_opcode;
input  [63:0] grp_fu_3604_p_dout0;
output   grp_fu_3604_p_ce;
output  [63:0] grp_fu_3608_p_din0;
output  [63:0] grp_fu_3608_p_din1;
output  [1:0] grp_fu_3608_p_opcode;
input  [63:0] grp_fu_3608_p_dout0;
output   grp_fu_3608_p_ce;
output  [63:0] grp_fu_3612_p_din0;
output  [63:0] grp_fu_3612_p_din1;
output  [1:0] grp_fu_3612_p_opcode;
input  [63:0] grp_fu_3612_p_dout0;
output   grp_fu_3612_p_ce;
output  [63:0] grp_fu_3616_p_din0;
output  [63:0] grp_fu_3616_p_din1;
output  [1:0] grp_fu_3616_p_opcode;
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
reg[2:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[2:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg activations_1_ce1;
reg[2:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg activations_2_ce1;
reg[2:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg activations_3_ce1;
reg[2:0] activations_4_address0;
reg activations_4_ce0;
reg activations_4_we0;
reg[63:0] activations_4_d0;
reg activations_4_ce1;
reg[2:0] activations_5_address0;
reg activations_5_ce0;
reg activations_5_we0;
reg[63:0] activations_5_d0;
reg activations_5_ce1;
reg[2:0] activations_6_address0;
reg activations_6_ce0;
reg activations_6_we0;
reg[63:0] activations_6_d0;
reg activations_6_ce1;
reg[2:0] activations_7_address0;
reg activations_7_ce0;
reg activations_7_we0;
reg[63:0] activations_7_d0;
reg activations_7_ce1;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_974;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_979;
reg   [63:0] input_activations_2_load_reg_984;
reg   [63:0] input_activations_3_load_reg_989;
reg   [63:0] input_activations_4_load_reg_994;
reg   [63:0] input_activations_5_load_reg_999;
reg   [63:0] input_activations_6_load_reg_1004;
reg   [63:0] input_activations_7_load_reg_1009;
reg   [63:0] input_activations_0_load_1_reg_1014;
reg   [63:0] input_activations_1_load_1_reg_1019;
reg   [63:0] input_activations_2_load_1_reg_1024;
reg   [63:0] input_activations_3_load_1_reg_1029;
reg   [63:0] input_activations_4_load_1_reg_1034;
reg   [63:0] input_activations_5_load_1_reg_1039;
reg   [63:0] input_activations_6_load_1_reg_1044;
reg   [63:0] input_activations_7_load_1_reg_1049;
reg   [63:0] input_activations_0_load_2_reg_1134;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_2_reg_1139;
reg   [63:0] input_activations_2_load_2_reg_1144;
reg   [63:0] input_activations_3_load_2_reg_1149;
reg   [63:0] input_activations_4_load_2_reg_1154;
reg   [63:0] input_activations_5_load_2_reg_1159;
reg   [63:0] input_activations_6_load_2_reg_1164;
reg   [63:0] input_activations_7_load_2_reg_1169;
reg   [63:0] input_activations_0_load_3_reg_1174;
reg   [63:0] input_activations_1_load_3_reg_1179;
reg   [63:0] input_activations_2_load_3_reg_1184;
reg   [63:0] input_activations_3_load_3_reg_1189;
reg   [63:0] input_activations_4_load_3_reg_1194;
reg   [63:0] input_activations_5_load_3_reg_1199;
reg   [63:0] input_activations_6_load_3_reg_1204;
reg   [63:0] input_activations_7_load_3_reg_1209;
reg   [63:0] input_activations_0_load_4_reg_1294;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_1_load_4_reg_1299;
reg   [63:0] input_activations_2_load_4_reg_1304;
reg   [63:0] input_activations_3_load_4_reg_1309;
reg   [63:0] input_activations_4_load_4_reg_1314;
reg   [63:0] input_activations_5_load_4_reg_1319;
reg   [63:0] input_activations_6_load_4_reg_1324;
reg   [63:0] input_activations_7_load_4_reg_1329;
reg   [63:0] input_activations_0_load_5_reg_1334;
reg   [63:0] input_activations_1_load_5_reg_1339;
reg   [63:0] input_activations_2_load_5_reg_1344;
reg   [63:0] input_activations_3_load_5_reg_1349;
reg   [63:0] input_activations_4_load_5_reg_1354;
reg   [63:0] input_activations_5_load_5_reg_1359;
reg   [63:0] input_activations_6_load_5_reg_1364;
reg   [63:0] input_activations_7_load_5_reg_1369;
reg   [63:0] input_activations_0_load_6_reg_1454;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_1_load_6_reg_1459;
reg   [63:0] input_activations_2_load_6_reg_1464;
reg   [63:0] input_activations_3_load_6_reg_1469;
reg   [63:0] input_activations_4_load_6_reg_1474;
reg   [63:0] input_activations_5_load_6_reg_1479;
reg   [63:0] input_activations_6_load_6_reg_1484;
reg   [63:0] input_activations_7_load_6_reg_1489;
reg   [63:0] input_activations_0_load_7_reg_1494;
reg   [63:0] input_activations_1_load_7_reg_1499;
reg   [63:0] input_activations_2_load_7_reg_1504;
reg   [63:0] input_activations_3_load_7_reg_1509;
reg   [63:0] input_activations_4_load_7_reg_1514;
reg   [63:0] input_activations_5_load_7_reg_1519;
reg   [63:0] input_activations_6_load_7_reg_1524;
reg   [63:0] input_activations_7_load_7_reg_1529;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_ready;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_d0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce1;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce0;
wire   [8:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_ready;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    input_activations_0_ce1_local;
reg   [2:0] input_activations_0_address1_local;
reg    input_activations_0_ce0_local;
reg   [2:0] input_activations_0_address0_local;
reg    input_activations_1_ce1_local;
reg   [2:0] input_activations_1_address1_local;
reg    input_activations_1_ce0_local;
reg   [2:0] input_activations_1_address0_local;
reg    input_activations_2_ce1_local;
reg   [2:0] input_activations_2_address1_local;
reg    input_activations_2_ce0_local;
reg   [2:0] input_activations_2_address0_local;
reg    input_activations_3_ce1_local;
reg   [2:0] input_activations_3_address1_local;
reg    input_activations_3_ce0_local;
reg   [2:0] input_activations_3_address0_local;
reg    input_activations_4_ce1_local;
reg   [2:0] input_activations_4_address1_local;
reg    input_activations_4_ce0_local;
reg   [2:0] input_activations_4_address0_local;
reg    input_activations_5_ce1_local;
reg   [2:0] input_activations_5_address1_local;
reg    input_activations_5_ce0_local;
reg   [2:0] input_activations_5_address0_local;
reg    input_activations_6_ce1_local;
reg   [2:0] input_activations_6_address1_local;
reg    input_activations_6_ce0_local;
reg   [2:0] input_activations_6_address0_local;
reg    input_activations_7_ce1_local;
reg   [2:0] input_activations_7_address1_local;
reg    input_activations_7_ce0_local;
reg   [2:0] input_activations_7_address0_local;
reg   [63:0] grp_fu_1534_p0;
reg   [63:0] grp_fu_1534_p1;
reg   [1:0] grp_fu_1534_opcode;
reg    grp_fu_1534_ce;
reg    grp_fu_1538_ce;
reg    grp_fu_1542_ce;
reg    grp_fu_1546_ce;
reg    grp_fu_1550_ce;
reg    grp_fu_1554_ce;
reg    grp_fu_1558_ce;
reg    grp_fu_1562_ce;
reg    grp_fu_1566_ce;
reg    grp_fu_1570_ce;
reg    grp_fu_1574_ce;
reg    grp_fu_1578_ce;
reg    grp_fu_1582_ce;
reg    grp_fu_1586_ce;
reg    grp_fu_1590_ce;
reg    grp_fu_1594_ce;
reg    grp_fu_1598_ce;
reg    grp_fu_1602_ce;
reg    grp_fu_1606_ce;
reg    grp_fu_1610_ce;
reg    grp_fu_1614_ce;
reg    grp_fu_1618_ce;
reg    grp_fu_1622_ce;
reg    grp_fu_1626_ce;
reg    grp_fu_1630_ce;
reg    grp_fu_1634_ce;
reg    grp_fu_1638_ce;
reg    grp_fu_1642_ce;
reg    grp_fu_1646_ce;
reg    grp_fu_1650_ce;
reg    grp_fu_1654_ce;
reg    grp_fu_1658_ce;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_ready),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_d0),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_d0),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_d0),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_d0),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_d0),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_d0),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_d0),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_d0),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.input_activations_0_load(input_activations_0_load_reg_974),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.input_activations_1_load(input_activations_1_load_reg_979),.weights2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address0),.weights2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address1),.weights2_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.input_activations_2_load(input_activations_2_load_reg_984),.weights2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address0),.weights2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address1),.weights2_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.input_activations_3_load(input_activations_3_load_reg_989),.weights2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address0),.weights2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address1),.weights2_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.input_activations_4_load(input_activations_4_load_reg_994),.weights2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address0),.weights2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address1),.weights2_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.input_activations_5_load(input_activations_5_load_reg_999),.weights2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address0),.weights2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address1),.weights2_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.input_activations_6_load(input_activations_6_load_reg_1004),.weights2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address0),.weights2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address1),.weights2_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.input_activations_7_load(input_activations_7_load_reg_1009),.input_activations_0_load_1(input_activations_0_load_1_reg_1014),.input_activations_1_load_1(input_activations_1_load_1_reg_1019),.input_activations_2_load_1(input_activations_2_load_1_reg_1024),.input_activations_3_load_1(input_activations_3_load_1_reg_1029),.input_activations_4_load_1(input_activations_4_load_1_reg_1034),.input_activations_5_load_1(input_activations_5_load_1_reg_1039),.input_activations_6_load_1(input_activations_6_load_1_reg_1044),.input_activations_7_load_1(input_activations_7_load_1_reg_1049),.input_activations_0_load_2(input_activations_0_load_2_reg_1134),.input_activations_1_load_2(input_activations_1_load_2_reg_1139),.input_activations_2_load_2(input_activations_2_load_2_reg_1144),.input_activations_3_load_2(input_activations_3_load_2_reg_1149),.input_activations_4_load_2(input_activations_4_load_2_reg_1154),.input_activations_5_load_2(input_activations_5_load_2_reg_1159),.input_activations_6_load_2(input_activations_6_load_2_reg_1164),.input_activations_7_load_2(input_activations_7_load_2_reg_1169),.input_activations_0_load_3(input_activations_0_load_3_reg_1174),.input_activations_1_load_3(input_activations_1_load_3_reg_1179),.input_activations_2_load_3(input_activations_2_load_3_reg_1184),.input_activations_3_load_3(input_activations_3_load_3_reg_1189),.input_activations_4_load_3(input_activations_4_load_3_reg_1194),.input_activations_5_load_3(input_activations_5_load_3_reg_1199),.input_activations_6_load_3(input_activations_6_load_3_reg_1204),.input_activations_7_load_3(input_activations_7_load_3_reg_1209),.input_activations_0_load_4(input_activations_0_load_4_reg_1294),.input_activations_1_load_4(input_activations_1_load_4_reg_1299),.input_activations_2_load_4(input_activations_2_load_4_reg_1304),.input_activations_3_load_4(input_activations_3_load_4_reg_1309),.input_activations_4_load_4(input_activations_4_load_4_reg_1314),.input_activations_5_load_4(input_activations_5_load_4_reg_1319),.input_activations_6_load_4(input_activations_6_load_4_reg_1324),.input_activations_7_load_4(input_activations_7_load_4_reg_1329),.input_activations_0_load_5(input_activations_0_load_5_reg_1334),.input_activations_1_load_5(input_activations_1_load_5_reg_1339),.input_activations_2_load_5(input_activations_2_load_5_reg_1344),.input_activations_3_load_5(input_activations_3_load_5_reg_1349),.input_activations_4_load_5(input_activations_4_load_5_reg_1354),.input_activations_5_load_5(input_activations_5_load_5_reg_1359),.input_activations_6_load_5(input_activations_6_load_5_reg_1364),.input_activations_7_load_5(input_activations_7_load_5_reg_1369),.input_activations_0_load_6(input_activations_0_load_6_reg_1454),.input_activations_1_load_6(input_activations_1_load_6_reg_1459),.input_activations_2_load_6(input_activations_2_load_6_reg_1464),.input_activations_3_load_6(input_activations_3_load_6_reg_1469),.input_activations_4_load_6(input_activations_4_load_6_reg_1474),.input_activations_5_load_6(input_activations_5_load_6_reg_1479),.input_activations_6_load_6(input_activations_6_load_6_reg_1484),.input_activations_7_load_6(input_activations_7_load_6_reg_1489),.input_activations_0_load_7(input_activations_0_load_7_reg_1494),.input_activations_1_load_7(input_activations_1_load_7_reg_1499),.input_activations_2_load_7(input_activations_2_load_7_reg_1504),.input_activations_3_load_7(input_activations_3_load_7_reg_1509),.input_activations_4_load_7(input_activations_4_load_7_reg_1514),.input_activations_5_load_7(input_activations_5_load_7_reg_1519),.input_activations_6_load_7(input_activations_6_load_7_reg_1524),.input_activations_7_load_7(input_activations_7_load_7_reg_1529),.grp_fu_1534_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din0),.grp_fu_1534_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din1),.grp_fu_1534_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_opcode),.grp_fu_1534_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1534_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_ce),.grp_fu_1538_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din0),.grp_fu_1538_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din1),.grp_fu_1538_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_opcode),.grp_fu_1538_p_dout0(grp_fu_3560_p_dout0),.grp_fu_1538_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_ce),.grp_fu_1542_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din0),.grp_fu_1542_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din1),.grp_fu_1542_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_opcode),.grp_fu_1542_p_dout0(grp_fu_3564_p_dout0),.grp_fu_1542_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_ce),.grp_fu_1546_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din0),.grp_fu_1546_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din1),.grp_fu_1546_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_opcode),.grp_fu_1546_p_dout0(grp_fu_3568_p_dout0),.grp_fu_1546_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_ce),.grp_fu_1550_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din0),.grp_fu_1550_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din1),.grp_fu_1550_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_opcode),.grp_fu_1550_p_dout0(grp_fu_3572_p_dout0),.grp_fu_1550_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_ce),.grp_fu_1554_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din0),.grp_fu_1554_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din1),.grp_fu_1554_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_opcode),.grp_fu_1554_p_dout0(grp_fu_3576_p_dout0),.grp_fu_1554_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_ce),.grp_fu_1558_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din0),.grp_fu_1558_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din1),.grp_fu_1558_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_opcode),.grp_fu_1558_p_dout0(grp_fu_3580_p_dout0),.grp_fu_1558_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_ce),.grp_fu_1562_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din0),.grp_fu_1562_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din1),.grp_fu_1562_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_opcode),.grp_fu_1562_p_dout0(grp_fu_3584_p_dout0),.grp_fu_1562_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_ce),.grp_fu_1566_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din0),.grp_fu_1566_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din1),.grp_fu_1566_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_opcode),.grp_fu_1566_p_dout0(grp_fu_3588_p_dout0),.grp_fu_1566_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_ce),.grp_fu_1570_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din0),.grp_fu_1570_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din1),.grp_fu_1570_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_opcode),.grp_fu_1570_p_dout0(grp_fu_3592_p_dout0),.grp_fu_1570_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_ce),.grp_fu_1574_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din0),.grp_fu_1574_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din1),.grp_fu_1574_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_opcode),.grp_fu_1574_p_dout0(grp_fu_3596_p_dout0),.grp_fu_1574_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_ce),.grp_fu_1578_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din0),.grp_fu_1578_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din1),.grp_fu_1578_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_opcode),.grp_fu_1578_p_dout0(grp_fu_3600_p_dout0),.grp_fu_1578_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_ce),.grp_fu_1582_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din0),.grp_fu_1582_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din1),.grp_fu_1582_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_opcode),.grp_fu_1582_p_dout0(grp_fu_3604_p_dout0),.grp_fu_1582_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_ce),.grp_fu_1586_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din0),.grp_fu_1586_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din1),.grp_fu_1586_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_opcode),.grp_fu_1586_p_dout0(grp_fu_3608_p_dout0),.grp_fu_1586_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_ce),.grp_fu_1590_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din0),.grp_fu_1590_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din1),.grp_fu_1590_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_opcode),.grp_fu_1590_p_dout0(grp_fu_3612_p_dout0),.grp_fu_1590_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_ce),.grp_fu_1594_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din0),.grp_fu_1594_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din1),.grp_fu_1594_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_opcode),.grp_fu_1594_p_dout0(grp_fu_3616_p_dout0),.grp_fu_1594_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_ce),.grp_fu_1598_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din0),.grp_fu_1598_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din1),.grp_fu_1598_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1598_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_ce),.grp_fu_1602_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din0),.grp_fu_1602_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din1),.grp_fu_1602_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1602_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_ce),.grp_fu_1606_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din0),.grp_fu_1606_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din1),.grp_fu_1606_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1606_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_ce),.grp_fu_1610_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din0),.grp_fu_1610_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din1),.grp_fu_1610_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1610_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_ce),.grp_fu_1614_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din0),.grp_fu_1614_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din1),.grp_fu_1614_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1614_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_ce),.grp_fu_1618_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din0),.grp_fu_1618_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din1),.grp_fu_1618_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1618_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_ce),.grp_fu_1622_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din0),.grp_fu_1622_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din1),.grp_fu_1622_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1622_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_ce),.grp_fu_1626_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din0),.grp_fu_1626_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din1),.grp_fu_1626_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1626_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_ce),.grp_fu_1630_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din1),.grp_fu_1630_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1630_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_ce),.grp_fu_1634_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din0),.grp_fu_1634_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din1),.grp_fu_1634_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1634_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_ce),.grp_fu_1638_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din0),.grp_fu_1638_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din1),.grp_fu_1638_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1638_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_ce),.grp_fu_1642_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din0),.grp_fu_1642_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din1),.grp_fu_1642_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1642_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_ce),.grp_fu_1646_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din0),.grp_fu_1646_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din1),.grp_fu_1646_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1646_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_ce),.grp_fu_1650_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din0),.grp_fu_1650_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din1),.grp_fu_1650_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1650_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_ce),.grp_fu_1654_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din0),.grp_fu_1654_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din1),.grp_fu_1654_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1654_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_ce),.grp_fu_1658_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din0),.grp_fu_1658_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din1),.grp_fu_1658_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1658_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_ready),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce1),.activations_7_q1(activations_7_q1),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce1),.activations_6_q1(activations_6_q1),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce1),.activations_5_q1(activations_5_q1),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce1),.activations_4_q1(activations_4_q1),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.biases2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_address0),.biases2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_ce0),.biases2_2_q0(biases2_2_q0),.biases2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_address0),.biases2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_ce0),.biases2_3_q0(biases2_3_q0),.biases2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_address0),.biases2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_ce0),.biases2_4_q0(biases2_4_q0),.biases2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_address0),.biases2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_ce0),.biases2_5_q0(biases2_5_q0),.biases2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_address0),.biases2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_ce0),.biases2_6_q0(biases2_6_q0),.biases2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_address0),.biases2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_ce0),.biases2_7_q0(biases2_7_q0),.grp_fu_1534_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din0),.grp_fu_1534_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din1),.grp_fu_1534_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_opcode),.grp_fu_1534_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1534_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_1_reg_1014 <= input_activations_0_q0;
        input_activations_0_load_reg_974 <= input_activations_0_q1;
        input_activations_1_load_1_reg_1019 <= input_activations_1_q0;
        input_activations_1_load_reg_979 <= input_activations_1_q1;
        input_activations_2_load_1_reg_1024 <= input_activations_2_q0;
        input_activations_2_load_reg_984 <= input_activations_2_q1;
        input_activations_3_load_1_reg_1029 <= input_activations_3_q0;
        input_activations_3_load_reg_989 <= input_activations_3_q1;
        input_activations_4_load_1_reg_1034 <= input_activations_4_q0;
        input_activations_4_load_reg_994 <= input_activations_4_q1;
        input_activations_5_load_1_reg_1039 <= input_activations_5_q0;
        input_activations_5_load_reg_999 <= input_activations_5_q1;
        input_activations_6_load_1_reg_1044 <= input_activations_6_q0;
        input_activations_6_load_reg_1004 <= input_activations_6_q1;
        input_activations_7_load_1_reg_1049 <= input_activations_7_q0;
        input_activations_7_load_reg_1009 <= input_activations_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_2_reg_1134 <= input_activations_0_q1;
        input_activations_0_load_3_reg_1174 <= input_activations_0_q0;
        input_activations_1_load_2_reg_1139 <= input_activations_1_q1;
        input_activations_1_load_3_reg_1179 <= input_activations_1_q0;
        input_activations_2_load_2_reg_1144 <= input_activations_2_q1;
        input_activations_2_load_3_reg_1184 <= input_activations_2_q0;
        input_activations_3_load_2_reg_1149 <= input_activations_3_q1;
        input_activations_3_load_3_reg_1189 <= input_activations_3_q0;
        input_activations_4_load_2_reg_1154 <= input_activations_4_q1;
        input_activations_4_load_3_reg_1194 <= input_activations_4_q0;
        input_activations_5_load_2_reg_1159 <= input_activations_5_q1;
        input_activations_5_load_3_reg_1199 <= input_activations_5_q0;
        input_activations_6_load_2_reg_1164 <= input_activations_6_q1;
        input_activations_6_load_3_reg_1204 <= input_activations_6_q0;
        input_activations_7_load_2_reg_1169 <= input_activations_7_q1;
        input_activations_7_load_3_reg_1209 <= input_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_load_4_reg_1294 <= input_activations_0_q1;
        input_activations_0_load_5_reg_1334 <= input_activations_0_q0;
        input_activations_1_load_4_reg_1299 <= input_activations_1_q1;
        input_activations_1_load_5_reg_1339 <= input_activations_1_q0;
        input_activations_2_load_4_reg_1304 <= input_activations_2_q1;
        input_activations_2_load_5_reg_1344 <= input_activations_2_q0;
        input_activations_3_load_4_reg_1309 <= input_activations_3_q1;
        input_activations_3_load_5_reg_1349 <= input_activations_3_q0;
        input_activations_4_load_4_reg_1314 <= input_activations_4_q1;
        input_activations_4_load_5_reg_1354 <= input_activations_4_q0;
        input_activations_5_load_4_reg_1319 <= input_activations_5_q1;
        input_activations_5_load_5_reg_1359 <= input_activations_5_q0;
        input_activations_6_load_4_reg_1324 <= input_activations_6_q1;
        input_activations_6_load_5_reg_1364 <= input_activations_6_q0;
        input_activations_7_load_4_reg_1329 <= input_activations_7_q1;
        input_activations_7_load_5_reg_1369 <= input_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_load_6_reg_1454 <= input_activations_0_q1;
        input_activations_0_load_7_reg_1494 <= input_activations_0_q0;
        input_activations_1_load_6_reg_1459 <= input_activations_1_q1;
        input_activations_1_load_7_reg_1499 <= input_activations_1_q0;
        input_activations_2_load_6_reg_1464 <= input_activations_2_q1;
        input_activations_2_load_7_reg_1504 <= input_activations_2_q0;
        input_activations_3_load_6_reg_1469 <= input_activations_3_q1;
        input_activations_3_load_7_reg_1509 <= input_activations_3_q0;
        input_activations_4_load_6_reg_1474 <= input_activations_4_q1;
        input_activations_4_load_7_reg_1514 <= input_activations_4_q0;
        input_activations_5_load_6_reg_1479 <= input_activations_5_q1;
        input_activations_5_load_7_reg_1519 <= input_activations_5_q0;
        input_activations_6_load_6_reg_1484 <= input_activations_6_q1;
        input_activations_6_load_7_reg_1524 <= input_activations_6_q0;
        input_activations_7_load_6_reg_1489 <= input_activations_7_q1;
        input_activations_7_load_7_reg_1529 <= input_activations_7_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_address0;
    end else begin
        activations_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_ce0;
    end else begin
        activations_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_d0;
    end else begin
        activations_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_2_we0;
    end else begin
        activations_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_address0;
    end else begin
        activations_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_ce0;
    end else begin
        activations_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_d0;
    end else begin
        activations_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_3_we0;
    end else begin
        activations_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_address0;
    end else begin
        activations_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_ce0;
    end else begin
        activations_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_ce1;
    end else begin
        activations_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_d0;
    end else begin
        activations_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_4_we0;
    end else begin
        activations_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_address0;
    end else begin
        activations_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_ce0;
    end else begin
        activations_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_ce1;
    end else begin
        activations_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_d0;
    end else begin
        activations_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_5_we0;
    end else begin
        activations_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_address0;
    end else begin
        activations_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_ce0;
    end else begin
        activations_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_ce1;
    end else begin
        activations_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_d0;
    end else begin
        activations_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_6_we0;
    end else begin
        activations_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_address0;
    end else begin
        activations_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_ce0;
    end else begin
        activations_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_ce1;
    end else begin
        activations_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_d0;
    end else begin
        activations_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_activations_7_we0;
    end else begin
        activations_7_we0 = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8)))) begin
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
    if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1534_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1534_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_ce;
    end else begin
        grp_fu_1534_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1534_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1534_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_opcode;
    end else begin
        grp_fu_1534_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1534_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1534_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din0;
    end else begin
        grp_fu_1534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1534_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_grp_fu_1534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1534_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1534_p_din1;
    end else begin
        grp_fu_1534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1538_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_ce;
    end else begin
        grp_fu_1538_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1542_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_ce;
    end else begin
        grp_fu_1542_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1546_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_ce;
    end else begin
        grp_fu_1546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1550_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_ce;
    end else begin
        grp_fu_1550_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1554_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_ce;
    end else begin
        grp_fu_1554_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1558_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_ce;
    end else begin
        grp_fu_1558_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1562_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_ce;
    end else begin
        grp_fu_1562_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1566_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_ce;
    end else begin
        grp_fu_1566_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1570_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_ce;
    end else begin
        grp_fu_1570_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1574_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_ce;
    end else begin
        grp_fu_1574_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1578_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_ce;
    end else begin
        grp_fu_1578_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1582_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_ce;
    end else begin
        grp_fu_1582_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1586_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_ce;
    end else begin
        grp_fu_1586_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1590_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_ce;
    end else begin
        grp_fu_1590_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1594_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_ce;
    end else begin
        grp_fu_1594_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1598_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_ce;
    end else begin
        grp_fu_1598_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1602_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_ce;
    end else begin
        grp_fu_1602_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1606_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_ce;
    end else begin
        grp_fu_1606_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1610_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_ce;
    end else begin
        grp_fu_1610_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1614_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_ce;
    end else begin
        grp_fu_1614_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1618_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_ce;
    end else begin
        grp_fu_1618_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1622_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_ce;
    end else begin
        grp_fu_1622_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1626_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_ce;
    end else begin
        grp_fu_1626_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1630_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_ce;
    end else begin
        grp_fu_1630_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1634_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_ce;
    end else begin
        grp_fu_1634_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1638_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_ce;
    end else begin
        grp_fu_1638_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1642_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_ce;
    end else begin
        grp_fu_1642_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1646_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_ce;
    end else begin
        grp_fu_1646_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1650_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_ce;
    end else begin
        grp_fu_1650_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1654_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_ce;
    end else begin
        grp_fu_1654_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1658_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_ce;
    end else begin
        grp_fu_1658_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address0_local = 64'd1;
    end else begin
        input_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_0_address1_local = 64'd0;
    end else begin
        input_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce0_local = 1'b1;
    end else begin
        input_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_0_ce1_local = 1'b1;
    end else begin
        input_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address0_local = 64'd1;
    end else begin
        input_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_1_address1_local = 64'd0;
    end else begin
        input_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce0_local = 1'b1;
    end else begin
        input_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_1_ce1_local = 1'b1;
    end else begin
        input_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address0_local = 64'd1;
    end else begin
        input_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_2_address1_local = 64'd0;
    end else begin
        input_activations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce0_local = 1'b1;
    end else begin
        input_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_2_ce1_local = 1'b1;
    end else begin
        input_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address0_local = 64'd1;
    end else begin
        input_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_3_address1_local = 64'd0;
    end else begin
        input_activations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce0_local = 1'b1;
    end else begin
        input_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_3_ce1_local = 1'b1;
    end else begin
        input_activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_4_address0_local = 64'd1;
    end else begin
        input_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_4_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_4_address1_local = 64'd0;
    end else begin
        input_activations_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_4_ce0_local = 1'b1;
    end else begin
        input_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_4_ce1_local = 1'b1;
    end else begin
        input_activations_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_5_address0_local = 64'd1;
    end else begin
        input_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_5_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_5_address1_local = 64'd0;
    end else begin
        input_activations_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_5_ce0_local = 1'b1;
    end else begin
        input_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_5_ce1_local = 1'b1;
    end else begin
        input_activations_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_6_address0_local = 64'd1;
    end else begin
        input_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_6_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_6_address1_local = 64'd0;
    end else begin
        input_activations_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_6_ce0_local = 1'b1;
    end else begin
        input_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_6_ce1_local = 1'b1;
    end else begin
        input_activations_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_7_address0_local = 64'd1;
    end else begin
        input_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_7_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        input_activations_7_address1_local = 64'd0;
    end else begin
        input_activations_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_7_ce0_local = 1'b1;
    end else begin
        input_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        input_activations_7_ce1_local = 1'b1;
    end else begin
        input_activations_7_ce1_local = 1'b0;
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
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_0_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_1_address1;
assign activations_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_2_address1;
assign activations_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_3_address1;
assign activations_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_4_address1;
assign activations_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_5_address1;
assign activations_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_6_address1;
assign activations_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_activations_7_address1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_0_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_1_ce0;
assign biases2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_address0;
assign biases2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_2_ce0;
assign biases2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_address0;
assign biases2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_3_ce0;
assign biases2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_address0;
assign biases2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_4_ce0;
assign biases2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_address0;
assign biases2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_5_ce0;
assign biases2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_address0;
assign biases2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_6_ce0;
assign biases2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_address0;
assign biases2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_biases2_7_ce0;
assign grp_fu_3556_p_ce = grp_fu_1534_ce;
assign grp_fu_3556_p_din0 = grp_fu_1534_p0;
assign grp_fu_3556_p_din1 = grp_fu_1534_p1;
assign grp_fu_3556_p_opcode = grp_fu_1534_opcode;
assign grp_fu_3560_p_ce = grp_fu_1538_ce;
assign grp_fu_3560_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din0;
assign grp_fu_3560_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_din1;
assign grp_fu_3560_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1538_p_opcode;
assign grp_fu_3564_p_ce = grp_fu_1542_ce;
assign grp_fu_3564_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din0;
assign grp_fu_3564_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_din1;
assign grp_fu_3564_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1542_p_opcode;
assign grp_fu_3568_p_ce = grp_fu_1546_ce;
assign grp_fu_3568_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din0;
assign grp_fu_3568_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_din1;
assign grp_fu_3568_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1546_p_opcode;
assign grp_fu_3572_p_ce = grp_fu_1550_ce;
assign grp_fu_3572_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din0;
assign grp_fu_3572_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_din1;
assign grp_fu_3572_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1550_p_opcode;
assign grp_fu_3576_p_ce = grp_fu_1554_ce;
assign grp_fu_3576_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din0;
assign grp_fu_3576_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_din1;
assign grp_fu_3576_p_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1554_p_opcode;
assign grp_fu_3580_p_ce = grp_fu_1558_ce;
assign grp_fu_3580_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din0;
assign grp_fu_3580_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1558_p_din1;
assign grp_fu_3580_p_opcode = 2'd0;
assign grp_fu_3584_p_ce = grp_fu_1562_ce;
assign grp_fu_3584_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din0;
assign grp_fu_3584_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1562_p_din1;
assign grp_fu_3584_p_opcode = 2'd0;
assign grp_fu_3588_p_ce = grp_fu_1566_ce;
assign grp_fu_3588_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din0;
assign grp_fu_3588_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1566_p_din1;
assign grp_fu_3588_p_opcode = 2'd0;
assign grp_fu_3592_p_ce = grp_fu_1570_ce;
assign grp_fu_3592_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din0;
assign grp_fu_3592_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1570_p_din1;
assign grp_fu_3592_p_opcode = 2'd0;
assign grp_fu_3596_p_ce = grp_fu_1574_ce;
assign grp_fu_3596_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din0;
assign grp_fu_3596_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1574_p_din1;
assign grp_fu_3596_p_opcode = 2'd0;
assign grp_fu_3600_p_ce = grp_fu_1578_ce;
assign grp_fu_3600_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din0;
assign grp_fu_3600_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1578_p_din1;
assign grp_fu_3600_p_opcode = 2'd0;
assign grp_fu_3604_p_ce = grp_fu_1582_ce;
assign grp_fu_3604_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din0;
assign grp_fu_3604_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1582_p_din1;
assign grp_fu_3604_p_opcode = 2'd0;
assign grp_fu_3608_p_ce = grp_fu_1586_ce;
assign grp_fu_3608_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din0;
assign grp_fu_3608_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1586_p_din1;
assign grp_fu_3608_p_opcode = 2'd0;
assign grp_fu_3612_p_ce = grp_fu_1590_ce;
assign grp_fu_3612_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din0;
assign grp_fu_3612_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1590_p_din1;
assign grp_fu_3612_p_opcode = 2'd0;
assign grp_fu_3616_p_ce = grp_fu_1594_ce;
assign grp_fu_3616_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din0;
assign grp_fu_3616_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1594_p_din1;
assign grp_fu_3616_p_opcode = 2'd0;
assign grp_fu_3620_p_ce = grp_fu_1598_ce;
assign grp_fu_3620_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din0;
assign grp_fu_3620_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1598_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1602_ce;
assign grp_fu_3624_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din0;
assign grp_fu_3624_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1602_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1606_ce;
assign grp_fu_3628_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din0;
assign grp_fu_3628_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1606_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1610_ce;
assign grp_fu_3632_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din0;
assign grp_fu_3632_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1610_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1614_ce;
assign grp_fu_3636_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din0;
assign grp_fu_3636_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1614_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1618_ce;
assign grp_fu_3640_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din0;
assign grp_fu_3640_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1618_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1622_ce;
assign grp_fu_3644_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din0;
assign grp_fu_3644_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1622_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1626_ce;
assign grp_fu_3648_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din0;
assign grp_fu_3648_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1626_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1630_ce;
assign grp_fu_3652_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din0;
assign grp_fu_3652_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1630_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1634_ce;
assign grp_fu_3656_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din0;
assign grp_fu_3656_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1634_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1638_ce;
assign grp_fu_3660_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din0;
assign grp_fu_3660_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1638_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1642_ce;
assign grp_fu_3664_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din0;
assign grp_fu_3664_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1642_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1646_ce;
assign grp_fu_3668_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din0;
assign grp_fu_3668_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1646_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1650_ce;
assign grp_fu_3672_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din0;
assign grp_fu_3672_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1650_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1654_ce;
assign grp_fu_3676_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din0;
assign grp_fu_3676_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1654_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1658_ce;
assign grp_fu_3680_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din0;
assign grp_fu_3680_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_grp_fu_1658_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_858_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_ap_start_reg;
assign input_activations_0_address0 = input_activations_0_address0_local;
assign input_activations_0_address1 = input_activations_0_address1_local;
assign input_activations_0_ce0 = input_activations_0_ce0_local;
assign input_activations_0_ce1 = input_activations_0_ce1_local;
assign input_activations_1_address0 = input_activations_1_address0_local;
assign input_activations_1_address1 = input_activations_1_address1_local;
assign input_activations_1_ce0 = input_activations_1_ce0_local;
assign input_activations_1_ce1 = input_activations_1_ce1_local;
assign input_activations_2_address0 = input_activations_2_address0_local;
assign input_activations_2_address1 = input_activations_2_address1_local;
assign input_activations_2_ce0 = input_activations_2_ce0_local;
assign input_activations_2_ce1 = input_activations_2_ce1_local;
assign input_activations_3_address0 = input_activations_3_address0_local;
assign input_activations_3_address1 = input_activations_3_address1_local;
assign input_activations_3_ce0 = input_activations_3_ce0_local;
assign input_activations_3_ce1 = input_activations_3_ce1_local;
assign input_activations_4_address0 = input_activations_4_address0_local;
assign input_activations_4_address1 = input_activations_4_address1_local;
assign input_activations_4_ce0 = input_activations_4_ce0_local;
assign input_activations_4_ce1 = input_activations_4_ce1_local;
assign input_activations_5_address0 = input_activations_5_address0_local;
assign input_activations_5_address1 = input_activations_5_address1_local;
assign input_activations_5_ce0 = input_activations_5_ce0_local;
assign input_activations_5_ce1 = input_activations_5_ce1_local;
assign input_activations_6_address0 = input_activations_6_address0_local;
assign input_activations_6_address1 = input_activations_6_address1_local;
assign input_activations_6_ce0 = input_activations_6_ce0_local;
assign input_activations_6_ce1 = input_activations_6_ce1_local;
assign input_activations_7_address0 = input_activations_7_address0_local;
assign input_activations_7_address1 = input_activations_7_address1_local;
assign input_activations_7_ce0 = input_activations_7_ce0_local;
assign input_activations_7_ce1 = input_activations_7_ce1_local;
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address0;
assign weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_address1;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce0;
assign weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_0_ce1;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address0;
assign weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_address1;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce0;
assign weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_1_ce1;
assign weights2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address0;
assign weights2_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_address1;
assign weights2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce0;
assign weights2_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_2_ce1;
assign weights2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address0;
assign weights2_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_address1;
assign weights2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce0;
assign weights2_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_3_ce1;
assign weights2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address0;
assign weights2_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_address1;
assign weights2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce0;
assign weights2_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_4_ce1;
assign weights2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address0;
assign weights2_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_address1;
assign weights2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce0;
assign weights2_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_5_ce1;
assign weights2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address0;
assign weights2_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_address1;
assign weights2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce0;
assign weights2_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_6_ce1;
assign weights2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address0;
assign weights2_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_address1;
assign weights2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce0;
assign weights2_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_44_1_fu_742_weights2_7_ce1;
endmodule 
