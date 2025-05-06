
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_4_address1,weights2_4_ce1,weights2_4_q1,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_5_address1,weights2_5_ce1,weights2_5_q1,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_6_address1,weights2_6_ce1,weights2_6_q1,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_7_address1,weights2_7_ce1,weights2_7_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,output_differences_2_address0,output_differences_2_ce0,output_differences_2_q0,output_differences_2_address1,output_differences_2_ce1,output_differences_2_q1,output_differences_3_address0,output_differences_3_ce0,output_differences_3_q0,output_differences_3_address1,output_differences_3_ce1,output_differences_3_q1,output_differences_4_address0,output_differences_4_ce0,output_differences_4_q0,output_differences_4_address1,output_differences_4_ce1,output_differences_4_q1,output_differences_5_address0,output_differences_5_ce0,output_differences_5_q0,output_differences_5_address1,output_differences_5_ce1,output_differences_5_q1,output_differences_6_address0,output_differences_6_ce0,output_differences_6_q0,output_differences_6_address1,output_differences_6_ce1,output_differences_6_q1,output_differences_7_address0,output_differences_7_ce0,output_differences_7_q0,output_differences_7_address1,output_differences_7_ce1,output_differences_7_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce);  
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
output  [63:0] grp_fu_3620_p_din0;
output  [63:0] grp_fu_3620_p_din1;
input  [63:0] grp_fu_3620_p_dout0;
output   grp_fu_3620_p_ce;
output  [63:0] grp_fu_3556_p_din0;
output  [63:0] grp_fu_3556_p_din1;
output  [0:0] grp_fu_3556_p_opcode;
input  [63:0] grp_fu_3556_p_dout0;
output   grp_fu_3556_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln102_fu_386_p2;
reg   [6:0] add_ln102_reg_494;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln102_fu_392_p1;
reg   [5:0] trunc_ln102_reg_499;
wire   [2:0] trunc_ln102_1_fu_397_p1;
reg   [2:0] trunc_ln102_1_reg_504;
reg   [2:0] oracle_activations_0_addr_reg_509;
reg   [2:0] oracle_activations_4_addr_reg_514;
reg   [2:0] oracle_activations_2_addr_reg_519;
reg   [2:0] oracle_activations_6_addr_reg_524;
reg   [2:0] oracle_activations_1_addr_reg_529;
reg   [2:0] oracle_activations_3_addr_reg_534;
reg   [2:0] oracle_activations_5_addr_reg_539;
reg   [2:0] oracle_activations_7_addr_reg_544;
wire   [63:0] tmp_fu_431_p19;
reg   [63:0] tmp_reg_589;
wire    ap_CS_fsm_state3;
reg   [63:0] mul_reg_597;
wire    ap_CS_fsm_state10;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_ready;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce1;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce0;
wire   [2:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce1;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce0;
wire   [8:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce1;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_add113_out;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_add113_out_ap_vld;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg;
wire   [0:0] icmp_ln102_fu_380_p2;
wire   [63:0] zext_ln103_fu_411_p1;
reg   [6:0] i_fu_122;
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
reg    oracle_activations_7_we0_local;
reg    oracle_activations_7_ce0_local;
reg   [63:0] grp_fu_368_p0;
reg   [63:0] grp_fu_368_p1;
wire   [2:0] lshr_ln101_1_fu_401_p4;
wire   [63:0] tmp_fu_431_p17;
reg    grp_fu_368_ce;
reg    grp_fu_609_ce;
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
wire   [2:0] tmp_fu_431_p1;
wire   [2:0] tmp_fu_431_p3;
wire   [2:0] tmp_fu_431_p5;
wire   [2:0] tmp_fu_431_p7;
wire  signed [2:0] tmp_fu_431_p9;
wire  signed [2:0] tmp_fu_431_p11;
wire  signed [2:0] tmp_fu_431_p13;
wire  signed [2:0] tmp_fu_431_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg = 1'b0;
#0 i_fu_122 = 7'd0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_activations1_loop grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_ready),.output_differences_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address0),.output_differences_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce0),.output_differences_0_q0(output_differences_0_q0),.output_differences_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address1),.output_differences_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce1),.output_differences_0_q1(output_differences_0_q1),.i(trunc_ln102_reg_499),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address0),.output_differences_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce0),.output_differences_1_q0(output_differences_1_q0),.output_differences_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address1),.output_differences_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce1),.output_differences_1_q1(output_differences_1_q1),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address0),.output_differences_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce0),.output_differences_2_q0(output_differences_2_q0),.output_differences_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address1),.output_differences_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce1),.output_differences_2_q1(output_differences_2_q1),.weights2_2_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address0),.weights2_2_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.weights2_2_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address1),.weights2_2_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.output_differences_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address0),.output_differences_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce0),.output_differences_3_q0(output_differences_3_q0),.output_differences_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address1),.output_differences_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce1),.output_differences_3_q1(output_differences_3_q1),.weights2_3_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address0),.weights2_3_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.weights2_3_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address1),.weights2_3_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.output_differences_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address0),.output_differences_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce0),.output_differences_4_q0(output_differences_4_q0),.output_differences_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address1),.output_differences_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce1),.output_differences_4_q1(output_differences_4_q1),.weights2_4_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address0),.weights2_4_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.weights2_4_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address1),.weights2_4_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce1),.weights2_4_q1(weights2_4_q1),.output_differences_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address0),.output_differences_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce0),.output_differences_5_q0(output_differences_5_q0),.output_differences_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address1),.output_differences_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce1),.output_differences_5_q1(output_differences_5_q1),.weights2_5_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address0),.weights2_5_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.weights2_5_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address1),.weights2_5_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce1),.weights2_5_q1(weights2_5_q1),.output_differences_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address0),.output_differences_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce0),.output_differences_6_q0(output_differences_6_q0),.output_differences_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address1),.output_differences_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce1),.output_differences_6_q1(output_differences_6_q1),.weights2_6_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address0),.weights2_6_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.weights2_6_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address1),.weights2_6_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce1),.weights2_6_q1(weights2_6_q1),.output_differences_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address0),.output_differences_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce0),.output_differences_7_q0(output_differences_7_q0),.output_differences_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address1),.output_differences_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce1),.output_differences_7_q1(output_differences_7_q1),.weights2_7_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address0),.weights2_7_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.weights2_7_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address1),.weights2_7_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce1),.weights2_7_q1(weights2_7_q1),.add113_out(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_add113_out),.add113_out_ap_vld(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_add113_out_ap_vld),.grp_fu_609_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din0),.grp_fu_609_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din1),.grp_fu_609_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_opcode),.grp_fu_609_p_dout0(grp_fu_3556_p_dout0),.grp_fu_609_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_ce),.grp_fu_368_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din0),.grp_fu_368_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din1),.grp_fu_368_p_dout0(grp_fu_3620_p_dout0),.grp_fu_368_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_ce));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U569(.din0(dactivations_0_q0),.din1(dactivations_1_q0),.din2(dactivations_2_q0),.din3(dactivations_3_q0),.din4(dactivations_4_q0),.din5(dactivations_5_q0),.din6(dactivations_6_q0),.din7(dactivations_7_q0),.def(tmp_fu_431_p17),.sel(trunc_ln102_1_reg_504),.dout(tmp_fu_431_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_122 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_fu_122 <= add_ln102_reg_494;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln102_reg_494 <= add_ln102_fu_386_p2;
        oracle_activations_0_addr_reg_509 <= zext_ln103_fu_411_p1;
        oracle_activations_1_addr_reg_529 <= zext_ln103_fu_411_p1;
        oracle_activations_2_addr_reg_519 <= zext_ln103_fu_411_p1;
        oracle_activations_3_addr_reg_534 <= zext_ln103_fu_411_p1;
        oracle_activations_4_addr_reg_514 <= zext_ln103_fu_411_p1;
        oracle_activations_5_addr_reg_539 <= zext_ln103_fu_411_p1;
        oracle_activations_6_addr_reg_524 <= zext_ln103_fu_411_p1;
        oracle_activations_7_addr_reg_544 <= zext_ln103_fu_411_p1;
        trunc_ln102_1_reg_504 <= trunc_ln102_1_fu_397_p1;
        trunc_ln102_reg_499 <= trunc_ln102_fu_392_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_reg_597 <= grp_fu_3620_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_589 <= tmp_fu_431_p19;
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
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_done == 1'b0)) begin
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
    if ((((icmp_ln102_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln102_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_368_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_ce;
    end else begin
        grp_fu_368_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_368_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_368_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_add113_out;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_368_p1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_368_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_368_p1 = tmp_reg_589;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_609_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_ce;
    end else begin
        grp_fu_609_ce = 1'b1;
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
    if (((trunc_ln102_1_reg_504 == 3'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
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
    if (((trunc_ln102_1_reg_504 == 3'd1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd2) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd3) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd4) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd5) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd6) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((trunc_ln102_1_reg_504 == 3'd7) & (1'b1 == ap_CS_fsm_state11))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
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
            if (((icmp_ln102_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln102_fu_386_p2 = (i_fu_122 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign dactivations_0_address0 = zext_ln103_fu_411_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_1_address0 = zext_ln103_fu_411_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_2_address0 = zext_ln103_fu_411_p1;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_3_address0 = zext_ln103_fu_411_p1;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = zext_ln103_fu_411_p1;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = zext_ln103_fu_411_p1;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = zext_ln103_fu_411_p1;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = zext_ln103_fu_411_p1;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign grp_fu_3556_p_ce = grp_fu_609_ce;
assign grp_fu_3556_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din0;
assign grp_fu_3556_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_din1;
assign grp_fu_3556_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_grp_fu_609_p_opcode;
assign grp_fu_3620_p_ce = grp_fu_368_ce;
assign grp_fu_3620_p_din0 = grp_fu_368_p0;
assign grp_fu_3620_p_din1 = grp_fu_368_p1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_ap_start_reg;
assign icmp_ln102_fu_380_p2 = ((i_fu_122 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln101_1_fu_401_p4 = {{i_fu_122[5:3]}};
assign oracle_activations_0_address0 = oracle_activations_0_addr_reg_509;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_597;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_addr_reg_529;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul_reg_597;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_addr_reg_519;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = mul_reg_597;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_addr_reg_534;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = mul_reg_597;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = oracle_activations_4_addr_reg_514;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = mul_reg_597;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = oracle_activations_5_addr_reg_539;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = mul_reg_597;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = oracle_activations_6_addr_reg_524;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = mul_reg_597;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = oracle_activations_7_addr_reg_544;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = mul_reg_597;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign output_differences_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address0;
assign output_differences_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_address1;
assign output_differences_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce0;
assign output_differences_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_0_ce1;
assign output_differences_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address0;
assign output_differences_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_address1;
assign output_differences_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce0;
assign output_differences_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_1_ce1;
assign output_differences_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address0;
assign output_differences_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_address1;
assign output_differences_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce0;
assign output_differences_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_2_ce1;
assign output_differences_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address0;
assign output_differences_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_address1;
assign output_differences_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce0;
assign output_differences_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_3_ce1;
assign output_differences_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address0;
assign output_differences_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_address1;
assign output_differences_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce0;
assign output_differences_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_4_ce1;
assign output_differences_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address0;
assign output_differences_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_address1;
assign output_differences_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce0;
assign output_differences_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_5_ce1;
assign output_differences_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address0;
assign output_differences_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_address1;
assign output_differences_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce0;
assign output_differences_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_6_ce1;
assign output_differences_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address0;
assign output_differences_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_address1;
assign output_differences_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce0;
assign output_differences_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_output_differences_7_ce1;
assign tmp_fu_431_p17 = 'bx;
assign trunc_ln102_1_fu_397_p1 = i_fu_122[2:0];
assign trunc_ln102_fu_392_p1 = i_fu_122[5:0];
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_1_ce1;
assign weights2_2_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address0;
assign weights2_2_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_address1;
assign weights2_2_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce0;
assign weights2_2_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_2_ce1;
assign weights2_3_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address0;
assign weights2_3_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_address1;
assign weights2_3_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce0;
assign weights2_3_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_3_ce1;
assign weights2_4_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address0;
assign weights2_4_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_address1;
assign weights2_4_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce0;
assign weights2_4_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_4_ce1;
assign weights2_5_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address0;
assign weights2_5_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_address1;
assign weights2_5_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce0;
assign weights2_5_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_5_ce1;
assign weights2_6_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address0;
assign weights2_6_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_address1;
assign weights2_6_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce0;
assign weights2_6_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_6_ce1;
assign weights2_7_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address0;
assign weights2_7_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_address1;
assign weights2_7_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce0;
assign weights2_7_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_330_weights2_7_ce1;
assign zext_ln103_fu_411_p1 = lshr_ln101_1_fu_401_p4;
endmodule 
