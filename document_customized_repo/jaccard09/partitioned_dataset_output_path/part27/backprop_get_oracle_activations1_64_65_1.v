
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_4_address1,output_differences_4_ce1,output_differences_4_q1,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_5_address1,output_differences_5_ce1,output_differences_5_q1,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_6_address1,output_differences_6_ce1,output_differences_6_q1,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_7_address1,output_differences_7_ce1,output_differences_7_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce,grp_fu_3692_p_din0,grp_fu_3692_p_din1,grp_fu_3692_p_dout0,grp_fu_3692_p_ce);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
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
output  [2:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [2:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [2:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [2:0] output_differences_2_address1;
output   output_differences_2_ce1;
input  [63:0] output_differences_2_q1;
output  [2:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [2:0] output_differences_3_address1;
output   output_differences_3_ce1;
input  [63:0] output_differences_3_q1;
output  [2:0] output_differences_4_address0;
output   output_differences_4_ce0;
input  [63:0] output_differences_4_q0;
output  [2:0] output_differences_4_address1;
output   output_differences_4_ce1;
input  [63:0] output_differences_4_q1;
output  [2:0] output_differences_5_address0;
output   output_differences_5_ce0;
input  [63:0] output_differences_5_q0;
output  [2:0] output_differences_5_address1;
output   output_differences_5_ce1;
input  [63:0] output_differences_5_q1;
output  [2:0] output_differences_6_address0;
output   output_differences_6_ce0;
input  [63:0] output_differences_6_q0;
output  [2:0] output_differences_6_address1;
output   output_differences_6_ce1;
input  [63:0] output_differences_6_q1;
output  [2:0] output_differences_7_address0;
output   output_differences_7_ce0;
input  [63:0] output_differences_7_q0;
output  [2:0] output_differences_7_address1;
output   output_differences_7_ce1;
input  [63:0] output_differences_7_q1;
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
output  [63:0] grp_fu_3692_p_din0;
output  [63:0] grp_fu_3692_p_din1;
input  [63:0] grp_fu_3692_p_dout0;
output   grp_fu_3692_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_0_load_reg_952;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_957;
reg   [63:0] output_differences_2_load_reg_962;
reg   [63:0] output_differences_3_load_reg_967;
reg   [63:0] output_differences_4_load_reg_972;
reg   [63:0] output_differences_5_load_reg_977;
reg   [63:0] output_differences_6_load_reg_982;
reg   [63:0] output_differences_7_load_reg_987;
reg   [63:0] output_differences_0_load_1_reg_992;
reg   [63:0] output_differences_1_load_1_reg_997;
reg   [63:0] output_differences_2_load_1_reg_1002;
reg   [63:0] output_differences_3_load_1_reg_1007;
reg   [63:0] output_differences_4_load_1_reg_1012;
reg   [63:0] output_differences_5_load_1_reg_1017;
reg   [63:0] output_differences_6_load_1_reg_1022;
reg   [63:0] output_differences_7_load_1_reg_1027;
reg   [63:0] output_differences_0_load_2_reg_1112;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_1_load_2_reg_1117;
reg   [63:0] output_differences_2_load_2_reg_1122;
reg   [63:0] output_differences_3_load_2_reg_1127;
reg   [63:0] output_differences_4_load_2_reg_1132;
reg   [63:0] output_differences_5_load_2_reg_1137;
reg   [63:0] output_differences_6_load_2_reg_1142;
reg   [63:0] output_differences_7_load_2_reg_1147;
reg   [63:0] output_differences_0_load_3_reg_1152;
reg   [63:0] output_differences_1_load_3_reg_1157;
reg   [63:0] output_differences_2_load_3_reg_1162;
reg   [63:0] output_differences_3_load_3_reg_1167;
reg   [63:0] output_differences_4_load_3_reg_1172;
reg   [63:0] output_differences_5_load_3_reg_1177;
reg   [63:0] output_differences_6_load_3_reg_1182;
reg   [63:0] output_differences_7_load_3_reg_1187;
reg   [63:0] output_differences_0_load_4_reg_1272;
wire    ap_CS_fsm_state4;
reg   [63:0] output_differences_1_load_4_reg_1277;
reg   [63:0] output_differences_2_load_4_reg_1282;
reg   [63:0] output_differences_3_load_4_reg_1287;
reg   [63:0] output_differences_4_load_4_reg_1292;
reg   [63:0] output_differences_5_load_4_reg_1297;
reg   [63:0] output_differences_6_load_4_reg_1302;
reg   [63:0] output_differences_7_load_4_reg_1307;
reg   [63:0] output_differences_0_load_5_reg_1312;
reg   [63:0] output_differences_1_load_5_reg_1317;
reg   [63:0] output_differences_2_load_5_reg_1322;
reg   [63:0] output_differences_3_load_5_reg_1327;
reg   [63:0] output_differences_4_load_5_reg_1332;
reg   [63:0] output_differences_5_load_5_reg_1337;
reg   [63:0] output_differences_6_load_5_reg_1342;
reg   [63:0] output_differences_7_load_5_reg_1347;
reg   [63:0] output_differences_0_load_6_reg_1432;
wire    ap_CS_fsm_state5;
reg   [63:0] output_differences_1_load_6_reg_1437;
reg   [63:0] output_differences_2_load_6_reg_1442;
reg   [63:0] output_differences_3_load_6_reg_1447;
reg   [63:0] output_differences_4_load_6_reg_1452;
reg   [63:0] output_differences_5_load_6_reg_1457;
reg   [63:0] output_differences_6_load_6_reg_1462;
reg   [63:0] output_differences_7_load_6_reg_1467;
reg   [63:0] output_differences_0_load_7_reg_1472;
reg   [63:0] output_differences_1_load_7_reg_1477;
reg   [63:0] output_differences_2_load_7_reg_1482;
reg   [63:0] output_differences_3_load_7_reg_1487;
reg   [63:0] output_differences_4_load_7_reg_1492;
reg   [63:0] output_differences_5_load_7_reg_1497;
reg   [63:0] output_differences_6_load_7_reg_1502;
reg   [63:0] output_differences_7_load_7_reg_1507;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_ready;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_d0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_d0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    output_differences_0_ce1_local;
reg   [2:0] output_differences_0_address1_local;
reg    output_differences_0_ce0_local;
reg   [2:0] output_differences_0_address0_local;
reg    output_differences_1_ce1_local;
reg   [2:0] output_differences_1_address1_local;
reg    output_differences_1_ce0_local;
reg   [2:0] output_differences_1_address0_local;
reg    output_differences_2_ce1_local;
reg   [2:0] output_differences_2_address1_local;
reg    output_differences_2_ce0_local;
reg   [2:0] output_differences_2_address0_local;
reg    output_differences_3_ce1_local;
reg   [2:0] output_differences_3_address1_local;
reg    output_differences_3_ce0_local;
reg   [2:0] output_differences_3_address0_local;
reg    output_differences_4_ce1_local;
reg   [2:0] output_differences_4_address1_local;
reg    output_differences_4_ce0_local;
reg   [2:0] output_differences_4_address0_local;
reg    output_differences_5_ce1_local;
reg   [2:0] output_differences_5_address1_local;
reg    output_differences_5_ce0_local;
reg   [2:0] output_differences_5_address0_local;
reg    output_differences_6_ce1_local;
reg   [2:0] output_differences_6_address1_local;
reg    output_differences_6_ce0_local;
reg   [2:0] output_differences_6_address0_local;
reg    output_differences_7_ce1_local;
reg   [2:0] output_differences_7_address1_local;
reg    output_differences_7_ce0_local;
reg   [2:0] output_differences_7_address0_local;
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
reg    grp_fu_1604_ce;
reg    grp_fu_1608_ce;
reg    grp_fu_1612_ce;
reg    grp_fu_1616_ce;
reg    grp_fu_1620_ce;
reg    grp_fu_1624_ce;
reg    grp_fu_1628_ce;
reg    grp_fu_1632_ce;
reg    grp_fu_1636_ce;
reg    grp_fu_1640_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_ready),.oracle_activations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_address0),.oracle_activations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_ce0),.oracle_activations_7_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_we0),.oracle_activations_7_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_d0),.oracle_activations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_address0),.oracle_activations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_ce0),.oracle_activations_6_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_we0),.oracle_activations_6_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_d0),.oracle_activations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_address0),.oracle_activations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_ce0),.oracle_activations_5_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_we0),.oracle_activations_5_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_d0),.oracle_activations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_address0),.oracle_activations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_ce0),.oracle_activations_4_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_we0),.oracle_activations_4_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_d0),.oracle_activations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_address0),.oracle_activations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_ce0),.oracle_activations_3_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_we0),.oracle_activations_3_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_d0),.oracle_activations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_address0),.oracle_activations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_ce0),.oracle_activations_2_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_we0),.oracle_activations_2_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_d0),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_952),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_957),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_2_load(output_differences_2_load_reg_962),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_3_load(output_differences_3_load_reg_967),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address1),.weights2_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.output_differences_4_load(output_differences_4_load_reg_972),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address1),.weights2_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.output_differences_5_load(output_differences_5_load_reg_977),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address1),.weights2_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.output_differences_6_load(output_differences_6_load_reg_982),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address1),.weights2_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.output_differences_7_load(output_differences_7_load_reg_987),.output_differences_0_load_1(output_differences_0_load_1_reg_992),.output_differences_1_load_1(output_differences_1_load_1_reg_997),.output_differences_2_load_1(output_differences_2_load_1_reg_1002),.output_differences_3_load_1(output_differences_3_load_1_reg_1007),.output_differences_4_load_1(output_differences_4_load_1_reg_1012),.output_differences_5_load_1(output_differences_5_load_1_reg_1017),.output_differences_6_load_1(output_differences_6_load_1_reg_1022),.output_differences_7_load_1(output_differences_7_load_1_reg_1027),.output_differences_0_load_2(output_differences_0_load_2_reg_1112),.output_differences_1_load_2(output_differences_1_load_2_reg_1117),.output_differences_2_load_2(output_differences_2_load_2_reg_1122),.output_differences_3_load_2(output_differences_3_load_2_reg_1127),.output_differences_4_load_2(output_differences_4_load_2_reg_1132),.output_differences_5_load_2(output_differences_5_load_2_reg_1137),.output_differences_6_load_2(output_differences_6_load_2_reg_1142),.output_differences_7_load_2(output_differences_7_load_2_reg_1147),.output_differences_0_load_3(output_differences_0_load_3_reg_1152),.output_differences_1_load_3(output_differences_1_load_3_reg_1157),.output_differences_2_load_3(output_differences_2_load_3_reg_1162),.output_differences_3_load_3(output_differences_3_load_3_reg_1167),.output_differences_4_load_3(output_differences_4_load_3_reg_1172),.output_differences_5_load_3(output_differences_5_load_3_reg_1177),.output_differences_6_load_3(output_differences_6_load_3_reg_1182),.output_differences_7_load_3(output_differences_7_load_3_reg_1187),.output_differences_0_load_4(output_differences_0_load_4_reg_1272),.output_differences_1_load_4(output_differences_1_load_4_reg_1277),.output_differences_2_load_4(output_differences_2_load_4_reg_1282),.output_differences_3_load_4(output_differences_3_load_4_reg_1287),.output_differences_4_load_4(output_differences_4_load_4_reg_1292),.output_differences_5_load_4(output_differences_5_load_4_reg_1297),.output_differences_6_load_4(output_differences_6_load_4_reg_1302),.output_differences_7_load_4(output_differences_7_load_4_reg_1307),.output_differences_0_load_5(output_differences_0_load_5_reg_1312),.output_differences_1_load_5(output_differences_1_load_5_reg_1317),.output_differences_2_load_5(output_differences_2_load_5_reg_1322),.output_differences_3_load_5(output_differences_3_load_5_reg_1327),.output_differences_4_load_5(output_differences_4_load_5_reg_1332),.output_differences_5_load_5(output_differences_5_load_5_reg_1337),.output_differences_6_load_5(output_differences_6_load_5_reg_1342),.output_differences_7_load_5(output_differences_7_load_5_reg_1347),.output_differences_0_load_6(output_differences_0_load_6_reg_1432),.output_differences_1_load_6(output_differences_1_load_6_reg_1437),.output_differences_2_load_6(output_differences_2_load_6_reg_1442),.output_differences_3_load_6(output_differences_3_load_6_reg_1447),.output_differences_4_load_6(output_differences_4_load_6_reg_1452),.output_differences_5_load_6(output_differences_5_load_6_reg_1457),.output_differences_6_load_6(output_differences_6_load_6_reg_1462),.output_differences_7_load_6(output_differences_7_load_6_reg_1467),.output_differences_0_load_7(output_differences_0_load_7_reg_1472),.output_differences_1_load_7(output_differences_1_load_7_reg_1477),.output_differences_2_load_7(output_differences_2_load_7_reg_1482),.output_differences_3_load_7(output_differences_3_load_7_reg_1487),.output_differences_4_load_7(output_differences_4_load_7_reg_1492),.output_differences_5_load_7(output_differences_5_load_7_reg_1497),.output_differences_6_load_7(output_differences_6_load_7_reg_1502),.output_differences_7_load_7(output_differences_7_load_7_reg_1507),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.dactivations_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_address0),.dactivations_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_ce0),.dactivations_2_q0(dactivations_2_q0),.dactivations_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_address0),.dactivations_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_ce0),.dactivations_3_q0(dactivations_3_q0),.dactivations_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_address0),.dactivations_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_ce0),.dactivations_4_q0(dactivations_4_q0),.dactivations_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_address0),.dactivations_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_ce0),.dactivations_5_q0(dactivations_5_q0),.dactivations_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_address0),.dactivations_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_ce0),.dactivations_6_q0(dactivations_6_q0),.dactivations_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_address0),.dactivations_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_ce0),.dactivations_7_q0(dactivations_7_q0),.grp_fu_1512_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din0),.grp_fu_1512_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din1),.grp_fu_1512_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_opcode),.grp_fu_1512_p_dout0(grp_fu_3556_p_dout0),.grp_fu_1512_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_ce),.grp_fu_1516_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din0),.grp_fu_1516_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din1),.grp_fu_1516_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_opcode),.grp_fu_1516_p_dout0(grp_fu_3560_p_dout0),.grp_fu_1516_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_ce),.grp_fu_1520_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din0),.grp_fu_1520_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din1),.grp_fu_1520_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_opcode),.grp_fu_1520_p_dout0(grp_fu_3564_p_dout0),.grp_fu_1520_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_ce),.grp_fu_1524_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din0),.grp_fu_1524_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din1),.grp_fu_1524_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_opcode),.grp_fu_1524_p_dout0(grp_fu_3568_p_dout0),.grp_fu_1524_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_ce),.grp_fu_1528_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din0),.grp_fu_1528_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din1),.grp_fu_1528_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_opcode),.grp_fu_1528_p_dout0(grp_fu_3572_p_dout0),.grp_fu_1528_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_ce),.grp_fu_1532_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din0),.grp_fu_1532_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din1),.grp_fu_1532_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_opcode),.grp_fu_1532_p_dout0(grp_fu_3576_p_dout0),.grp_fu_1532_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_ce),.grp_fu_1536_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din0),.grp_fu_1536_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din1),.grp_fu_1536_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_opcode),.grp_fu_1536_p_dout0(grp_fu_3580_p_dout0),.grp_fu_1536_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_ce),.grp_fu_1540_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din0),.grp_fu_1540_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din1),.grp_fu_1540_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_opcode),.grp_fu_1540_p_dout0(grp_fu_3584_p_dout0),.grp_fu_1540_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_ce),.grp_fu_1544_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din0),.grp_fu_1544_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din1),.grp_fu_1544_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_opcode),.grp_fu_1544_p_dout0(grp_fu_3588_p_dout0),.grp_fu_1544_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_ce),.grp_fu_1548_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din0),.grp_fu_1548_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din1),.grp_fu_1548_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_opcode),.grp_fu_1548_p_dout0(grp_fu_3592_p_dout0),.grp_fu_1548_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_ce),.grp_fu_1552_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din0),.grp_fu_1552_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din1),.grp_fu_1552_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_opcode),.grp_fu_1552_p_dout0(grp_fu_3596_p_dout0),.grp_fu_1552_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_ce),.grp_fu_1556_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din0),.grp_fu_1556_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din1),.grp_fu_1556_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_opcode),.grp_fu_1556_p_dout0(grp_fu_3600_p_dout0),.grp_fu_1556_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_ce),.grp_fu_1560_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din0),.grp_fu_1560_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din1),.grp_fu_1560_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_opcode),.grp_fu_1560_p_dout0(grp_fu_3604_p_dout0),.grp_fu_1560_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_ce),.grp_fu_1564_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din0),.grp_fu_1564_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din1),.grp_fu_1564_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_opcode),.grp_fu_1564_p_dout0(grp_fu_3608_p_dout0),.grp_fu_1564_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_ce),.grp_fu_1568_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din0),.grp_fu_1568_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din1),.grp_fu_1568_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_opcode),.grp_fu_1568_p_dout0(grp_fu_3612_p_dout0),.grp_fu_1568_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_ce),.grp_fu_1572_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din0),.grp_fu_1572_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din1),.grp_fu_1572_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_opcode),.grp_fu_1572_p_dout0(grp_fu_3616_p_dout0),.grp_fu_1572_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_ce),.grp_fu_1576_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din0),.grp_fu_1576_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din1),.grp_fu_1576_p_dout0(grp_fu_3620_p_dout0),.grp_fu_1576_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_ce),.grp_fu_1580_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din0),.grp_fu_1580_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din1),.grp_fu_1580_p_dout0(grp_fu_3624_p_dout0),.grp_fu_1580_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_ce),.grp_fu_1584_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din0),.grp_fu_1584_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din1),.grp_fu_1584_p_dout0(grp_fu_3628_p_dout0),.grp_fu_1584_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_ce),.grp_fu_1588_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din0),.grp_fu_1588_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din1),.grp_fu_1588_p_dout0(grp_fu_3632_p_dout0),.grp_fu_1588_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_ce),.grp_fu_1592_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din0),.grp_fu_1592_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din1),.grp_fu_1592_p_dout0(grp_fu_3636_p_dout0),.grp_fu_1592_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_ce),.grp_fu_1596_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din0),.grp_fu_1596_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din1),.grp_fu_1596_p_dout0(grp_fu_3640_p_dout0),.grp_fu_1596_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_ce),.grp_fu_1600_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din0),.grp_fu_1600_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din1),.grp_fu_1600_p_dout0(grp_fu_3644_p_dout0),.grp_fu_1600_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_ce),.grp_fu_1604_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din0),.grp_fu_1604_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din1),.grp_fu_1604_p_dout0(grp_fu_3648_p_dout0),.grp_fu_1604_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_ce),.grp_fu_1608_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din0),.grp_fu_1608_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din1),.grp_fu_1608_p_dout0(grp_fu_3652_p_dout0),.grp_fu_1608_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_ce),.grp_fu_1612_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din0),.grp_fu_1612_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din1),.grp_fu_1612_p_dout0(grp_fu_3656_p_dout0),.grp_fu_1612_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_ce),.grp_fu_1616_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din0),.grp_fu_1616_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din1),.grp_fu_1616_p_dout0(grp_fu_3660_p_dout0),.grp_fu_1616_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_ce),.grp_fu_1620_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din0),.grp_fu_1620_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din1),.grp_fu_1620_p_dout0(grp_fu_3664_p_dout0),.grp_fu_1620_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_ce),.grp_fu_1624_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din0),.grp_fu_1624_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din1),.grp_fu_1624_p_dout0(grp_fu_3668_p_dout0),.grp_fu_1624_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_ce),.grp_fu_1628_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din0),.grp_fu_1628_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din1),.grp_fu_1628_p_dout0(grp_fu_3672_p_dout0),.grp_fu_1628_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_ce),.grp_fu_1632_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din0),.grp_fu_1632_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din1),.grp_fu_1632_p_dout0(grp_fu_3676_p_dout0),.grp_fu_1632_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_ce),.grp_fu_1636_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din0),.grp_fu_1636_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din1),.grp_fu_1636_p_dout0(grp_fu_3680_p_dout0),.grp_fu_1636_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_ce),.grp_fu_1640_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din0),.grp_fu_1640_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din1),.grp_fu_1640_p_dout0(grp_fu_3692_p_dout0),.grp_fu_1640_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_1_reg_992 <= output_differences_0_q0;
        output_differences_0_load_reg_952 <= output_differences_0_q1;
        output_differences_1_load_1_reg_997 <= output_differences_1_q0;
        output_differences_1_load_reg_957 <= output_differences_1_q1;
        output_differences_2_load_1_reg_1002 <= output_differences_2_q0;
        output_differences_2_load_reg_962 <= output_differences_2_q1;
        output_differences_3_load_1_reg_1007 <= output_differences_3_q0;
        output_differences_3_load_reg_967 <= output_differences_3_q1;
        output_differences_4_load_1_reg_1012 <= output_differences_4_q0;
        output_differences_4_load_reg_972 <= output_differences_4_q1;
        output_differences_5_load_1_reg_1017 <= output_differences_5_q0;
        output_differences_5_load_reg_977 <= output_differences_5_q1;
        output_differences_6_load_1_reg_1022 <= output_differences_6_q0;
        output_differences_6_load_reg_982 <= output_differences_6_q1;
        output_differences_7_load_1_reg_1027 <= output_differences_7_q0;
        output_differences_7_load_reg_987 <= output_differences_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_load_2_reg_1112 <= output_differences_0_q1;
        output_differences_0_load_3_reg_1152 <= output_differences_0_q0;
        output_differences_1_load_2_reg_1117 <= output_differences_1_q1;
        output_differences_1_load_3_reg_1157 <= output_differences_1_q0;
        output_differences_2_load_2_reg_1122 <= output_differences_2_q1;
        output_differences_2_load_3_reg_1162 <= output_differences_2_q0;
        output_differences_3_load_2_reg_1127 <= output_differences_3_q1;
        output_differences_3_load_3_reg_1167 <= output_differences_3_q0;
        output_differences_4_load_2_reg_1132 <= output_differences_4_q1;
        output_differences_4_load_3_reg_1172 <= output_differences_4_q0;
        output_differences_5_load_2_reg_1137 <= output_differences_5_q1;
        output_differences_5_load_3_reg_1177 <= output_differences_5_q0;
        output_differences_6_load_2_reg_1142 <= output_differences_6_q1;
        output_differences_6_load_3_reg_1182 <= output_differences_6_q0;
        output_differences_7_load_2_reg_1147 <= output_differences_7_q1;
        output_differences_7_load_3_reg_1187 <= output_differences_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_load_4_reg_1272 <= output_differences_0_q1;
        output_differences_0_load_5_reg_1312 <= output_differences_0_q0;
        output_differences_1_load_4_reg_1277 <= output_differences_1_q1;
        output_differences_1_load_5_reg_1317 <= output_differences_1_q0;
        output_differences_2_load_4_reg_1282 <= output_differences_2_q1;
        output_differences_2_load_5_reg_1322 <= output_differences_2_q0;
        output_differences_3_load_4_reg_1287 <= output_differences_3_q1;
        output_differences_3_load_5_reg_1327 <= output_differences_3_q0;
        output_differences_4_load_4_reg_1292 <= output_differences_4_q1;
        output_differences_4_load_5_reg_1332 <= output_differences_4_q0;
        output_differences_5_load_4_reg_1297 <= output_differences_5_q1;
        output_differences_5_load_5_reg_1337 <= output_differences_5_q0;
        output_differences_6_load_4_reg_1302 <= output_differences_6_q1;
        output_differences_6_load_5_reg_1342 <= output_differences_6_q0;
        output_differences_7_load_4_reg_1307 <= output_differences_7_q1;
        output_differences_7_load_5_reg_1347 <= output_differences_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_0_load_6_reg_1432 <= output_differences_0_q1;
        output_differences_0_load_7_reg_1472 <= output_differences_0_q0;
        output_differences_1_load_6_reg_1437 <= output_differences_1_q1;
        output_differences_1_load_7_reg_1477 <= output_differences_1_q0;
        output_differences_2_load_6_reg_1442 <= output_differences_2_q1;
        output_differences_2_load_7_reg_1482 <= output_differences_2_q0;
        output_differences_3_load_6_reg_1447 <= output_differences_3_q1;
        output_differences_3_load_7_reg_1487 <= output_differences_3_q0;
        output_differences_4_load_6_reg_1452 <= output_differences_4_q1;
        output_differences_4_load_7_reg_1492 <= output_differences_4_q0;
        output_differences_5_load_6_reg_1457 <= output_differences_5_q1;
        output_differences_5_load_7_reg_1497 <= output_differences_5_q0;
        output_differences_6_load_6_reg_1462 <= output_differences_6_q1;
        output_differences_6_load_7_reg_1502 <= output_differences_6_q0;
        output_differences_7_load_6_reg_1467 <= output_differences_7_q1;
        output_differences_7_load_7_reg_1507 <= output_differences_7_q0;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1512_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_ce;
    end else begin
        grp_fu_1512_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1516_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_ce;
    end else begin
        grp_fu_1516_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1520_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_ce;
    end else begin
        grp_fu_1520_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1524_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_ce;
    end else begin
        grp_fu_1524_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1528_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_ce;
    end else begin
        grp_fu_1528_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1532_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_ce;
    end else begin
        grp_fu_1532_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1536_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_ce;
    end else begin
        grp_fu_1536_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1540_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_ce;
    end else begin
        grp_fu_1540_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1544_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_ce;
    end else begin
        grp_fu_1544_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1548_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_ce;
    end else begin
        grp_fu_1548_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1552_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_ce;
    end else begin
        grp_fu_1552_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1556_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_ce;
    end else begin
        grp_fu_1556_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1560_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_ce;
    end else begin
        grp_fu_1560_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1564_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_ce;
    end else begin
        grp_fu_1564_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1568_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_ce;
    end else begin
        grp_fu_1568_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1572_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_ce;
    end else begin
        grp_fu_1572_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1576_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_ce;
    end else begin
        grp_fu_1576_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1580_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_ce;
    end else begin
        grp_fu_1580_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1584_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_ce;
    end else begin
        grp_fu_1584_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1588_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_ce;
    end else begin
        grp_fu_1588_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1592_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_ce;
    end else begin
        grp_fu_1592_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1596_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_ce;
    end else begin
        grp_fu_1596_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1600_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_ce;
    end else begin
        grp_fu_1600_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1604_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_ce;
    end else begin
        grp_fu_1604_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1608_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_ce;
    end else begin
        grp_fu_1608_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1612_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_ce;
    end else begin
        grp_fu_1612_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1616_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_ce;
    end else begin
        grp_fu_1616_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1620_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_ce;
    end else begin
        grp_fu_1620_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1624_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_ce;
    end else begin
        grp_fu_1624_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1628_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_ce;
    end else begin
        grp_fu_1628_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1632_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_ce;
    end else begin
        grp_fu_1632_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1636_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_ce;
    end else begin
        grp_fu_1636_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1640_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_ce;
    end else begin
        grp_fu_1640_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address0_local = 64'd1;
    end else begin
        output_differences_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address1_local = 64'd0;
    end else begin
        output_differences_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_0_ce0_local = 1'b1;
    end else begin
        output_differences_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_0_ce1_local = 1'b1;
    end else begin
        output_differences_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address0_local = 64'd1;
    end else begin
        output_differences_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address1_local = 64'd0;
    end else begin
        output_differences_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_1_ce0_local = 1'b1;
    end else begin
        output_differences_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_1_ce1_local = 1'b1;
    end else begin
        output_differences_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_2_address0_local = 64'd1;
    end else begin
        output_differences_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_2_address1_local = 64'd0;
    end else begin
        output_differences_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_2_ce0_local = 1'b1;
    end else begin
        output_differences_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_2_ce1_local = 1'b1;
    end else begin
        output_differences_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_3_address0_local = 64'd1;
    end else begin
        output_differences_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_3_address1_local = 64'd0;
    end else begin
        output_differences_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_3_ce0_local = 1'b1;
    end else begin
        output_differences_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_3_ce1_local = 1'b1;
    end else begin
        output_differences_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_4_address0_local = 64'd1;
    end else begin
        output_differences_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_4_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_4_address1_local = 64'd0;
    end else begin
        output_differences_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_4_ce0_local = 1'b1;
    end else begin
        output_differences_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_4_ce1_local = 1'b1;
    end else begin
        output_differences_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_5_address0_local = 64'd1;
    end else begin
        output_differences_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_5_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_5_address1_local = 64'd0;
    end else begin
        output_differences_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_5_ce0_local = 1'b1;
    end else begin
        output_differences_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_5_ce1_local = 1'b1;
    end else begin
        output_differences_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_6_address0_local = 64'd1;
    end else begin
        output_differences_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_6_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_6_address1_local = 64'd0;
    end else begin
        output_differences_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_6_ce0_local = 1'b1;
    end else begin
        output_differences_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_6_ce1_local = 1'b1;
    end else begin
        output_differences_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_7_address0_local = 64'd1;
    end else begin
        output_differences_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_7_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_7_address1_local = 64'd0;
    end else begin
        output_differences_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_7_ce0_local = 1'b1;
    end else begin
        output_differences_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_7_ce1_local = 1'b1;
    end else begin
        output_differences_7_ce1_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_0_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_1_ce0;
assign dactivations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_address0;
assign dactivations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_2_ce0;
assign dactivations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_address0;
assign dactivations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_3_ce0;
assign dactivations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_address0;
assign dactivations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_4_ce0;
assign dactivations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_address0;
assign dactivations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_5_ce0;
assign dactivations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_address0;
assign dactivations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_6_ce0;
assign dactivations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_address0;
assign dactivations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_dactivations_7_ce0;
assign grp_fu_3556_p_ce = grp_fu_1512_ce;
assign grp_fu_3556_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din0;
assign grp_fu_3556_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_din1;
assign grp_fu_3556_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1512_p_opcode;
assign grp_fu_3560_p_ce = grp_fu_1516_ce;
assign grp_fu_3560_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din0;
assign grp_fu_3560_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_din1;
assign grp_fu_3560_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1516_p_opcode;
assign grp_fu_3564_p_ce = grp_fu_1520_ce;
assign grp_fu_3564_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din0;
assign grp_fu_3564_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_din1;
assign grp_fu_3564_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1520_p_opcode;
assign grp_fu_3568_p_ce = grp_fu_1524_ce;
assign grp_fu_3568_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din0;
assign grp_fu_3568_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_din1;
assign grp_fu_3568_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1524_p_opcode;
assign grp_fu_3572_p_ce = grp_fu_1528_ce;
assign grp_fu_3572_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din0;
assign grp_fu_3572_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_din1;
assign grp_fu_3572_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1528_p_opcode;
assign grp_fu_3576_p_ce = grp_fu_1532_ce;
assign grp_fu_3576_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din0;
assign grp_fu_3576_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_din1;
assign grp_fu_3576_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1532_p_opcode;
assign grp_fu_3580_p_ce = grp_fu_1536_ce;
assign grp_fu_3580_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din0;
assign grp_fu_3580_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1536_p_din1;
assign grp_fu_3580_p_opcode = 2'd0;
assign grp_fu_3584_p_ce = grp_fu_1540_ce;
assign grp_fu_3584_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din0;
assign grp_fu_3584_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1540_p_din1;
assign grp_fu_3584_p_opcode = 2'd0;
assign grp_fu_3588_p_ce = grp_fu_1544_ce;
assign grp_fu_3588_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din0;
assign grp_fu_3588_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1544_p_din1;
assign grp_fu_3588_p_opcode = 2'd0;
assign grp_fu_3592_p_ce = grp_fu_1548_ce;
assign grp_fu_3592_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din0;
assign grp_fu_3592_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1548_p_din1;
assign grp_fu_3592_p_opcode = 2'd0;
assign grp_fu_3596_p_ce = grp_fu_1552_ce;
assign grp_fu_3596_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din0;
assign grp_fu_3596_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1552_p_din1;
assign grp_fu_3596_p_opcode = 2'd0;
assign grp_fu_3600_p_ce = grp_fu_1556_ce;
assign grp_fu_3600_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din0;
assign grp_fu_3600_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1556_p_din1;
assign grp_fu_3600_p_opcode = 2'd0;
assign grp_fu_3604_p_ce = grp_fu_1560_ce;
assign grp_fu_3604_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din0;
assign grp_fu_3604_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1560_p_din1;
assign grp_fu_3604_p_opcode = 2'd0;
assign grp_fu_3608_p_ce = grp_fu_1564_ce;
assign grp_fu_3608_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din0;
assign grp_fu_3608_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1564_p_din1;
assign grp_fu_3608_p_opcode = 2'd0;
assign grp_fu_3612_p_ce = grp_fu_1568_ce;
assign grp_fu_3612_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din0;
assign grp_fu_3612_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1568_p_din1;
assign grp_fu_3612_p_opcode = 2'd0;
assign grp_fu_3616_p_ce = grp_fu_1572_ce;
assign grp_fu_3616_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din0;
assign grp_fu_3616_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1572_p_din1;
assign grp_fu_3616_p_opcode = 2'd0;
assign grp_fu_3620_p_ce = grp_fu_1576_ce;
assign grp_fu_3620_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din0;
assign grp_fu_3620_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1576_p_din1;
assign grp_fu_3624_p_ce = grp_fu_1580_ce;
assign grp_fu_3624_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din0;
assign grp_fu_3624_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1580_p_din1;
assign grp_fu_3628_p_ce = grp_fu_1584_ce;
assign grp_fu_3628_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din0;
assign grp_fu_3628_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1584_p_din1;
assign grp_fu_3632_p_ce = grp_fu_1588_ce;
assign grp_fu_3632_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din0;
assign grp_fu_3632_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1588_p_din1;
assign grp_fu_3636_p_ce = grp_fu_1592_ce;
assign grp_fu_3636_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din0;
assign grp_fu_3636_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1592_p_din1;
assign grp_fu_3640_p_ce = grp_fu_1596_ce;
assign grp_fu_3640_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din0;
assign grp_fu_3640_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1596_p_din1;
assign grp_fu_3644_p_ce = grp_fu_1600_ce;
assign grp_fu_3644_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din0;
assign grp_fu_3644_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1600_p_din1;
assign grp_fu_3648_p_ce = grp_fu_1604_ce;
assign grp_fu_3648_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din0;
assign grp_fu_3648_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1604_p_din1;
assign grp_fu_3652_p_ce = grp_fu_1608_ce;
assign grp_fu_3652_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din0;
assign grp_fu_3652_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1608_p_din1;
assign grp_fu_3656_p_ce = grp_fu_1612_ce;
assign grp_fu_3656_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din0;
assign grp_fu_3656_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1612_p_din1;
assign grp_fu_3660_p_ce = grp_fu_1616_ce;
assign grp_fu_3660_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din0;
assign grp_fu_3660_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1616_p_din1;
assign grp_fu_3664_p_ce = grp_fu_1620_ce;
assign grp_fu_3664_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din0;
assign grp_fu_3664_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1620_p_din1;
assign grp_fu_3668_p_ce = grp_fu_1624_ce;
assign grp_fu_3668_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din0;
assign grp_fu_3668_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1624_p_din1;
assign grp_fu_3672_p_ce = grp_fu_1628_ce;
assign grp_fu_3672_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din0;
assign grp_fu_3672_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1628_p_din1;
assign grp_fu_3676_p_ce = grp_fu_1632_ce;
assign grp_fu_3676_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din0;
assign grp_fu_3676_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1632_p_din1;
assign grp_fu_3680_p_ce = grp_fu_1636_ce;
assign grp_fu_3680_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din0;
assign grp_fu_3680_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1636_p_din1;
assign grp_fu_3692_p_ce = grp_fu_1640_ce;
assign grp_fu_3692_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din0;
assign grp_fu_3692_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_grp_fu_1640_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_0_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_1_we0;
assign oracle_activations_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_address0;
assign oracle_activations_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_ce0;
assign oracle_activations_2_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_d0;
assign oracle_activations_2_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_2_we0;
assign oracle_activations_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_address0;
assign oracle_activations_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_ce0;
assign oracle_activations_3_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_d0;
assign oracle_activations_3_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_3_we0;
assign oracle_activations_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_address0;
assign oracle_activations_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_ce0;
assign oracle_activations_4_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_d0;
assign oracle_activations_4_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_4_we0;
assign oracle_activations_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_address0;
assign oracle_activations_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_ce0;
assign oracle_activations_5_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_d0;
assign oracle_activations_5_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_5_we0;
assign oracle_activations_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_address0;
assign oracle_activations_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_ce0;
assign oracle_activations_6_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_d0;
assign oracle_activations_6_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_6_we0;
assign oracle_activations_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_address0;
assign oracle_activations_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_ce0;
assign oracle_activations_7_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_d0;
assign oracle_activations_7_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_oracle_activations_7_we0;
assign output_differences_0_address0 = output_differences_0_address0_local;
assign output_differences_0_address1 = output_differences_0_address1_local;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_1_address0 = output_differences_1_address0_local;
assign output_differences_1_address1 = output_differences_1_address1_local;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign output_differences_2_address0 = output_differences_2_address0_local;
assign output_differences_2_address1 = output_differences_2_address1_local;
assign output_differences_2_ce0 = output_differences_2_ce0_local;
assign output_differences_2_ce1 = output_differences_2_ce1_local;
assign output_differences_3_address0 = output_differences_3_address0_local;
assign output_differences_3_address1 = output_differences_3_address1_local;
assign output_differences_3_ce0 = output_differences_3_ce0_local;
assign output_differences_3_ce1 = output_differences_3_ce1_local;
assign output_differences_4_address0 = output_differences_4_address0_local;
assign output_differences_4_address1 = output_differences_4_address1_local;
assign output_differences_4_ce0 = output_differences_4_ce0_local;
assign output_differences_4_ce1 = output_differences_4_ce1_local;
assign output_differences_5_address0 = output_differences_5_address0_local;
assign output_differences_5_address1 = output_differences_5_address1_local;
assign output_differences_5_ce0 = output_differences_5_ce0_local;
assign output_differences_5_ce1 = output_differences_5_ce1_local;
assign output_differences_6_address0 = output_differences_6_address0_local;
assign output_differences_6_address1 = output_differences_6_address1_local;
assign output_differences_6_ce0 = output_differences_6_ce0_local;
assign output_differences_6_ce1 = output_differences_6_ce1_local;
assign output_differences_7_address0 = output_differences_7_address0_local;
assign output_differences_7_address1 = output_differences_7_address1_local;
assign output_differences_7_ce0 = output_differences_7_ce0_local;
assign output_differences_7_ce1 = output_differences_7_ce1_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_3_ce1;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address0;
assign weights2_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_address1;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce0;
assign weights2_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_4_ce1;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address0;
assign weights2_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_address1;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce0;
assign weights2_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_5_ce1;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address0;
assign weights2_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_address1;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce0;
assign weights2_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_6_ce1;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address0;
assign weights2_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_address1;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce0;
assign weights2_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_740_weights2_7_ce1;
endmodule 
