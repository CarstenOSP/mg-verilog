
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_8_address1,weights2_8_ce1,weights2_8_q1,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_9_address1,weights2_9_ce1,weights2_9_q1,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_10_address1,weights2_10_ce1,weights2_10_q1,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_11_address1,weights2_11_ce1,weights2_11_q1,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_12_address1,weights2_12_ce1,weights2_12_q1,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_13_address1,weights2_13_ce1,weights2_13_q1,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_14_address1,weights2_14_ce1,weights2_14_q1,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_15_address1,weights2_15_ce1,weights2_15_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_4_address1,output_differences_4_ce1,output_differences_4_q1,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_5_address1,output_differences_5_ce1,output_differences_5_q1,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_6_address1,output_differences_6_ce1,output_differences_6_q1,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_7_address1,output_differences_7_ce1,output_differences_7_q1,output_differences_8_address0,output_differences_8_ce0,output_differences_8_q0,output_differences_8_address1,output_differences_8_ce1,output_differences_8_q1,output_differences_9_address0,output_differences_9_ce0,output_differences_9_q0,output_differences_9_address1,output_differences_9_ce1,output_differences_9_q1,output_differences_10_address0,output_differences_10_ce0,output_differences_10_q0,output_differences_10_address1,output_differences_10_ce1,output_differences_10_q1,output_differences_11_address0,output_differences_11_ce0,output_differences_11_q0,output_differences_11_address1,output_differences_11_ce1,output_differences_11_q1,output_differences_12_address0,output_differences_12_ce0,output_differences_12_q0,output_differences_12_address1,output_differences_12_ce1,output_differences_12_q1,output_differences_13_address0,output_differences_13_ce0,output_differences_13_q0,output_differences_13_address1,output_differences_13_ce1,output_differences_13_q1,output_differences_14_address0,output_differences_14_ce0,output_differences_14_q0,output_differences_14_address1,output_differences_14_ce1,output_differences_14_q1,output_differences_15_address0,output_differences_15_ce0,output_differences_15_q0,output_differences_15_address1,output_differences_15_ce1,output_differences_15_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,oracle_activations_8_address0,oracle_activations_8_ce0,oracle_activations_8_we0,oracle_activations_8_d0,oracle_activations_9_address0,oracle_activations_9_ce0,oracle_activations_9_we0,oracle_activations_9_d0,oracle_activations_10_address0,oracle_activations_10_ce0,oracle_activations_10_we0,oracle_activations_10_d0,oracle_activations_11_address0,oracle_activations_11_ce0,oracle_activations_11_we0,oracle_activations_11_d0,oracle_activations_12_address0,oracle_activations_12_ce0,oracle_activations_12_we0,oracle_activations_12_d0,oracle_activations_13_address0,oracle_activations_13_ce0,oracle_activations_13_we0,oracle_activations_13_d0,oracle_activations_14_address0,oracle_activations_14_ce0,oracle_activations_14_we0,oracle_activations_14_d0,oracle_activations_15_address0,oracle_activations_15_ce0,oracle_activations_15_we0,oracle_activations_15_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,dactivations_8_address0,dactivations_8_ce0,dactivations_8_q0,dactivations_9_address0,dactivations_9_ce0,dactivations_9_q0,dactivations_10_address0,dactivations_10_ce0,dactivations_10_q0,dactivations_11_address0,dactivations_11_ce0,dactivations_11_q0,dactivations_12_address0,dactivations_12_ce0,dactivations_12_q0,dactivations_13_address0,dactivations_13_ce0,dactivations_13_q0,dactivations_14_address0,dactivations_14_ce0,dactivations_14_q0,dactivations_15_address0,dactivations_15_ce0,dactivations_15_q0,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce);  
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
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [7:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_4_address1;
output   weights2_4_ce1;
input  [63:0] weights2_4_q1;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_5_address1;
output   weights2_5_ce1;
input  [63:0] weights2_5_q1;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_6_address1;
output   weights2_6_ce1;
input  [63:0] weights2_6_q1;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_7_address1;
output   weights2_7_ce1;
input  [63:0] weights2_7_q1;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_8_address1;
output   weights2_8_ce1;
input  [63:0] weights2_8_q1;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_9_address1;
output   weights2_9_ce1;
input  [63:0] weights2_9_q1;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_10_address1;
output   weights2_10_ce1;
input  [63:0] weights2_10_q1;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_11_address1;
output   weights2_11_ce1;
input  [63:0] weights2_11_q1;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_12_address1;
output   weights2_12_ce1;
input  [63:0] weights2_12_q1;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_13_address1;
output   weights2_13_ce1;
input  [63:0] weights2_13_q1;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [7:0] weights2_14_address1;
output   weights2_14_ce1;
input  [63:0] weights2_14_q1;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [7:0] weights2_15_address1;
output   weights2_15_ce1;
input  [63:0] weights2_15_q1;
output  [1:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [1:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [1:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [1:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [1:0] output_differences_2_address0;
output   output_differences_2_ce0;
input  [63:0] output_differences_2_q0;
output  [1:0] output_differences_2_address1;
output   output_differences_2_ce1;
input  [63:0] output_differences_2_q1;
output  [1:0] output_differences_3_address0;
output   output_differences_3_ce0;
input  [63:0] output_differences_3_q0;
output  [1:0] output_differences_3_address1;
output   output_differences_3_ce1;
input  [63:0] output_differences_3_q1;
output  [1:0] output_differences_4_address0;
output   output_differences_4_ce0;
input  [63:0] output_differences_4_q0;
output  [1:0] output_differences_4_address1;
output   output_differences_4_ce1;
input  [63:0] output_differences_4_q1;
output  [1:0] output_differences_5_address0;
output   output_differences_5_ce0;
input  [63:0] output_differences_5_q0;
output  [1:0] output_differences_5_address1;
output   output_differences_5_ce1;
input  [63:0] output_differences_5_q1;
output  [1:0] output_differences_6_address0;
output   output_differences_6_ce0;
input  [63:0] output_differences_6_q0;
output  [1:0] output_differences_6_address1;
output   output_differences_6_ce1;
input  [63:0] output_differences_6_q1;
output  [1:0] output_differences_7_address0;
output   output_differences_7_ce0;
input  [63:0] output_differences_7_q0;
output  [1:0] output_differences_7_address1;
output   output_differences_7_ce1;
input  [63:0] output_differences_7_q1;
output  [1:0] output_differences_8_address0;
output   output_differences_8_ce0;
input  [63:0] output_differences_8_q0;
output  [1:0] output_differences_8_address1;
output   output_differences_8_ce1;
input  [63:0] output_differences_8_q1;
output  [1:0] output_differences_9_address0;
output   output_differences_9_ce0;
input  [63:0] output_differences_9_q0;
output  [1:0] output_differences_9_address1;
output   output_differences_9_ce1;
input  [63:0] output_differences_9_q1;
output  [1:0] output_differences_10_address0;
output   output_differences_10_ce0;
input  [63:0] output_differences_10_q0;
output  [1:0] output_differences_10_address1;
output   output_differences_10_ce1;
input  [63:0] output_differences_10_q1;
output  [1:0] output_differences_11_address0;
output   output_differences_11_ce0;
input  [63:0] output_differences_11_q0;
output  [1:0] output_differences_11_address1;
output   output_differences_11_ce1;
input  [63:0] output_differences_11_q1;
output  [1:0] output_differences_12_address0;
output   output_differences_12_ce0;
input  [63:0] output_differences_12_q0;
output  [1:0] output_differences_12_address1;
output   output_differences_12_ce1;
input  [63:0] output_differences_12_q1;
output  [1:0] output_differences_13_address0;
output   output_differences_13_ce0;
input  [63:0] output_differences_13_q0;
output  [1:0] output_differences_13_address1;
output   output_differences_13_ce1;
input  [63:0] output_differences_13_q1;
output  [1:0] output_differences_14_address0;
output   output_differences_14_ce0;
input  [63:0] output_differences_14_q0;
output  [1:0] output_differences_14_address1;
output   output_differences_14_ce1;
input  [63:0] output_differences_14_q1;
output  [1:0] output_differences_15_address0;
output   output_differences_15_ce0;
input  [63:0] output_differences_15_q0;
output  [1:0] output_differences_15_address1;
output   output_differences_15_ce1;
input  [63:0] output_differences_15_q1;
output  [1:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [1:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [1:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [1:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [1:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [1:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [1:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [1:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [1:0] oracle_activations_8_address0;
output   oracle_activations_8_ce0;
output   oracle_activations_8_we0;
output  [63:0] oracle_activations_8_d0;
output  [1:0] oracle_activations_9_address0;
output   oracle_activations_9_ce0;
output   oracle_activations_9_we0;
output  [63:0] oracle_activations_9_d0;
output  [1:0] oracle_activations_10_address0;
output   oracle_activations_10_ce0;
output   oracle_activations_10_we0;
output  [63:0] oracle_activations_10_d0;
output  [1:0] oracle_activations_11_address0;
output   oracle_activations_11_ce0;
output   oracle_activations_11_we0;
output  [63:0] oracle_activations_11_d0;
output  [1:0] oracle_activations_12_address0;
output   oracle_activations_12_ce0;
output   oracle_activations_12_we0;
output  [63:0] oracle_activations_12_d0;
output  [1:0] oracle_activations_13_address0;
output   oracle_activations_13_ce0;
output   oracle_activations_13_we0;
output  [63:0] oracle_activations_13_d0;
output  [1:0] oracle_activations_14_address0;
output   oracle_activations_14_ce0;
output   oracle_activations_14_we0;
output  [63:0] oracle_activations_14_d0;
output  [1:0] oracle_activations_15_address0;
output   oracle_activations_15_ce0;
output   oracle_activations_15_we0;
output  [63:0] oracle_activations_15_d0;
output  [1:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [1:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [1:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [1:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [1:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [1:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [1:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [1:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [1:0] dactivations_8_address0;
output   dactivations_8_ce0;
input  [63:0] dactivations_8_q0;
output  [1:0] dactivations_9_address0;
output   dactivations_9_ce0;
input  [63:0] dactivations_9_q0;
output  [1:0] dactivations_10_address0;
output   dactivations_10_ce0;
input  [63:0] dactivations_10_q0;
output  [1:0] dactivations_11_address0;
output   dactivations_11_ce0;
input  [63:0] dactivations_11_q0;
output  [1:0] dactivations_12_address0;
output   dactivations_12_ce0;
input  [63:0] dactivations_12_q0;
output  [1:0] dactivations_13_address0;
output   dactivations_13_ce0;
input  [63:0] dactivations_13_q0;
output  [1:0] dactivations_14_address0;
output   dactivations_14_ce0;
input  [63:0] dactivations_14_q0;
output  [1:0] dactivations_15_address0;
output   dactivations_15_ce0;
input  [63:0] dactivations_15_q0;
output  [63:0] grp_fu_4564_p_din0;
output  [63:0] grp_fu_4564_p_din1;
output  [0:0] grp_fu_4564_p_opcode;
input  [63:0] grp_fu_4564_p_dout0;
output   grp_fu_4564_p_ce;
output  [63:0] grp_fu_4692_p_din0;
output  [63:0] grp_fu_4692_p_din1;
input  [63:0] grp_fu_4692_p_dout0;
output   grp_fu_4692_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln102_fu_698_p2;
reg   [6:0] add_ln102_reg_854;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln102_fu_704_p1;
reg   [5:0] trunc_ln102_reg_859;
wire   [3:0] trunc_ln102_1_fu_709_p1;
reg   [3:0] trunc_ln102_1_reg_864;
reg   [1:0] oracle_activations_0_addr_reg_869;
reg   [1:0] oracle_activations_8_addr_reg_874;
reg   [1:0] oracle_activations_4_addr_reg_879;
reg   [1:0] oracle_activations_12_addr_reg_884;
reg   [1:0] oracle_activations_2_addr_reg_889;
reg   [1:0] oracle_activations_6_addr_reg_894;
reg   [1:0] oracle_activations_10_addr_reg_899;
reg   [1:0] oracle_activations_14_addr_reg_904;
reg   [1:0] oracle_activations_1_addr_reg_909;
reg   [1:0] oracle_activations_3_addr_reg_914;
reg   [1:0] oracle_activations_5_addr_reg_919;
reg   [1:0] oracle_activations_7_addr_reg_924;
reg   [1:0] oracle_activations_9_addr_reg_929;
reg   [1:0] oracle_activations_11_addr_reg_934;
reg   [1:0] oracle_activations_13_addr_reg_939;
reg   [1:0] oracle_activations_15_addr_reg_944;
wire   [63:0] tmp_fu_759_p35;
reg   [63:0] tmp_reg_1029;
wire    ap_CS_fsm_state3;
reg   [63:0] mul_reg_1037;
wire    ap_CS_fsm_state10;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_ready;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce1;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce0;
wire   [1:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce1;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce0;
wire   [7:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce1;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_add113_out;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_add113_out_ap_vld;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg;
wire   [0:0] icmp_ln102_fu_692_p2;
wire   [63:0] zext_ln103_fu_723_p1;
reg   [6:0] i_fu_202;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state4;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce0_local;
reg    dactivations_4_ce0_local;
reg    dactivations_5_ce0_local;
reg    dactivations_6_ce0_local;
reg    dactivations_7_ce0_local;
reg    dactivations_8_ce0_local;
reg    dactivations_9_ce0_local;
reg    dactivations_10_ce0_local;
reg    dactivations_11_ce0_local;
reg    dactivations_12_ce0_local;
reg    dactivations_13_ce0_local;
reg    dactivations_14_ce0_local;
reg    dactivations_15_ce0_local;
reg    oracle_activations_14_we0_local;
reg    oracle_activations_14_ce0_local;
reg    oracle_activations_13_we0_local;
reg    oracle_activations_13_ce0_local;
reg    oracle_activations_12_we0_local;
reg    oracle_activations_12_ce0_local;
reg    oracle_activations_11_we0_local;
reg    oracle_activations_11_ce0_local;
reg    oracle_activations_10_we0_local;
reg    oracle_activations_10_ce0_local;
reg    oracle_activations_9_we0_local;
reg    oracle_activations_9_ce0_local;
reg    oracle_activations_8_we0_local;
reg    oracle_activations_8_ce0_local;
reg    oracle_activations_7_we0_local;
reg    oracle_activations_7_ce0_local;
reg    oracle_activations_6_we0_local;
reg    oracle_activations_6_ce0_local;
reg    oracle_activations_5_we0_local;
reg    oracle_activations_5_ce0_local;
reg    oracle_activations_4_we0_local;
reg    oracle_activations_4_ce0_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg    oracle_activations_15_we0_local;
reg    oracle_activations_15_ce0_local;
reg   [63:0] grp_fu_680_p0;
reg   [63:0] grp_fu_680_p1;
wire   [1:0] lshr_ln101_1_fu_713_p4;
wire   [63:0] tmp_fu_759_p33;
reg    grp_fu_680_ce;
reg    grp_fu_1057_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire   [3:0] tmp_fu_759_p1;
wire   [3:0] tmp_fu_759_p3;
wire   [3:0] tmp_fu_759_p5;
wire   [3:0] tmp_fu_759_p7;
wire   [3:0] tmp_fu_759_p9;
wire   [3:0] tmp_fu_759_p11;
wire   [3:0] tmp_fu_759_p13;
wire   [3:0] tmp_fu_759_p15;
wire  signed [3:0] tmp_fu_759_p17;
wire  signed [3:0] tmp_fu_759_p19;
wire  signed [3:0] tmp_fu_759_p21;
wire  signed [3:0] tmp_fu_759_p23;
wire  signed [3:0] tmp_fu_759_p25;
wire  signed [3:0] tmp_fu_759_p27;
wire  signed [3:0] tmp_fu_759_p29;
wire  signed [3:0] tmp_fu_759_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg = 1'b0;
#0 i_fu_202 = 7'd0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_activations1_loop grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_ready),.output_differences_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address0),.output_differences_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce0),.output_differences_0_q0(output_differences_0_q0),.output_differences_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address1),.output_differences_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce1),.output_differences_0_q1(output_differences_0_q1),.i(trunc_ln102_reg_859),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address0),.output_differences_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce0),.output_differences_1_q0(output_differences_1_q0),.output_differences_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address1),.output_differences_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce1),.output_differences_1_q1(output_differences_1_q1),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address0),.output_differences_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce0),.output_differences_2_q0(output_differences_2_q0),.output_differences_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address1),.output_differences_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce1),.output_differences_2_q1(output_differences_2_q1),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address0),.output_differences_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce0),.output_differences_3_q0(output_differences_3_q0),.output_differences_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address1),.output_differences_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce1),.output_differences_3_q1(output_differences_3_q1),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address0),.output_differences_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce0),.output_differences_4_q0(output_differences_4_q0),.output_differences_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address1),.output_differences_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce1),.output_differences_4_q1(output_differences_4_q1),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address1),.weights2_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.output_differences_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address0),.output_differences_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce0),.output_differences_5_q0(output_differences_5_q0),.output_differences_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address1),.output_differences_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce1),.output_differences_5_q1(output_differences_5_q1),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address1),.weights2_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.output_differences_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address0),.output_differences_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce0),.output_differences_6_q0(output_differences_6_q0),.output_differences_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address1),.output_differences_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce1),.output_differences_6_q1(output_differences_6_q1),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address1),.weights2_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.output_differences_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address0),.output_differences_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce0),.output_differences_7_q0(output_differences_7_q0),.output_differences_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address1),.output_differences_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce1),.output_differences_7_q1(output_differences_7_q1),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address1),.weights2_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.output_differences_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address0),.output_differences_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce0),.output_differences_8_q0(output_differences_8_q0),.output_differences_8_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address1),.output_differences_8_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce1),.output_differences_8_q1(output_differences_8_q1),.weights2_8_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address0),.weights2_8_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.weights2_8_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address1),.weights2_8_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce1),.weights2_8_q1(weights2_8_q1),.output_differences_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address0),.output_differences_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce0),.output_differences_9_q0(output_differences_9_q0),.output_differences_9_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address1),.output_differences_9_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce1),.output_differences_9_q1(output_differences_9_q1),.weights2_9_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address0),.weights2_9_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.weights2_9_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address1),.weights2_9_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce1),.weights2_9_q1(weights2_9_q1),.output_differences_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address0),.output_differences_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce0),.output_differences_10_q0(output_differences_10_q0),.output_differences_10_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address1),.output_differences_10_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce1),.output_differences_10_q1(output_differences_10_q1),.weights2_10_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address0),.weights2_10_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.weights2_10_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address1),.weights2_10_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce1),.weights2_10_q1(weights2_10_q1),.output_differences_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address0),.output_differences_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce0),.output_differences_11_q0(output_differences_11_q0),.output_differences_11_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address1),.output_differences_11_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce1),.output_differences_11_q1(output_differences_11_q1),.weights2_11_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address0),.weights2_11_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.weights2_11_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address1),.weights2_11_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce1),.weights2_11_q1(weights2_11_q1),.output_differences_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address0),.output_differences_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce0),.output_differences_12_q0(output_differences_12_q0),.output_differences_12_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address1),.output_differences_12_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce1),.output_differences_12_q1(output_differences_12_q1),.weights2_12_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address0),.weights2_12_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.weights2_12_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address1),.weights2_12_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce1),.weights2_12_q1(weights2_12_q1),.output_differences_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address0),.output_differences_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce0),.output_differences_13_q0(output_differences_13_q0),.output_differences_13_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address1),.output_differences_13_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce1),.output_differences_13_q1(output_differences_13_q1),.weights2_13_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address0),.weights2_13_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.weights2_13_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address1),.weights2_13_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce1),.weights2_13_q1(weights2_13_q1),.output_differences_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address0),.output_differences_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce0),.output_differences_14_q0(output_differences_14_q0),.output_differences_14_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address1),.output_differences_14_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce1),.output_differences_14_q1(output_differences_14_q1),.weights2_14_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address0),.weights2_14_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.weights2_14_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address1),.weights2_14_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce1),.weights2_14_q1(weights2_14_q1),.output_differences_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address0),.output_differences_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce0),.output_differences_15_q0(output_differences_15_q0),.output_differences_15_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address1),.output_differences_15_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce1),.output_differences_15_q1(output_differences_15_q1),.weights2_15_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address0),.weights2_15_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.weights2_15_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address1),.weights2_15_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce1),.weights2_15_q1(weights2_15_q1),.add113_out(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_add113_out),.add113_out_ap_vld(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_add113_out_ap_vld),.grp_fu_1057_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din0),.grp_fu_1057_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din1),.grp_fu_1057_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_opcode),.grp_fu_1057_p_dout0(grp_fu_4564_p_dout0),.grp_fu_1057_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_ce),.grp_fu_680_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din0),.grp_fu_680_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din1),.grp_fu_680_p_dout0(grp_fu_4692_p_dout0),.grp_fu_680_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U986(.din0(dactivations_0_q0),.din1(dactivations_1_q0),.din2(dactivations_2_q0),.din3(dactivations_3_q0),.din4(dactivations_4_q0),.din5(dactivations_5_q0),.din6(dactivations_6_q0),.din7(dactivations_7_q0),.din8(dactivations_8_q0),.din9(dactivations_9_q0),.din10(dactivations_10_q0),.din11(dactivations_11_q0),.din12(dactivations_12_q0),.din13(dactivations_13_q0),.din14(dactivations_14_q0),.din15(dactivations_15_q0),.def(tmp_fu_759_p33),.sel(trunc_ln102_1_reg_864),.dout(tmp_fu_759_p35));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_fu_692_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_202 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_fu_202 <= add_ln102_reg_854;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln102_reg_854 <= add_ln102_fu_698_p2;
        oracle_activations_0_addr_reg_869 <= zext_ln103_fu_723_p1;
        oracle_activations_10_addr_reg_899 <= zext_ln103_fu_723_p1;
        oracle_activations_11_addr_reg_934 <= zext_ln103_fu_723_p1;
        oracle_activations_12_addr_reg_884 <= zext_ln103_fu_723_p1;
        oracle_activations_13_addr_reg_939 <= zext_ln103_fu_723_p1;
        oracle_activations_14_addr_reg_904 <= zext_ln103_fu_723_p1;
        oracle_activations_15_addr_reg_944 <= zext_ln103_fu_723_p1;
        oracle_activations_1_addr_reg_909 <= zext_ln103_fu_723_p1;
        oracle_activations_2_addr_reg_889 <= zext_ln103_fu_723_p1;
        oracle_activations_3_addr_reg_914 <= zext_ln103_fu_723_p1;
        oracle_activations_4_addr_reg_879 <= zext_ln103_fu_723_p1;
        oracle_activations_5_addr_reg_919 <= zext_ln103_fu_723_p1;
        oracle_activations_6_addr_reg_894 <= zext_ln103_fu_723_p1;
        oracle_activations_7_addr_reg_924 <= zext_ln103_fu_723_p1;
        oracle_activations_8_addr_reg_874 <= zext_ln103_fu_723_p1;
        oracle_activations_9_addr_reg_929 <= zext_ln103_fu_723_p1;
        trunc_ln102_1_reg_864 <= trunc_ln102_1_fu_709_p1;
        trunc_ln102_reg_859 <= trunc_ln102_fu_704_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_reg_1037 <= grp_fu_4692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_1029 <= tmp_fu_759_p35;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln102_fu_692_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln102_fu_692_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_10_ce0_local = 1'b1;
    end else begin
        dactivations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_11_ce0_local = 1'b1;
    end else begin
        dactivations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_12_ce0_local = 1'b1;
    end else begin
        dactivations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_13_ce0_local = 1'b1;
    end else begin
        dactivations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_14_ce0_local = 1'b1;
    end else begin
        dactivations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_15_ce0_local = 1'b1;
    end else begin
        dactivations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_8_ce0_local = 1'b1;
    end else begin
        dactivations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_9_ce0_local = 1'b1;
    end else begin
        dactivations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1057_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_ce;
    end else begin
        grp_fu_1057_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_680_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_ce;
    end else begin
        grp_fu_680_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_680_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_680_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_add113_out;
    end else begin
        grp_fu_680_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_680_p1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_680_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_680_p1 = tmp_reg_1029;
    end else begin
        grp_fu_680_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_10_ce0_local = 1'b1;
    end else begin
        oracle_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd10) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_10_we0_local = 1'b1;
    end else begin
        oracle_activations_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_11_ce0_local = 1'b1;
    end else begin
        oracle_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd11) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_11_we0_local = 1'b1;
    end else begin
        oracle_activations_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_12_ce0_local = 1'b1;
    end else begin
        oracle_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd12) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_12_we0_local = 1'b1;
    end else begin
        oracle_activations_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_13_ce0_local = 1'b1;
    end else begin
        oracle_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd13) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_13_we0_local = 1'b1;
    end else begin
        oracle_activations_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_14_ce0_local = 1'b1;
    end else begin
        oracle_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd14) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_14_we0_local = 1'b1;
    end else begin
        oracle_activations_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_15_ce0_local = 1'b1;
    end else begin
        oracle_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd15) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_15_we0_local = 1'b1;
    end else begin
        oracle_activations_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd2) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd3) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd4) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd5) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd6) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd7) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_8_ce0_local = 1'b1;
    end else begin
        oracle_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd8) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_8_we0_local = 1'b1;
    end else begin
        oracle_activations_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_9_ce0_local = 1'b1;
    end else begin
        oracle_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln102_1_reg_864 == 4'd9) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_9_we0_local = 1'b1;
    end else begin
        oracle_activations_9_we0_local = 1'b0;
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
            if (((icmp_ln102_fu_692_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_698_p2 = (i_fu_202 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign dactivations_0_address0 = zext_ln103_fu_723_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_10_address0 = zext_ln103_fu_723_p1;
assign dactivations_10_ce0 = dactivations_10_ce0_local;
assign dactivations_11_address0 = zext_ln103_fu_723_p1;
assign dactivations_11_ce0 = dactivations_11_ce0_local;
assign dactivations_12_address0 = zext_ln103_fu_723_p1;
assign dactivations_12_ce0 = dactivations_12_ce0_local;
assign dactivations_13_address0 = zext_ln103_fu_723_p1;
assign dactivations_13_ce0 = dactivations_13_ce0_local;
assign dactivations_14_address0 = zext_ln103_fu_723_p1;
assign dactivations_14_ce0 = dactivations_14_ce0_local;
assign dactivations_15_address0 = zext_ln103_fu_723_p1;
assign dactivations_15_ce0 = dactivations_15_ce0_local;
assign dactivations_1_address0 = zext_ln103_fu_723_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_2_address0 = zext_ln103_fu_723_p1;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_3_address0 = zext_ln103_fu_723_p1;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = zext_ln103_fu_723_p1;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = zext_ln103_fu_723_p1;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = zext_ln103_fu_723_p1;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = zext_ln103_fu_723_p1;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign dactivations_8_address0 = zext_ln103_fu_723_p1;
assign dactivations_8_ce0 = dactivations_8_ce0_local;
assign dactivations_9_address0 = zext_ln103_fu_723_p1;
assign dactivations_9_ce0 = dactivations_9_ce0_local;
assign grp_fu_4564_p_ce = grp_fu_1057_ce;
assign grp_fu_4564_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din0;
assign grp_fu_4564_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_din1;
assign grp_fu_4564_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_grp_fu_1057_p_opcode;
assign grp_fu_4692_p_ce = grp_fu_680_ce;
assign grp_fu_4692_p_din0 = grp_fu_680_p0;
assign grp_fu_4692_p_din1 = grp_fu_680_p1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_ap_start_reg;
assign icmp_ln102_fu_692_p2 = ((i_fu_202 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln101_1_fu_713_p4 = {{i_fu_202[5:4]}};
assign oracle_activations_0_address0 = oracle_activations_0_addr_reg_869;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_1037;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_10_address0 = oracle_activations_10_addr_reg_899;
assign oracle_activations_10_ce0 = oracle_activations_10_ce0_local;
assign oracle_activations_10_d0 = mul_reg_1037;
assign oracle_activations_10_we0 = oracle_activations_10_we0_local;
assign oracle_activations_11_address0 = oracle_activations_11_addr_reg_934;
assign oracle_activations_11_ce0 = oracle_activations_11_ce0_local;
assign oracle_activations_11_d0 = mul_reg_1037;
assign oracle_activations_11_we0 = oracle_activations_11_we0_local;
assign oracle_activations_12_address0 = oracle_activations_12_addr_reg_884;
assign oracle_activations_12_ce0 = oracle_activations_12_ce0_local;
assign oracle_activations_12_d0 = mul_reg_1037;
assign oracle_activations_12_we0 = oracle_activations_12_we0_local;
assign oracle_activations_13_address0 = oracle_activations_13_addr_reg_939;
assign oracle_activations_13_ce0 = oracle_activations_13_ce0_local;
assign oracle_activations_13_d0 = mul_reg_1037;
assign oracle_activations_13_we0 = oracle_activations_13_we0_local;
assign oracle_activations_14_address0 = oracle_activations_14_addr_reg_904;
assign oracle_activations_14_ce0 = oracle_activations_14_ce0_local;
assign oracle_activations_14_d0 = mul_reg_1037;
assign oracle_activations_14_we0 = oracle_activations_14_we0_local;
assign oracle_activations_15_address0 = oracle_activations_15_addr_reg_944;
assign oracle_activations_15_ce0 = oracle_activations_15_ce0_local;
assign oracle_activations_15_d0 = mul_reg_1037;
assign oracle_activations_15_we0 = oracle_activations_15_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_addr_reg_909;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul_reg_1037;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_addr_reg_889;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = mul_reg_1037;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_addr_reg_914;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = mul_reg_1037;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = oracle_activations_4_addr_reg_879;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = mul_reg_1037;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = oracle_activations_5_addr_reg_919;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = mul_reg_1037;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = oracle_activations_6_addr_reg_894;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = mul_reg_1037;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = oracle_activations_7_addr_reg_924;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = mul_reg_1037;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign oracle_activations_8_address0 = oracle_activations_8_addr_reg_874;
assign oracle_activations_8_ce0 = oracle_activations_8_ce0_local;
assign oracle_activations_8_d0 = mul_reg_1037;
assign oracle_activations_8_we0 = oracle_activations_8_we0_local;
assign oracle_activations_9_address0 = oracle_activations_9_addr_reg_929;
assign oracle_activations_9_ce0 = oracle_activations_9_ce0_local;
assign oracle_activations_9_d0 = mul_reg_1037;
assign oracle_activations_9_we0 = oracle_activations_9_we0_local;
assign output_differences_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address0;
assign output_differences_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_address1;
assign output_differences_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce0;
assign output_differences_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_0_ce1;
assign output_differences_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address0;
assign output_differences_10_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_address1;
assign output_differences_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce0;
assign output_differences_10_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_10_ce1;
assign output_differences_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address0;
assign output_differences_11_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_address1;
assign output_differences_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce0;
assign output_differences_11_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_11_ce1;
assign output_differences_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address0;
assign output_differences_12_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_address1;
assign output_differences_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce0;
assign output_differences_12_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_12_ce1;
assign output_differences_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address0;
assign output_differences_13_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_address1;
assign output_differences_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce0;
assign output_differences_13_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_13_ce1;
assign output_differences_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address0;
assign output_differences_14_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_address1;
assign output_differences_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce0;
assign output_differences_14_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_14_ce1;
assign output_differences_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address0;
assign output_differences_15_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_address1;
assign output_differences_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce0;
assign output_differences_15_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_15_ce1;
assign output_differences_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address0;
assign output_differences_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_address1;
assign output_differences_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce0;
assign output_differences_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_1_ce1;
assign output_differences_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address0;
assign output_differences_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_address1;
assign output_differences_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce0;
assign output_differences_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_2_ce1;
assign output_differences_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address0;
assign output_differences_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_address1;
assign output_differences_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce0;
assign output_differences_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_3_ce1;
assign output_differences_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address0;
assign output_differences_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_address1;
assign output_differences_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce0;
assign output_differences_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_4_ce1;
assign output_differences_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address0;
assign output_differences_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_address1;
assign output_differences_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce0;
assign output_differences_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_5_ce1;
assign output_differences_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address0;
assign output_differences_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_address1;
assign output_differences_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce0;
assign output_differences_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_6_ce1;
assign output_differences_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address0;
assign output_differences_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_address1;
assign output_differences_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce0;
assign output_differences_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_7_ce1;
assign output_differences_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address0;
assign output_differences_8_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_address1;
assign output_differences_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce0;
assign output_differences_8_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_8_ce1;
assign output_differences_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address0;
assign output_differences_9_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_address1;
assign output_differences_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce0;
assign output_differences_9_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_output_differences_9_ce1;
assign tmp_fu_759_p33 = 'bx;
assign trunc_ln102_1_fu_709_p1 = i_fu_202[3:0];
assign trunc_ln102_fu_704_p1 = i_fu_202[5:0];
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_0_ce1;
assign weights2_10_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address0;
assign weights2_10_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_address1;
assign weights2_10_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce0;
assign weights2_10_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_10_ce1;
assign weights2_11_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address0;
assign weights2_11_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_address1;
assign weights2_11_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce0;
assign weights2_11_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_11_ce1;
assign weights2_12_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address0;
assign weights2_12_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_address1;
assign weights2_12_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce0;
assign weights2_12_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_12_ce1;
assign weights2_13_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address0;
assign weights2_13_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_address1;
assign weights2_13_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce0;
assign weights2_13_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_13_ce1;
assign weights2_14_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address0;
assign weights2_14_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_address1;
assign weights2_14_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce0;
assign weights2_14_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_14_ce1;
assign weights2_15_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address0;
assign weights2_15_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_address1;
assign weights2_15_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce0;
assign weights2_15_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_15_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_3_ce1;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address0;
assign weights2_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_address1;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce0;
assign weights2_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_4_ce1;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address0;
assign weights2_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_address1;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce0;
assign weights2_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_5_ce1;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address0;
assign weights2_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_address1;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce0;
assign weights2_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_6_ce1;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address0;
assign weights2_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_address1;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce0;
assign weights2_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_7_ce1;
assign weights2_8_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address0;
assign weights2_8_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_address1;
assign weights2_8_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce0;
assign weights2_8_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_8_ce1;
assign weights2_9_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address0;
assign weights2_9_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_address1;
assign weights2_9_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce0;
assign weights2_9_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_610_weights2_9_ce1;
assign zext_ln103_fu_723_p1 = lshr_ln101_1_fu_713_p4;
endmodule 
