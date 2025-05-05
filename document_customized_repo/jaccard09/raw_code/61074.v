module backprop_matrix_vector_product_with_bias_output_layer_60_61_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_q1,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_q1,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_q1,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_2_address1,input_activations_2_ce1,input_activations_2_q1,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_3_address1,input_activations_3_ce1,input_activations_3_q1,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_4_address1,input_activations_4_ce1,input_activations_4_q1,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_5_address1,input_activations_5_ce1,input_activations_5_q1,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_6_address1,input_activations_6_ce1,input_activations_6_q1,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_7_address1,input_activations_7_ce1,input_activations_7_q1,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce); 
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
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_4_address1;
output   weights3_4_ce1;
input  [63:0] weights3_4_q1;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_5_address1;
output   weights3_5_ce1;
input  [63:0] weights3_5_q1;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_6_address1;
output   weights3_6_ce1;
input  [63:0] weights3_6_q1;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [4:0] weights3_7_address1;
output   weights3_7_ce1;
input  [63:0] weights3_7_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
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
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] input_activations_0_load_reg_916;
wire    ap_CS_fsm_state2;
reg   [63:0] input_activations_1_load_reg_921;
reg   [63:0] input_activations_2_load_reg_926;
reg   [63:0] input_activations_3_load_reg_931;
reg   [63:0] input_activations_4_load_reg_936;
reg   [63:0] input_activations_5_load_reg_941;
reg   [63:0] input_activations_6_load_reg_946;
reg   [63:0] input_activations_7_load_reg_951;
reg   [63:0] input_activations_0_load_8_reg_956;
reg   [63:0] input_activations_1_load_8_reg_961;
reg   [63:0] input_activations_2_load_8_reg_966;
reg   [63:0] input_activations_3_load_8_reg_971;
reg   [63:0] input_activations_4_load_8_reg_976;
reg   [63:0] input_activations_5_load_8_reg_981;
reg   [63:0] input_activations_6_load_8_reg_986;
reg   [63:0] input_activations_7_load_8_reg_991;
reg   [63:0] input_activations_0_load_9_reg_1076;
wire    ap_CS_fsm_state3;
reg   [63:0] input_activations_1_load_9_reg_1081;
reg   [63:0] input_activations_2_load_9_reg_1086;
reg   [63:0] input_activations_3_load_9_reg_1091;
reg   [63:0] input_activations_4_load_9_reg_1096;
reg   [63:0] input_activations_5_load_9_reg_1101;
reg   [63:0] input_activations_6_load_9_reg_1106;
reg   [63:0] input_activations_7_load_9_reg_1111;
reg   [63:0] input_activations_0_load_10_reg_1116;
reg   [63:0] input_activations_1_load_10_reg_1121;
reg   [63:0] input_activations_2_load_10_reg_1126;
reg   [63:0] input_activations_3_load_10_reg_1131;
reg   [63:0] input_activations_4_load_10_reg_1136;
reg   [63:0] input_activations_5_load_10_reg_1141;
reg   [63:0] input_activations_6_load_10_reg_1146;
reg   [63:0] input_activations_7_load_10_reg_1151;
reg   [63:0] input_activations_0_load_11_reg_1236;
wire    ap_CS_fsm_state4;
reg   [63:0] input_activations_1_load_11_reg_1241;
reg   [63:0] input_activations_2_load_11_reg_1246;
reg   [63:0] input_activations_3_load_11_reg_1251;
reg   [63:0] input_activations_4_load_11_reg_1256;
reg   [63:0] input_activations_5_load_11_reg_1261;
reg   [63:0] input_activations_6_load_11_reg_1266;
reg   [63:0] input_activations_7_load_11_reg_1271;
reg   [63:0] input_activations_0_load_12_reg_1276;
reg   [63:0] input_activations_1_load_12_reg_1281;
reg   [63:0] input_activations_2_load_12_reg_1286;
reg   [63:0] input_activations_3_load_12_reg_1291;
reg   [63:0] input_activations_4_load_12_reg_1296;
reg   [63:0] input_activations_5_load_12_reg_1301;
reg   [63:0] input_activations_6_load_12_reg_1306;
reg   [63:0] input_activations_7_load_12_reg_1311;
reg   [63:0] input_activations_0_load_13_reg_1396;
wire    ap_CS_fsm_state5;
reg   [63:0] input_activations_1_load_13_reg_1401;
reg   [63:0] input_activations_2_load_13_reg_1406;
reg   [63:0] input_activations_3_load_13_reg_1411;
reg   [63:0] input_activations_4_load_13_reg_1416;
reg   [63:0] input_activations_5_load_13_reg_1421;
reg   [63:0] input_activations_6_load_13_reg_1426;
reg   [63:0] input_activations_7_load_13_reg_1431;
reg   [63:0] input_activations_0_load_14_reg_1436;
reg   [63:0] input_activations_1_load_14_reg_1441;
reg   [63:0] input_activations_2_load_14_reg_1446;
reg   [63:0] input_activations_3_load_14_reg_1451;
reg   [63:0] input_activations_4_load_14_reg_1456;
reg   [63:0] input_activations_5_load_14_reg_1461;
reg   [63:0] input_activations_6_load_14_reg_1466;
reg   [63:0] input_activations_7_load_14_reg_1471;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1_ap_vld;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din1;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg;
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
reg   [63:0] grp_fu_1476_p0;
reg   [63:0] grp_fu_1476_p1;
reg   [1:0] grp_fu_1476_opcode;
reg    grp_fu_1476_ce;
reg    grp_fu_1480_ce;
reg    grp_fu_1484_ce;
reg    grp_fu_1488_ce;
reg    grp_fu_1492_ce;
reg    grp_fu_1496_ce;
reg    grp_fu_1500_ce;
reg    grp_fu_1504_ce;
reg    grp_fu_1508_ce;
reg    grp_fu_1512_ce;
reg    grp_fu_1516_ce;
reg    grp_fu_1520_ce;
reg    grp_fu_1524_ce;
reg    grp_fu_1528_ce;
reg    grp_fu_1532_ce;
reg    grp_fu_1536_ce;
reg    grp_fu_1540_ce;
reg    grp_fu_1544_ce;
reg    grp_fu_1548_ce;
reg    grp_fu_1552_ce;
reg    grp_fu_1556_ce;
reg    grp_fu_1560_ce;
reg    grp_fu_1564_ce;
reg    grp_fu_1568_ce;
reg    grp_fu_1572_ce;
reg    grp_fu_1576_ce;
reg    grp_fu_1580_ce;
reg    grp_fu_1584_ce;
reg    grp_fu_1588_ce;
reg    grp_fu_1592_ce;
reg    grp_fu_1596_ce;
reg    grp_fu_1600_ce;
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
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2_ap_vld),.activations_1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1_ap_vld),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address1),.weights3_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.input_activations_0_load(input_activations_0_load_reg_916),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address1),.weights3_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.input_activations_1_load(input_activations_1_load_reg_921),.weights3_2_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address0),.weights3_2_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce0),.weights3_2_q0(weights3_2_q0),.weights3_2_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address1),.weights3_2_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce1),.weights3_2_q1(weights3_2_q1),.input_activations_2_load(input_activations_2_load_reg_926),.weights3_3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address0),.weights3_3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce0),.weights3_3_q0(weights3_3_q0),.weights3_3_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address1),.weights3_3_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce1),.weights3_3_q1(weights3_3_q1),.input_activations_3_load(input_activations_3_load_reg_931),.weights3_4_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address0),.weights3_4_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce0),.weights3_4_q0(weights3_4_q0),.weights3_4_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address1),.weights3_4_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce1),.weights3_4_q1(weights3_4_q1),.input_activations_4_load(input_activations_4_load_reg_936),.weights3_5_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address0),.weights3_5_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce0),.weights3_5_q0(weights3_5_q0),.weights3_5_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address1),.weights3_5_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce1),.weights3_5_q1(weights3_5_q1),.input_activations_5_load(input_activations_5_load_reg_941),.weights3_6_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address0),.weights3_6_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce0),.weights3_6_q0(weights3_6_q0),.weights3_6_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address1),.weights3_6_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce1),.weights3_6_q1(weights3_6_q1),.input_activations_6_load(input_activations_6_load_reg_946),.weights3_7_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address0),.weights3_7_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce0),.weights3_7_q0(weights3_7_q0),.weights3_7_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address1),.weights3_7_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce1),.weights3_7_q1(weights3_7_q1),.input_activations_7_load(input_activations_7_load_reg_951),.input_activations_0_load_8(input_activations_0_load_8_reg_956),.input_activations_1_load_8(input_activations_1_load_8_reg_961),.input_activations_2_load_8(input_activations_2_load_8_reg_966),.input_activations_3_load_8(input_activations_3_load_8_reg_971),.input_activations_4_load_8(input_activations_4_load_8_reg_976),.input_activations_5_load_8(input_activations_5_load_8_reg_981),.input_activations_6_load_8(input_activations_6_load_8_reg_986),.input_activations_7_load_8(input_activations_7_load_8_reg_991),.input_activations_0_load_9(input_activations_0_load_9_reg_1076),.input_activations_1_load_9(input_activations_1_load_9_reg_1081),.input_activations_2_load_9(input_activations_2_load_9_reg_1086),.input_activations_3_load_9(input_activations_3_load_9_reg_1091),.input_activations_4_load_9(input_activations_4_load_9_reg_1096),.input_activations_5_load_9(input_activations_5_load_9_reg_1101),.input_activations_6_load_9(input_activations_6_load_9_reg_1106),.input_activations_7_load_9(input_activations_7_load_9_reg_1111),.input_activations_0_load_10(input_activations_0_load_10_reg_1116),.input_activations_1_load_10(input_activations_1_load_10_reg_1121),.input_activations_2_load_10(input_activations_2_load_10_reg_1126),.input_activations_3_load_10(input_activations_3_load_10_reg_1131),.input_activations_4_load_10(input_activations_4_load_10_reg_1136),.input_activations_5_load_10(input_activations_5_load_10_reg_1141),.input_activations_6_load_10(input_activations_6_load_10_reg_1146),.input_activations_7_load_10(input_activations_7_load_10_reg_1151),.input_activations_0_load_11(input_activations_0_load_11_reg_1236),.input_activations_1_load_11(input_activations_1_load_11_reg_1241),.input_activations_2_load_11(input_activations_2_load_11_reg_1246),.input_activations_3_load_11(input_activations_3_load_11_reg_1251),.input_activations_4_load_11(input_activations_4_load_11_reg_1256),.input_activations_5_load_11(input_activations_5_load_11_reg_1261),.input_activations_6_load_11(input_activations_6_load_11_reg_1266),.input_activations_7_load_11(input_activations_7_load_11_reg_1271),.input_activations_0_load_12(input_activations_0_load_12_reg_1276),.input_activations_1_load_12(input_activations_1_load_12_reg_1281),.input_activations_2_load_12(input_activations_2_load_12_reg_1286),.input_activations_3_load_12(input_activations_3_load_12_reg_1291),.input_activations_4_load_12(input_activations_4_load_12_reg_1296),.input_activations_5_load_12(input_activations_5_load_12_reg_1301),.input_activations_6_load_12(input_activations_6_load_12_reg_1306),.input_activations_7_load_12(input_activations_7_load_12_reg_1311),.input_activations_0_load_13(input_activations_0_load_13_reg_1396),.input_activations_1_load_13(input_activations_1_load_13_reg_1401),.input_activations_2_load_13(input_activations_2_load_13_reg_1406),.input_activations_3_load_13(input_activations_3_load_13_reg_1411),.input_activations_4_load_13(input_activations_4_load_13_reg_1416),.input_activations_5_load_13(input_activations_5_load_13_reg_1421),.input_activations_6_load_13(input_activations_6_load_13_reg_1426),.input_activations_7_load_13(input_activations_7_load_13_reg_1431),.input_activations_0_load_14(input_activations_0_load_14_reg_1436),.input_activations_1_load_14(input_activations_1_load_14_reg_1441),.input_activations_2_load_14(input_activations_2_load_14_reg_1446),.input_activations_3_load_14(input_activations_3_load_14_reg_1451),.input_activations_4_load_14(input_activations_4_load_14_reg_1456),.input_activations_5_load_14(input_activations_5_load_14_reg_1461),.input_activations_6_load_14(input_activations_6_load_14_reg_1466),.input_activations_7_load_14(input_activations_7_load_14_reg_1471),.grp_fu_1476_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din0),.grp_fu_1476_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din1),.grp_fu_1476_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_opcode),.grp_fu_1476_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1476_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_ce),.grp_fu_1480_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din0),.grp_fu_1480_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din1),.grp_fu_1480_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_opcode),.grp_fu_1480_p_dout0(grp_fu_3560_p_dout0),.grp_fu_1480_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_ce),.grp_fu_1484_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din0),.grp_fu_1484_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din1),.grp_fu_1484_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_opcode),.grp_fu_1484_p_dout0(grp_fu_3564_p_dout0),.grp_fu_1484_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_ce),.grp_fu_1488_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din0),.grp_fu_1488_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din1),.grp_fu_1488_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_opcode),.grp_fu_1488_p_dout0(grp_fu_3568_p_dout0),.grp_fu_1488_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_ce),.grp_fu_1492_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din0),.grp_fu_1492_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din1),.grp_fu_1492_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_opcode),.grp_fu_1492_p_dout0(grp_fu_3572_p_dout0),.grp_fu_1492_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_ce),.grp_fu_1496_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din0),.grp_fu_1496_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din1),.grp_fu_1496_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_opcode),.grp_fu_1496_p_dout0(grp_fu_3576_p_dout0),.grp_fu_1496_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_ce),.grp_fu_1500_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din0),.grp_fu_1500_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din1),.grp_fu_1500_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_opcode),.grp_fu_1500_p_dout0(grp_fu_3580_p_dout0),.grp_fu_1500_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_ce),.grp_fu_1504_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din0),.grp_fu_1504_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din1),.grp_fu_1504_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_opcode),.grp_fu_1504_p_dout0(grp_fu_3584_p_dout0),.grp_fu_1504_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_ce),.grp_fu_1508_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din0),.grp_fu_1508_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din1),.grp_fu_1508_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_opcode),.grp_fu_1508_p_dout0(grp_fu_3588_p_dout0),.grp_fu_1508_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_ce),.grp_fu_1512_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din0),.grp_fu_1512_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din1),.grp_fu_1512_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_opcode),.grp_fu_1512_p_dout0(grp_fu_3592_p_dout0),.grp_fu_1512_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_ce),.grp_fu_1516_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din0),.grp_fu_1516_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din1),.grp_fu_1516_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_opcode),.grp_fu_1516_p_dout0(grp_fu_3596_p_dout0),.grp_fu_1516_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_ce),.grp_fu_1520_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din0),.grp_fu_1520_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din1),.grp_fu_1520_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_opcode),.grp_fu_1520_p_dout0(grp_fu_3600_p_dout0),.grp_fu_1520_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_ce),.grp_fu_1524_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din0),.grp_fu_1524_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din1),.grp_fu_1524_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_opcode),.grp_fu_1524_p_dout0(grp_fu_3604_p_dout0),.grp_fu_1524_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_ce),.grp_fu_1528_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din0),.grp_fu_1528_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din1),.grp_fu_1528_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_opcode),.grp_fu_1528_p_dout0(grp_fu_3608_p_dout0),.grp_fu_1528_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_ce),.grp_fu_1532_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din0),.grp_fu_1532_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din1),.grp_fu_1532_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_opcode),.grp_fu_1532_p_dout0(grp_fu_3612_p_dout0),.grp_fu_1532_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_ce),.grp_fu_1536_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din0),.grp_fu_1536_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din1),.grp_fu_1536_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_opcode),.grp_fu_1536_p_dout0(grp_fu_3616_p_dout0),.grp_fu_1536_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_ce),.grp_fu_1540_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din0),.grp_fu_1540_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din1),.grp_fu_1540_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1540_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_ce),.grp_fu_1544_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din0),.grp_fu_1544_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din1),.grp_fu_1544_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1544_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_ce),.grp_fu_1548_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din0),.grp_fu_1548_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din1),.grp_fu_1548_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1548_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_ce),.grp_fu_1552_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din0),.grp_fu_1552_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din1),.grp_fu_1552_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1552_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_ce),.grp_fu_1556_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din0),.grp_fu_1556_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din1),.grp_fu_1556_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1556_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_ce),.grp_fu_1560_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din0),.grp_fu_1560_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din1),.grp_fu_1560_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1560_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_ce),.grp_fu_1564_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din0),.grp_fu_1564_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din1),.grp_fu_1564_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1564_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_ce),.grp_fu_1568_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din0),.grp_fu_1568_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din1),.grp_fu_1568_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1568_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_ce),.grp_fu_1572_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din0),.grp_fu_1572_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din1),.grp_fu_1572_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1572_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_ce),.grp_fu_1576_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din0),.grp_fu_1576_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din1),.grp_fu_1576_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1576_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_ce),.grp_fu_1580_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din0),.grp_fu_1580_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din1),.grp_fu_1580_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1580_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_ce),.grp_fu_1584_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din0),.grp_fu_1584_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din1),.grp_fu_1584_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1584_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_ce),.grp_fu_1588_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din0),.grp_fu_1588_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din1),.grp_fu_1588_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1588_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_ce),.grp_fu_1592_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din0),.grp_fu_1592_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din1),.grp_fu_1592_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1592_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_ce),.grp_fu_1596_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din0),.grp_fu_1596_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din1),.grp_fu_1596_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1596_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_ce),.grp_fu_1600_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din0),.grp_fu_1600_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din1),.grp_fu_1600_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1600_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1476_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din0),.grp_fu_1476_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din1),.grp_fu_1476_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_opcode),.grp_fu_1476_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1476_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_activations_0_load_10_reg_1116 <= input_activations_0_q0;
        input_activations_0_load_9_reg_1076 <= input_activations_0_q1;
        input_activations_1_load_10_reg_1121 <= input_activations_1_q0;
        input_activations_1_load_9_reg_1081 <= input_activations_1_q1;
        input_activations_2_load_10_reg_1126 <= input_activations_2_q0;
        input_activations_2_load_9_reg_1086 <= input_activations_2_q1;
        input_activations_3_load_10_reg_1131 <= input_activations_3_q0;
        input_activations_3_load_9_reg_1091 <= input_activations_3_q1;
        input_activations_4_load_10_reg_1136 <= input_activations_4_q0;
        input_activations_4_load_9_reg_1096 <= input_activations_4_q1;
        input_activations_5_load_10_reg_1141 <= input_activations_5_q0;
        input_activations_5_load_9_reg_1101 <= input_activations_5_q1;
        input_activations_6_load_10_reg_1146 <= input_activations_6_q0;
        input_activations_6_load_9_reg_1106 <= input_activations_6_q1;
        input_activations_7_load_10_reg_1151 <= input_activations_7_q0;
        input_activations_7_load_9_reg_1111 <= input_activations_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_activations_0_load_11_reg_1236 <= input_activations_0_q1;
        input_activations_0_load_12_reg_1276 <= input_activations_0_q0;
        input_activations_1_load_11_reg_1241 <= input_activations_1_q1;
        input_activations_1_load_12_reg_1281 <= input_activations_1_q0;
        input_activations_2_load_11_reg_1246 <= input_activations_2_q1;
        input_activations_2_load_12_reg_1286 <= input_activations_2_q0;
        input_activations_3_load_11_reg_1251 <= input_activations_3_q1;
        input_activations_3_load_12_reg_1291 <= input_activations_3_q0;
        input_activations_4_load_11_reg_1256 <= input_activations_4_q1;
        input_activations_4_load_12_reg_1296 <= input_activations_4_q0;
        input_activations_5_load_11_reg_1261 <= input_activations_5_q1;
        input_activations_5_load_12_reg_1301 <= input_activations_5_q0;
        input_activations_6_load_11_reg_1266 <= input_activations_6_q1;
        input_activations_6_load_12_reg_1306 <= input_activations_6_q0;
        input_activations_7_load_11_reg_1271 <= input_activations_7_q1;
        input_activations_7_load_12_reg_1311 <= input_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_activations_0_load_13_reg_1396 <= input_activations_0_q1;
        input_activations_0_load_14_reg_1436 <= input_activations_0_q0;
        input_activations_1_load_13_reg_1401 <= input_activations_1_q1;
        input_activations_1_load_14_reg_1441 <= input_activations_1_q0;
        input_activations_2_load_13_reg_1406 <= input_activations_2_q1;
        input_activations_2_load_14_reg_1446 <= input_activations_2_q0;
        input_activations_3_load_13_reg_1411 <= input_activations_3_q1;
        input_activations_3_load_14_reg_1451 <= input_activations_3_q0;
        input_activations_4_load_13_reg_1416 <= input_activations_4_q1;
        input_activations_4_load_14_reg_1456 <= input_activations_4_q0;
        input_activations_5_load_13_reg_1421 <= input_activations_5_q1;
        input_activations_5_load_14_reg_1461 <= input_activations_5_q0;
        input_activations_6_load_13_reg_1426 <= input_activations_6_q1;
        input_activations_6_load_14_reg_1466 <= input_activations_6_q0;
        input_activations_7_load_13_reg_1431 <= input_activations_7_q1;
        input_activations_7_load_14_reg_1471 <= input_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_activations_0_load_8_reg_956 <= input_activations_0_q0;
        input_activations_0_load_reg_916 <= input_activations_0_q1;
        input_activations_1_load_8_reg_961 <= input_activations_1_q0;
        input_activations_1_load_reg_921 <= input_activations_1_q1;
        input_activations_2_load_8_reg_966 <= input_activations_2_q0;
        input_activations_2_load_reg_926 <= input_activations_2_q1;
        input_activations_3_load_8_reg_971 <= input_activations_3_q0;
        input_activations_3_load_reg_931 <= input_activations_3_q1;
        input_activations_4_load_8_reg_976 <= input_activations_4_q0;
        input_activations_4_load_reg_936 <= input_activations_4_q1;
        input_activations_5_load_8_reg_981 <= input_activations_5_q0;
        input_activations_5_load_reg_941 <= input_activations_5_q1;
        input_activations_6_load_8_reg_986 <= input_activations_6_q0;
        input_activations_6_load_reg_946 <= input_activations_6_q1;
        input_activations_7_load_8_reg_991 <= input_activations_7_q0;
        input_activations_7_load_reg_951 <= input_activations_7_q1;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_activations_2_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1476_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1476_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_ce;
    end else begin
        grp_fu_1476_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1476_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1476_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_opcode;
    end else begin
        grp_fu_1476_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1476_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1476_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din0;
    end else begin
        grp_fu_1476_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1476_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_grp_fu_1476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1476_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1476_p_din1;
    end else begin
        grp_fu_1476_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1480_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_ce;
    end else begin
        grp_fu_1480_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1484_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_ce;
    end else begin
        grp_fu_1484_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1488_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_ce;
    end else begin
        grp_fu_1488_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1492_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_ce;
    end else begin
        grp_fu_1492_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1496_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_ce;
    end else begin
        grp_fu_1496_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1500_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_ce;
    end else begin
        grp_fu_1500_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1504_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_ce;
    end else begin
        grp_fu_1504_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1508_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_ce;
    end else begin
        grp_fu_1508_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1512_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_ce;
    end else begin
        grp_fu_1512_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1516_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_ce;
    end else begin
        grp_fu_1516_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1520_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_ce;
    end else begin
        grp_fu_1520_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1524_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_ce;
    end else begin
        grp_fu_1524_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1528_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_ce;
    end else begin
        grp_fu_1528_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1532_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_ce;
    end else begin
        grp_fu_1532_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1536_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_ce;
    end else begin
        grp_fu_1536_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1540_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_ce;
    end else begin
        grp_fu_1540_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1544_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_ce;
    end else begin
        grp_fu_1544_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1548_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_ce;
    end else begin
        grp_fu_1548_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1552_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_ce;
    end else begin
        grp_fu_1552_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1556_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_ce;
    end else begin
        grp_fu_1556_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1560_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_ce;
    end else begin
        grp_fu_1560_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1564_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_ce;
    end else begin
        grp_fu_1564_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1568_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_ce;
    end else begin
        grp_fu_1568_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1572_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_ce;
    end else begin
        grp_fu_1572_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1576_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_ce;
    end else begin
        grp_fu_1576_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1580_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_ce;
    end else begin
        grp_fu_1580_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1584_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_ce;
    end else begin
        grp_fu_1584_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1588_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_ce;
    end else begin
        grp_fu_1588_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1592_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_ce;
    end else begin
        grp_fu_1592_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1596_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_ce;
    end else begin
        grp_fu_1596_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1600_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_ce;
    end else begin
        grp_fu_1600_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_biases3_ce0;
assign grp_fu_3556_p_ce = grp_fu_1476_ce;
assign grp_fu_3556_p_din0 = grp_fu_1476_p0;
assign grp_fu_3556_p_din1 = grp_fu_1476_p1;
assign grp_fu_3556_p_opcode = grp_fu_1476_opcode;
assign grp_fu_3560_p_ce = grp_fu_1480_ce;
assign grp_fu_3560_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din0;
assign grp_fu_3560_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_din1;
assign grp_fu_3560_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1480_p_opcode;
assign grp_fu_3564_p_ce = grp_fu_1484_ce;
assign grp_fu_3564_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din0;
assign grp_fu_3564_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_din1;
assign grp_fu_3564_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1484_p_opcode;
assign grp_fu_3568_p_ce = grp_fu_1488_ce;
assign grp_fu_3568_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din0;
assign grp_fu_3568_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_din1;
assign grp_fu_3568_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1488_p_opcode;
assign grp_fu_3572_p_ce = grp_fu_1492_ce;
assign grp_fu_3572_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din0;
assign grp_fu_3572_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_din1;
assign grp_fu_3572_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1492_p_opcode;
assign grp_fu_3576_p_ce = grp_fu_1496_ce;
assign grp_fu_3576_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din0;
assign grp_fu_3576_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_din1;
assign grp_fu_3576_p_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1496_p_opcode;
assign grp_fu_3580_p_ce = grp_fu_1500_ce;
assign grp_fu_3580_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din0;
assign grp_fu_3580_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1500_p_din1;
assign grp_fu_3580_p_opcode = 2'd0;
assign grp_fu_3584_p_ce = grp_fu_1504_ce;
assign grp_fu_3584_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din0;
assign grp_fu_3584_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1504_p_din1;
assign grp_fu_3584_p_opcode = 2'd0;
assign grp_fu_3588_p_ce = grp_fu_1508_ce;
assign grp_fu_3588_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din0;
assign grp_fu_3588_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1508_p_din1;
assign grp_fu_3588_p_opcode = 2'd0;
assign grp_fu_3592_p_ce = grp_fu_1512_ce;
assign grp_fu_3592_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din0;
assign grp_fu_3592_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1512_p_din1;
assign grp_fu_3592_p_opcode = 2'd0;
assign grp_fu_3596_p_ce = grp_fu_1516_ce;
assign grp_fu_3596_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din0;
assign grp_fu_3596_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1516_p_din1;
assign grp_fu_3596_p_opcode = 2'd0;
assign grp_fu_3600_p_ce = grp_fu_1520_ce;
assign grp_fu_3600_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din0;
assign grp_fu_3600_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1520_p_din1;
assign grp_fu_3600_p_opcode = 2'd0;
assign grp_fu_3604_p_ce = grp_fu_1524_ce;
assign grp_fu_3604_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din0;
assign grp_fu_3604_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1524_p_din1;
assign grp_fu_3604_p_opcode = 2'd0;
assign grp_fu_3608_p_ce = grp_fu_1528_ce;
assign grp_fu_3608_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din0;
assign grp_fu_3608_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1528_p_din1;
assign grp_fu_3608_p_opcode = 2'd0;
assign grp_fu_3612_p_ce = grp_fu_1532_ce;
assign grp_fu_3612_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din0;
assign grp_fu_3612_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1532_p_din1;
assign grp_fu_3612_p_opcode = 2'd0;
assign grp_fu_3616_p_ce = grp_fu_1536_ce;
assign grp_fu_3616_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din0;
assign grp_fu_3616_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1536_p_din1;
assign grp_fu_3616_p_opcode = 2'd0;
assign grp_fu_3620_p_ce = grp_fu_1540_ce;
assign grp_fu_3620_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din0;
assign grp_fu_3620_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1540_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1544_ce;
assign grp_fu_3624_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din0;
assign grp_fu_3624_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1544_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1548_ce;
assign grp_fu_3628_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din0;
assign grp_fu_3628_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1548_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1552_ce;
assign grp_fu_3632_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din0;
assign grp_fu_3632_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1552_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1556_ce;
assign grp_fu_3636_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din0;
assign grp_fu_3636_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1556_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1560_ce;
assign grp_fu_3640_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din0;
assign grp_fu_3640_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1560_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1564_ce;
assign grp_fu_3644_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din0;
assign grp_fu_3644_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1564_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1568_ce;
assign grp_fu_3648_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din0;
assign grp_fu_3648_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1568_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1572_ce;
assign grp_fu_3652_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din0;
assign grp_fu_3652_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1572_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1576_ce;
assign grp_fu_3656_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din0;
assign grp_fu_3656_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1576_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1580_ce;
assign grp_fu_3660_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din0;
assign grp_fu_3660_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1580_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1584_ce;
assign grp_fu_3664_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din0;
assign grp_fu_3664_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1584_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1588_ce;
assign grp_fu_3668_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din0;
assign grp_fu_3668_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1588_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1592_ce;
assign grp_fu_3672_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din0;
assign grp_fu_3672_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1592_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1596_ce;
assign grp_fu_3676_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din0;
assign grp_fu_3676_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1596_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1600_ce;
assign grp_fu_3680_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din0;
assign grp_fu_3680_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_grp_fu_1600_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_824_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_ap_start_reg;
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
assign weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address0;
assign weights3_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_address1;
assign weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce0;
assign weights3_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_0_ce1;
assign weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address0;
assign weights3_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_address1;
assign weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce0;
assign weights3_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_1_ce1;
assign weights3_2_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address0;
assign weights3_2_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_address1;
assign weights3_2_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce0;
assign weights3_2_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_2_ce1;
assign weights3_3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address0;
assign weights3_3_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_address1;
assign weights3_3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce0;
assign weights3_3_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_3_ce1;
assign weights3_4_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address0;
assign weights3_4_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_address1;
assign weights3_4_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce0;
assign weights3_4_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_4_ce1;
assign weights3_5_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address0;
assign weights3_5_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_address1;
assign weights3_5_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce0;
assign weights3_5_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_5_ce1;
assign weights3_6_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address0;
assign weights3_6_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_address1;
assign weights3_6_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce0;
assign weights3_6_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_6_ce1;
assign weights3_7_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address0;
assign weights3_7_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_address1;
assign weights3_7_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce0;
assign weights3_7_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_fu_718_weights3_7_ce1;
endmodule 