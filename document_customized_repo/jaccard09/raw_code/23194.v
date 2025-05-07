module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_we0,oracle_activations2_3_d0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_we0,oracle_activations2_2_d0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,mux_case_04172_reload,mux_case_14277_reload,mux_case_24382_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_1_address0,dactivations2_1_ce0,dactivations2_1_q0,dactivations2_2_address0,dactivations2_2_ce0,dactivations2_2_q0,dactivations2_3_address0,dactivations2_3_ce0,dactivations2_3_q0,grp_fu_7044_p_din0,grp_fu_7044_p_din1,grp_fu_7044_p_opcode,grp_fu_7044_p_dout0,grp_fu_7044_p_ce,grp_fu_7048_p_din0,grp_fu_7048_p_din1,grp_fu_7048_p_opcode,grp_fu_7048_p_dout0,grp_fu_7048_p_ce,grp_fu_7052_p_din0,grp_fu_7052_p_din1,grp_fu_7052_p_opcode,grp_fu_7052_p_dout0,grp_fu_7052_p_ce,grp_fu_7072_p_din0,grp_fu_7072_p_din1,grp_fu_7072_p_dout0,grp_fu_7072_p_ce,grp_fu_7076_p_din0,grp_fu_7076_p_din1,grp_fu_7076_p_dout0,grp_fu_7076_p_ce,grp_fu_7080_p_din0,grp_fu_7080_p_din1,grp_fu_7080_p_dout0,grp_fu_7080_p_ce,grp_fu_7084_p_din0,grp_fu_7084_p_din1,grp_fu_7084_p_dout0,grp_fu_7084_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
output   oracle_activations2_3_we0;
output  [63:0] oracle_activations2_3_d0;
output  [3:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
output   oracle_activations2_2_we0;
output  [63:0] oracle_activations2_2_d0;
output  [3:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
output   oracle_activations2_1_we0;
output  [63:0] oracle_activations2_1_d0;
output  [3:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
input  [63:0] mux_case_04172_reload;
input  [63:0] mux_case_14277_reload;
input  [63:0] mux_case_24382_reload;
output  [3:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [3:0] dactivations2_1_address0;
output   dactivations2_1_ce0;
input  [63:0] dactivations2_1_q0;
output  [3:0] dactivations2_2_address0;
output   dactivations2_2_ce0;
input  [63:0] dactivations2_2_q0;
output  [3:0] dactivations2_3_address0;
output   dactivations2_3_ce0;
input  [63:0] dactivations2_3_q0;
output  [63:0] grp_fu_7044_p_din0;
output  [63:0] grp_fu_7044_p_din1;
output  [0:0] grp_fu_7044_p_opcode;
input  [63:0] grp_fu_7044_p_dout0;
output   grp_fu_7044_p_ce;
output  [63:0] grp_fu_7048_p_din0;
output  [63:0] grp_fu_7048_p_din1;
output  [0:0] grp_fu_7048_p_opcode;
input  [63:0] grp_fu_7048_p_dout0;
output   grp_fu_7048_p_ce;
output  [63:0] grp_fu_7052_p_din0;
output  [63:0] grp_fu_7052_p_din1;
output  [0:0] grp_fu_7052_p_opcode;
input  [63:0] grp_fu_7052_p_dout0;
output   grp_fu_7052_p_ce;
output  [63:0] grp_fu_7072_p_din0;
output  [63:0] grp_fu_7072_p_din1;
input  [63:0] grp_fu_7072_p_dout0;
output   grp_fu_7072_p_ce;
output  [63:0] grp_fu_7076_p_din0;
output  [63:0] grp_fu_7076_p_din1;
input  [63:0] grp_fu_7076_p_dout0;
output   grp_fu_7076_p_ce;
output  [63:0] grp_fu_7080_p_din0;
output  [63:0] grp_fu_7080_p_din1;
input  [63:0] grp_fu_7080_p_dout0;
output   grp_fu_7080_p_ce;
output  [63:0] grp_fu_7084_p_din0;
output  [63:0] grp_fu_7084_p_din1;
input  [63:0] grp_fu_7084_p_dout0;
output   grp_fu_7084_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_enable_reg_pp0_iter37;
reg    ap_enable_reg_pp0_iter38;
reg    ap_enable_reg_pp0_iter39;
reg    ap_enable_reg_pp0_iter40;
reg    ap_enable_reg_pp0_iter41;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln82_fu_367_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln82_fu_383_p1;
reg   [1:0] trunc_ln82_reg_661;
reg   [1:0] trunc_ln82_reg_661_pp0_iter1_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter2_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter3_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter4_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter5_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter6_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter7_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter8_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter9_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter10_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter11_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter12_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter13_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter14_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter15_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter16_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter17_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter18_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter19_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter20_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter21_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter22_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter23_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter24_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter25_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter26_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter27_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter28_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter29_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter30_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter31_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter32_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter33_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter34_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter35_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter36_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter37_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter38_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter39_reg;
reg   [1:0] trunc_ln82_reg_661_pp0_iter40_reg;
reg   [3:0] oracle_activations2_addr_reg_669;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter1_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter2_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter3_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter4_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter5_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter6_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter7_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter8_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter9_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter10_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter11_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter12_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter13_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter14_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter15_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter16_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter17_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter18_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter19_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter20_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter21_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter22_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter23_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter24_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter25_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter26_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter27_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter28_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter29_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter30_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter31_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter32_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter33_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter34_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter35_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter36_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter37_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter38_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter39_reg;
reg   [3:0] oracle_activations2_addr_reg_669_pp0_iter40_reg;
wire   [7:0] sub_ln85_fu_421_p2;
reg   [7:0] sub_ln85_reg_674;
reg   [5:0] lshr_ln2_reg_680;
reg   [3:0] oracle_activations2_2_addr_reg_685;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter1_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter2_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter3_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter4_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter5_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter6_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter7_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter8_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter9_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter10_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter11_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter12_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter13_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter14_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter15_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter16_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter17_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter18_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter19_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter20_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter21_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter22_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter23_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter24_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter25_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter26_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter27_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter28_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter29_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter30_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter31_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter32_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter33_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter34_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter35_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter36_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter37_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter38_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter39_reg;
reg   [3:0] oracle_activations2_2_addr_reg_685_pp0_iter40_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter1_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter2_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter3_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter4_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter5_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter6_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter7_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter8_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter9_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter10_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter11_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter12_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter13_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter14_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter15_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter16_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter17_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter18_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter19_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter20_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter21_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter22_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter23_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter24_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter25_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter26_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter27_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter28_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter29_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter30_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter31_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter32_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter33_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter34_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter35_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter36_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter37_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter38_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter39_reg;
reg   [3:0] oracle_activations2_1_addr_reg_690_pp0_iter40_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter1_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter2_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter3_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter4_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter5_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter6_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter7_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter8_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter9_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter10_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter11_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter12_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter13_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter14_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter15_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter16_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter17_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter18_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter19_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter20_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter21_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter22_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter23_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter24_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter25_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter26_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter27_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter28_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter29_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter30_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter31_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter32_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter33_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter34_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter35_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter36_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter37_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter38_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter39_reg;
reg   [3:0] oracle_activations2_3_addr_reg_695_pp0_iter40_reg;
wire   [63:0] tmp_30_fu_495_p11;
reg   [63:0] tmp_30_reg_780;
reg   [63:0] tmp_30_reg_780_pp0_iter2_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter3_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter4_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter5_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter6_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter7_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter8_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter9_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter10_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter11_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter12_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter13_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter14_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter15_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter16_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter17_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter18_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter19_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter20_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter21_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter22_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter23_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter24_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter25_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter26_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter27_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter28_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter29_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter30_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter31_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter32_reg;
reg   [63:0] tmp_30_reg_780_pp0_iter33_reg;
wire   [63:0] tmp_s_fu_534_p11;
reg   [63:0] tmp_s_reg_785;
wire   [63:0] tmp_28_fu_573_p11;
reg   [63:0] tmp_28_reg_790;
wire   [63:0] tmp_29_fu_612_p11;
reg   [63:0] tmp_29_reg_795;
reg   [63:0] mul8_i3_reg_800;
reg   [63:0] mul8_i151_1_reg_805;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter10_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter11_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter12_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter13_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter14_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter15_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter16_reg;
reg   [63:0] mul8_i151_1_reg_805_pp0_iter17_reg;
reg   [63:0] mul8_i151_2_reg_810;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter10_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter11_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter12_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter13_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter14_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter15_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter16_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter17_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter18_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter19_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter20_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter21_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter22_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter23_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter24_reg;
reg   [63:0] mul8_i151_2_reg_810_pp0_iter25_reg;
reg   [63:0] add11_i3_reg_815;
reg   [63:0] add11_i152_1_reg_820;
reg   [63:0] add11_i152_2_reg_825;
reg   [63:0] mul16_i_reg_830;
wire   [63:0] zext_ln81_fu_397_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_442_p1;
wire   [63:0] zext_ln85_2_fu_464_p1;
wire   [63:0] zext_ln85_3_fu_487_p1;
reg   [6:0] i_fu_92;
wire   [6:0] add_ln82_fu_373_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    dactivations2_ce0_local;
reg    dactivations2_1_ce0_local;
reg    dactivations2_2_ce0_local;
reg    dactivations2_3_ce0_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    oracle_activations2_2_we0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_3_we0_local;
reg    oracle_activations2_3_ce0_local;
wire   [3:0] lshr_ln_fu_387_p4;
wire   [5:0] trunc_ln85_fu_409_p1;
wire   [7:0] p_shl_fu_413_p3;
wire   [7:0] zext_ln85_fu_379_p1;
wire   [7:0] add_ln85_fu_449_p2;
wire   [5:0] lshr_ln85_1_fu_454_p4;
wire   [7:0] add_ln85_1_fu_472_p2;
wire   [5:0] lshr_ln85_2_fu_477_p4;
wire   [63:0] tmp_30_fu_495_p9;
wire   [63:0] tmp_s_fu_534_p2;
wire   [63:0] tmp_s_fu_534_p4;
wire   [63:0] tmp_s_fu_534_p6;
wire   [63:0] tmp_s_fu_534_p8;
wire   [63:0] tmp_s_fu_534_p9;
wire   [63:0] tmp_28_fu_573_p2;
wire   [63:0] tmp_28_fu_573_p4;
wire   [63:0] tmp_28_fu_573_p6;
wire   [63:0] tmp_28_fu_573_p8;
wire   [63:0] tmp_28_fu_573_p9;
wire   [63:0] tmp_29_fu_612_p2;
wire   [63:0] tmp_29_fu_612_p4;
wire   [63:0] tmp_29_fu_612_p6;
wire   [63:0] tmp_29_fu_612_p8;
wire   [63:0] tmp_29_fu_612_p9;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg    ap_loop_exit_ready_pp0_iter37_reg;
reg    ap_loop_exit_ready_pp0_iter38_reg;
reg    ap_loop_exit_ready_pp0_iter39_reg;
reg    ap_loop_exit_ready_pp0_iter40_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_797;
wire   [1:0] tmp_30_fu_495_p1;
wire   [1:0] tmp_30_fu_495_p3;
wire  signed [1:0] tmp_30_fu_495_p5;
wire  signed [1:0] tmp_30_fu_495_p7;
wire   [1:0] tmp_s_fu_534_p1;
wire  signed [1:0] tmp_s_fu_534_p3;
wire  signed [1:0] tmp_s_fu_534_p5;
wire   [1:0] tmp_s_fu_534_p7;
wire   [1:0] tmp_28_fu_573_p1;
wire   [1:0] tmp_28_fu_573_p3;
wire  signed [1:0] tmp_28_fu_573_p5;
wire  signed [1:0] tmp_28_fu_573_p7;
wire  signed [1:0] tmp_29_fu_612_p1;
wire   [1:0] tmp_29_fu_612_p3;
wire   [1:0] tmp_29_fu_612_p5;
wire  signed [1:0] tmp_29_fu_612_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 ap_enable_reg_pp0_iter37 = 1'b0;
#0 ap_enable_reg_pp0_iter38 = 1'b0;
#0 ap_enable_reg_pp0_iter39 = 1'b0;
#0 ap_enable_reg_pp0_iter40 = 1'b0;
#0 ap_enable_reg_pp0_iter41 = 1'b0;
#0 i_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U372(.din0(dactivations2_q0),.din1(dactivations2_1_q0),.din2(dactivations2_2_q0),.din3(dactivations2_3_q0),.def(tmp_30_fu_495_p9),.sel(trunc_ln82_reg_661),.dout(tmp_30_fu_495_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U373(.din0(tmp_s_fu_534_p2),.din1(tmp_s_fu_534_p4),.din2(tmp_s_fu_534_p6),.din3(tmp_s_fu_534_p8),.def(tmp_s_fu_534_p9),.sel(trunc_ln82_reg_661_pp0_iter1_reg),.dout(tmp_s_fu_534_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U374(.din0(tmp_28_fu_573_p2),.din1(tmp_28_fu_573_p4),.din2(tmp_28_fu_573_p6),.din3(tmp_28_fu_573_p8),.def(tmp_28_fu_573_p9),.sel(trunc_ln82_reg_661_pp0_iter1_reg),.dout(tmp_28_fu_573_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U375(.din0(tmp_29_fu_612_p2),.din1(tmp_29_fu_612_p4),.din2(tmp_29_fu_612_p6),.din3(tmp_29_fu_612_p8),.def(tmp_29_fu_612_p9),.sel(trunc_ln82_reg_661_pp0_iter1_reg),.dout(tmp_29_fu_612_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter40_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter37 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter37 <= ap_enable_reg_pp0_iter36;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter38 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter38 <= ap_enable_reg_pp0_iter37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter39 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter39 <= ap_enable_reg_pp0_iter38;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter40 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter40 <= ap_enable_reg_pp0_iter39;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter41 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter41 <= ap_enable_reg_pp0_iter40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln82_fu_367_p2 == 1'd0))) begin
            i_fu_92 <= add_ln82_fu_373_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add11_i152_1_reg_820 <= grp_fu_7048_p_dout0;
        add11_i152_2_reg_825 <= grp_fu_7052_p_dout0;
        add11_i3_reg_815 <= grp_fu_7044_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
        ap_loop_exit_ready_pp0_iter37_reg <= ap_loop_exit_ready_pp0_iter36_reg;
        ap_loop_exit_ready_pp0_iter38_reg <= ap_loop_exit_ready_pp0_iter37_reg;
        ap_loop_exit_ready_pp0_iter39_reg <= ap_loop_exit_ready_pp0_iter38_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter40_reg <= ap_loop_exit_ready_pp0_iter39_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul16_i_reg_830 <= grp_fu_7084_p_dout0;
        mul8_i151_1_reg_805 <= grp_fu_7076_p_dout0;
        mul8_i151_1_reg_805_pp0_iter10_reg <= mul8_i151_1_reg_805;
        mul8_i151_1_reg_805_pp0_iter11_reg <= mul8_i151_1_reg_805_pp0_iter10_reg;
        mul8_i151_1_reg_805_pp0_iter12_reg <= mul8_i151_1_reg_805_pp0_iter11_reg;
        mul8_i151_1_reg_805_pp0_iter13_reg <= mul8_i151_1_reg_805_pp0_iter12_reg;
        mul8_i151_1_reg_805_pp0_iter14_reg <= mul8_i151_1_reg_805_pp0_iter13_reg;
        mul8_i151_1_reg_805_pp0_iter15_reg <= mul8_i151_1_reg_805_pp0_iter14_reg;
        mul8_i151_1_reg_805_pp0_iter16_reg <= mul8_i151_1_reg_805_pp0_iter15_reg;
        mul8_i151_1_reg_805_pp0_iter17_reg <= mul8_i151_1_reg_805_pp0_iter16_reg;
        mul8_i151_2_reg_810 <= grp_fu_7080_p_dout0;
        mul8_i151_2_reg_810_pp0_iter10_reg <= mul8_i151_2_reg_810;
        mul8_i151_2_reg_810_pp0_iter11_reg <= mul8_i151_2_reg_810_pp0_iter10_reg;
        mul8_i151_2_reg_810_pp0_iter12_reg <= mul8_i151_2_reg_810_pp0_iter11_reg;
        mul8_i151_2_reg_810_pp0_iter13_reg <= mul8_i151_2_reg_810_pp0_iter12_reg;
        mul8_i151_2_reg_810_pp0_iter14_reg <= mul8_i151_2_reg_810_pp0_iter13_reg;
        mul8_i151_2_reg_810_pp0_iter15_reg <= mul8_i151_2_reg_810_pp0_iter14_reg;
        mul8_i151_2_reg_810_pp0_iter16_reg <= mul8_i151_2_reg_810_pp0_iter15_reg;
        mul8_i151_2_reg_810_pp0_iter17_reg <= mul8_i151_2_reg_810_pp0_iter16_reg;
        mul8_i151_2_reg_810_pp0_iter18_reg <= mul8_i151_2_reg_810_pp0_iter17_reg;
        mul8_i151_2_reg_810_pp0_iter19_reg <= mul8_i151_2_reg_810_pp0_iter18_reg;
        mul8_i151_2_reg_810_pp0_iter20_reg <= mul8_i151_2_reg_810_pp0_iter19_reg;
        mul8_i151_2_reg_810_pp0_iter21_reg <= mul8_i151_2_reg_810_pp0_iter20_reg;
        mul8_i151_2_reg_810_pp0_iter22_reg <= mul8_i151_2_reg_810_pp0_iter21_reg;
        mul8_i151_2_reg_810_pp0_iter23_reg <= mul8_i151_2_reg_810_pp0_iter22_reg;
        mul8_i151_2_reg_810_pp0_iter24_reg <= mul8_i151_2_reg_810_pp0_iter23_reg;
        mul8_i151_2_reg_810_pp0_iter25_reg <= mul8_i151_2_reg_810_pp0_iter24_reg;
        mul8_i3_reg_800 <= grp_fu_7072_p_dout0;
        oracle_activations2_1_addr_reg_690_pp0_iter10_reg <= oracle_activations2_1_addr_reg_690_pp0_iter9_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter11_reg <= oracle_activations2_1_addr_reg_690_pp0_iter10_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter12_reg <= oracle_activations2_1_addr_reg_690_pp0_iter11_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter13_reg <= oracle_activations2_1_addr_reg_690_pp0_iter12_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter14_reg <= oracle_activations2_1_addr_reg_690_pp0_iter13_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter15_reg <= oracle_activations2_1_addr_reg_690_pp0_iter14_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter16_reg <= oracle_activations2_1_addr_reg_690_pp0_iter15_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter17_reg <= oracle_activations2_1_addr_reg_690_pp0_iter16_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter18_reg <= oracle_activations2_1_addr_reg_690_pp0_iter17_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter19_reg <= oracle_activations2_1_addr_reg_690_pp0_iter18_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter20_reg <= oracle_activations2_1_addr_reg_690_pp0_iter19_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter21_reg <= oracle_activations2_1_addr_reg_690_pp0_iter20_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter22_reg <= oracle_activations2_1_addr_reg_690_pp0_iter21_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter23_reg <= oracle_activations2_1_addr_reg_690_pp0_iter22_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter24_reg <= oracle_activations2_1_addr_reg_690_pp0_iter23_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter25_reg <= oracle_activations2_1_addr_reg_690_pp0_iter24_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter26_reg <= oracle_activations2_1_addr_reg_690_pp0_iter25_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter27_reg <= oracle_activations2_1_addr_reg_690_pp0_iter26_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter28_reg <= oracle_activations2_1_addr_reg_690_pp0_iter27_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter29_reg <= oracle_activations2_1_addr_reg_690_pp0_iter28_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter2_reg <= oracle_activations2_1_addr_reg_690_pp0_iter1_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter30_reg <= oracle_activations2_1_addr_reg_690_pp0_iter29_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter31_reg <= oracle_activations2_1_addr_reg_690_pp0_iter30_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter32_reg <= oracle_activations2_1_addr_reg_690_pp0_iter31_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter33_reg <= oracle_activations2_1_addr_reg_690_pp0_iter32_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter34_reg <= oracle_activations2_1_addr_reg_690_pp0_iter33_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter35_reg <= oracle_activations2_1_addr_reg_690_pp0_iter34_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter36_reg <= oracle_activations2_1_addr_reg_690_pp0_iter35_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter37_reg <= oracle_activations2_1_addr_reg_690_pp0_iter36_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter38_reg <= oracle_activations2_1_addr_reg_690_pp0_iter37_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter39_reg <= oracle_activations2_1_addr_reg_690_pp0_iter38_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter3_reg <= oracle_activations2_1_addr_reg_690_pp0_iter2_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter40_reg <= oracle_activations2_1_addr_reg_690_pp0_iter39_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter4_reg <= oracle_activations2_1_addr_reg_690_pp0_iter3_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter5_reg <= oracle_activations2_1_addr_reg_690_pp0_iter4_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter6_reg <= oracle_activations2_1_addr_reg_690_pp0_iter5_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter7_reg <= oracle_activations2_1_addr_reg_690_pp0_iter6_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter8_reg <= oracle_activations2_1_addr_reg_690_pp0_iter7_reg;
        oracle_activations2_1_addr_reg_690_pp0_iter9_reg <= oracle_activations2_1_addr_reg_690_pp0_iter8_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter10_reg <= oracle_activations2_2_addr_reg_685_pp0_iter9_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter11_reg <= oracle_activations2_2_addr_reg_685_pp0_iter10_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter12_reg <= oracle_activations2_2_addr_reg_685_pp0_iter11_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter13_reg <= oracle_activations2_2_addr_reg_685_pp0_iter12_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter14_reg <= oracle_activations2_2_addr_reg_685_pp0_iter13_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter15_reg <= oracle_activations2_2_addr_reg_685_pp0_iter14_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter16_reg <= oracle_activations2_2_addr_reg_685_pp0_iter15_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter17_reg <= oracle_activations2_2_addr_reg_685_pp0_iter16_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter18_reg <= oracle_activations2_2_addr_reg_685_pp0_iter17_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter19_reg <= oracle_activations2_2_addr_reg_685_pp0_iter18_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter20_reg <= oracle_activations2_2_addr_reg_685_pp0_iter19_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter21_reg <= oracle_activations2_2_addr_reg_685_pp0_iter20_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter22_reg <= oracle_activations2_2_addr_reg_685_pp0_iter21_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter23_reg <= oracle_activations2_2_addr_reg_685_pp0_iter22_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter24_reg <= oracle_activations2_2_addr_reg_685_pp0_iter23_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter25_reg <= oracle_activations2_2_addr_reg_685_pp0_iter24_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter26_reg <= oracle_activations2_2_addr_reg_685_pp0_iter25_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter27_reg <= oracle_activations2_2_addr_reg_685_pp0_iter26_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter28_reg <= oracle_activations2_2_addr_reg_685_pp0_iter27_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter29_reg <= oracle_activations2_2_addr_reg_685_pp0_iter28_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter2_reg <= oracle_activations2_2_addr_reg_685_pp0_iter1_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter30_reg <= oracle_activations2_2_addr_reg_685_pp0_iter29_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter31_reg <= oracle_activations2_2_addr_reg_685_pp0_iter30_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter32_reg <= oracle_activations2_2_addr_reg_685_pp0_iter31_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter33_reg <= oracle_activations2_2_addr_reg_685_pp0_iter32_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter34_reg <= oracle_activations2_2_addr_reg_685_pp0_iter33_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter35_reg <= oracle_activations2_2_addr_reg_685_pp0_iter34_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter36_reg <= oracle_activations2_2_addr_reg_685_pp0_iter35_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter37_reg <= oracle_activations2_2_addr_reg_685_pp0_iter36_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter38_reg <= oracle_activations2_2_addr_reg_685_pp0_iter37_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter39_reg <= oracle_activations2_2_addr_reg_685_pp0_iter38_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter3_reg <= oracle_activations2_2_addr_reg_685_pp0_iter2_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter40_reg <= oracle_activations2_2_addr_reg_685_pp0_iter39_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter4_reg <= oracle_activations2_2_addr_reg_685_pp0_iter3_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter5_reg <= oracle_activations2_2_addr_reg_685_pp0_iter4_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter6_reg <= oracle_activations2_2_addr_reg_685_pp0_iter5_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter7_reg <= oracle_activations2_2_addr_reg_685_pp0_iter6_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter8_reg <= oracle_activations2_2_addr_reg_685_pp0_iter7_reg;
        oracle_activations2_2_addr_reg_685_pp0_iter9_reg <= oracle_activations2_2_addr_reg_685_pp0_iter8_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter10_reg <= oracle_activations2_3_addr_reg_695_pp0_iter9_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter11_reg <= oracle_activations2_3_addr_reg_695_pp0_iter10_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter12_reg <= oracle_activations2_3_addr_reg_695_pp0_iter11_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter13_reg <= oracle_activations2_3_addr_reg_695_pp0_iter12_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter14_reg <= oracle_activations2_3_addr_reg_695_pp0_iter13_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter15_reg <= oracle_activations2_3_addr_reg_695_pp0_iter14_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter16_reg <= oracle_activations2_3_addr_reg_695_pp0_iter15_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter17_reg <= oracle_activations2_3_addr_reg_695_pp0_iter16_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter18_reg <= oracle_activations2_3_addr_reg_695_pp0_iter17_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter19_reg <= oracle_activations2_3_addr_reg_695_pp0_iter18_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter20_reg <= oracle_activations2_3_addr_reg_695_pp0_iter19_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter21_reg <= oracle_activations2_3_addr_reg_695_pp0_iter20_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter22_reg <= oracle_activations2_3_addr_reg_695_pp0_iter21_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter23_reg <= oracle_activations2_3_addr_reg_695_pp0_iter22_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter24_reg <= oracle_activations2_3_addr_reg_695_pp0_iter23_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter25_reg <= oracle_activations2_3_addr_reg_695_pp0_iter24_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter26_reg <= oracle_activations2_3_addr_reg_695_pp0_iter25_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter27_reg <= oracle_activations2_3_addr_reg_695_pp0_iter26_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter28_reg <= oracle_activations2_3_addr_reg_695_pp0_iter27_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter29_reg <= oracle_activations2_3_addr_reg_695_pp0_iter28_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter2_reg <= oracle_activations2_3_addr_reg_695_pp0_iter1_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter30_reg <= oracle_activations2_3_addr_reg_695_pp0_iter29_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter31_reg <= oracle_activations2_3_addr_reg_695_pp0_iter30_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter32_reg <= oracle_activations2_3_addr_reg_695_pp0_iter31_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter33_reg <= oracle_activations2_3_addr_reg_695_pp0_iter32_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter34_reg <= oracle_activations2_3_addr_reg_695_pp0_iter33_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter35_reg <= oracle_activations2_3_addr_reg_695_pp0_iter34_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter36_reg <= oracle_activations2_3_addr_reg_695_pp0_iter35_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter37_reg <= oracle_activations2_3_addr_reg_695_pp0_iter36_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter38_reg <= oracle_activations2_3_addr_reg_695_pp0_iter37_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter39_reg <= oracle_activations2_3_addr_reg_695_pp0_iter38_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter3_reg <= oracle_activations2_3_addr_reg_695_pp0_iter2_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter40_reg <= oracle_activations2_3_addr_reg_695_pp0_iter39_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter4_reg <= oracle_activations2_3_addr_reg_695_pp0_iter3_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter5_reg <= oracle_activations2_3_addr_reg_695_pp0_iter4_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter6_reg <= oracle_activations2_3_addr_reg_695_pp0_iter5_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter7_reg <= oracle_activations2_3_addr_reg_695_pp0_iter6_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter8_reg <= oracle_activations2_3_addr_reg_695_pp0_iter7_reg;
        oracle_activations2_3_addr_reg_695_pp0_iter9_reg <= oracle_activations2_3_addr_reg_695_pp0_iter8_reg;
        oracle_activations2_addr_reg_669_pp0_iter10_reg <= oracle_activations2_addr_reg_669_pp0_iter9_reg;
        oracle_activations2_addr_reg_669_pp0_iter11_reg <= oracle_activations2_addr_reg_669_pp0_iter10_reg;
        oracle_activations2_addr_reg_669_pp0_iter12_reg <= oracle_activations2_addr_reg_669_pp0_iter11_reg;
        oracle_activations2_addr_reg_669_pp0_iter13_reg <= oracle_activations2_addr_reg_669_pp0_iter12_reg;
        oracle_activations2_addr_reg_669_pp0_iter14_reg <= oracle_activations2_addr_reg_669_pp0_iter13_reg;
        oracle_activations2_addr_reg_669_pp0_iter15_reg <= oracle_activations2_addr_reg_669_pp0_iter14_reg;
        oracle_activations2_addr_reg_669_pp0_iter16_reg <= oracle_activations2_addr_reg_669_pp0_iter15_reg;
        oracle_activations2_addr_reg_669_pp0_iter17_reg <= oracle_activations2_addr_reg_669_pp0_iter16_reg;
        oracle_activations2_addr_reg_669_pp0_iter18_reg <= oracle_activations2_addr_reg_669_pp0_iter17_reg;
        oracle_activations2_addr_reg_669_pp0_iter19_reg <= oracle_activations2_addr_reg_669_pp0_iter18_reg;
        oracle_activations2_addr_reg_669_pp0_iter20_reg <= oracle_activations2_addr_reg_669_pp0_iter19_reg;
        oracle_activations2_addr_reg_669_pp0_iter21_reg <= oracle_activations2_addr_reg_669_pp0_iter20_reg;
        oracle_activations2_addr_reg_669_pp0_iter22_reg <= oracle_activations2_addr_reg_669_pp0_iter21_reg;
        oracle_activations2_addr_reg_669_pp0_iter23_reg <= oracle_activations2_addr_reg_669_pp0_iter22_reg;
        oracle_activations2_addr_reg_669_pp0_iter24_reg <= oracle_activations2_addr_reg_669_pp0_iter23_reg;
        oracle_activations2_addr_reg_669_pp0_iter25_reg <= oracle_activations2_addr_reg_669_pp0_iter24_reg;
        oracle_activations2_addr_reg_669_pp0_iter26_reg <= oracle_activations2_addr_reg_669_pp0_iter25_reg;
        oracle_activations2_addr_reg_669_pp0_iter27_reg <= oracle_activations2_addr_reg_669_pp0_iter26_reg;
        oracle_activations2_addr_reg_669_pp0_iter28_reg <= oracle_activations2_addr_reg_669_pp0_iter27_reg;
        oracle_activations2_addr_reg_669_pp0_iter29_reg <= oracle_activations2_addr_reg_669_pp0_iter28_reg;
        oracle_activations2_addr_reg_669_pp0_iter2_reg <= oracle_activations2_addr_reg_669_pp0_iter1_reg;
        oracle_activations2_addr_reg_669_pp0_iter30_reg <= oracle_activations2_addr_reg_669_pp0_iter29_reg;
        oracle_activations2_addr_reg_669_pp0_iter31_reg <= oracle_activations2_addr_reg_669_pp0_iter30_reg;
        oracle_activations2_addr_reg_669_pp0_iter32_reg <= oracle_activations2_addr_reg_669_pp0_iter31_reg;
        oracle_activations2_addr_reg_669_pp0_iter33_reg <= oracle_activations2_addr_reg_669_pp0_iter32_reg;
        oracle_activations2_addr_reg_669_pp0_iter34_reg <= oracle_activations2_addr_reg_669_pp0_iter33_reg;
        oracle_activations2_addr_reg_669_pp0_iter35_reg <= oracle_activations2_addr_reg_669_pp0_iter34_reg;
        oracle_activations2_addr_reg_669_pp0_iter36_reg <= oracle_activations2_addr_reg_669_pp0_iter35_reg;
        oracle_activations2_addr_reg_669_pp0_iter37_reg <= oracle_activations2_addr_reg_669_pp0_iter36_reg;
        oracle_activations2_addr_reg_669_pp0_iter38_reg <= oracle_activations2_addr_reg_669_pp0_iter37_reg;
        oracle_activations2_addr_reg_669_pp0_iter39_reg <= oracle_activations2_addr_reg_669_pp0_iter38_reg;
        oracle_activations2_addr_reg_669_pp0_iter3_reg <= oracle_activations2_addr_reg_669_pp0_iter2_reg;
        oracle_activations2_addr_reg_669_pp0_iter40_reg <= oracle_activations2_addr_reg_669_pp0_iter39_reg;
        oracle_activations2_addr_reg_669_pp0_iter4_reg <= oracle_activations2_addr_reg_669_pp0_iter3_reg;
        oracle_activations2_addr_reg_669_pp0_iter5_reg <= oracle_activations2_addr_reg_669_pp0_iter4_reg;
        oracle_activations2_addr_reg_669_pp0_iter6_reg <= oracle_activations2_addr_reg_669_pp0_iter5_reg;
        oracle_activations2_addr_reg_669_pp0_iter7_reg <= oracle_activations2_addr_reg_669_pp0_iter6_reg;
        oracle_activations2_addr_reg_669_pp0_iter8_reg <= oracle_activations2_addr_reg_669_pp0_iter7_reg;
        oracle_activations2_addr_reg_669_pp0_iter9_reg <= oracle_activations2_addr_reg_669_pp0_iter8_reg;
        tmp_28_reg_790 <= tmp_28_fu_573_p11;
        tmp_29_reg_795 <= tmp_29_fu_612_p11;
        tmp_30_reg_780_pp0_iter10_reg <= tmp_30_reg_780_pp0_iter9_reg;
        tmp_30_reg_780_pp0_iter11_reg <= tmp_30_reg_780_pp0_iter10_reg;
        tmp_30_reg_780_pp0_iter12_reg <= tmp_30_reg_780_pp0_iter11_reg;
        tmp_30_reg_780_pp0_iter13_reg <= tmp_30_reg_780_pp0_iter12_reg;
        tmp_30_reg_780_pp0_iter14_reg <= tmp_30_reg_780_pp0_iter13_reg;
        tmp_30_reg_780_pp0_iter15_reg <= tmp_30_reg_780_pp0_iter14_reg;
        tmp_30_reg_780_pp0_iter16_reg <= tmp_30_reg_780_pp0_iter15_reg;
        tmp_30_reg_780_pp0_iter17_reg <= tmp_30_reg_780_pp0_iter16_reg;
        tmp_30_reg_780_pp0_iter18_reg <= tmp_30_reg_780_pp0_iter17_reg;
        tmp_30_reg_780_pp0_iter19_reg <= tmp_30_reg_780_pp0_iter18_reg;
        tmp_30_reg_780_pp0_iter20_reg <= tmp_30_reg_780_pp0_iter19_reg;
        tmp_30_reg_780_pp0_iter21_reg <= tmp_30_reg_780_pp0_iter20_reg;
        tmp_30_reg_780_pp0_iter22_reg <= tmp_30_reg_780_pp0_iter21_reg;
        tmp_30_reg_780_pp0_iter23_reg <= tmp_30_reg_780_pp0_iter22_reg;
        tmp_30_reg_780_pp0_iter24_reg <= tmp_30_reg_780_pp0_iter23_reg;
        tmp_30_reg_780_pp0_iter25_reg <= tmp_30_reg_780_pp0_iter24_reg;
        tmp_30_reg_780_pp0_iter26_reg <= tmp_30_reg_780_pp0_iter25_reg;
        tmp_30_reg_780_pp0_iter27_reg <= tmp_30_reg_780_pp0_iter26_reg;
        tmp_30_reg_780_pp0_iter28_reg <= tmp_30_reg_780_pp0_iter27_reg;
        tmp_30_reg_780_pp0_iter29_reg <= tmp_30_reg_780_pp0_iter28_reg;
        tmp_30_reg_780_pp0_iter2_reg <= tmp_30_reg_780;
        tmp_30_reg_780_pp0_iter30_reg <= tmp_30_reg_780_pp0_iter29_reg;
        tmp_30_reg_780_pp0_iter31_reg <= tmp_30_reg_780_pp0_iter30_reg;
        tmp_30_reg_780_pp0_iter32_reg <= tmp_30_reg_780_pp0_iter31_reg;
        tmp_30_reg_780_pp0_iter33_reg <= tmp_30_reg_780_pp0_iter32_reg;
        tmp_30_reg_780_pp0_iter3_reg <= tmp_30_reg_780_pp0_iter2_reg;
        tmp_30_reg_780_pp0_iter4_reg <= tmp_30_reg_780_pp0_iter3_reg;
        tmp_30_reg_780_pp0_iter5_reg <= tmp_30_reg_780_pp0_iter4_reg;
        tmp_30_reg_780_pp0_iter6_reg <= tmp_30_reg_780_pp0_iter5_reg;
        tmp_30_reg_780_pp0_iter7_reg <= tmp_30_reg_780_pp0_iter6_reg;
        tmp_30_reg_780_pp0_iter8_reg <= tmp_30_reg_780_pp0_iter7_reg;
        tmp_30_reg_780_pp0_iter9_reg <= tmp_30_reg_780_pp0_iter8_reg;
        tmp_s_reg_785 <= tmp_s_fu_534_p11;
        trunc_ln82_reg_661_pp0_iter10_reg <= trunc_ln82_reg_661_pp0_iter9_reg;
        trunc_ln82_reg_661_pp0_iter11_reg <= trunc_ln82_reg_661_pp0_iter10_reg;
        trunc_ln82_reg_661_pp0_iter12_reg <= trunc_ln82_reg_661_pp0_iter11_reg;
        trunc_ln82_reg_661_pp0_iter13_reg <= trunc_ln82_reg_661_pp0_iter12_reg;
        trunc_ln82_reg_661_pp0_iter14_reg <= trunc_ln82_reg_661_pp0_iter13_reg;
        trunc_ln82_reg_661_pp0_iter15_reg <= trunc_ln82_reg_661_pp0_iter14_reg;
        trunc_ln82_reg_661_pp0_iter16_reg <= trunc_ln82_reg_661_pp0_iter15_reg;
        trunc_ln82_reg_661_pp0_iter17_reg <= trunc_ln82_reg_661_pp0_iter16_reg;
        trunc_ln82_reg_661_pp0_iter18_reg <= trunc_ln82_reg_661_pp0_iter17_reg;
        trunc_ln82_reg_661_pp0_iter19_reg <= trunc_ln82_reg_661_pp0_iter18_reg;
        trunc_ln82_reg_661_pp0_iter20_reg <= trunc_ln82_reg_661_pp0_iter19_reg;
        trunc_ln82_reg_661_pp0_iter21_reg <= trunc_ln82_reg_661_pp0_iter20_reg;
        trunc_ln82_reg_661_pp0_iter22_reg <= trunc_ln82_reg_661_pp0_iter21_reg;
        trunc_ln82_reg_661_pp0_iter23_reg <= trunc_ln82_reg_661_pp0_iter22_reg;
        trunc_ln82_reg_661_pp0_iter24_reg <= trunc_ln82_reg_661_pp0_iter23_reg;
        trunc_ln82_reg_661_pp0_iter25_reg <= trunc_ln82_reg_661_pp0_iter24_reg;
        trunc_ln82_reg_661_pp0_iter26_reg <= trunc_ln82_reg_661_pp0_iter25_reg;
        trunc_ln82_reg_661_pp0_iter27_reg <= trunc_ln82_reg_661_pp0_iter26_reg;
        trunc_ln82_reg_661_pp0_iter28_reg <= trunc_ln82_reg_661_pp0_iter27_reg;
        trunc_ln82_reg_661_pp0_iter29_reg <= trunc_ln82_reg_661_pp0_iter28_reg;
        trunc_ln82_reg_661_pp0_iter2_reg <= trunc_ln82_reg_661_pp0_iter1_reg;
        trunc_ln82_reg_661_pp0_iter30_reg <= trunc_ln82_reg_661_pp0_iter29_reg;
        trunc_ln82_reg_661_pp0_iter31_reg <= trunc_ln82_reg_661_pp0_iter30_reg;
        trunc_ln82_reg_661_pp0_iter32_reg <= trunc_ln82_reg_661_pp0_iter31_reg;
        trunc_ln82_reg_661_pp0_iter33_reg <= trunc_ln82_reg_661_pp0_iter32_reg;
        trunc_ln82_reg_661_pp0_iter34_reg <= trunc_ln82_reg_661_pp0_iter33_reg;
        trunc_ln82_reg_661_pp0_iter35_reg <= trunc_ln82_reg_661_pp0_iter34_reg;
        trunc_ln82_reg_661_pp0_iter36_reg <= trunc_ln82_reg_661_pp0_iter35_reg;
        trunc_ln82_reg_661_pp0_iter37_reg <= trunc_ln82_reg_661_pp0_iter36_reg;
        trunc_ln82_reg_661_pp0_iter38_reg <= trunc_ln82_reg_661_pp0_iter37_reg;
        trunc_ln82_reg_661_pp0_iter39_reg <= trunc_ln82_reg_661_pp0_iter38_reg;
        trunc_ln82_reg_661_pp0_iter3_reg <= trunc_ln82_reg_661_pp0_iter2_reg;
        trunc_ln82_reg_661_pp0_iter40_reg <= trunc_ln82_reg_661_pp0_iter39_reg;
        trunc_ln82_reg_661_pp0_iter4_reg <= trunc_ln82_reg_661_pp0_iter3_reg;
        trunc_ln82_reg_661_pp0_iter5_reg <= trunc_ln82_reg_661_pp0_iter4_reg;
        trunc_ln82_reg_661_pp0_iter6_reg <= trunc_ln82_reg_661_pp0_iter5_reg;
        trunc_ln82_reg_661_pp0_iter7_reg <= trunc_ln82_reg_661_pp0_iter6_reg;
        trunc_ln82_reg_661_pp0_iter8_reg <= trunc_ln82_reg_661_pp0_iter7_reg;
        trunc_ln82_reg_661_pp0_iter9_reg <= trunc_ln82_reg_661_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln2_reg_680 <= {{sub_ln85_fu_421_p2[7:2]}};
        oracle_activations2_1_addr_reg_690 <= zext_ln81_fu_397_p1;
        oracle_activations2_1_addr_reg_690_pp0_iter1_reg <= oracle_activations2_1_addr_reg_690;
        oracle_activations2_2_addr_reg_685 <= zext_ln81_fu_397_p1;
        oracle_activations2_2_addr_reg_685_pp0_iter1_reg <= oracle_activations2_2_addr_reg_685;
        oracle_activations2_3_addr_reg_695 <= zext_ln81_fu_397_p1;
        oracle_activations2_3_addr_reg_695_pp0_iter1_reg <= oracle_activations2_3_addr_reg_695;
        oracle_activations2_addr_reg_669 <= zext_ln81_fu_397_p1;
        oracle_activations2_addr_reg_669_pp0_iter1_reg <= oracle_activations2_addr_reg_669;
        sub_ln85_reg_674 <= sub_ln85_fu_421_p2;
        tmp_30_reg_780 <= tmp_30_fu_495_p11;
        trunc_ln82_reg_661 <= trunc_ln82_fu_383_p1;
        trunc_ln82_reg_661_pp0_iter1_reg <= trunc_ln82_reg_661;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_367_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter40_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0)& (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_92;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dactivations2_1_ce0_local = 1'b1;
    end else begin
        dactivations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dactivations2_2_ce0_local = 1'b1;
    end else begin
        dactivations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dactivations2_3_ce0_local = 1'b1;
    end else begin
        dactivations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln82_reg_661_pp0_iter40_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln82_reg_661_pp0_iter40_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_2_we0_local = 1'b1;
    end else begin
        oracle_activations2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln82_reg_661_pp0_iter40_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_3_we0_local = 1'b1;
    end else begin
        oracle_activations2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln82_reg_661_pp0_iter40_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_797)) begin
        if ((trunc_ln82_reg_661 == 2'd2)) begin
            weights3_0_address0_local = zext_ln85_3_fu_487_p1;
        end else if ((trunc_ln82_reg_661 == 2'd1)) begin
            weights3_0_address0_local = zext_ln85_2_fu_464_p1;
        end else if ((trunc_ln82_reg_661 == 2'd0)) begin
            weights3_0_address0_local = zext_ln85_1_fu_442_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_661 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_797)) begin
        if ((trunc_ln82_reg_661 == 2'd1)) begin
            weights3_1_address0_local = zext_ln85_3_fu_487_p1;
        end else if ((trunc_ln82_reg_661 == 2'd0)) begin
            weights3_1_address0_local = zext_ln85_2_fu_464_p1;
        end else if ((trunc_ln82_reg_661 == 2'd3)) begin
            weights3_1_address0_local = zext_ln85_1_fu_442_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_661 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_797)) begin
        if ((trunc_ln82_reg_661 == 2'd0)) begin
            weights3_2_address0_local = zext_ln85_3_fu_487_p1;
        end else if ((trunc_ln82_reg_661 == 2'd3)) begin
            weights3_2_address0_local = zext_ln85_2_fu_464_p1;
        end else if ((trunc_ln82_reg_661 == 2'd2)) begin
            weights3_2_address0_local = zext_ln85_1_fu_442_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_661 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_797)) begin
        if ((trunc_ln82_reg_661 == 2'd3)) begin
            weights3_3_address0_local = zext_ln85_3_fu_487_p1;
        end else if ((trunc_ln82_reg_661 == 2'd2)) begin
            weights3_3_address0_local = zext_ln85_2_fu_464_p1;
        end else if ((trunc_ln82_reg_661 == 2'd1)) begin
            weights3_3_address0_local = zext_ln85_1_fu_442_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_661 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_661 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_373_p2 = (ap_sig_allocacmp_i_7 + 7'd1);
assign add_ln85_1_fu_472_p2 = (sub_ln85_reg_674 + 8'd2);
assign add_ln85_fu_449_p2 = (sub_ln85_reg_674 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_797 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign dactivations2_1_address0 = zext_ln81_fu_397_p1;
assign dactivations2_1_ce0 = dactivations2_1_ce0_local;
assign dactivations2_2_address0 = zext_ln81_fu_397_p1;
assign dactivations2_2_ce0 = dactivations2_2_ce0_local;
assign dactivations2_3_address0 = zext_ln81_fu_397_p1;
assign dactivations2_3_ce0 = dactivations2_3_ce0_local;
assign dactivations2_address0 = zext_ln81_fu_397_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign grp_fu_7044_p_ce = 1'b1;
assign grp_fu_7044_p_din0 = mul8_i3_reg_800;
assign grp_fu_7044_p_din1 = 64'd0;
assign grp_fu_7044_p_opcode = 2'd0;
assign grp_fu_7048_p_ce = 1'b1;
assign grp_fu_7048_p_din0 = add11_i3_reg_815;
assign grp_fu_7048_p_din1 = mul8_i151_1_reg_805_pp0_iter17_reg;
assign grp_fu_7048_p_opcode = 2'd0;
assign grp_fu_7052_p_ce = 1'b1;
assign grp_fu_7052_p_din0 = add11_i152_1_reg_820;
assign grp_fu_7052_p_din1 = mul8_i151_2_reg_810_pp0_iter25_reg;
assign grp_fu_7052_p_opcode = 2'd0;
assign grp_fu_7072_p_ce = 1'b1;
assign grp_fu_7072_p_din0 = mux_case_04172_reload;
assign grp_fu_7072_p_din1 = tmp_s_reg_785;
assign grp_fu_7076_p_ce = 1'b1;
assign grp_fu_7076_p_din0 = mux_case_14277_reload;
assign grp_fu_7076_p_din1 = tmp_28_reg_790;
assign grp_fu_7080_p_ce = 1'b1;
assign grp_fu_7080_p_din0 = mux_case_24382_reload;
assign grp_fu_7080_p_din1 = tmp_29_reg_795;
assign grp_fu_7084_p_ce = 1'b1;
assign grp_fu_7084_p_din0 = add11_i152_2_reg_825;
assign grp_fu_7084_p_din1 = tmp_30_reg_780_pp0_iter33_reg;
assign icmp_ln82_fu_367_p2 = ((ap_sig_allocacmp_i_7 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln85_1_fu_454_p4 = {{add_ln85_fu_449_p2[7:2]}};
assign lshr_ln85_2_fu_477_p4 = {{add_ln85_1_fu_472_p2[7:2]}};
assign lshr_ln_fu_387_p4 = {{ap_sig_allocacmp_i_7[5:2]}};
assign oracle_activations2_1_address0 = oracle_activations2_1_addr_reg_690_pp0_iter40_reg;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = mul16_i_reg_830;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_2_address0 = oracle_activations2_2_addr_reg_685_pp0_iter40_reg;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_2_d0 = mul16_i_reg_830;
assign oracle_activations2_2_we0 = oracle_activations2_2_we0_local;
assign oracle_activations2_3_address0 = oracle_activations2_3_addr_reg_695_pp0_iter40_reg;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_3_d0 = mul16_i_reg_830;
assign oracle_activations2_3_we0 = oracle_activations2_3_we0_local;
assign oracle_activations2_address0 = oracle_activations2_addr_reg_669_pp0_iter40_reg;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = mul16_i_reg_830;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl_fu_413_p3 = {{trunc_ln85_fu_409_p1}, {2'd0}};
assign sub_ln85_fu_421_p2 = (p_shl_fu_413_p3 - zext_ln85_fu_379_p1);
assign tmp_28_fu_573_p2 = weights3_0_q0;
assign tmp_28_fu_573_p4 = weights3_1_q0;
assign tmp_28_fu_573_p6 = weights3_2_q0;
assign tmp_28_fu_573_p8 = weights3_3_q0;
assign tmp_28_fu_573_p9 = 'bx;
assign tmp_29_fu_612_p2 = weights3_0_q0;
assign tmp_29_fu_612_p4 = weights3_1_q0;
assign tmp_29_fu_612_p6 = weights3_2_q0;
assign tmp_29_fu_612_p8 = weights3_3_q0;
assign tmp_29_fu_612_p9 = 'bx;
assign tmp_30_fu_495_p9 = 'bx;
assign tmp_s_fu_534_p2 = weights3_0_q0;
assign tmp_s_fu_534_p4 = weights3_1_q0;
assign tmp_s_fu_534_p6 = weights3_2_q0;
assign tmp_s_fu_534_p8 = weights3_3_q0;
assign tmp_s_fu_534_p9 = 'bx;
assign trunc_ln82_fu_383_p1 = ap_sig_allocacmp_i_7[1:0];
assign trunc_ln85_fu_409_p1 = ap_sig_allocacmp_i_7[5:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign zext_ln81_fu_397_p1 = lshr_ln_fu_387_p4;
assign zext_ln85_1_fu_442_p1 = lshr_ln2_reg_680;
assign zext_ln85_2_fu_464_p1 = lshr_ln85_1_fu_454_p4;
assign zext_ln85_3_fu_487_p1 = lshr_ln85_2_fu_477_p4;
assign zext_ln85_fu_379_p1 = ap_sig_allocacmp_i_7;
endmodule 