module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,mux_case_05283_reload,mux_case_15388_reload,mux_case_25493_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_1_address0,dactivations2_1_ce0,dactivations2_1_q0,grp_fu_5871_p_din0,grp_fu_5871_p_din1,grp_fu_5871_p_opcode,grp_fu_5871_p_dout0,grp_fu_5871_p_ce,grp_fu_5875_p_din0,grp_fu_5875_p_din1,grp_fu_5875_p_opcode,grp_fu_5875_p_dout0,grp_fu_5875_p_ce,grp_fu_5879_p_din0,grp_fu_5879_p_din1,grp_fu_5879_p_opcode,grp_fu_5879_p_dout0,grp_fu_5879_p_ce,grp_fu_5887_p_din0,grp_fu_5887_p_din1,grp_fu_5887_p_dout0,grp_fu_5887_p_ce,grp_fu_5891_p_din0,grp_fu_5891_p_din1,grp_fu_5891_p_dout0,grp_fu_5891_p_ce,grp_fu_5895_p_din0,grp_fu_5895_p_din1,grp_fu_5895_p_dout0,grp_fu_5895_p_ce,grp_fu_5899_p_din0,grp_fu_5899_p_din1,grp_fu_5899_p_dout0,grp_fu_5899_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
output   oracle_activations2_1_we0;
output  [63:0] oracle_activations2_1_d0;
output  [4:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] mux_case_05283_reload;
input  [63:0] mux_case_15388_reload;
input  [63:0] mux_case_25493_reload;
output  [4:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [4:0] dactivations2_1_address0;
output   dactivations2_1_ce0;
input  [63:0] dactivations2_1_q0;
output  [63:0] grp_fu_5871_p_din0;
output  [63:0] grp_fu_5871_p_din1;
output  [0:0] grp_fu_5871_p_opcode;
input  [63:0] grp_fu_5871_p_dout0;
output   grp_fu_5871_p_ce;
output  [63:0] grp_fu_5875_p_din0;
output  [63:0] grp_fu_5875_p_din1;
output  [0:0] grp_fu_5875_p_opcode;
input  [63:0] grp_fu_5875_p_dout0;
output   grp_fu_5875_p_ce;
output  [63:0] grp_fu_5879_p_din0;
output  [63:0] grp_fu_5879_p_din1;
output  [0:0] grp_fu_5879_p_opcode;
input  [63:0] grp_fu_5879_p_dout0;
output   grp_fu_5879_p_ce;
output  [63:0] grp_fu_5887_p_din0;
output  [63:0] grp_fu_5887_p_din1;
input  [63:0] grp_fu_5887_p_dout0;
output   grp_fu_5887_p_ce;
output  [63:0] grp_fu_5891_p_din0;
output  [63:0] grp_fu_5891_p_din1;
input  [63:0] grp_fu_5891_p_dout0;
output   grp_fu_5891_p_ce;
output  [63:0] grp_fu_5895_p_din0;
output  [63:0] grp_fu_5895_p_din1;
input  [63:0] grp_fu_5895_p_dout0;
output   grp_fu_5895_p_ce;
output  [63:0] grp_fu_5899_p_din0;
output  [63:0] grp_fu_5899_p_din1;
input  [63:0] grp_fu_5899_p_dout0;
output   grp_fu_5899_p_ce;
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
wire   [0:0] icmp_ln82_fu_241_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln82_fu_257_p1;
reg   [0:0] trunc_ln82_reg_415;
reg   [0:0] trunc_ln82_reg_415_pp0_iter1_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter2_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter3_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter4_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter5_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter6_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter7_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter8_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter9_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter10_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter11_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter12_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter13_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter14_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter15_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter16_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter17_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter18_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter19_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter20_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter21_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter22_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter23_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter24_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter25_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter26_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter27_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter28_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter29_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter30_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter31_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter32_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter33_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter34_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter35_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter36_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter37_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter38_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter39_reg;
reg   [0:0] trunc_ln82_reg_415_pp0_iter40_reg;
reg   [6:0] lshr_ln_reg_423;
reg   [6:0] lshr_ln85_1_reg_429;
reg   [4:0] oracle_activations2_addr_reg_434;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter1_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter2_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter3_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter4_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter5_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter6_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter7_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter8_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter9_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter10_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter11_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter12_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter13_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter14_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter15_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter16_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter17_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter18_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter19_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter20_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter21_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter22_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter23_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter24_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter25_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter26_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter27_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter28_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter29_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter30_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter31_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter32_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter33_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter34_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter35_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter36_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter37_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter38_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter39_reg;
reg   [4:0] oracle_activations2_addr_reg_434_pp0_iter40_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter1_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter2_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter3_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter4_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter5_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter6_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter7_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter8_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter9_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter10_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter11_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter12_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter13_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter14_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter15_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter16_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter17_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter18_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter19_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter20_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter21_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter22_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter23_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter24_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter25_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter26_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter27_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter28_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter29_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter30_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter31_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter32_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter33_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter34_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter35_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter36_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter37_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter38_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter39_reg;
reg   [4:0] oracle_activations2_1_addr_reg_439_pp0_iter40_reg;
wire   [63:0] select_ln87_fu_349_p3;
reg   [63:0] select_ln87_reg_484;
reg   [63:0] select_ln87_reg_484_pp0_iter2_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter3_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter4_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter5_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter6_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter7_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter8_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter9_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter10_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter11_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter12_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter13_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter14_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter15_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter16_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter17_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter18_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter19_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter20_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter21_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter22_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter23_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter24_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter25_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter26_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter27_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter28_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter29_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter30_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter31_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter32_reg;
reg   [63:0] select_ln87_reg_484_pp0_iter33_reg;
wire   [63:0] select_ln85_fu_356_p3;
reg   [63:0] select_ln85_reg_489;
wire   [63:0] select_ln85_1_fu_363_p3;
reg   [63:0] select_ln85_1_reg_494;
wire   [63:0] select_ln85_2_fu_370_p3;
reg   [63:0] select_ln85_2_reg_499;
wire   [63:0] bitcast_ln85_fu_377_p1;
wire   [63:0] bitcast_ln85_1_fu_381_p1;
wire   [63:0] bitcast_ln85_2_fu_385_p1;
reg   [63:0] mul8_i3_reg_519;
reg   [63:0] mul8_i151_1_reg_524;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter10_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter11_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter12_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter13_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter14_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter15_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter16_reg;
reg   [63:0] mul8_i151_1_reg_524_pp0_iter17_reg;
reg   [63:0] mul8_i151_2_reg_529;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter10_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter11_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter12_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter13_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter14_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter15_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter16_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter17_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter18_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter19_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter20_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter21_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter22_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter23_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter24_reg;
reg   [63:0] mul8_i151_2_reg_529_pp0_iter25_reg;
reg   [63:0] add11_i3_reg_534;
reg   [63:0] add11_i152_1_reg_539;
reg   [63:0] add11_i152_2_reg_544;
reg   [63:0] mul16_i_reg_549;
wire   [63:0] zext_ln83_fu_315_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_328_p1;
wire   [63:0] zext_ln85_2_fu_333_p1;
wire   [63:0] zext_ln85_3_fu_343_p1;
reg   [6:0] i_fu_66;
wire   [6:0] add_ln82_fu_247_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    dactivations2_ce0_local;
reg    dactivations2_1_ce0_local;
reg    weights3_0_ce1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
wire   [5:0] trunc_ln85_fu_261_p1;
wire   [7:0] p_shl_fu_265_p3;
wire   [7:0] zext_ln85_fu_253_p1;
wire   [7:0] sub_ln85_fu_273_p2;
wire   [7:0] add_ln85_fu_289_p2;
wire   [4:0] lshr_ln2_fu_305_p4;
wire   [6:0] add_ln85_1_fu_338_p2;
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
reg    ap_condition_636;
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
#0 i_fu_66 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter40_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln82_fu_241_p2 == 1'd0))) begin
            i_fu_66 <= add_ln82_fu_247_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add11_i152_1_reg_539 <= grp_fu_5875_p_dout0;
        add11_i152_2_reg_544 <= grp_fu_5879_p_dout0;
        add11_i3_reg_534 <= grp_fu_5871_p_dout0;
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
        mul16_i_reg_549 <= grp_fu_5899_p_dout0;
        mul8_i151_1_reg_524 <= grp_fu_5891_p_dout0;
        mul8_i151_1_reg_524_pp0_iter10_reg <= mul8_i151_1_reg_524;
        mul8_i151_1_reg_524_pp0_iter11_reg <= mul8_i151_1_reg_524_pp0_iter10_reg;
        mul8_i151_1_reg_524_pp0_iter12_reg <= mul8_i151_1_reg_524_pp0_iter11_reg;
        mul8_i151_1_reg_524_pp0_iter13_reg <= mul8_i151_1_reg_524_pp0_iter12_reg;
        mul8_i151_1_reg_524_pp0_iter14_reg <= mul8_i151_1_reg_524_pp0_iter13_reg;
        mul8_i151_1_reg_524_pp0_iter15_reg <= mul8_i151_1_reg_524_pp0_iter14_reg;
        mul8_i151_1_reg_524_pp0_iter16_reg <= mul8_i151_1_reg_524_pp0_iter15_reg;
        mul8_i151_1_reg_524_pp0_iter17_reg <= mul8_i151_1_reg_524_pp0_iter16_reg;
        mul8_i151_2_reg_529 <= grp_fu_5895_p_dout0;
        mul8_i151_2_reg_529_pp0_iter10_reg <= mul8_i151_2_reg_529;
        mul8_i151_2_reg_529_pp0_iter11_reg <= mul8_i151_2_reg_529_pp0_iter10_reg;
        mul8_i151_2_reg_529_pp0_iter12_reg <= mul8_i151_2_reg_529_pp0_iter11_reg;
        mul8_i151_2_reg_529_pp0_iter13_reg <= mul8_i151_2_reg_529_pp0_iter12_reg;
        mul8_i151_2_reg_529_pp0_iter14_reg <= mul8_i151_2_reg_529_pp0_iter13_reg;
        mul8_i151_2_reg_529_pp0_iter15_reg <= mul8_i151_2_reg_529_pp0_iter14_reg;
        mul8_i151_2_reg_529_pp0_iter16_reg <= mul8_i151_2_reg_529_pp0_iter15_reg;
        mul8_i151_2_reg_529_pp0_iter17_reg <= mul8_i151_2_reg_529_pp0_iter16_reg;
        mul8_i151_2_reg_529_pp0_iter18_reg <= mul8_i151_2_reg_529_pp0_iter17_reg;
        mul8_i151_2_reg_529_pp0_iter19_reg <= mul8_i151_2_reg_529_pp0_iter18_reg;
        mul8_i151_2_reg_529_pp0_iter20_reg <= mul8_i151_2_reg_529_pp0_iter19_reg;
        mul8_i151_2_reg_529_pp0_iter21_reg <= mul8_i151_2_reg_529_pp0_iter20_reg;
        mul8_i151_2_reg_529_pp0_iter22_reg <= mul8_i151_2_reg_529_pp0_iter21_reg;
        mul8_i151_2_reg_529_pp0_iter23_reg <= mul8_i151_2_reg_529_pp0_iter22_reg;
        mul8_i151_2_reg_529_pp0_iter24_reg <= mul8_i151_2_reg_529_pp0_iter23_reg;
        mul8_i151_2_reg_529_pp0_iter25_reg <= mul8_i151_2_reg_529_pp0_iter24_reg;
        mul8_i3_reg_519 <= grp_fu_5887_p_dout0;
        oracle_activations2_1_addr_reg_439_pp0_iter10_reg <= oracle_activations2_1_addr_reg_439_pp0_iter9_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter11_reg <= oracle_activations2_1_addr_reg_439_pp0_iter10_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter12_reg <= oracle_activations2_1_addr_reg_439_pp0_iter11_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter13_reg <= oracle_activations2_1_addr_reg_439_pp0_iter12_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter14_reg <= oracle_activations2_1_addr_reg_439_pp0_iter13_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter15_reg <= oracle_activations2_1_addr_reg_439_pp0_iter14_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter16_reg <= oracle_activations2_1_addr_reg_439_pp0_iter15_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter17_reg <= oracle_activations2_1_addr_reg_439_pp0_iter16_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter18_reg <= oracle_activations2_1_addr_reg_439_pp0_iter17_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter19_reg <= oracle_activations2_1_addr_reg_439_pp0_iter18_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter20_reg <= oracle_activations2_1_addr_reg_439_pp0_iter19_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter21_reg <= oracle_activations2_1_addr_reg_439_pp0_iter20_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter22_reg <= oracle_activations2_1_addr_reg_439_pp0_iter21_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter23_reg <= oracle_activations2_1_addr_reg_439_pp0_iter22_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter24_reg <= oracle_activations2_1_addr_reg_439_pp0_iter23_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter25_reg <= oracle_activations2_1_addr_reg_439_pp0_iter24_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter26_reg <= oracle_activations2_1_addr_reg_439_pp0_iter25_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter27_reg <= oracle_activations2_1_addr_reg_439_pp0_iter26_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter28_reg <= oracle_activations2_1_addr_reg_439_pp0_iter27_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter29_reg <= oracle_activations2_1_addr_reg_439_pp0_iter28_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter2_reg <= oracle_activations2_1_addr_reg_439_pp0_iter1_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter30_reg <= oracle_activations2_1_addr_reg_439_pp0_iter29_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter31_reg <= oracle_activations2_1_addr_reg_439_pp0_iter30_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter32_reg <= oracle_activations2_1_addr_reg_439_pp0_iter31_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter33_reg <= oracle_activations2_1_addr_reg_439_pp0_iter32_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter34_reg <= oracle_activations2_1_addr_reg_439_pp0_iter33_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter35_reg <= oracle_activations2_1_addr_reg_439_pp0_iter34_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter36_reg <= oracle_activations2_1_addr_reg_439_pp0_iter35_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter37_reg <= oracle_activations2_1_addr_reg_439_pp0_iter36_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter38_reg <= oracle_activations2_1_addr_reg_439_pp0_iter37_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter39_reg <= oracle_activations2_1_addr_reg_439_pp0_iter38_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter3_reg <= oracle_activations2_1_addr_reg_439_pp0_iter2_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter40_reg <= oracle_activations2_1_addr_reg_439_pp0_iter39_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter4_reg <= oracle_activations2_1_addr_reg_439_pp0_iter3_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter5_reg <= oracle_activations2_1_addr_reg_439_pp0_iter4_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter6_reg <= oracle_activations2_1_addr_reg_439_pp0_iter5_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter7_reg <= oracle_activations2_1_addr_reg_439_pp0_iter6_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter8_reg <= oracle_activations2_1_addr_reg_439_pp0_iter7_reg;
        oracle_activations2_1_addr_reg_439_pp0_iter9_reg <= oracle_activations2_1_addr_reg_439_pp0_iter8_reg;
        oracle_activations2_addr_reg_434_pp0_iter10_reg <= oracle_activations2_addr_reg_434_pp0_iter9_reg;
        oracle_activations2_addr_reg_434_pp0_iter11_reg <= oracle_activations2_addr_reg_434_pp0_iter10_reg;
        oracle_activations2_addr_reg_434_pp0_iter12_reg <= oracle_activations2_addr_reg_434_pp0_iter11_reg;
        oracle_activations2_addr_reg_434_pp0_iter13_reg <= oracle_activations2_addr_reg_434_pp0_iter12_reg;
        oracle_activations2_addr_reg_434_pp0_iter14_reg <= oracle_activations2_addr_reg_434_pp0_iter13_reg;
        oracle_activations2_addr_reg_434_pp0_iter15_reg <= oracle_activations2_addr_reg_434_pp0_iter14_reg;
        oracle_activations2_addr_reg_434_pp0_iter16_reg <= oracle_activations2_addr_reg_434_pp0_iter15_reg;
        oracle_activations2_addr_reg_434_pp0_iter17_reg <= oracle_activations2_addr_reg_434_pp0_iter16_reg;
        oracle_activations2_addr_reg_434_pp0_iter18_reg <= oracle_activations2_addr_reg_434_pp0_iter17_reg;
        oracle_activations2_addr_reg_434_pp0_iter19_reg <= oracle_activations2_addr_reg_434_pp0_iter18_reg;
        oracle_activations2_addr_reg_434_pp0_iter20_reg <= oracle_activations2_addr_reg_434_pp0_iter19_reg;
        oracle_activations2_addr_reg_434_pp0_iter21_reg <= oracle_activations2_addr_reg_434_pp0_iter20_reg;
        oracle_activations2_addr_reg_434_pp0_iter22_reg <= oracle_activations2_addr_reg_434_pp0_iter21_reg;
        oracle_activations2_addr_reg_434_pp0_iter23_reg <= oracle_activations2_addr_reg_434_pp0_iter22_reg;
        oracle_activations2_addr_reg_434_pp0_iter24_reg <= oracle_activations2_addr_reg_434_pp0_iter23_reg;
        oracle_activations2_addr_reg_434_pp0_iter25_reg <= oracle_activations2_addr_reg_434_pp0_iter24_reg;
        oracle_activations2_addr_reg_434_pp0_iter26_reg <= oracle_activations2_addr_reg_434_pp0_iter25_reg;
        oracle_activations2_addr_reg_434_pp0_iter27_reg <= oracle_activations2_addr_reg_434_pp0_iter26_reg;
        oracle_activations2_addr_reg_434_pp0_iter28_reg <= oracle_activations2_addr_reg_434_pp0_iter27_reg;
        oracle_activations2_addr_reg_434_pp0_iter29_reg <= oracle_activations2_addr_reg_434_pp0_iter28_reg;
        oracle_activations2_addr_reg_434_pp0_iter2_reg <= oracle_activations2_addr_reg_434_pp0_iter1_reg;
        oracle_activations2_addr_reg_434_pp0_iter30_reg <= oracle_activations2_addr_reg_434_pp0_iter29_reg;
        oracle_activations2_addr_reg_434_pp0_iter31_reg <= oracle_activations2_addr_reg_434_pp0_iter30_reg;
        oracle_activations2_addr_reg_434_pp0_iter32_reg <= oracle_activations2_addr_reg_434_pp0_iter31_reg;
        oracle_activations2_addr_reg_434_pp0_iter33_reg <= oracle_activations2_addr_reg_434_pp0_iter32_reg;
        oracle_activations2_addr_reg_434_pp0_iter34_reg <= oracle_activations2_addr_reg_434_pp0_iter33_reg;
        oracle_activations2_addr_reg_434_pp0_iter35_reg <= oracle_activations2_addr_reg_434_pp0_iter34_reg;
        oracle_activations2_addr_reg_434_pp0_iter36_reg <= oracle_activations2_addr_reg_434_pp0_iter35_reg;
        oracle_activations2_addr_reg_434_pp0_iter37_reg <= oracle_activations2_addr_reg_434_pp0_iter36_reg;
        oracle_activations2_addr_reg_434_pp0_iter38_reg <= oracle_activations2_addr_reg_434_pp0_iter37_reg;
        oracle_activations2_addr_reg_434_pp0_iter39_reg <= oracle_activations2_addr_reg_434_pp0_iter38_reg;
        oracle_activations2_addr_reg_434_pp0_iter3_reg <= oracle_activations2_addr_reg_434_pp0_iter2_reg;
        oracle_activations2_addr_reg_434_pp0_iter40_reg <= oracle_activations2_addr_reg_434_pp0_iter39_reg;
        oracle_activations2_addr_reg_434_pp0_iter4_reg <= oracle_activations2_addr_reg_434_pp0_iter3_reg;
        oracle_activations2_addr_reg_434_pp0_iter5_reg <= oracle_activations2_addr_reg_434_pp0_iter4_reg;
        oracle_activations2_addr_reg_434_pp0_iter6_reg <= oracle_activations2_addr_reg_434_pp0_iter5_reg;
        oracle_activations2_addr_reg_434_pp0_iter7_reg <= oracle_activations2_addr_reg_434_pp0_iter6_reg;
        oracle_activations2_addr_reg_434_pp0_iter8_reg <= oracle_activations2_addr_reg_434_pp0_iter7_reg;
        oracle_activations2_addr_reg_434_pp0_iter9_reg <= oracle_activations2_addr_reg_434_pp0_iter8_reg;
        select_ln85_1_reg_494 <= select_ln85_1_fu_363_p3;
        select_ln85_2_reg_499 <= select_ln85_2_fu_370_p3;
        select_ln85_reg_489 <= select_ln85_fu_356_p3;
        select_ln87_reg_484_pp0_iter10_reg <= select_ln87_reg_484_pp0_iter9_reg;
        select_ln87_reg_484_pp0_iter11_reg <= select_ln87_reg_484_pp0_iter10_reg;
        select_ln87_reg_484_pp0_iter12_reg <= select_ln87_reg_484_pp0_iter11_reg;
        select_ln87_reg_484_pp0_iter13_reg <= select_ln87_reg_484_pp0_iter12_reg;
        select_ln87_reg_484_pp0_iter14_reg <= select_ln87_reg_484_pp0_iter13_reg;
        select_ln87_reg_484_pp0_iter15_reg <= select_ln87_reg_484_pp0_iter14_reg;
        select_ln87_reg_484_pp0_iter16_reg <= select_ln87_reg_484_pp0_iter15_reg;
        select_ln87_reg_484_pp0_iter17_reg <= select_ln87_reg_484_pp0_iter16_reg;
        select_ln87_reg_484_pp0_iter18_reg <= select_ln87_reg_484_pp0_iter17_reg;
        select_ln87_reg_484_pp0_iter19_reg <= select_ln87_reg_484_pp0_iter18_reg;
        select_ln87_reg_484_pp0_iter20_reg <= select_ln87_reg_484_pp0_iter19_reg;
        select_ln87_reg_484_pp0_iter21_reg <= select_ln87_reg_484_pp0_iter20_reg;
        select_ln87_reg_484_pp0_iter22_reg <= select_ln87_reg_484_pp0_iter21_reg;
        select_ln87_reg_484_pp0_iter23_reg <= select_ln87_reg_484_pp0_iter22_reg;
        select_ln87_reg_484_pp0_iter24_reg <= select_ln87_reg_484_pp0_iter23_reg;
        select_ln87_reg_484_pp0_iter25_reg <= select_ln87_reg_484_pp0_iter24_reg;
        select_ln87_reg_484_pp0_iter26_reg <= select_ln87_reg_484_pp0_iter25_reg;
        select_ln87_reg_484_pp0_iter27_reg <= select_ln87_reg_484_pp0_iter26_reg;
        select_ln87_reg_484_pp0_iter28_reg <= select_ln87_reg_484_pp0_iter27_reg;
        select_ln87_reg_484_pp0_iter29_reg <= select_ln87_reg_484_pp0_iter28_reg;
        select_ln87_reg_484_pp0_iter2_reg <= select_ln87_reg_484;
        select_ln87_reg_484_pp0_iter30_reg <= select_ln87_reg_484_pp0_iter29_reg;
        select_ln87_reg_484_pp0_iter31_reg <= select_ln87_reg_484_pp0_iter30_reg;
        select_ln87_reg_484_pp0_iter32_reg <= select_ln87_reg_484_pp0_iter31_reg;
        select_ln87_reg_484_pp0_iter33_reg <= select_ln87_reg_484_pp0_iter32_reg;
        select_ln87_reg_484_pp0_iter3_reg <= select_ln87_reg_484_pp0_iter2_reg;
        select_ln87_reg_484_pp0_iter4_reg <= select_ln87_reg_484_pp0_iter3_reg;
        select_ln87_reg_484_pp0_iter5_reg <= select_ln87_reg_484_pp0_iter4_reg;
        select_ln87_reg_484_pp0_iter6_reg <= select_ln87_reg_484_pp0_iter5_reg;
        select_ln87_reg_484_pp0_iter7_reg <= select_ln87_reg_484_pp0_iter6_reg;
        select_ln87_reg_484_pp0_iter8_reg <= select_ln87_reg_484_pp0_iter7_reg;
        select_ln87_reg_484_pp0_iter9_reg <= select_ln87_reg_484_pp0_iter8_reg;
        trunc_ln82_reg_415_pp0_iter10_reg <= trunc_ln82_reg_415_pp0_iter9_reg;
        trunc_ln82_reg_415_pp0_iter11_reg <= trunc_ln82_reg_415_pp0_iter10_reg;
        trunc_ln82_reg_415_pp0_iter12_reg <= trunc_ln82_reg_415_pp0_iter11_reg;
        trunc_ln82_reg_415_pp0_iter13_reg <= trunc_ln82_reg_415_pp0_iter12_reg;
        trunc_ln82_reg_415_pp0_iter14_reg <= trunc_ln82_reg_415_pp0_iter13_reg;
        trunc_ln82_reg_415_pp0_iter15_reg <= trunc_ln82_reg_415_pp0_iter14_reg;
        trunc_ln82_reg_415_pp0_iter16_reg <= trunc_ln82_reg_415_pp0_iter15_reg;
        trunc_ln82_reg_415_pp0_iter17_reg <= trunc_ln82_reg_415_pp0_iter16_reg;
        trunc_ln82_reg_415_pp0_iter18_reg <= trunc_ln82_reg_415_pp0_iter17_reg;
        trunc_ln82_reg_415_pp0_iter19_reg <= trunc_ln82_reg_415_pp0_iter18_reg;
        trunc_ln82_reg_415_pp0_iter20_reg <= trunc_ln82_reg_415_pp0_iter19_reg;
        trunc_ln82_reg_415_pp0_iter21_reg <= trunc_ln82_reg_415_pp0_iter20_reg;
        trunc_ln82_reg_415_pp0_iter22_reg <= trunc_ln82_reg_415_pp0_iter21_reg;
        trunc_ln82_reg_415_pp0_iter23_reg <= trunc_ln82_reg_415_pp0_iter22_reg;
        trunc_ln82_reg_415_pp0_iter24_reg <= trunc_ln82_reg_415_pp0_iter23_reg;
        trunc_ln82_reg_415_pp0_iter25_reg <= trunc_ln82_reg_415_pp0_iter24_reg;
        trunc_ln82_reg_415_pp0_iter26_reg <= trunc_ln82_reg_415_pp0_iter25_reg;
        trunc_ln82_reg_415_pp0_iter27_reg <= trunc_ln82_reg_415_pp0_iter26_reg;
        trunc_ln82_reg_415_pp0_iter28_reg <= trunc_ln82_reg_415_pp0_iter27_reg;
        trunc_ln82_reg_415_pp0_iter29_reg <= trunc_ln82_reg_415_pp0_iter28_reg;
        trunc_ln82_reg_415_pp0_iter2_reg <= trunc_ln82_reg_415_pp0_iter1_reg;
        trunc_ln82_reg_415_pp0_iter30_reg <= trunc_ln82_reg_415_pp0_iter29_reg;
        trunc_ln82_reg_415_pp0_iter31_reg <= trunc_ln82_reg_415_pp0_iter30_reg;
        trunc_ln82_reg_415_pp0_iter32_reg <= trunc_ln82_reg_415_pp0_iter31_reg;
        trunc_ln82_reg_415_pp0_iter33_reg <= trunc_ln82_reg_415_pp0_iter32_reg;
        trunc_ln82_reg_415_pp0_iter34_reg <= trunc_ln82_reg_415_pp0_iter33_reg;
        trunc_ln82_reg_415_pp0_iter35_reg <= trunc_ln82_reg_415_pp0_iter34_reg;
        trunc_ln82_reg_415_pp0_iter36_reg <= trunc_ln82_reg_415_pp0_iter35_reg;
        trunc_ln82_reg_415_pp0_iter37_reg <= trunc_ln82_reg_415_pp0_iter36_reg;
        trunc_ln82_reg_415_pp0_iter38_reg <= trunc_ln82_reg_415_pp0_iter37_reg;
        trunc_ln82_reg_415_pp0_iter39_reg <= trunc_ln82_reg_415_pp0_iter38_reg;
        trunc_ln82_reg_415_pp0_iter3_reg <= trunc_ln82_reg_415_pp0_iter2_reg;
        trunc_ln82_reg_415_pp0_iter40_reg <= trunc_ln82_reg_415_pp0_iter39_reg;
        trunc_ln82_reg_415_pp0_iter4_reg <= trunc_ln82_reg_415_pp0_iter3_reg;
        trunc_ln82_reg_415_pp0_iter5_reg <= trunc_ln82_reg_415_pp0_iter4_reg;
        trunc_ln82_reg_415_pp0_iter6_reg <= trunc_ln82_reg_415_pp0_iter5_reg;
        trunc_ln82_reg_415_pp0_iter7_reg <= trunc_ln82_reg_415_pp0_iter6_reg;
        trunc_ln82_reg_415_pp0_iter8_reg <= trunc_ln82_reg_415_pp0_iter7_reg;
        trunc_ln82_reg_415_pp0_iter9_reg <= trunc_ln82_reg_415_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln85_1_reg_429 <= {{add_ln85_fu_289_p2[7:1]}};
        lshr_ln_reg_423 <= {{sub_ln85_fu_273_p2[7:1]}};
        oracle_activations2_1_addr_reg_439 <= zext_ln83_fu_315_p1;
        oracle_activations2_1_addr_reg_439_pp0_iter1_reg <= oracle_activations2_1_addr_reg_439;
        oracle_activations2_addr_reg_434 <= zext_ln83_fu_315_p1;
        oracle_activations2_addr_reg_434_pp0_iter1_reg <= oracle_activations2_addr_reg_434;
        select_ln87_reg_484 <= select_ln87_fu_349_p3;
        trunc_ln82_reg_415 <= trunc_ln82_fu_257_p1;
        trunc_ln82_reg_415_pp0_iter1_reg <= trunc_ln82_reg_415;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_fu_241_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter40_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
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
        ap_sig_allocacmp_i_7 = i_fu_66;
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
    if (((trunc_ln82_reg_415_pp0_iter40_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
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
    if (((trunc_ln82_reg_415_pp0_iter40_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter41 == 1'b1))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_636)) begin
        if ((trunc_ln82_reg_415 == 1'd0)) begin
            weights3_0_address0_local = zext_ln85_3_fu_343_p1;
        end else if ((trunc_ln82_reg_415 == 1'd1)) begin
            weights3_0_address0_local = zext_ln85_2_fu_333_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_415 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_415 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_636)) begin
        if ((trunc_ln82_reg_415 == 1'd1)) begin
            weights3_1_address0_local = zext_ln85_3_fu_343_p1;
        end else if ((trunc_ln82_reg_415 == 1'd0)) begin
            weights3_1_address0_local = zext_ln85_2_fu_333_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln82_reg_415 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln82_reg_415 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
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
assign add_ln82_fu_247_p2 = (ap_sig_allocacmp_i_7 + 7'd1);
assign add_ln85_1_fu_338_p2 = (lshr_ln_reg_423 + 7'd1);
assign add_ln85_fu_289_p2 = (sub_ln85_fu_273_p2 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_636 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_1_fu_381_p1 = select_ln85_1_reg_494;
assign bitcast_ln85_2_fu_385_p1 = select_ln85_2_reg_499;
assign bitcast_ln85_fu_377_p1 = select_ln85_reg_489;
assign dactivations2_1_address0 = zext_ln83_fu_315_p1;
assign dactivations2_1_ce0 = dactivations2_1_ce0_local;
assign dactivations2_address0 = zext_ln83_fu_315_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign grp_fu_5871_p_ce = 1'b1;
assign grp_fu_5871_p_din0 = mul8_i3_reg_519;
assign grp_fu_5871_p_din1 = 64'd0;
assign grp_fu_5871_p_opcode = 2'd0;
assign grp_fu_5875_p_ce = 1'b1;
assign grp_fu_5875_p_din0 = add11_i3_reg_534;
assign grp_fu_5875_p_din1 = mul8_i151_1_reg_524_pp0_iter17_reg;
assign grp_fu_5875_p_opcode = 2'd0;
assign grp_fu_5879_p_ce = 1'b1;
assign grp_fu_5879_p_din0 = add11_i152_1_reg_539;
assign grp_fu_5879_p_din1 = mul8_i151_2_reg_529_pp0_iter25_reg;
assign grp_fu_5879_p_opcode = 2'd0;
assign grp_fu_5887_p_ce = 1'b1;
assign grp_fu_5887_p_din0 = mux_case_05283_reload;
assign grp_fu_5887_p_din1 = bitcast_ln85_fu_377_p1;
assign grp_fu_5891_p_ce = 1'b1;
assign grp_fu_5891_p_din0 = mux_case_15388_reload;
assign grp_fu_5891_p_din1 = bitcast_ln85_1_fu_381_p1;
assign grp_fu_5895_p_ce = 1'b1;
assign grp_fu_5895_p_din0 = mux_case_25493_reload;
assign grp_fu_5895_p_din1 = bitcast_ln85_2_fu_385_p1;
assign grp_fu_5899_p_ce = 1'b1;
assign grp_fu_5899_p_din0 = add11_i152_2_reg_544;
assign grp_fu_5899_p_din1 = select_ln87_reg_484_pp0_iter33_reg;
assign icmp_ln82_fu_241_p2 = ((ap_sig_allocacmp_i_7 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_305_p4 = {{ap_sig_allocacmp_i_7[5:1]}};
assign oracle_activations2_1_address0 = oracle_activations2_1_addr_reg_439_pp0_iter40_reg;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = mul16_i_reg_549;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_address0 = oracle_activations2_addr_reg_434_pp0_iter40_reg;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = mul16_i_reg_549;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl_fu_265_p3 = {{trunc_ln85_fu_261_p1}, {2'd0}};
assign select_ln85_1_fu_363_p3 = ((trunc_ln82_reg_415_pp0_iter1_reg[0:0] == 1'b1) ? weights3_0_q0 : weights3_1_q0);
assign select_ln85_2_fu_370_p3 = ((trunc_ln82_reg_415_pp0_iter1_reg[0:0] == 1'b1) ? weights3_1_q0 : weights3_0_q0);
assign select_ln85_fu_356_p3 = ((trunc_ln82_reg_415_pp0_iter1_reg[0:0] == 1'b1) ? weights3_1_q1 : weights3_0_q1);
assign select_ln87_fu_349_p3 = ((trunc_ln82_reg_415[0:0] == 1'b1) ? dactivations2_1_q0 : dactivations2_q0);
assign sub_ln85_fu_273_p2 = (p_shl_fu_265_p3 - zext_ln85_fu_253_p1);
assign trunc_ln82_fu_257_p1 = ap_sig_allocacmp_i_7[0:0];
assign trunc_ln85_fu_261_p1 = ap_sig_allocacmp_i_7[5:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = zext_ln85_1_fu_328_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = zext_ln85_1_fu_328_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign zext_ln83_fu_315_p1 = lshr_ln2_fu_305_p4;
assign zext_ln85_1_fu_328_p1 = lshr_ln_reg_423;
assign zext_ln85_2_fu_333_p1 = lshr_ln85_1_reg_429;
assign zext_ln85_3_fu_343_p1 = add_ln85_1_fu_338_p2;
assign zext_ln85_fu_253_p1 = ap_sig_allocacmp_i_7;
endmodule 