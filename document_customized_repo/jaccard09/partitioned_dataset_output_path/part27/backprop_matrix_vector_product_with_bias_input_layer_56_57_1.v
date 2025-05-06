
module backprop_matrix_vector_product_with_bias_input_layer_56_57_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_0_address0,biases1_0_ce0,biases1_0_q0,biases1_1_address0,biases1_1_ce0,biases1_1_q0,biases1_2_address0,biases1_2_ce0,biases1_2_q0,biases1_3_address0,biases1_3_ce0,biases1_3_q0,biases1_4_address0,biases1_4_ce0,biases1_4_q0,biases1_5_address0,biases1_5_ce0,biases1_5_q0,biases1_6_address0,biases1_6_ce0,biases1_6_q0,biases1_7_address0,biases1_7_ce0,biases1_7_q0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,weights1_2_address0,weights1_2_ce0,weights1_2_q0,weights1_2_address1,weights1_2_ce1,weights1_2_q1,weights1_3_address0,weights1_3_ce0,weights1_3_q0,weights1_3_address1,weights1_3_ce1,weights1_3_q1,weights1_4_address0,weights1_4_ce0,weights1_4_q0,weights1_4_address1,weights1_4_ce1,weights1_4_q1,weights1_5_address0,weights1_5_ce0,weights1_5_q0,weights1_5_address1,weights1_5_ce1,weights1_5_q1,weights1_6_address0,weights1_6_ce0,weights1_6_q0,weights1_6_address1,weights1_6_ce1,weights1_6_q1,weights1_7_address0,weights1_7_ce0,weights1_7_q0,weights1_7_address1,weights1_7_ce1,weights1_7_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_we1,activations_1_d1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_we1,activations_2_d1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_we1,activations_3_d1,activations_3_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_we1,activations_4_d1,activations_4_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_we1,activations_5_d1,activations_5_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_we1,activations_6_d1,activations_6_q1,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_we1,activations_7_d1,activations_7_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_0_address1,training_data_0_ce1,training_data_0_q1,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_1_address1,training_data_1_ce1,training_data_1_q1,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_2_address1,training_data_2_ce1,training_data_2_q1,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_3_address1,training_data_3_ce1,training_data_3_q1,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_4_address1,training_data_4_ce1,training_data_4_q1,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_5_address1,training_data_5_ce1,training_data_5_q1,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_6_address1,training_data_6_ce1,training_data_6_q1,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_7_address1,training_data_7_ce1,training_data_7_q1,idx,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] biases1_0_address0;
output   biases1_0_ce0;
input  [63:0] biases1_0_q0;
output  [2:0] biases1_1_address0;
output   biases1_1_ce0;
input  [63:0] biases1_1_q0;
output  [2:0] biases1_2_address0;
output   biases1_2_ce0;
input  [63:0] biases1_2_q0;
output  [2:0] biases1_3_address0;
output   biases1_3_ce0;
input  [63:0] biases1_3_q0;
output  [2:0] biases1_4_address0;
output   biases1_4_ce0;
input  [63:0] biases1_4_q0;
output  [2:0] biases1_5_address0;
output   biases1_5_ce0;
input  [63:0] biases1_5_q0;
output  [2:0] biases1_6_address0;
output   biases1_6_ce0;
input  [63:0] biases1_6_q0;
output  [2:0] biases1_7_address0;
output   biases1_7_ce0;
input  [63:0] biases1_7_q0;
output  [6:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [6:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
output  [6:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [6:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [6:0] weights1_2_address0;
output   weights1_2_ce0;
input  [63:0] weights1_2_q0;
output  [6:0] weights1_2_address1;
output   weights1_2_ce1;
input  [63:0] weights1_2_q1;
output  [6:0] weights1_3_address0;
output   weights1_3_ce0;
input  [63:0] weights1_3_q0;
output  [6:0] weights1_3_address1;
output   weights1_3_ce1;
input  [63:0] weights1_3_q1;
output  [6:0] weights1_4_address0;
output   weights1_4_ce0;
input  [63:0] weights1_4_q0;
output  [6:0] weights1_4_address1;
output   weights1_4_ce1;
input  [63:0] weights1_4_q1;
output  [6:0] weights1_5_address0;
output   weights1_5_ce0;
input  [63:0] weights1_5_q0;
output  [6:0] weights1_5_address1;
output   weights1_5_ce1;
input  [63:0] weights1_5_q1;
output  [6:0] weights1_6_address0;
output   weights1_6_ce0;
input  [63:0] weights1_6_q0;
output  [6:0] weights1_6_address1;
output   weights1_6_ce1;
input  [63:0] weights1_6_q1;
output  [6:0] weights1_7_address0;
output   weights1_7_ce0;
input  [63:0] weights1_7_q0;
output  [6:0] weights1_7_address1;
output   weights1_7_ce1;
input  [63:0] weights1_7_q1;
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
output   activations_1_we1;
output  [63:0] activations_1_d1;
input  [63:0] activations_1_q1;
output  [2:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [2:0] activations_2_address1;
output   activations_2_ce1;
output   activations_2_we1;
output  [63:0] activations_2_d1;
input  [63:0] activations_2_q1;
output  [2:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [2:0] activations_3_address1;
output   activations_3_ce1;
output   activations_3_we1;
output  [63:0] activations_3_d1;
input  [63:0] activations_3_q1;
output  [2:0] activations_4_address0;
output   activations_4_ce0;
output   activations_4_we0;
output  [63:0] activations_4_d0;
output  [2:0] activations_4_address1;
output   activations_4_ce1;
output   activations_4_we1;
output  [63:0] activations_4_d1;
input  [63:0] activations_4_q1;
output  [2:0] activations_5_address0;
output   activations_5_ce0;
output   activations_5_we0;
output  [63:0] activations_5_d0;
output  [2:0] activations_5_address1;
output   activations_5_ce1;
output   activations_5_we1;
output  [63:0] activations_5_d1;
input  [63:0] activations_5_q1;
output  [2:0] activations_6_address0;
output   activations_6_ce0;
output   activations_6_we0;
output  [63:0] activations_6_d0;
output  [2:0] activations_6_address1;
output   activations_6_ce1;
output   activations_6_we1;
output  [63:0] activations_6_d1;
input  [63:0] activations_6_q1;
output  [2:0] activations_7_address0;
output   activations_7_ce0;
output   activations_7_we0;
output  [63:0] activations_7_d0;
output  [2:0] activations_7_address1;
output   activations_7_ce1;
output   activations_7_we1;
output  [63:0] activations_7_d1;
input  [63:0] activations_7_q1;
output  [8:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [8:0] training_data_0_address1;
output   training_data_0_ce1;
input  [63:0] training_data_0_q1;
output  [8:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] training_data_1_address1;
output   training_data_1_ce1;
input  [63:0] training_data_1_q1;
output  [8:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [8:0] training_data_2_address1;
output   training_data_2_ce1;
input  [63:0] training_data_2_q1;
output  [8:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [8:0] training_data_3_address1;
output   training_data_3_ce1;
input  [63:0] training_data_3_q1;
output  [8:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [8:0] training_data_4_address1;
output   training_data_4_ce1;
input  [63:0] training_data_4_q1;
output  [8:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [8:0] training_data_5_address1;
output   training_data_5_ce1;
input  [63:0] training_data_5_q1;
output  [8:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [8:0] training_data_6_address1;
output   training_data_6_ce1;
input  [63:0] training_data_6_q1;
output  [8:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [8:0] training_data_7_address1;
output   training_data_7_ce1;
input  [63:0] training_data_7_q1;
input  [11:0] idx;
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
reg[2:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[2:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg[2:0] activations_1_address1;
reg activations_1_ce1;
reg activations_1_we1;
reg[2:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg[2:0] activations_2_address1;
reg activations_2_ce1;
reg activations_2_we1;
reg[2:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg[2:0] activations_3_address1;
reg activations_3_ce1;
reg activations_3_we1;
reg[2:0] activations_4_address0;
reg activations_4_ce0;
reg activations_4_we0;
reg[63:0] activations_4_d0;
reg[2:0] activations_4_address1;
reg activations_4_ce1;
reg activations_4_we1;
reg[2:0] activations_5_address0;
reg activations_5_ce0;
reg activations_5_we0;
reg[63:0] activations_5_d0;
reg[2:0] activations_5_address1;
reg activations_5_ce1;
reg activations_5_we1;
reg[2:0] activations_6_address0;
reg activations_6_ce0;
reg activations_6_we0;
reg[63:0] activations_6_d0;
reg[2:0] activations_6_address1;
reg activations_6_ce1;
reg activations_6_we1;
reg[2:0] activations_7_address0;
reg activations_7_ce0;
reg activations_7_we0;
reg[63:0] activations_7_d0;
reg[2:0] activations_7_address1;
reg activations_7_ce1;
reg activations_7_we1;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] empty_fu_1129_p1;
reg   [2:0] empty_reg_2420;
wire   [63:0] tmp_fu_1187_p19;
reg   [63:0] tmp_reg_2477;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_2_fu_1312_p19;
reg   [63:0] tmp_2_reg_2562;
wire    ap_CS_fsm_state3;
wire   [63:0] tmp_3_fu_1383_p19;
reg   [63:0] tmp_3_reg_2567;
wire   [63:0] tmp_4_fu_1508_p19;
reg   [63:0] tmp_4_reg_2652;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_5_fu_1579_p19;
reg   [63:0] tmp_5_reg_2657;
wire   [63:0] tmp_6_fu_1704_p19;
reg   [63:0] tmp_6_reg_2742;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_7_fu_1775_p19;
reg   [63:0] tmp_7_reg_2747;
wire   [63:0] tmp_8_fu_1900_p19;
reg   [63:0] tmp_8_reg_2832;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_9_fu_1971_p19;
reg   [63:0] tmp_9_reg_2837;
wire   [63:0] tmp_s_fu_2096_p19;
reg   [63:0] tmp_s_reg_2922;
wire    ap_CS_fsm_state7;
wire   [63:0] tmp_1_fu_2167_p19;
reg   [63:0] tmp_1_reg_2927;
wire   [63:0] tmp_10_fu_2292_p19;
reg   [63:0] tmp_10_reg_3012;
wire    ap_CS_fsm_state8;
wire   [63:0] tmp_11_fu_2364_p19;
reg   [63:0] tmp_11_reg_3017;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_ready;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_d0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_ce;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_ready;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_d0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce1;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_ce0;
wire   [2:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln31_fu_1143_p1;
wire   [63:0] p_cast_fu_1241_p1;
wire   [63:0] p_cast4_fu_1268_p1;
wire   [63:0] p_cast5_fu_1437_p1;
wire   [63:0] p_cast6_fu_1464_p1;
wire   [63:0] p_cast7_fu_1633_p1;
wire   [63:0] p_cast8_fu_1660_p1;
wire   [63:0] p_cast9_fu_1829_p1;
wire   [63:0] p_cast10_fu_1856_p1;
wire   [63:0] p_cast11_fu_2025_p1;
wire   [63:0] p_cast12_fu_2052_p1;
wire   [63:0] p_cast13_fu_2221_p1;
wire   [63:0] p_cast14_fu_2248_p1;
reg    training_data_0_ce0_local;
reg   [8:0] training_data_0_address0_local;
reg    training_data_0_ce1_local;
reg   [8:0] training_data_0_address1_local;
reg    training_data_1_ce0_local;
reg   [8:0] training_data_1_address0_local;
reg    training_data_1_ce1_local;
reg   [8:0] training_data_1_address1_local;
reg    training_data_2_ce0_local;
reg   [8:0] training_data_2_address0_local;
reg    training_data_2_ce1_local;
reg   [8:0] training_data_2_address1_local;
reg    training_data_3_ce0_local;
reg   [8:0] training_data_3_address0_local;
reg    training_data_3_ce1_local;
reg   [8:0] training_data_3_address1_local;
reg    training_data_4_ce0_local;
reg   [8:0] training_data_4_address0_local;
reg    training_data_4_ce1_local;
reg   [8:0] training_data_4_address1_local;
reg    training_data_5_ce0_local;
reg   [8:0] training_data_5_address0_local;
reg    training_data_5_ce1_local;
reg   [8:0] training_data_5_address1_local;
reg    training_data_6_ce0_local;
reg   [8:0] training_data_6_address0_local;
reg    training_data_6_ce1_local;
reg   [8:0] training_data_6_address1_local;
reg    training_data_7_ce0_local;
reg   [8:0] training_data_7_address0_local;
reg    training_data_7_ce1_local;
reg   [8:0] training_data_7_address1_local;
wire   [8:0] lshr_ln_fu_1133_p4;
wire   [63:0] tmp_fu_1187_p2;
wire   [63:0] tmp_fu_1187_p4;
wire   [63:0] tmp_fu_1187_p6;
wire   [63:0] tmp_fu_1187_p8;
wire   [63:0] tmp_fu_1187_p10;
wire   [63:0] tmp_fu_1187_p12;
wire   [63:0] tmp_fu_1187_p14;
wire   [63:0] tmp_fu_1187_p16;
wire   [63:0] tmp_fu_1187_p17;
wire   [11:0] p_sum_fu_1226_p2;
wire   [8:0] tmp_15_fu_1231_p4;
wire   [11:0] p_sum2_fu_1253_p2;
wire   [8:0] tmp_16_fu_1258_p4;
wire   [63:0] tmp_2_fu_1312_p2;
wire   [63:0] tmp_2_fu_1312_p4;
wire   [63:0] tmp_2_fu_1312_p6;
wire   [63:0] tmp_2_fu_1312_p8;
wire   [63:0] tmp_2_fu_1312_p10;
wire   [63:0] tmp_2_fu_1312_p12;
wire   [63:0] tmp_2_fu_1312_p14;
wire   [63:0] tmp_2_fu_1312_p16;
wire   [63:0] tmp_2_fu_1312_p17;
wire   [63:0] tmp_3_fu_1383_p2;
wire   [63:0] tmp_3_fu_1383_p4;
wire   [63:0] tmp_3_fu_1383_p6;
wire   [63:0] tmp_3_fu_1383_p8;
wire   [63:0] tmp_3_fu_1383_p10;
wire   [63:0] tmp_3_fu_1383_p12;
wire   [63:0] tmp_3_fu_1383_p14;
wire   [63:0] tmp_3_fu_1383_p16;
wire   [63:0] tmp_3_fu_1383_p17;
wire   [11:0] p_sum4_fu_1422_p2;
wire   [8:0] tmp_17_fu_1427_p4;
wire   [11:0] p_sum6_fu_1449_p2;
wire   [8:0] tmp_18_fu_1454_p4;
wire   [63:0] tmp_4_fu_1508_p2;
wire   [63:0] tmp_4_fu_1508_p4;
wire   [63:0] tmp_4_fu_1508_p6;
wire   [63:0] tmp_4_fu_1508_p8;
wire   [63:0] tmp_4_fu_1508_p10;
wire   [63:0] tmp_4_fu_1508_p12;
wire   [63:0] tmp_4_fu_1508_p14;
wire   [63:0] tmp_4_fu_1508_p16;
wire   [63:0] tmp_4_fu_1508_p17;
wire   [63:0] tmp_5_fu_1579_p2;
wire   [63:0] tmp_5_fu_1579_p4;
wire   [63:0] tmp_5_fu_1579_p6;
wire   [63:0] tmp_5_fu_1579_p8;
wire   [63:0] tmp_5_fu_1579_p10;
wire   [63:0] tmp_5_fu_1579_p12;
wire   [63:0] tmp_5_fu_1579_p14;
wire   [63:0] tmp_5_fu_1579_p16;
wire   [63:0] tmp_5_fu_1579_p17;
wire   [11:0] p_sum8_fu_1618_p2;
wire   [8:0] tmp_19_fu_1623_p4;
wire   [11:0] p_sum10_fu_1645_p2;
wire   [8:0] tmp_20_fu_1650_p4;
wire   [63:0] tmp_6_fu_1704_p2;
wire   [63:0] tmp_6_fu_1704_p4;
wire   [63:0] tmp_6_fu_1704_p6;
wire   [63:0] tmp_6_fu_1704_p8;
wire   [63:0] tmp_6_fu_1704_p10;
wire   [63:0] tmp_6_fu_1704_p12;
wire   [63:0] tmp_6_fu_1704_p14;
wire   [63:0] tmp_6_fu_1704_p16;
wire   [63:0] tmp_6_fu_1704_p17;
wire   [63:0] tmp_7_fu_1775_p2;
wire   [63:0] tmp_7_fu_1775_p4;
wire   [63:0] tmp_7_fu_1775_p6;
wire   [63:0] tmp_7_fu_1775_p8;
wire   [63:0] tmp_7_fu_1775_p10;
wire   [63:0] tmp_7_fu_1775_p12;
wire   [63:0] tmp_7_fu_1775_p14;
wire   [63:0] tmp_7_fu_1775_p16;
wire   [63:0] tmp_7_fu_1775_p17;
wire   [11:0] p_sum12_fu_1814_p2;
wire   [8:0] tmp_21_fu_1819_p4;
wire   [11:0] p_sum14_fu_1841_p2;
wire   [8:0] tmp_22_fu_1846_p4;
wire   [63:0] tmp_8_fu_1900_p2;
wire   [63:0] tmp_8_fu_1900_p4;
wire   [63:0] tmp_8_fu_1900_p6;
wire   [63:0] tmp_8_fu_1900_p8;
wire   [63:0] tmp_8_fu_1900_p10;
wire   [63:0] tmp_8_fu_1900_p12;
wire   [63:0] tmp_8_fu_1900_p14;
wire   [63:0] tmp_8_fu_1900_p16;
wire   [63:0] tmp_8_fu_1900_p17;
wire   [63:0] tmp_9_fu_1971_p2;
wire   [63:0] tmp_9_fu_1971_p4;
wire   [63:0] tmp_9_fu_1971_p6;
wire   [63:0] tmp_9_fu_1971_p8;
wire   [63:0] tmp_9_fu_1971_p10;
wire   [63:0] tmp_9_fu_1971_p12;
wire   [63:0] tmp_9_fu_1971_p14;
wire   [63:0] tmp_9_fu_1971_p16;
wire   [63:0] tmp_9_fu_1971_p17;
wire   [11:0] p_sum16_fu_2010_p2;
wire   [8:0] tmp_23_fu_2015_p4;
wire   [11:0] p_sum18_fu_2037_p2;
wire   [8:0] tmp_24_fu_2042_p4;
wire   [63:0] tmp_s_fu_2096_p2;
wire   [63:0] tmp_s_fu_2096_p4;
wire   [63:0] tmp_s_fu_2096_p6;
wire   [63:0] tmp_s_fu_2096_p8;
wire   [63:0] tmp_s_fu_2096_p10;
wire   [63:0] tmp_s_fu_2096_p12;
wire   [63:0] tmp_s_fu_2096_p14;
wire   [63:0] tmp_s_fu_2096_p16;
wire   [63:0] tmp_s_fu_2096_p17;
wire   [63:0] tmp_1_fu_2167_p2;
wire   [63:0] tmp_1_fu_2167_p4;
wire   [63:0] tmp_1_fu_2167_p6;
wire   [63:0] tmp_1_fu_2167_p8;
wire   [63:0] tmp_1_fu_2167_p10;
wire   [63:0] tmp_1_fu_2167_p12;
wire   [63:0] tmp_1_fu_2167_p14;
wire   [63:0] tmp_1_fu_2167_p16;
wire   [63:0] tmp_1_fu_2167_p17;
wire   [11:0] p_sum20_fu_2206_p2;
wire   [8:0] tmp_25_fu_2211_p4;
wire   [11:0] p_sum22_fu_2233_p2;
wire   [8:0] tmp_26_fu_2238_p4;
wire   [63:0] tmp_10_fu_2292_p2;
wire   [63:0] tmp_10_fu_2292_p4;
wire   [63:0] tmp_10_fu_2292_p6;
wire   [63:0] tmp_10_fu_2292_p8;
wire   [63:0] tmp_10_fu_2292_p10;
wire   [63:0] tmp_10_fu_2292_p12;
wire   [63:0] tmp_10_fu_2292_p14;
wire   [63:0] tmp_10_fu_2292_p16;
wire   [63:0] tmp_10_fu_2292_p17;
wire   [63:0] tmp_11_fu_2364_p2;
wire   [63:0] tmp_11_fu_2364_p4;
wire   [63:0] tmp_11_fu_2364_p6;
wire   [63:0] tmp_11_fu_2364_p8;
wire   [63:0] tmp_11_fu_2364_p10;
wire   [63:0] tmp_11_fu_2364_p12;
wire   [63:0] tmp_11_fu_2364_p14;
wire   [63:0] tmp_11_fu_2364_p16;
wire   [63:0] tmp_11_fu_2364_p17;
reg   [63:0] grp_fu_3022_p0;
reg   [63:0] grp_fu_3022_p1;
reg   [1:0] grp_fu_3022_opcode;
reg    grp_fu_3022_ce;
reg    grp_fu_3026_ce;
reg    grp_fu_3030_ce;
reg    grp_fu_3034_ce;
reg    grp_fu_3038_ce;
reg    grp_fu_3042_ce;
reg    grp_fu_3046_ce;
reg    grp_fu_3050_ce;
reg    grp_fu_3054_ce;
reg    grp_fu_3058_ce;
reg    grp_fu_3062_ce;
reg    grp_fu_3066_ce;
reg    grp_fu_3070_ce;
reg    grp_fu_3074_ce;
reg    grp_fu_3078_ce;
reg    grp_fu_3082_ce;
reg    grp_fu_3086_ce;
reg    grp_fu_3090_ce;
reg    grp_fu_3094_ce;
reg    grp_fu_3098_ce;
reg    grp_fu_3102_ce;
reg    grp_fu_3106_ce;
reg    grp_fu_3110_ce;
reg    grp_fu_3114_ce;
reg    grp_fu_3118_ce;
reg    grp_fu_3122_ce;
reg    grp_fu_3126_ce;
reg    grp_fu_3130_ce;
reg    grp_fu_3134_ce;
reg    grp_fu_3138_ce;
reg    grp_fu_3142_ce;
reg    grp_fu_3146_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire   [2:0] tmp_fu_1187_p1;
wire   [2:0] tmp_fu_1187_p3;
wire   [2:0] tmp_fu_1187_p5;
wire   [2:0] tmp_fu_1187_p7;
wire  signed [2:0] tmp_fu_1187_p9;
wire  signed [2:0] tmp_fu_1187_p11;
wire  signed [2:0] tmp_fu_1187_p13;
wire  signed [2:0] tmp_fu_1187_p15;
wire  signed [2:0] tmp_2_fu_1312_p1;
wire   [2:0] tmp_2_fu_1312_p3;
wire   [2:0] tmp_2_fu_1312_p5;
wire   [2:0] tmp_2_fu_1312_p7;
wire   [2:0] tmp_2_fu_1312_p9;
wire  signed [2:0] tmp_2_fu_1312_p11;
wire  signed [2:0] tmp_2_fu_1312_p13;
wire  signed [2:0] tmp_2_fu_1312_p15;
wire  signed [2:0] tmp_3_fu_1383_p1;
wire  signed [2:0] tmp_3_fu_1383_p3;
wire   [2:0] tmp_3_fu_1383_p5;
wire   [2:0] tmp_3_fu_1383_p7;
wire   [2:0] tmp_3_fu_1383_p9;
wire   [2:0] tmp_3_fu_1383_p11;
wire  signed [2:0] tmp_3_fu_1383_p13;
wire  signed [2:0] tmp_3_fu_1383_p15;
wire  signed [2:0] tmp_4_fu_1508_p1;
wire  signed [2:0] tmp_4_fu_1508_p3;
wire  signed [2:0] tmp_4_fu_1508_p5;
wire   [2:0] tmp_4_fu_1508_p7;
wire   [2:0] tmp_4_fu_1508_p9;
wire   [2:0] tmp_4_fu_1508_p11;
wire   [2:0] tmp_4_fu_1508_p13;
wire  signed [2:0] tmp_4_fu_1508_p15;
wire  signed [2:0] tmp_5_fu_1579_p1;
wire  signed [2:0] tmp_5_fu_1579_p3;
wire  signed [2:0] tmp_5_fu_1579_p5;
wire  signed [2:0] tmp_5_fu_1579_p7;
wire   [2:0] tmp_5_fu_1579_p9;
wire   [2:0] tmp_5_fu_1579_p11;
wire   [2:0] tmp_5_fu_1579_p13;
wire   [2:0] tmp_5_fu_1579_p15;
wire   [2:0] tmp_6_fu_1704_p1;
wire  signed [2:0] tmp_6_fu_1704_p3;
wire  signed [2:0] tmp_6_fu_1704_p5;
wire  signed [2:0] tmp_6_fu_1704_p7;
wire  signed [2:0] tmp_6_fu_1704_p9;
wire   [2:0] tmp_6_fu_1704_p11;
wire   [2:0] tmp_6_fu_1704_p13;
wire   [2:0] tmp_6_fu_1704_p15;
wire   [2:0] tmp_7_fu_1775_p1;
wire   [2:0] tmp_7_fu_1775_p3;
wire  signed [2:0] tmp_7_fu_1775_p5;
wire  signed [2:0] tmp_7_fu_1775_p7;
wire  signed [2:0] tmp_7_fu_1775_p9;
wire  signed [2:0] tmp_7_fu_1775_p11;
wire   [2:0] tmp_7_fu_1775_p13;
wire   [2:0] tmp_7_fu_1775_p15;
wire   [2:0] tmp_8_fu_1900_p1;
wire   [2:0] tmp_8_fu_1900_p3;
wire   [2:0] tmp_8_fu_1900_p5;
wire  signed [2:0] tmp_8_fu_1900_p7;
wire  signed [2:0] tmp_8_fu_1900_p9;
wire  signed [2:0] tmp_8_fu_1900_p11;
wire  signed [2:0] tmp_8_fu_1900_p13;
wire   [2:0] tmp_8_fu_1900_p15;
wire   [2:0] tmp_9_fu_1971_p1;
wire   [2:0] tmp_9_fu_1971_p3;
wire   [2:0] tmp_9_fu_1971_p5;
wire   [2:0] tmp_9_fu_1971_p7;
wire  signed [2:0] tmp_9_fu_1971_p9;
wire  signed [2:0] tmp_9_fu_1971_p11;
wire  signed [2:0] tmp_9_fu_1971_p13;
wire  signed [2:0] tmp_9_fu_1971_p15;
wire  signed [2:0] tmp_s_fu_2096_p1;
wire   [2:0] tmp_s_fu_2096_p3;
wire   [2:0] tmp_s_fu_2096_p5;
wire   [2:0] tmp_s_fu_2096_p7;
wire   [2:0] tmp_s_fu_2096_p9;
wire  signed [2:0] tmp_s_fu_2096_p11;
wire  signed [2:0] tmp_s_fu_2096_p13;
wire  signed [2:0] tmp_s_fu_2096_p15;
wire  signed [2:0] tmp_1_fu_2167_p1;
wire  signed [2:0] tmp_1_fu_2167_p3;
wire   [2:0] tmp_1_fu_2167_p5;
wire   [2:0] tmp_1_fu_2167_p7;
wire   [2:0] tmp_1_fu_2167_p9;
wire   [2:0] tmp_1_fu_2167_p11;
wire  signed [2:0] tmp_1_fu_2167_p13;
wire  signed [2:0] tmp_1_fu_2167_p15;
wire  signed [2:0] tmp_10_fu_2292_p1;
wire  signed [2:0] tmp_10_fu_2292_p3;
wire  signed [2:0] tmp_10_fu_2292_p5;
wire   [2:0] tmp_10_fu_2292_p7;
wire   [2:0] tmp_10_fu_2292_p9;
wire   [2:0] tmp_10_fu_2292_p11;
wire   [2:0] tmp_10_fu_2292_p13;
wire  signed [2:0] tmp_10_fu_2292_p15;
wire  signed [2:0] tmp_11_fu_2364_p1;
wire  signed [2:0] tmp_11_fu_2364_p3;
wire  signed [2:0] tmp_11_fu_2364_p5;
wire  signed [2:0] tmp_11_fu_2364_p7;
wire   [2:0] tmp_11_fu_2364_p9;
wire   [2:0] tmp_11_fu_2364_p11;
wire   [2:0] tmp_11_fu_2364_p13;
wire   [2:0] tmp_11_fu_2364_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_ready),.activations_7_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce1),.activations_7_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we1),.activations_7_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d1),.activations_6_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce1),.activations_6_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we1),.activations_6_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d1),.activations_5_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce1),.activations_5_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we1),.activations_5_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d1),.activations_4_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce1),.activations_4_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we1),.activations_4_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d1),.activations_3_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce1),.activations_3_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we1),.activations_3_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d1),.activations_2_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce1),.activations_2_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we1),.activations_2_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce1),.activations_1_we1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we1),.activations_1_d1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_d0),.weights1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address0),.weights1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce0),.weights1_0_q0(weights1_0_q0),.weights1_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address1),.weights1_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.tmp(tmp_reg_2477),.weights1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address0),.weights1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce0),.weights1_1_q0(weights1_1_q0),.weights1_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address1),.weights1_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.tmp_2(tmp_2_reg_2562),.weights1_2_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address0),.weights1_2_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce0),.weights1_2_q0(weights1_2_q0),.weights1_2_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address1),.weights1_2_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce1),.weights1_2_q1(weights1_2_q1),.tmp_3(tmp_3_reg_2567),.weights1_3_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address0),.weights1_3_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce0),.weights1_3_q0(weights1_3_q0),.weights1_3_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address1),.weights1_3_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce1),.weights1_3_q1(weights1_3_q1),.tmp_4(tmp_4_reg_2652),.weights1_4_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address0),.weights1_4_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce0),.weights1_4_q0(weights1_4_q0),.weights1_4_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address1),.weights1_4_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce1),.weights1_4_q1(weights1_4_q1),.tmp_5(tmp_5_reg_2657),.weights1_5_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address0),.weights1_5_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce0),.weights1_5_q0(weights1_5_q0),.weights1_5_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address1),.weights1_5_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce1),.weights1_5_q1(weights1_5_q1),.tmp_6(tmp_6_reg_2742),.weights1_6_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address0),.weights1_6_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce0),.weights1_6_q0(weights1_6_q0),.weights1_6_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address1),.weights1_6_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce1),.weights1_6_q1(weights1_6_q1),.tmp_7(tmp_7_reg_2747),.weights1_7_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address0),.weights1_7_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce0),.weights1_7_q0(weights1_7_q0),.weights1_7_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address1),.weights1_7_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce1),.weights1_7_q1(weights1_7_q1),.tmp_8(tmp_8_reg_2832),.tmp_9(tmp_9_reg_2837),.tmp_s(tmp_s_reg_2922),.tmp_1(tmp_1_reg_2927),.tmp_10(tmp_10_reg_3012),.tmp_11(tmp_11_reg_3017),.grp_fu_3022_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din0),.grp_fu_3022_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din1),.grp_fu_3022_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_opcode),.grp_fu_3022_p_dout0(grp_fu_3556_p_dout0),.grp_fu_3022_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_ce),.grp_fu_3026_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din0),.grp_fu_3026_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din1),.grp_fu_3026_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_opcode),.grp_fu_3026_p_dout0(grp_fu_3560_p_dout0),.grp_fu_3026_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_ce),.grp_fu_3030_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din0),.grp_fu_3030_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din1),.grp_fu_3030_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_opcode),.grp_fu_3030_p_dout0(grp_fu_3564_p_dout0),.grp_fu_3030_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_ce),.grp_fu_3034_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din0),.grp_fu_3034_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din1),.grp_fu_3034_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_opcode),.grp_fu_3034_p_dout0(grp_fu_3568_p_dout0),.grp_fu_3034_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_ce),.grp_fu_3038_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din0),.grp_fu_3038_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din1),.grp_fu_3038_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_opcode),.grp_fu_3038_p_dout0(grp_fu_3572_p_dout0),.grp_fu_3038_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_ce),.grp_fu_3042_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din0),.grp_fu_3042_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din1),.grp_fu_3042_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_opcode),.grp_fu_3042_p_dout0(grp_fu_3576_p_dout0),.grp_fu_3042_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_ce),.grp_fu_3046_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din0),.grp_fu_3046_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din1),.grp_fu_3046_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_opcode),.grp_fu_3046_p_dout0(grp_fu_3580_p_dout0),.grp_fu_3046_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_ce),.grp_fu_3050_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din0),.grp_fu_3050_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din1),.grp_fu_3050_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_opcode),.grp_fu_3050_p_dout0(grp_fu_3584_p_dout0),.grp_fu_3050_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_ce),.grp_fu_3054_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din0),.grp_fu_3054_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din1),.grp_fu_3054_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_opcode),.grp_fu_3054_p_dout0(grp_fu_3588_p_dout0),.grp_fu_3054_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_ce),.grp_fu_3058_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din0),.grp_fu_3058_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din1),.grp_fu_3058_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_opcode),.grp_fu_3058_p_dout0(grp_fu_3592_p_dout0),.grp_fu_3058_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_ce),.grp_fu_3062_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din0),.grp_fu_3062_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din1),.grp_fu_3062_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_opcode),.grp_fu_3062_p_dout0(grp_fu_3596_p_dout0),.grp_fu_3062_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_ce),.grp_fu_3066_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din0),.grp_fu_3066_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din1),.grp_fu_3066_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_opcode),.grp_fu_3066_p_dout0(grp_fu_3600_p_dout0),.grp_fu_3066_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_ce),.grp_fu_3070_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din0),.grp_fu_3070_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din1),.grp_fu_3070_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_opcode),.grp_fu_3070_p_dout0(grp_fu_3604_p_dout0),.grp_fu_3070_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_ce),.grp_fu_3074_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din0),.grp_fu_3074_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din1),.grp_fu_3074_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_opcode),.grp_fu_3074_p_dout0(grp_fu_3608_p_dout0),.grp_fu_3074_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_ce),.grp_fu_3078_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din0),.grp_fu_3078_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din1),.grp_fu_3078_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_opcode),.grp_fu_3078_p_dout0(grp_fu_3612_p_dout0),.grp_fu_3078_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_ce),.grp_fu_3082_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din0),.grp_fu_3082_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din1),.grp_fu_3082_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_opcode),.grp_fu_3082_p_dout0(grp_fu_3616_p_dout0),.grp_fu_3082_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_ce),.grp_fu_3086_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din0),.grp_fu_3086_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din1),.grp_fu_3086_p_dout0(grp_fu_3620_p_dout0),.grp_fu_3086_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_ce),.grp_fu_3090_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din0),.grp_fu_3090_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din1),.grp_fu_3090_p_dout0(grp_fu_3624_p_dout0),.grp_fu_3090_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_ce),.grp_fu_3094_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din0),.grp_fu_3094_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din1),.grp_fu_3094_p_dout0(grp_fu_3628_p_dout0),.grp_fu_3094_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_ce),.grp_fu_3098_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din0),.grp_fu_3098_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din1),.grp_fu_3098_p_dout0(grp_fu_3632_p_dout0),.grp_fu_3098_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_ce),.grp_fu_3102_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din0),.grp_fu_3102_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din1),.grp_fu_3102_p_dout0(grp_fu_3636_p_dout0),.grp_fu_3102_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_ce),.grp_fu_3106_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din0),.grp_fu_3106_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din1),.grp_fu_3106_p_dout0(grp_fu_3640_p_dout0),.grp_fu_3106_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_ce),.grp_fu_3110_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din0),.grp_fu_3110_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din1),.grp_fu_3110_p_dout0(grp_fu_3644_p_dout0),.grp_fu_3110_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_ce),.grp_fu_3114_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din0),.grp_fu_3114_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din1),.grp_fu_3114_p_dout0(grp_fu_3648_p_dout0),.grp_fu_3114_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_ce),.grp_fu_3118_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din0),.grp_fu_3118_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din1),.grp_fu_3118_p_dout0(grp_fu_3652_p_dout0),.grp_fu_3118_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_ce),.grp_fu_3122_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din0),.grp_fu_3122_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din1),.grp_fu_3122_p_dout0(grp_fu_3656_p_dout0),.grp_fu_3122_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_ce),.grp_fu_3126_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din0),.grp_fu_3126_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din1),.grp_fu_3126_p_dout0(grp_fu_3660_p_dout0),.grp_fu_3126_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_ce),.grp_fu_3130_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din0),.grp_fu_3130_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din1),.grp_fu_3130_p_dout0(grp_fu_3664_p_dout0),.grp_fu_3130_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_ce),.grp_fu_3134_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din0),.grp_fu_3134_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din1),.grp_fu_3134_p_dout0(grp_fu_3668_p_dout0),.grp_fu_3134_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_ce),.grp_fu_3138_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din0),.grp_fu_3138_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din1),.grp_fu_3138_p_dout0(grp_fu_3672_p_dout0),.grp_fu_3138_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_ce),.grp_fu_3142_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din0),.grp_fu_3142_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din1),.grp_fu_3142_p_dout0(grp_fu_3676_p_dout0),.grp_fu_3142_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_ce),.grp_fu_3146_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din0),.grp_fu_3146_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din1),.grp_fu_3146_p_dout0(grp_fu_3680_p_dout0),.grp_fu_3146_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_ce));
backprop_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_ready),.activations_7_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce1),.activations_7_q1(activations_7_q1),.activations_6_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce1),.activations_6_q1(activations_6_q1),.activations_5_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce1),.activations_5_q1(activations_5_q1),.activations_4_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce1),.activations_4_q1(activations_4_q1),.activations_3_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases1_0_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_address0),.biases1_0_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_ce0),.biases1_0_q0(biases1_0_q0),.biases1_1_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_address0),.biases1_1_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_ce0),.biases1_1_q0(biases1_1_q0),.biases1_2_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_address0),.biases1_2_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_ce0),.biases1_2_q0(biases1_2_q0),.biases1_3_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_address0),.biases1_3_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_ce0),.biases1_3_q0(biases1_3_q0),.biases1_4_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_address0),.biases1_4_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_ce0),.biases1_4_q0(biases1_4_q0),.biases1_5_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_address0),.biases1_5_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_ce0),.biases1_5_q0(biases1_5_q0),.biases1_6_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_address0),.biases1_6_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_ce0),.biases1_6_q0(biases1_6_q0),.biases1_7_address0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_address0),.biases1_7_ce0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_ce0),.biases1_7_q0(biases1_7_q0),.grp_fu_3022_p_din0(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din0),.grp_fu_3022_p_din1(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din1),.grp_fu_3022_p_opcode(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_opcode),.grp_fu_3022_p_dout0(grp_fu_3556_p_dout0),.grp_fu_3022_p_ce(grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U88(.din0(tmp_fu_1187_p2),.din1(tmp_fu_1187_p4),.din2(tmp_fu_1187_p6),.din3(tmp_fu_1187_p8),.din4(tmp_fu_1187_p10),.din5(tmp_fu_1187_p12),.din6(tmp_fu_1187_p14),.din7(tmp_fu_1187_p16),.def(tmp_fu_1187_p17),.sel(empty_reg_2420),.dout(tmp_fu_1187_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U89(.din0(tmp_2_fu_1312_p2),.din1(tmp_2_fu_1312_p4),.din2(tmp_2_fu_1312_p6),.din3(tmp_2_fu_1312_p8),.din4(tmp_2_fu_1312_p10),.din5(tmp_2_fu_1312_p12),.din6(tmp_2_fu_1312_p14),.din7(tmp_2_fu_1312_p16),.def(tmp_2_fu_1312_p17),.sel(empty_reg_2420),.dout(tmp_2_fu_1312_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U90(.din0(tmp_3_fu_1383_p2),.din1(tmp_3_fu_1383_p4),.din2(tmp_3_fu_1383_p6),.din3(tmp_3_fu_1383_p8),.din4(tmp_3_fu_1383_p10),.din5(tmp_3_fu_1383_p12),.din6(tmp_3_fu_1383_p14),.din7(tmp_3_fu_1383_p16),.def(tmp_3_fu_1383_p17),.sel(empty_reg_2420),.dout(tmp_3_fu_1383_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U91(.din0(tmp_4_fu_1508_p2),.din1(tmp_4_fu_1508_p4),.din2(tmp_4_fu_1508_p6),.din3(tmp_4_fu_1508_p8),.din4(tmp_4_fu_1508_p10),.din5(tmp_4_fu_1508_p12),.din6(tmp_4_fu_1508_p14),.din7(tmp_4_fu_1508_p16),.def(tmp_4_fu_1508_p17),.sel(empty_reg_2420),.dout(tmp_4_fu_1508_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U92(.din0(tmp_5_fu_1579_p2),.din1(tmp_5_fu_1579_p4),.din2(tmp_5_fu_1579_p6),.din3(tmp_5_fu_1579_p8),.din4(tmp_5_fu_1579_p10),.din5(tmp_5_fu_1579_p12),.din6(tmp_5_fu_1579_p14),.din7(tmp_5_fu_1579_p16),.def(tmp_5_fu_1579_p17),.sel(empty_reg_2420),.dout(tmp_5_fu_1579_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U93(.din0(tmp_6_fu_1704_p2),.din1(tmp_6_fu_1704_p4),.din2(tmp_6_fu_1704_p6),.din3(tmp_6_fu_1704_p8),.din4(tmp_6_fu_1704_p10),.din5(tmp_6_fu_1704_p12),.din6(tmp_6_fu_1704_p14),.din7(tmp_6_fu_1704_p16),.def(tmp_6_fu_1704_p17),.sel(empty_reg_2420),.dout(tmp_6_fu_1704_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h7 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.CASE7( 3'h1 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U94(.din0(tmp_7_fu_1775_p2),.din1(tmp_7_fu_1775_p4),.din2(tmp_7_fu_1775_p6),.din3(tmp_7_fu_1775_p8),.din4(tmp_7_fu_1775_p10),.din5(tmp_7_fu_1775_p12),.din6(tmp_7_fu_1775_p14),.din7(tmp_7_fu_1775_p16),.def(tmp_7_fu_1775_p17),.sel(empty_reg_2420),.dout(tmp_7_fu_1775_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U95(.din0(tmp_8_fu_1900_p2),.din1(tmp_8_fu_1900_p4),.din2(tmp_8_fu_1900_p6),.din3(tmp_8_fu_1900_p8),.din4(tmp_8_fu_1900_p10),.din5(tmp_8_fu_1900_p12),.din6(tmp_8_fu_1900_p14),.din7(tmp_8_fu_1900_p16),.def(tmp_8_fu_1900_p17),.sel(empty_reg_2420),.dout(tmp_8_fu_1900_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U96(.din0(tmp_9_fu_1971_p2),.din1(tmp_9_fu_1971_p4),.din2(tmp_9_fu_1971_p6),.din3(tmp_9_fu_1971_p8),.din4(tmp_9_fu_1971_p10),.din5(tmp_9_fu_1971_p12),.din6(tmp_9_fu_1971_p14),.din7(tmp_9_fu_1971_p16),.def(tmp_9_fu_1971_p17),.sel(empty_reg_2420),.dout(tmp_9_fu_1971_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U97(.din0(tmp_s_fu_2096_p2),.din1(tmp_s_fu_2096_p4),.din2(tmp_s_fu_2096_p6),.din3(tmp_s_fu_2096_p8),.din4(tmp_s_fu_2096_p10),.din5(tmp_s_fu_2096_p12),.din6(tmp_s_fu_2096_p14),.din7(tmp_s_fu_2096_p16),.def(tmp_s_fu_2096_p17),.sel(empty_reg_2420),.dout(tmp_s_fu_2096_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U98(.din0(tmp_1_fu_2167_p2),.din1(tmp_1_fu_2167_p4),.din2(tmp_1_fu_2167_p6),.din3(tmp_1_fu_2167_p8),.din4(tmp_1_fu_2167_p10),.din5(tmp_1_fu_2167_p12),.din6(tmp_1_fu_2167_p14),.din7(tmp_1_fu_2167_p16),.def(tmp_1_fu_2167_p17),.sel(empty_reg_2420),.dout(tmp_1_fu_2167_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U99(.din0(tmp_10_fu_2292_p2),.din1(tmp_10_fu_2292_p4),.din2(tmp_10_fu_2292_p6),.din3(tmp_10_fu_2292_p8),.din4(tmp_10_fu_2292_p10),.din5(tmp_10_fu_2292_p12),.din6(tmp_10_fu_2292_p14),.din7(tmp_10_fu_2292_p16),.def(tmp_10_fu_2292_p17),.sel(empty_reg_2420),.dout(tmp_10_fu_2292_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U100(.din0(tmp_11_fu_2364_p2),.din1(tmp_11_fu_2364_p4),.din2(tmp_11_fu_2364_p6),.din3(tmp_11_fu_2364_p8),.din4(tmp_11_fu_2364_p10),.din5(tmp_11_fu_2364_p12),.din6(tmp_11_fu_2364_p14),.din7(tmp_11_fu_2364_p16),.def(tmp_11_fu_2364_p17),.sel(empty_reg_2420),.dout(tmp_11_fu_2364_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_2420 <= empty_fu_1129_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_10_reg_3012 <= tmp_10_fu_2292_p19;
        tmp_11_reg_3017 <= tmp_11_fu_2364_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_1_reg_2927 <= tmp_1_fu_2167_p19;
        tmp_s_reg_2922 <= tmp_s_fu_2096_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_2_reg_2562 <= tmp_2_fu_1312_p19;
        tmp_3_reg_2567 <= tmp_3_fu_1383_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_4_reg_2652 <= tmp_4_fu_1508_p19;
        tmp_5_reg_2657 <= tmp_5_fu_1579_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_6_reg_2742 <= tmp_6_fu_1704_p19;
        tmp_7_reg_2747 <= tmp_7_fu_1775_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_8_reg_2832 <= tmp_8_fu_1900_p19;
        tmp_9_reg_2837 <= tmp_9_fu_1971_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_reg_2477 <= tmp_fu_1187_p19;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_address0;
    end else begin
        activations_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_ce0;
    end else begin
        activations_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_d0;
    end else begin
        activations_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_0_we0;
    end else begin
        activations_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address0;
    end else begin
        activations_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_address1;
    end else begin
        activations_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce0;
    end else begin
        activations_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d0;
    end else begin
        activations_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we0;
    end else begin
        activations_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_1_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_we1;
    end else begin
        activations_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address0;
    end else begin
        activations_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_address1;
    end else begin
        activations_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce0;
    end else begin
        activations_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d0;
    end else begin
        activations_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we0;
    end else begin
        activations_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_2_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_we1;
    end else begin
        activations_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address0;
    end else begin
        activations_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_address1;
    end else begin
        activations_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce0;
    end else begin
        activations_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d0;
    end else begin
        activations_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we0;
    end else begin
        activations_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_3_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_we1;
    end else begin
        activations_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address0;
    end else begin
        activations_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_address1;
    end else begin
        activations_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce0;
    end else begin
        activations_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_ce1;
    end else begin
        activations_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d0;
    end else begin
        activations_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we0;
    end else begin
        activations_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_4_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_we1;
    end else begin
        activations_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address0;
    end else begin
        activations_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_address1;
    end else begin
        activations_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce0;
    end else begin
        activations_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_ce1;
    end else begin
        activations_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d0;
    end else begin
        activations_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we0;
    end else begin
        activations_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_5_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_we1;
    end else begin
        activations_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address0;
    end else begin
        activations_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_address1;
    end else begin
        activations_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce0;
    end else begin
        activations_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_ce1;
    end else begin
        activations_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d0;
    end else begin
        activations_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we0;
    end else begin
        activations_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_6_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_we1;
    end else begin
        activations_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address0;
    end else begin
        activations_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_address1;
    end else begin
        activations_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce0;
    end else begin
        activations_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_ce1;
    end else begin
        activations_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d0;
    end else begin
        activations_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we0;
    end else begin
        activations_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_7_we1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_we1;
    end else begin
        activations_7_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)))) begin
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
    if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3022_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3022_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_ce;
    end else begin
        grp_fu_3022_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3022_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3022_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_opcode;
    end else begin
        grp_fu_3022_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3022_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3022_p0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din0;
    end else begin
        grp_fu_3022_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3022_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_grp_fu_3022_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3022_p1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3022_p_din1;
    end else begin
        grp_fu_3022_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3026_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_ce;
    end else begin
        grp_fu_3026_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3030_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_ce;
    end else begin
        grp_fu_3030_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3034_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_ce;
    end else begin
        grp_fu_3034_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3038_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_ce;
    end else begin
        grp_fu_3038_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3042_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_ce;
    end else begin
        grp_fu_3042_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3046_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_ce;
    end else begin
        grp_fu_3046_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3050_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_ce;
    end else begin
        grp_fu_3050_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3054_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_ce;
    end else begin
        grp_fu_3054_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3058_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_ce;
    end else begin
        grp_fu_3058_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3062_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_ce;
    end else begin
        grp_fu_3062_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3066_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_ce;
    end else begin
        grp_fu_3066_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3070_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_ce;
    end else begin
        grp_fu_3070_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3074_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_ce;
    end else begin
        grp_fu_3074_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3078_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_ce;
    end else begin
        grp_fu_3078_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3082_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_ce;
    end else begin
        grp_fu_3082_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3086_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_ce;
    end else begin
        grp_fu_3086_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3090_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_ce;
    end else begin
        grp_fu_3090_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3094_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_ce;
    end else begin
        grp_fu_3094_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3098_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_ce;
    end else begin
        grp_fu_3098_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3102_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_ce;
    end else begin
        grp_fu_3102_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3106_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_ce;
    end else begin
        grp_fu_3106_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3110_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_ce;
    end else begin
        grp_fu_3110_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3114_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_ce;
    end else begin
        grp_fu_3114_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3118_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_ce;
    end else begin
        grp_fu_3118_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3122_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_ce;
    end else begin
        grp_fu_3122_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3126_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_ce;
    end else begin
        grp_fu_3126_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3130_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_ce;
    end else begin
        grp_fu_3130_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3134_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_ce;
    end else begin
        grp_fu_3134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3138_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_ce;
    end else begin
        grp_fu_3138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3142_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_ce;
    end else begin
        grp_fu_3142_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3146_ce = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_ce;
    end else begin
        grp_fu_3146_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_0_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_0_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_0_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_0_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_0_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_0_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_0_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_0_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_0_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_0_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_0_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_0_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_0_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_0_ce1_local = 1'b1;
    end else begin
        training_data_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_1_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_1_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_1_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_1_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_1_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_1_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_1_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_1_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_1_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_1_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_1_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_1_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_1_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_1_ce1_local = 1'b1;
    end else begin
        training_data_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_2_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_2_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_2_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_2_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_2_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_2_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_2_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_2_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_2_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_2_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_2_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_2_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_2_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_2_ce1_local = 1'b1;
    end else begin
        training_data_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_3_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_3_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_3_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_3_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_3_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_3_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_3_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_3_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_3_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_3_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_3_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_3_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_3_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_3_ce1_local = 1'b1;
    end else begin
        training_data_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_4_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_4_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_4_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_4_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_4_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_4_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_4_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_4_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_4_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_4_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_4_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_4_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_4_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_4_ce1_local = 1'b1;
    end else begin
        training_data_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_5_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_5_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_5_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_5_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_5_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_5_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_5_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_5_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_5_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_5_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_5_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_5_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_5_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_5_ce1_local = 1'b1;
    end else begin
        training_data_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_6_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_6_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_6_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_6_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_6_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_6_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_6_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_6_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_6_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_6_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_6_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_6_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_6_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_6_ce1_local = 1'b1;
    end else begin
        training_data_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_7_address0_local = p_cast13_fu_2221_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_7_address0_local = p_cast11_fu_2025_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_7_address0_local = p_cast9_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_7_address0_local = p_cast7_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_7_address0_local = p_cast5_fu_1437_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_7_address0_local = p_cast4_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_7_address0_local = zext_ln31_fu_1143_p1;
    end else begin
        training_data_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_7_address1_local = p_cast14_fu_2248_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_7_address1_local = p_cast12_fu_2052_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_7_address1_local = p_cast10_fu_1856_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_7_address1_local = p_cast8_fu_1660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_7_address1_local = p_cast6_fu_1464_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_7_address1_local = p_cast_fu_1241_p1;
    end else begin
        training_data_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        training_data_7_ce1_local = 1'b1;
    end else begin
        training_data_7_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_activations_0_address1;
assign activations_1_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_1_d1;
assign activations_2_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_2_d1;
assign activations_3_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_3_d1;
assign activations_4_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_4_d1;
assign activations_5_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_5_d1;
assign activations_6_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_6_d1;
assign activations_7_d1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_activations_7_d1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign biases1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_address0;
assign biases1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_0_ce0;
assign biases1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_address0;
assign biases1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_1_ce0;
assign biases1_2_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_address0;
assign biases1_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_2_ce0;
assign biases1_3_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_address0;
assign biases1_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_3_ce0;
assign biases1_4_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_address0;
assign biases1_4_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_4_ce0;
assign biases1_5_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_address0;
assign biases1_5_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_5_ce0;
assign biases1_6_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_address0;
assign biases1_6_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_6_ce0;
assign biases1_7_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_address0;
assign biases1_7_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_biases1_7_ce0;
assign empty_fu_1129_p1 = idx[2:0];
assign grp_fu_3556_p_ce = grp_fu_3022_ce;
assign grp_fu_3556_p_din0 = grp_fu_3022_p0;
assign grp_fu_3556_p_din1 = grp_fu_3022_p1;
assign grp_fu_3556_p_opcode = grp_fu_3022_opcode;
assign grp_fu_3560_p_ce = grp_fu_3026_ce;
assign grp_fu_3560_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din0;
assign grp_fu_3560_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_din1;
assign grp_fu_3560_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3026_p_opcode;
assign grp_fu_3564_p_ce = grp_fu_3030_ce;
assign grp_fu_3564_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din0;
assign grp_fu_3564_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_din1;
assign grp_fu_3564_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3030_p_opcode;
assign grp_fu_3568_p_ce = grp_fu_3034_ce;
assign grp_fu_3568_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din0;
assign grp_fu_3568_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_din1;
assign grp_fu_3568_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3034_p_opcode;
assign grp_fu_3572_p_ce = grp_fu_3038_ce;
assign grp_fu_3572_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din0;
assign grp_fu_3572_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_din1;
assign grp_fu_3572_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3038_p_opcode;
assign grp_fu_3576_p_ce = grp_fu_3042_ce;
assign grp_fu_3576_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din0;
assign grp_fu_3576_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_din1;
assign grp_fu_3576_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3042_p_opcode;
assign grp_fu_3580_p_ce = grp_fu_3046_ce;
assign grp_fu_3580_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din0;
assign grp_fu_3580_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_din1;
assign grp_fu_3580_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3046_p_opcode;
assign grp_fu_3584_p_ce = grp_fu_3050_ce;
assign grp_fu_3584_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din0;
assign grp_fu_3584_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_din1;
assign grp_fu_3584_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3050_p_opcode;
assign grp_fu_3588_p_ce = grp_fu_3054_ce;
assign grp_fu_3588_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din0;
assign grp_fu_3588_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_din1;
assign grp_fu_3588_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3054_p_opcode;
assign grp_fu_3592_p_ce = grp_fu_3058_ce;
assign grp_fu_3592_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din0;
assign grp_fu_3592_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_din1;
assign grp_fu_3592_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3058_p_opcode;
assign grp_fu_3596_p_ce = grp_fu_3062_ce;
assign grp_fu_3596_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din0;
assign grp_fu_3596_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_din1;
assign grp_fu_3596_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3062_p_opcode;
assign grp_fu_3600_p_ce = grp_fu_3066_ce;
assign grp_fu_3600_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din0;
assign grp_fu_3600_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_din1;
assign grp_fu_3600_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3066_p_opcode;
assign grp_fu_3604_p_ce = grp_fu_3070_ce;
assign grp_fu_3604_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din0;
assign grp_fu_3604_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_din1;
assign grp_fu_3604_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3070_p_opcode;
assign grp_fu_3608_p_ce = grp_fu_3074_ce;
assign grp_fu_3608_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din0;
assign grp_fu_3608_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_din1;
assign grp_fu_3608_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3074_p_opcode;
assign grp_fu_3612_p_ce = grp_fu_3078_ce;
assign grp_fu_3612_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din0;
assign grp_fu_3612_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_din1;
assign grp_fu_3612_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3078_p_opcode;
assign grp_fu_3616_p_ce = grp_fu_3082_ce;
assign grp_fu_3616_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din0;
assign grp_fu_3616_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_din1;
assign grp_fu_3616_p_opcode = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3082_p_opcode;
assign grp_fu_3620_p_ce = grp_fu_3086_ce;
assign grp_fu_3620_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din0;
assign grp_fu_3620_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3086_p_din1;
assign grp_fu_3624_p_ce = grp_fu_3090_ce;
assign grp_fu_3624_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din0;
assign grp_fu_3624_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3090_p_din1;
assign grp_fu_3628_p_ce = grp_fu_3094_ce;
assign grp_fu_3628_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din0;
assign grp_fu_3628_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3094_p_din1;
assign grp_fu_3632_p_ce = grp_fu_3098_ce;
assign grp_fu_3632_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din0;
assign grp_fu_3632_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3098_p_din1;
assign grp_fu_3636_p_ce = grp_fu_3102_ce;
assign grp_fu_3636_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din0;
assign grp_fu_3636_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3102_p_din1;
assign grp_fu_3640_p_ce = grp_fu_3106_ce;
assign grp_fu_3640_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din0;
assign grp_fu_3640_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3106_p_din1;
assign grp_fu_3644_p_ce = grp_fu_3110_ce;
assign grp_fu_3644_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din0;
assign grp_fu_3644_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3110_p_din1;
assign grp_fu_3648_p_ce = grp_fu_3114_ce;
assign grp_fu_3648_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din0;
assign grp_fu_3648_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3114_p_din1;
assign grp_fu_3652_p_ce = grp_fu_3118_ce;
assign grp_fu_3652_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din0;
assign grp_fu_3652_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3118_p_din1;
assign grp_fu_3656_p_ce = grp_fu_3122_ce;
assign grp_fu_3656_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din0;
assign grp_fu_3656_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3122_p_din1;
assign grp_fu_3660_p_ce = grp_fu_3126_ce;
assign grp_fu_3660_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din0;
assign grp_fu_3660_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3126_p_din1;
assign grp_fu_3664_p_ce = grp_fu_3130_ce;
assign grp_fu_3664_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din0;
assign grp_fu_3664_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3130_p_din1;
assign grp_fu_3668_p_ce = grp_fu_3134_ce;
assign grp_fu_3668_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din0;
assign grp_fu_3668_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3134_p_din1;
assign grp_fu_3672_p_ce = grp_fu_3138_ce;
assign grp_fu_3672_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din0;
assign grp_fu_3672_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3138_p_din1;
assign grp_fu_3676_p_ce = grp_fu_3142_ce;
assign grp_fu_3676_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din0;
assign grp_fu_3676_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3142_p_din1;
assign grp_fu_3680_p_ce = grp_fu_3146_ce;
assign grp_fu_3680_p_din0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din0;
assign grp_fu_3680_p_din1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_grp_fu_3146_p_din1;
assign grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_VITIS_LOOP_26_1_fu_1093_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_ap_start_reg;
assign lshr_ln_fu_1133_p4 = {{idx[11:3]}};
assign p_cast10_fu_1856_p1 = tmp_22_fu_1846_p4;
assign p_cast11_fu_2025_p1 = tmp_23_fu_2015_p4;
assign p_cast12_fu_2052_p1 = tmp_24_fu_2042_p4;
assign p_cast13_fu_2221_p1 = tmp_25_fu_2211_p4;
assign p_cast14_fu_2248_p1 = tmp_26_fu_2238_p4;
assign p_cast4_fu_1268_p1 = tmp_16_fu_1258_p4;
assign p_cast5_fu_1437_p1 = tmp_17_fu_1427_p4;
assign p_cast6_fu_1464_p1 = tmp_18_fu_1454_p4;
assign p_cast7_fu_1633_p1 = tmp_19_fu_1623_p4;
assign p_cast8_fu_1660_p1 = tmp_20_fu_1650_p4;
assign p_cast9_fu_1829_p1 = tmp_21_fu_1819_p4;
assign p_cast_fu_1241_p1 = tmp_15_fu_1231_p4;
assign p_sum10_fu_1645_p2 = (idx + 12'd6);
assign p_sum12_fu_1814_p2 = (idx + 12'd7);
assign p_sum14_fu_1841_p2 = (idx + 12'd8);
assign p_sum16_fu_2010_p2 = (idx + 12'd9);
assign p_sum18_fu_2037_p2 = (idx + 12'd10);
assign p_sum20_fu_2206_p2 = (idx + 12'd11);
assign p_sum22_fu_2233_p2 = (idx + 12'd12);
assign p_sum2_fu_1253_p2 = (idx + 12'd2);
assign p_sum4_fu_1422_p2 = (idx + 12'd3);
assign p_sum6_fu_1449_p2 = (idx + 12'd4);
assign p_sum8_fu_1618_p2 = (idx + 12'd5);
assign p_sum_fu_1226_p2 = (idx + 12'd1);
assign tmp_10_fu_2292_p10 = training_data_4_q0;
assign tmp_10_fu_2292_p12 = training_data_5_q0;
assign tmp_10_fu_2292_p14 = training_data_6_q0;
assign tmp_10_fu_2292_p16 = training_data_7_q0;
assign tmp_10_fu_2292_p17 = 'bx;
assign tmp_10_fu_2292_p2 = training_data_0_q0;
assign tmp_10_fu_2292_p4 = training_data_1_q0;
assign tmp_10_fu_2292_p6 = training_data_2_q0;
assign tmp_10_fu_2292_p8 = training_data_3_q0;
assign tmp_11_fu_2364_p10 = training_data_4_q1;
assign tmp_11_fu_2364_p12 = training_data_5_q1;
assign tmp_11_fu_2364_p14 = training_data_6_q1;
assign tmp_11_fu_2364_p16 = training_data_7_q1;
assign tmp_11_fu_2364_p17 = 'bx;
assign tmp_11_fu_2364_p2 = training_data_0_q1;
assign tmp_11_fu_2364_p4 = training_data_1_q1;
assign tmp_11_fu_2364_p6 = training_data_2_q1;
assign tmp_11_fu_2364_p8 = training_data_3_q1;
assign tmp_15_fu_1231_p4 = {{p_sum_fu_1226_p2[11:3]}};
assign tmp_16_fu_1258_p4 = {{p_sum2_fu_1253_p2[11:3]}};
assign tmp_17_fu_1427_p4 = {{p_sum4_fu_1422_p2[11:3]}};
assign tmp_18_fu_1454_p4 = {{p_sum6_fu_1449_p2[11:3]}};
assign tmp_19_fu_1623_p4 = {{p_sum8_fu_1618_p2[11:3]}};
assign tmp_1_fu_2167_p10 = training_data_4_q1;
assign tmp_1_fu_2167_p12 = training_data_5_q1;
assign tmp_1_fu_2167_p14 = training_data_6_q1;
assign tmp_1_fu_2167_p16 = training_data_7_q1;
assign tmp_1_fu_2167_p17 = 'bx;
assign tmp_1_fu_2167_p2 = training_data_0_q1;
assign tmp_1_fu_2167_p4 = training_data_1_q1;
assign tmp_1_fu_2167_p6 = training_data_2_q1;
assign tmp_1_fu_2167_p8 = training_data_3_q1;
assign tmp_20_fu_1650_p4 = {{p_sum10_fu_1645_p2[11:3]}};
assign tmp_21_fu_1819_p4 = {{p_sum12_fu_1814_p2[11:3]}};
assign tmp_22_fu_1846_p4 = {{p_sum14_fu_1841_p2[11:3]}};
assign tmp_23_fu_2015_p4 = {{p_sum16_fu_2010_p2[11:3]}};
assign tmp_24_fu_2042_p4 = {{p_sum18_fu_2037_p2[11:3]}};
assign tmp_25_fu_2211_p4 = {{p_sum20_fu_2206_p2[11:3]}};
assign tmp_26_fu_2238_p4 = {{p_sum22_fu_2233_p2[11:3]}};
assign tmp_2_fu_1312_p10 = training_data_4_q1;
assign tmp_2_fu_1312_p12 = training_data_5_q1;
assign tmp_2_fu_1312_p14 = training_data_6_q1;
assign tmp_2_fu_1312_p16 = training_data_7_q1;
assign tmp_2_fu_1312_p17 = 'bx;
assign tmp_2_fu_1312_p2 = training_data_0_q1;
assign tmp_2_fu_1312_p4 = training_data_1_q1;
assign tmp_2_fu_1312_p6 = training_data_2_q1;
assign tmp_2_fu_1312_p8 = training_data_3_q1;
assign tmp_3_fu_1383_p10 = training_data_4_q0;
assign tmp_3_fu_1383_p12 = training_data_5_q0;
assign tmp_3_fu_1383_p14 = training_data_6_q0;
assign tmp_3_fu_1383_p16 = training_data_7_q0;
assign tmp_3_fu_1383_p17 = 'bx;
assign tmp_3_fu_1383_p2 = training_data_0_q0;
assign tmp_3_fu_1383_p4 = training_data_1_q0;
assign tmp_3_fu_1383_p6 = training_data_2_q0;
assign tmp_3_fu_1383_p8 = training_data_3_q0;
assign tmp_4_fu_1508_p10 = training_data_4_q0;
assign tmp_4_fu_1508_p12 = training_data_5_q0;
assign tmp_4_fu_1508_p14 = training_data_6_q0;
assign tmp_4_fu_1508_p16 = training_data_7_q0;
assign tmp_4_fu_1508_p17 = 'bx;
assign tmp_4_fu_1508_p2 = training_data_0_q0;
assign tmp_4_fu_1508_p4 = training_data_1_q0;
assign tmp_4_fu_1508_p6 = training_data_2_q0;
assign tmp_4_fu_1508_p8 = training_data_3_q0;
assign tmp_5_fu_1579_p10 = training_data_4_q1;
assign tmp_5_fu_1579_p12 = training_data_5_q1;
assign tmp_5_fu_1579_p14 = training_data_6_q1;
assign tmp_5_fu_1579_p16 = training_data_7_q1;
assign tmp_5_fu_1579_p17 = 'bx;
assign tmp_5_fu_1579_p2 = training_data_0_q1;
assign tmp_5_fu_1579_p4 = training_data_1_q1;
assign tmp_5_fu_1579_p6 = training_data_2_q1;
assign tmp_5_fu_1579_p8 = training_data_3_q1;
assign tmp_6_fu_1704_p10 = training_data_4_q0;
assign tmp_6_fu_1704_p12 = training_data_5_q0;
assign tmp_6_fu_1704_p14 = training_data_6_q0;
assign tmp_6_fu_1704_p16 = training_data_7_q0;
assign tmp_6_fu_1704_p17 = 'bx;
assign tmp_6_fu_1704_p2 = training_data_0_q0;
assign tmp_6_fu_1704_p4 = training_data_1_q0;
assign tmp_6_fu_1704_p6 = training_data_2_q0;
assign tmp_6_fu_1704_p8 = training_data_3_q0;
assign tmp_7_fu_1775_p10 = training_data_4_q1;
assign tmp_7_fu_1775_p12 = training_data_5_q1;
assign tmp_7_fu_1775_p14 = training_data_6_q1;
assign tmp_7_fu_1775_p16 = training_data_7_q1;
assign tmp_7_fu_1775_p17 = 'bx;
assign tmp_7_fu_1775_p2 = training_data_0_q1;
assign tmp_7_fu_1775_p4 = training_data_1_q1;
assign tmp_7_fu_1775_p6 = training_data_2_q1;
assign tmp_7_fu_1775_p8 = training_data_3_q1;
assign tmp_8_fu_1900_p10 = training_data_4_q0;
assign tmp_8_fu_1900_p12 = training_data_5_q0;
assign tmp_8_fu_1900_p14 = training_data_6_q0;
assign tmp_8_fu_1900_p16 = training_data_7_q0;
assign tmp_8_fu_1900_p17 = 'bx;
assign tmp_8_fu_1900_p2 = training_data_0_q0;
assign tmp_8_fu_1900_p4 = training_data_1_q0;
assign tmp_8_fu_1900_p6 = training_data_2_q0;
assign tmp_8_fu_1900_p8 = training_data_3_q0;
assign tmp_9_fu_1971_p10 = training_data_4_q1;
assign tmp_9_fu_1971_p12 = training_data_5_q1;
assign tmp_9_fu_1971_p14 = training_data_6_q1;
assign tmp_9_fu_1971_p16 = training_data_7_q1;
assign tmp_9_fu_1971_p17 = 'bx;
assign tmp_9_fu_1971_p2 = training_data_0_q1;
assign tmp_9_fu_1971_p4 = training_data_1_q1;
assign tmp_9_fu_1971_p6 = training_data_2_q1;
assign tmp_9_fu_1971_p8 = training_data_3_q1;
assign tmp_fu_1187_p10 = training_data_4_q0;
assign tmp_fu_1187_p12 = training_data_5_q0;
assign tmp_fu_1187_p14 = training_data_6_q0;
assign tmp_fu_1187_p16 = training_data_7_q0;
assign tmp_fu_1187_p17 = 'bx;
assign tmp_fu_1187_p2 = training_data_0_q0;
assign tmp_fu_1187_p4 = training_data_1_q0;
assign tmp_fu_1187_p6 = training_data_2_q0;
assign tmp_fu_1187_p8 = training_data_3_q0;
assign tmp_s_fu_2096_p10 = training_data_4_q0;
assign tmp_s_fu_2096_p12 = training_data_5_q0;
assign tmp_s_fu_2096_p14 = training_data_6_q0;
assign tmp_s_fu_2096_p16 = training_data_7_q0;
assign tmp_s_fu_2096_p17 = 'bx;
assign tmp_s_fu_2096_p2 = training_data_0_q0;
assign tmp_s_fu_2096_p4 = training_data_1_q0;
assign tmp_s_fu_2096_p6 = training_data_2_q0;
assign tmp_s_fu_2096_p8 = training_data_3_q0;
assign training_data_0_address0 = training_data_0_address0_local;
assign training_data_0_address1 = training_data_0_address1_local;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_0_ce1 = training_data_0_ce1_local;
assign training_data_1_address0 = training_data_1_address0_local;
assign training_data_1_address1 = training_data_1_address1_local;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_1_ce1 = training_data_1_ce1_local;
assign training_data_2_address0 = training_data_2_address0_local;
assign training_data_2_address1 = training_data_2_address1_local;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_2_ce1 = training_data_2_ce1_local;
assign training_data_3_address0 = training_data_3_address0_local;
assign training_data_3_address1 = training_data_3_address1_local;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_3_ce1 = training_data_3_ce1_local;
assign training_data_4_address0 = training_data_4_address0_local;
assign training_data_4_address1 = training_data_4_address1_local;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_4_ce1 = training_data_4_ce1_local;
assign training_data_5_address0 = training_data_5_address0_local;
assign training_data_5_address1 = training_data_5_address1_local;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_5_ce1 = training_data_5_ce1_local;
assign training_data_6_address0 = training_data_6_address0_local;
assign training_data_6_address1 = training_data_6_address1_local;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_6_ce1 = training_data_6_ce1_local;
assign training_data_7_address0 = training_data_7_address0_local;
assign training_data_7_address1 = training_data_7_address1_local;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_7_ce1 = training_data_7_ce1_local;
assign weights1_0_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address0;
assign weights1_0_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_address1;
assign weights1_0_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce0;
assign weights1_0_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_0_ce1;
assign weights1_1_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address0;
assign weights1_1_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_address1;
assign weights1_1_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce0;
assign weights1_1_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_1_ce1;
assign weights1_2_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address0;
assign weights1_2_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_address1;
assign weights1_2_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce0;
assign weights1_2_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_2_ce1;
assign weights1_3_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address0;
assign weights1_3_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_address1;
assign weights1_3_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce0;
assign weights1_3_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_3_ce1;
assign weights1_4_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address0;
assign weights1_4_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_address1;
assign weights1_4_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce0;
assign weights1_4_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_4_ce1;
assign weights1_5_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address0;
assign weights1_5_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_address1;
assign weights1_5_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce0;
assign weights1_5_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_5_ce1;
assign weights1_6_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address0;
assign weights1_6_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_address1;
assign weights1_6_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce0;
assign weights1_6_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_6_ce1;
assign weights1_7_address0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address0;
assign weights1_7_address1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_address1;
assign weights1_7_ce0 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce0;
assign weights1_7_ce1 = grp_matrix_vector_product_with_bias_input_layer_56_57_1_Pipeline_mvp_product_input_l_fu_1044_weights1_7_ce1;
assign zext_ln31_fu_1143_p1 = lshr_ln_fu_1133_p4;
endmodule 
